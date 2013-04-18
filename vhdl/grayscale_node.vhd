library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

entity grayscale_node is
	port (
		-- control signals
		clk								: in std_logic;
		reset							: in std_logic;
		enable						: in std_logic;
		idle							: out std_logic;	-- 0 processing, 1 otherwise
		done							: out std_logic;	-- 1 done processing, 0 other
		-- parameters
		in_addr						: in std_logic_vector (63 downto 0);
		out_addr					: in std_logic_vector (63 downto 0);
		single_write			: in std_logic;
		-- MC request port
		mc_req_ld					: out std_logic;
		mc_req_st					: out std_logic;
		mc_req_size				: out std_logic_vector(1 downto 0);
		mc_req_vadr				: out std_logic_vector(47 downto 0);
		mc_req_wrd_rdctl 	: out std_logic_vector(63 downto 0);
		mc_req_flush 			: out std_logic;
		mc_rd_rq_stall		: in std_logic;
		mc_wr_rq_stall		: in std_logic;
		-- MC response port
		mc_rsp_push				: in std_logic;
		mc_rsp_stall			: out std_logic;
		mc_rsp_data				: in std_logic_vector(63 downto 0);
		mc_rsp_rdctl			: in std_logic_vector(31 downto 0)
	);
end grayscale_node;

architecture Behavioral of grayscale_node is
	signal req_ld_addr	: std_logic_vector (63 downto 0);
	signal req_st_addr	: std_logic_vector (63 downto 0);
	signal req_tag	: std_logic_vector (7 downto 0);
	
	signal red1			: std_logic_vector (8 downto 0);
	signal red2			: std_logic_vector (8 downto 0);
	signal green1		: std_logic_vector (8 downto 0);
	signal green2		: std_logic_vector (8 downto 0);
	signal blue1		: std_logic_vector (8 downto 0);
	signal blue2		: std_logic_vector (8 downto 0);

	type state_type is (idl, strt, s1, s2, s3, s4, s5, s6);
	signal state		: state_type;
	signal black1		: std_logic_vector (19 downto 0);
	signal black2		: std_logic_vector (19 downto 0);

begin
	mc_req_flush <=  '0'; -- write flush isn't used in this design
	mc_rsp_stall <= '0';

	black1 <= x"12B"*red1(7 downto 0) + x"24B"*green1(7 downto 0) + x"72"*blue1(7 downto 0);
	black2 <= x"12B"*red2(7 downto 0) + x"24B"*green2(7 downto 0) + x"72"*blue2(7 downto 0);
	
	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				idle <= '1';
				done <= '0';
				state <= idl;
				mc_req_size <= "00";
				mc_req_ld <= '0';
				mc_req_st <= '0';
				mc_req_wrd_rdctl <= (others => '0');
				mc_req_vadr <= (others => '0');
				red1 <= (others => '0');
				red2 <= (others => '0');
				green1 <= (others => '0');
				green2 <= (others => '0');
				blue1 <= (others => '0');
				blue2 <= (others => '0');
				req_tag <= (others => '0');
			else
				case state is
					when idl =>
						idle <= '1';
						done <= '0';
						mc_req_size <= "00";
						mc_req_ld <= '0';
						mc_req_st <= '0';
						mc_req_wrd_rdctl <= (others => '0');
						mc_req_vadr <= (others => '0');
						if enable = '1' then
							req_ld_addr <= in_addr;
							req_st_addr <= out_addr;
							state <= strt;
						end if;
					when strt =>		-- request input colors
						idle <= '0';	-- state i'm working
						if mc_rd_rq_stall = '0' then
							mc_req_ld <= '1';
							mc_req_size <= "11";	-- request 64 bit
							mc_req_vadr <= req_ld_addr(47 downto 0);
							mc_req_wrd_rdctl <= req_ld_addr;
							req_tag <= req_ld_addr(7 downto 0);
							state <= s1;
						end if;
					when s1 =>		-- read input colors
						mc_req_ld <= '0';
						mc_req_size <= "00";
						mc_req_vadr <= (others => '0');
						mc_req_wrd_rdctl <= (others => '0');
						if mc_rsp_push = '1' and mc_rsp_rdctl(7 downto 0) = req_tag then
							red1(7 downto 0) 		<= mc_rsp_data(47 downto 40);
							green1(7 downto 0)	<= mc_rsp_data(39 downto 32);
							blue1(7 downto 0)		<= mc_rsp_data(31 downto 24);
							red2(7 downto 0)		<= mc_rsp_data(23 downto 16);
							green2(7 downto 0)	<= mc_rsp_data(15 downto 8);
							blue2(7 downto 0)		<= mc_rsp_data(7 downto 0);
							state <= s2;
						end if;
					when s2 =>		-- store the first grayscaled color
						if mc_wr_rq_stall = '0' then
							mc_req_st <= '1';
							mc_req_size <= "00";	-- write just 8 bits
							mc_req_vadr <= req_st_addr(47 downto 0);
							mc_req_wrd_rdctl(63 downto 56) <= black1(17 downto 10);
							mc_req_wrd_rdctl(55 downto 48) <= black1(17 downto 10);
							mc_req_wrd_rdctl(47 downto 40) <= black1(17 downto 10);
							mc_req_wrd_rdctl(39 downto 32) <= black1(17 downto 10);
							mc_req_wrd_rdctl(31 downto 24) <= black1(17 downto 10);
							mc_req_wrd_rdctl(23 downto 16) <= black1(17 downto 10);
							mc_req_wrd_rdctl(15 downto 08) <= black1(17 downto 10);
							mc_req_wrd_rdctl(07 downto 00) <= black1(17 downto 10);
							state <= s3;
						end if;
					when s3 =>		-- wait to store
						mc_req_st <= '0';
						mc_req_vadr <= (others => '0');
						mc_req_wrd_rdctl <= (others => '0');
						-- if single write finish
						if single_write = '1' then
							state <= s5;
						else
							state <= s4;
						end if;
					when s4 =>		-- store the second grayscaled color
						if mc_wr_rq_stall = '0' then
							mc_req_st <= '1';
							mc_req_size <= "00";	-- write just 8 bits
							-- TODO: check if the logic below increments right or not
							mc_req_vadr <= req_st_addr(47 downto 0) + '1';
							mc_req_wrd_rdctl(63 downto 56) <= black2(17 downto 10);
							mc_req_wrd_rdctl(55 downto 48) <= black2(17 downto 10);
							mc_req_wrd_rdctl(47 downto 40) <= black2(17 downto 10);
							mc_req_wrd_rdctl(39 downto 32) <= black2(17 downto 10);
							mc_req_wrd_rdctl(31 downto 24) <= black2(17 downto 10);
							mc_req_wrd_rdctl(23 downto 16) <= black2(17 downto 10);
							mc_req_wrd_rdctl(15 downto 08) <= black2(17 downto 10);
							mc_req_wrd_rdctl(07 downto 00) <= black2(17 downto 10);
							state <= s5;
						end if;
					when s5 =>		-- done
						done <= '1';
						state <= idl;
						mc_req_st <= '0';
						mc_req_vadr <= (others => '0');
						mc_req_wrd_rdctl <= (others => '0');
					when others =>
						idle <= '1';
						done <= '0';
						state <= idl;
				end case;
			end if; -- end reset check
		end if; -- end clk check
	end process;

end Behavioral;
