-- Author: Osama Gamal M. Attia
-- email: ogamal [at] iastate dot edu
-- Description:
-- 		read pixels from 0 to 7 using MC0
-- 		process pixels from 1 to 6
--		write the 1 to 6 pixels back on two cycles using MC1

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

library UNISIM;
use UNISIM.vcomponents.all;

entity osobel_node is
	port (
		clk									: in std_logic;
		reset								: in std_logic;
		enable							: in std_logic;
		idle								: out std_logic; -- 0 processing, 1 done
		-- parameters
		in_addr							: in std_logic_vector (63 downto 0);
		out_addr						: in std_logic_vector (63 downto 0);
		img_rows						: in std_logic_vector (63 downto 0);
		img_cols						: in std_logic_vector (63 downto 0);
		-- first MC request port signals
		mc0_req_ld					: out std_logic;
		mc0_req_st					: out std_logic;
		mc0_req_size				: out std_logic_vector(1 downto 0);
		mc0_req_vadr				: out std_logic_vector(47 downto 0);
		mc0_req_wrd_rdctl 	: out std_logic_vector(63 downto 0);
		mc0_req_flush 			: out std_logic;
		mc0_rd_rq_stall			: in std_logic;
		mc0_wr_rq_stall			: in std_logic;
		-- first MC response port signals
		mc0_rsp_push				: in std_logic;
		mc0_rsp_stall				: out std_logic;
		mc0_rsp_data				: in std_logic_vector(63 downto 0);
		mc0_rsp_rdctl				: in std_logic_vector(31 downto 0);
		-- second MC request port signals
		mc1_req_ld					: out std_logic;
		mc1_req_st					: out std_logic;
		mc1_req_size				: out std_logic_vector(1 downto 0);
		mc1_req_vadr				: out std_logic_vector(47 downto 0);
		mc1_req_wrd_rdctl 	: out std_logic_vector(63 downto 0);
		mc1_req_flush 			: out std_logic;
		mc1_rd_rq_stall			: in std_logic;
		mc1_wr_rq_stall			: in std_logic;
		-- second MC response port signals
		mc1_rsp_push				: in std_logic;
		mc1_rsp_stall				: out std_logic;
		mc1_rsp_data				: in std_logic_vector(63 downto 0);
		mc1_rsp_rdctl				: in std_logic_vector(31 downto 0)
	);
end osobel_node;

architecture Behavioral of osobel_node is
	
	component fifo_64_1024 is
		port (
			wr_clk					: in  std_logic;
			rd_clk					: in  std_logic;
			almost_full			: out std_logic;
			rst							: in  std_logic;
			wr_en						: in  std_logic;
			rd_en						: in  std_logic;
			din							: in  std_logic_vector (63 downto 0);
			dout						: out std_logic_vector (63 downto 0);
			full						: out std_logic;
			empty						: out std_logic
		);
	end component;
	
	signal o_idle							: std_logic;
	signal count		 					: std_logic_vector (63 downto 0);
	signal rd_count	 					: std_logic_vector (63 downto 0);
	signal wr_count	 					: std_logic_vector (63 downto 0);
	signal count_rst					: std_logic;
	signal rd_addr	 					: std_logic_vector (63 downto 0);
	signal wr_addr	 					: std_logic_vector (63 downto 0);
	
	signal fifo0_almost_full	: std_logic;
	signal fifo0_wr_en				: std_logic;
	signal fifo0_rd_en				: std_logic;
	signal fifo0_din					: std_logic_vector (63 downto 0);
	signal fifo0_dout					: std_logic_vector (63 downto 0);
	signal fifo0_full					: std_logic;
	signal fifo0_empty				: std_logic;

	signal fifo1_almost_full	: std_logic;
	signal fifo1_wr_en				: std_logic;
	signal fifo1_rd_en				: std_logic;
	signal fifo1_din					: std_logic_vector (63 downto 0);
	signal fifo1_dout					: std_logic_vector (63 downto 0);
	signal fifo1_full					: std_logic;
	signal fifo1_empty				: std_logic;
	
	type pxl_arry is array (0 to 7) of std_logic_vector(7 downto 0);
	signal pxl_in_0			: pxl_arry;		-- previous pixels
	signal pxl_in_1			: pxl_arry;		-- current pixels we are processing
	signal pxl_in_2			: pxl_arry;		-- next pixels to process
	signal pxl_out			: pxl_arry;

	type sum_arry is array (1 to 6) of std_logic_vector(7 downto 0);
	signal sum_x					: sum_arry;
	signal sum_y					: sum_arry;
	signal sum						: sum_arry;
	
	type state_type is (idle_st, start_st, s1, s2, s3, s4, s5, s6);
	signal state			: state_type;
	signal ld_state		: state_type;
	signal wr_state		: state_type;
	
