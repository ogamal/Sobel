--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: adder_16_16.vhd
-- /___/   /\     Timestamp: Sun Feb 17 19:51:13 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl /home/tyler07/CPRE_584/isestuff/tmp/_cg/adder_16_16.ngc /home/tyler07/CPRE_584/isestuff/tmp/_cg/adder_16_16.vhd 
-- Device	: 5vlx330ff1760-2
-- Input file	: /home/tyler07/CPRE_584/isestuff/tmp/_cg/adder_16_16.ngc
-- Output file	: /home/tyler07/CPRE_584/isestuff/tmp/_cg/adder_16_16.vhd
-- # of Entities	: 1
-- Design Name	: adder_16_16
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

entity adder_16_16 is
  port (
    clk : in STD_LOGIC := 'X'; 
    s : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    a : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end adder_16_16;

architecture STRUCTURE of adder_16_16 is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_OVERFLOW_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_UNDERFLOW_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_47_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_46_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_45_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_44_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_43_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_42_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_41_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_40_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_39_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_38_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_37_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_36_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_35_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_34_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_33_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_32_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_31_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_30_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_29_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_28_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_27_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_26_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_25_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_24_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_23_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_22_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_21_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_20_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_19_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_18_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_17_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_16_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_15_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_14_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_13_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_12_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_11_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_10_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_9_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_8_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_7_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_6_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_47_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_46_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_45_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_44_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_43_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_42_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_41_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_40_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_39_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_38_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_37_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_36_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_35_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_34_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_33_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_32_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_31_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_30_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_29_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_28_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_27_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_26_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_25_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_24_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_23_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_22_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_21_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_20_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_19_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_18_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_17_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_16_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_17_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_16_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_15_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_14_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_13_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_12_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_11_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_10_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_9_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_8_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_7_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_6_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_29_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_28_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_27_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_26_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_25_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_24_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_23_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_22_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_21_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_20_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_19_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_18_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_17_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_16_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_15_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_14_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_13_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_12_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_11_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_10_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_9_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_8_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_7_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_6_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_CARRYOUT_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_CARRYOUT_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_CARRYOUT_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_CARRYOUT_0_UNCONNECTED : STD_LOGIC;
 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive : DSP48E
    generic map(
      ACASCREG => 0,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATTERN_DETECT => FALSE,
      AUTORESET_PATTERN_DETECT_OPTINV => "MATCH",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      PATTERN => X"000000000000",
      MREG => 0,
      MULTCARRYINREG => 0,
      OPMODEREG => 0,
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      SEL_ROUNDING_MASK => "SEL_MASK",
      SIM_MODE => "SAFE",
      USE_MULT => "NONE",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48",
      MASK => X"3FFFFFFFFFFF"
    )
    port map (
      CARRYIN => N0,
      CEA1 => N0,
      CEA2 => N0,
      CEB1 => N0,
      CEB2 => N0,
      CEC => N0,
      CECTRL => N0,
      CEP => N1,
      CEM => N0,
      CECARRYIN => N0,
      CEMULTCARRYIN => N0,
      CLK => clk,
      RSTA => N0,
      RSTB => N0,
      RSTC => N0,
      RSTCTRL => N0,
      RSTP => N0,
      RSTM => N0,
      RSTALLCARRYIN => N0,
      CEALUMODE => N0,
      RSTALUMODE => N0,
      PATTERNBDETECT => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PATTERNBDETECT_UNCONNECTED
,
      PATTERNDETECT => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PATTERNDETECT_UNCONNECTED
,
      OVERFLOW => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_OVERFLOW_UNCONNECTED
,
      UNDERFLOW => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_UNDERFLOW_UNCONNECTED
,
      CARRYCASCIN => N0,
      CARRYCASCOUT => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_CARRYCASCOUT_UNCONNECTED
,
      MULTSIGNIN => N1,
      MULTSIGNOUT => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_MULTSIGNOUT_UNCONNECTED
,
      A(29) => b(15),
      A(28) => b(15),
      A(27) => b(15),
      A(26) => b(15),
      A(25) => b(15),
      A(24) => b(15),
      A(23) => b(15),
      A(22) => b(15),
      A(21) => b(15),
      A(20) => b(15),
      A(19) => b(15),
      A(18) => b(15),
      A(17) => b(15),
      A(16) => b(15),
      A(15) => b(15),
      A(14) => b(15),
      A(13) => b(15),
      A(12) => b(15),
      A(11) => b(15),
      A(10) => b(15),
      A(9) => b(15),
      A(8) => b(15),
      A(7) => b(15),
      A(6) => b(15),
      A(5) => b(15),
      A(4) => b(15),
      A(3) => b(15),
      A(2) => b(15),
      A(1) => b(15),
      A(0) => b(15),
      PCIN(47) => N0,
      PCIN(46) => N0,
      PCIN(45) => N0,
      PCIN(44) => N0,
      PCIN(43) => N0,
      PCIN(42) => N0,
      PCIN(41) => N0,
      PCIN(40) => N0,
      PCIN(39) => N0,
      PCIN(38) => N0,
      PCIN(37) => N0,
      PCIN(36) => N0,
      PCIN(35) => N0,
      PCIN(34) => N0,
      PCIN(33) => N0,
      PCIN(32) => N0,
      PCIN(31) => N0,
      PCIN(30) => N0,
      PCIN(29) => N0,
      PCIN(28) => N0,
      PCIN(27) => N0,
      PCIN(26) => N0,
      PCIN(25) => N0,
      PCIN(24) => N0,
      PCIN(23) => N0,
      PCIN(22) => N0,
      PCIN(21) => N0,
      PCIN(20) => N0,
      PCIN(19) => N0,
      PCIN(18) => N0,
      PCIN(17) => N0,
      PCIN(16) => N0,
      PCIN(15) => N0,
      PCIN(14) => N0,
      PCIN(13) => N0,
      PCIN(12) => N0,
      PCIN(11) => N0,
      PCIN(10) => N0,
      PCIN(9) => N0,
      PCIN(8) => N0,
      PCIN(7) => N0,
      PCIN(6) => N0,
      PCIN(5) => N0,
      PCIN(4) => N0,
      PCIN(3) => N0,
      PCIN(2) => N0,
      PCIN(1) => N0,
      PCIN(0) => N0,
      B(17) => b(15),
      B(16) => b(15),
      B(15) => b(15),
      B(14) => b(14),
      B(13) => b(13),
      B(12) => b(12),
      B(11) => b(11),
      B(10) => b(10),
      B(9) => b(9),
      B(8) => b(8),
      B(7) => b(7),
      B(6) => b(6),
      B(5) => b(5),
      B(4) => b(4),
      B(3) => b(3),
      B(2) => b(2),
      B(1) => b(1),
      B(0) => b(0),
      C(47) => a(15),
      C(46) => a(15),
      C(45) => a(15),
      C(44) => a(15),
      C(43) => a(15),
      C(42) => a(15),
      C(41) => a(15),
      C(40) => a(15),
      C(39) => a(15),
      C(38) => a(15),
      C(37) => a(15),
      C(36) => a(15),
      C(35) => a(15),
      C(34) => a(15),
      C(33) => a(15),
      C(32) => a(15),
      C(31) => a(15),
      C(30) => a(15),
      C(29) => a(15),
      C(28) => a(15),
      C(27) => a(15),
      C(26) => a(15),
      C(25) => a(15),
      C(24) => a(15),
      C(23) => a(15),
      C(22) => a(15),
      C(21) => a(15),
      C(20) => a(15),
      C(19) => a(15),
      C(18) => a(15),
      C(17) => a(15),
      C(16) => a(15),
      C(15) => a(15),
      C(14) => a(14),
      C(13) => a(13),
      C(12) => a(12),
      C(11) => a(11),
      C(10) => a(10),
      C(9) => a(9),
      C(8) => a(8),
      C(7) => a(7),
      C(6) => a(6),
      C(5) => a(5),
      C(4) => a(4),
      C(3) => a(3),
      C(2) => a(2),
      C(1) => a(1),
      C(0) => a(0),
      CARRYINSEL(2) => N0,
      CARRYINSEL(1) => N0,
      CARRYINSEL(0) => N0,
      OPMODE(6) => N0,
      OPMODE(5) => N1,
      OPMODE(4) => N1,
      OPMODE(3) => N0,
      OPMODE(2) => N0,
      OPMODE(1) => N1,
      OPMODE(0) => N1,
      BCIN(17) => N0,
      BCIN(16) => N0,
      BCIN(15) => N0,
      BCIN(14) => N0,
      BCIN(13) => N0,
      BCIN(12) => N0,
      BCIN(11) => N0,
      BCIN(10) => N0,
      BCIN(9) => N0,
      BCIN(8) => N0,
      BCIN(7) => N0,
      BCIN(6) => N0,
      BCIN(5) => N0,
      BCIN(4) => N0,
      BCIN(3) => N0,
      BCIN(2) => N0,
      BCIN(1) => N0,
      BCIN(0) => N0,
      ALUMODE(3) => N0,
      ALUMODE(2) => N0,
      ALUMODE(1) => N0,
      ALUMODE(0) => N0,
      PCOUT(47) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_47_UNCONNECTED
,
      PCOUT(46) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_46_UNCONNECTED
,
      PCOUT(45) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_45_UNCONNECTED
,
      PCOUT(44) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_44_UNCONNECTED
,
      PCOUT(43) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_43_UNCONNECTED
,
      PCOUT(42) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_42_UNCONNECTED
,
      PCOUT(41) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_41_UNCONNECTED
,
      PCOUT(40) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_40_UNCONNECTED
,
      PCOUT(39) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_39_UNCONNECTED
,
      PCOUT(38) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_38_UNCONNECTED
,
      PCOUT(37) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_37_UNCONNECTED
,
      PCOUT(36) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_36_UNCONNECTED
,
      PCOUT(35) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_35_UNCONNECTED
,
      PCOUT(34) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_34_UNCONNECTED
,
      PCOUT(33) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_33_UNCONNECTED
,
      PCOUT(32) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_32_UNCONNECTED
,
      PCOUT(31) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_31_UNCONNECTED
,
      PCOUT(30) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_30_UNCONNECTED
,
      PCOUT(29) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_29_UNCONNECTED
,
      PCOUT(28) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_28_UNCONNECTED
,
      PCOUT(27) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_27_UNCONNECTED
,
      PCOUT(26) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_26_UNCONNECTED
,
      PCOUT(25) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_25_UNCONNECTED
,
      PCOUT(24) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_24_UNCONNECTED
,
      PCOUT(23) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_23_UNCONNECTED
,
      PCOUT(22) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_22_UNCONNECTED
,
      PCOUT(21) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_21_UNCONNECTED
,
      PCOUT(20) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_20_UNCONNECTED
,
      PCOUT(19) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_19_UNCONNECTED
,
      PCOUT(18) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_18_UNCONNECTED
,
      PCOUT(17) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_17_UNCONNECTED
,
      PCOUT(16) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_16_UNCONNECTED
,
      PCOUT(15) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_15_UNCONNECTED
,
      PCOUT(14) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_14_UNCONNECTED
,
      PCOUT(13) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_13_UNCONNECTED
,
      PCOUT(12) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_12_UNCONNECTED
,
      PCOUT(11) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_11_UNCONNECTED
,
      PCOUT(10) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_10_UNCONNECTED
,
      PCOUT(9) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_9_UNCONNECTED
,
      PCOUT(8) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_8_UNCONNECTED
,
      PCOUT(7) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_7_UNCONNECTED
,
      PCOUT(6) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_6_UNCONNECTED
,
      PCOUT(5) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_5_UNCONNECTED
,
      PCOUT(4) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_4_UNCONNECTED
,
      PCOUT(3) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_3_UNCONNECTED
,
      PCOUT(2) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_2_UNCONNECTED
,
      PCOUT(1) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_1_UNCONNECTED
,
      PCOUT(0) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_PCOUT_0_UNCONNECTED
,
      P(47) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_47_UNCONNECTED
,
      P(46) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_46_UNCONNECTED
,
      P(45) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_45_UNCONNECTED
,
      P(44) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_44_UNCONNECTED
,
      P(43) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_43_UNCONNECTED
,
      P(42) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_42_UNCONNECTED
,
      P(41) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_41_UNCONNECTED
,
      P(40) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_40_UNCONNECTED
,
      P(39) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_39_UNCONNECTED
,
      P(38) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_38_UNCONNECTED
,
      P(37) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_37_UNCONNECTED
,
      P(36) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_36_UNCONNECTED
,
      P(35) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_35_UNCONNECTED
,
      P(34) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_34_UNCONNECTED
,
      P(33) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_33_UNCONNECTED
,
      P(32) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_32_UNCONNECTED
,
      P(31) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_31_UNCONNECTED
,
      P(30) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_30_UNCONNECTED
,
      P(29) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_29_UNCONNECTED
,
      P(28) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_28_UNCONNECTED
,
      P(27) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_27_UNCONNECTED
,
      P(26) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_26_UNCONNECTED
,
      P(25) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_25_UNCONNECTED
,
      P(24) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_24_UNCONNECTED
,
      P(23) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_23_UNCONNECTED
,
      P(22) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_22_UNCONNECTED
,
      P(21) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_21_UNCONNECTED
,
      P(20) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_20_UNCONNECTED
,
      P(19) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_19_UNCONNECTED
,
      P(18) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_18_UNCONNECTED
,
      P(17) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_17_UNCONNECTED
,
      P(16) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_P_16_UNCONNECTED
,
      P(15) => s(15),
      P(14) => s(14),
      P(13) => s(13),
      P(12) => s(12),
      P(11) => s(11),
      P(10) => s(10),
      P(9) => s(9),
      P(8) => s(8),
      P(7) => s(7),
      P(6) => s(6),
      P(5) => s(5),
      P(4) => s(4),
      P(3) => s(3),
      P(2) => s(2),
      P(1) => s(1),
      P(0) => s(0),
      BCOUT(17) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_17_UNCONNECTED
,
      BCOUT(16) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_16_UNCONNECTED
,
      BCOUT(15) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_15_UNCONNECTED
,
      BCOUT(14) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_14_UNCONNECTED
,
      BCOUT(13) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_13_UNCONNECTED
,
      BCOUT(12) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_12_UNCONNECTED
,
      BCOUT(11) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_11_UNCONNECTED
,
      BCOUT(10) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_10_UNCONNECTED
,
      BCOUT(9) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_9_UNCONNECTED
,
      BCOUT(8) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_8_UNCONNECTED
,
      BCOUT(7) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_7_UNCONNECTED
,
      BCOUT(6) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_6_UNCONNECTED
,
      BCOUT(5) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_5_UNCONNECTED
,
      BCOUT(4) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_4_UNCONNECTED
,
      BCOUT(3) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_3_UNCONNECTED
,
      BCOUT(2) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_2_UNCONNECTED
,
      BCOUT(1) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_1_UNCONNECTED
,
      BCOUT(0) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_BCOUT_0_UNCONNECTED
,
      ACIN(29) => N0,
      ACIN(28) => N0,
      ACIN(27) => N0,
      ACIN(26) => N0,
      ACIN(25) => N0,
      ACIN(24) => N0,
      ACIN(23) => N0,
      ACIN(22) => N0,
      ACIN(21) => N0,
      ACIN(20) => N0,
      ACIN(19) => N0,
      ACIN(18) => N0,
      ACIN(17) => N0,
      ACIN(16) => N0,
      ACIN(15) => N0,
      ACIN(14) => N0,
      ACIN(13) => N0,
      ACIN(12) => N0,
      ACIN(11) => N0,
      ACIN(10) => N0,
      ACIN(9) => N0,
      ACIN(8) => N0,
      ACIN(7) => N0,
      ACIN(6) => N0,
      ACIN(5) => N0,
      ACIN(4) => N0,
      ACIN(3) => N0,
      ACIN(2) => N0,
      ACIN(1) => N0,
      ACIN(0) => N0,
      ACOUT(29) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_29_UNCONNECTED
,
      ACOUT(28) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_28_UNCONNECTED
,
      ACOUT(27) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_27_UNCONNECTED
,
      ACOUT(26) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_26_UNCONNECTED
,
      ACOUT(25) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_25_UNCONNECTED
,
      ACOUT(24) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_24_UNCONNECTED
,
      ACOUT(23) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_23_UNCONNECTED
,
      ACOUT(22) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_22_UNCONNECTED
,
      ACOUT(21) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_21_UNCONNECTED
,
      ACOUT(20) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_20_UNCONNECTED
,
      ACOUT(19) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_19_UNCONNECTED
,
      ACOUT(18) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_18_UNCONNECTED
,
      ACOUT(17) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_17_UNCONNECTED
,
      ACOUT(16) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_16_UNCONNECTED
,
      ACOUT(15) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_15_UNCONNECTED
,
      ACOUT(14) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_14_UNCONNECTED
,
      ACOUT(13) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_13_UNCONNECTED
,
      ACOUT(12) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_12_UNCONNECTED
,
      ACOUT(11) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_11_UNCONNECTED
,
      ACOUT(10) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_10_UNCONNECTED
,
      ACOUT(9) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_9_UNCONNECTED
,
      ACOUT(8) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_8_UNCONNECTED
,
      ACOUT(7) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_7_UNCONNECTED
,
      ACOUT(6) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_6_UNCONNECTED
,
      ACOUT(5) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_5_UNCONNECTED
,
      ACOUT(4) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_4_UNCONNECTED
,
      ACOUT(3) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_3_UNCONNECTED
,
      ACOUT(2) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_2_UNCONNECTED
,
      ACOUT(1) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_1_UNCONNECTED
,
      ACOUT(0) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_ACOUT_0_UNCONNECTED
,
      CARRYOUT(3) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_CARRYOUT_3_UNCONNECTED
,
      CARRYOUT(2) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_CARRYOUT_2_UNCONNECTED
,
      CARRYOUT(1) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_CARRYOUT_1_UNCONNECTED
,
      CARRYOUT(0) => 
NLW_U0_xst_addsub_xbip_addsub_i_a_b_nogrowth_i_xbip_addsub_addsub_usecase_i_addsub_i_synth_option_i_synth_model_opt_vx5_i_uniwrap_i_primitive_CARRYOUT_0_UNCONNECTED

    );

end STRUCTURE;

-- synthesis translate_on
