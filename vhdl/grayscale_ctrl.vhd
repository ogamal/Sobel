library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

entity grayscale_ctrl is
	port (
		-- control signals
		clk						 				: in std_logic;
		reset					 				: in std_logic;
		enable				 				: in std_logic;
		idle					 				: out std_logic;	-- 0 processing, 1 otherwise
		done					 				: out std_logic;	-- 1 done processing, 0 other
		-- parameters
		in_addr					 			: in std_logic_vector (63 downto 0);
		out_addr				 			: in std_logic_vector (63 downto 0);
		img_rows				 			: in std_logic_vector (63 downto 0);
		img_cols				 			: in std_logic_vector (63 downto 0);
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
end grayscale_ctrl;

architecture Behavioral of grayscale_ctrl is
	signal node_idle		: std_logic_vector (15 downto 0);
	signal node_enable	: std_logic_vector (15 downto 0);
	signal node_done		: std_logic_vector (15 downto 0);
	signal single_wr		: std_logic_vector (15 downto 0);
	signal rd_addr			: std_logic_vector (63 downto 0);
	signal wr_addr			: std_logic_vector (63 downto 0);
	signal rd_count			: std_logic_vector (63 downto 0);
	signal wr_count			: std_logic_vector (63 downto 0);
	signal total_size		: std_logic_vector (63 downto 0);

	type addr_array	is array (0 to 15) of std_logic_vector(63 downto 0);
	signal ld_addr			: addr_array;
	signal st_addr			: addr_array;

	type state_type is (idl, strt, s1, s2, s3, s4, s5, s6);
	signal state				: state_type;

	component grayscale_node
		port (
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
	end component;
begin

	total_size <= img_rows(31 downto 0)*img_cols(31 downto 0);
	-- Single write if last pixel and the total_size is odd
	single_wr(0) <= '1' when ((total_size = wr_count + 2) and (total_size(0) = '1')) else '0';
	single_wr(15 downto 1) <= (others => '0');

	-- calculate load/store addresses for the nodes
	ld_addr(0) <= rd_addr;
	ld_addr(1) <= rd_addr+8;
	ld_addr(2) <= rd_addr+16;
	ld_addr(3) <= rd_addr+24;
	ld_addr(4) <= rd_addr+32;
	ld_addr(5) <= rd_addr+40;
	ld_addr(6) <= rd_addr+48;
	ld_addr(7) <= rd_addr+56;
	ld_addr(8) <= rd_addr+64;
	ld_addr(9) <= rd_addr+72;
	ld_addr(10) <= rd_addr+80;
	ld_addr(11) <= rd_addr+88;
	ld_addr(12) <= rd_addr+96;
	ld_addr(13) <= rd_addr+104;
	ld_addr(14) <= rd_addr+112;
	ld_addr(15) <= rd_addr+120;
	st_addr(0) <= wr_addr;
	st_addr(1) <= wr_addr+2;
	st_addr(2) <= wr_addr+4;
	st_addr(3) <= wr_addr+6;
	st_addr(4) <= wr_addr+8;
	st_addr(5) <= wr_addr+10;
	st_addr(6) <= wr_addr+12;
	st_addr(7) <= wr_addr+14;
	st_addr(8) <= wr_addr+16;
	st_addr(9) <= wr_addr+18;
	st_addr(10) <= wr_addr+20;
	st_addr(11) <= wr_addr+22;
	st_addr(12) <= wr_addr+24;
	st_addr(13) <= wr_addr+26;
	st_addr(14) <= wr_addr+28;
	st_addr(15) <= wr_addr+30;

	-- instantiate 16 Grayscale nodes
	inst0_even: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(0),
		idle							=> node_idle(0),
		done							=> node_done(0),
		in_addr						=> ld_addr(0),
		out_addr					=> st_addr(0),
		single_write			=> single_wr(0),
		mc_req_ld					=> mc0_req_ld_e,
		mc_req_st					=> mc0_req_st_e,
		mc_req_size				=> mc0_req_size_e,
		mc_req_vadr				=> mc0_req_vadr_e,
		mc_req_wrd_rdctl	=> mc0_req_wrd_rdctl_e,
		mc_req_flush 			=> mc0_req_flush_e,
		mc_rd_rq_stall		=> mc0_rd_rq_stall_e,
		mc_wr_rq_stall		=> mc0_wr_rq_stall_e,
		mc_rsp_push				=> mc0_rsp_push_e,
		mc_rsp_stall			=> mc0_rsp_stall_e,
		mc_rsp_data				=> mc0_rsp_data_e,
		mc_rsp_rdctl			=> mc0_rsp_rdctl_e
	);

	inst0_odd: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(1),
		idle							=> node_idle(1),
		done							=> node_done(1),
		in_addr						=> ld_addr(1),
		out_addr					=> st_addr(1),
		single_write			=> single_wr(1),
		mc_req_ld					=> mc0_req_ld_o,
		mc_req_st					=> mc0_req_st_o,
		mc_req_size				=> mc0_req_size_o,
		mc_req_vadr				=> mc0_req_vadr_o,
		mc_req_wrd_rdctl	=> mc0_req_wrd_rdctl_o,
		mc_req_flush 			=> mc0_req_flush_o,
		mc_rd_rq_stall		=> mc0_rd_rq_stall_o,
		mc_wr_rq_stall		=> mc0_wr_rq_stall_o,
		mc_rsp_push				=> mc0_rsp_push_o,
		mc_rsp_stall			=> mc0_rsp_stall_o,
		mc_rsp_data				=> mc0_rsp_data_o,
		mc_rsp_rdctl			=> mc0_rsp_rdctl_o
	);

	inst1_even: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(2),
		idle							=> node_idle(2),
		done							=> node_done(2),
		in_addr						=> ld_addr(2),
		out_addr					=> st_addr(2),
		single_write			=> single_wr(2),
		mc_req_ld					=> mc1_req_ld_e,
		mc_req_st					=> mc1_req_st_e,
		mc_req_size				=> mc1_req_size_e,
		mc_req_vadr				=> mc1_req_vadr_e,
		mc_req_wrd_rdctl	=> mc1_req_wrd_rdctl_e,
		mc_req_flush 			=> mc1_req_flush_e,
		mc_rd_rq_stall		=> mc1_rd_rq_stall_e,
		mc_wr_rq_stall		=> mc1_wr_rq_stall_e,
		mc_rsp_push				=> mc1_rsp_push_e,
		mc_rsp_stall			=> mc1_rsp_stall_e,
		mc_rsp_data				=> mc1_rsp_data_e,
		mc_rsp_rdctl			=> mc1_rsp_rdctl_e
	);

	inst1_odd: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(3),
		idle							=> node_idle(3),
		done							=> node_done(3),
		in_addr						=> ld_addr(3),
		out_addr					=> st_addr(3),
		single_write			=> single_wr(3),
		mc_req_ld					=> mc1_req_ld_o,
		mc_req_st					=> mc1_req_st_o,
		mc_req_size				=> mc1_req_size_o,
		mc_req_vadr				=> mc1_req_vadr_o,
		mc_req_wrd_rdctl	=> mc1_req_wrd_rdctl_o,
		mc_req_flush 			=> mc1_req_flush_o,
		mc_rd_rq_stall		=> mc1_rd_rq_stall_o,
		mc_wr_rq_stall		=> mc1_wr_rq_stall_o,
		mc_rsp_push				=> mc1_rsp_push_o,
		mc_rsp_stall			=> mc1_rsp_stall_o,
		mc_rsp_data				=> mc1_rsp_data_o,
		mc_rsp_rdctl			=> mc1_rsp_rdctl_o
	);

	inst2_even: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(4),
		idle							=> node_idle(4),
		done							=> node_done(4),
		in_addr						=> ld_addr(4),
		out_addr					=> st_addr(4),
		single_write			=> single_wr(4),
		mc_req_ld					=> mc2_req_ld_e,
		mc_req_st					=> mc2_req_st_e,
		mc_req_size				=> mc2_req_size_e,
		mc_req_vadr				=> mc2_req_vadr_e,
		mc_req_wrd_rdctl	=> mc2_req_wrd_rdctl_e,
		mc_req_flush 			=> mc2_req_flush_e,
		mc_rd_rq_stall		=> mc2_rd_rq_stall_e,
		mc_wr_rq_stall		=> mc2_wr_rq_stall_e,
		mc_rsp_push				=> mc2_rsp_push_e,
		mc_rsp_stall			=> mc2_rsp_stall_e,
		mc_rsp_data				=> mc2_rsp_data_e,
		mc_rsp_rdctl			=> mc2_rsp_rdctl_e
	);

	inst2_odd: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(5),
		idle							=> node_idle(5),
		done							=> node_done(5),
		in_addr						=> ld_addr(5),
		out_addr					=> st_addr(5),
		single_write			=> single_wr(5),
		mc_req_ld					=> mc2_req_ld_o,
		mc_req_st					=> mc2_req_st_o,
		mc_req_size				=> mc2_req_size_o,
		mc_req_vadr				=> mc2_req_vadr_o,
		mc_req_wrd_rdctl	=> mc2_req_wrd_rdctl_o,
		mc_req_flush 			=> mc2_req_flush_o,
		mc_rd_rq_stall		=> mc2_rd_rq_stall_o,
		mc_wr_rq_stall		=> mc2_wr_rq_stall_o,
		mc_rsp_push				=> mc2_rsp_push_o,
		mc_rsp_stall			=> mc2_rsp_stall_o,
		mc_rsp_data				=> mc2_rsp_data_o,
		mc_rsp_rdctl			=> mc2_rsp_rdctl_o
	);

	inst3_even: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(6),
		idle							=> node_idle(6),
		done							=> node_done(6),
		in_addr						=> ld_addr(6),
		out_addr					=> st_addr(6),
		single_write			=> single_wr(6),
		mc_req_ld					=> mc3_req_ld_e,
		mc_req_st					=> mc3_req_st_e,
		mc_req_size				=> mc3_req_size_e,
		mc_req_vadr				=> mc3_req_vadr_e,
		mc_req_wrd_rdctl	=> mc3_req_wrd_rdctl_e,
		mc_req_flush 			=> mc3_req_flush_e,
		mc_rd_rq_stall		=> mc3_rd_rq_stall_e,
		mc_wr_rq_stall		=> mc3_wr_rq_stall_e,
		mc_rsp_push				=> mc3_rsp_push_e,
		mc_rsp_stall			=> mc3_rsp_stall_e,
		mc_rsp_data				=> mc3_rsp_data_e,
		mc_rsp_rdctl			=> mc3_rsp_rdctl_e
	);

	inst3_odd: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(7),
		idle							=> node_idle(7),
		done							=> node_done(7),
		in_addr						=> ld_addr(7),
		out_addr					=> st_addr(7),
		single_write			=> single_wr(7),
		mc_req_ld					=> mc3_req_ld_o,
		mc_req_st					=> mc3_req_st_o,
		mc_req_size				=> mc3_req_size_o,
		mc_req_vadr				=> mc3_req_vadr_o,
		mc_req_wrd_rdctl	=> mc3_req_wrd_rdctl_o,
		mc_req_flush 			=> mc3_req_flush_o,
		mc_rd_rq_stall		=> mc3_rd_rq_stall_o,
		mc_wr_rq_stall		=> mc3_wr_rq_stall_o,
		mc_rsp_push				=> mc3_rsp_push_o,
		mc_rsp_stall			=> mc3_rsp_stall_o,
		mc_rsp_data				=> mc3_rsp_data_o,
		mc_rsp_rdctl			=> mc3_rsp_rdctl_o
	);

	inst4_even: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(8),
		idle							=> node_idle(8),
		done							=> node_done(8),
		in_addr						=> ld_addr(8),
		out_addr					=> st_addr(8),
		single_write			=> single_wr(8),
		mc_req_ld					=> mc4_req_ld_e,
		mc_req_st					=> mc4_req_st_e,
		mc_req_size				=> mc4_req_size_e,
		mc_req_vadr				=> mc4_req_vadr_e,
		mc_req_wrd_rdctl	=> mc4_req_wrd_rdctl_e,
		mc_req_flush 			=> mc4_req_flush_e,
		mc_rd_rq_stall		=> mc4_rd_rq_stall_e,
		mc_wr_rq_stall		=> mc4_wr_rq_stall_e,
		mc_rsp_push				=> mc4_rsp_push_e,
		mc_rsp_stall			=> mc4_rsp_stall_e,
		mc_rsp_data				=> mc4_rsp_data_e,
		mc_rsp_rdctl			=> mc4_rsp_rdctl_e
	);

	inst4_odd: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(9),
		idle							=> node_idle(9),
		done							=> node_done(9),
		in_addr						=> ld_addr(9),
		out_addr					=> st_addr(9),
		single_write			=> single_wr(9),
		mc_req_ld					=> mc4_req_ld_o,
		mc_req_st					=> mc4_req_st_o,
		mc_req_size				=> mc4_req_size_o,
		mc_req_vadr				=> mc4_req_vadr_o,
		mc_req_wrd_rdctl	=> mc4_req_wrd_rdctl_o,
		mc_req_flush 			=> mc4_req_flush_o,
		mc_rd_rq_stall		=> mc4_rd_rq_stall_o,
		mc_wr_rq_stall		=> mc4_wr_rq_stall_o,
		mc_rsp_push				=> mc4_rsp_push_o,
		mc_rsp_stall			=> mc4_rsp_stall_o,
		mc_rsp_data				=> mc4_rsp_data_o,
		mc_rsp_rdctl			=> mc4_rsp_rdctl_o
	);

	inst5_even: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(10),
		idle							=> node_idle(10),
		done							=> node_done(10),
		in_addr						=> ld_addr(10),
		out_addr					=> st_addr(10),
		single_write			=> single_wr(10),
		mc_req_ld					=> mc5_req_ld_e,
		mc_req_st					=> mc5_req_st_e,
		mc_req_size				=> mc5_req_size_e,
		mc_req_vadr				=> mc5_req_vadr_e,
		mc_req_wrd_rdctl	=> mc5_req_wrd_rdctl_e,
		mc_req_flush 			=> mc5_req_flush_e,
		mc_rd_rq_stall		=> mc5_rd_rq_stall_e,
		mc_wr_rq_stall		=> mc5_wr_rq_stall_e,
		mc_rsp_push				=> mc5_rsp_push_e,
		mc_rsp_stall			=> mc5_rsp_stall_e,
		mc_rsp_data				=> mc5_rsp_data_e,
		mc_rsp_rdctl			=> mc5_rsp_rdctl_e
	);

	inst5_odd: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(11),
		idle							=> node_idle(11),
		done							=> node_done(11),
		in_addr						=> ld_addr(11),
		out_addr					=> st_addr(11),
		single_write			=> single_wr(11),
		mc_req_ld					=> mc5_req_ld_o,
		mc_req_st					=> mc5_req_st_o,
		mc_req_size				=> mc5_req_size_o,
		mc_req_vadr				=> mc5_req_vadr_o,
		mc_req_wrd_rdctl	=> mc5_req_wrd_rdctl_o,
		mc_req_flush 			=> mc5_req_flush_o,
		mc_rd_rq_stall		=> mc5_rd_rq_stall_o,
		mc_wr_rq_stall		=> mc5_wr_rq_stall_o,
		mc_rsp_push				=> mc5_rsp_push_o,
		mc_rsp_stall			=> mc5_rsp_stall_o,
		mc_rsp_data				=> mc5_rsp_data_o,
		mc_rsp_rdctl			=> mc5_rsp_rdctl_o
	);

	inst6_even: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(12),
		idle							=> node_idle(12),
		done							=> node_done(12),
		in_addr						=> ld_addr(12),
		out_addr					=> st_addr(12),
		single_write			=> single_wr(12),
		mc_req_ld					=> mc6_req_ld_e,
		mc_req_st					=> mc6_req_st_e,
		mc_req_size				=> mc6_req_size_e,
		mc_req_vadr				=> mc6_req_vadr_e,
		mc_req_wrd_rdctl	=> mc6_req_wrd_rdctl_e,
		mc_req_flush 			=> mc6_req_flush_e,
		mc_rd_rq_stall		=> mc6_rd_rq_stall_e,
		mc_wr_rq_stall		=> mc6_wr_rq_stall_e,
		mc_rsp_push				=> mc6_rsp_push_e,
		mc_rsp_stall			=> mc6_rsp_stall_e,
		mc_rsp_data				=> mc6_rsp_data_e,
		mc_rsp_rdctl			=> mc6_rsp_rdctl_e
	);

	inst6_odd: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(13),
		idle							=> node_idle(13),
		done							=> node_done(13),
		in_addr						=> ld_addr(13),
		out_addr					=> st_addr(13),
		single_write			=> single_wr(13),
		mc_req_ld					=> mc6_req_ld_o,
		mc_req_st					=> mc6_req_st_o,
		mc_req_size				=> mc6_req_size_o,
		mc_req_vadr				=> mc6_req_vadr_o,
		mc_req_wrd_rdctl	=> mc6_req_wrd_rdctl_o,
		mc_req_flush 			=> mc6_req_flush_o,
		mc_rd_rq_stall		=> mc6_rd_rq_stall_o,
		mc_wr_rq_stall		=> mc6_wr_rq_stall_o,
		mc_rsp_push				=> mc6_rsp_push_o,
		mc_rsp_stall			=> mc6_rsp_stall_o,
		mc_rsp_data				=> mc6_rsp_data_o,
		mc_rsp_rdctl			=> mc6_rsp_rdctl_o
	);

	inst7_even: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(14),
		idle							=> node_idle(14),
		done							=> node_done(14),
		in_addr						=> ld_addr(14),
		out_addr					=> st_addr(14),
		single_write			=> single_wr(14),
		mc_req_ld					=> mc7_req_ld_e,
		mc_req_st					=> mc7_req_st_e,
		mc_req_size				=> mc7_req_size_e,
		mc_req_vadr				=> mc7_req_vadr_e,
		mc_req_wrd_rdctl	=> mc7_req_wrd_rdctl_e,
		mc_req_flush 			=> mc7_req_flush_e,
		mc_rd_rq_stall		=> mc7_rd_rq_stall_e,
		mc_wr_rq_stall		=> mc7_wr_rq_stall_e,
		mc_rsp_push				=> mc7_rsp_push_e,
		mc_rsp_stall			=> mc7_rsp_stall_e,
		mc_rsp_data				=> mc7_rsp_data_e,
		mc_rsp_rdctl			=> mc7_rsp_rdctl_e
	);

	inst7_odd: grayscale_node port map (
		clk								=> clk,
		reset							=> reset,
		enable						=> node_enable(15),
		idle							=> node_idle(15),
		done							=> node_done(15),
		in_addr						=> ld_addr(15),
		out_addr					=> st_addr(15),
		single_write			=> single_wr(15),
		mc_req_ld					=> mc7_req_ld_o,
		mc_req_st					=> mc7_req_st_o,
		mc_req_size				=> mc7_req_size_o,
		mc_req_vadr				=> mc7_req_vadr_o,
		mc_req_wrd_rdctl	=> mc7_req_wrd_rdctl_o,
		mc_req_flush 			=> mc7_req_flush_o,
		mc_rd_rq_stall		=> mc7_rd_rq_stall_o,
		mc_wr_rq_stall		=> mc7_wr_rq_stall_o,
		mc_rsp_push				=> mc7_rsp_push_o,
		mc_rsp_stall			=> mc7_rsp_stall_o,
		mc_rsp_data				=> mc7_rsp_data_o,
		mc_rsp_rdctl			=> mc7_rsp_rdctl_o
	);

	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				idle <= '1';
				done <= '0';
				state <= idl;
				rd_count <= (others => '0');
				wr_count <= (others => '0');
				node_enable <= (others => '0');
				rd_count <= (others => '0');
				wr_count <= (others => '0');
			else
				case state is
					when idl =>
						idle <= '1';
						done <= '0';
						node_enable <= (others => '0');
						if enable = '1' then
							rd_addr <= in_addr;
							wr_addr <= out_addr;
							state <= strt;
						end if;
					when strt => -- start and enable nodes
						idle <= '0';
						if wr_count+2*16 < total_size then
							if node_idle = x"FFFF" then -- if all nodes are idle
								node_enable <= x"FFFF"; -- use all nodes
								rd_count <= rd_count + 16;
								wr_count <= wr_count + 32;
								state <= s1;
							end if;
						else
							if node_idle(0) = '1' then
								node_enable <= x"0001"; -- use only one node
								rd_count <= rd_count + 1;
								wr_count <= wr_count + 2;
								state <= s1;
							end if;
						end if;
					when s1 => -- increment addresses
						if node_enable = x"FFFF" then
							rd_addr <= rd_addr + 8*16;
							wr_addr <= wr_addr + 2*16;
						elsif node_enable = x"0001" then
							rd_addr <= rd_addr + 8;
							wr_addr <= wr_addr + 2;
						end if;
						state <= s2;
					when s2 => -- loop if didn't reach total_size
						node_enable <= (others => '0');
						if wr_count+2 < total_size then
							state <= strt;
						else
							state <= s3;
						end if;
					when s3 => -- done and wait for all nodes to finish
							done <= '1';
							if node_idle = x"FFFF" then
								state <= idl;
							end if;
					when others =>
						idle <= '1';
						done <= '0';
						state <= idl;
				end case;
			end if; -- end reset check
		end if;	-- end clk check
	end process;

end Behavioral;
