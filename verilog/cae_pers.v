/*****************************************************************************/
//
// Module      : cae_pers.v
// Revision    : $Revision: 1.4.1.4 $
// Last Modified On: $Date: 2012/03/07 15:41:55 $
// Last Modified By: $Author: ktown $
//
//-----------------------------------------------------------------------------
//
// Original Author : Cyc05 Team
// Created On      : Mon Feb 11 2013
//-----------------------------------------------------------------------------
//
// Description     : sobel personality
//
//                   Top-level of sobel personality.  For a complete list of
//                   optional ports, see
//                   /opt/convey/pdk/<rev>/<platform>/doc/cae_pers.v
//
//-----------------------------------------------------------------------------
//
// Copyright (c) 2007-2011 : created by Convey Computer Corp. This model is the
// confidential and proprietary property of Convey Computer Corp.
//
/*****************************************************************************/
/* $Id: cae_pers.v,v 1.4.1.4 2012/03/07 15:41:55 ktown Exp ktown $ */

`timescale 1 ns / 1 ps

`include "pdk_fpga_defines.vh"

(* keep_hierarchy = "true" *)
module cae_pers (
   input        clk_csr,
   input        clk,
   input        clk2x,
   input        i_reset,
   input        i_csr_reset_n,
   input  [1:0]     i_aeid,

   input        ppll_reset,
   output       ppll_locked,
   output       clk_per,

   //
   // Dispatch Interface
   //
   input  [31:0]    cae_inst,
   input  [63:0]    cae_data,
   input        cae_inst_vld,

   output [17:0]    cae_aeg_cnt,
   output [15:0]    cae_exception,
   output [63:0]    cae_ret_data,
   output       cae_ret_data_vld,
   output       cae_idle,
   output       cae_stall,

   //
   // MC Interface(s)
   //
   output       mc0_req_ld_e, mc0_req_ld_o,
   output       mc0_req_st_e, mc0_req_st_o,
   output [1:0]     mc0_req_size_e, mc0_req_size_o,
   output [47:0]    mc0_req_vadr_e, mc0_req_vadr_o,
   output [63:0]    mc0_req_wrd_rdctl_e, mc0_req_wrd_rdctl_o,
   output       mc0_rsp_stall_e, mc0_rsp_stall_o,
   input        mc0_rd_rq_stall_e, mc0_rd_rq_stall_o,
   input        mc0_wr_rq_stall_e, mc0_wr_rq_stall_o,
   input  [63:0]    mc0_rsp_data_e, mc0_rsp_data_o,
   input        mc0_rsp_push_e, mc0_rsp_push_o,
   input  [31:0]    mc0_rsp_rdctl_e, mc0_rsp_rdctl_o,
   output       mc1_req_ld_e, mc1_req_ld_o,
   output       mc1_req_st_e, mc1_req_st_o,
   output [1:0]     mc1_req_size_e, mc1_req_size_o,
   output [47:0]    mc1_req_vadr_e, mc1_req_vadr_o,
   output [63:0]    mc1_req_wrd_rdctl_e, mc1_req_wrd_rdctl_o,
   output       mc1_rsp_stall_e, mc1_rsp_stall_o,
   input        mc1_rd_rq_stall_e, mc1_rd_rq_stall_o,
   input        mc1_wr_rq_stall_e, mc1_wr_rq_stall_o,
   input  [63:0]    mc1_rsp_data_e, mc1_rsp_data_o,
   input        mc1_rsp_push_e, mc1_rsp_push_o,
   input  [31:0]    mc1_rsp_rdctl_e, mc1_rsp_rdctl_o,
   output       mc2_req_ld_e, mc2_req_ld_o,
   output       mc2_req_st_e, mc2_req_st_o,
   output [1:0]     mc2_req_size_e, mc2_req_size_o,
   output [47:0]    mc2_req_vadr_e, mc2_req_vadr_o,
   output [63:0]    mc2_req_wrd_rdctl_e, mc2_req_wrd_rdctl_o,
   output       mc2_rsp_stall_e, mc2_rsp_stall_o,
   input        mc2_rd_rq_stall_e, mc2_rd_rq_stall_o,
   input        mc2_wr_rq_stall_e, mc2_wr_rq_stall_o,
   input  [63:0]    mc2_rsp_data_e, mc2_rsp_data_o,
   input        mc2_rsp_push_e, mc2_rsp_push_o,
   input  [31:0]    mc2_rsp_rdctl_e, mc2_rsp_rdctl_o,
   output       mc3_req_ld_e, mc3_req_ld_o,
   output       mc3_req_st_e, mc3_req_st_o,
   output [1:0]     mc3_req_size_e, mc3_req_size_o,
   output [47:0]    mc3_req_vadr_e, mc3_req_vadr_o,
   output [63:0]    mc3_req_wrd_rdctl_e, mc3_req_wrd_rdctl_o,
   output       mc3_rsp_stall_e, mc3_rsp_stall_o,
   input        mc3_rd_rq_stall_e, mc3_rd_rq_stall_o,
   input        mc3_wr_rq_stall_e, mc3_wr_rq_stall_o,
   input  [63:0]    mc3_rsp_data_e, mc3_rsp_data_o,
   input        mc3_rsp_push_e, mc3_rsp_push_o,
   input  [31:0]    mc3_rsp_rdctl_e, mc3_rsp_rdctl_o,
   output       mc4_req_ld_e, mc4_req_ld_o,
   output       mc4_req_st_e, mc4_req_st_o,
   output [1:0]     mc4_req_size_e, mc4_req_size_o,
   output [47:0]    mc4_req_vadr_e, mc4_req_vadr_o,
   output [63:0]    mc4_req_wrd_rdctl_e, mc4_req_wrd_rdctl_o,
   output       mc4_rsp_stall_e, mc4_rsp_stall_o,
   input        mc4_rd_rq_stall_e, mc4_rd_rq_stall_o,
   input        mc4_wr_rq_stall_e, mc4_wr_rq_stall_o,
   input  [63:0]    mc4_rsp_data_e, mc4_rsp_data_o,
   input        mc4_rsp_push_e, mc4_rsp_push_o,
   input  [31:0]    mc4_rsp_rdctl_e, mc4_rsp_rdctl_o,
   output       mc5_req_ld_e, mc5_req_ld_o,
   output       mc5_req_st_e, mc5_req_st_o,
   output [1:0]     mc5_req_size_e, mc5_req_size_o,
   output [47:0]    mc5_req_vadr_e, mc5_req_vadr_o,
   output [63:0]    mc5_req_wrd_rdctl_e, mc5_req_wrd_rdctl_o,
   output       mc5_rsp_stall_e, mc5_rsp_stall_o,
   input        mc5_rd_rq_stall_e, mc5_rd_rq_stall_o,
   input        mc5_wr_rq_stall_e, mc5_wr_rq_stall_o,
   input  [63:0]    mc5_rsp_data_e, mc5_rsp_data_o,
   input        mc5_rsp_push_e, mc5_rsp_push_o,
   input  [31:0]    mc5_rsp_rdctl_e, mc5_rsp_rdctl_o,
   output       mc6_req_ld_e, mc6_req_ld_o,
   output       mc6_req_st_e, mc6_req_st_o,
   output [1:0]     mc6_req_size_e, mc6_req_size_o,
   output [47:0]    mc6_req_vadr_e, mc6_req_vadr_o,
   output [63:0]    mc6_req_wrd_rdctl_e, mc6_req_wrd_rdctl_o,
   output       mc6_rsp_stall_e, mc6_rsp_stall_o,
   input        mc6_rd_rq_stall_e, mc6_rd_rq_stall_o,
   input        mc6_wr_rq_stall_e, mc6_wr_rq_stall_o,
   input  [63:0]    mc6_rsp_data_e, mc6_rsp_data_o,
   input        mc6_rsp_push_e, mc6_rsp_push_o,
   input  [31:0]    mc6_rsp_rdctl_e, mc6_rsp_rdctl_o,
   output       mc7_req_ld_e, mc7_req_ld_o,
   output       mc7_req_st_e, mc7_req_st_o,
   output [1:0]     mc7_req_size_e, mc7_req_size_o,
   output [47:0]    mc7_req_vadr_e, mc7_req_vadr_o,
   output [63:0]    mc7_req_wrd_rdctl_e, mc7_req_wrd_rdctl_o,
   output       mc7_rsp_stall_e, mc7_rsp_stall_o,
   input        mc7_rd_rq_stall_e, mc7_rd_rq_stall_o,
   input        mc7_wr_rq_stall_e, mc7_wr_rq_stall_o,
   input  [63:0]    mc7_rsp_data_e, mc7_rsp_data_o,
   input        mc7_rsp_push_e, mc7_rsp_push_o,
   input  [31:0]    mc7_rsp_rdctl_e, mc7_rsp_rdctl_o,

   //
   // Write flush
   //
   output       mc0_req_flush_e, mc0_req_flush_o,
   input        mc0_rsp_flush_cmplt_e, mc0_rsp_flush_cmplt_o,
   output       mc1_req_flush_e, mc1_req_flush_o,
   input        mc1_rsp_flush_cmplt_e, mc1_rsp_flush_cmplt_o,
   output       mc2_req_flush_e, mc2_req_flush_o,
   input        mc2_rsp_flush_cmplt_e, mc2_rsp_flush_cmplt_o,
   output       mc3_req_flush_e, mc3_req_flush_o,
   input        mc3_rsp_flush_cmplt_e, mc3_rsp_flush_cmplt_o,
   output       mc4_req_flush_e, mc4_req_flush_o,
   input        mc4_rsp_flush_cmplt_e, mc4_rsp_flush_cmplt_o,
   output       mc5_req_flush_e, mc5_req_flush_o,
   input        mc5_rsp_flush_cmplt_e, mc5_rsp_flush_cmplt_o,
   output       mc6_req_flush_e, mc6_req_flush_o,
   input        mc6_rsp_flush_cmplt_e, mc6_rsp_flush_cmplt_o,
   output       mc7_req_flush_e, mc7_req_flush_o,
   input        mc7_rsp_flush_cmplt_e, mc7_rsp_flush_cmplt_o,

   //
   // AE-to-AE Interface not used
   //

   //
   // Management/Debug Interface
   //
   input  [3:0]     cae_ring_ctl_in,
   input  [15:0]    cae_ring_data_in,
   output [3:0]     cae_ring_ctl_out,
   output [15:0]    cae_ring_data_out,

   input        csr_31_31_intlv_dis
);

initial $display("starting cae personality aeid:%d\n", i_aeid);

