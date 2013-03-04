--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: pixel_multiplier.vhd
-- /___/   /\     Timestamp: Sun Feb 17 23:24:58 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl /home/tyler07/CPRE_584/isestuff/tmp/_cg/pixel_multiplier.ngc /home/tyler07/CPRE_584/isestuff/tmp/_cg/pixel_multiplier.vhd 
-- Device	: 5vlx330ff1760-2
-- Input file	: /home/tyler07/CPRE_584/isestuff/tmp/_cg/pixel_multiplier.ngc
-- Output file	: /home/tyler07/CPRE_584/isestuff/tmp/_cg/pixel_multiplier.vhd
-- # of Entities	: 1
-- Design Name	: pixel_multiplier
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

entity pixel_multiplier is
  port (
    clk : in STD_LOGIC := 'X'; 
    p : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    a : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end pixel_multiplier;

architecture STRUCTURE of pixel_multiplier is
  signal sig00000001 : STD_LOGIC; 
  signal sig00000002 : STD_LOGIC; 
  signal NLW_blk00000003_PATTERNBDETECT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PATTERNDETECT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_OVERFLOW_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_UNDERFLOW_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_CARRYCASCIN_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_CARRYCASCOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_MULTSIGNIN_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_MULTSIGNOUT_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_A_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_A_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_A_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_A_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_A_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_C_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_PCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_47_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_46_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_45_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_44_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_43_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_42_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_41_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_40_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_39_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_38_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_37_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_36_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_ACOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_CARRYOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_CARRYOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_CARRYOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_blk00000003_CARRYOUT_0_UNCONNECTED : STD_LOGIC; 
begin
  blk00000001 : GND
    port map (
      G => sig00000001
    );
  blk00000002 : VCC
    port map (
      P => sig00000002
    );
  blk00000003 : DSP48E
    generic map(
      B_INPUT => "DIRECT",
      MASK => X"3FFFFFFFFFFF",
      AREG => 0,
      ACASCREG => 0,
      BREG => 0,
      MREG => 0,
      PREG => 1,
      CARRYINREG => 0,
      OPMODEREG => 0,
      ALUMODEREG => 0,
      CARRYINSELREG => 0,
      MULTCARRYINREG => 0,
      USE_MULT => "MULT",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      CREG => 0,
      USE_SIMD => "ONE48",
      USE_PATTERN_DETECT => "NO_PATDET",
      PATTERN => X"000000000000",
      SEL_PATTERN => "PATTERN",
      SEL_MASK => "MASK",
      SEL_ROUNDING_MASK => "SEL_MASK",
      AUTORESET_PATTERN_DETECT => FALSE,
      AUTORESET_PATTERN_DETECT_OPTINV => "MATCH"
    )
    port map (
      CARRYIN => sig00000001,
      CEA1 => sig00000001,
      CEA2 => sig00000001,
      CEB1 => sig00000001,
      CEB2 => sig00000001,
      CEC => sig00000001,
      CECTRL => sig00000001,
      CEP => sig00000002,
      CEM => sig00000001,
      CECARRYIN => sig00000001,
      CEMULTCARRYIN => sig00000001,
      CLK => clk,
      RSTA => sig00000001,
      RSTB => sig00000001,
      RSTC => sig00000001,
      RSTCTRL => sig00000001,
      RSTP => sig00000001,
      RSTM => sig00000001,
      RSTALLCARRYIN => sig00000001,
      CEALUMODE => sig00000001,
      RSTALUMODE => sig00000001,
      PATTERNBDETECT => NLW_blk00000003_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_blk00000003_PATTERNDETECT_UNCONNECTED,
      OVERFLOW => NLW_blk00000003_OVERFLOW_UNCONNECTED,
      UNDERFLOW => NLW_blk00000003_UNDERFLOW_UNCONNECTED,
      CARRYCASCIN => NLW_blk00000003_CARRYCASCIN_UNCONNECTED,
      CARRYCASCOUT => NLW_blk00000003_CARRYCASCOUT_UNCONNECTED,
      MULTSIGNIN => NLW_blk00000003_MULTSIGNIN_UNCONNECTED,
      MULTSIGNOUT => NLW_blk00000003_MULTSIGNOUT_UNCONNECTED,
      A(29) => NLW_blk00000003_A_29_UNCONNECTED,
      A(28) => NLW_blk00000003_A_28_UNCONNECTED,
      A(27) => NLW_blk00000003_A_27_UNCONNECTED,
      A(26) => NLW_blk00000003_A_26_UNCONNECTED,
      A(25) => NLW_blk00000003_A_25_UNCONNECTED,
      A(24) => sig00000001,
      A(23) => sig00000001,
      A(22) => sig00000001,
      A(21) => sig00000001,
      A(20) => sig00000001,
      A(19) => sig00000001,
      A(18) => sig00000001,
      A(17) => sig00000001,
      A(16) => sig00000001,
      A(15) => sig00000001,
      A(14) => sig00000001,
      A(13) => sig00000001,
      A(12) => sig00000001,
      A(11) => sig00000001,
      A(10) => sig00000001,
      A(9) => sig00000001,
      A(8) => sig00000001,
      A(7) => a(7),
      A(6) => a(6),
      A(5) => a(5),
      A(4) => a(4),
      A(3) => a(3),
      A(2) => a(2),
      A(1) => a(1),
      A(0) => a(0),
      PCIN(47) => NLW_blk00000003_PCIN_47_UNCONNECTED,
      PCIN(46) => NLW_blk00000003_PCIN_46_UNCONNECTED,
      PCIN(45) => NLW_blk00000003_PCIN_45_UNCONNECTED,
      PCIN(44) => NLW_blk00000003_PCIN_44_UNCONNECTED,
      PCIN(43) => NLW_blk00000003_PCIN_43_UNCONNECTED,
      PCIN(42) => NLW_blk00000003_PCIN_42_UNCONNECTED,
      PCIN(41) => NLW_blk00000003_PCIN_41_UNCONNECTED,
      PCIN(40) => NLW_blk00000003_PCIN_40_UNCONNECTED,
      PCIN(39) => NLW_blk00000003_PCIN_39_UNCONNECTED,
      PCIN(38) => NLW_blk00000003_PCIN_38_UNCONNECTED,
      PCIN(37) => NLW_blk00000003_PCIN_37_UNCONNECTED,
      PCIN(36) => NLW_blk00000003_PCIN_36_UNCONNECTED,
      PCIN(35) => NLW_blk00000003_PCIN_35_UNCONNECTED,
      PCIN(34) => NLW_blk00000003_PCIN_34_UNCONNECTED,
      PCIN(33) => NLW_blk00000003_PCIN_33_UNCONNECTED,
      PCIN(32) => NLW_blk00000003_PCIN_32_UNCONNECTED,
      PCIN(31) => NLW_blk00000003_PCIN_31_UNCONNECTED,
      PCIN(30) => NLW_blk00000003_PCIN_30_UNCONNECTED,
      PCIN(29) => NLW_blk00000003_PCIN_29_UNCONNECTED,
      PCIN(28) => NLW_blk00000003_PCIN_28_UNCONNECTED,
      PCIN(27) => NLW_blk00000003_PCIN_27_UNCONNECTED,
      PCIN(26) => NLW_blk00000003_PCIN_26_UNCONNECTED,
      PCIN(25) => NLW_blk00000003_PCIN_25_UNCONNECTED,
      PCIN(24) => NLW_blk00000003_PCIN_24_UNCONNECTED,
      PCIN(23) => NLW_blk00000003_PCIN_23_UNCONNECTED,
      PCIN(22) => NLW_blk00000003_PCIN_22_UNCONNECTED,
      PCIN(21) => NLW_blk00000003_PCIN_21_UNCONNECTED,
      PCIN(20) => NLW_blk00000003_PCIN_20_UNCONNECTED,
      PCIN(19) => NLW_blk00000003_PCIN_19_UNCONNECTED,
      PCIN(18) => NLW_blk00000003_PCIN_18_UNCONNECTED,
      PCIN(17) => NLW_blk00000003_PCIN_17_UNCONNECTED,
      PCIN(16) => NLW_blk00000003_PCIN_16_UNCONNECTED,
      PCIN(15) => NLW_blk00000003_PCIN_15_UNCONNECTED,
      PCIN(14) => NLW_blk00000003_PCIN_14_UNCONNECTED,
      PCIN(13) => NLW_blk00000003_PCIN_13_UNCONNECTED,
      PCIN(12) => NLW_blk00000003_PCIN_12_UNCONNECTED,
      PCIN(11) => NLW_blk00000003_PCIN_11_UNCONNECTED,
      PCIN(10) => NLW_blk00000003_PCIN_10_UNCONNECTED,
      PCIN(9) => NLW_blk00000003_PCIN_9_UNCONNECTED,
      PCIN(8) => NLW_blk00000003_PCIN_8_UNCONNECTED,
      PCIN(7) => NLW_blk00000003_PCIN_7_UNCONNECTED,
      PCIN(6) => NLW_blk00000003_PCIN_6_UNCONNECTED,
      PCIN(5) => NLW_blk00000003_PCIN_5_UNCONNECTED,
      PCIN(4) => NLW_blk00000003_PCIN_4_UNCONNECTED,
      PCIN(3) => NLW_blk00000003_PCIN_3_UNCONNECTED,
      PCIN(2) => NLW_blk00000003_PCIN_2_UNCONNECTED,
      PCIN(1) => NLW_blk00000003_PCIN_1_UNCONNECTED,
      PCIN(0) => NLW_blk00000003_PCIN_0_UNCONNECTED,
      B(17) => b(7),
      B(16) => b(7),
      B(15) => b(7),
      B(14) => b(7),
      B(13) => b(7),
      B(12) => b(7),
      B(11) => b(7),
      B(10) => b(7),
      B(9) => b(7),
      B(8) => b(7),
      B(7) => b(7),
      B(6) => b(6),
      B(5) => b(5),
      B(4) => b(4),
      B(3) => b(3),
      B(2) => b(2),
      B(1) => b(1),
      B(0) => b(0),
      C(47) => NLW_blk00000003_C_47_UNCONNECTED,
      C(46) => NLW_blk00000003_C_46_UNCONNECTED,
      C(45) => NLW_blk00000003_C_45_UNCONNECTED,
      C(44) => NLW_blk00000003_C_44_UNCONNECTED,
      C(43) => NLW_blk00000003_C_43_UNCONNECTED,
      C(42) => NLW_blk00000003_C_42_UNCONNECTED,
      C(41) => NLW_blk00000003_C_41_UNCONNECTED,
      C(40) => NLW_blk00000003_C_40_UNCONNECTED,
      C(39) => NLW_blk00000003_C_39_UNCONNECTED,
      C(38) => NLW_blk00000003_C_38_UNCONNECTED,
      C(37) => NLW_blk00000003_C_37_UNCONNECTED,
      C(36) => NLW_blk00000003_C_36_UNCONNECTED,
      C(35) => NLW_blk00000003_C_35_UNCONNECTED,
      C(34) => NLW_blk00000003_C_34_UNCONNECTED,
      C(33) => NLW_blk00000003_C_33_UNCONNECTED,
      C(32) => NLW_blk00000003_C_32_UNCONNECTED,
      C(31) => NLW_blk00000003_C_31_UNCONNECTED,
      C(30) => NLW_blk00000003_C_30_UNCONNECTED,
      C(29) => NLW_blk00000003_C_29_UNCONNECTED,
      C(28) => NLW_blk00000003_C_28_UNCONNECTED,
      C(27) => NLW_blk00000003_C_27_UNCONNECTED,
      C(26) => NLW_blk00000003_C_26_UNCONNECTED,
      C(25) => NLW_blk00000003_C_25_UNCONNECTED,
      C(24) => NLW_blk00000003_C_24_UNCONNECTED,
      C(23) => NLW_blk00000003_C_23_UNCONNECTED,
      C(22) => NLW_blk00000003_C_22_UNCONNECTED,
      C(21) => NLW_blk00000003_C_21_UNCONNECTED,
      C(20) => NLW_blk00000003_C_20_UNCONNECTED,
      C(19) => NLW_blk00000003_C_19_UNCONNECTED,
      C(18) => NLW_blk00000003_C_18_UNCONNECTED,
      C(17) => NLW_blk00000003_C_17_UNCONNECTED,
      C(16) => NLW_blk00000003_C_16_UNCONNECTED,
      C(15) => NLW_blk00000003_C_15_UNCONNECTED,
      C(14) => NLW_blk00000003_C_14_UNCONNECTED,
      C(13) => NLW_blk00000003_C_13_UNCONNECTED,
      C(12) => NLW_blk00000003_C_12_UNCONNECTED,
      C(11) => NLW_blk00000003_C_11_UNCONNECTED,
      C(10) => NLW_blk00000003_C_10_UNCONNECTED,
      C(9) => NLW_blk00000003_C_9_UNCONNECTED,
      C(8) => NLW_blk00000003_C_8_UNCONNECTED,
      C(7) => NLW_blk00000003_C_7_UNCONNECTED,
      C(6) => NLW_blk00000003_C_6_UNCONNECTED,
      C(5) => NLW_blk00000003_C_5_UNCONNECTED,
      C(4) => NLW_blk00000003_C_4_UNCONNECTED,
      C(3) => NLW_blk00000003_C_3_UNCONNECTED,
      C(2) => NLW_blk00000003_C_2_UNCONNECTED,
      C(1) => NLW_blk00000003_C_1_UNCONNECTED,
      C(0) => NLW_blk00000003_C_0_UNCONNECTED,
      CARRYINSEL(2) => sig00000001,
      CARRYINSEL(1) => sig00000001,
      CARRYINSEL(0) => sig00000001,
      OPMODE(6) => sig00000001,
      OPMODE(5) => sig00000001,
      OPMODE(4) => sig00000001,
      OPMODE(3) => sig00000001,
      OPMODE(2) => sig00000002,
      OPMODE(1) => sig00000001,
      OPMODE(0) => sig00000002,
      BCIN(17) => NLW_blk00000003_BCIN_17_UNCONNECTED,
      BCIN(16) => NLW_blk00000003_BCIN_16_UNCONNECTED,
      BCIN(15) => NLW_blk00000003_BCIN_15_UNCONNECTED,
      BCIN(14) => NLW_blk00000003_BCIN_14_UNCONNECTED,
      BCIN(13) => NLW_blk00000003_BCIN_13_UNCONNECTED,
      BCIN(12) => NLW_blk00000003_BCIN_12_UNCONNECTED,
      BCIN(11) => NLW_blk00000003_BCIN_11_UNCONNECTED,
      BCIN(10) => NLW_blk00000003_BCIN_10_UNCONNECTED,
      BCIN(9) => NLW_blk00000003_BCIN_9_UNCONNECTED,
      BCIN(8) => NLW_blk00000003_BCIN_8_UNCONNECTED,
      BCIN(7) => NLW_blk00000003_BCIN_7_UNCONNECTED,
      BCIN(6) => NLW_blk00000003_BCIN_6_UNCONNECTED,
      BCIN(5) => NLW_blk00000003_BCIN_5_UNCONNECTED,
      BCIN(4) => NLW_blk00000003_BCIN_4_UNCONNECTED,
      BCIN(3) => NLW_blk00000003_BCIN_3_UNCONNECTED,
      BCIN(2) => NLW_blk00000003_BCIN_2_UNCONNECTED,
      BCIN(1) => NLW_blk00000003_BCIN_1_UNCONNECTED,
      BCIN(0) => NLW_blk00000003_BCIN_0_UNCONNECTED,
      ALUMODE(3) => sig00000001,
      ALUMODE(2) => sig00000001,
      ALUMODE(1) => sig00000001,
      ALUMODE(0) => sig00000001,
      PCOUT(47) => NLW_blk00000003_PCOUT_47_UNCONNECTED,
      PCOUT(46) => NLW_blk00000003_PCOUT_46_UNCONNECTED,
      PCOUT(45) => NLW_blk00000003_PCOUT_45_UNCONNECTED,
      PCOUT(44) => NLW_blk00000003_PCOUT_44_UNCONNECTED,
      PCOUT(43) => NLW_blk00000003_PCOUT_43_UNCONNECTED,
      PCOUT(42) => NLW_blk00000003_PCOUT_42_UNCONNECTED,
      PCOUT(41) => NLW_blk00000003_PCOUT_41_UNCONNECTED,
      PCOUT(40) => NLW_blk00000003_PCOUT_40_UNCONNECTED,
      PCOUT(39) => NLW_blk00000003_PCOUT_39_UNCONNECTED,
      PCOUT(38) => NLW_blk00000003_PCOUT_38_UNCONNECTED,
      PCOUT(37) => NLW_blk00000003_PCOUT_37_UNCONNECTED,
      PCOUT(36) => NLW_blk00000003_PCOUT_36_UNCONNECTED,
      PCOUT(35) => NLW_blk00000003_PCOUT_35_UNCONNECTED,
      PCOUT(34) => NLW_blk00000003_PCOUT_34_UNCONNECTED,
      PCOUT(33) => NLW_blk00000003_PCOUT_33_UNCONNECTED,
      PCOUT(32) => NLW_blk00000003_PCOUT_32_UNCONNECTED,
      PCOUT(31) => NLW_blk00000003_PCOUT_31_UNCONNECTED,
      PCOUT(30) => NLW_blk00000003_PCOUT_30_UNCONNECTED,
      PCOUT(29) => NLW_blk00000003_PCOUT_29_UNCONNECTED,
      PCOUT(28) => NLW_blk00000003_PCOUT_28_UNCONNECTED,
      PCOUT(27) => NLW_blk00000003_PCOUT_27_UNCONNECTED,
      PCOUT(26) => NLW_blk00000003_PCOUT_26_UNCONNECTED,
      PCOUT(25) => NLW_blk00000003_PCOUT_25_UNCONNECTED,
      PCOUT(24) => NLW_blk00000003_PCOUT_24_UNCONNECTED,
      PCOUT(23) => NLW_blk00000003_PCOUT_23_UNCONNECTED,
      PCOUT(22) => NLW_blk00000003_PCOUT_22_UNCONNECTED,
      PCOUT(21) => NLW_blk00000003_PCOUT_21_UNCONNECTED,
      PCOUT(20) => NLW_blk00000003_PCOUT_20_UNCONNECTED,
      PCOUT(19) => NLW_blk00000003_PCOUT_19_UNCONNECTED,
      PCOUT(18) => NLW_blk00000003_PCOUT_18_UNCONNECTED,
      PCOUT(17) => NLW_blk00000003_PCOUT_17_UNCONNECTED,
      PCOUT(16) => NLW_blk00000003_PCOUT_16_UNCONNECTED,
      PCOUT(15) => NLW_blk00000003_PCOUT_15_UNCONNECTED,
      PCOUT(14) => NLW_blk00000003_PCOUT_14_UNCONNECTED,
      PCOUT(13) => NLW_blk00000003_PCOUT_13_UNCONNECTED,
      PCOUT(12) => NLW_blk00000003_PCOUT_12_UNCONNECTED,
      PCOUT(11) => NLW_blk00000003_PCOUT_11_UNCONNECTED,
      PCOUT(10) => NLW_blk00000003_PCOUT_10_UNCONNECTED,
      PCOUT(9) => NLW_blk00000003_PCOUT_9_UNCONNECTED,
      PCOUT(8) => NLW_blk00000003_PCOUT_8_UNCONNECTED,
      PCOUT(7) => NLW_blk00000003_PCOUT_7_UNCONNECTED,
      PCOUT(6) => NLW_blk00000003_PCOUT_6_UNCONNECTED,
      PCOUT(5) => NLW_blk00000003_PCOUT_5_UNCONNECTED,
      PCOUT(4) => NLW_blk00000003_PCOUT_4_UNCONNECTED,
      PCOUT(3) => NLW_blk00000003_PCOUT_3_UNCONNECTED,
      PCOUT(2) => NLW_blk00000003_PCOUT_2_UNCONNECTED,
      PCOUT(1) => NLW_blk00000003_PCOUT_1_UNCONNECTED,
      PCOUT(0) => NLW_blk00000003_PCOUT_0_UNCONNECTED,
      P(47) => NLW_blk00000003_P_47_UNCONNECTED,
      P(46) => NLW_blk00000003_P_46_UNCONNECTED,
      P(45) => NLW_blk00000003_P_45_UNCONNECTED,
      P(44) => NLW_blk00000003_P_44_UNCONNECTED,
      P(43) => NLW_blk00000003_P_43_UNCONNECTED,
      P(42) => NLW_blk00000003_P_42_UNCONNECTED,
      P(41) => NLW_blk00000003_P_41_UNCONNECTED,
      P(40) => NLW_blk00000003_P_40_UNCONNECTED,
      P(39) => NLW_blk00000003_P_39_UNCONNECTED,
      P(38) => NLW_blk00000003_P_38_UNCONNECTED,
      P(37) => NLW_blk00000003_P_37_UNCONNECTED,
      P(36) => NLW_blk00000003_P_36_UNCONNECTED,
      P(35) => NLW_blk00000003_P_35_UNCONNECTED,
      P(34) => NLW_blk00000003_P_34_UNCONNECTED,
      P(33) => NLW_blk00000003_P_33_UNCONNECTED,
      P(32) => NLW_blk00000003_P_32_UNCONNECTED,
      P(31) => NLW_blk00000003_P_31_UNCONNECTED,
      P(30) => NLW_blk00000003_P_30_UNCONNECTED,
      P(29) => NLW_blk00000003_P_29_UNCONNECTED,
      P(28) => NLW_blk00000003_P_28_UNCONNECTED,
      P(27) => NLW_blk00000003_P_27_UNCONNECTED,
      P(26) => NLW_blk00000003_P_26_UNCONNECTED,
      P(25) => NLW_blk00000003_P_25_UNCONNECTED,
      P(24) => NLW_blk00000003_P_24_UNCONNECTED,
      P(23) => NLW_blk00000003_P_23_UNCONNECTED,
      P(22) => NLW_blk00000003_P_22_UNCONNECTED,
      P(21) => NLW_blk00000003_P_21_UNCONNECTED,
      P(20) => NLW_blk00000003_P_20_UNCONNECTED,
      P(19) => NLW_blk00000003_P_19_UNCONNECTED,
      P(18) => NLW_blk00000003_P_18_UNCONNECTED,
      P(17) => NLW_blk00000003_P_17_UNCONNECTED,
      P(16) => NLW_blk00000003_P_16_UNCONNECTED,
      P(15) => p(15),
      P(14) => p(14),
      P(13) => p(13),
      P(12) => p(12),
      P(11) => p(11),
      P(10) => p(10),
      P(9) => p(9),
      P(8) => p(8),
      P(7) => p(7),
      P(6) => p(6),
      P(5) => p(5),
      P(4) => p(4),
      P(3) => p(3),
      P(2) => p(2),
      P(1) => p(1),
      P(0) => p(0),
      BCOUT(17) => NLW_blk00000003_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_blk00000003_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_blk00000003_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_blk00000003_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_blk00000003_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_blk00000003_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_blk00000003_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_blk00000003_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_blk00000003_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_blk00000003_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_blk00000003_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_blk00000003_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_blk00000003_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_blk00000003_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_blk00000003_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_blk00000003_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_blk00000003_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_blk00000003_BCOUT_0_UNCONNECTED,
      ACIN(29) => NLW_blk00000003_ACIN_29_UNCONNECTED,
      ACIN(28) => NLW_blk00000003_ACIN_28_UNCONNECTED,
      ACIN(27) => NLW_blk00000003_ACIN_27_UNCONNECTED,
      ACIN(26) => NLW_blk00000003_ACIN_26_UNCONNECTED,
      ACIN(25) => NLW_blk00000003_ACIN_25_UNCONNECTED,
      ACIN(24) => NLW_blk00000003_ACIN_24_UNCONNECTED,
      ACIN(23) => NLW_blk00000003_ACIN_23_UNCONNECTED,
      ACIN(22) => NLW_blk00000003_ACIN_22_UNCONNECTED,
      ACIN(21) => NLW_blk00000003_ACIN_21_UNCONNECTED,
      ACIN(20) => NLW_blk00000003_ACIN_20_UNCONNECTED,
      ACIN(19) => NLW_blk00000003_ACIN_19_UNCONNECTED,
      ACIN(18) => NLW_blk00000003_ACIN_18_UNCONNECTED,
      ACIN(17) => NLW_blk00000003_ACIN_17_UNCONNECTED,
      ACIN(16) => NLW_blk00000003_ACIN_16_UNCONNECTED,
      ACIN(15) => NLW_blk00000003_ACIN_15_UNCONNECTED,
      ACIN(14) => NLW_blk00000003_ACIN_14_UNCONNECTED,
      ACIN(13) => NLW_blk00000003_ACIN_13_UNCONNECTED,
      ACIN(12) => NLW_blk00000003_ACIN_12_UNCONNECTED,
      ACIN(11) => NLW_blk00000003_ACIN_11_UNCONNECTED,
      ACIN(10) => NLW_blk00000003_ACIN_10_UNCONNECTED,
      ACIN(9) => NLW_blk00000003_ACIN_9_UNCONNECTED,
      ACIN(8) => NLW_blk00000003_ACIN_8_UNCONNECTED,
      ACIN(7) => NLW_blk00000003_ACIN_7_UNCONNECTED,
      ACIN(6) => NLW_blk00000003_ACIN_6_UNCONNECTED,
      ACIN(5) => NLW_blk00000003_ACIN_5_UNCONNECTED,
      ACIN(4) => NLW_blk00000003_ACIN_4_UNCONNECTED,
      ACIN(3) => NLW_blk00000003_ACIN_3_UNCONNECTED,
      ACIN(2) => NLW_blk00000003_ACIN_2_UNCONNECTED,
      ACIN(1) => NLW_blk00000003_ACIN_1_UNCONNECTED,
      ACIN(0) => NLW_blk00000003_ACIN_0_UNCONNECTED,
      ACOUT(29) => NLW_blk00000003_ACOUT_29_UNCONNECTED,
      ACOUT(28) => NLW_blk00000003_ACOUT_28_UNCONNECTED,
      ACOUT(27) => NLW_blk00000003_ACOUT_27_UNCONNECTED,
      ACOUT(26) => NLW_blk00000003_ACOUT_26_UNCONNECTED,
      ACOUT(25) => NLW_blk00000003_ACOUT_25_UNCONNECTED,
      ACOUT(24) => NLW_blk00000003_ACOUT_24_UNCONNECTED,
      ACOUT(23) => NLW_blk00000003_ACOUT_23_UNCONNECTED,
      ACOUT(22) => NLW_blk00000003_ACOUT_22_UNCONNECTED,
      ACOUT(21) => NLW_blk00000003_ACOUT_21_UNCONNECTED,
      ACOUT(20) => NLW_blk00000003_ACOUT_20_UNCONNECTED,
      ACOUT(19) => NLW_blk00000003_ACOUT_19_UNCONNECTED,
      ACOUT(18) => NLW_blk00000003_ACOUT_18_UNCONNECTED,
      ACOUT(17) => NLW_blk00000003_ACOUT_17_UNCONNECTED,
      ACOUT(16) => NLW_blk00000003_ACOUT_16_UNCONNECTED,
      ACOUT(15) => NLW_blk00000003_ACOUT_15_UNCONNECTED,
      ACOUT(14) => NLW_blk00000003_ACOUT_14_UNCONNECTED,
      ACOUT(13) => NLW_blk00000003_ACOUT_13_UNCONNECTED,
      ACOUT(12) => NLW_blk00000003_ACOUT_12_UNCONNECTED,
      ACOUT(11) => NLW_blk00000003_ACOUT_11_UNCONNECTED,
      ACOUT(10) => NLW_blk00000003_ACOUT_10_UNCONNECTED,
      ACOUT(9) => NLW_blk00000003_ACOUT_9_UNCONNECTED,
      ACOUT(8) => NLW_blk00000003_ACOUT_8_UNCONNECTED,
      ACOUT(7) => NLW_blk00000003_ACOUT_7_UNCONNECTED,
      ACOUT(6) => NLW_blk00000003_ACOUT_6_UNCONNECTED,
      ACOUT(5) => NLW_blk00000003_ACOUT_5_UNCONNECTED,
      ACOUT(4) => NLW_blk00000003_ACOUT_4_UNCONNECTED,
      ACOUT(3) => NLW_blk00000003_ACOUT_3_UNCONNECTED,
      ACOUT(2) => NLW_blk00000003_ACOUT_2_UNCONNECTED,
      ACOUT(1) => NLW_blk00000003_ACOUT_1_UNCONNECTED,
      ACOUT(0) => NLW_blk00000003_ACOUT_0_UNCONNECTED,
      CARRYOUT(3) => NLW_blk00000003_CARRYOUT_3_UNCONNECTED,
      CARRYOUT(2) => NLW_blk00000003_CARRYOUT_2_UNCONNECTED,
      CARRYOUT(1) => NLW_blk00000003_CARRYOUT_1_UNCONNECTED,
      CARRYOUT(0) => NLW_blk00000003_CARRYOUT_0_UNCONNECTED
    );

end STRUCTURE;

-- synthesis translate_on