begin
	
	-- return idle signal
	idle <= o_idle;
	
	-- write flush isn't used in this design
	mc0_req_flush <=  '0';
	mc1_req_flush <=  '0';
	
	-- calculate sum_x, sum_y, sum, pxl_out
	F: for i in 1 to 6 generate
	begin
		sum_x(i) <= pxl_in_0(i+1) - pxl_in_0(i-1) + pxl_in_1(i+1) + pxl_in_1(i+1) - pxl_in_1(i-1) - pxl_in_1(i-1) + pxl_in_2(i+1) - pxl_in_2(i-1);
		sum_y(i) <= pxl_in_0(i-1) - pxl_in_2(i-1) + pxl_in_0(i) + pxl_in_0(i) - pxl_in_2(i) - pxl_in_2(i) + pxl_in_0(i+1) - pxl_in_2(i+1);
		sum(i) <= sum_x(i)(7 downto 0) + sum_y(i)(7 downto 0);
		pxl_out(i) <= sum(i)(7 downto 0);
	end generate F;
	pxl_out(0) <= (others => '0');			-- we don't process the first pixel
	pxl_out(7) <= (others => '0');			-- we don't process the last pixel

	---------------------------------------
	-- Concept for Caculations for i = 1 --
	---------------------------------------
	-- 0 1 2 3 4 5 6 7		<<- pxl_in_0	 --
	-- 0 1 2 3 4 5 6 7		<<- pxl_in_1	 --
	-- 0 1 2 3 4 5 6 7		<<- pxl_in_2	 --
	---------------------------------------
	-- gx kernel		|		gy kernel				 --
	--  -1 0 1			|		 1  2  1				 --
	--  -2 0 2			|		 0  0  0				 --
	--  -1 0 1			|		-1 -2 -1				 --
	---------------------------------------
	-- sum_x(1) <= pxl_in_0(2) - pxl_in_0(0) + pxl_in_1(2) + pxl_in_1(2) - pxl_in_1(0) - pxl_in_1(0) + pxl_in_2(2) - pxl_in_2(0);
	-- sum_y(1) <= pxl_in_0(0) - pxl_in_2(0) + pxl_in_0(1) + pxl_in_0(1) - pxl_in_2(1) - pxl_in_2(1) + pxl_in_0(2) - pxl_in_2(2);
	-- sum(1) <= sum_x(1)(7 downto 0) + sum_y(1)(7 downto 0);
	-- pxl_out(1) = sum(1)(7 downto 0);
	---------------------------------------
	

	fifo0 : fifo_64_1024 port map (
	 	wr_clk     		=> clk,
	 	rd_clk     		=> clk,
	 	almost_full		=> fifo0_almost_full,	-- out
	 	rst        		=> reset,
	 	wr_en 		 		=> fifo0_wr_en,				-- in
	 	rd_en      		=> fifo0_rd_en,				-- in
	 	din        		=> fifo0_din,					-- in
	 	dout       		=> fifo0_dout,				-- out
	 	full       		=> fifo0_full,				-- out
	 	empty      		=> fifo0_empty				-- out
	);
	
	fifo1 : fifo_64_1024 port map (
	 	wr_clk     		=> clk,
	 	rd_clk     		=> clk,
	 	almost_full		=> fifo1_almost_full,	-- out
	 	rst        		=> reset,
	 	wr_en 		 		=> fifo1_wr_en,				-- in
	 	rd_en      		=> fifo1_rd_en,				-- in
	 	din        		=> fifo1_din,					-- in
	 	dout       		=> fifo1_dout,				-- out
	 	full       		=> fifo1_full,				-- out
	 	empty      		=> fifo1_empty				-- out
	);

	-- MAIN: generate addresses and write to the fifo0 (return idle)
	process (clk)
	begin
		if rising_edge (clk) then
			if reset = '1' then
				o_idle <='1';
				state <= idle_st;
				count <= (others => '0');
				rd_addr <= in_addr;
				count_rst <= '0';
				-- reset fifo0
				fifo0_wr_en <= '0';
				fifo0_din	 <= (others => '0');
			else
				case state is
					when idle_st => -- keep idle until enable
						if enable = '1' then
							o_idle <='0';
							state <= start_st;
							rd_addr <= in_addr;
							count <= (others => '0');
							count_rst <= '1';
						else
							o_idle <='1';
						end if;
					when start_st =>	-- generate addresses and add them to fifo0
						o_idle <='0';
						count_rst <= '0';
						if count + 1 >= img_rows then		-- done listing
							state <= s2;
						elsif fifo0_almost_full = '1' then	-- not done and fifo is full, wait
							state <= start_st;
						else 														-- not done and fifo not full, enqueue and do again
							fifo0_wr_en <= '1';
							fifo0_din <= rd_addr;
							state <= s1;
						end if;
					when s1 =>				-- increment address and do again
						fifo0_wr_en <= '0';
						fifo0_din	 <= (others => '0');
						rd_addr <= rd_addr + img_cols;
						count <= count + 1;
						state <= start_st;
					when s2 =>				-- wait until write is done
						if wr_count >= img_rows - 1 then
							state <= s3;
						else
							state <= s2;
						end if;
					when s3 =>				-- done
						o_idle <='1';
						state <= idle_st;
					when others =>
						o_idle <='1';
						state <= idle_st;
				end case;
			end if;
		end if;
	end process;

	-- P1: read from the fifo0 and request from memory
	process (clk)
	begin
		if rising_edge (clk) then
			if reset = '1' then
				ld_state <= s1;
				-- reset fifo0
				fifo0_rd_en <= '0';
				-- reset mc0 ports
				mc0_req_size <= "11";
				mc0_req_ld <= '0';
				mc0_req_st <= '0';
				mc0_req_wrd_rdctl <= (others => '0');
				mc0_req_vadr <= (others => '0');
			elsif  o_idle = '0' then
				case ld_state is
					when s1 =>				-- if fifo0 not empty, pop from the fifo
						mc0_req_ld <= '0';
						mc0_req_vadr <= (others => '0');
						mc0_req_wrd_rdctl <= (others => '0');
						if fifo0_empty = '0' and fifo1_almost_full = '0' then
							fifo0_rd_en <= '1';
							ld_state <= s2;
						else
							fifo0_rd_en <= '0';
							ld_state <= s1;
						end if;
					when s2 =>				-- request from memory at the address
						if mc0_rd_rq_stall = '0' then
							fifo0_rd_en <= '0';
							mc0_req_ld <= '1';
							mc0_req_vadr <= fifo0_dout(47 downto 0);
							mc0_req_wrd_rdctl(7 downto 0) <= fifo0_dout(7 downto 0);
							ld_state <= s1;
						end if;
					when others =>
						ld_state <= s1;
				end case;
			end if;
		end if;
	end process;
	
	-- P2: get from the memory and push to fifo1
	process (clk)
	begin
		if rising_edge (clk) then
			if count_rst = '1' then
				rd_count <= (others => '0');
			end if;
			if reset = '1' then
				rd_count <= (others => '0');
				-- reset mc0 stall
				mc0_rsp_stall <= '0';
				-- reset fifo1 write port
				fifo1_wr_en <= '0';
				fifo1_din	 <= (others => '0');
			elsif o_idle = '0' then
				if mc0_rsp_push = '1' then					-- if new memory read and fifo1 isn't full
					if fifo1_almost_full = '0' then
						mc0_rsp_stall <= '0';
						fifo1_wr_en <= '1';							-- push to fifo
						fifo1_din <= mc0_rsp_data;
						rd_count <= rd_count + 1;				-- increment count
					else 															-- else, stall memory till fifo isn't full
						mc0_rsp_stall <= '1';
					end if;
				else
					fifo1_wr_en <= '0';
					fifo1_din <= (others => '0');
				end if;
			end if;
		end if;
	end process;

	-- P3: read from the fifo1, process and write to memory
	process (clk)
	begin
		if rising_edge (clk) then
			if count_rst = '1' then
				wr_count <= (others => '0');
				wr_addr <= out_addr;
			end if;
			if reset = '1' then
				wr_state <= idle_st;
				wr_count <= (others => '0');
				wr_addr <= out_addr;
				-- reset fifo1
				fifo1_rd_en <= '0';
				-- reset mc1 ports
				mc1_rsp_stall <= '0';
				mc1_req_size <= "00";
				mc1_req_ld <= '0';
				mc1_req_st <= '0';
				mc1_req_wrd_rdctl <= (others => '0');
				mc1_req_vadr <= (others => '0');
			elsif o_idle = '0' then
				case wr_state is
					when idle_st =>				-- if fifo1 not empty, process
						mc1_req_st <= '0';
						mc1_req_size <= "00";
						mc1_req_vadr <= (others => '0');
						mc1_req_wrd_rdctl <= (others => '0');
						if fifo1_empty = '0' and wr_count < 2 then		-- init
							wr_state <= start_st;
						elsif fifo1_empty = '0' and wr_count + 1 < img_rows then
							-- get a new pixel
							fifo1_rd_en <= '1';
							wr_state <= s3;
						else 																					-- done
							wr_state <= idle_st;
						end if;
					when start_st =>			-- init pxl1, pxl2
						if fifo1_empty = '0' and wr_count < 2 then
							fifo1_rd_en <= '1';
							wr_state <= s1;
						else
							wr_state <= idle_st;
						end if;
					when s1 =>						-- store pxl1, pxl2, write 0 at first address
						fifo1_rd_en <= '0';
						if wr_count = 0 then			-- store pxl_in_1
							pxl_in_1(0) <= fifo1_dout(63 downto 56);
							pxl_in_1(1) <= fifo1_dout(55 downto 48);
							pxl_in_1(2) <= fifo1_dout(47 downto 40);
							pxl_in_1(3) <= fifo1_dout(39 downto 32);
							pxl_in_1(4) <= fifo1_dout(31 downto 24);
							pxl_in_1(5) <= fifo1_dout(23 downto 16);
							pxl_in_1(6) <= fifo1_dout(15 downto 08);
							pxl_in_1(7) <= fifo1_dout(07 downto 00);
							wr_count <= wr_count + 1;
							wr_state <= start_st;
						elsif wr_count = 1 then		-- store pxl_in_2
							pxl_in_2(0) <= fifo1_dout(63 downto 56);
							pxl_in_2(1) <= fifo1_dout(55 downto 48);
							pxl_in_2(2) <= fifo1_dout(47 downto 40);
							pxl_in_2(3) <= fifo1_dout(39 downto 32);
							pxl_in_2(4) <= fifo1_dout(31 downto 24);
							pxl_in_2(5) <= fifo1_dout(23 downto 16);
							pxl_in_2(6) <= fifo1_dout(15 downto 08);
							pxl_in_2(7) <= fifo1_dout(07 downto 00);
							wr_count <= wr_count + 1;
							wr_state <= s2;
						else 											-- WTF! something went wrong
							wr_state <= idle_st;
						end if;
					when s2 =>						-- done init, store zeros at first address
						if mc1_wr_rq_stall = '0' then
							mc1_req_st <= '1';
							mc1_req_size <= "11";
							mc1_req_vadr <= wr_addr(47 downto 0);
							mc1_req_wrd_rdctl <= (others => '0');
							wr_addr <= wr_addr + img_cols;
							wr_state <= idle_st;
						end if;
					when s3 =>						-- shift pxl arrays, get pxl3
						fifo1_rd_en <= '0';
						pxl_in_0 <= pxl_in_1;
						pxl_in_1 <= pxl_in_2;
						pxl_in_2(0) <= fifo1_dout(63 downto 56);
						pxl_in_2(1) <= fifo1_dout(55 downto 48);
						pxl_in_2(2) <= fifo1_dout(47 downto 40);
						pxl_in_2(3) <= fifo1_dout(39 downto 32);
						pxl_in_2(4) <= fifo1_dout(31 downto 24);
						pxl_in_2(5) <= fifo1_dout(23 downto 16);
						pxl_in_2(6) <= fifo1_dout(15 downto 08);
						pxl_in_2(7) <= fifo1_dout(07 downto 00);
						wr_state <= s4;
					when s4 =>						-- write first 4 pixels (4 bytes)
						if mc1_wr_rq_stall = '0' then
							mc1_req_st <= '1';
							mc1_req_size <= "10";					-- size is 4 byte
							mc1_req_vadr <= wr_addr (47 downto 0) + 1;		-- offset one byte because we don't process it
							mc1_req_wrd_rdctl(63 downto 56) <= pxl_out(1);
							mc1_req_wrd_rdctl(55 downto 48) <= pxl_out(2);
							mc1_req_wrd_rdctl(47 downto 40) <= pxl_out(3);
							mc1_req_wrd_rdctl(39 downto 32) <= pxl_out(4);
							mc1_req_wrd_rdctl(31 downto 24) <= pxl_out(1);
							mc1_req_wrd_rdctl(23 downto 16) <= pxl_out(2);
							mc1_req_wrd_rdctl(15 downto 08) <= pxl_out(3);
							mc1_req_wrd_rdctl(07 downto 00) <= pxl_out(4);
							wr_state <= s5;
						end if;
					when s5 =>						-- write the following 2 pixels (2 bytes)
						if mc1_wr_rq_stall = '0' then
							mc1_req_st <= '1';
							mc1_req_size <= "01";					-- size is 2 byte
							mc1_req_vadr <= wr_addr (47 downto 0) + 4;		-- offset 4 bytes
							mc1_req_wrd_rdctl(63 downto 56) <= pxl_out(5);
							mc1_req_wrd_rdctl(55 downto 48) <= pxl_out(6);
							mc1_req_wrd_rdctl(47 downto 40) <= pxl_out(5);
							mc1_req_wrd_rdctl(39 downto 32) <= pxl_out(6);
							mc1_req_wrd_rdctl(31 downto 24) <= pxl_out(5);
							mc1_req_wrd_rdctl(23 downto 16) <= pxl_out(6);
							mc1_req_wrd_rdctl(15 downto 08) <= pxl_out(5);
							mc1_req_wrd_rdctl(07 downto 00) <= pxl_out(6);
							wr_addr <= wr_addr + img_cols;
							wr_count <= wr_count + 1;
							if wr_count >= img_rows - 1 then
								wr_state <= s6;
							else
								wr_state <= idle_st;
							end if;
						end if;
					when s6 =>			-- waste a cycle (don't ask, I have no idea what's going on)
						wr_state <= idle_st;
					when others =>
						wr_state <= idle_st;
				end case;
			end if;
		end if;
	end process;

end Behavioral;
