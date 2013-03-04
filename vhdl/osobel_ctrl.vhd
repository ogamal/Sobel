-- Author: Osama Gamal M. Attia
-- email: ogamal [at] iastate dot edu
-- Description:
-- 		Instantiate 8 sobel nodes, each node
--		process a column of 8 pixels and output
-- 		column of 6 pixels

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

entity osobel_ctrl is
	port (
		-- control signals
		clk									: in std_logic;
		reset								: in std_logic;
		enable							: in std_logic;
		idle								: out std_logic;	-- 0 processing, 1 otherwise
		done								: out std_logic;	-- 1 done processing, 0 other
		-- parameters
		in_addr							: in std_logic_vector (63 downto 0);
		out_addr						: in std_logic_vector (63 downto 0);
		img_rows						: in std_logic_vector (63 downto 0);
		img_cols						: in std_logic_vector (63 downto 0);
		-- MC0 even request port signals
		mc0_req_ld_e					: out std_logic;
		mc0_req_st_e					: out std_logic;
		mc0_req_size_e				: out std_logic_vector(1 downto 0);
		mc0_req_vadr_e				: out std_logic_vector(47 downto 0);
		mc0_req_wrd_rdctl_e 	: out std_logic_vector(63 downto 0);
		mc0_req_flush_e 			: out std_logic;
		mc0_rd_rq_stall_e			: in std_logic;
		mc0_wr_rq_stall_e			: in std_logic;
		-- MC0 even response port signals
		mc0_rsp_push_e				: in std_logic;
		mc0_rsp_stall_e				: out std_logic;
		mc0_rsp_data_e				: in std_logic_vector(63 downto 0);
		mc0_rsp_rdctl_e				: in std_logic_vector(31 downto 0);
		-- MC0 odd request port signals
		mc0_req_ld_o					: out std_logic;
		mc0_req_st_o					: out std_logic;
		mc0_req_size_o				: out std_logic_vector(1 downto 0);
		mc0_req_vadr_o				: out std_logic_vector(47 downto 0);
		mc0_req_wrd_rdctl_o 	: out std_logic_vector(63 downto 0);
		mc0_req_flush_o 			: out std_logic;
		mc0_rd_rq_stall_o			: in std_logic;
		mc0_wr_rq_stall_o			: in std_logic;
		-- MC0 odd response port signals
		mc0_rsp_push_o				: in std_logic;
		mc0_rsp_stall_o				: out std_logic;
		mc0_rsp_data_o				: in std_logic_vector(63 downto 0);
		mc0_rsp_rdctl_o				: in std_logic_vector(31 downto 0);
		-- MC1 even request port signals
		mc1_req_ld_e					: out std_logic;
		mc1_req_st_e					: out std_logic;
		mc1_req_size_e				: out std_logic_vector(1 downto 0);
		mc1_req_vadr_e				: out std_logic_vector(47 downto 0);
		mc1_req_wrd_rdctl_e 	: out std_logic_vector(63 downto 0);
		mc1_req_flush_e 			: out std_logic;
		mc1_rd_rq_stall_e			: in std_logic;
		mc1_wr_rq_stall_e			: in std_logic;
		-- MC1 even response port signals
		mc1_rsp_push_e				: in std_logic;
		mc1_rsp_stall_e				: out std_logic;
		mc1_rsp_data_e				: in std_logic_vector(63 downto 0);
		mc1_rsp_rdctl_e				: in std_logic_vector(31 downto 0);
		-- MC1 odd request port signals
		mc1_req_ld_o					: out std_logic;
		mc1_req_st_o					: out std_logic;
		mc1_req_size_o				: out std_logic_vector(1 downto 0);
		mc1_req_vadr_o				: out std_logic_vector(47 downto 0);
		mc1_req_wrd_rdctl_o 	: out std_logic_vector(63 downto 0);
		mc1_req_flush_o 			: out std_logic;
		mc1_rd_rq_stall_o			: in std_logic;
		mc1_wr_rq_stall_o			: in std_logic;
		-- MC1 odd response port signals
		mc1_rsp_push_o				: in std_logic;
		mc1_rsp_stall_o				: out std_logic;
		mc1_rsp_data_o				: in std_logic_vector(63 downto 0);
		mc1_rsp_rdctl_o				: in std_logic_vector(31 downto 0);
		-- MC2 even request port signals
		mc2_req_ld_e					: out std_logic;
		mc2_req_st_e					: out std_logic;
		mc2_req_size_e				: out std_logic_vector(1 downto 0);
		mc2_req_vadr_e				: out std_logic_vector(47 downto 0);
		mc2_req_wrd_rdctl_e 	: out std_logic_vector(63 downto 0);
		mc2_req_flush_e 			: out std_logic;
		mc2_rd_rq_stall_e			: in std_logic;
		mc2_wr_rq_stall_e			: in std_logic;
		-- MC2 even response port signals
		mc2_rsp_push_e				: in std_logic;
		mc2_rsp_stall_e				: out std_logic;
		mc2_rsp_data_e				: in std_logic_vector(63 downto 0);
		mc2_rsp_rdctl_e				: in std_logic_vector(31 downto 0);
		-- MC2 odd request port signals
		mc2_req_ld_o					: out std_logic;
		mc2_req_st_o					: out std_logic;
		mc2_req_size_o				: out std_logic_vector(1 downto 0);
		mc2_req_vadr_o				: out std_logic_vector(47 downto 0);
		mc2_req_wrd_rdctl_o 	: out std_logic_vector(63 downto 0);
		mc2_req_flush_o 			: out std_logic;
		mc2_rd_rq_stall_o			: in std_logic;
		mc2_wr_rq_stall_o			: in std_logic;
		-- MC2 odd response port signals
		mc2_rsp_push_o				: in std_logic;
		mc2_rsp_stall_o				: out std_logic;
		mc2_rsp_data_o				: in std_logic_vector(63 downto 0);
		mc2_rsp_rdctl_o				: in std_logic_vector(31 downto 0);
		-- MC3 even request port signals
		mc3_req_ld_e					: out std_logic;
		mc3_req_st_e					: out std_logic;
		mc3_req_size_e				: out std_logic_vector(1 downto 0);
		mc3_req_vadr_e				: out std_logic_vector(47 downto 0);
		mc3_req_wrd_rdctl_e 	: out std_logic_vector(63 downto 0);
		mc3_req_flush_e 			: out std_logic;
		mc3_rd_rq_stall_e			: in std_logic;
		mc3_wr_rq_stall_e			: in std_logic;
		-- MC3 even response port signals
		mc3_rsp_push_e				: in std_logic;
		mc3_rsp_stall_e				: out std_logic;
		mc3_rsp_data_e				: in std_logic_vector(63 downto 0);
		mc3_rsp_rdctl_e				: in std_logic_vector(31 downto 0);
		-- MC3 odd request port signals
		mc3_req_ld_o					: out std_logic;
		mc3_req_st_o					: out std_logic;
		mc3_req_size_o				: out std_logic_vector(1 downto 0);
		mc3_req_vadr_o				: out std_logic_vector(47 downto 0);
		mc3_req_wrd_rdctl_o 	: out std_logic_vector(63 downto 0);
		mc3_req_flush_o 			: out std_logic;
		mc3_rd_rq_stall_o			: in std_logic;
		mc3_wr_rq_stall_o			: in std_logic;
		-- MC3 odd response port signals
		mc3_rsp_push_o				: in std_logic;
		mc3_rsp_stall_o				: out std_logic;
		mc3_rsp_data_o				: in std_logic_vector(63 downto 0);
		mc3_rsp_rdctl_o				: in std_logic_vector(31 downto 0);
		-- MC4 even request port signals
		mc4_req_ld_e					: out std_logic;
		mc4_req_st_e					: out std_logic;
		mc4_req_size_e				: out std_logic_vector(1 downto 0);
		mc4_req_vadr_e				: out std_logic_vector(47 downto 0);
		mc4_req_wrd_rdctl_e 	: out std_logic_vector(63 downto 0);
		mc4_req_flush_e 			: out std_logic;
		mc4_rd_rq_stall_e			: in std_logic;
		mc4_wr_rq_stall_e			: in std_logic;
		-- MC4 even response port signals
		mc4_rsp_push_e				: in std_logic;
		mc4_rsp_stall_e				: out std_logic;
		mc4_rsp_data_e				: in std_logic_vector(63 downto 0);
		mc4_rsp_rdctl_e				: in std_logic_vector(31 downto 0);
		-- MC4 odd request port signals
		mc4_req_ld_o					: out std_logic;
		mc4_req_st_o					: out std_logic;
		mc4_req_size_o				: out std_logic_vector(1 downto 0);
		mc4_req_vadr_o				: out std_logic_vector(47 downto 0);
		mc4_req_wrd_rdctl_o 	: out std_logic_vector(63 downto 0);
		mc4_req_flush_o 			: out std_logic;
		mc4_rd_rq_stall_o			: in std_logic;
		mc4_wr_rq_stall_o			: in std_logic;
		-- MC4 odd response port signals
		mc4_rsp_push_o				: in std_logic;
		mc4_rsp_stall_o				: out std_logic;
		mc4_rsp_data_o				: in std_logic_vector(63 downto 0);
		mc4_rsp_rdctl_o				: in std_logic_vector(31 downto 0);
		-- MC5 even request port signals
		mc5_req_ld_e					: out std_logic;
		mc5_req_st_e					: out std_logic;
		mc5_req_size_e				: out std_logic_vector(1 downto 0);
		mc5_req_vadr_e				: out std_logic_vector(47 downto 0);
		mc5_req_wrd_rdctl_e 	: out std_logic_vector(63 downto 0);
		mc5_req_flush_e 			: out std_logic;
		mc5_rd_rq_stall_e			: in std_logic;
		mc5_wr_rq_stall_e			: in std_logic;
		-- MC5 even response port signals
		mc5_rsp_push_e				: in std_logic;
		mc5_rsp_stall_e				: out std_logic;
		mc5_rsp_data_e				: in std_logic_vector(63 downto 0);
		mc5_rsp_rdctl_e				: in std_logic_vector(31 downto 0);
		-- MC5 odd request port signals
		mc5_req_ld_o					: out std_logic;
		mc5_req_st_o					: out std_logic;
		mc5_req_size_o				: out std_logic_vector(1 downto 0);
		mc5_req_vadr_o				: out std_logic_vector(47 downto 0);
		mc5_req_wrd_rdctl_o 	: out std_logic_vector(63 downto 0);
		mc5_req_flush_o 			: out std_logic;
		mc5_rd_rq_stall_o			: in std_logic;
		mc5_wr_rq_stall_o			: in std_logic;
		-- MC5 odd response port signals
		mc5_rsp_push_o				: in std_logic;
		mc5_rsp_stall_o				: out std_logic;
		mc5_rsp_data_o				: in std_logic_vector(63 downto 0);
		mc5_rsp_rdctl_o				: in std_logic_vector(31 downto 0);
		-- MC6 even request port signals
		mc6_req_ld_e					: out std_logic;
		mc6_req_st_e					: out std_logic;
		mc6_req_size_e				: out std_logic_vector(1 downto 0);
		mc6_req_vadr_e				: out std_logic_vector(47 downto 0);
		mc6_req_wrd_rdctl_e 	: out std_logic_vector(63 downto 0);
		mc6_req_flush_e 			: out std_logic;
		mc6_rd_rq_stall_e			: in std_logic;
		mc6_wr_rq_stall_e			: in std_logic;
		-- MC6 even response port signals
		mc6_rsp_push_e				: in std_logic;
		mc6_rsp_stall_e				: out std_logic;
		mc6_rsp_data_e				: in std_logic_vector(63 downto 0);
		mc6_rsp_rdctl_e				: in std_logic_vector(31 downto 0);
		-- MC6 odd request port signals
		mc6_req_ld_o					: out std_logic;
		mc6_req_st_o					: out std_logic;
		mc6_req_size_o				: out std_logic_vector(1 downto 0);
		mc6_req_vadr_o				: out std_logic_vector(47 downto 0);
		mc6_req_wrd_rdctl_o 	: out std_logic_vector(63 downto 0);
		mc6_req_flush_o 			: out std_logic;
		mc6_rd_rq_stall_o			: in std_logic;
		mc6_wr_rq_stall_o			: in std_logic;
		-- MC6 odd response port signals
		mc6_rsp_push_o				: in std_logic;
		mc6_rsp_stall_o				: out std_logic;
		mc6_rsp_data_o				: in std_logic_vector(63 downto 0);
		mc6_rsp_rdctl_o				: in std_logic_vector(31 downto 0);
		-- MC7 even request port signals
		mc7_req_ld_e					: out std_logic;
		mc7_req_st_e					: out std_logic;
		mc7_req_size_e				: out std_logic_vector(1 downto 0);
		mc7_req_vadr_e				: out std_logic_vector(47 downto 0);
		mc7_req_wrd_rdctl_e 	: out std_logic_vector(63 downto 0);
		mc7_req_flush_e 			: out std_logic;
		mc7_rd_rq_stall_e			: in std_logic;
		mc7_wr_rq_stall_e			: in std_logic;
		-- MC7 even response port signals
		mc7_rsp_push_e				: in std_logic;
		mc7_rsp_stall_e				: out std_logic;
		mc7_rsp_data_e				: in std_logic_vector(63 downto 0);
		mc7_rsp_rdctl_e				: in std_logic_vector(31 downto 0);
		-- MC7 odd request port signals
		mc7_req_ld_o					: out std_logic;
		mc7_req_st_o					: out std_logic;
		mc7_req_size_o				: out std_logic_vector(1 downto 0);
		mc7_req_vadr_o				: out std_logic_vector(47 downto 0);
		mc7_req_wrd_rdctl_o 	: out std_logic_vector(63 downto 0);
		mc7_req_flush_o 			: out std_logic;
		mc7_rd_rq_stall_o			: in std_logic;
		mc7_wr_rq_stall_o			: in std_logic;
		-- MC7 odd response port signals
		mc7_rsp_push_o				: in std_logic;
		mc7_rsp_stall_o				: out std_logic;
		mc7_rsp_data_o				: in std_logic_vector(63 downto 0);
		mc7_rsp_rdctl_o				: in std_logic_vector(31 downto 0)
	);