`include "pdk_fpga_param.vh"

   //
   // Local clock generation
   //
   (* KEEP = "true" *) wire reset_per;
   cae_clock clock (
      .clk(clk),
      .i_reset(i_reset),
      .ppll_reset(ppll_reset),

      .clk_per(clk_per),
      .ppll_locked(ppll_locked),
      .reset_per(reset_per)
   );


     //
     // Instruction decode
     //
     wire [4:0]   inst_caep;
     wire [17:0]  inst_aeg_idx;
     instdec dec (
        .cae_inst(cae_inst),
        .cae_data(cae_data),
        .cae_inst_vld(cae_inst_vld),

        .inst_val(inst_val),
        .inst_caep(inst_caep),
        .inst_aeg_wr(inst_aeg_wr),
        .inst_aeg_rd(inst_aeg_rd),
        .inst_aeg_idx(inst_aeg_idx),
        .err_unimpl(err_unimpl)
    );


   //**************************************************************************
   //              PERSONALITY SPECIFIC LOGIC
   //**************************************************************************

   //
   // AEG[0..NA-1] Registers
   //
    localparam NA = 51;
    localparam NB = 6;       // Number of bits to represent NAEG

    assign cae_aeg_cnt = NA;

    //output of aeg registers
    wire [63:0]  w_aeg[NA-1:0];

		// Grayscale conversion registers
		wire gs_enable;
		wire gs_idle;
		wire gs_done;
		wire sb_enable;
		wire sb_idle;
		wire sb_done;

    genvar g;
    generate for (g=0; g<NA; g=g+1) begin : g0
      reg [63:0] c_aeg, r_aeg;

      always @* begin
        case (g)
//TODO: add cases for registers to be written to
            default: c_aeg = r_aeg;
        endcase
      end

      wire c_aeg_we = inst_aeg_wr && inst_aeg_idx[NB-1:0] == g;

      always @(posedge clk) begin
        if (c_aeg_we) begin
            r_aeg <= cae_data;
            $display("writing: %x", cae_data);
        end
        else
            r_aeg <= c_aeg;
        end
      assign w_aeg[g] = r_aeg;
    end endgenerate

   reg      r_ret_val, r_err_unimpl, r_err_aegidx;
   reg [63:0]   r_ret_data;

   wire c_val_aegidx = inst_aeg_idx < NA;

    //return logic
   always @(posedge clk) begin
      r_ret_val    <= inst_aeg_rd && c_val_aegidx;
      r_ret_data   <= w_aeg[inst_aeg_idx[NB-1:0]];
      r_err_aegidx <= (inst_aeg_wr || inst_aeg_rd) && !c_val_aegidx;
//TODO: add logic to decide which instructions are implemented
      r_err_unimpl <= err_unimpl || (inst_val && (inst_caep !== 'd0/* && inst_caep !== 'd1 && inst_caep !== 'd2*/));
   end
   assign cae_ret_data_vld = r_ret_val;
   assign cae_ret_data     = r_ret_data;

   assign cae_exception[1:0] = {r_err_aegidx, r_err_unimpl};

   // ISE can have issues with global wires attached to D(flop)/I(lut) inputs
   wire r_reset;
   FDSE rst (.C(clk_per),.S(reset_per),.CE(r_reset),.D(!r_reset),.Q(r_reset));

   //logic for using cae IMPORTANT. cae_idle should be 0 when executing a custom instruction and 1 otherwise.
   //cae_stall should be 1 when when exectuting a custom instruction and 0 otherwise.
   // assign cae_idle  = 1'b1;
   // assign cae_stall = 1'b0;
	 wire c_caep00, c_caep01;
	 reg r_caep00, r_caep01;
	 assign c_caep00 = inst_caep == 5'd0 && inst_val;
	 assign c_caep01 = inst_caep == 5'd1 && inst_val;
	 always @(posedge clk) begin
	 	r_caep00 <= c_caep00;
		r_caep01 <= c_caep01;
	 end
	 assign cae_idle = !r_caep00 && gs_idle && sb_idle;
	 assign cae_stall = c_caep00 || r_caep00 || !gs_idle || !sb_idle;


	//
	// default state
	//
	assign cae_ring_ctl_out = cae_ring_ctl_in;
	assign cae_ring_data_out = cae_ring_data_in;

  reg en_gs, en_sb;
	always @(posedge clk_per) begin
      if(inst_caep == 5'd0 && inst_val) begin
          //TODO: add start logic for custom instruction
          //TODO: if more than one cycle long add cae_idle and cae_stall logic
          $display("@simulation: Hello World from simulated ae%d", i_aeid);
					en_gs = 1'b1;
					en_sb = 1'b0;
          $display("@simulation: Grayscale module enabled!");
      end
			// check if caep01 here
	 else if (inst_caep == 5'd1 && inst_val) begin
          $display("@simulation: Hello World from simulated ae%d", i_aeid);
					en_gs = 1'b0;
					en_sb = 1'b1;
          $display("@simulation: Sobel module enabled!");
	 end
	 else
		begin
			en_gs = 1'b0;
			en_sb = 1'b0;
	 end
  end
	assign gs_enable = en_gs;
	assign sb_enable = en_sb;

	// Instantiating the grayscale module
	wire [63:0] in_addr;
	wire [63:0] out_addr;
	wire [63:0] img_rows;
	wire [63:0] img_cols;
	wire [63:0] img_size;
	assign in_addr = w_aeg[0];
	assign out_addr = w_aeg[1];
	assign img_rows = w_aeg[2];
	assign img_cols = w_aeg[3];
	assign img_size = w_aeg[4];

	// MC0 even request port signals
	wire gs_mc0_req_ld_e;
	wire gs_mc0_req_st_e;
	wire [1:0] gs_mc0_req_size_e;
	wire [47:0] gs_mc0_req_vadr_e;
	wire [63:0] gs_mc0_req_wrd_rdctl_e;
	wire gs_mc0_req_flush_e;
	wire gs_mc0_rd_rq_stall_e;
	wire gs_mc0_wr_rq_stall_e;
	// MC0 even response port signals
	wire gs_mc0_rsp_push_e;
	wire gs_mc0_rsp_stall_e;
	wire [63:0] gs_mc0_rsp_data_e;
	wire [31:0] gs_mc0_rsp_rdctl_e;
	// MC0 odd request port signals
	wire gs_mc0_req_ld_o;
	wire gs_mc0_req_st_o;
	wire [1:0] gs_mc0_req_size_o;
	wire [47:0] gs_mc0_req_vadr_o;
	wire [63:0] gs_mc0_req_wrd_rdctl_o;
	wire gs_mc0_req_flush_o;
	wire gs_mc0_rd_rq_stall_o;
	wire gs_mc0_wr_rq_stall_o;
	// MC0 odd response port signals
	wire gs_mc0_rsp_push_o;
	wire gs_mc0_rsp_stall_o;
	wire [63:0] gs_mc0_rsp_data_o;
	wire [31:0] gs_mc0_rsp_rdctl_o;
	// MC1 even request port signals
	wire gs_mc1_req_ld_e;
	wire gs_mc1_req_st_e;
	wire [1:0] gs_mc1_req_size_e;
	wire [47:0] gs_mc1_req_vadr_e;
	wire [63:0] gs_mc1_req_wrd_rdctl_e;
	wire gs_mc1_req_flush_e;
	wire gs_mc1_rd_rq_stall_e;
	wire gs_mc1_wr_rq_stall_e;
	// MC1 even response port signals
	wire gs_mc1_rsp_push_e;
	wire gs_mc1_rsp_stall_e;
	wire [63:0] gs_mc1_rsp_data_e;
	wire [31:0] gs_mc1_rsp_rdctl_e;
	// MC1 odd request port signals
	wire gs_mc1_req_ld_o;
	wire gs_mc1_req_st_o;
	wire [1:0] gs_mc1_req_size_o;
	wire [47:0] gs_mc1_req_vadr_o;
	wire [63:0] gs_mc1_req_wrd_rdctl_o;
	wire gs_mc1_req_flush_o;
	wire gs_mc1_rd_rq_stall_o;
	wire gs_mc1_wr_rq_stall_o;
	// MC1 odd response port signals
	wire gs_mc1_rsp_push_o;
	wire gs_mc1_rsp_stall_o;
	wire [63:0] gs_mc1_rsp_data_o;
	wire [31:0] gs_mc1_rsp_rdctl_o;
	// MC2 even request port signals
	wire gs_mc2_req_ld_e;
	wire gs_mc2_req_st_e;
	wire [1:0] gs_mc2_req_size_e;
	wire [47:0] gs_mc2_req_vadr_e;
	wire [63:0] gs_mc2_req_wrd_rdctl_e;
	wire gs_mc2_req_flush_e;
	wire gs_mc2_rd_rq_stall_e;
	wire gs_mc2_wr_rq_stall_e;
	// MC2 even response port signals
	wire gs_mc2_rsp_push_e;
	wire gs_mc2_rsp_stall_e;
	wire [63:0] gs_mc2_rsp_data_e;
	wire [31:0] gs_mc2_rsp_rdctl_e;
	// MC2 odd request port signals
	wire gs_mc2_req_ld_o;
	wire gs_mc2_req_st_o;
	wire [1:0] gs_mc2_req_size_o;
	wire [47:0] gs_mc2_req_vadr_o;
	wire [63:0] gs_mc2_req_wrd_rdctl_o;
	wire gs_mc2_req_flush_o;
	wire gs_mc2_rd_rq_stall_o;
	wire gs_mc2_wr_rq_stall_o;
	// MC2 odd response port signals
	wire gs_mc2_rsp_push_o;
	wire gs_mc2_rsp_stall_o;
	wire [63:0] gs_mc2_rsp_data_o;
	wire [31:0] gs_mc2_rsp_rdctl_o;
	// MC3 even request port signals
	wire gs_mc3_req_ld_e;
	wire gs_mc3_req_st_e;
	wire [1:0] gs_mc3_req_size_e;
	wire [47:0] gs_mc3_req_vadr_e;
	wire [63:0] gs_mc3_req_wrd_rdctl_e;
	wire gs_mc3_req_flush_e;
	wire gs_mc3_rd_rq_stall_e;
	wire gs_mc3_wr_rq_stall_e;
	// MC3 even response port signals
	wire gs_mc3_rsp_push_e;
	wire gs_mc3_rsp_stall_e;
	wire [63:0] gs_mc3_rsp_data_e;
	wire [31:0] gs_mc3_rsp_rdctl_e;
	// MC3 odd request port signals
	wire gs_mc3_req_ld_o;
	wire gs_mc3_req_st_o;
	wire [1:0] gs_mc3_req_size_o;
	wire [47:0] gs_mc3_req_vadr_o;
	wire [63:0] gs_mc3_req_wrd_rdctl_o;
	wire gs_mc3_req_flush_o;
	wire gs_mc3_rd_rq_stall_o;
	wire gs_mc3_wr_rq_stall_o;
	// MC3 odd response port signals
	wire gs_mc3_rsp_push_o;
	wire gs_mc3_rsp_stall_o;
	wire [63:0] gs_mc3_rsp_data_o;
	wire [31:0] gs_mc3_rsp_rdctl_o;
	// MC4 even request port signals
	wire gs_mc4_req_ld_e;
	wire gs_mc4_req_st_e;
	wire [1:0] gs_mc4_req_size_e;
	wire [47:0] gs_mc4_req_vadr_e;
	wire [63:0] gs_mc4_req_wrd_rdctl_e;
	wire gs_mc4_req_flush_e;
	wire gs_mc4_rd_rq_stall_e;
	wire gs_mc4_wr_rq_stall_e;
	// MC4 even response port signals
	wire gs_mc4_rsp_push_e;
	wire gs_mc4_rsp_stall_e;
	wire [63:0] gs_mc4_rsp_data_e;
	wire [31:0] gs_mc4_rsp_rdctl_e;
	// MC4 odd request port signals
	wire gs_mc4_req_ld_o;
	wire gs_mc4_req_st_o;
	wire [1:0] gs_mc4_req_size_o;
	wire [47:0] gs_mc4_req_vadr_o;
	wire [63:0] gs_mc4_req_wrd_rdctl_o;
	wire gs_mc4_req_flush_o;
	wire gs_mc4_rd_rq_stall_o;
	wire gs_mc4_wr_rq_stall_o;
	// MC4 odd response port signals
	wire gs_mc4_rsp_push_o;
	wire gs_mc4_rsp_stall_o;
	wire [63:0] gs_mc4_rsp_data_o;
	wire [31:0] gs_mc4_rsp_rdctl_o;
	// MC5 even request port signals
	wire gs_mc5_req_ld_e;
	wire gs_mc5_req_st_e;
	wire [1:0] gs_mc5_req_size_e;
	wire [47:0] gs_mc5_req_vadr_e;
	wire [63:0] gs_mc5_req_wrd_rdctl_e;
	wire gs_mc5_req_flush_e;
	wire gs_mc5_rd_rq_stall_e;
	wire gs_mc5_wr_rq_stall_e;
	// MC5 even response port signals
	wire gs_mc5_rsp_push_e;
	wire gs_mc5_rsp_stall_e;
	wire [63:0] gs_mc5_rsp_data_e;
	wire [31:0] gs_mc5_rsp_rdctl_e;
	// MC5 odd request port signals
	wire gs_mc5_req_ld_o;
	wire gs_mc5_req_st_o;
	wire [1:0] gs_mc5_req_size_o;
	wire [47:0] gs_mc5_req_vadr_o;
	wire [63:0] gs_mc5_req_wrd_rdctl_o;
	wire gs_mc5_req_flush_o;
	wire gs_mc5_rd_rq_stall_o;
	wire gs_mc5_wr_rq_stall_o;
	// MC5 odd response port signals
	wire gs_mc5_rsp_push_o;
	wire gs_mc5_rsp_stall_o;
	wire [63:0] gs_mc5_rsp_data_o;
	wire [31:0] gs_mc5_rsp_rdctl_o;
	// MC6 even request port signals
	wire gs_mc6_req_ld_e;
	wire gs_mc6_req_st_e;
	wire [1:0] gs_mc6_req_size_e;
	wire [47:0] gs_mc6_req_vadr_e;
	wire [63:0] gs_mc6_req_wrd_rdctl_e;
	wire gs_mc6_req_flush_e;
	wire gs_mc6_rd_rq_stall_e;
	wire gs_mc6_wr_rq_stall_e;
	// MC6 even response port signals
	wire gs_mc6_rsp_push_e;
	wire gs_mc6_rsp_stall_e;
	wire [63:0] gs_mc6_rsp_data_e;
	wire [31:0] gs_mc6_rsp_rdctl_e;
	// MC6 odd request port signals
	wire gs_mc6_req_ld_o;
	wire gs_mc6_req_st_o;
	wire [1:0] gs_mc6_req_size_o;
	wire [47:0] gs_mc6_req_vadr_o;
	wire [63:0] gs_mc6_req_wrd_rdctl_o;
	wire gs_mc6_req_flush_o;
	wire gs_mc6_rd_rq_stall_o;
	wire gs_mc6_wr_rq_stall_o;
	// MC6 odd response port signals
	wire gs_mc6_rsp_push_o;
	wire gs_mc6_rsp_stall_o;
	wire [63:0] gs_mc6_rsp_data_o;
	wire [31:0] gs_mc6_rsp_rdctl_o;
	// MC7 even request port signals
	wire gs_mc7_req_ld_e;
	wire gs_mc7_req_st_e;
	wire [1:0] gs_mc7_req_size_e;
	wire [47:0] gs_mc7_req_vadr_e;
	wire [63:0] gs_mc7_req_wrd_rdctl_e;
	wire gs_mc7_req_flush_e;
	wire gs_mc7_rd_rq_stall_e;
	wire gs_mc7_wr_rq_stall_e;
	// MC7 even response port signals
	wire gs_mc7_rsp_push_e;
	wire gs_mc7_rsp_stall_e;
	wire [63:0] gs_mc7_rsp_data_e;
	wire [31:0] gs_mc7_rsp_rdctl_e;
	// MC7 odd request port signals
	wire gs_mc7_req_ld_o;
	wire gs_mc7_req_st_o;
	wire [1:0] gs_mc7_req_size_o;
	wire [47:0] gs_mc7_req_vadr_o;
	wire [63:0] gs_mc7_req_wrd_rdctl_o;
	wire gs_mc7_req_flush_o;
	wire gs_mc7_rd_rq_stall_o;
	wire gs_mc7_wr_rq_stall_o;
	// MC7 odd response port signals
	wire gs_mc7_rsp_push_o;
	wire gs_mc7_rsp_stall_o;
	wire [63:0] gs_mc7_rsp_data_o;
	wire [31:0] gs_mc7_rsp_rdctl_o;

	grayscale_ctrl grayscale_ctrl_inst (
		.clk (clk_per), // in
		.reset (reset_per), // in
		.enable (gs_enable), // in
		.idle (gs_idle), // out
		.done (gs_done), // out
		.in_addr (in_addr), // in
		.out_addr (out_addr), // in
		.img_rows (img_rows), // in
		.img_cols (img_cols), // in
		.mc0_req_ld_e (gs_mc0_req_ld_e), // out
		.mc0_req_st_e (gs_mc0_req_st_e), // out
		.mc0_req_size_e (gs_mc0_req_size_e), // out
		.mc0_req_vadr_e (gs_mc0_req_vadr_e), // out
		.mc0_req_wrd_rdctl_e (gs_mc0_req_wrd_rdctl_e), // out
		.mc0_req_flush_e (gs_mc0_req_flush_e), // out
		.mc0_rd_rq_stall_e (mc0_rd_rq_stall_e), // in
		.mc0_wr_rq_stall_e (mc0_wr_rq_stall_e), // in
		.mc0_rsp_push_e (mc0_rsp_push_e), // in
		.mc0_rsp_stall_e (gs_mc0_rsp_stall_e), // out
		.mc0_rsp_data_e (mc0_rsp_data_e), // in
		.mc0_rsp_rdctl_e (mc0_rsp_rdctl_e), // in
		.mc0_req_ld_o (gs_mc0_req_ld_o), // out
		.mc0_req_st_o (gs_mc0_req_st_o), // out
		.mc0_req_size_o (gs_mc0_req_size_o), // out
		.mc0_req_vadr_o (gs_mc0_req_vadr_o), // out
		.mc0_req_wrd_rdctl_o (gs_mc0_req_wrd_rdctl_o), // out
		.mc0_req_flush_o (gs_mc0_req_flush_o), // out
		.mc0_rd_rq_stall_o (mc0_rd_rq_stall_o), // in
		.mc0_wr_rq_stall_o (mc0_wr_rq_stall_o), // in
		.mc0_rsp_push_o (mc0_rsp_push_o), // in
		.mc0_rsp_stall_o (gs_mc0_rsp_stall_o), // out
		.mc0_rsp_data_o (mc0_rsp_data_o), // in
		.mc0_rsp_rdctl_o (mc0_rsp_rdctl_o), // in
		.mc1_req_ld_e (gs_mc1_req_ld_e), // out
		.mc1_req_st_e (gs_mc1_req_st_e), // out
		.mc1_req_size_e (gs_mc1_req_size_e), // out
		.mc1_req_vadr_e (gs_mc1_req_vadr_e), // out
		.mc1_req_wrd_rdctl_e (gs_mc1_req_wrd_rdctl_e), // out
		.mc1_req_flush_e (gs_mc1_req_flush_e), // out
		.mc1_rd_rq_stall_e (mc1_rd_rq_stall_e), // in
		.mc1_wr_rq_stall_e (mc1_wr_rq_stall_e), // in
		.mc1_rsp_push_e (mc1_rsp_push_e), // in
		.mc1_rsp_stall_e (gs_mc1_rsp_stall_e), // out
		.mc1_rsp_data_e (mc1_rsp_data_e), // in
		.mc1_rsp_rdctl_e (mc1_rsp_rdctl_e), // in
		.mc1_req_ld_o (gs_mc1_req_ld_o), // out
		.mc1_req_st_o (gs_mc1_req_st_o), // out
		.mc1_req_size_o (gs_mc1_req_size_o), // out
		.mc1_req_vadr_o (gs_mc1_req_vadr_o), // out
		.mc1_req_wrd_rdctl_o (gs_mc1_req_wrd_rdctl_o), // out
		.mc1_req_flush_o (gs_mc1_req_flush_o), // out
		.mc1_rd_rq_stall_o (mc1_rd_rq_stall_o), // in
		.mc1_wr_rq_stall_o (mc1_wr_rq_stall_o), // in
		.mc1_rsp_push_o (mc1_rsp_push_o), // in
		.mc1_rsp_stall_o (gs_mc1_rsp_stall_o), // out
		.mc1_rsp_data_o (mc1_rsp_data_o), // in
		.mc1_rsp_rdctl_o (mc1_rsp_rdctl_o), // in
		.mc2_req_ld_e (gs_mc2_req_ld_e), // out
		.mc2_req_st_e (gs_mc2_req_st_e), // out
		.mc2_req_size_e (gs_mc2_req_size_e), // out
		.mc2_req_vadr_e (gs_mc2_req_vadr_e), // out
		.mc2_req_wrd_rdctl_e (gs_mc2_req_wrd_rdctl_e), // out
		.mc2_req_flush_e (gs_mc2_req_flush_e), // out
		.mc2_rd_rq_stall_e (mc2_rd_rq_stall_e), // in
		.mc2_wr_rq_stall_e (mc2_wr_rq_stall_e), // in
		.mc2_rsp_push_e (mc2_rsp_push_e), // in
		.mc2_rsp_stall_e (gs_mc2_rsp_stall_e), // out
		.mc2_rsp_data_e (mc2_rsp_data_e), // in
		.mc2_rsp_rdctl_e (mc2_rsp_rdctl_e), // in
		.mc2_req_ld_o (gs_mc2_req_ld_o), // out
		.mc2_req_st_o (gs_mc2_req_st_o), // out
		.mc2_req_size_o (gs_mc2_req_size_o), // out
		.mc2_req_vadr_o (gs_mc2_req_vadr_o), // out
		.mc2_req_wrd_rdctl_o (gs_mc2_req_wrd_rdctl_o), // out
		.mc2_req_flush_o (gs_mc2_req_flush_o), // out
		.mc2_rd_rq_stall_o (mc2_rd_rq_stall_o), // in
		.mc2_wr_rq_stall_o (mc2_wr_rq_stall_o), // in
		.mc2_rsp_push_o (mc2_rsp_push_o), // in
		.mc2_rsp_stall_o (gs_mc2_rsp_stall_o), // out
		.mc2_rsp_data_o (mc2_rsp_data_o), // in
		.mc2_rsp_rdctl_o (mc2_rsp_rdctl_o), // in
		.mc3_req_ld_e (gs_mc3_req_ld_e), // out
		.mc3_req_st_e (gs_mc3_req_st_e), // out
		.mc3_req_size_e (gs_mc3_req_size_e), // out
		.mc3_req_vadr_e (gs_mc3_req_vadr_e), // out
		.mc3_req_wrd_rdctl_e (gs_mc3_req_wrd_rdctl_e), // out
		.mc3_req_flush_e (gs_mc3_req_flush_e), // out
		.mc3_rd_rq_stall_e (mc3_rd_rq_stall_e), // in
		.mc3_wr_rq_stall_e (mc3_wr_rq_stall_e), // in
		.mc3_rsp_push_e (mc3_rsp_push_e), // in
		.mc3_rsp_stall_e (gs_mc3_rsp_stall_e), // out
		.mc3_rsp_data_e (mc3_rsp_data_e), // in
		.mc3_rsp_rdctl_e (mc3_rsp_rdctl_e), // in
		.mc3_req_ld_o (gs_mc3_req_ld_o), // out
		.mc3_req_st_o (gs_mc3_req_st_o), // out
		.mc3_req_size_o (gs_mc3_req_size_o), // out
		.mc3_req_vadr_o (gs_mc3_req_vadr_o), // out
		.mc3_req_wrd_rdctl_o (gs_mc3_req_wrd_rdctl_o), // out
		.mc3_req_flush_o (gs_mc3_req_flush_o), // out
		.mc3_rd_rq_stall_o (mc3_rd_rq_stall_o), // in
		.mc3_wr_rq_stall_o (mc3_wr_rq_stall_o), // in
		.mc3_rsp_push_o (mc3_rsp_push_o), // in
		.mc3_rsp_stall_o (gs_mc3_rsp_stall_o), // out
		.mc3_rsp_data_o (mc3_rsp_data_o), // in
		.mc3_rsp_rdctl_o (mc3_rsp_rdctl_o), // in
		.mc4_req_ld_e (gs_mc4_req_ld_e), // out
		.mc4_req_st_e (gs_mc4_req_st_e), // out
		.mc4_req_size_e (gs_mc4_req_size_e), // out
		.mc4_req_vadr_e (gs_mc4_req_vadr_e), // out
		.mc4_req_wrd_rdctl_e (gs_mc4_req_wrd_rdctl_e), // out
		.mc4_req_flush_e (gs_mc4_req_flush_e), // out
		.mc4_rd_rq_stall_e (mc4_rd_rq_stall_e), // in
		.mc4_wr_rq_stall_e (mc4_wr_rq_stall_e), // in
		.mc4_rsp_push_e (mc4_rsp_push_e), // in
		.mc4_rsp_stall_e (gs_mc4_rsp_stall_e), // out
		.mc4_rsp_data_e (mc4_rsp_data_e), // in
		.mc4_rsp_rdctl_e (mc4_rsp_rdctl_e), // in
		.mc4_req_ld_o (gs_mc4_req_ld_o), // out
		.mc4_req_st_o (gs_mc4_req_st_o), // out
		.mc4_req_size_o (gs_mc4_req_size_o), // out
		.mc4_req_vadr_o (gs_mc4_req_vadr_o), // out
		.mc4_req_wrd_rdctl_o (gs_mc4_req_wrd_rdctl_o), // out
		.mc4_req_flush_o (gs_mc4_req_flush_o), // out
		.mc4_rd_rq_stall_o (mc4_rd_rq_stall_o), // in
		.mc4_wr_rq_stall_o (mc4_wr_rq_stall_o), // in
		.mc4_rsp_push_o (mc4_rsp_push_o), // in
		.mc4_rsp_stall_o (gs_mc4_rsp_stall_o), // out
		.mc4_rsp_data_o (mc4_rsp_data_o), // in
		.mc4_rsp_rdctl_o (mc4_rsp_rdctl_o), // in
		.mc5_req_ld_e (gs_mc5_req_ld_e), // out
		.mc5_req_st_e (gs_mc5_req_st_e), // out
		.mc5_req_size_e (gs_mc5_req_size_e), // out
		.mc5_req_vadr_e (gs_mc5_req_vadr_e), // out
		.mc5_req_wrd_rdctl_e (gs_mc5_req_wrd_rdctl_e), // out
		.mc5_req_flush_e (gs_mc5_req_flush_e), // out
		.mc5_rd_rq_stall_e (mc5_rd_rq_stall_e), // in
		.mc5_wr_rq_stall_e (mc5_wr_rq_stall_e), // in
		.mc5_rsp_push_e (mc5_rsp_push_e), // in
		.mc5_rsp_stall_e (gs_mc5_rsp_stall_e), // out
		.mc5_rsp_data_e (mc5_rsp_data_e), // in
		.mc5_rsp_rdctl_e (mc5_rsp_rdctl_e), // in
		.mc5_req_ld_o (gs_mc5_req_ld_o), // out
		.mc5_req_st_o (gs_mc5_req_st_o), // out
		.mc5_req_size_o (gs_mc5_req_size_o), // out
		.mc5_req_vadr_o (gs_mc5_req_vadr_o), // out
		.mc5_req_wrd_rdctl_o (gs_mc5_req_wrd_rdctl_o), // out
		.mc5_req_flush_o (gs_mc5_req_flush_o), // out
		.mc5_rd_rq_stall_o (mc5_rd_rq_stall_o), // in
		.mc5_wr_rq_stall_o (mc5_wr_rq_stall_o), // in
		.mc5_rsp_push_o (mc5_rsp_push_o), // in
		.mc5_rsp_stall_o (gs_mc5_rsp_stall_o), // out
		.mc5_rsp_data_o (mc5_rsp_data_o), // in
		.mc5_rsp_rdctl_o (mc5_rsp_rdctl_o), // in
		.mc6_req_ld_e (gs_mc6_req_ld_e), // out
		.mc6_req_st_e (gs_mc6_req_st_e), // out
		.mc6_req_size_e (gs_mc6_req_size_e), // out
		.mc6_req_vadr_e (gs_mc6_req_vadr_e), // out
		.mc6_req_wrd_rdctl_e (gs_mc6_req_wrd_rdctl_e), // out
		.mc6_req_flush_e (gs_mc6_req_flush_e), // out
		.mc6_rd_rq_stall_e (mc6_rd_rq_stall_e), // in
		.mc6_wr_rq_stall_e (mc6_wr_rq_stall_e), // in
		.mc6_rsp_push_e (mc6_rsp_push_e), // in
		.mc6_rsp_stall_e (gs_mc6_rsp_stall_e), // out
		.mc6_rsp_data_e (mc6_rsp_data_e), // in
		.mc6_rsp_rdctl_e (mc6_rsp_rdctl_e), // in
		.mc6_req_ld_o (gs_mc6_req_ld_o), // out
		.mc6_req_st_o (gs_mc6_req_st_o), // out
		.mc6_req_size_o (gs_mc6_req_size_o), // out
		.mc6_req_vadr_o (gs_mc6_req_vadr_o), // out
		.mc6_req_wrd_rdctl_o (gs_mc6_req_wrd_rdctl_o), // out
		.mc6_req_flush_o (gs_mc6_req_flush_o), // out
		.mc6_rd_rq_stall_o (mc6_rd_rq_stall_o), // in
		.mc6_wr_rq_stall_o (mc6_wr_rq_stall_o), // in
		.mc6_rsp_push_o (mc6_rsp_push_o), // in
		.mc6_rsp_stall_o (gs_mc6_rsp_stall_o), // out
		.mc6_rsp_data_o (mc6_rsp_data_o), // in
		.mc6_rsp_rdctl_o (mc6_rsp_rdctl_o), // in
		.mc7_req_ld_e (gs_mc7_req_ld_e), // out
		.mc7_req_st_e (gs_mc7_req_st_e), // out
		.mc7_req_size_e (gs_mc7_req_size_e), // out
		.mc7_req_vadr_e (gs_mc7_req_vadr_e), // out
		.mc7_req_wrd_rdctl_e (gs_mc7_req_wrd_rdctl_e), // out
		.mc7_req_flush_e (gs_mc7_req_flush_e), // out
		.mc7_rd_rq_stall_e (mc7_rd_rq_stall_e), // in
		.mc7_wr_rq_stall_e (mc7_wr_rq_stall_e), // in
		.mc7_rsp_push_e (mc7_rsp_push_e), // in
		.mc7_rsp_stall_e (gs_mc7_rsp_stall_e), // out
		.mc7_rsp_data_e (mc7_rsp_data_e), // in
		.mc7_rsp_rdctl_e (mc7_rsp_rdctl_e), // in
		.mc7_req_ld_o (gs_mc7_req_ld_o), // out
		.mc7_req_st_o (gs_mc7_req_st_o), // out
		.mc7_req_size_o (gs_mc7_req_size_o), // out
		.mc7_req_vadr_o (gs_mc7_req_vadr_o), // out
		.mc7_req_wrd_rdctl_o (gs_mc7_req_wrd_rdctl_o), // out
		.mc7_req_flush_o (gs_mc7_req_flush_o), // out
		.mc7_rd_rq_stall_o (mc7_rd_rq_stall_o), // in
		.mc7_wr_rq_stall_o (mc7_wr_rq_stall_o), // in
		.mc7_rsp_push_o (mc7_rsp_push_o), // in
		.mc7_rsp_stall_o (gs_mc7_rsp_stall_o), // out
		.mc7_rsp_data_o (mc7_rsp_data_o), // in
		.mc7_rsp_rdctl_o (mc7_rsp_rdctl_o) // in
	);
	
	 // MC0 even request port signals
	wire sb_mc0_req_ld_e;
	wire sb_mc0_req_st_e;
	wire [1:0] sb_mc0_req_size_e;
	wire [47:0] sb_mc0_req_vadr_e;
	wire [63:0] sb_mc0_req_wrd_rdctl_e;
	wire sb_mc0_req_flush_e;
	wire sb_mc0_rd_rq_stall_e;
	wire sb_mc0_wr_rq_stall_e;
	// MC0 even response port signals
	wire sb_mc0_rsp_push_e;
	wire sb_mc0_rsp_stall_e;
	wire [63:0] sb_mc0_rsp_data_e;
	wire [31:0] sb_mc0_rsp_rdctl_e;
	// MC0 odd request port signals
	wire sb_mc0_req_ld_o;
	wire sb_mc0_req_st_o;
	wire [1:0] sb_mc0_req_size_o;
	wire [47:0] sb_mc0_req_vadr_o;
	wire [63:0] sb_mc0_req_wrd_rdctl_o;
	wire sb_mc0_req_flush_o;
	wire sb_mc0_rd_rq_stall_o;
	wire sb_mc0_wr_rq_stall_o;
	// MC0 odd response port signals
	wire sb_mc0_rsp_push_o;
	wire sb_mc0_rsp_stall_o;
	wire [63:0] sb_mc0_rsp_data_o;
	wire [31:0] sb_mc0_rsp_rdctl_o;
	// MC1 even request port signals
	wire sb_mc1_req_ld_e;
	wire sb_mc1_req_st_e;
	wire [1:0] sb_mc1_req_size_e;
	wire [47:0] sb_mc1_req_vadr_e;
	wire [63:0] sb_mc1_req_wrd_rdctl_e;
	wire sb_mc1_req_flush_e;
	wire sb_mc1_rd_rq_stall_e;
	wire sb_mc1_wr_rq_stall_e;
	// MC1 even response port signals
	wire sb_mc1_rsp_push_e;
	wire sb_mc1_rsp_stall_e;
	wire [63:0] sb_mc1_rsp_data_e;
	wire [31:0] sb_mc1_rsp_rdctl_e;
	// MC1 odd request port signals
	wire sb_mc1_req_ld_o;
	wire sb_mc1_req_st_o;
	wire [1:0] sb_mc1_req_size_o;
	wire [47:0] sb_mc1_req_vadr_o;
	wire [63:0] sb_mc1_req_wrd_rdctl_o;
	wire sb_mc1_req_flush_o;
	wire sb_mc1_rd_rq_stall_o;
	wire sb_mc1_wr_rq_stall_o;
	// MC1 odd response port signals
	wire sb_mc1_rsp_push_o;
	wire sb_mc1_rsp_stall_o;
	wire [63:0] sb_mc1_rsp_data_o;
	wire [31:0] sb_mc1_rsp_rdctl_o;
	// MC2 even request port signals
	wire sb_mc2_req_ld_e;
	wire sb_mc2_req_st_e;
	wire [1:0] sb_mc2_req_size_e;
	wire [47:0] sb_mc2_req_vadr_e;
	wire [63:0] sb_mc2_req_wrd_rdctl_e;
	wire sb_mc2_req_flush_e;
	wire sb_mc2_rd_rq_stall_e;
	wire sb_mc2_wr_rq_stall_e;
	// MC2 even response port signals
	wire sb_mc2_rsp_push_e;
	wire sb_mc2_rsp_stall_e;
	wire [63:0] sb_mc2_rsp_data_e;
	wire [31:0] sb_mc2_rsp_rdctl_e;
	// MC2 odd request port signals
	wire sb_mc2_req_ld_o;
	wire sb_mc2_req_st_o;
	wire [1:0] sb_mc2_req_size_o;
	wire [47:0] sb_mc2_req_vadr_o;
	wire [63:0] sb_mc2_req_wrd_rdctl_o;
	wire sb_mc2_req_flush_o;
	wire sb_mc2_rd_rq_stall_o;
	wire sb_mc2_wr_rq_stall_o;
	// MC2 odd response port signals
	wire sb_mc2_rsp_push_o;
	wire sb_mc2_rsp_stall_o;
	wire [63:0] sb_mc2_rsp_data_o;
	wire [31:0] sb_mc2_rsp_rdctl_o;
	// MC3 even request port signals
	wire sb_mc3_req_ld_e;
	wire sb_mc3_req_st_e;
	wire [1:0] sb_mc3_req_size_e;
	wire [47:0] sb_mc3_req_vadr_e;
	wire [63:0] sb_mc3_req_wrd_rdctl_e;
	wire sb_mc3_req_flush_e;
	wire sb_mc3_rd_rq_stall_e;
	wire sb_mc3_wr_rq_stall_e;
	// MC3 even response port signals
	wire sb_mc3_rsp_push_e;
	wire sb_mc3_rsp_stall_e;
	wire [63:0] sb_mc3_rsp_data_e;
	wire [31:0] sb_mc3_rsp_rdctl_e;
	// MC3 odd request port signals
	wire sb_mc3_req_ld_o;
	wire sb_mc3_req_st_o;
	wire [1:0] sb_mc3_req_size_o;
	wire [47:0] sb_mc3_req_vadr_o;
	wire [63:0] sb_mc3_req_wrd_rdctl_o;
	wire sb_mc3_req_flush_o;
	wire sb_mc3_rd_rq_stall_o;
	wire sb_mc3_wr_rq_stall_o;
	// MC3 odd response port signals
	wire sb_mc3_rsp_push_o;
	wire sb_mc3_rsp_stall_o;
	wire [63:0] sb_mc3_rsp_data_o;
	wire [31:0] sb_mc3_rsp_rdctl_o;
	// MC4 even request port signals
	wire sb_mc4_req_ld_e;
	wire sb_mc4_req_st_e;
	wire [1:0] sb_mc4_req_size_e;
	wire [47:0] sb_mc4_req_vadr_e;
	wire [63:0] sb_mc4_req_wrd_rdctl_e;
	wire sb_mc4_req_flush_e;
	wire sb_mc4_rd_rq_stall_e;
	wire sb_mc4_wr_rq_stall_e;
	// MC4 even response port signals
	wire sb_mc4_rsp_push_e;
	wire sb_mc4_rsp_stall_e;
	wire [63:0] sb_mc4_rsp_data_e;
	wire [31:0] sb_mc4_rsp_rdctl_e;
	// MC4 odd request port signals
	wire sb_mc4_req_ld_o;
	wire sb_mc4_req_st_o;
	wire [1:0] sb_mc4_req_size_o;
	wire [47:0] sb_mc4_req_vadr_o;
	wire [63:0] sb_mc4_req_wrd_rdctl_o;
	wire sb_mc4_req_flush_o;
	wire sb_mc4_rd_rq_stall_o;
	wire sb_mc4_wr_rq_stall_o;
	// MC4 odd response port signals
	wire sb_mc4_rsp_push_o;
	wire sb_mc4_rsp_stall_o;
	wire [63:0] sb_mc4_rsp_data_o;
	wire [31:0] sb_mc4_rsp_rdctl_o;
	// MC5 even request port signals
	wire sb_mc5_req_ld_e;
	wire sb_mc5_req_st_e;
	wire [1:0] sb_mc5_req_size_e;
	wire [47:0] sb_mc5_req_vadr_e;
	wire [63:0] sb_mc5_req_wrd_rdctl_e;
	wire sb_mc5_req_flush_e;
	wire sb_mc5_rd_rq_stall_e;
	wire sb_mc5_wr_rq_stall_e;
	// MC5 even response port signals
	wire sb_mc5_rsp_push_e;
	wire sb_mc5_rsp_stall_e;
	wire [63:0] sb_mc5_rsp_data_e;
	wire [31:0] sb_mc5_rsp_rdctl_e;
	// MC5 odd request port signals
	wire sb_mc5_req_ld_o;
	wire sb_mc5_req_st_o;
	wire [1:0] sb_mc5_req_size_o;
	wire [47:0] sb_mc5_req_vadr_o;
	wire [63:0] sb_mc5_req_wrd_rdctl_o;
	wire sb_mc5_req_flush_o;
	wire sb_mc5_rd_rq_stall_o;
	wire sb_mc5_wr_rq_stall_o;
	// MC5 odd response port signals
	wire sb_mc5_rsp_push_o;
	wire sb_mc5_rsp_stall_o;
	wire [63:0] sb_mc5_rsp_data_o;
	wire [31:0] sb_mc5_rsp_rdctl_o;
	// MC6 even request port signals
	wire sb_mc6_req_ld_e;
	wire sb_mc6_req_st_e;
	wire [1:0] sb_mc6_req_size_e;
	wire [47:0] sb_mc6_req_vadr_e;
	wire [63:0] sb_mc6_req_wrd_rdctl_e;
	wire sb_mc6_req_flush_e;
	wire sb_mc6_rd_rq_stall_e;
	wire sb_mc6_wr_rq_stall_e;
	// MC6 even response port signals
	wire sb_mc6_rsp_push_e;
	wire sb_mc6_rsp_stall_e;
	wire [63:0] sb_mc6_rsp_data_e;
	wire [31:0] sb_mc6_rsp_rdctl_e;
	// MC6 odd request port signals
	wire sb_mc6_req_ld_o;
	wire sb_mc6_req_st_o;
	wire [1:0] sb_mc6_req_size_o;
	wire [47:0] sb_mc6_req_vadr_o;
	wire [63:0] sb_mc6_req_wrd_rdctl_o;
	wire sb_mc6_req_flush_o;
	wire sb_mc6_rd_rq_stall_o;
	wire sb_mc6_wr_rq_stall_o;
	// MC6 odd response port signals
	wire sb_mc6_rsp_push_o;
	wire sb_mc6_rsp_stall_o;
	wire [63:0] sb_mc6_rsp_data_o;
	wire [31:0] sb_mc6_rsp_rdctl_o;
	// MC7 even request port signals
	wire sb_mc7_req_ld_e;
	wire sb_mc7_req_st_e;
	wire [1:0] sb_mc7_req_size_e;
	wire [47:0] sb_mc7_req_vadr_e;
	wire [63:0] sb_mc7_req_wrd_rdctl_e;
	wire sb_mc7_req_flush_e;
	wire sb_mc7_rd_rq_stall_e;
	wire sb_mc7_wr_rq_stall_e;
	// MC7 even response port signals
	wire sb_mc7_rsp_push_e;
	wire sb_mc7_rsp_stall_e;
	wire [63:0] sb_mc7_rsp_data_e;
	wire [31:0] sb_mc7_rsp_rdctl_e;
	// MC7 odd request port signals
	wire sb_mc7_req_ld_o;
	wire sb_mc7_req_st_o;
	wire [1:0] sb_mc7_req_size_o;
	wire [47:0] sb_mc7_req_vadr_o;
	wire [63:0] sb_mc7_req_wrd_rdctl_o;
	wire sb_mc7_req_flush_o;
	wire sb_mc7_rd_rq_stall_o;
	wire sb_mc7_wr_rq_stall_o;
	// MC7 odd response port signals
	wire sb_mc7_rsp_push_o;
	wire sb_mc7_rsp_stall_o;
	wire [63:0] sb_mc7_rsp_data_o;
	wire [31:0] sb_mc7_rsp_rdctl_o;

	osobel_ctrl osobel_inst (
		.clk (clk_per), // in
		.reset (reset_per), // in
		.enable (sb_enable), // in
		.idle (sb_idle), // out
		.done (sb_done), // out
		.in_addr (in_addr), // in
		.out_addr (out_addr),//in
		.img_rows (img_rows), // in
		.img_cols (img_cols), // in
		.mc0_req_ld_e (sb_mc0_req_ld_e), // out
		.mc0_req_st_e (sb_mc0_req_st_e), // out
		.mc0_req_size_e (sb_mc0_req_size_e), // out
		.mc0_req_vadr_e (sb_mc0_req_vadr_e), // out
		.mc0_req_wrd_rdctl_e (sb_mc0_req_wrd_rdctl_e), // out
		.mc0_req_flush_e (sb_mc0_req_flush_e), // out
		.mc0_rd_rq_stall_e (mc0_rd_rq_stall_e), // in
		.mc0_wr_rq_stall_e (mc0_wr_rq_stall_e), // in
		.mc0_rsp_push_e (mc0_rsp_push_e), // in
		.mc0_rsp_stall_e (sb_mc0_rsp_stall_e), // out
		.mc0_rsp_data_e (mc0_rsp_data_e), // in
		.mc0_rsp_rdctl_e (mc0_rsp_rdctl_e), // in
		.mc0_req_ld_o (sb_mc0_req_ld_o), // out
		.mc0_req_st_o (sb_mc0_req_st_o), // out
		.mc0_req_size_o (sb_mc0_req_size_o), // out
		.mc0_req_vadr_o (sb_mc0_req_vadr_o), // out
		.mc0_req_wrd_rdctl_o (sb_mc0_req_wrd_rdctl_o), // out
		.mc0_req_flush_o (sb_mc0_req_flush_o), // out
		.mc0_rd_rq_stall_o (mc0_rd_rq_stall_o), // in
		.mc0_wr_rq_stall_o (mc0_wr_rq_stall_o), // in
		.mc0_rsp_push_o (mc0_rsp_push_o), // in
		.mc0_rsp_stall_o (sb_mc0_rsp_stall_o), // out
		.mc0_rsp_data_o (mc0_rsp_data_o), // in
		.mc0_rsp_rdctl_o (mc0_rsp_rdctl_o), // in
		.mc1_req_ld_e (sb_mc1_req_ld_e), // out
		.mc1_req_st_e (sb_mc1_req_st_e), // out
		.mc1_req_size_e (sb_mc1_req_size_e), // out
		.mc1_req_vadr_e (sb_mc1_req_vadr_e), // out
		.mc1_req_wrd_rdctl_e (sb_mc1_req_wrd_rdctl_e), // out
		.mc1_req_flush_e (sb_mc1_req_flush_e), // out
		.mc1_rd_rq_stall_e (mc1_rd_rq_stall_e), // in
		.mc1_wr_rq_stall_e (mc1_wr_rq_stall_e), // in
		.mc1_rsp_push_e (mc1_rsp_push_e), // in
		.mc1_rsp_stall_e (sb_mc1_rsp_stall_e), // out
		.mc1_rsp_data_e (mc1_rsp_data_e), // in
		.mc1_rsp_rdctl_e (mc1_rsp_rdctl_e), // in
		.mc1_req_ld_o (sb_mc1_req_ld_o), // out
		.mc1_req_st_o (sb_mc1_req_st_o), // out
		.mc1_req_size_o (sb_mc1_req_size_o), // out
		.mc1_req_vadr_o (sb_mc1_req_vadr_o), // out
		.mc1_req_wrd_rdctl_o (sb_mc1_req_wrd_rdctl_o), // out
		.mc1_req_flush_o (sb_mc1_req_flush_o), // out
		.mc1_rd_rq_stall_o (mc1_rd_rq_stall_o), // in
		.mc1_wr_rq_stall_o (mc1_wr_rq_stall_o), // in
		.mc1_rsp_push_o (mc1_rsp_push_o), // in
		.mc1_rsp_stall_o (sb_mc1_rsp_stall_o), // out
		.mc1_rsp_data_o (mc1_rsp_data_o), // in
		.mc1_rsp_rdctl_o (mc1_rsp_rdctl_o), // in
		.mc2_req_ld_e (sb_mc2_req_ld_e), // out
		.mc2_req_st_e (sb_mc2_req_st_e), // out
		.mc2_req_size_e (sb_mc2_req_size_e), // out
		.mc2_req_vadr_e (sb_mc2_req_vadr_e), // out
		.mc2_req_wrd_rdctl_e (sb_mc2_req_wrd_rdctl_e), // out
		.mc2_req_flush_e (sb_mc2_req_flush_e), // out
		.mc2_rd_rq_stall_e (mc2_rd_rq_stall_e), // in
		.mc2_wr_rq_stall_e (mc2_wr_rq_stall_e), // in
		.mc2_rsp_push_e (mc2_rsp_push_e), // in
		.mc2_rsp_stall_e (sb_mc2_rsp_stall_e), // out
		.mc2_rsp_data_e (mc2_rsp_data_e), // in
		.mc2_rsp_rdctl_e (mc2_rsp_rdctl_e), // in
		.mc2_req_ld_o (sb_mc2_req_ld_o), // out
		.mc2_req_st_o (sb_mc2_req_st_o), // out
		.mc2_req_size_o (sb_mc2_req_size_o), // out
		.mc2_req_vadr_o (sb_mc2_req_vadr_o), // out
		.mc2_req_wrd_rdctl_o (sb_mc2_req_wrd_rdctl_o), // out
		.mc2_req_flush_o (sb_mc2_req_flush_o), // out
		.mc2_rd_rq_stall_o (mc2_rd_rq_stall_o), // in
		.mc2_wr_rq_stall_o (mc2_wr_rq_stall_o), // in
		.mc2_rsp_push_o (mc2_rsp_push_o), // in
		.mc2_rsp_stall_o (sb_mc2_rsp_stall_o), // out
		.mc2_rsp_data_o (mc2_rsp_data_o), // in
		.mc2_rsp_rdctl_o (mc2_rsp_rdctl_o), // in
		.mc3_req_ld_e (sb_mc3_req_ld_e), // out
		.mc3_req_st_e (sb_mc3_req_st_e), // out
		.mc3_req_size_e (sb_mc3_req_size_e), // out
		.mc3_req_vadr_e (sb_mc3_req_vadr_e), // out
		.mc3_req_wrd_rdctl_e (sb_mc3_req_wrd_rdctl_e), // out
		.mc3_req_flush_e (sb_mc3_req_flush_e), // out
		.mc3_rd_rq_stall_e (mc3_rd_rq_stall_e), // in
		.mc3_wr_rq_stall_e (mc3_wr_rq_stall_e), // in
		.mc3_rsp_push_e (mc3_rsp_push_e), // in
		.mc3_rsp_stall_e (sb_mc3_rsp_stall_e), // out
		.mc3_rsp_data_e (mc3_rsp_data_e), // in
		.mc3_rsp_rdctl_e (mc3_rsp_rdctl_e), // in
		.mc3_req_ld_o (sb_mc3_req_ld_o), // out
		.mc3_req_st_o (sb_mc3_req_st_o), // out
		.mc3_req_size_o (sb_mc3_req_size_o), // out
		.mc3_req_vadr_o (sb_mc3_req_vadr_o), // out
		.mc3_req_wrd_rdctl_o (sb_mc3_req_wrd_rdctl_o), // out
		.mc3_req_flush_o (sb_mc3_req_flush_o), // out
		.mc3_rd_rq_stall_o (mc3_rd_rq_stall_o), // in
		.mc3_wr_rq_stall_o (mc3_wr_rq_stall_o), // in
		.mc3_rsp_push_o (mc3_rsp_push_o), // in
		.mc3_rsp_stall_o (sb_mc3_rsp_stall_o), // out
		.mc3_rsp_data_o (mc3_rsp_data_o), // in
		.mc3_rsp_rdctl_o (mc3_rsp_rdctl_o), // in
		.mc4_req_ld_e (sb_mc4_req_ld_e), // out
		.mc4_req_st_e (sb_mc4_req_st_e), // out
		.mc4_req_size_e (sb_mc4_req_size_e), // out
		.mc4_req_vadr_e (sb_mc4_req_vadr_e), // out
		.mc4_req_wrd_rdctl_e (sb_mc4_req_wrd_rdctl_e), // out
		.mc4_req_flush_e (sb_mc4_req_flush_e), // out
		.mc4_rd_rq_stall_e (mc4_rd_rq_stall_e), // in
		.mc4_wr_rq_stall_e (mc4_wr_rq_stall_e), // in
		.mc4_rsp_push_e (mc4_rsp_push_e), // in
		.mc4_rsp_stall_e (sb_mc4_rsp_stall_e), // out
		.mc4_rsp_data_e (mc4_rsp_data_e), // in
		.mc4_rsp_rdctl_e (mc4_rsp_rdctl_e), // in
		.mc4_req_ld_o (sb_mc4_req_ld_o), // out
		.mc4_req_st_o (sb_mc4_req_st_o), // out
		.mc4_req_size_o (sb_mc4_req_size_o), // out
		.mc4_req_vadr_o (sb_mc4_req_vadr_o), // out
		.mc4_req_wrd_rdctl_o (sb_mc4_req_wrd_rdctl_o), // out
		.mc4_req_flush_o (sb_mc4_req_flush_o), // out
		.mc4_rd_rq_stall_o (mc4_rd_rq_stall_o), // in
		.mc4_wr_rq_stall_o (mc4_wr_rq_stall_o), // in
		.mc4_rsp_push_o (mc4_rsp_push_o), // in
		.mc4_rsp_stall_o (sb_mc4_rsp_stall_o), // out
		.mc4_rsp_data_o (mc4_rsp_data_o), // in
		.mc4_rsp_rdctl_o (mc4_rsp_rdctl_o), // in
		.mc5_req_ld_e (sb_mc5_req_ld_e), // out
		.mc5_req_st_e (sb_mc5_req_st_e), // out
		.mc5_req_size_e (sb_mc5_req_size_e), // out
		.mc5_req_vadr_e (sb_mc5_req_vadr_e), // out
		.mc5_req_wrd_rdctl_e (sb_mc5_req_wrd_rdctl_e), // out
		.mc5_req_flush_e (sb_mc5_req_flush_e), // out
		.mc5_rd_rq_stall_e (mc5_rd_rq_stall_e), // in
		.mc5_wr_rq_stall_e (mc5_wr_rq_stall_e), // in
		.mc5_rsp_push_e (mc5_rsp_push_e), // in
		.mc5_rsp_stall_e (sb_mc5_rsp_stall_e), // out
		.mc5_rsp_data_e (mc5_rsp_data_e), // in
		.mc5_rsp_rdctl_e (mc5_rsp_rdctl_e), // in
		.mc5_req_ld_o (sb_mc5_req_ld_o), // out
		.mc5_req_st_o (sb_mc5_req_st_o), // out
		.mc5_req_size_o (sb_mc5_req_size_o), // out
		.mc5_req_vadr_o (sb_mc5_req_vadr_o), // out
		.mc5_req_wrd_rdctl_o (sb_mc5_req_wrd_rdctl_o), // out
		.mc5_req_flush_o (sb_mc5_req_flush_o), // out
		.mc5_rd_rq_stall_o (mc5_rd_rq_stall_o), // in
		.mc5_wr_rq_stall_o (mc5_wr_rq_stall_o), // in
		.mc5_rsp_push_o (mc5_rsp_push_o), // in
		.mc5_rsp_stall_o (sb_mc5_rsp_stall_o), // out
		.mc5_rsp_data_o (mc5_rsp_data_o), // in
		.mc5_rsp_rdctl_o (mc5_rsp_rdctl_o), // in
		.mc6_req_ld_e (sb_mc6_req_ld_e), // out
		.mc6_req_st_e (sb_mc6_req_st_e), // out
		.mc6_req_size_e (sb_mc6_req_size_e), // out
		.mc6_req_vadr_e (sb_mc6_req_vadr_e), // out
		.mc6_req_wrd_rdctl_e (sb_mc6_req_wrd_rdctl_e), // out
		.mc6_req_flush_e (sb_mc6_req_flush_e), // out
		.mc6_rd_rq_stall_e (mc6_rd_rq_stall_e), // in
		.mc6_wr_rq_stall_e (mc6_wr_rq_stall_e), // in
		.mc6_rsp_push_e (mc6_rsp_push_e), // in
		.mc6_rsp_stall_e (sb_mc6_rsp_stall_e), // out
		.mc6_rsp_data_e (mc6_rsp_data_e), // in
		.mc6_rsp_rdctl_e (mc6_rsp_rdctl_e), // in
		.mc6_req_ld_o (sb_mc6_req_ld_o), // out
		.mc6_req_st_o (sb_mc6_req_st_o), // out
		.mc6_req_size_o (sb_mc6_req_size_o), // out
		.mc6_req_vadr_o (sb_mc6_req_vadr_o), // out
		.mc6_req_wrd_rdctl_o (sb_mc6_req_wrd_rdctl_o), // out
		.mc6_req_flush_o (sb_mc6_req_flush_o), // out
		.mc6_rd_rq_stall_o (mc6_rd_rq_stall_o), // in
		.mc6_wr_rq_stall_o (mc6_wr_rq_stall_o), // in
		.mc6_rsp_push_o (mc6_rsp_push_o), // in
		.mc6_rsp_stall_o (sb_mc6_rsp_stall_o), // out
		.mc6_rsp_data_o (mc6_rsp_data_o), // in
		.mc6_rsp_rdctl_o (mc6_rsp_rdctl_o), // in
		.mc7_req_ld_e (sb_mc7_req_ld_e), // out
		.mc7_req_st_e (sb_mc7_req_st_e), // out
		.mc7_req_size_e (sb_mc7_req_size_e), // out
		.mc7_req_vadr_e (sb_mc7_req_vadr_e), // out
		.mc7_req_wrd_rdctl_e (sb_mc7_req_wrd_rdctl_e), // out
		.mc7_req_flush_e (sb_mc7_req_flush_e), // out
		.mc7_rd_rq_stall_e (mc7_rd_rq_stall_e), // in
		.mc7_wr_rq_stall_e (mc7_wr_rq_stall_e), // in
		.mc7_rsp_push_e (mc7_rsp_push_e), // in
		.mc7_rsp_stall_e (sb_mc7_rsp_stall_e), // out
		.mc7_rsp_data_e (mc7_rsp_data_e), // in
		.mc7_rsp_rdctl_e (mc7_rsp_rdctl_e), // in
		.mc7_req_ld_o (sb_mc7_req_ld_o), // out
		.mc7_req_st_o (sb_mc7_req_st_o), // out
		.mc7_req_size_o (sb_mc7_req_size_o), // out
		.mc7_req_vadr_o (sb_mc7_req_vadr_o), // out
		.mc7_req_wrd_rdctl_o (sb_mc7_req_wrd_rdctl_o), // out
		.mc7_req_flush_o (sb_mc7_req_flush_o), // out
		.mc7_rd_rq_stall_o (mc7_rd_rq_stall_o), // in
		.mc7_wr_rq_stall_o (mc7_wr_rq_stall_o), // in
		.mc7_rsp_push_o (mc7_rsp_push_o), // in
		.mc7_rsp_stall_o (sb_mc7_rsp_stall_o), // out
		.mc7_rsp_data_o (mc7_rsp_data_o), // in
		.mc7_rsp_rdctl_o (mc7_rsp_rdctl_o) // in
	);

	// MC0 even request port signals
	assign mc0_req_ld_e = gs_idle ? sb_mc0_req_ld_e : gs_mc0_req_ld_e;
	assign mc0_req_st_e = gs_idle ? sb_mc0_req_st_e : gs_mc0_req_st_e;
	assign mc0_req_size_e = gs_idle ? sb_mc0_req_size_e : gs_mc0_req_size_e;
	assign mc0_req_vadr_e = gs_idle ? sb_mc0_req_vadr_e : gs_mc0_req_vadr_e;
	assign mc0_req_wrd_rdctl_e = gs_idle ? sb_mc0_req_wrd_rdctl_e : gs_mc0_req_wrd_rdctl_e;
	assign mc0_req_flush_e = gs_idle ? sb_mc0_req_flush_e : gs_mc0_req_flush_e;
	// MC0 even response port signals
	assign mc0_rsp_stall_e = gs_idle ? sb_mc0_rsp_stall_e : gs_mc0_rsp_stall_e;
	// MC0 odd request port signals
	assign mc0_req_ld_o = gs_idle ? sb_mc0_req_ld_o : gs_mc0_req_ld_o;
	assign mc0_req_st_o = gs_idle ? sb_mc0_req_st_o : gs_mc0_req_st_o;
	assign mc0_req_size_o = gs_idle ? sb_mc0_req_size_o : gs_mc0_req_size_o;
	assign mc0_req_vadr_o = gs_idle ? sb_mc0_req_vadr_o : gs_mc0_req_vadr_o;
	assign mc0_req_wrd_rdctl_o = gs_idle ? sb_mc0_req_wrd_rdctl_o : gs_mc0_req_wrd_rdctl_o;
	assign mc0_req_flush_o = gs_idle ? sb_mc0_req_flush_o : gs_mc0_req_flush_o;
	// MC0 odd response port signals
	assign mc0_rsp_stall_o = gs_idle ? sb_mc0_rsp_stall_o : gs_mc0_rsp_stall_o;
	// MC1 even request port signals
	assign mc1_req_ld_e = gs_idle ? sb_mc1_req_ld_e : gs_mc1_req_ld_e;
	assign mc1_req_st_e = gs_idle ? sb_mc1_req_st_e : gs_mc1_req_st_e;
	assign mc1_req_size_e = gs_idle ? sb_mc1_req_size_e : gs_mc1_req_size_e;
	assign mc1_req_vadr_e = gs_idle ? sb_mc1_req_vadr_e : gs_mc1_req_vadr_e;
	assign mc1_req_wrd_rdctl_e = gs_idle ? sb_mc1_req_wrd_rdctl_e : gs_mc1_req_wrd_rdctl_e;
	assign mc1_req_flush_e = gs_idle ? sb_mc1_req_flush_e : gs_mc1_req_flush_e;
	// MC1 even response port signals
	assign mc1_rsp_stall_e = gs_idle ? sb_mc1_rsp_stall_e : gs_mc1_rsp_stall_e;
	// MC1 odd request port signals
	assign mc1_req_ld_o = gs_idle ? sb_mc1_req_ld_o : gs_mc1_req_ld_o;
	assign mc1_req_st_o = gs_idle ? sb_mc1_req_st_o : gs_mc1_req_st_o;
	assign mc1_req_size_o = gs_idle ? sb_mc1_req_size_o : gs_mc1_req_size_o;
	assign mc1_req_vadr_o = gs_idle ? sb_mc1_req_vadr_o : gs_mc1_req_vadr_o;
	assign mc1_req_wrd_rdctl_o = gs_idle ? sb_mc1_req_wrd_rdctl_o : gs_mc1_req_wrd_rdctl_o;
	assign mc1_req_flush_o = gs_idle ? sb_mc1_req_flush_o : gs_mc1_req_flush_o;
	// MC1 odd response port signals
	assign mc1_rsp_stall_o = gs_idle ? sb_mc1_rsp_stall_o : gs_mc1_rsp_stall_o;
	// MC2 even request port signals
	assign mc2_req_ld_e = gs_idle ? sb_mc2_req_ld_e : gs_mc2_req_ld_e;
	assign mc2_req_st_e = gs_idle ? sb_mc2_req_st_e : gs_mc2_req_st_e;
	assign mc2_req_size_e = gs_idle ? sb_mc2_req_size_e : gs_mc2_req_size_e;
	assign mc2_req_vadr_e = gs_idle ? sb_mc2_req_vadr_e : gs_mc2_req_vadr_e;
	assign mc2_req_wrd_rdctl_e = gs_idle ? sb_mc2_req_wrd_rdctl_e : gs_mc2_req_wrd_rdctl_e;
	assign mc2_req_flush_e = gs_idle ? sb_mc2_req_flush_e : gs_mc2_req_flush_e;
	// MC2 even response port signals
	assign mc2_rsp_stall_e = gs_idle ? sb_mc2_rsp_stall_e : gs_mc2_rsp_stall_e;
	// MC2 odd request port signals
	assign mc2_req_ld_o = gs_idle ? sb_mc2_req_ld_o : gs_mc2_req_ld_o;
	assign mc2_req_st_o = gs_idle ? sb_mc2_req_st_o : gs_mc2_req_st_o;
	assign mc2_req_size_o = gs_idle ? sb_mc2_req_size_o : gs_mc2_req_size_o;
	assign mc2_req_vadr_o = gs_idle ? sb_mc2_req_vadr_o : gs_mc2_req_vadr_o;
	assign mc2_req_wrd_rdctl_o = gs_idle ? sb_mc2_req_wrd_rdctl_o : gs_mc2_req_wrd_rdctl_o;
	assign mc2_req_flush_o = gs_idle ? sb_mc2_req_flush_o : gs_mc2_req_flush_o;
	// MC2 odd response port signals
	assign mc2_rsp_stall_o = gs_idle ? sb_mc2_rsp_stall_o : gs_mc2_rsp_stall_o;
	// MC3 even request port signals
	assign mc3_req_ld_e = gs_idle ? sb_mc3_req_ld_e : gs_mc3_req_ld_e;
	assign mc3_req_st_e = gs_idle ? sb_mc3_req_st_e : gs_mc3_req_st_e;
	assign mc3_req_size_e = gs_idle ? sb_mc3_req_size_e : gs_mc3_req_size_e;
	assign mc3_req_vadr_e = gs_idle ? sb_mc3_req_vadr_e : gs_mc3_req_vadr_e;
	assign mc3_req_wrd_rdctl_e = gs_idle ? sb_mc3_req_wrd_rdctl_e : gs_mc3_req_wrd_rdctl_e;
	assign mc3_req_flush_e = gs_idle ? sb_mc3_req_flush_e : gs_mc3_req_flush_e;
	// MC3 even response port signals
	assign mc3_rsp_stall_e = gs_idle ? sb_mc3_rsp_stall_e : gs_mc3_rsp_stall_e;
	// MC3 odd request port signals
	assign mc3_req_ld_o = gs_idle ? sb_mc3_req_ld_o : gs_mc3_req_ld_o;
	assign mc3_req_st_o = gs_idle ? sb_mc3_req_st_o : gs_mc3_req_st_o;
	assign mc3_req_size_o = gs_idle ? sb_mc3_req_size_o : gs_mc3_req_size_o;
	assign mc3_req_vadr_o = gs_idle ? sb_mc3_req_vadr_o : gs_mc3_req_vadr_o;
	assign mc3_req_wrd_rdctl_o = gs_idle ? sb_mc3_req_wrd_rdctl_o : gs_mc3_req_wrd_rdctl_o;
	assign mc3_req_flush_o = gs_idle ? sb_mc3_req_flush_o : gs_mc3_req_flush_o;
	// MC3 odd response port signals
	assign mc3_rsp_stall_o = gs_idle ? sb_mc3_rsp_stall_o : gs_mc3_rsp_stall_o;
	// MC4 even request port signals
	assign mc4_req_ld_e = gs_idle ? sb_mc4_req_ld_e : gs_mc4_req_ld_e;
	assign mc4_req_st_e = gs_idle ? sb_mc4_req_st_e : gs_mc4_req_st_e;
	assign mc4_req_size_e = gs_idle ? sb_mc4_req_size_e : gs_mc4_req_size_e;
	assign mc4_req_vadr_e = gs_idle ? sb_mc4_req_vadr_e : gs_mc4_req_vadr_e;
	assign mc4_req_wrd_rdctl_e = gs_idle ? sb_mc4_req_wrd_rdctl_e : gs_mc4_req_wrd_rdctl_e;
	assign mc4_req_flush_e = gs_idle ? sb_mc4_req_flush_e : gs_mc4_req_flush_e;
	// MC4 even response port signals
	assign mc4_rsp_stall_e = gs_idle ? sb_mc4_rsp_stall_e : gs_mc4_rsp_stall_e;
	// MC4 odd request port signals
	assign mc4_req_ld_o = gs_idle ? sb_mc4_req_ld_o : gs_mc4_req_ld_o;
	assign mc4_req_st_o = gs_idle ? sb_mc4_req_st_o : gs_mc4_req_st_o;
	assign mc4_req_size_o = gs_idle ? sb_mc4_req_size_o : gs_mc4_req_size_o;
	assign mc4_req_vadr_o = gs_idle ? sb_mc4_req_vadr_o : gs_mc4_req_vadr_o;
	assign mc4_req_wrd_rdctl_o = gs_idle ? sb_mc4_req_wrd_rdctl_o : gs_mc4_req_wrd_rdctl_o;
	assign mc4_req_flush_o = gs_idle ? sb_mc4_req_flush_o : gs_mc4_req_flush_o;
	// MC4 odd response port signals
	assign mc4_rsp_stall_o = gs_idle ? sb_mc4_rsp_stall_o : gs_mc4_rsp_stall_o;
	// MC5 even request port signals
	assign mc5_req_ld_e = gs_idle ? sb_mc5_req_ld_e : gs_mc5_req_ld_e;
	assign mc5_req_st_e = gs_idle ? sb_mc5_req_st_e : gs_mc5_req_st_e;
	assign mc5_req_size_e = gs_idle ? sb_mc5_req_size_e : gs_mc5_req_size_e;
	assign mc5_req_vadr_e = gs_idle ? sb_mc5_req_vadr_e : gs_mc5_req_vadr_e;
	assign mc5_req_wrd_rdctl_e = gs_idle ? sb_mc5_req_wrd_rdctl_e : gs_mc5_req_wrd_rdctl_e;
	assign mc5_req_flush_e = gs_idle ? sb_mc5_req_flush_e : gs_mc5_req_flush_e;
	// MC5 even response port signals
	assign mc5_rsp_stall_e = gs_idle ? sb_mc5_rsp_stall_e : gs_mc5_rsp_stall_e;
	// MC5 odd request port signals
	assign mc5_req_ld_o = gs_idle ? sb_mc5_req_ld_o : gs_mc5_req_ld_o;
	assign mc5_req_st_o = gs_idle ? sb_mc5_req_st_o : gs_mc5_req_st_o;
	assign mc5_req_size_o = gs_idle ? sb_mc5_req_size_o : gs_mc5_req_size_o;
	assign mc5_req_vadr_o = gs_idle ? sb_mc5_req_vadr_o : gs_mc5_req_vadr_o;
	assign mc5_req_wrd_rdctl_o = gs_idle ? sb_mc5_req_wrd_rdctl_o : gs_mc5_req_wrd_rdctl_o;
	assign mc5_req_flush_o = gs_idle ? sb_mc5_req_flush_o : gs_mc5_req_flush_o;
	// MC5 odd response port signals
	assign mc5_rsp_stall_o = gs_idle ? sb_mc5_rsp_stall_o : gs_mc5_rsp_stall_o;
	// MC6 even request port signals
	assign mc6_req_ld_e = gs_idle ? sb_mc6_req_ld_e : gs_mc6_req_ld_e;
	assign mc6_req_st_e = gs_idle ? sb_mc6_req_st_e : gs_mc6_req_st_e;
	assign mc6_req_size_e = gs_idle ? sb_mc6_req_size_e : gs_mc6_req_size_e;
	assign mc6_req_vadr_e = gs_idle ? sb_mc6_req_vadr_e : gs_mc6_req_vadr_e;
	assign mc6_req_wrd_rdctl_e = gs_idle ? sb_mc6_req_wrd_rdctl_e : gs_mc6_req_wrd_rdctl_e;
	assign mc6_req_flush_e = gs_idle ? sb_mc6_req_flush_e : gs_mc6_req_flush_e;
	// MC6 even response port signals
	assign mc6_rsp_stall_e = gs_idle ? sb_mc6_rsp_stall_e : gs_mc6_rsp_stall_e;
	// MC6 odd request port signals
	assign mc6_req_ld_o = gs_idle ? sb_mc6_req_ld_o : gs_mc6_req_ld_o;
	assign mc6_req_st_o = gs_idle ? sb_mc6_req_st_o : gs_mc6_req_st_o;
	assign mc6_req_size_o = gs_idle ? sb_mc6_req_size_o : gs_mc6_req_size_o;
	assign mc6_req_vadr_o = gs_idle ? sb_mc6_req_vadr_o : gs_mc6_req_vadr_o;
	assign mc6_req_wrd_rdctl_o = gs_idle ? sb_mc6_req_wrd_rdctl_o : gs_mc6_req_wrd_rdctl_o;
	assign mc6_req_flush_o = gs_idle ? sb_mc6_req_flush_o : gs_mc6_req_flush_o;
	// MC6 odd response port signals
	assign mc6_rsp_stall_o = gs_idle ? sb_mc6_rsp_stall_o : gs_mc6_rsp_stall_o;
	// MC7 even request port signals
	assign mc7_req_ld_e = gs_idle ? sb_mc7_req_ld_e : gs_mc7_req_ld_e;
	assign mc7_req_st_e = gs_idle ? sb_mc7_req_st_e : gs_mc7_req_st_e;
	assign mc7_req_size_e = gs_idle ? sb_mc7_req_size_e : gs_mc7_req_size_e;
	assign mc7_req_vadr_e = gs_idle ? sb_mc7_req_vadr_e : gs_mc7_req_vadr_e;
	assign mc7_req_wrd_rdctl_e = gs_idle ? sb_mc7_req_wrd_rdctl_e : gs_mc7_req_wrd_rdctl_e;
	assign mc7_req_flush_e = gs_idle ? sb_mc7_req_flush_e : gs_mc7_req_flush_e;
	// MC7 even response port signals
	assign mc7_rsp_stall_e = gs_idle ? sb_mc7_rsp_stall_e : gs_mc7_rsp_stall_e;
	// MC7 odd request port signals
	assign mc7_req_ld_o = gs_idle ? sb_mc7_req_ld_o : gs_mc7_req_ld_o;
	assign mc7_req_st_o = gs_idle ? sb_mc7_req_st_o : gs_mc7_req_st_o;
	assign mc7_req_size_o = gs_idle ? sb_mc7_req_size_o : gs_mc7_req_size_o;
	assign mc7_req_vadr_o = gs_idle ? sb_mc7_req_vadr_o : gs_mc7_req_vadr_o;
	assign mc7_req_wrd_rdctl_o = gs_idle ? sb_mc7_req_wrd_rdctl_o : gs_mc7_req_wrd_rdctl_o;
	assign mc7_req_flush_o = gs_idle ? sb_mc7_req_flush_o : gs_mc7_req_flush_o;
	// MC7 odd response port signals
	assign mc7_rsp_stall_o = gs_idle ? sb_mc7_rsp_stall_o : gs_mc7_rsp_stall_o;

	// Instantiating the sobel module
	// TODO: Tyler

  /* ---------- debug & synopsys off blocks  ---------- */

  // synopsys translate_off

  // Parameters: 1-Severity: Don't Stop, 2-start check only after negedge of reset
  //assert_never #(1, 2, "***ERROR ASSERT: unimplemented instruction cracked") a0 (.clk(clk), .reset_n(~reset), .test_expr(r_unimplemented_inst));

  // synopsys translate_on

endmodule // cae_pers
