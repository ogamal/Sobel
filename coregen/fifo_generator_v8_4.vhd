--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: O.87xd
--  \   \         Application: netgen
--  /   /         Filename: fifo_generator_v8_4.vhd
-- /___/   /\     Timestamp: Wed Feb 13 21:12:46 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl /home/tyler07/CPRE_584/isestuff/tmp/_cg/fifo_generator_v8_4.ngc /home/tyler07/CPRE_584/isestuff/tmp/_cg/fifo_generator_v8_4.vhd 
-- Device	: 5vlx330ff1760-2
-- Input file	: /home/tyler07/CPRE_584/isestuff/tmp/_cg/fifo_generator_v8_4.ngc
-- Output file	: /home/tyler07/CPRE_584/isestuff/tmp/_cg/fifo_generator_v8_4.vhd
-- # of Entities	: 1
-- Design Name	: fifo_generator_v8_4
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

entity fifo_generator_v8_4 is
  port (
    rd_en : in STD_LOGIC := 'X'; 
    almost_full : out STD_LOGIC; 
    rst : in STD_LOGIC := 'X'; 
    empty : out STD_LOGIC; 
    wr_en : in STD_LOGIC := 'X'; 
    rd_clk : in STD_LOGIC := 'X'; 
    full : out STD_LOGIC; 
    wr_clk : in STD_LOGIC := 'X'; 
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 ); 
    din : in STD_LOGIC_VECTOR ( 63 downto 0 ) 
  );
end fifo_generator_v8_4;

