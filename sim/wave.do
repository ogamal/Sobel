onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/clk
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/reset_per
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/inst_caep
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/inst_val
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cae_inst
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cae_inst_vld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cae_idle
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/cae_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/c_caep00
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/c_caep01
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/en_gs
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/en_sb
add wave -noupdate -divider {GS Control Parameters}
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/enable
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/idle
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/state
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/in_addr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/out_addr
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/img_rows
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/img_cols
add wave -noupdate -radix hexadecimal -childformat {{/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(15) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(14) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(13) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(12) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(11) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(10) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(9) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(8) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(7) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(6) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(5) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(4) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(3) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(2) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(1) -radix hexadecimal} {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(0) -radix hexadecimal}} -subitemconfig {/testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(15) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(14) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(13) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(12) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(11) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(10) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(9) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(8) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(7) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(6) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(5) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(4) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(3) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(2) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(1) {-height 16 -radix hexadecimal} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle(0) {-height 16 -radix hexadecimal}} /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_idle
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_enable
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/node_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/rd_addr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/wr_addr
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/total_size
add wave -noupdate /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/single_wr
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/rd_count
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/grayscale_ctrl_inst/wr_count
add wave -noupdate -divider {SB Control Parameters}
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/enable
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/idle
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/in_addr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/out_addr
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/img_rows
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/img_cols
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/state
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/count
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/rd_addr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/wr_addr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/total_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node_idle
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node_enable
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node_done
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/ld_addr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/st_addr
add wave -noupdate -divider {Sobel Node 0}
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/enable
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/idle
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/state
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/rd_state
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/ld_state
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/wr_state
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/in_addr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/out_addr
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/img_rows
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/img_cols
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/o_idle
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/count
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/rd_count
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/wr_count
add wave -noupdate -radix decimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/count_rst
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/rd_addr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/wr_addr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc0_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc0_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc0_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc0_req_vadr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc0_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc0_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc0_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc0_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc0_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc0_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc0_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc0_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc1_req_ld
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc1_req_st
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc1_req_size
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc1_req_vadr
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc1_req_wrd_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc1_req_flush
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc1_rd_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc1_wr_rq_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc1_rsp_push
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc1_rsp_stall
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc1_rsp_data
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/mc1_rsp_rdctl
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/fifo0_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/fifo0_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/fifo0_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/fifo0_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/fifo0_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/fifo0_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/fifo0_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/fifo1_almost_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/fifo1_wr_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/fifo1_rd_en
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/fifo1_din
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/fifo1_dout
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/fifo1_full
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/fifo1_empty
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/pxl_in_0
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/pxl_in_1
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/pxl_in_2
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/pxl_out
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/sum_x
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/sum_y
add wave -noupdate -radix hexadecimal /testbench/cae_fpga0/ae_top/core/cae_pers/osobel_inst/node0/sum
add wave -noupdate -divider {MC interfaces}
add wave -noupdate -divider G0
add wave -noupdate -radix hexadecimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[0]/c_aeg}
add wave -noupdate -radix hexadecimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[0]/r_aeg}
add wave -noupdate -radix hexadecimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[0]/c_aeg_we}
add wave -noupdate -divider G1
add wave -noupdate -radix hexadecimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[1]/c_aeg}
add wave -noupdate -radix hexadecimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[1]/r_aeg}
add wave -noupdate -radix hexadecimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[1]/c_aeg_we}
add wave -noupdate -divider G2
add wave -noupdate -radix decimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[2]/c_aeg}
add wave -noupdate -radix decimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[2]/r_aeg}
add wave -noupdate -radix hexadecimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[2]/c_aeg_we}
add wave -noupdate -divider G3
add wave -noupdate -radix decimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[3]/c_aeg}
add wave -noupdate -radix decimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[3]/r_aeg}
add wave -noupdate -radix hexadecimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[3]/c_aeg_we}
add wave -noupdate -divider G4
add wave -noupdate -radix hexadecimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[4]/c_aeg}
add wave -noupdate -radix hexadecimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[4]/r_aeg}
add wave -noupdate -radix hexadecimal {/testbench/cae_fpga0/ae_top/core/cae_pers/g0[4]/c_aeg_we}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {18948105 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 142
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {18758358 ps} {19143953 ps}
