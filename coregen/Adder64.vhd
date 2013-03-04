--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: Adder64.vhd
-- /___/   /\     Timestamp: Sun Feb 17 22:32:38 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl /home/tyler07/CPRE_584/isestuff/tmp/_cg/Adder64.ngc /home/tyler07/CPRE_584/isestuff/tmp/_cg/Adder64.vhd 
-- Device	: 5vlx330ff1760-2
-- Input file	: /home/tyler07/CPRE_584/isestuff/tmp/_cg/Adder64.ngc
-- Output file	: /home/tyler07/CPRE_584/isestuff/tmp/_cg/Adder64.vhd
-- # of Entities	: 1
-- Design Name	: Adder64
-- Xilinx	: /remote/Xilinx/13.4/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Adder64 is
  port (
    clk : in STD_LOGIC := 'X'; 
    s : out STD_LOGIC_VECTOR ( 63 downto 0 ); 
    a : in STD_LOGIC_VECTOR ( 63 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 63 downto 0 ) 
  );
end Adder64;

architecture STRUCTURE of Adder64 is
  signal N0 : STD_LOGIC; 
  signal U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple : STD_LOGIC_VECTOR ( 62 downto 0 ); 
  signal U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output : STD_LOGIC_VECTOR ( 64 downto 1 ); 
  signal U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple : STD_LOGIC_VECTOR ( 63 downto 0 ); 