architecture STRUCTURE of fifo_generator_v8_4 is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0000 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0001 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0002 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0003 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0004 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0005 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0006 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0007 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0008 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0000 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0001 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0002 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0003 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0004 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0005 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0006 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0007 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0008 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0000 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0001 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0002 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0003 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0004 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0005 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0006 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0007 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0008 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0000 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0001 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0002 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0003 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0004 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0005 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0006 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0007 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0008 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_140 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_or0000 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_i_142 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_1_rt_145 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_2_rt_147 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_3_rt_149 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_4_rt_151 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_5_rt_153 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_6_rt_155 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_7_rt_157 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_8_rt_159 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_9_rt_161 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp2 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp3 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_almost_full_i_222 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_almost_full_i_mux0000 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_almost_full_i_not0001 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_225 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i_226 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i_mux0000 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_1_rt_230 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_2_rt_232 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_3_rt_234 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_4_rt_236 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_5_rt_238 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_6_rt_240 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_7_rt_242 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_8_rt_244 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_9_rt_246 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_300 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_301 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_302 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_303 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_308 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_309 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_310 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_311 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_312 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_313 : STD_LOGIC; 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb : STD_LOGIC; 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTLATA_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTLATB_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTREGA_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTREGB_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_31_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_30_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_29_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_28_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_27_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_26_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_25_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_24_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_23_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_22_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_21_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_20_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_19_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_18_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_17_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_16_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_15_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_14_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_13_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_12_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_11_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_10_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_9_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_8_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_7_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_6_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTLATA_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTLATB_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTREGA_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTREGB_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_31_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_30_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_29_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_28_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_27_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_26_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_25_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_24_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_23_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_22_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_21_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_20_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_19_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_18_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_17_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_16_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_15_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_14_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_13_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_12_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_11_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_10_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_9_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_8_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_7_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_6_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_5_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_4_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_0_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOB_31_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOB_23_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOB_15_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOB_7_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPB_3_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPB_2_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPB_1_UNCONNECTED : STD_LOGIC;
 
  signal NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPB_0_UNCONNECTED : STD_LOGIC;
 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q : STD_LOGIC_VECTOR2 ( 2 downto 0 , 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q : STD_LOGIC_VECTOR2 ( 2 downto 0 , 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_carrynet : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  almost_full <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_almost_full_i_222;
  empty <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_i_142;
  full <= U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i_226;
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_or0000,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_140
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_or0000,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_i_142
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => rst,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_310,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_300
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_309,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d3_310
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_302,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_303
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_312,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_313
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_308,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_309
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_301,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_302
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg : FDPE
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_312,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_311
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_311,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d1_312
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg : FDPE
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d1_302,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_301
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => N0,
      PRE => rst,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d1_308
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_2 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => N0,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => N0,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg_0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      D => N0,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg_1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => N0,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg_0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => N0,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_9_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(8),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_9_rt_161,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_8_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(7),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_8_rt_159,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_8_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(7),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_8_rt_159,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(6),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_7_rt_157,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(6),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_7_rt_157,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(5),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_6_rt_155,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(5),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_6_rt_155,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(4),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_5_rt_153,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(4),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_5_rt_153,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(3),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_4_rt_151,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_4_rt_151,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(2),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_3_rt_149,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_3_rt_149,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(1),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_2_rt_147,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_2_rt_147,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(0),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_1_rt_145,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_1_rt_145,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(0),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Result(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(2),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(0),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_9_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(8),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_9_rt_246,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_8_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(7),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_8_rt_244,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_8_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(7),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_8_rt_244,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(6),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_7_rt_242,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(6),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_7_rt_242,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(5),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_6_rt_240,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(5),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_6_rt_240,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(4),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_5_rt_238,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(4),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_5_rt_238,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(3),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_4_rt_236,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_4_rt_236,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(2),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_3_rt_234,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_3_rt_234,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(1),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_2_rt_232,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_2_rt_232,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(0),
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_1_rt_230,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_1_rt_230,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_lut(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_1 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(1),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_0 : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Result(0),
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_rd_stg_inst_Q_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_rd_stg_inst_Q_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_rd_stg_inst_Q_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_rd_stg_inst_Q_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_rd_stg_inst_Q_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_rd_stg_inst_Q_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_rd_stg_inst_Q_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_rd_stg_inst_Q_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_rd_stg_inst_Q_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_rd_stg_inst_Q_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_wr_stg_inst_Q_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_wr_stg_inst_Q_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_wr_stg_inst_Q_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_wr_stg_inst_Q_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_wr_stg_inst_Q_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_wr_stg_inst_Q_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_wr_stg_inst_Q_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_wr_stg_inst_Q_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_wr_stg_inst_Q_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_1_wr_stg_inst_Q_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_rd_stg_inst_Q_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_rd_stg_inst_Q_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_rd_stg_inst_Q_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_rd_stg_inst_Q_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_rd_stg_inst_Q_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_rd_stg_inst_Q_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_rd_stg_inst_Q_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_rd_stg_inst_Q_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_rd_stg_inst_Q_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_rd_stg_inst_Q_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(1, 9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_wr_stg_inst_Q_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 0),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_wr_stg_inst_Q_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 1),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_wr_stg_inst_Q_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 2),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_wr_stg_inst_Q_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 3),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_wr_stg_inst_Q_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 4),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_wr_stg_inst_Q_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 5),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_wr_stg_inst_Q_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 6),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_wr_stg_inst_Q_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 7),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_wr_stg_inst_Q_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 8),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_gsync_stage_2_wr_stg_inst_Q_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(1, 9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0000,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0001,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0002,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0003,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0004,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0005,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0006,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0007,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0008,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0000,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0001,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0002,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0003,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0004,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0005,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0006,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0007,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0008,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0000,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0001,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0002,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0003,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0004,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0005,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0006,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0007,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => rd_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(1),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0008,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(0, 0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_9 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(9),
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 9)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_8 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0000,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_7 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0001,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 7)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_6 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0002,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 6)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0003,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 5)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0004,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0005,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0006,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0007,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => wr_clk,
      CLR => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_reg(0),
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0008,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(0, 0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp2
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_gmux_gm_0_gm1_m1 : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_carrynet(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_gmux_gm_1_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_carrynet(0),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_carrynet(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_gmux_gm_2_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_carrynet(1),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_carrynet(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_gmux_gm_3_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_carrynet(2),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_carrynet(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_gmux_gm_4_gms_ms : MUXCY
    port map (
      CI => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_carrynet(3),
      DI => N0,
      S => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp3
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i_mux0000,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_309,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_225
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i_mux0000,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_309,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i_226
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_almost_full_i : FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => wr_clk,
      CE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_almost_full_i_not0001,
      D => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_almost_full_i_mux0000,
      PRE => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rst_d2_309,
      Q => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_almost_full_i_222
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_311,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_asreg_d2_313,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_wr_rst_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_301,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_asreg_d2_303,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_comb
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_gc_xor0008_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0008
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_gc_xor0007_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0007
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_gc_xor0006_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0006
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_gc_xor0005_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0005
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_gc_xor0004_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0004
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_gc_xor0003_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0003
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_gc_xor0002_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0002
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_gc_xor0001_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0001
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_gc_xor0000_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(9),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_gc_xor0000
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_gc_xor0008_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0008
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_gc_xor0007_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0007
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_gc_xor0006_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0006
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_gc_xor0005_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0005
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_gc_xor0004_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0004
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_gc_xor0003_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0003
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_gc_xor0002_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0002
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_gc_xor0001_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0001
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_gc_xor0000_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(9),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_gc_xor0000
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_almost_full_i_not00011 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_300,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_225,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_almost_full_i_not0001
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_ram_wr_en_i1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_225,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1_4_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(9),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1_4_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(9),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1_4_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(9),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1_4_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(9),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1_4_and00001 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(8),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(4)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1_3_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1_3_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1_3_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1_3_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(7),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1_3_and00001 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(6),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(7),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(3)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1_2_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1_2_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1_2_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1_2_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(5),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1_2_and00001 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(4),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(5),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(2)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1_1_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1_1_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1_1_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1_1_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1_1_and00001 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(1)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_or000011 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_140,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_rd_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1_0_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_gaf_c3_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1_0_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d1(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c2_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1_0_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d2(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_c1_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1_0_and00001 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c1_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1_0_and00001 : LUT4
    generic map(
      INIT => X"8421"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(0),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin(1),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_c0_v1(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_bin_xor0000_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0000
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_bin_xor0000_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0000
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_8_rt_159
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_7_rt_157
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_6_rt_155
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_5_rt_153
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_4_rt_151
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_3_rt_149
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_2_rt_147
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_cy_1_rt_145
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(8),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_8_rt_244
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_7_rt_242
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_6_rt_240
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_5_rt_238
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_4_rt_236
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(3),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_3_rt_234
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(2),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_2_rt_232
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(1),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_cy_1_rt_230
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_xor_9_rt_161
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(9),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_xor_9_rt_246
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_bin_xor0002_Result1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0002
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_bin_xor0002_Result1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 6),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0002
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_bin_xor0005_Result1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 4),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 5),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0002,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0005
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_bin_xor0005_Result1 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 3),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 4),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 5),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0002,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0005
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_bin_xor0006_Result1 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 5),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0002,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0006
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_bin_xor0006_Result1 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 5),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0002,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0006
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_bin_xor0007_Result1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 5),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0002,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0007
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_bin_xor0007_Result1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 2),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 3),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 4),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 5),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0002,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0007
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_bin_xor0004_Result1_SW0 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 0),
      O => N11
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_bin_xor0008_Result1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 5),
      I4 => N11,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0002,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0008
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_bin_xor0004_Result1_SW0 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 1),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 0),
      O => N3
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_bin_xor0008_Result1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 2),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 3),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 4),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 5),
      I4 => N3,
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0002,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0008
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_or00001 : LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      I0 => rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_140,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp1,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_comp0,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_or0000
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i_mux00001 : LUT5
    generic map(
      INIT => X"33023300"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_300,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_225,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp1,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp2,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_i_mux0000
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_almost_full_i_mux00001 : LUT5
    generic map(
      INIT => X"33330200"
    )
    port map (
      I0 => wr_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_RST_FULL_GEN_300,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_full_fb_i_225,
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp3,
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_comp2,
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_gwas_wsts_ram_almost_full_i_mux0000
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en1 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => rd_en,
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_gras_rsts_ram_empty_fb_i_140,
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_bin_xor0001_Result1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0001
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_bin_xor0001_Result1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 7),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0001
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_bin_xor0003_Result1 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 6),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0003
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_bin_xor0003_Result1 : LUT5
    generic map(
      INIT => X"96696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 6),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 5),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0003
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_wr_pntr_bin_xor0004_Result1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 6),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 5),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_q(2, 4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_wr_pntr_bin_xor0004
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_Mxor_rd_pntr_bin_xor0004_Result1 : LUT6
    generic map(
      INIT => X"6996966996696996"
    )
    port map (
      I0 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 8),
      I1 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 9),
      I2 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 7),
      I3 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 6),
      I4 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 5),
      I5 => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_q(2, 4),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gcx_clkx_rd_pntr_bin_xor0004
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_lut_0_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_Mcount_count_lut(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_lut_0_INV_0 : INV
    port map (
      I => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count(0),
      O => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_Mcount_count_lut(0)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP : 
RAMB36_EXP
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      SIM_COLLISION_CHECK => "ALL",
      SIM_MODE => "SAFE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36,
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ENAU => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      ENAL => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      ENBU => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en,
      ENBL => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en,
      SSRAU => N0,
      SSRAL => N0,
      SSRBU => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(0),
      SSRBL => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(0),
      CLKAU => wr_clk,
      CLKAL => wr_clk,
      CLKBU => rd_clk,
      CLKBL => rd_clk,
      REGCLKAU => wr_clk,
      REGCLKAL => wr_clk,
      REGCLKBU => rd_clk,
      REGCLKBL => rd_clk,
      REGCEAU => N0,
      REGCEAL => N0,
      REGCEBU => N0,
      REGCEBL => N0,
      CASCADEINLATA => N0,
      CASCADEINLATB => N0,
      CASCADEINREGA => N0,
      CASCADEINREGB => N0,
      CASCADEOUTLATA => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTLATA_UNCONNECTED
,
      CASCADEOUTLATB => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTLATB_UNCONNECTED
,
      CASCADEOUTREGA => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTREGA_UNCONNECTED
,
      CASCADEOUTREGB => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTREGB_UNCONNECTED
,
      DIA(31) => din(34),
      DIA(30) => din(33),
      DIA(29) => din(32),
      DIA(28) => din(31),
      DIA(27) => din(30),
      DIA(26) => din(29),
      DIA(25) => din(28),
      DIA(24) => din(27),
      DIA(23) => din(25),
      DIA(22) => din(24),
      DIA(21) => din(23),
      DIA(20) => din(22),
      DIA(19) => din(21),
      DIA(18) => din(20),
      DIA(17) => din(19),
      DIA(16) => din(18),
      DIA(15) => din(16),
      DIA(14) => din(15),
      DIA(13) => din(14),
      DIA(12) => din(13),
      DIA(11) => din(12),
      DIA(10) => din(11),
      DIA(9) => din(10),
      DIA(8) => din(9),
      DIA(7) => din(7),
      DIA(6) => din(6),
      DIA(5) => din(5),
      DIA(4) => din(4),
      DIA(3) => din(3),
      DIA(2) => din(2),
      DIA(1) => din(1),
      DIA(0) => din(0),
      DIPA(3) => din(35),
      DIPA(2) => din(26),
      DIPA(1) => din(17),
      DIPA(0) => din(8),
      DIB(31) => N0,
      DIB(30) => N0,
      DIB(29) => N0,
      DIB(28) => N0,
      DIB(27) => N0,
      DIB(26) => N0,
      DIB(25) => N0,
      DIB(24) => N0,
      DIB(23) => N0,
      DIB(22) => N0,
      DIB(21) => N0,
      DIB(20) => N0,
      DIB(19) => N0,
      DIB(18) => N0,
      DIB(17) => N0,
      DIB(16) => N0,
      DIB(15) => N0,
      DIB(14) => N0,
      DIB(13) => N0,
      DIB(12) => N0,
      DIB(11) => N0,
      DIB(10) => N0,
      DIB(9) => N0,
      DIB(8) => N0,
      DIB(7) => N0,
      DIB(6) => N0,
      DIB(5) => N0,
      DIB(4) => N0,
      DIB(3) => N0,
      DIB(2) => N0,
      DIB(1) => N0,
      DIB(0) => N0,
      DIPB(3) => N0,
      DIPB(2) => N0,
      DIPB(1) => N0,
      DIPB(0) => N0,
      ADDRAL(15) => N0,
      ADDRAL(14) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(9),
      ADDRAL(13) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(8),
      ADDRAL(12) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(7),
      ADDRAL(11) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(6),
      ADDRAL(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(5),
      ADDRAL(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(4),
      ADDRAL(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(3),
      ADDRAL(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(2),
      ADDRAL(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(1),
      ADDRAL(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(0),
      ADDRAL(4) => N0,
      ADDRAL(3) => N0,
      ADDRAL(2) => N0,
      ADDRAL(1) => N0,
      ADDRAL(0) => N0,
      ADDRAU(14) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(9),
      ADDRAU(13) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(8),
      ADDRAU(12) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(7),
      ADDRAU(11) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(6),
      ADDRAU(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(5),
      ADDRAU(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(4),
      ADDRAU(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(3),
      ADDRAU(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(2),
      ADDRAU(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(1),
      ADDRAU(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(0),
      ADDRAU(4) => N0,
      ADDRAU(3) => N0,
      ADDRAU(2) => N0,
      ADDRAU(1) => N0,
      ADDRAU(0) => N0,
      ADDRBL(15) => N0,
      ADDRBL(14) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(9),
      ADDRBL(13) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(8),
      ADDRBL(12) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(7),
      ADDRBL(11) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      ADDRBL(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      ADDRBL(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      ADDRBL(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRBL(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRBL(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRBL(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRBL(4) => N0,
      ADDRBL(3) => N0,
      ADDRBL(2) => N0,
      ADDRBL(1) => N0,
      ADDRBL(0) => N0,
      ADDRBU(14) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(9),
      ADDRBU(13) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(8),
      ADDRBU(12) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(7),
      ADDRBU(11) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      ADDRBU(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      ADDRBU(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      ADDRBU(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRBU(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRBU(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRBU(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRBU(4) => N0,
      ADDRBU(3) => N0,
      ADDRBU(2) => N0,
      ADDRBU(1) => N0,
      ADDRBU(0) => N0,
      WEAU(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEAU(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEAU(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEAU(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEAL(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEAL(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEAL(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEAL(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEBU(7) => N0,
      WEBU(6) => N0,
      WEBU(5) => N0,
      WEBU(4) => N0,
      WEBU(3) => N0,
      WEBU(2) => N0,
      WEBU(1) => N0,
      WEBU(0) => N0,
      WEBL(7) => N0,
      WEBL(6) => N0,
      WEBL(5) => N0,
      WEBL(4) => N0,
      WEBL(3) => N0,
      WEBL(2) => N0,
      WEBL(1) => N0,
      WEBL(0) => N0,
      DOA(31) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_31_UNCONNECTED
,
      DOA(30) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_30_UNCONNECTED
,
      DOA(29) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_29_UNCONNECTED
,
      DOA(28) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_28_UNCONNECTED
,
      DOA(27) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_27_UNCONNECTED
,
      DOA(26) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_26_UNCONNECTED
,
      DOA(25) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_25_UNCONNECTED
,
      DOA(24) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_24_UNCONNECTED
,
      DOA(23) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_23_UNCONNECTED
,
      DOA(22) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_22_UNCONNECTED
,
      DOA(21) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_21_UNCONNECTED
,
      DOA(20) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_20_UNCONNECTED
,
      DOA(19) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_19_UNCONNECTED
,
      DOA(18) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_18_UNCONNECTED
,
      DOA(17) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_17_UNCONNECTED
,
      DOA(16) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_16_UNCONNECTED
,
      DOA(15) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_15_UNCONNECTED
,
      DOA(14) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_14_UNCONNECTED
,
      DOA(13) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_13_UNCONNECTED
,
      DOA(12) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_12_UNCONNECTED
,
      DOA(11) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_11_UNCONNECTED
,
      DOA(10) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_10_UNCONNECTED
,
      DOA(9) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_9_UNCONNECTED
,
      DOA(8) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_8_UNCONNECTED
,
      DOA(7) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_7_UNCONNECTED
,
      DOA(6) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_6_UNCONNECTED
,
      DOA(5) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_5_UNCONNECTED
,
      DOA(4) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_4_UNCONNECTED
,
      DOA(3) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_3_UNCONNECTED
,
      DOA(2) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_2_UNCONNECTED
,
      DOA(1) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_1_UNCONNECTED
,
      DOA(0) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_0_UNCONNECTED
,
      DOPA(3) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_3_UNCONNECTED
,
      DOPA(2) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_2_UNCONNECTED
,
      DOPA(1) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_1_UNCONNECTED
,
      DOPA(0) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_0_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_0_UNCONNECTED
,
      DOB(31) => dout(34),
      DOB(30) => dout(33),
      DOB(29) => dout(32),
      DOB(28) => dout(31),
      DOB(27) => dout(30),
      DOB(26) => dout(29),
      DOB(25) => dout(28),
      DOB(24) => dout(27),
      DOB(23) => dout(25),
      DOB(22) => dout(24),
      DOB(21) => dout(23),
      DOB(20) => dout(22),
      DOB(19) => dout(21),
      DOB(18) => dout(20),
      DOB(17) => dout(19),
      DOB(16) => dout(18),
      DOB(15) => dout(16),
      DOB(14) => dout(15),
      DOB(13) => dout(14),
      DOB(12) => dout(13),
      DOB(11) => dout(12),
      DOB(10) => dout(11),
      DOB(9) => dout(10),
      DOB(8) => dout(9),
      DOB(7) => dout(7),
      DOB(6) => dout(6),
      DOB(5) => dout(5),
      DOB(4) => dout(4),
      DOB(3) => dout(3),
      DOB(2) => dout(2),
      DOB(1) => dout(1),
      DOB(0) => dout(0),
      DOPB(3) => dout(35),
      DOPB(2) => dout(26),
      DOPB(1) => dout(17),
      DOPB(0) => dout(8)
    );
  U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP : 
RAMB36_EXP
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_FILE => "NONE",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      SIM_COLLISION_CHECK => "ALL",
      SIM_MODE => "SAFE",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36,
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ENAU => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      ENAL => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      ENBU => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en,
      ENBL => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_tmp_ram_rd_en,
      SSRAU => N0,
      SSRAL => N0,
      SSRBU => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(0),
      SSRBL => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_rstblk_rd_rst_reg(0),
      CLKAU => wr_clk,
      CLKAL => wr_clk,
      CLKBU => rd_clk,
      CLKBL => rd_clk,
      REGCLKAU => wr_clk,
      REGCLKAL => wr_clk,
      REGCLKBU => rd_clk,
      REGCLKBL => rd_clk,
      REGCEAU => N0,
      REGCEAL => N0,
      REGCEBU => N0,
      REGCEBL => N0,
      CASCADEINLATA => N0,
      CASCADEINLATB => N0,
      CASCADEINREGA => N0,
      CASCADEINREGB => N0,
      CASCADEOUTLATA => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTLATA_UNCONNECTED
,
      CASCADEOUTLATB => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTLATB_UNCONNECTED
,
      CASCADEOUTREGA => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTREGA_UNCONNECTED
,
      CASCADEOUTREGB => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_CASCADEOUTREGB_UNCONNECTED
,
      DIA(31) => N0,
      DIA(30) => din(63),
      DIA(29) => din(62),
      DIA(28) => din(61),
      DIA(27) => din(60),
      DIA(26) => din(59),
      DIA(25) => din(58),
      DIA(24) => din(57),
      DIA(23) => N0,
      DIA(22) => din(56),
      DIA(21) => din(55),
      DIA(20) => din(54),
      DIA(19) => din(53),
      DIA(18) => din(52),
      DIA(17) => din(51),
      DIA(16) => din(50),
      DIA(15) => N0,
      DIA(14) => din(49),
      DIA(13) => din(48),
      DIA(12) => din(47),
      DIA(11) => din(46),
      DIA(10) => din(45),
      DIA(9) => din(44),
      DIA(8) => din(43),
      DIA(7) => N0,
      DIA(6) => din(42),
      DIA(5) => din(41),
      DIA(4) => din(40),
      DIA(3) => din(39),
      DIA(2) => din(38),
      DIA(1) => din(37),
      DIA(0) => din(36),
      DIPA(3) => N0,
      DIPA(2) => N0,
      DIPA(1) => N0,
      DIPA(0) => N0,
      DIB(31) => N0,
      DIB(30) => N0,
      DIB(29) => N0,
      DIB(28) => N0,
      DIB(27) => N0,
      DIB(26) => N0,
      DIB(25) => N0,
      DIB(24) => N0,
      DIB(23) => N0,
      DIB(22) => N0,
      DIB(21) => N0,
      DIB(20) => N0,
      DIB(19) => N0,
      DIB(18) => N0,
      DIB(17) => N0,
      DIB(16) => N0,
      DIB(15) => N0,
      DIB(14) => N0,
      DIB(13) => N0,
      DIB(12) => N0,
      DIB(11) => N0,
      DIB(10) => N0,
      DIB(9) => N0,
      DIB(8) => N0,
      DIB(7) => N0,
      DIB(6) => N0,
      DIB(5) => N0,
      DIB(4) => N0,
      DIB(3) => N0,
      DIB(2) => N0,
      DIB(1) => N0,
      DIB(0) => N0,
      DIPB(3) => N0,
      DIPB(2) => N0,
      DIPB(1) => N0,
      DIPB(0) => N0,
      ADDRAL(15) => N0,
      ADDRAL(14) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(9),
      ADDRAL(13) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(8),
      ADDRAL(12) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(7),
      ADDRAL(11) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(6),
      ADDRAL(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(5),
      ADDRAL(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(4),
      ADDRAL(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(3),
      ADDRAL(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(2),
      ADDRAL(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(1),
      ADDRAL(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(0),
      ADDRAL(4) => N0,
      ADDRAL(3) => N0,
      ADDRAL(2) => N0,
      ADDRAL(1) => N0,
      ADDRAL(0) => N0,
      ADDRAU(14) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(9),
      ADDRAU(13) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(8),
      ADDRAU(12) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(7),
      ADDRAU(11) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(6),
      ADDRAU(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(5),
      ADDRAU(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(4),
      ADDRAU(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(3),
      ADDRAU(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(2),
      ADDRAU(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(1),
      ADDRAU(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_wr_wpntr_count_d3(0),
      ADDRAU(4) => N0,
      ADDRAU(3) => N0,
      ADDRAU(2) => N0,
      ADDRAU(1) => N0,
      ADDRAU(0) => N0,
      ADDRBL(15) => N0,
      ADDRBL(14) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(9),
      ADDRBL(13) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(8),
      ADDRBL(12) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(7),
      ADDRBL(11) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      ADDRBL(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      ADDRBL(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      ADDRBL(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRBL(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRBL(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRBL(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRBL(4) => N0,
      ADDRBL(3) => N0,
      ADDRBL(2) => N0,
      ADDRBL(1) => N0,
      ADDRBL(0) => N0,
      ADDRBU(14) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(9),
      ADDRBU(13) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(8),
      ADDRBU(12) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(7),
      ADDRBU(11) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(6),
      ADDRBU(10) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(5),
      ADDRBU(9) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(4),
      ADDRBU(8) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(3),
      ADDRBU(7) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(2),
      ADDRBU(6) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(1),
      ADDRBU(5) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_gl0_rd_rpntr_count_d1(0),
      ADDRBU(4) => N0,
      ADDRBU(3) => N0,
      ADDRBU(2) => N0,
      ADDRBU(1) => N0,
      ADDRBU(0) => N0,
      WEAU(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEAU(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEAU(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEAU(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEAL(3) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEAL(2) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEAL(1) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEAL(0) => U0_xst_fifo_generator_gconvfifo_rf_grf_rf_ram_wr_en,
      WEBU(7) => N0,
      WEBU(6) => N0,
      WEBU(5) => N0,
      WEBU(4) => N0,
      WEBU(3) => N0,
      WEBU(2) => N0,
      WEBU(1) => N0,
      WEBU(0) => N0,
      WEBL(7) => N0,
      WEBL(6) => N0,
      WEBL(5) => N0,
      WEBL(4) => N0,
      WEBL(3) => N0,
      WEBL(2) => N0,
      WEBL(1) => N0,
      WEBL(0) => N0,
      DOA(31) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_31_UNCONNECTED
,
      DOA(30) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_30_UNCONNECTED
,
      DOA(29) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_29_UNCONNECTED
,
      DOA(28) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_28_UNCONNECTED
,
      DOA(27) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_27_UNCONNECTED
,
      DOA(26) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_26_UNCONNECTED
,
      DOA(25) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_25_UNCONNECTED
,
      DOA(24) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_24_UNCONNECTED
,
      DOA(23) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_23_UNCONNECTED
,
      DOA(22) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_22_UNCONNECTED
,
      DOA(21) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_21_UNCONNECTED
,
      DOA(20) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_20_UNCONNECTED
,
      DOA(19) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_19_UNCONNECTED
,
      DOA(18) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_18_UNCONNECTED
,
      DOA(17) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_17_UNCONNECTED
,
      DOA(16) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_16_UNCONNECTED
,
      DOA(15) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_15_UNCONNECTED
,
      DOA(14) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_14_UNCONNECTED
,
      DOA(13) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_13_UNCONNECTED
,
      DOA(12) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_12_UNCONNECTED
,
      DOA(11) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_11_UNCONNECTED
,
      DOA(10) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_10_UNCONNECTED
,
      DOA(9) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_9_UNCONNECTED
,
      DOA(8) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_8_UNCONNECTED
,
      DOA(7) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_7_UNCONNECTED
,
      DOA(6) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_6_UNCONNECTED
,
      DOA(5) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_5_UNCONNECTED
,
      DOA(4) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_4_UNCONNECTED
,
      DOA(3) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_3_UNCONNECTED
,
      DOA(2) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_2_UNCONNECTED
,
      DOA(1) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_1_UNCONNECTED
,
      DOA(0) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOA_0_UNCONNECTED
,
      DOPA(3) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_3_UNCONNECTED
,
      DOPA(2) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_2_UNCONNECTED
,
      DOPA(1) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_1_UNCONNECTED
,
      DOPA(0) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPA_0_UNCONNECTED
,
      DOB(31) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOB_31_UNCONNECTED
,
      DOB(30) => dout(63),
      DOB(29) => dout(62),
      DOB(28) => dout(61),
      DOB(27) => dout(60),
      DOB(26) => dout(59),
      DOB(25) => dout(58),
      DOB(24) => dout(57),
      DOB(23) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOB_23_UNCONNECTED
,
      DOB(22) => dout(56),
      DOB(21) => dout(55),
      DOB(20) => dout(54),
      DOB(19) => dout(53),
      DOB(18) => dout(52),
      DOB(17) => dout(51),
      DOB(16) => dout(50),
      DOB(15) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOB_15_UNCONNECTED
,
      DOB(14) => dout(49),
      DOB(13) => dout(48),
      DOB(12) => dout(47),
      DOB(11) => dout(46),
      DOB(10) => dout(45),
      DOB(9) => dout(44),
      DOB(8) => dout(43),
      DOB(7) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOB_7_UNCONNECTED
,
      DOB(6) => dout(42),
      DOB(5) => dout(41),
      DOB(4) => dout(40),
      DOB(3) => dout(39),
      DOB(2) => dout(38),
      DOB(1) => dout(37),
      DOB(0) => dout(36),
      DOPB(3) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPB_3_UNCONNECTED
,
      DOPB(2) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPB_2_UNCONNECTED
,
      DOPB(1) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPB_1_UNCONNECTED
,
      DOPB(0) => 
NLW_U0_xst_fifo_generator_gconvfifo_rf_grf_rf_gntv_or_sync_fifo_mem_gbm_gbmg_gbmga_ngecc_bmg_gnativebmg_native_blk_mem_gen_valid_cstr_ramloop_1_ram_r_v5_noinit_ram_SDP_SINGLE_PRIM36_TDP_DOPB_0_UNCONNECTED

    );

end STRUCTURE;

-- synthesis translate_on