end osobel_ctrl;

architecture Behavioral of osobel_ctrl is

	component osobel_node
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
	end component;

	signal count		 		: std_logic_vector (63 downto 0);
	signal rd_addr	 		: std_logic_vector (63 downto 0);
	signal wr_addr	 		: std_logic_vector (63 downto 0);

	signal node_idle		: std_logic_vector (7 downto 0);
	signal node_enable	: std_logic_vector (7 downto 0);
	signal node_done		: std_logic_vector (7 downto 0);

	type state_type is (idle_st, start_st, s1, s2, s3, s4, s5, s6);
	signal state			: state_type;

	type addr_array	is array (0 to 7) of std_logic_vector(63 downto 0);
	signal ld_addr			: addr_array;
	signal st_addr			: addr_array;
	
begin
	---- temp edit
	-- mc0_req_flush_e <=  '0'; -- write flush isn't used in this design
	-- mc0_rsp_stall_e <= '0';
	-- mc0_req_size_e <= "00";
	-- mc0_req_ld_e <= '0';
	-- mc0_req_st_e <= '0';
	-- mc0_req_wrd_rdctl_e <= (others => '0');
	-- mc0_req_vadr_e <= (others => '0');
	-- mc0_req_flush_o <=  '0'; -- write flush isn't used in this design
	-- mc0_rsp_stall_o <= '0';
	-- mc0_req_size_o <= "00";
	-- mc0_req_ld_o <= '0';
	-- mc0_req_st_o <= '0';
	-- mc0_req_wrd_rdctl_o <= (others => '0');
	-- mc0_req_vadr_o <= (others => '0');

	-- calculate the read/write addresses for the sobel nodes
	ld_addr(0) <= rd_addr;
	ld_addr(1) <= rd_addr + 6;
	ld_addr(2) <= rd_addr + 12;
	ld_addr(3) <= rd_addr + 18;
	ld_addr(4) <= rd_addr + 24;
	ld_addr(5) <= rd_addr + 30;
	ld_addr(6) <= rd_addr + 36;
	ld_addr(7) <= rd_addr + 42;
	st_addr(0) <= wr_addr;
	st_addr(1) <= wr_addr + 6;
	st_addr(2) <= wr_addr + 12;
	st_addr(3) <= wr_addr + 18;
	st_addr(4) <= wr_addr + 24;
	st_addr(5) <= wr_addr + 30;
	st_addr(6) <= wr_addr + 36;
	st_addr(7) <= wr_addr + 42;

	-- instantiate sobel node 0
	node0: osobel_node port map (
		clk									=> clk,
		reset								=> reset,
		enable							=> node_enable(0),
		idle								=> node_idle(0),
		in_addr							=> ld_addr(0),
		out_addr						=> st_addr(0),
		img_rows						=> img_rows,
		img_cols						=> img_cols,
		mc0_req_ld					=> mc0_req_ld_e,
		mc0_req_st					=> mc0_req_st_e,
		mc0_req_size				=> mc0_req_size_e,
		mc0_req_vadr				=> mc0_req_vadr_e,
		mc0_req_wrd_rdctl 	=> mc0_req_wrd_rdctl_e,
		mc0_req_flush 			=> mc0_req_flush_e,
		mc0_rd_rq_stall			=> mc0_rd_rq_stall_e,
		mc0_wr_rq_stall			=> mc0_wr_rq_stall_e,
		mc0_rsp_push				=> mc0_rsp_push_e,
		mc0_rsp_stall				=> mc0_rsp_stall_e,
		mc0_rsp_data				=> mc0_rsp_data_e,
		mc0_rsp_rdctl				=> mc0_rsp_rdctl_e,
		mc1_req_ld					=> mc0_req_ld_o,
		mc1_req_st					=> mc0_req_st_o,
		mc1_req_size				=> mc0_req_size_o,
		mc1_req_vadr				=> mc0_req_vadr_o,
		mc1_req_wrd_rdctl 	=> mc0_req_wrd_rdctl_o,
		mc1_req_flush 			=> mc0_req_flush_o,
		mc1_rd_rq_stall			=> mc0_rd_rq_stall_o,
		mc1_wr_rq_stall			=> mc0_wr_rq_stall_o,
		mc1_rsp_push				=> mc0_rsp_push_o,
		mc1_rsp_stall				=> mc0_rsp_stall_o,
		mc1_rsp_data				=> mc0_rsp_data_o,
		mc1_rsp_rdctl				=> mc0_rsp_rdctl_o
	);
	
	-- instantiate sobel node 1
	node1: osobel_node port map (
		clk									=> clk,
		reset								=> reset,
		enable							=> node_enable(1),
		idle								=> node_idle(1),
		in_addr							=> ld_addr(1),
		out_addr						=> st_addr(1),
		img_rows						=> img_rows,
		img_cols						=> img_cols,
		mc0_req_ld					=> mc1_req_ld_e,
		mc0_req_st					=> mc1_req_st_e,
		mc0_req_size				=> mc1_req_size_e,
		mc0_req_vadr				=> mc1_req_vadr_e,
		mc0_req_wrd_rdctl 	=> mc1_req_wrd_rdctl_e,
		mc0_req_flush 			=> mc1_req_flush_e,
		mc0_rd_rq_stall			=> mc1_rd_rq_stall_e,
		mc0_wr_rq_stall			=> mc1_wr_rq_stall_e,
		mc0_rsp_push				=> mc1_rsp_push_e,
		mc0_rsp_stall				=> mc1_rsp_stall_e,
		mc0_rsp_data				=> mc1_rsp_data_e,
		mc0_rsp_rdctl				=> mc1_rsp_rdctl_e,
		mc1_req_ld					=> mc1_req_ld_o,
		mc1_req_st					=> mc1_req_st_o,
		mc1_req_size				=> mc1_req_size_o,
		mc1_req_vadr				=> mc1_req_vadr_o,
		mc1_req_wrd_rdctl 	=> mc1_req_wrd_rdctl_o,
		mc1_req_flush 			=> mc1_req_flush_o,
		mc1_rd_rq_stall			=> mc1_rd_rq_stall_o,
		mc1_wr_rq_stall			=> mc1_wr_rq_stall_o,
		mc1_rsp_push				=> mc1_rsp_push_o,
		mc1_rsp_stall				=> mc1_rsp_stall_o,
		mc1_rsp_data				=> mc1_rsp_data_o,
		mc1_rsp_rdctl				=> mc1_rsp_rdctl_o
	);

	-- instantiate sobel node 2
	node2: osobel_node port map (
		clk									=> clk,
		reset								=> reset,
		enable							=> node_enable(2),
		idle								=> node_idle(2),
		in_addr							=> ld_addr(2),
		out_addr						=> st_addr(2),
		img_rows						=> img_rows,
		img_cols						=> img_cols,
		mc0_req_ld					=> mc2_req_ld_e,
		mc0_req_st					=> mc2_req_st_e,
		mc0_req_size				=> mc2_req_size_e,
		mc0_req_vadr				=> mc2_req_vadr_e,
		mc0_req_wrd_rdctl 	=> mc2_req_wrd_rdctl_e,
		mc0_req_flush 			=> mc2_req_flush_e,
		mc0_rd_rq_stall			=> mc2_rd_rq_stall_e,
		mc0_wr_rq_stall			=> mc2_wr_rq_stall_e,
		mc0_rsp_push				=> mc2_rsp_push_e,
		mc0_rsp_stall				=> mc2_rsp_stall_e,
		mc0_rsp_data				=> mc2_rsp_data_e,
		mc0_rsp_rdctl				=> mc2_rsp_rdctl_e,
		mc1_req_ld					=> mc2_req_ld_o,
		mc1_req_st					=> mc2_req_st_o,
		mc1_req_size				=> mc2_req_size_o,
		mc1_req_vadr				=> mc2_req_vadr_o,
		mc1_req_wrd_rdctl 	=> mc2_req_wrd_rdctl_o,
		mc1_req_flush 			=> mc2_req_flush_o,
		mc1_rd_rq_stall			=> mc2_rd_rq_stall_o,
		mc1_wr_rq_stall			=> mc2_wr_rq_stall_o,
		mc1_rsp_push				=> mc2_rsp_push_o,
		mc1_rsp_stall				=> mc2_rsp_stall_o,
		mc1_rsp_data				=> mc2_rsp_data_o,
		mc1_rsp_rdctl				=> mc2_rsp_rdctl_o
	);

	-- instantiate sobel node 3
	node3: osobel_node port map (
		clk									=> clk,
		reset								=> reset,
		enable							=> node_enable(3),
		idle								=> node_idle(3),
		in_addr							=> ld_addr(3),
		out_addr						=> st_addr(3),
		img_rows						=> img_rows,
		img_cols						=> img_cols,
		mc0_req_ld					=> mc3_req_ld_e,
		mc0_req_st					=> mc3_req_st_e,
		mc0_req_size				=> mc3_req_size_e,
		mc0_req_vadr				=> mc3_req_vadr_e,
		mc0_req_wrd_rdctl 	=> mc3_req_wrd_rdctl_e,
		mc0_req_flush 			=> mc3_req_flush_e,
		mc0_rd_rq_stall			=> mc3_rd_rq_stall_e,
		mc0_wr_rq_stall			=> mc3_wr_rq_stall_e,
		mc0_rsp_push				=> mc3_rsp_push_e,
		mc0_rsp_stall				=> mc3_rsp_stall_e,
		mc0_rsp_data				=> mc3_rsp_data_e,
		mc0_rsp_rdctl				=> mc3_rsp_rdctl_e,
		mc1_req_ld					=> mc3_req_ld_o,
		mc1_req_st					=> mc3_req_st_o,
		mc1_req_size				=> mc3_req_size_o,
		mc1_req_vadr				=> mc3_req_vadr_o,
		mc1_req_wrd_rdctl 	=> mc3_req_wrd_rdctl_o,
		mc1_req_flush 			=> mc3_req_flush_o,
		mc1_rd_rq_stall			=> mc3_rd_rq_stall_o,
		mc1_wr_rq_stall			=> mc3_wr_rq_stall_o,
		mc1_rsp_push				=> mc3_rsp_push_o,
		mc1_rsp_stall				=> mc3_rsp_stall_o,
		mc1_rsp_data				=> mc3_rsp_data_o,
		mc1_rsp_rdctl				=> mc3_rsp_rdctl_o
	);
	
	-- instantiate sobel node 4
	node4: osobel_node port map (
		clk									=> clk,
		reset								=> reset,
		enable							=> node_enable(4),
		idle								=> node_idle(4),
		in_addr							=> ld_addr(4),
		out_addr						=> st_addr(4),
		img_rows						=> img_rows,
		img_cols						=> img_cols,
		mc0_req_ld					=> mc4_req_ld_e,
		mc0_req_st					=> mc4_req_st_e,
		mc0_req_size				=> mc4_req_size_e,
		mc0_req_vadr				=> mc4_req_vadr_e,
		mc0_req_wrd_rdctl 	=> mc4_req_wrd_rdctl_e,
		mc0_req_flush 			=> mc4_req_flush_e,
		mc0_rd_rq_stall			=> mc4_rd_rq_stall_e,
		mc0_wr_rq_stall			=> mc4_wr_rq_stall_e,
		mc0_rsp_push				=> mc4_rsp_push_e,
		mc0_rsp_stall				=> mc4_rsp_stall_e,
		mc0_rsp_data				=> mc4_rsp_data_e,
		mc0_rsp_rdctl				=> mc4_rsp_rdctl_e,
		mc1_req_ld					=> mc4_req_ld_o,
		mc1_req_st					=> mc4_req_st_o,
		mc1_req_size				=> mc4_req_size_o,
		mc1_req_vadr				=> mc4_req_vadr_o,
		mc1_req_wrd_rdctl 	=> mc4_req_wrd_rdctl_o,
		mc1_req_flush 			=> mc4_req_flush_o,
		mc1_rd_rq_stall			=> mc4_rd_rq_stall_o,
		mc1_wr_rq_stall			=> mc4_wr_rq_stall_o,
		mc1_rsp_push				=> mc4_rsp_push_o,
		mc1_rsp_stall				=> mc4_rsp_stall_o,
		mc1_rsp_data				=> mc4_rsp_data_o,
		mc1_rsp_rdctl				=> mc4_rsp_rdctl_o
	);

	-- instantiate sobel node 5
	node5: osobel_node port map (
		clk									=> clk,
		reset								=> reset,
		enable							=> node_enable(5),
		idle								=> node_idle(5),
		in_addr							=> ld_addr(5),
		out_addr						=> st_addr(5),
		img_rows						=> img_rows,
		img_cols						=> img_cols,
		mc0_req_ld					=> mc5_req_ld_e,
		mc0_req_st					=> mc5_req_st_e,
		mc0_req_size				=> mc5_req_size_e,
		mc0_req_vadr				=> mc5_req_vadr_e,
		mc0_req_wrd_rdctl 	=> mc5_req_wrd_rdctl_e,
		mc0_req_flush 			=> mc5_req_flush_e,
		mc0_rd_rq_stall			=> mc5_rd_rq_stall_e,
		mc0_wr_rq_stall			=> mc5_wr_rq_stall_e,
		mc0_rsp_push				=> mc5_rsp_push_e,
		mc0_rsp_stall				=> mc5_rsp_stall_e,
		mc0_rsp_data				=> mc5_rsp_data_e,
		mc0_rsp_rdctl				=> mc5_rsp_rdctl_e,
		mc1_req_ld					=> mc5_req_ld_o,
		mc1_req_st					=> mc5_req_st_o,
		mc1_req_size				=> mc5_req_size_o,
		mc1_req_vadr				=> mc5_req_vadr_o,
		mc1_req_wrd_rdctl 	=> mc5_req_wrd_rdctl_o,
		mc1_req_flush 			=> mc5_req_flush_o,
		mc1_rd_rq_stall			=> mc5_rd_rq_stall_o,
		mc1_wr_rq_stall			=> mc5_wr_rq_stall_o,
		mc1_rsp_push				=> mc5_rsp_push_o,
		mc1_rsp_stall				=> mc5_rsp_stall_o,
		mc1_rsp_data				=> mc5_rsp_data_o,
		mc1_rsp_rdctl				=> mc5_rsp_rdctl_o
	);

	-- instantiate sobel node 6
	node6: osobel_node port map (
		clk									=> clk,
		reset								=> reset,
		enable							=> node_enable(6),
		idle								=> node_idle(6),
		in_addr							=> ld_addr(6),
		out_addr						=> st_addr(6),
		img_rows						=> img_rows,
		img_cols						=> img_cols,
		mc0_req_ld					=> mc6_req_ld_e,
		mc0_req_st					=> mc6_req_st_e,
		mc0_req_size				=> mc6_req_size_e,
		mc0_req_vadr				=> mc6_req_vadr_e,
		mc0_req_wrd_rdctl 	=> mc6_req_wrd_rdctl_e,
		mc0_req_flush 			=> mc6_req_flush_e,
		mc0_rd_rq_stall			=> mc6_rd_rq_stall_e,
		mc0_wr_rq_stall			=> mc6_wr_rq_stall_e,
		mc0_rsp_push				=> mc6_rsp_push_e,
		mc0_rsp_stall				=> mc6_rsp_stall_e,
		mc0_rsp_data				=> mc6_rsp_data_e,
		mc0_rsp_rdctl				=> mc6_rsp_rdctl_e,
		mc1_req_ld					=> mc6_req_ld_o,
		mc1_req_st					=> mc6_req_st_o,
		mc1_req_size				=> mc6_req_size_o,
		mc1_req_vadr				=> mc6_req_vadr_o,
		mc1_req_wrd_rdctl 	=> mc6_req_wrd_rdctl_o,
		mc1_req_flush 			=> mc6_req_flush_o,
		mc1_rd_rq_stall			=> mc6_rd_rq_stall_o,
		mc1_wr_rq_stall			=> mc6_wr_rq_stall_o,
		mc1_rsp_push				=> mc6_rsp_push_o,
		mc1_rsp_stall				=> mc6_rsp_stall_o,
		mc1_rsp_data				=> mc6_rsp_data_o,
		mc1_rsp_rdctl				=> mc6_rsp_rdctl_o
	);
	
	-- instantiate sobel node 7
	node7: osobel_node port map (
		clk									=> clk,
		reset								=> reset,
		enable							=> node_enable(7),
		idle								=> node_idle(7),
		in_addr							=> ld_addr(7),
		out_addr						=> st_addr(7),
		img_rows						=> img_rows,
		img_cols						=> img_cols,
		mc0_req_ld					=> mc7_req_ld_e,
		mc0_req_st					=> mc7_req_st_e,
		mc0_req_size				=> mc7_req_size_e,
		mc0_req_vadr				=> mc7_req_vadr_e,
		mc0_req_wrd_rdctl 	=> mc7_req_wrd_rdctl_e,
		mc0_req_flush 			=> mc7_req_flush_e,
		mc0_rd_rq_stall			=> mc7_rd_rq_stall_e,
		mc0_wr_rq_stall			=> mc7_wr_rq_stall_e,
		mc0_rsp_push				=> mc7_rsp_push_e,
		mc0_rsp_stall				=> mc7_rsp_stall_e,
		mc0_rsp_data				=> mc7_rsp_data_e,
		mc0_rsp_rdctl				=> mc7_rsp_rdctl_e,
		mc1_req_ld					=> mc7_req_ld_o,
		mc1_req_st					=> mc7_req_st_o,
		mc1_req_size				=> mc7_req_size_o,
		mc1_req_vadr				=> mc7_req_vadr_o,
		mc1_req_wrd_rdctl 	=> mc7_req_wrd_rdctl_o,
		mc1_req_flush 			=> mc7_req_flush_o,
		mc1_rd_rq_stall			=> mc7_rd_rq_stall_o,
		mc1_wr_rq_stall			=> mc7_wr_rq_stall_o,
		mc1_rsp_push				=> mc7_rsp_push_o,
		mc1_rsp_stall				=> mc7_rsp_stall_o,
		mc1_rsp_data				=> mc7_rsp_data_o,
		mc1_rsp_rdctl				=> mc7_rsp_rdctl_o
	);

	process (clk)
	begin
		if rising_edge (clk) then
			if reset = '1' then
				idle <= '1';
				done <= '0';
				state <= idle_st;
				count <= (others => '0');
				node_enable <= x"00";
			else
				case state is
					when idle_st => -- keep idle until enable
						node_enable <= x"00";
						if enable = '1' then
							idle <= '0';
							rd_addr <= in_addr;
							wr_addr <= out_addr;
							count <= (others => '0');
							state <= start_st;
						else
							idle <= '1';
							done <= '0';
						end if;
					when start_st => -- do 8 columns
						idle <= '0';
						if count + 1 >= img_cols - 2 then			-- done
							if node_idle = x"FF" then
								state <= s2;
							else
								state <= start_st;
							end if;
						elsif count + 6 >= img_cols - 2 then	-- less than 6 pixels are remaining
							if node_idle(0) = '1' then
								node_enable(0) <= '1';			-- use 1 node to process 1 pixel
								state <= s1;
							else
								state <= start_st;
							end if;
						elsif count + 48 >= img_cols - 2 then -- less than 48 pixels are remaining
							if node_idle(0) = '1' then
								node_enable(0) <= '1';			-- use 1 node to process 6 pixels
								state <= s1;
							else
								state <= start_st;
							end if;
						else 																	-- more than 48 pixels are remaining
							if node_idle = x"FF" then
								node_enable <= x"FF";				-- use 8 nodes to process 48 pixels
								state <= s1;
							else
								state <= start_st;
							end if;
						end if;
					when s1 =>			-- increment addresses and do again
						node_enable <= x"00";
						if count + 6 >= img_cols - 2 then	-- less than 6 pixels are remaining
							count <= count + 1;
							rd_addr <= rd_addr + 1;
							wr_addr <= wr_addr + 1;
						elsif count + 48 >= img_cols - 2 then -- less than 48 pixels are remaining
							count <= count + 6;
							rd_addr <= rd_addr + 6;
							wr_addr <= wr_addr + 6;
						else 																	-- more than 48 pixels are remaining
							count <= count + 48;
							rd_addr <= rd_addr + 48;
							wr_addr <= wr_addr + 48;
						end if;
						state <= start_st;
					when s2 =>		-- done
						done <= '1';
						idle <= '1';
						state <= idle_st;
					when others =>
						idle <= '1';
						done <= '0';
						state <= idle_st;
				end case;
			end if;
		end if;
	end process;

end Behavioral;