begin
  s(63) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(64);
  s(62) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(63);
  s(61) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(62);
  s(60) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(61);
  s(59) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(60);
  s(58) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(59);
  s(57) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(58);
  s(56) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(57);
  s(55) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(56);
  s(54) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(55);
  s(53) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(54);
  s(52) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(53);
  s(51) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(52);
  s(50) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(51);
  s(49) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(50);
  s(48) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(49);
  s(47) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(48);
  s(46) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(47);
  s(45) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(46);
  s(44) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(45);
  s(43) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(44);
  s(42) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(43);
  s(41) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(42);
  s(40) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(41);
  s(39) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(40);
  s(38) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(39);
  s(37) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(38);
  s(36) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(37);
  s(35) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(36);
  s(34) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(35);
  s(33) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(34);
  s(32) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(33);
  s(31) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(32);
  s(30) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(31);
  s(29) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(30);
  s(28) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(29);
  s(27) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(28);
  s(26) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(27);
  s(25) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(26);
  s(24) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(25);
  s(23) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(24);
  s(22) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(23);
  s(21) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(22);
  s(20) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(21);
  s(19) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(20);
  s(18) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(19);
  s(17) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(18);
  s(16) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(17);
  s(15) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(16);
  s(14) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(15);
  s(13) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(14);
  s(12) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(13);
  s(11) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(12);
  s(10) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(11);
  s(9) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(10);
  s(8) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(9);
  s(7) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(8);
  s(6) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(7);
  s(5) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(6);
  s(4) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(5);
  s(3) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(4);
  s(2) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(3);
  s(1) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(2);
  s(0) <= U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(1);
  XST_GND : GND
    port map (
      G => N0
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(0),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(1)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(1),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(2)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(2),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(3)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(3),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(4)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(4),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(5)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(5),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(6)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(6),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(7)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(7),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(8)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(8),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(9)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(9),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(10)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(10),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(11)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(11),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(12)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(12),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(13)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(13),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(14)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(14),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(15)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(15),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(16)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(16),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(17)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(17),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(18)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(18),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(19)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(19),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(20)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(20),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(21)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(21),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(22)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(22),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(23)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(23),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(24)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(24),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(25)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(25),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(26)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(26),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(27)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(27),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(28)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(28),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(29)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(29),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(30)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(30),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(31)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_32 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(31),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(32)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_33 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(32),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(33)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_34 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(33),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(34)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_35 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(34),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(35)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_36 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(35),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(36)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_37 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(36),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(37)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_38 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(37),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(38)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_39 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(38),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(39)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_40 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(39),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(40)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_41 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(40),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(41)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_42 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(41),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(42)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_43 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(42),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(43)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_44 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(43),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(44)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_45 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(44),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(45)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_46 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(45),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(46)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_47 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(46),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(47)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_48 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(47),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(48)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_49 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(48),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(49)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_50 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(49),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(50)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_51 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(50),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(51)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_52 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(51),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(52)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_53 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(52),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(53)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_54 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(53),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(54)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_55 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(54),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(55)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_56 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(55),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(56)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_57 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(56),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(57)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_58 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(57),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(58)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_59 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(58),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(59)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_60 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(59),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(60)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_61 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(60),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(61)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_62 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(61),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(62)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_63 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(62),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(63)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output_64 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      D => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(63),
      Q => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_q_i_simple_qreg_fd_output(64)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_62_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(61),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(62),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(62)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_62_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(61),
      DI => a(62),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(62),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(62)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_61_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(60),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(61),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(61)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_61_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(60),
      DI => a(61),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(61),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(61)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_60_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(59),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(60),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(60)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_60_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(59),
      DI => a(60),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(60),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(60)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_59_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(58),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(59),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(59)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_59_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(58),
      DI => a(59),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(59),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(59)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_58_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(57),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(58),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(58)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_58_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(57),
      DI => a(58),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(58),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(58)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_57_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(56),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(57),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(57)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_57_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(56),
      DI => a(57),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(57),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(57)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_56_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(55),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(56),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(56)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_56_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(55),
      DI => a(56),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(56),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(56)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_55_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(54),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(55),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(55)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_55_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(54),
      DI => a(55),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(55),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(55)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_54_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(53),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(54),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(54)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_54_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(53),
      DI => a(54),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(54),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(54)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_53_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(52),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(53),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(53)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_53_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(52),
      DI => a(53),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(53),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(53)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_52_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(51),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(52),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(52)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_52_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(51),
      DI => a(52),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(52),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(52)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_51_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(50),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(51),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(51)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_51_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(50),
      DI => a(51),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(51),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(51)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_50_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(49),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(50),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(50)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_50_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(49),
      DI => a(50),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(50),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(50)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_49_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(48),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(49),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(49)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_49_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(48),
      DI => a(49),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(49),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(49)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_48_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(47),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(48),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(48)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_48_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(47),
      DI => a(48),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(48),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(48)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_47_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(46),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(47),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(47)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_47_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(46),
      DI => a(47),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(47),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(47)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_46_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(45),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(46),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(46)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_46_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(45),
      DI => a(46),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(46),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(46)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_45_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(44),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(45),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(45)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_45_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(44),
      DI => a(45),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(45),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(45)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_44_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(43),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(44),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(44)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_44_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(43),
      DI => a(44),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(44),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(44)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_43_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(42),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(43),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(43)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_43_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(42),
      DI => a(43),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(43),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(43)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_42_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(41),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(42),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(42)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_42_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(41),
      DI => a(42),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(42),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(42)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_41_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(40),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(41),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(41)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_41_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(40),
      DI => a(41),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(41),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(41)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_40_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(39),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(40),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(40)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_40_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(39),
      DI => a(40),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(40),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(40)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_39_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(38),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(39),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(39)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_39_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(38),
      DI => a(39),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(39),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(39)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_38_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(37),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(38),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(38)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_38_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(37),
      DI => a(38),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(38),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(38)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_37_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(36),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(37),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(37)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_37_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(36),
      DI => a(37),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(37),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(37)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_36_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(35),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(36),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(36)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_36_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(35),
      DI => a(36),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(36),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(36)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_35_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(34),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(35),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(35)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_35_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(34),
      DI => a(35),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(35),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(35)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_34_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(33),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(34),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(34)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_34_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(33),
      DI => a(34),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(34),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(34)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_33_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(32),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(33),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(33)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_33_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(32),
      DI => a(33),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(33),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(33)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_32_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(31),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(32),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(32)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_32_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(31),
      DI => a(32),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(32),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(32)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_31_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(30),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(31),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(31)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_31_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(30),
      DI => a(31),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(31),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(31)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_30_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(29),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(30),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(30)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_30_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(29),
      DI => a(30),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(30),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(30)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_29_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(28),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(29),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(29)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_29_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(28),
      DI => a(29),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(29),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(29)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_28_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(27),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(28),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(28)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_28_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(27),
      DI => a(28),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(28),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(28)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_27_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(26),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(27),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(27)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_27_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(26),
      DI => a(27),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(27),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(27)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_26_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(25),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(26),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(26)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_26_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(25),
      DI => a(26),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(26),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(26)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_25_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(24),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(25),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(25)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_25_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(24),
      DI => a(25),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(25),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(25)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_24_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(23),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(24),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(24)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_24_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(23),
      DI => a(24),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(24),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(24)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_23_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(22),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(23),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(23)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_23_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(22),
      DI => a(23),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(23),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(23)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_22_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(21),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(22),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(22)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_22_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(21),
      DI => a(22),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(22),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(22)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_21_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(20),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(21),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(21)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_21_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(20),
      DI => a(21),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(21),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(21)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_20_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(19),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(20),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(20)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_20_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(19),
      DI => a(20),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(20),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(20)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_19_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(18),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(19),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(19)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_19_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(18),
      DI => a(19),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(19),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(19)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_18_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(17),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(18),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(18)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_18_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(17),
      DI => a(18),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(18),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(18)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_17_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(16),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(17),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(17)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_17_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(16),
      DI => a(17),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(17),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(17)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_16_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(15),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(16),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(16)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_16_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(15),
      DI => a(16),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(16),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(16)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_15_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(14),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(15),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(15)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_15_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(14),
      DI => a(15),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(15),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(15)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_14_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(13),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(14),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(14)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_14_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(13),
      DI => a(14),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(14),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(14)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_13_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(12),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(13),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(13)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_13_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(12),
      DI => a(13),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(13),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(13)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_12_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(11),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(12),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(12)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_12_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(11),
      DI => a(12),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(12),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(12)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_11_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(10),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(11),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(11)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_11_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(10),
      DI => a(11),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(11),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(11)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_10_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(9),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(10),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(10)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_10_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(9),
      DI => a(10),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(10),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(10)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_9_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(8),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(9),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(9)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_9_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(8),
      DI => a(9),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(9),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(9)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_8_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(7),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(8),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(8)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_8_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(7),
      DI => a(8),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(8),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(8)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_7_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(6),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(7),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(7)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_7_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(6),
      DI => a(7),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(7),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(7)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_6_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(5),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(6),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(6)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_6_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(5),
      DI => a(6),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(6),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(6)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_5_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(4),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(5),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(5)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_5_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(4),
      DI => a(5),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(5),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(5)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_4_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(3),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(4),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(4)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_4_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(3),
      DI => a(4),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(4),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(4)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_3_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(2),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(3),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(3)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_3_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(2),
      DI => a(3),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(3),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(3)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_2_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(1),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(2),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(2)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_2_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(1),
      DI => a(2),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(2),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(2)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_1_carryxor : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(0),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(1),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(1)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carrychaingen_1_carrymux : MUXCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(0),
      DI => a(1),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(1),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(1)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_i_gt_1_carryxortop : XORCY
    port map (
      CI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(62),
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(63),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(63)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_carryxor0 : XORCY
    port map (
      CI => N0,
      LI => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(0),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_sum_simple(0)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_i_simple_model_carrymux0 : MUXCY
    port map (
      CI => N0,
      DI => a(0),
      S => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(0),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_carry_simple(0)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_63_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(63),
      I1 => a(63),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(63)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_62_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(62),
      I1 => a(62),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(62)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_61_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(61),
      I1 => a(61),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(61)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_60_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(60),
      I1 => a(60),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(60)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_59_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(59),
      I1 => a(59),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(59)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_58_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(58),
      I1 => a(58),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(58)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_57_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(57),
      I1 => a(57),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(57)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_56_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(56),
      I1 => a(56),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(56)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_55_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(55),
      I1 => a(55),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(55)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_54_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(54),
      I1 => a(54),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(54)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_53_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(53),
      I1 => a(53),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(53)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_52_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(52),
      I1 => a(52),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(52)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_51_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(51),
      I1 => a(51),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(51)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_50_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(50),
      I1 => a(50),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(50)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_49_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(49),
      I1 => a(49),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(49)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_48_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(48),
      I1 => a(48),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(48)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_47_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(47),
      I1 => a(47),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(47)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_46_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(46),
      I1 => a(46),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(46)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_45_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(45),
      I1 => a(45),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(45)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_44_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(44),
      I1 => a(44),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(44)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_43_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(43),
      I1 => a(43),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(43)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_42_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(42),
      I1 => a(42),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(42)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_41_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(41),
      I1 => a(41),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(41)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_40_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(40),
      I1 => a(40),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(40)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_39_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(39),
      I1 => a(39),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(39)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_38_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(38),
      I1 => a(38),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(38)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_37_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(37),
      I1 => a(37),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(37)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_36_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(36),
      I1 => a(36),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(36)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_35_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(35),
      I1 => a(35),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(35)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_34_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(34),
      I1 => a(34),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(34)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_33_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(33),
      I1 => a(33),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(33)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_32_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(32),
      I1 => a(32),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(32)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_31_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(31),
      I1 => a(31),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(31)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_30_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(30),
      I1 => a(30),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(30)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_29_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(29),
      I1 => a(29),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(29)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_28_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(28),
      I1 => a(28),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(28)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_27_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(27),
      I1 => a(27),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(27)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_26_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(26),
      I1 => a(26),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(26)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_25_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(25),
      I1 => a(25),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(25)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_24_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(24),
      I1 => a(24),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(24)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_23_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(23),
      I1 => a(23),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(23)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_22_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(22),
      I1 => a(22),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(22)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_21_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(21),
      I1 => a(21),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(21)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_20_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(20),
      I1 => a(20),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(20)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_19_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(19),
      I1 => a(19),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(19)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_18_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(18),
      I1 => a(18),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(18)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_17_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(17),
      I1 => a(17),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(17)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_16_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(16),
      I1 => a(16),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(16)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_15_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(15),
      I1 => a(15),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(15)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_14_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(14),
      I1 => a(14),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(14)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_13_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(13),
      I1 => a(13),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(13)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_12_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(12),
      I1 => a(12),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(12)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_11_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(11),
      I1 => a(11),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(11)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_10_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(10),
      I1 => a(10),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(10)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_9_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(9),
      I1 => a(9),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(9)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_8_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(8),
      I1 => a(8),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(8)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_7_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(7),
      I1 => a(7),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(7)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_6_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(6),
      I1 => a(6),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(6)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_5_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(5),
      I1 => a(5),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(5)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_4_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(4),
      I1 => a(4),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(4)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_3_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(3),
      I1 => a(3),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(3)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_2_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(2),
      I1 => a(2),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(2)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_1_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(1),
      I1 => a(1),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(1)
    );
  U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_Mxor_halfsum_Result_0_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b(0),
      I1 => a(0),
      O => U0_xst_addsub_i_baseblox_i_baseblox_addsub_no_pipelining_the_addsub_i_lut6_i_lut6_addsub_halfsum(0)
    );

end STRUCTURE;

-- synthesis translate_on
