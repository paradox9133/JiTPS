////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: hdmi_main_synthesis.v
// /___/   /\     Timestamp: Mon May 19 18:47:31 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim hdmi_main.ngc hdmi_main_synthesis.v 
// Device	: xc6slx45-2-csg324
// Input file	: hdmi_main.ngc
// Output file	: D:\JiTPS\AdamMichna\hdmi\hdmi\netgen\synthesis\hdmi_main_synthesis.v
// # of Modules	: 1
// Design Name	: hdmi_main
// Xilinx        : C:\Xilinx\14.6\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module hdmi_main (
  rstbtn_n, clk100, RX1_TMDS, RX1_TMDSB, SW, TX0_TMDS, TX0_TMDSB, LED
)/* synthesis syn_black_box syn_noprune=1 */;
  input rstbtn_n;
  input clk100;
  input [3 : 0] RX1_TMDS;
  input [3 : 0] RX1_TMDSB;
  input [2 : 0] SW;
  output [3 : 0] TX0_TMDS;
  output [3 : 0] TX0_TMDSB;
  output [7 : 0] LED;
  
  // synthesis translate_off
  
  wire SW_2_IBUF_8;
  wire SW_1_IBUF_9;
  wire SW_0_IBUF_10;
  wire rstbtn_n_IBUF_11;
  wire clk100_IBUF_12;
  wire rstbtn_n_INV_31_o;
  wire clk25m;
  wire rx_reset;
  wire rx_pclk;
  wire rx_pllclk1;
  wire \dvi_rx1/dec_b/c0_42 ;
  wire \dvi_rx1/dec_b/c1_43 ;
  wire \dvi_rx1/dec_b/de_44 ;
  wire \dvi_rx1/dec_b/cbnd/iamrdy_45 ;
  wire \dvi_rx1/dec_g/cbnd/iamrdy_46 ;
  wire \dvi_rx1/dec_r/cbnd/iamrdy_47 ;
  wire tx_hsync;
  wire tx_vsync;
  wire tx_de;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<7> ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<6> ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<5> ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<4> ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<3> ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<2> ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<1> ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<0> ;
  wire \rgb2ycbcr_converter/hsync/[5].delay_i/temp_0_99 ;
  wire \rgb2ycbcr_converter/vsync/[5].delay_i/temp_0_100 ;
  wire \rgb2ycbcr_converter/de/[5].delay_i/temp_0_101 ;
  wire tx_clkfbout;
  wire tx_pllclk0;
  wire tx_pllclk2;
  wire tx_plllckd;
  wire tx_pclk;
  wire tx_clkfbin;
  wire tx_pclkx10;
  wire tx_serdesstrobe;
  wire tx_pclkx2;
  wire N0;
  wire \dvi_rx1/clkfbout ;
  wire \dvi_rx1/pclkx2 ;
  wire \dvi_rx1/serdesstrobe ;
  wire \dvi_rx1/bufpll_lock ;
  wire \dvi_rx1/pclkx10 ;
  wire \dvi_rx1/rxclk ;
  wire \dvi_rx1/pll_lckd ;
  wire \dvi_rx1/pllclk2 ;
  wire \dvi_rx1/pllclk0 ;
  wire \dvi_rx1/dec_r/phsalgn_0/psaligned_130 ;
  wire \dvi_rx1/dec_g/phsalgn_0/psaligned_131 ;
  wire \dvi_rx1/dec_b/phsalgn_0/psaligned_132 ;
  wire \dvi_rx1/rxclkint ;
  wire \dvi_rx1/dec_r/n0050_inv ;
  wire \dvi_rx1/dec_r/data[7]_data[7]_MUX_117_o ;
  wire \dvi_rx1/dec_r/data[6]_data[6]_MUX_116_o ;
  wire \dvi_rx1/dec_r/data[5]_data[5]_MUX_115_o ;
  wire \dvi_rx1/dec_r/data[4]_data[4]_MUX_114_o ;
  wire \dvi_rx1/dec_r/data[3]_data[3]_MUX_113_o ;
  wire \dvi_rx1/dec_r/data[2]_data[2]_MUX_112_o ;
  wire \dvi_rx1/dec_r/data[1]_data[1]_MUX_111_o ;
  wire \dvi_rx1/dec_r/rx_toggle ;
  wire \dvi_rx1/dec_r/toggle_INV_3_o ;
  wire \dvi_rx1/dec_r/bitslip_bitslip_q_AND_1_o ;
  wire \dvi_rx1/dec_r/flipgearx2_156 ;
  wire \dvi_rx1/dec_r/bitslipx2_157 ;
  wire \dvi_rx1/dec_r/bitslip_q_158 ;
  wire \dvi_rx1/dec_r/phsalgn_0/bitslip_174 ;
  wire \dvi_rx1/dec_r/phsalgn_0/flipgear_175 ;
  wire \dvi_rx1/dec_g/n0050_inv ;
  wire \dvi_rx1/dec_g/data[7]_data[7]_MUX_117_o ;
  wire \dvi_rx1/dec_g/data[6]_data[6]_MUX_116_o ;
  wire \dvi_rx1/dec_g/data[5]_data[5]_MUX_115_o ;
  wire \dvi_rx1/dec_g/data[4]_data[4]_MUX_114_o ;
  wire \dvi_rx1/dec_g/data[3]_data[3]_MUX_113_o ;
  wire \dvi_rx1/dec_g/data[2]_data[2]_MUX_112_o ;
  wire \dvi_rx1/dec_g/data[1]_data[1]_MUX_111_o ;
  wire \dvi_rx1/dec_g/rx_toggle ;
  wire \dvi_rx1/dec_g/bitslip_bitslip_q_AND_1_o ;
  wire \dvi_rx1/dec_g/flipgearx2_202 ;
  wire \dvi_rx1/dec_g/bitslipx2_203 ;
  wire \dvi_rx1/dec_g/bitslip_q_204 ;
  wire \dvi_rx1/dec_g/phsalgn_0/bitslip_220 ;
  wire \dvi_rx1/dec_g/phsalgn_0/flipgear_221 ;
  wire \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o1_227 ;
  wire \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o2_228 ;
  wire \dvi_rx1/dec_b/n0050_inv ;
  wire \dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ;
  wire \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o ;
  wire \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_16_o ;
  wire \dvi_rx1/dec_b/data[7]_data[7]_MUX_117_o ;
  wire \dvi_rx1/dec_b/data[6]_data[6]_MUX_116_o ;
  wire \dvi_rx1/dec_b/data[5]_data[5]_MUX_115_o ;
  wire \dvi_rx1/dec_b/data[4]_data[4]_MUX_114_o ;
  wire \dvi_rx1/dec_b/data[3]_data[3]_MUX_113_o ;
  wire \dvi_rx1/dec_b/data[2]_data[2]_MUX_112_o ;
  wire \dvi_rx1/dec_b/data[1]_data[1]_MUX_111_o ;
  wire \dvi_rx1/dec_b/rx_toggle ;
  wire \dvi_rx1/dec_b/bitslip_bitslip_q_AND_1_o ;
  wire \dvi_rx1/dec_b/flipgearx2_253 ;
  wire \dvi_rx1/dec_b/bitslipx2_254 ;
  wire \dvi_rx1/dec_b/bitslip_q_255 ;
  wire \dvi_rx1/dec_r/toggle_271 ;
  wire \dvi_rx1/dec_b/phsalgn_0/bitslip_272 ;
  wire \dvi_rx1/dec_b/phsalgn_0/flipgear_273 ;
  wire \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ;
  wire \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd2-In ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd3-In ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd4-In ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter8 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter7 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter6 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter5 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter4 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter3 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter2 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter1 ;
  wire \dvi_rx1/dec_b/des_0/Mcount_counter ;
  wire \dvi_rx1/dec_b/des_0/counter<8>_inv ;
  wire \dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv ;
  wire \dvi_rx1/dec_b/des_0/_n0283_inv ;
  wire \dvi_rx1/dec_b/des_0/reset_inv ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_4_o ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ;
  wire \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_equal_48_o ;
  wire \dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o ;
  wire \dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ;
  wire \dvi_rx1/dec_b/des_0/inc_data_int_333 ;
  wire \dvi_rx1/dec_b/des_0/rst_data_334 ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 ;
  wire \dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 ;
  wire \dvi_rx1/dec_b/des_0/ce_data_338 ;
  wire \dvi_rx1/dec_b/des_0/valid_data_d_339 ;
  wire \dvi_rx1/dec_b/des_0/incdec_data_d_340 ;
  wire \dvi_rx1/dec_b/des_0/busy_data_d_341 ;
  wire \dvi_rx1/dec_b/des_0/flag_342 ;
  wire \dvi_rx1/dec_b/des_0/ce_data_inta_343 ;
  wire \dvi_rx1/dec_b/des_0/enable_344 ;
  wire \dvi_rx1/dec_b/des_0/cal_data_sint_345 ;
  wire \dvi_rx1/dec_b/des_0/cal_data_master_346 ;
  wire \dvi_rx1/dec_b/des_0/pd_edge ;
  wire \dvi_rx1/dec_b/des_0/valid_data_im ;
  wire \dvi_rx1/dec_b/des_0/cascade ;
  wire \dvi_rx1/dec_b/des_0/incdec_data_im ;
  wire \dvi_rx1/dec_b/des_0/ddly_s ;
  wire \dvi_rx1/dec_b/des_0/ddly_m ;
  wire \dvi_rx1/dec_b/des_0/rx_data_in ;
  wire \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ;
  wire \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd2-In ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd3-In ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd4-In ;
  wire \dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv ;
  wire \dvi_rx1/dec_g/des_0/_n0283_inv ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ;
  wire \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_equal_48_o ;
  wire \dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o ;
  wire \dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ;
  wire \dvi_rx1/dec_g/des_0/_n0265 ;
  wire \dvi_rx1/dec_g/des_0/inc_data_int_381 ;
  wire \dvi_rx1/dec_g/des_0/rst_data_382 ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 ;
  wire \dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 ;
  wire \dvi_rx1/dec_g/des_0/ce_data_386 ;
  wire \dvi_rx1/dec_g/des_0/valid_data_d_387 ;
  wire \dvi_rx1/dec_g/des_0/incdec_data_d_388 ;
  wire \dvi_rx1/dec_g/des_0/busy_data_d_389 ;
  wire \dvi_rx1/dec_g/des_0/flag_390 ;
  wire \dvi_rx1/dec_g/des_0/ce_data_inta_391 ;
  wire \dvi_rx1/dec_g/des_0/cal_data_sint_392 ;
  wire \dvi_rx1/dec_g/des_0/cal_data_master_393 ;
  wire \dvi_rx1/dec_g/des_0/pd_edge ;
  wire \dvi_rx1/dec_g/des_0/valid_data_im ;
  wire \dvi_rx1/dec_g/des_0/cascade ;
  wire \dvi_rx1/dec_g/des_0/incdec_data_im ;
  wire \dvi_rx1/dec_g/des_0/ddly_s ;
  wire \dvi_rx1/dec_g/des_0/ddly_m ;
  wire \dvi_rx1/dec_g/des_0/rx_data_in ;
  wire \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ;
  wire \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd2-In ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd3-In ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd4-In ;
  wire \dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv ;
  wire \dvi_rx1/dec_r/des_0/_n0283_inv ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ;
  wire \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_equal_48_o ;
  wire \dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o ;
  wire \dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ;
  wire \dvi_rx1/dec_r/des_0/_n0265 ;
  wire \dvi_rx1/dec_r/des_0/inc_data_int_426 ;
  wire \dvi_rx1/dec_r/des_0/rst_data_427 ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 ;
  wire \dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 ;
  wire \dvi_rx1/dec_r/des_0/ce_data_431 ;
  wire \dvi_rx1/dec_r/des_0/valid_data_d_432 ;
  wire \dvi_rx1/dec_r/des_0/incdec_data_d_433 ;
  wire \dvi_rx1/dec_r/des_0/busy_data_d_434 ;
  wire \dvi_rx1/dec_r/des_0/flag_435 ;
  wire \dvi_rx1/dec_r/des_0/ce_data_inta_436 ;
  wire \dvi_rx1/dec_r/des_0/cal_data_sint_437 ;
  wire \dvi_rx1/dec_r/des_0/cal_data_master_438 ;
  wire \dvi_rx1/dec_r/des_0/pd_edge ;
  wire \dvi_rx1/dec_r/des_0/valid_data_im ;
  wire \dvi_rx1/dec_r/des_0/cascade ;
  wire \dvi_rx1/dec_r/des_0/incdec_data_im ;
  wire \dvi_rx1/dec_r/des_0/ddly_s ;
  wire \dvi_rx1/dec_r/des_0/ddly_m ;
  wire \dvi_rx1/dec_r/des_0/rx_data_in ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_451 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<6>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<5>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<4>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<3>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<2>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<1>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Result<0>1 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In_497 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6-In ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ;
  wire \dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_523 ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout_524 ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_525 ;
  wire \dvi_rx1/dec_b/phsalgn_0/blnkbgn_526 ;
  wire \dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_q_527 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_528 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_529 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_530 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_531 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_532 ;
  wire \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_533 ;
  wire \dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_534 ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_535 ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_538 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<6>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<5>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<4>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<3>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<2>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<1>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Result<0>1 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In_584 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6-In ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ;
  wire \dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_610 ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout_611 ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_612 ;
  wire \dvi_rx1/dec_g/phsalgn_0/blnkbgn_613 ;
  wire \dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_q_614 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_615 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_616 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_617 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_618 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_619 ;
  wire \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_620 ;
  wire \dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_621 ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_622 ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_625 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<6>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<5>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<4>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<3>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<2>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<1>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Result<0>1 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In_671 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6-In ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ;
  wire \dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_697 ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout_698 ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_699 ;
  wire \dvi_rx1/dec_r/phsalgn_0/blnkbgn_700 ;
  wire \dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_q_701 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_702 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_703 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_704 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_705 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_706 ;
  wire \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_707 ;
  wire \dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_708 ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_709 ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 ;
  wire \dvi_rx1/dec_b/cbnd/Result<3>1 ;
  wire \dvi_rx1/dec_b/cbnd/Result<2>1 ;
  wire \dvi_rx1/dec_b/cbnd/Result<1>1 ;
  wire \dvi_rx1/dec_b/cbnd/Result<0>1 ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld_inv ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld_rawdata_vld_q_AND_23_o_norst ;
  wire \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld_rising_other_ch0_rdy_OR_127_o ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld ;
  wire \dvi_rx1/dec_b/cbnd/ra_en_732 ;
  wire \dvi_rx1/dec_b/cbnd/skip_line_733 ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld_rising_734 ;
  wire \dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ;
  wire \dvi_rx1/dec_b/cbnd/blnkbgn_736 ;
  wire \dvi_rx1/dec_b/cbnd/rcvd_ctkn_q_737 ;
  wire \dvi_rx1/dec_b/cbnd/rcvd_ctkn_738 ;
  wire \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o ;
  wire \dvi_rx1/dec_g/cbnd/ra_en_758 ;
  wire \dvi_rx1/dec_g/cbnd/skip_line_759 ;
  wire \dvi_rx1/dec_g/cbnd/blnkbgn_760 ;
  wire \dvi_rx1/dec_g/cbnd/rcvd_ctkn_q_761 ;
  wire \dvi_rx1/dec_g/cbnd/rcvd_ctkn_762 ;
  wire \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o ;
  wire \dvi_rx1/dec_r/cbnd/ra_en_782 ;
  wire \dvi_rx1/dec_r/cbnd/skip_line_783 ;
  wire \dvi_rx1/dec_r/cbnd/blnkbgn_784 ;
  wire \dvi_rx1/dec_r/cbnd/rcvd_ctkn_q_785 ;
  wire \dvi_rx1/dec_r/cbnd/rcvd_ctkn_786 ;
  wire \dvi_tx/clkout/cascade_di ;
  wire \dvi_tx/clkout/cascade_ti ;
  wire \dvi_tx/clkout/cascade_do ;
  wire \dvi_tx/clkout/cascade_to ;
  wire \dvi_tx/oserdes0/cascade_di ;
  wire \dvi_tx/oserdes0/cascade_ti ;
  wire \dvi_tx/oserdes0/cascade_do ;
  wire \dvi_tx/oserdes0/cascade_to ;
  wire \dvi_tx/oserdes1/cascade_di ;
  wire \dvi_tx/oserdes1/cascade_ti ;
  wire \dvi_tx/oserdes1/cascade_do ;
  wire \dvi_tx/oserdes1/cascade_to ;
  wire \dvi_tx/oserdes2/cascade_di ;
  wire \dvi_tx/oserdes2/cascade_ti ;
  wire \dvi_tx/oserdes2/cascade_do ;
  wire \dvi_tx/oserdes2/cascade_to ;
  wire \dvi_tx/toggle_inv ;
  wire \dvi_tx/toggle_949 ;
  wire \dvi_tx/tmdsclk ;
  wire \dvi_tx/encr/Mmux_q_m<3>12 ;
  wire \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ;
  wire \dvi_tx/encr/Mmux_q_m<3>11 ;
  wire \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>16 ;
  wire \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ;
  wire \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 ;
  wire \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT63 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ;
  wire \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1011_1007 ;
  wire \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT811 ;
  wire \dvi_tx/encr/Msub_n0236_xor<3>11_1009 ;
  wire \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT61_1010 ;
  wire \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT81_1011 ;
  wire \dvi_tx/encr/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2> ;
  wire \dvi_tx/encr/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_cy<0>2 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>1 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy<0>2 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd3 ;
  wire \dvi_tx/encr/Madd_cnt[4]_GND_37_o_add_47_OUT1 ;
  wire \dvi_tx/encr/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>2 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd_29 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd_19 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd_24 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd_14 ;
  wire \dvi_tx/encr/ADDERTREE_INTERNAL_Madd_04 ;
  wire \dvi_tx/encr/decision3_1049 ;
  wire \dvi_tx/encr/decision2_1050 ;
  wire \dvi_tx/encr/GND_37_o_cnt[4]_mux_55_OUT<1> ;
  wire \dvi_tx/encr/GND_37_o_cnt[4]_mux_55_OUT<2> ;
  wire \dvi_tx/encr/GND_37_o_cnt[4]_mux_55_OUT<3> ;
  wire \dvi_tx/encr/GND_37_o_cnt[4]_mux_55_OUT<4> ;
  wire \dvi_tx/encg/Mmux_q_m<3>12 ;
  wire \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ;
  wire \dvi_tx/encg/Mmux_q_m<3>11 ;
  wire \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>16 ;
  wire \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ;
  wire \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 ;
  wire \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT63 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ;
  wire \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT811 ;
  wire \dvi_tx/encg/Msub_n0236_xor<3>11_1108 ;
  wire \dvi_tx/encg/Msub_n0233_xor<3>11 ;
  wire \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT61_1110 ;
  wire \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT81_1111 ;
  wire \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101 ;
  wire \dvi_tx/encg/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2> ;
  wire \dvi_tx/encg/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_cy<0>2 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>1 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy<0>2 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd3 ;
  wire \dvi_tx/encg/Madd_cnt[4]_GND_37_o_add_47_OUT1 ;
  wire \dvi_tx/encg/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>2 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd_29 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd_19 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd_24 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd_14 ;
  wire \dvi_tx/encg/ADDERTREE_INTERNAL_Madd_04 ;
  wire \dvi_tx/encg/decision3_1150 ;
  wire \dvi_tx/encg/decision2_1151 ;
  wire \dvi_tx/encg/GND_37_o_cnt[4]_mux_55_OUT<1> ;
  wire \dvi_tx/encg/GND_37_o_cnt[4]_mux_55_OUT<2> ;
  wire \dvi_tx/encg/GND_37_o_cnt[4]_mux_55_OUT<3> ;
  wire \dvi_tx/encg/GND_37_o_cnt[4]_mux_55_OUT<4> ;
  wire \dvi_tx/encb/Mmux_q_m<3>12 ;
  wire \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ;
  wire \dvi_tx/encb/Mmux_q_m<3>11 ;
  wire \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>16 ;
  wire \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ;
  wire \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 ;
  wire \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT63 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ;
  wire \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT811 ;
  wire \dvi_tx/encb/Msub_n0236_xor<3>11_1209 ;
  wire \dvi_tx/encb/Msub_n0233_xor<3>11 ;
  wire \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT61_1211 ;
  wire \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT81_1212 ;
  wire \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101 ;
  wire \dvi_tx/encb/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2> ;
  wire \dvi_tx/encb/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ;
  wire \dvi_tx/encb/c0_reg_1223 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_cy<0>2 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>1 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy<0>2 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd3 ;
  wire \dvi_tx/encb/Madd_cnt[4]_GND_37_o_add_47_OUT1 ;
  wire \dvi_tx/encb/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>2 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd_29 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd_19 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd_24 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd_14 ;
  wire \dvi_tx/encb/ADDERTREE_INTERNAL_Madd_04 ;
  wire \dvi_tx/encb/decision3_1252 ;
  wire \dvi_tx/encb/decision2_1253 ;
  wire \dvi_tx/encb/GND_37_o_cnt[4]_mux_55_OUT<1> ;
  wire \dvi_tx/encb/GND_37_o_cnt[4]_mux_55_OUT<2> ;
  wire \dvi_tx/encb/GND_37_o_cnt[4]_mux_55_OUT<3> ;
  wire \dvi_tx/encb/GND_37_o_cnt[4]_mux_55_OUT<4> ;
  wire \dvi_tx/encb/c1_reg_1271 ;
  wire \dvi_tx/encb/c1_q_1285 ;
  wire \dvi_tx/encb/c0_q_1286 ;
  wire \dvi_tx/encr/de_reg_1287 ;
  wire \dvi_tx/encr/de_q_1288 ;
  wire \dvi_tx/pixel2x/Mram_ra_d3 ;
  wire \dvi_tx/pixel2x/Mram_ra_d2 ;
  wire \dvi_tx/pixel2x/Mram_ra_d1 ;
  wire \dvi_tx/pixel2x/Mram_ra_d ;
  wire \dvi_tx/pixel2x/Mram_wa_d3 ;
  wire \dvi_tx/pixel2x/Mram_wa_d2 ;
  wire \dvi_tx/pixel2x/Mram_wa_d1 ;
  wire \dvi_tx/pixel2x/Mram_wa_d ;
  wire \dvi_tx/pixel2x/sync_INV_50_o ;
  wire \dvi_tx/pixel2x/sync ;
  wire \dvi_tx/pixel2x/rstp ;
  wire \dvi_tx/pixel2x/rstsync_q ;
  wire \dvi_tx/pixel2x/rstsync ;
  wire \dvi_rx1/dec_r/n0050_inv2_1403 ;
  wire \dvi_rx1/dec_g/n0050_inv2_1404 ;
  wire N2;
  wire N4;
  wire \dvi_rx1/dec_b/des_0/_n0283_inv1_1407 ;
  wire \dvi_rx1/dec_g/des_0/_n0283_inv1_1408 ;
  wire \dvi_rx1/dec_r/des_0/_n0283_inv1_1409 ;
  wire N18;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ;
  wire \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1412 ;
  wire \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1413 ;
  wire \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1414 ;
  wire N20;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ;
  wire \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1417 ;
  wire \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1418 ;
  wire \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1419 ;
  wire N22;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ;
  wire \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1422 ;
  wire \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1423 ;
  wire \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1424 ;
  wire \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o2_1425 ;
  wire \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o2_1426 ;
  wire \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o2_1427 ;
  wire \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT8 ;
  wire \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT83 ;
  wire \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT6 ;
  wire N24;
  wire \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1013 ;
  wire N26;
  wire \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>1 ;
  wire \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>11_1435 ;
  wire \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>12_1436 ;
  wire N28;
  wire N30;
  wire \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT10 ;
  wire \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT8 ;
  wire \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT83 ;
  wire \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT6 ;
  wire N32;
  wire N34;
  wire \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>1 ;
  wire \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>11_1446 ;
  wire \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>12_1447 ;
  wire N36;
  wire N38;
  wire \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT8 ;
  wire \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT83 ;
  wire \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT6 ;
  wire N40;
  wire N42;
  wire \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>1 ;
  wire \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>11_1456 ;
  wire \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>12_1457 ;
  wire N44;
  wire N46;
  wire \dvi_rx1/dec_b/cbnd/skip_line_glue_set_1473 ;
  wire \dvi_rx1/dec_b/cbnd/iamrdy_glue_set_1474 ;
  wire \dvi_rx1/dec_g/cbnd/skip_line_glue_set_1475 ;
  wire \dvi_rx1/dec_g/cbnd/iamrdy_glue_set_1476 ;
  wire \dvi_rx1/dec_r/cbnd/skip_line_glue_set_1477 ;
  wire \dvi_rx1/dec_r/cbnd/iamrdy_glue_set_1478 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1479 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1480 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1481 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1482 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1483 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1484 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1485 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1486 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1487 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1488 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1489 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1490 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1491 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1492 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1493 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1494 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1495 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1496 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1497 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1498 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1499 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1500 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1501 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1502 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1503 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1504 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1505 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1506 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1507 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1508 ;
  wire \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1509 ;
  wire \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1510 ;
  wire \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1511 ;
  wire \dvi_rx1/dec_b/des_0/cal_data_master_rstpot_1512 ;
  wire \dvi_rx1/dec_b/des_0/flag_rstpot_1513 ;
  wire \dvi_rx1/dec_b/des_0/ce_data_inta_rstpot_1514 ;
  wire \dvi_rx1/dec_b/des_0/cal_data_sint_rstpot_1515 ;
  wire \dvi_rx1/dec_b/des_0/enable_rstpot_1516 ;
  wire \dvi_rx1/dec_b/des_0/rst_data_rstpot_1517 ;
  wire \dvi_rx1/dec_g/des_0/cal_data_master_rstpot_1518 ;
  wire \dvi_rx1/dec_g/des_0/flag_rstpot_1519 ;
  wire \dvi_rx1/dec_g/des_0/ce_data_inta_rstpot_1520 ;
  wire \dvi_rx1/dec_g/des_0/cal_data_sint_rstpot_1521 ;
  wire \dvi_rx1/dec_g/des_0/rst_data_rstpot_1522 ;
  wire \dvi_rx1/dec_r/des_0/cal_data_master_rstpot_1523 ;
  wire \dvi_rx1/dec_r/des_0/flag_rstpot_1524 ;
  wire \dvi_rx1/dec_r/des_0/ce_data_inta_rstpot_1525 ;
  wire \dvi_rx1/dec_r/des_0/cal_data_sint_rstpot_1526 ;
  wire \dvi_rx1/dec_r/des_0/rst_data_rstpot_1527 ;
  wire \dvi_rx1/dec_b/phsalgn_0/blnkbgn_rstpot_1528 ;
  wire \dvi_rx1/dec_g/phsalgn_0/blnkbgn_rstpot_1529 ;
  wire \dvi_rx1/dec_r/phsalgn_0/blnkbgn_rstpot_1530 ;
  wire \dvi_rx1/dec_b/cbnd/blnkbgn_rstpot_1531 ;
  wire \dvi_rx1/dec_g/cbnd/blnkbgn_rstpot_1532 ;
  wire \dvi_rx1/dec_r/cbnd/blnkbgn_rstpot_1533 ;
  wire \dvi_rx1/dec_b/des_0/inc_data_int_rstpot_1534 ;
  wire \dvi_rx1/dec_b/des_0/ce_data_rstpot_1535 ;
  wire \dvi_rx1/dec_g/des_0/inc_data_int_rstpot_1536 ;
  wire \dvi_rx1/dec_g/des_0/ce_data_rstpot_1537 ;
  wire \dvi_rx1/dec_r/des_0/inc_data_int_rstpot_1538 ;
  wire \dvi_rx1/dec_r/des_0/ce_data_rstpot_1539 ;
  wire \dvi_rx1/dec_b/cbnd/ra_en_rstpot_1540 ;
  wire \dvi_rx1/dec_g/cbnd/ra_en_rstpot_1541 ;
  wire \dvi_rx1/dec_r/cbnd/ra_en_rstpot_1542 ;
  wire \dvi_rx1/dec_b/des_0/rst_data_rstpot1_1543 ;
  wire \dvi_rx1/dec_g/des_0/rst_data_rstpot1_1544 ;
  wire \dvi_rx1/dec_r/des_0/rst_data_rstpot1_1545 ;
  wire N54;
  wire N56;
  wire N58;
  wire N60;
  wire N62;
  wire N64;
  wire N66;
  wire N68;
  wire N70;
  wire N72;
  wire N74;
  wire N76;
  wire N78;
  wire N80;
  wire N82;
  wire N84;
  wire N85;
  wire N86;
  wire N87;
  wire N89;
  wire N90;
  wire N91;
  wire N92;
  wire N103;
  wire N105;
  wire N107;
  wire N109;
  wire N110;
  wire N112;
  wire N113;
  wire N114;
  wire N115;
  wire N116;
  wire N117;
  wire N118;
  wire N119;
  wire N120;
  wire N121;
  wire N122;
  wire N123;
  wire N124;
  wire N125;
  wire N126;
  wire N127;
  wire N128;
  wire N130;
  wire N132;
  wire N134;
  wire N136;
  wire N138;
  wire N140;
  wire N142;
  wire N144;
  wire N146;
  wire N148;
  wire N150;
  wire N152;
  wire N154;
  wire N156;
  wire N158;
  wire N160;
  wire N162;
  wire N164;
  wire N165;
  wire N166;
  wire N167;
  wire N168;
  wire N169;
  wire N170;
  wire N171;
  wire N172;
  wire N173;
  wire N174;
  wire N175;
  wire N176;
  wire N177;
  wire N178;
  wire N179;
  wire N180;
  wire N181;
  wire N182;
  wire N183;
  wire N184;
  wire N185;
  wire N186;
  wire N187;
  wire \rgb2ycbcr_converter/hsync/[5].delay_i/Mshreg_temp_0_1632 ;
  wire \rgb2ycbcr_converter/de/[5].delay_i/Mshreg_temp_0_1633 ;
  wire \rgb2ycbcr_converter/vsync/[5].delay_i/Mshreg_temp_0_1634 ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_5_1635 ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_7_1636 ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_6_1637 ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_2_1638 ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_4_1639 ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_3_1640 ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_1_1641 ;
  wire \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_0_1642 ;
  wire NLW_sysclk_div_IOCLK_UNCONNECTED;
  wire NLW_sysclk_div_SERDESSTROBE_UNCONNECTED;
  wire NLW_clk25_buf_O_UNCONNECTED;
  wire NLW_tx_ioclk_buf_LOCK_UNCONNECTED;
  wire \NLW_dvi_rx1/tmdsclk_bufg_O_UNCONNECTED ;
  wire \NLW_dvi_rx1/bufio_tmdsclk_IOCLK_UNCONNECTED ;
  wire \NLW_dvi_rx1/bufio_tmdsclk_SERDESSTROBE_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q3_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_INCDEC_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_VALID_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_s_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_m_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_m_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_m_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iserdes_m_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_s_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_s_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_s_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_m_BUSY_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_m_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_m_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/des_0/iodelay_m_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q3_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_INCDEC_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_VALID_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_s_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_m_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_m_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_m_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iserdes_m_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_s_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_s_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_s_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_m_BUSY_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_m_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_m_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/des_0/iodelay_m_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q3_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_INCDEC_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_VALID_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_s_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_m_CFB0_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_m_DFB_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_m_CFB1_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iserdes_m_FABRICOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_s_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_s_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_s_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_m_BUSY_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_m_DOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_m_DATAOUT2_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/des_0/iodelay_m_TOUT_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_m_SHIFTOUT3_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_m_SHIFTOUT4_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_s_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_s_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_s_OQ_UNCONNECTED ;
  wire \NLW_dvi_tx/clkout/oserdes_s_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_m_SHIFTOUT3_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_m_SHIFTOUT4_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_s_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_s_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_s_OQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes0/oserdes_s_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_m_SHIFTOUT3_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_m_SHIFTOUT4_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_s_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_s_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_s_OQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes1/oserdes_s_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_m_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_m_SHIFTOUT3_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_m_SHIFTOUT4_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_s_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_s_TQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_s_OQ_UNCONNECTED ;
  wire \NLW_dvi_tx/oserdes2/oserdes_s_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[29].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[28].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[27].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[26].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[25].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[24].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[23].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[22].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[21].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[20].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[19].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[18].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[17].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[16].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[15].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[14].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[13].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[12].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[11].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[10].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_dvi_tx/pixel2x/fifo_u/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/hsync/[5].delay_i/Mshreg_temp_0_Q15_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/de/[5].delay_i/Mshreg_temp_0_Q15_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/vsync/[5].delay_i/Mshreg_temp_0_Q15_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_5_Q15_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_7_Q15_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_6_Q15_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_2_Q15_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_4_Q15_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_3_Q15_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_1_Q15_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_0_Q15_UNCONNECTED ;
  wire NLW_PLL_OSERDES_0_CLKOUT3_UNCONNECTED;
  wire NLW_PLL_OSERDES_0_CLKOUT1_UNCONNECTED;
  wire NLW_PLL_OSERDES_0_CLKOUT4_UNCONNECTED;
  wire NLW_PLL_OSERDES_0_CLKOUT5_UNCONNECTED;
  wire \NLW_dvi_rx1/PLL_ISERDES_CLKOUT3_UNCONNECTED ;
  wire \NLW_dvi_rx1/PLL_ISERDES_CLKOUT4_UNCONNECTED ;
  wire \NLW_dvi_rx1/PLL_ISERDES_CLKOUT5_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<35>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<34>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<33>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<32>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<31>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<30>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<29>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<28>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<27>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<26>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<25>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<15>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<14>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<13>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<12>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<11>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<10>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<9>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<8>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<7>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<6>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<5>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<4>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<3>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<2>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<1>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrB_p<0>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<35>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<34>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<33>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<32>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<31>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<30>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<29>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<28>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<27>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<26>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<25>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<15>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<14>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<13>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<12>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<11>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<10>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<9>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<8>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<7>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<6>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<5>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<4>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<3>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<2>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<1>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrG_p<0>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<35>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<34>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<33>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<32>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<31>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<30>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<29>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<28>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<27>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<26>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<25>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<15>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<14>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<13>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<12>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<11>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<10>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<9>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<8>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<7>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<6>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<5>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<4>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<3>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<2>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<1>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CrR_p<0>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<35>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<34>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<33>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<32>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<31>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<30>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<29>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<28>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<27>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<26>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<25>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<15>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<14>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<13>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<12>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<11>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<10>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<9>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<8>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<7>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<6>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<5>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<4>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<3>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<2>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<1>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbB_p<0>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<35>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<34>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<33>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<32>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<31>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<30>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<29>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<28>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<27>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<26>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<25>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<15>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<14>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<13>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<12>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<11>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<10>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<9>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<8>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<7>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<6>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<5>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<4>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<3>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<2>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<1>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbG_p<0>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<35>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<34>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<33>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<32>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<31>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<30>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<29>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<28>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<27>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<26>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<25>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<15>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<14>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<13>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<12>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<11>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<10>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<9>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<8>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<7>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<6>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<5>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<4>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<3>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<2>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<1>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_CbR_p<0>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<35>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<34>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<33>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<32>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<31>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<30>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<29>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<28>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<27>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<26>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<25>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<15>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<14>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<13>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<12>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<11>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<10>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<9>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<8>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<7>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<6>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<5>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<4>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<3>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<2>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<1>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YB_p<0>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<35>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<34>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<33>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<32>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<31>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<30>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<29>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<28>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<27>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<26>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<25>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<15>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<14>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<13>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<12>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<11>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<10>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<9>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<8>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<7>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<6>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<5>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<4>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<3>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<2>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<1>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YG_p<0>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<35>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<34>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<33>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<32>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<31>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<30>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<29>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<28>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<27>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<26>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<25>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<15>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<14>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<13>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<12>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<11>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<10>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<9>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<8>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<7>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<6>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<5>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<4>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<3>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<2>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<1>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/mull_YR_p<0>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/Cr_RGB_total_s<8>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/Cb_RGB_total_s<8>_UNCONNECTED ;
  wire \NLW_rgb2ycbcr_converter/Y_RGB_s<8>_UNCONNECTED ;
  wire [7 : 0] \dvi_rx1/dec_r/dout ;
  wire [7 : 0] \dvi_rx1/dec_g/dout ;
  wire [7 : 0] \dvi_rx1/dec_b/dout ;
  wire [7 : 0] tx_red;
  wire [7 : 0] tx_green;
  wire [7 : 0] tx_blue;
  wire [7 : 0] \g_mux<1> ;
  wire [7 : 0] \b_mux<1> ;
  wire [1 : 1] \b_mux<2> ;
  wire [0 : 0] \dvi_rx1/dec_r/data ;
  wire [9 : 0] \dvi_rx1/dec_r/rawword ;
  wire [4 : 0] \dvi_rx1/dec_r/raw5bit_q ;
  wire [9 : 0] \dvi_rx1/dec_r/cbnd/sdata ;
  wire [4 : 0] \dvi_rx1/dec_r/raw5bit ;
  wire [0 : 0] \dvi_rx1/dec_g/data ;
  wire [9 : 0] \dvi_rx1/dec_g/rawword ;
  wire [4 : 0] \dvi_rx1/dec_g/raw5bit_q ;
  wire [9 : 0] \dvi_rx1/dec_g/cbnd/sdata ;
  wire [4 : 0] \dvi_rx1/dec_g/raw5bit ;
  wire [0 : 0] \dvi_rx1/dec_b/data ;
  wire [9 : 0] \dvi_rx1/dec_b/rawword ;
  wire [4 : 0] \dvi_rx1/dec_b/raw5bit_q ;
  wire [9 : 0] \dvi_rx1/dec_b/cbnd/sdata ;
  wire [4 : 0] \dvi_rx1/dec_b/raw5bit ;
  wire [4 : 0] \dvi_rx1/dec_b/des_0/pdcounter ;
  wire [7 : 0] \dvi_rx1/dec_b/des_0/Mcount_counter_cy ;
  wire [7 : 0] \dvi_rx1/dec_b/des_0/Mcount_counter_lut ;
  wire [8 : 0] \dvi_rx1/dec_b/des_0/counter ;
  wire [0 : 0] \dvi_rx1/dec_b/des_0/busy_data_or ;
  wire [4 : 0] \dvi_rx1/dec_g/des_0/pdcounter ;
  wire [0 : 0] \dvi_rx1/dec_g/des_0/busy_data_or ;
  wire [4 : 0] \dvi_rx1/dec_r/des_0/pdcounter ;
  wire [0 : 0] \dvi_rx1/dec_r/des_0/busy_data_or ;
  wire [6 : 0] \dvi_rx1/dec_b/phsalgn_0/ctkn_counter ;
  wire [10 : 0] \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy ;
  wire [0 : 0] \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut ;
  wire [2 : 0] \dvi_rx1/dec_b/phsalgn_0/bitslip_cnt ;
  wire [11 : 0] \dvi_rx1/dec_b/phsalgn_0/Result ;
  wire [11 : 0] \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer ;
  wire [6 : 0] \dvi_rx1/dec_g/phsalgn_0/ctkn_counter ;
  wire [10 : 0] \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy ;
  wire [0 : 0] \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut ;
  wire [2 : 0] \dvi_rx1/dec_g/phsalgn_0/bitslip_cnt ;
  wire [11 : 0] \dvi_rx1/dec_g/phsalgn_0/Result ;
  wire [11 : 0] \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer ;
  wire [6 : 0] \dvi_rx1/dec_r/phsalgn_0/ctkn_counter ;
  wire [10 : 0] \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy ;
  wire [0 : 0] \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut ;
  wire [2 : 0] \dvi_rx1/dec_r/phsalgn_0/bitslip_cnt ;
  wire [11 : 0] \dvi_rx1/dec_r/phsalgn_0/Result ;
  wire [11 : 0] \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer ;
  wire [3 : 0] \dvi_rx1/dec_b/cbnd/ra ;
  wire [3 : 0] \dvi_rx1/dec_b/cbnd/wa ;
  wire [3 : 0] \dvi_rx1/dec_b/cbnd/Result ;
  wire [9 : 0] \dvi_rx1/dec_b/cbnd/dpfo_dout ;
  wire [3 : 0] \dvi_rx1/dec_g/cbnd/ra ;
  wire [3 : 0] \dvi_rx1/dec_g/cbnd/Result ;
  wire [9 : 0] \dvi_rx1/dec_g/cbnd/dpfo_dout ;
  wire [3 : 0] \dvi_rx1/dec_r/cbnd/ra ;
  wire [3 : 0] \dvi_rx1/dec_r/cbnd/Result ;
  wire [9 : 0] \dvi_rx1/dec_r/cbnd/dpfo_dout ;
  wire [8 : 0] \rgb2ycbcr_converter/CrRGB_output ;
  wire [8 : 0] \rgb2ycbcr_converter/CrRG_output ;
  wire [8 : 0] \rgb2ycbcr_converter/CbRGB_output ;
  wire [8 : 0] \rgb2ycbcr_converter/CbRG_output ;
  wire [7 : 0] \rgb2ycbcr_converter/YRGB_output ;
  wire [8 : 0] \rgb2ycbcr_converter/YRG_output ;
  wire [24 : 16] \rgb2ycbcr_converter/CrB ;
  wire [24 : 16] \rgb2ycbcr_converter/CrG ;
  wire [24 : 16] \rgb2ycbcr_converter/CrR ;
  wire [24 : 16] \rgb2ycbcr_converter/CbB ;
  wire [24 : 16] \rgb2ycbcr_converter/CbG ;
  wire [24 : 16] \rgb2ycbcr_converter/CbR ;
  wire [24 : 16] \rgb2ycbcr_converter/YB ;
  wire [24 : 16] \rgb2ycbcr_converter/YG ;
  wire [24 : 16] \rgb2ycbcr_converter/YR ;
  wire [0 : 0] \dvi_tx/tmdsclkint ;
  wire [2 : 0] \dvi_tx/tmdsint ;
  wire [14 : 0] \dvi_tx/n0011 ;
  wire [9 : 0] \dvi_tx/encr/dout ;
  wire [9 : 0] \dvi_tx/encg/dout ;
  wire [9 : 0] \dvi_tx/encb/dout ;
  wire [0 : 0] \dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut ;
  wire [0 : 0] \dvi_tx/encr/ADDERTREE_INTERNAL_Madd_lut ;
  wire [3 : 3] \dvi_tx/encr/Msub_n0236_cy ;
  wire [3 : 3] \dvi_tx/encr/Msub_n0233_cy ;
  wire [3 : 1] \dvi_tx/encr/Msub_n0233_lut ;
  wire [0 : 0] \dvi_tx/encr/ADDERTREE_INTERNAL_Madd8_lut ;
  wire [0 : 0] \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy ;
  wire [0 : 0] \dvi_tx/encr/ADDERTREE_INTERNAL_Madd3_lut ;
  wire [3 : 1] \dvi_tx/encr/PWR_35_o_BUS_0017_sub_29_OUT ;
  wire [8 : 1] \dvi_tx/encr/q_m ;
  wire [3 : 2] \dvi_tx/encr/n0236 ;
  wire [2 : 2] \dvi_tx/encr/n0233 ;
  wire [9 : 0] \dvi_tx/encr/c1_reg_decision3_mux_54_OUT ;
  wire [3 : 0] \dvi_tx/encr/n1d ;
  wire [8 : 0] \dvi_tx/encr/q_m_reg ;
  wire [3 : 1] \dvi_tx/encr/n0q_m ;
  wire [3 : 1] \dvi_tx/encr/n1q_m ;
  wire [4 : 1] \dvi_tx/encr/cnt ;
  wire [7 : 0] \dvi_tx/encr/din_q ;
  wire [0 : 0] \dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut ;
  wire [0 : 0] \dvi_tx/encg/ADDERTREE_INTERNAL_Madd_lut ;
  wire [3 : 3] \dvi_tx/encg/Msub_n0236_cy ;
  wire [3 : 3] \dvi_tx/encg/Msub_n0233_cy ;
  wire [3 : 1] \dvi_tx/encg/Msub_n0233_lut ;
  wire [0 : 0] \dvi_tx/encg/ADDERTREE_INTERNAL_Madd8_lut ;
  wire [0 : 0] \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy ;
  wire [0 : 0] \dvi_tx/encg/ADDERTREE_INTERNAL_Madd3_lut ;
  wire [3 : 1] \dvi_tx/encg/PWR_35_o_BUS_0017_sub_29_OUT ;
  wire [8 : 1] \dvi_tx/encg/q_m ;
  wire [3 : 2] \dvi_tx/encg/n0236 ;
  wire [2 : 2] \dvi_tx/encg/n0233 ;
  wire [9 : 0] \dvi_tx/encg/c1_reg_decision3_mux_54_OUT ;
  wire [3 : 0] \dvi_tx/encg/n1d ;
  wire [8 : 0] \dvi_tx/encg/q_m_reg ;
  wire [3 : 1] \dvi_tx/encg/n0q_m ;
  wire [3 : 1] \dvi_tx/encg/n1q_m ;
  wire [4 : 1] \dvi_tx/encg/cnt ;
  wire [7 : 0] \dvi_tx/encg/din_q ;
  wire [0 : 0] \dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut ;
  wire [0 : 0] \dvi_tx/encb/ADDERTREE_INTERNAL_Madd_lut ;
  wire [3 : 3] \dvi_tx/encb/Msub_n0236_cy ;
  wire [3 : 3] \dvi_tx/encb/Msub_n0233_cy ;
  wire [3 : 1] \dvi_tx/encb/Msub_n0233_lut ;
  wire [0 : 0] \dvi_tx/encb/ADDERTREE_INTERNAL_Madd8_lut ;
  wire [0 : 0] \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy ;
  wire [0 : 0] \dvi_tx/encb/ADDERTREE_INTERNAL_Madd3_lut ;
  wire [3 : 1] \dvi_tx/encb/PWR_35_o_BUS_0017_sub_29_OUT ;
  wire [8 : 1] \dvi_tx/encb/q_m ;
  wire [3 : 2] \dvi_tx/encb/n0236 ;
  wire [2 : 2] \dvi_tx/encb/n0233 ;
  wire [9 : 0] \dvi_tx/encb/c1_reg_decision3_mux_54_OUT ;
  wire [3 : 0] \dvi_tx/encb/n1d ;
  wire [8 : 0] \dvi_tx/encb/q_m_reg ;
  wire [3 : 1] \dvi_tx/encb/n0q_m ;
  wire [3 : 1] \dvi_tx/encb/n1q_m ;
  wire [4 : 1] \dvi_tx/encb/cnt ;
  wire [7 : 0] \dvi_tx/encb/din_q ;
  wire [14 : 0] \dvi_tx/pixel2x/mux ;
  wire [29 : 0] \dvi_tx/pixel2x/db ;
  wire [3 : 0] \dvi_tx/pixel2x/ra ;
  wire [3 : 0] \dvi_tx/pixel2x/wa ;
  wire [29 : 0] \dvi_tx/pixel2x/dataint ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(\b_mux<2> [1])
  );
  BUFIO2 #(
    .DIVIDE_BYPASS ( "FALSE" ),
    .I_INVERT ( "FALSE" ),
    .USE_DOUBLER ( "FALSE" ),
    .DIVIDE ( 5 ))
  sysclk_div (
    .DIVCLK(clk25m),
    .IOCLK(NLW_sysclk_div_IOCLK_UNCONNECTED),
    .I(clk100_IBUF_12),
    .SERDESSTROBE(NLW_sysclk_div_SERDESSTROBE_UNCONNECTED)
  );
  BUFG   clk25_buf (
    .O(NLW_clk25_buf_O_UNCONNECTED),
    .I(clk25m)
  );
  BUFGMUX #(
    .CLK_SEL_TYPE ( "SYNC" ))
  tx_bufg_pclk (
    .S(N0),
    .O(tx_pclk),
    .I0(rx_pllclk1),
    .I1(rx_pllclk1)
  );
  BUFG   tx_clkfb_buf (
    .O(tx_clkfbin),
    .I(tx_clkfbout)
  );
  BUFPLL #(
    .ENABLE_SYNC ( "TRUE" ),
    .DIVIDE ( 5 ))
  tx_ioclk_buf (
    .IOCLK(tx_pclkx10),
    .LOCK(NLW_tx_ioclk_buf_LOCK_UNCONNECTED),
    .SERDESSTROBE(tx_serdesstrobe),
    .PLLIN(tx_pllclk0),
    .GCLK(tx_pclkx2),
    .LOCKED(tx_plllckd)
  );
  BUFG   tx0_pclkx2_buf (
    .O(tx_pclkx2),
    .I(tx_pllclk2)
  );
  BUFG   \dvi_rx1/tmdsclk_bufg  (
    .O(\NLW_dvi_rx1/tmdsclk_bufg_O_UNCONNECTED ),
    .I(\dvi_rx1/rxclk )
  );
  BUFG   \dvi_rx1/pclkx2bufg  (
    .O(\dvi_rx1/pclkx2 ),
    .I(\dvi_rx1/pllclk2 )
  );
  BUFG   \dvi_rx1/pclkbufg  (
    .O(rx_pclk),
    .I(rx_pllclk1)
  );
  BUFPLL #(
    .ENABLE_SYNC ( "TRUE" ),
    .DIVIDE ( 5 ))
  \dvi_rx1/ioclk_buf  (
    .IOCLK(\dvi_rx1/pclkx10 ),
    .LOCK(\dvi_rx1/bufpll_lock ),
    .SERDESSTROBE(\dvi_rx1/serdesstrobe ),
    .PLLIN(\dvi_rx1/pllclk0 ),
    .GCLK(\dvi_rx1/pclkx2 ),
    .LOCKED(\dvi_rx1/pll_lckd )
  );
  BUFIO2 #(
    .DIVIDE_BYPASS ( "TRUE" ),
    .I_INVERT ( "FALSE" ),
    .USE_DOUBLER ( "FALSE" ),
    .DIVIDE ( 1 ))
  \dvi_rx1/bufio_tmdsclk  (
    .DIVCLK(\dvi_rx1/rxclk ),
    .IOCLK(\NLW_dvi_rx1/bufio_tmdsclk_IOCLK_UNCONNECTED ),
    .I(\dvi_rx1/rxclkint ),
    .SERDESSTROBE(\NLW_dvi_rx1/bufio_tmdsclk_SERDESSTROBE_UNCONNECTED )
  );
  IBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DIFF_TERM ( "FALSE" ),
    .DQS_BIAS ( "FALSE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "TMDS_33" ))
  \dvi_rx1/ibuf_rxclk  (
    .I(RX1_TMDS[3]),
    .IB(RX1_TMDSB[3]),
    .O(\dvi_rx1/rxclkint )
  );
  FDRE   \dvi_rx1/dec_r/dout_7  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[7]_data[7]_MUX_117_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [7])
  );
  FDRE   \dvi_rx1/dec_r/dout_6  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[6]_data[6]_MUX_116_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [6])
  );
  FDRE   \dvi_rx1/dec_r/dout_5  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[5]_data[5]_MUX_115_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [5])
  );
  FDRE   \dvi_rx1/dec_r/dout_4  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[4]_data[4]_MUX_114_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [4])
  );
  FDRE   \dvi_rx1/dec_r/dout_3  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[3]_data[3]_MUX_113_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [3])
  );
  FDRE   \dvi_rx1/dec_r/dout_2  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[2]_data[2]_MUX_112_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [2])
  );
  FDRE   \dvi_rx1/dec_r/dout_1  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data[1]_data[1]_MUX_111_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [1])
  );
  FDRE   \dvi_rx1/dec_r/dout_0  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/n0050_inv ),
    .D(\dvi_rx1/dec_r/data [0]),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_r/dout [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/bitslip_q  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/phsalgn_0/bitslip_174 ),
    .Q(\dvi_rx1/dec_r/bitslip_q_158 )
  );
  FDE   \dvi_rx1/dec_r/rawword_9  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [4]),
    .Q(\dvi_rx1/dec_r/rawword [9])
  );
  FDE   \dvi_rx1/dec_r/rawword_8  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [3]),
    .Q(\dvi_rx1/dec_r/rawword [8])
  );
  FDE   \dvi_rx1/dec_r/rawword_7  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [2]),
    .Q(\dvi_rx1/dec_r/rawword [7])
  );
  FDE   \dvi_rx1/dec_r/rawword_6  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [1]),
    .Q(\dvi_rx1/dec_r/rawword [6])
  );
  FDE   \dvi_rx1/dec_r/rawword_5  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit [0]),
    .Q(\dvi_rx1/dec_r/rawword [5])
  );
  FDE   \dvi_rx1/dec_r/rawword_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [4]),
    .Q(\dvi_rx1/dec_r/rawword [4])
  );
  FDE   \dvi_rx1/dec_r/rawword_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [3]),
    .Q(\dvi_rx1/dec_r/rawword [3])
  );
  FDE   \dvi_rx1/dec_r/rawword_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [2]),
    .Q(\dvi_rx1/dec_r/rawword [2])
  );
  FDE   \dvi_rx1/dec_r/rawword_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [1]),
    .Q(\dvi_rx1/dec_r/rawword [1])
  );
  FDE   \dvi_rx1/dec_r/rawword_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/rx_toggle ),
    .D(\dvi_rx1/dec_r/raw5bit_q [0]),
    .Q(\dvi_rx1/dec_r/rawword [0])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_4  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [4]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [4])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_3  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [3]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [3])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [2]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [2])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_1  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [1]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [1])
  );
  FD   \dvi_rx1/dec_r/raw5bit_q_0  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/raw5bit [0]),
    .Q(\dvi_rx1/dec_r/raw5bit_q [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/bitslipx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/bitslip_bitslip_q_AND_1_o ),
    .Q(\dvi_rx1/dec_r/bitslipx2_157 )
  );
  FD   \dvi_rx1/dec_r/flipgearx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/phsalgn_0/flipgear_175 ),
    .Q(\dvi_rx1/dec_r/flipgearx2_156 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/toggle  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/toggle_INV_3_o ),
    .Q(\dvi_rx1/dec_r/toggle_271 )
  );
  FDRE   \dvi_rx1/dec_g/dout_7  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[7]_data[7]_MUX_117_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [7])
  );
  FDRE   \dvi_rx1/dec_g/dout_6  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[6]_data[6]_MUX_116_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [6])
  );
  FDRE   \dvi_rx1/dec_g/dout_5  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[5]_data[5]_MUX_115_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [5])
  );
  FDRE   \dvi_rx1/dec_g/dout_4  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[4]_data[4]_MUX_114_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [4])
  );
  FDRE   \dvi_rx1/dec_g/dout_3  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[3]_data[3]_MUX_113_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [3])
  );
  FDRE   \dvi_rx1/dec_g/dout_2  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[2]_data[2]_MUX_112_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [2])
  );
  FDRE   \dvi_rx1/dec_g/dout_1  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data[1]_data[1]_MUX_111_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [1])
  );
  FDRE   \dvi_rx1/dec_g/dout_0  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/n0050_inv ),
    .D(\dvi_rx1/dec_g/data [0]),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_g/dout [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/bitslip_q  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/phsalgn_0/bitslip_220 ),
    .Q(\dvi_rx1/dec_g/bitslip_q_204 )
  );
  FDE   \dvi_rx1/dec_g/rawword_9  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [4]),
    .Q(\dvi_rx1/dec_g/rawword [9])
  );
  FDE   \dvi_rx1/dec_g/rawword_8  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [3]),
    .Q(\dvi_rx1/dec_g/rawword [8])
  );
  FDE   \dvi_rx1/dec_g/rawword_7  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [2]),
    .Q(\dvi_rx1/dec_g/rawword [7])
  );
  FDE   \dvi_rx1/dec_g/rawword_6  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [1]),
    .Q(\dvi_rx1/dec_g/rawword [6])
  );
  FDE   \dvi_rx1/dec_g/rawword_5  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit [0]),
    .Q(\dvi_rx1/dec_g/rawword [5])
  );
  FDE   \dvi_rx1/dec_g/rawword_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [4]),
    .Q(\dvi_rx1/dec_g/rawword [4])
  );
  FDE   \dvi_rx1/dec_g/rawword_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [3]),
    .Q(\dvi_rx1/dec_g/rawword [3])
  );
  FDE   \dvi_rx1/dec_g/rawword_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [2]),
    .Q(\dvi_rx1/dec_g/rawword [2])
  );
  FDE   \dvi_rx1/dec_g/rawword_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [1]),
    .Q(\dvi_rx1/dec_g/rawword [1])
  );
  FDE   \dvi_rx1/dec_g/rawword_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/rx_toggle ),
    .D(\dvi_rx1/dec_g/raw5bit_q [0]),
    .Q(\dvi_rx1/dec_g/rawword [0])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_4  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [4]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [4])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_3  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [3]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [3])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [2]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [2])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_1  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [1]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [1])
  );
  FD   \dvi_rx1/dec_g/raw5bit_q_0  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/raw5bit [0]),
    .Q(\dvi_rx1/dec_g/raw5bit_q [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/bitslipx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/bitslip_bitslip_q_AND_1_o ),
    .Q(\dvi_rx1/dec_g/bitslipx2_203 )
  );
  FD   \dvi_rx1/dec_g/flipgearx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/phsalgn_0/flipgear_221 ),
    .Q(\dvi_rx1/dec_g/flipgearx2_202 )
  );
  FDRE   \dvi_rx1/dec_b/dout_7  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[7]_data[7]_MUX_117_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [7])
  );
  FDRE   \dvi_rx1/dec_b/dout_6  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[6]_data[6]_MUX_116_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [6])
  );
  FDRE   \dvi_rx1/dec_b/dout_5  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[5]_data[5]_MUX_115_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [5])
  );
  FDRE   \dvi_rx1/dec_b/dout_4  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[4]_data[4]_MUX_114_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [4])
  );
  FDRE   \dvi_rx1/dec_b/dout_3  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[3]_data[3]_MUX_113_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [3])
  );
  FDRE   \dvi_rx1/dec_b/dout_2  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[2]_data[2]_MUX_112_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [2])
  );
  FDRE   \dvi_rx1/dec_b/dout_1  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data[1]_data[1]_MUX_111_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [1])
  );
  FDRE   \dvi_rx1/dec_b/dout_0  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/n0050_inv ),
    .D(\dvi_rx1/dec_b/data [0]),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/dout [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/bitslip_q  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/phsalgn_0/bitslip_272 ),
    .Q(\dvi_rx1/dec_b/bitslip_q_255 )
  );
  FDE   \dvi_rx1/dec_b/rawword_9  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [4]),
    .Q(\dvi_rx1/dec_b/rawword [9])
  );
  FDE   \dvi_rx1/dec_b/rawword_8  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [3]),
    .Q(\dvi_rx1/dec_b/rawword [8])
  );
  FDE   \dvi_rx1/dec_b/rawword_7  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [2]),
    .Q(\dvi_rx1/dec_b/rawword [7])
  );
  FDE   \dvi_rx1/dec_b/rawword_6  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [1]),
    .Q(\dvi_rx1/dec_b/rawword [6])
  );
  FDE   \dvi_rx1/dec_b/rawword_5  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit [0]),
    .Q(\dvi_rx1/dec_b/rawword [5])
  );
  FDE   \dvi_rx1/dec_b/rawword_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [4]),
    .Q(\dvi_rx1/dec_b/rawword [4])
  );
  FDE   \dvi_rx1/dec_b/rawword_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [3]),
    .Q(\dvi_rx1/dec_b/rawword [3])
  );
  FDE   \dvi_rx1/dec_b/rawword_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [2]),
    .Q(\dvi_rx1/dec_b/rawword [2])
  );
  FDE   \dvi_rx1/dec_b/rawword_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [1]),
    .Q(\dvi_rx1/dec_b/rawword [1])
  );
  FDE   \dvi_rx1/dec_b/rawword_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/rx_toggle ),
    .D(\dvi_rx1/dec_b/raw5bit_q [0]),
    .Q(\dvi_rx1/dec_b/rawword [0])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_4  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [4]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [4])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_3  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [3]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [3])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [2]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [2])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_1  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [1]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [1])
  );
  FD   \dvi_rx1/dec_b/raw5bit_q_0  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/raw5bit [0]),
    .Q(\dvi_rx1/dec_b/raw5bit_q [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/bitslipx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/bitslip_bitslip_q_AND_1_o ),
    .Q(\dvi_rx1/dec_b/bitslipx2_254 )
  );
  FD   \dvi_rx1/dec_b/flipgearx2  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/phsalgn_0/flipgear_273 ),
    .Q(\dvi_rx1/dec_b/flipgearx2_253 )
  );
  FDR   \dvi_rx1/dec_b/de  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/n0050_inv ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/de_44 )
  );
  FDR   \dvi_rx1/dec_b/c1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/c1_43 )
  );
  FDR   \dvi_rx1/dec_b/c0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_16_o ),
    .R(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv ),
    .Q(\dvi_rx1/dec_b/c0_42 )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_b/des_0/iserdes_s  (
    .CFB0(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q3_UNCONNECTED ),
    .DFB(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_DFB_UNCONNECTED ),
    .CE0(N0),
    .CFB1(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_CFB1_UNCONNECTED ),
    .INCDEC(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_INCDEC_UNCONNECTED ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_b/des_0/cascade ),
    .VALID(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_VALID_UNCONNECTED ),
    .Q4(\dvi_rx1/dec_b/raw5bit [0]),
    .Q2(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q2_UNCONNECTED ),
    .Q1(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_Q1_UNCONNECTED ),
    .FABRICOUT(\NLW_dvi_rx1/dec_b/des_0/iserdes_s_FABRICOUT_UNCONNECTED ),
    .CLK1(\b_mux<2> [1]),
    .D(\dvi_rx1/dec_b/des_0/ddly_s ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_b/bitslipx2_254 ),
    .SHIFTOUT(\dvi_rx1/dec_b/des_0/pd_edge )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_b/des_0/iserdes_m  (
    .CFB0(\NLW_dvi_rx1/dec_b/des_0/iserdes_m_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\dvi_rx1/dec_b/raw5bit [3]),
    .DFB(\NLW_dvi_rx1/dec_b/des_0/iserdes_m_DFB_UNCONNECTED ),
    .CE0(N0),
    .CFB1(\NLW_dvi_rx1/dec_b/des_0/iserdes_m_CFB1_UNCONNECTED ),
    .INCDEC(\dvi_rx1/dec_b/des_0/incdec_data_im ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_b/des_0/pd_edge ),
    .VALID(\dvi_rx1/dec_b/des_0/valid_data_im ),
    .Q4(\dvi_rx1/dec_b/raw5bit [4]),
    .Q2(\dvi_rx1/dec_b/raw5bit [2]),
    .Q1(\dvi_rx1/dec_b/raw5bit [1]),
    .FABRICOUT(\NLW_dvi_rx1/dec_b/des_0/iserdes_m_FABRICOUT_UNCONNECTED ),
    .CLK1(\b_mux<2> [1]),
    .D(\dvi_rx1/dec_b/des_0/ddly_m ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_b/bitslipx2_254 ),
    .SHIFTOUT(\dvi_rx1/dec_b/des_0/cascade )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "SLAVE" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_b/des_0/iodelay_s  (
    .BUSY(\dvi_rx1/dec_b/des_0/busy_data_or [0]),
    .T(N0),
    .CAL(\dvi_rx1/dec_b/des_0/cal_data_sint_345 ),
    .DOUT(\NLW_dvi_rx1/dec_b/des_0/iodelay_s_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(\b_mux<2> [1]),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_b/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_b/des_0/inc_data_int_333 ),
    .CE(\dvi_rx1/dec_b/des_0/ce_data_338 ),
    .DATAOUT(\dvi_rx1/dec_b/des_0/ddly_s ),
    .DATAOUT2(\NLW_dvi_rx1/dec_b/des_0/iodelay_s_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_b/des_0/rst_data_334 ),
    .ODATAIN(\b_mux<2> [1]),
    .TOUT(\NLW_dvi_rx1/dec_b/des_0/iodelay_s_TOUT_UNCONNECTED )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "STAY_AT_LIMIT" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "MASTER" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_b/des_0/iodelay_m  (
    .BUSY(\NLW_dvi_rx1/dec_b/des_0/iodelay_m_BUSY_UNCONNECTED ),
    .T(N0),
    .CAL(\dvi_rx1/dec_b/des_0/cal_data_master_346 ),
    .DOUT(\NLW_dvi_rx1/dec_b/des_0/iodelay_m_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(\b_mux<2> [1]),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_b/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_b/des_0/inc_data_int_333 ),
    .CE(\dvi_rx1/dec_b/des_0/ce_data_338 ),
    .DATAOUT(\dvi_rx1/dec_b/des_0/ddly_m ),
    .DATAOUT2(\NLW_dvi_rx1/dec_b/des_0/iodelay_m_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_b/des_0/rst_data_334 ),
    .ODATAIN(\b_mux<2> [1]),
    .TOUT(\NLW_dvi_rx1/dec_b/des_0/iodelay_m_TOUT_UNCONNECTED )
  );
  IBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DIFF_TERM ( "FALSE" ),
    .DQS_BIAS ( "FALSE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \dvi_rx1/dec_b/des_0/data_in  (
    .I(RX1_TMDS[0]),
    .IB(RX1_TMDSB[0]),
    .O(\dvi_rx1/dec_b/des_0/rx_data_in )
  );
  FDC   \dvi_rx1/dec_b/des_0/state_FSM_FFd2  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/state_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 )
  );
  FDC   \dvi_rx1/dec_b/des_0/state_FSM_FFd3  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/state_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 )
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_8  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter8 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [8])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_7  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter7 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [7])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_6  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter6 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [6])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_5  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter5 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [5])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter4 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [4])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter3 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [3])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter2 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [2])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter1 ),
    .Q(\dvi_rx1/dec_b/des_0/counter [1])
  );
  FDC   \dvi_rx1/dec_b/des_0/counter_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/Mcount_counter ),
    .Q(\dvi_rx1/dec_b/des_0/counter [0])
  );
  FDC   \dvi_rx1/dec_b/des_0/state_FSM_FFd4  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/state_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 )
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<8>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [7]),
    .LI(\b_mux<2> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter8 )
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<7>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [6]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [7]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter7 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<7>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [6]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [7]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<7>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [7]),
    .I2(\b_mux<2> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [7])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<6>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [5]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [6]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter6 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<6>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [5]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [6]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<6>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [6]),
    .I2(\b_mux<2> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [6])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<5>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [4]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [5]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter5 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<5>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [4]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [5]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<5>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [5]),
    .I2(\b_mux<2> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [5])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<4>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [3]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [4]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter4 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<4>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [3]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [4]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<4>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [4]),
    .I2(\b_mux<2> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [4])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<3>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [2]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [3]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter3 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<3>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [2]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [3]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<3>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [3]),
    .I2(\b_mux<2> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [3])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<2>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [1]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [2]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter2 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<2>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [1]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [2]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<2>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [2]),
    .I2(\b_mux<2> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [2])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<1>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [0]),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter1 )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<1>  (
    .CI(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [0]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<1>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [1]),
    .I2(\b_mux<2> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [1])
  );
  XORCY   \dvi_rx1/dec_b/des_0/Mcount_counter_xor<0>  (
    .CI(\dvi_rx1/dec_b/des_0/counter<8>_inv ),
    .LI(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [0]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter )
  );
  MUXCY   \dvi_rx1/dec_b/des_0/Mcount_counter_cy<0>  (
    .CI(\dvi_rx1/dec_b/des_0/counter<8>_inv ),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [0]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_cy [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/Mcount_counter_lut<0>  (
    .I0(\dvi_rx1/dec_b/des_0/counter [8]),
    .I1(\dvi_rx1/dec_b/des_0/counter [0]),
    .I2(\b_mux<2> [1]),
    .O(\dvi_rx1/dec_b/des_0/Mcount_counter_lut [0])
  );
  FDE   \dvi_rx1/dec_b/des_0/valid_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_b/des_0/valid_data_im ),
    .Q(\dvi_rx1/dec_b/des_0/valid_data_d_339 )
  );
  FDE   \dvi_rx1/dec_b/des_0/incdec_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_b/des_0/incdec_data_im ),
    .Q(\dvi_rx1/dec_b/des_0/incdec_data_d_340 )
  );
  FDCE   \dvi_rx1/dec_b/des_0/pdcounter_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0283_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [4])
  );
  FDPE   \dvi_rx1/dec_b/des_0/pdcounter_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0283_inv ),
    .D(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [3])
  );
  FDCE   \dvi_rx1/dec_b/des_0/pdcounter_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0283_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [2])
  );
  FDCE   \dvi_rx1/dec_b/des_0/pdcounter_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0283_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [1])
  );
  FDCE   \dvi_rx1/dec_b/des_0/pdcounter_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/_n0283_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> ),
    .Q(\dvi_rx1/dec_b/des_0/pdcounter [0])
  );
  FDE   \dvi_rx1/dec_b/des_0/busy_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_b/des_0/busy_data_or [0]),
    .Q(\dvi_rx1/dec_b/des_0/busy_data_d_341 )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_g/des_0/iserdes_s  (
    .CFB0(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q3_UNCONNECTED ),
    .DFB(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_DFB_UNCONNECTED ),
    .CE0(N0),
    .CFB1(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_CFB1_UNCONNECTED ),
    .INCDEC(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_INCDEC_UNCONNECTED ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_g/des_0/cascade ),
    .VALID(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_VALID_UNCONNECTED ),
    .Q4(\dvi_rx1/dec_g/raw5bit [0]),
    .Q2(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q2_UNCONNECTED ),
    .Q1(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_Q1_UNCONNECTED ),
    .FABRICOUT(\NLW_dvi_rx1/dec_g/des_0/iserdes_s_FABRICOUT_UNCONNECTED ),
    .CLK1(\b_mux<2> [1]),
    .D(\dvi_rx1/dec_g/des_0/ddly_s ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_g/bitslipx2_203 ),
    .SHIFTOUT(\dvi_rx1/dec_g/des_0/pd_edge )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_g/des_0/iserdes_m  (
    .CFB0(\NLW_dvi_rx1/dec_g/des_0/iserdes_m_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\dvi_rx1/dec_g/raw5bit [3]),
    .DFB(\NLW_dvi_rx1/dec_g/des_0/iserdes_m_DFB_UNCONNECTED ),
    .CE0(N0),
    .CFB1(\NLW_dvi_rx1/dec_g/des_0/iserdes_m_CFB1_UNCONNECTED ),
    .INCDEC(\dvi_rx1/dec_g/des_0/incdec_data_im ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_g/des_0/pd_edge ),
    .VALID(\dvi_rx1/dec_g/des_0/valid_data_im ),
    .Q4(\dvi_rx1/dec_g/raw5bit [4]),
    .Q2(\dvi_rx1/dec_g/raw5bit [2]),
    .Q1(\dvi_rx1/dec_g/raw5bit [1]),
    .FABRICOUT(\NLW_dvi_rx1/dec_g/des_0/iserdes_m_FABRICOUT_UNCONNECTED ),
    .CLK1(\b_mux<2> [1]),
    .D(\dvi_rx1/dec_g/des_0/ddly_m ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_g/bitslipx2_203 ),
    .SHIFTOUT(\dvi_rx1/dec_g/des_0/cascade )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "SLAVE" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_g/des_0/iodelay_s  (
    .BUSY(\dvi_rx1/dec_g/des_0/busy_data_or [0]),
    .T(N0),
    .CAL(\dvi_rx1/dec_g/des_0/cal_data_sint_392 ),
    .DOUT(\NLW_dvi_rx1/dec_g/des_0/iodelay_s_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(\b_mux<2> [1]),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_g/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_g/des_0/inc_data_int_381 ),
    .CE(\dvi_rx1/dec_g/des_0/ce_data_386 ),
    .DATAOUT(\dvi_rx1/dec_g/des_0/ddly_s ),
    .DATAOUT2(\NLW_dvi_rx1/dec_g/des_0/iodelay_s_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_g/des_0/rst_data_382 ),
    .ODATAIN(\b_mux<2> [1]),
    .TOUT(\NLW_dvi_rx1/dec_g/des_0/iodelay_s_TOUT_UNCONNECTED )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "STAY_AT_LIMIT" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "MASTER" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_g/des_0/iodelay_m  (
    .BUSY(\NLW_dvi_rx1/dec_g/des_0/iodelay_m_BUSY_UNCONNECTED ),
    .T(N0),
    .CAL(\dvi_rx1/dec_g/des_0/cal_data_master_393 ),
    .DOUT(\NLW_dvi_rx1/dec_g/des_0/iodelay_m_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(\b_mux<2> [1]),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_g/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_g/des_0/inc_data_int_381 ),
    .CE(\dvi_rx1/dec_g/des_0/ce_data_386 ),
    .DATAOUT(\dvi_rx1/dec_g/des_0/ddly_m ),
    .DATAOUT2(\NLW_dvi_rx1/dec_g/des_0/iodelay_m_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_g/des_0/rst_data_382 ),
    .ODATAIN(\b_mux<2> [1]),
    .TOUT(\NLW_dvi_rx1/dec_g/des_0/iodelay_m_TOUT_UNCONNECTED )
  );
  IBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DIFF_TERM ( "FALSE" ),
    .DQS_BIAS ( "FALSE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \dvi_rx1/dec_g/des_0/data_in  (
    .I(RX1_TMDS[1]),
    .IB(RX1_TMDSB[1]),
    .O(\dvi_rx1/dec_g/des_0/rx_data_in )
  );
  FDC   \dvi_rx1/dec_g/des_0/state_FSM_FFd2  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/state_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 )
  );
  FDC   \dvi_rx1/dec_g/des_0/state_FSM_FFd3  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/state_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 )
  );
  FDC   \dvi_rx1/dec_g/des_0/state_FSM_FFd4  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/state_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 )
  );
  FDE   \dvi_rx1/dec_g/des_0/valid_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_g/des_0/valid_data_im ),
    .Q(\dvi_rx1/dec_g/des_0/valid_data_d_387 )
  );
  FDE   \dvi_rx1/dec_g/des_0/incdec_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_g/des_0/incdec_data_im ),
    .Q(\dvi_rx1/dec_g/des_0/incdec_data_d_388 )
  );
  FDCE   \dvi_rx1/dec_g/des_0/pdcounter_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0283_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [4])
  );
  FDPE   \dvi_rx1/dec_g/des_0/pdcounter_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0283_inv ),
    .D(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [3])
  );
  FDCE   \dvi_rx1/dec_g/des_0/pdcounter_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0283_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [2])
  );
  FDCE   \dvi_rx1/dec_g/des_0/pdcounter_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0283_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [1])
  );
  FDCE   \dvi_rx1/dec_g/des_0/pdcounter_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_g/des_0/_n0283_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> ),
    .Q(\dvi_rx1/dec_g/des_0/pdcounter [0])
  );
  FDE   \dvi_rx1/dec_g/des_0/busy_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_g/des_0/busy_data_or [0]),
    .Q(\dvi_rx1/dec_g/des_0/busy_data_d_389 )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_r/des_0/iserdes_s  (
    .CFB0(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q3_UNCONNECTED ),
    .DFB(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_DFB_UNCONNECTED ),
    .CE0(N0),
    .CFB1(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_CFB1_UNCONNECTED ),
    .INCDEC(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_INCDEC_UNCONNECTED ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_r/des_0/cascade ),
    .VALID(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_VALID_UNCONNECTED ),
    .Q4(\dvi_rx1/dec_r/raw5bit [0]),
    .Q2(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q2_UNCONNECTED ),
    .Q1(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_Q1_UNCONNECTED ),
    .FABRICOUT(\NLW_dvi_rx1/dec_r/des_0/iserdes_s_FABRICOUT_UNCONNECTED ),
    .CLK1(\b_mux<2> [1]),
    .D(\dvi_rx1/dec_r/des_0/ddly_s ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_r/bitslipx2_157 ),
    .SHIFTOUT(\dvi_rx1/dec_r/des_0/pd_edge )
  );
  ISERDES2 #(
    .BITSLIP_ENABLE ( "TRUE" ),
    .DATA_RATE ( "SDR" ),
    .INTERFACE_TYPE ( "RETIMED" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ))
  \dvi_rx1/dec_r/des_0/iserdes_m  (
    .CFB0(\NLW_dvi_rx1/dec_r/des_0/iserdes_m_CFB0_UNCONNECTED ),
    .CLKDIV(\dvi_rx1/pclkx2 ),
    .Q3(\dvi_rx1/dec_r/raw5bit [3]),
    .DFB(\NLW_dvi_rx1/dec_r/des_0/iserdes_m_DFB_UNCONNECTED ),
    .CE0(N0),
    .CFB1(\NLW_dvi_rx1/dec_r/des_0/iserdes_m_CFB1_UNCONNECTED ),
    .INCDEC(\dvi_rx1/dec_r/des_0/incdec_data_im ),
    .CLK0(\dvi_rx1/pclkx10 ),
    .IOCE(\dvi_rx1/serdesstrobe ),
    .SHIFTIN(\dvi_rx1/dec_r/des_0/pd_edge ),
    .VALID(\dvi_rx1/dec_r/des_0/valid_data_im ),
    .Q4(\dvi_rx1/dec_r/raw5bit [4]),
    .Q2(\dvi_rx1/dec_r/raw5bit [2]),
    .Q1(\dvi_rx1/dec_r/raw5bit [1]),
    .FABRICOUT(\NLW_dvi_rx1/dec_r/des_0/iserdes_m_FABRICOUT_UNCONNECTED ),
    .CLK1(\b_mux<2> [1]),
    .D(\dvi_rx1/dec_r/des_0/ddly_m ),
    .RST(rx_reset),
    .BITSLIP(\dvi_rx1/dec_r/bitslipx2_157 ),
    .SHIFTOUT(\dvi_rx1/dec_r/des_0/cascade )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "WRAPAROUND" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "SLAVE" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_r/des_0/iodelay_s  (
    .BUSY(\dvi_rx1/dec_r/des_0/busy_data_or [0]),
    .T(N0),
    .CAL(\dvi_rx1/dec_r/des_0/cal_data_sint_437 ),
    .DOUT(\NLW_dvi_rx1/dec_r/des_0/iodelay_s_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(\b_mux<2> [1]),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_r/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_r/des_0/inc_data_int_426 ),
    .CE(\dvi_rx1/dec_r/des_0/ce_data_431 ),
    .DATAOUT(\dvi_rx1/dec_r/des_0/ddly_s ),
    .DATAOUT2(\NLW_dvi_rx1/dec_r/des_0/iodelay_s_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_r/des_0/rst_data_427 ),
    .ODATAIN(\b_mux<2> [1]),
    .TOUT(\NLW_dvi_rx1/dec_r/des_0/iodelay_s_TOUT_UNCONNECTED )
  );
  IODELAY2 #(
    .COUNTER_WRAPAROUND ( "STAY_AT_LIMIT" ),
    .DATA_RATE ( "SDR" ),
    .DELAY_SRC ( "IDATAIN" ),
    .IDELAY_MODE ( "NORMAL" ),
    .IDELAY_TYPE ( "DIFF_PHASE_DETECTOR" ),
    .SERDES_MODE ( "MASTER" ),
    .IDELAY2_VALUE ( 0 ),
    .IDELAY_VALUE ( 0 ),
    .ODELAY_VALUE ( 0 ),
    .SIM_TAPDELAY_VALUE ( 49 ))
  \dvi_rx1/dec_r/des_0/iodelay_m  (
    .BUSY(\NLW_dvi_rx1/dec_r/des_0/iodelay_m_BUSY_UNCONNECTED ),
    .T(N0),
    .CAL(\dvi_rx1/dec_r/des_0/cal_data_master_438 ),
    .DOUT(\NLW_dvi_rx1/dec_r/des_0/iodelay_m_DOUT_UNCONNECTED ),
    .IOCLK0(\dvi_rx1/pclkx10 ),
    .IOCLK1(\b_mux<2> [1]),
    .CLK(\dvi_rx1/pclkx2 ),
    .IDATAIN(\dvi_rx1/dec_r/des_0/rx_data_in ),
    .INC(\dvi_rx1/dec_r/des_0/inc_data_int_426 ),
    .CE(\dvi_rx1/dec_r/des_0/ce_data_431 ),
    .DATAOUT(\dvi_rx1/dec_r/des_0/ddly_m ),
    .DATAOUT2(\NLW_dvi_rx1/dec_r/des_0/iodelay_m_DATAOUT2_UNCONNECTED ),
    .RST(\dvi_rx1/dec_r/des_0/rst_data_427 ),
    .ODATAIN(\b_mux<2> [1]),
    .TOUT(\NLW_dvi_rx1/dec_r/des_0/iodelay_m_TOUT_UNCONNECTED )
  );
  IBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .DIFF_TERM ( "FALSE" ),
    .DQS_BIAS ( "FALSE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IFD_DELAY_VALUE ( "AUTO" ),
    .IOSTANDARD ( "DEFAULT" ))
  \dvi_rx1/dec_r/des_0/data_in  (
    .I(RX1_TMDS[2]),
    .IB(RX1_TMDSB[2]),
    .O(\dvi_rx1/dec_r/des_0/rx_data_in )
  );
  FDC   \dvi_rx1/dec_r/des_0/state_FSM_FFd2  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/state_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 )
  );
  FDC   \dvi_rx1/dec_r/des_0/state_FSM_FFd3  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/state_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 )
  );
  FDC   \dvi_rx1/dec_r/des_0/state_FSM_FFd4  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/state_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 )
  );
  FDE   \dvi_rx1/dec_r/des_0/valid_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_r/des_0/valid_data_im ),
    .Q(\dvi_rx1/dec_r/des_0/valid_data_d_432 )
  );
  FDE   \dvi_rx1/dec_r/des_0/incdec_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_r/des_0/incdec_data_im ),
    .Q(\dvi_rx1/dec_r/des_0/incdec_data_d_433 )
  );
  FDCE   \dvi_rx1/dec_r/des_0/pdcounter_4  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0283_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> ),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [4])
  );
  FDPE   \dvi_rx1/dec_r/des_0/pdcounter_3  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0283_inv ),
    .D(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [3])
  );
  FDCE   \dvi_rx1/dec_r/des_0/pdcounter_2  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0283_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> ),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [2])
  );
  FDCE   \dvi_rx1/dec_r/des_0/pdcounter_1  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0283_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> ),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [1])
  );
  FDCE   \dvi_rx1/dec_r/des_0/pdcounter_0  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_r/des_0/_n0283_inv ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> ),
    .Q(\dvi_rx1/dec_r/des_0/pdcounter [0])
  );
  FDE   \dvi_rx1/dec_r/des_0/busy_data_d  (
    .C(\dvi_rx1/pclkx2 ),
    .CE(\dvi_rx1/dec_b/des_0/reset_inv ),
    .D(\dvi_rx1/dec_r/des_0/busy_data_or [0]),
    .Q(\dvi_rx1/dec_r/des_0/busy_data_d_434 )
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [10]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1509 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [11])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<10>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1479 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [10])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1479 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [10])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<9>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1480 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [9])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1480 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [9])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<8>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1481 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [8])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1481 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [8])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<7>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1482 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [7])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1482 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [7])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<6>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1483 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [6])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1483 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [6])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<5>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1484 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [5])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1484 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [5])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<4>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1485 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [4])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1485 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [4])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<3>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1486 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [3])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1486 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [3])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<2>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1487 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [2])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1487 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [2])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<1>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1488 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [1])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>  (
    .CI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1488 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [1])
  );
  XORCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<0>  (
    .CI(\b_mux<2> [1]),
    .LI(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result [0])
  );
  MUXCY   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<0>  (
    .CI(\b_mux<2> [1]),
    .DI(N0),
    .S(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy [0])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_11  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [11]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [11])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_10  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [10]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [10])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_9  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [9]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [9])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_8  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [8]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [8])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_7  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [7]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [7])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [6]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [6])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [5]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [5])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [4]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [4])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [3]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [3])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [2]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [2])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [1]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [1])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result [0]),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [0])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<6>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_535 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [6])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<5>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_535 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [5])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<4>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_535 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<3>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_535 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<2>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_535 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<1>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_535 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1])
  );
  FDR   \dvi_rx1/dec_b/phsalgn_0/ctkn_counter_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/Result<0>1 ),
    .R(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_535 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1-In ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_528 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_529 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_531 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In_497 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_532 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_530 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6-In ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_533 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_q  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_523 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_q_527 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_523 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout_524 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_525 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_534 )
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/flipgear  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/flipgear_273 )
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/bitslip  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/bitslip_272 )
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/psaligned  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/psaligned_132 )
  );
  FDP   \dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_535 )
  );
  FDP   \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 )
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/bitslip_cnt_2  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [2])
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/bitslip_cnt_1  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [1])
  );
  FDC   \dvi_rx1/dec_b/phsalgn_0/bitslip_cnt_0  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [0])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [10]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1510 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [11])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<10>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1489 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [10])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1489 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [10])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<9>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1490 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [9])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1490 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [9])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<8>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1491 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [8])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1491 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [8])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<7>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1492 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [7])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1492 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [7])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<6>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1493 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [6])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1493 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [6])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<5>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1494 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [5])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1494 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [5])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<4>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1495 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [4])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1495 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [4])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<3>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1496 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [3])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1496 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [3])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<2>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1497 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [2])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1497 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [2])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<1>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1498 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [1])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>  (
    .CI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1498 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [1])
  );
  XORCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<0>  (
    .CI(\b_mux<2> [1]),
    .LI(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result [0])
  );
  MUXCY   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<0>  (
    .CI(\b_mux<2> [1]),
    .DI(N0),
    .S(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy [0])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_11  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [11]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [11])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_10  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [10]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [10])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_9  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [9]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [9])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_8  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [8]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [8])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_7  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [7]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [7])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [6]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [6])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [5]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [5])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [4]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [4])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [3]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [3])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [2]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [2])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [1]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [1])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result [0]),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [0])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<6>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_622 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [6])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<5>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_622 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [5])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<4>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_622 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<3>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_622 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<2>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_622 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<1>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_622 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1])
  );
  FDR   \dvi_rx1/dec_g/phsalgn_0/ctkn_counter_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/Result<0>1 ),
    .R(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_622 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1-In ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_615 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_616 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_618 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In_584 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_619 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_617 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6-In ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_620 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_q  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_610 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_q_614 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_610 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout_611 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_612 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_621 )
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/flipgear  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/flipgear_221 )
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/bitslip  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/bitslip_220 )
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/psaligned  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/psaligned_131 )
  );
  FDP   \dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_622 )
  );
  FDP   \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 )
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/bitslip_cnt_2  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [2])
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/bitslip_cnt_1  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [1])
  );
  FDC   \dvi_rx1/dec_g/phsalgn_0/bitslip_cnt_0  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [0])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [10]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1511 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [11])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<10>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1499 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [10])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [9]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1499 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [10])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<9>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1500 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [9])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [8]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1500 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [9])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<8>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1501 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [8])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [7]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1501 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [8])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<7>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1502 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [7])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [6]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1502 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [7])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<6>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1503 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [6])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [5]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1503 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [6])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<5>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1504 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [5])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [4]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1504 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [5])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<4>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1505 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [4])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [3]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1505 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [4])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<3>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1506 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [3])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [2]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1506 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [3])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<2>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1507 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [2])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [1]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1507 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [2])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<1>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1508 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [1])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>  (
    .CI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [0]),
    .DI(\b_mux<2> [1]),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1508 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [1])
  );
  XORCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<0>  (
    .CI(\b_mux<2> [1]),
    .LI(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result [0])
  );
  MUXCY   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<0>  (
    .CI(\b_mux<2> [1]),
    .DI(N0),
    .S(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy [0])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_11  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [11]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [11])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_10  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [10]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [10])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_9  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [9]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [9])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_8  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [8]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [8])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_7  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [7]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [7])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [6]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [6])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [5]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [5])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [4]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [4])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [3]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [3])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [2]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [2])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [1]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [1])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result [0]),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [0])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<6>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_709 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [6])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<5>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_709 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [5])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<4>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_709 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<3>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_709 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<2>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_709 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<1>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_709 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1])
  );
  FDR   \dvi_rx1/dec_r/phsalgn_0/ctkn_counter_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/Result<0>1 ),
    .R(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_709 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1-In ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_702 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2-In ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_703 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4-In ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_705 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In_671 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_706 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3-In ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_704 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6-In ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_707 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_q  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_697 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_q_701 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_697 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout_698 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_699 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_52_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_708 )
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/flipgear  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/flipgear_175 )
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/bitslip  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_45_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/bitslip_174 )
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/psaligned  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_47_o ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/psaligned_130 )
  );
  FDP   \dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_709 )
  );
  FDP   \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_41_o ),
    .PRE(rx_reset),
    .Q(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 )
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/bitslip_cnt_2  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [2])
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/bitslip_cnt_1  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [1])
  );
  FDC   \dvi_rx1/dec_r/phsalgn_0/bitslip_cnt_0  (
    .C(rx_pclk),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [0])
  );
  FDR   \dvi_rx1/dec_b/cbnd/wa_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/Result<3>1 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/wa [3])
  );
  FDR   \dvi_rx1/dec_b/cbnd/wa_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/Result<2>1 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/wa [2])
  );
  FDR   \dvi_rx1/dec_b/cbnd/wa_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/Result<1>1 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/wa [1])
  );
  FDR   \dvi_rx1/dec_b/cbnd/wa_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/Result<0>1 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/wa [0])
  );
  FDRE   \dvi_rx1/dec_b/cbnd/ra_3  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/cbnd/ra_en_732 ),
    .D(\dvi_rx1/dec_b/cbnd/Result [3]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/ra [3])
  );
  FDRE   \dvi_rx1/dec_b/cbnd/ra_2  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/cbnd/ra_en_732 ),
    .D(\dvi_rx1/dec_b/cbnd/Result [2]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/ra [2])
  );
  FDRE   \dvi_rx1/dec_b/cbnd/ra_1  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/cbnd/ra_en_732 ),
    .D(\dvi_rx1/dec_b/cbnd/Result [1]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/ra [1])
  );
  FDRE   \dvi_rx1/dec_b/cbnd/ra_0  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_b/cbnd/ra_en_732 ),
    .D(\dvi_rx1/dec_b/cbnd/Result [0]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/ra [0])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_9  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [9]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [9])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_8  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [8]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [8])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_7  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [7]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [7])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [6]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [6])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [5]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [5])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [4]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [4])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [3]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [3])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [2]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [2])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [1]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [1])
  );
  FD   \dvi_rx1/dec_b/cbnd/sdata_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/dpfo_dout [0]),
    .Q(\dvi_rx1/dec_b/cbnd/sdata [0])
  );
  FD   \dvi_rx1/dec_b/cbnd/rcvd_ctkn_q  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_738 ),
    .Q(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_q_737 )
  );
  FDR   \dvi_rx1/dec_b/cbnd/rawdata_vld_rising  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/rawdata_vld_rawdata_vld_q_AND_23_o_norst ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_734 )
  );
  FD   \dvi_rx1/dec_b/cbnd/rawdata_vld_q  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/rawdata_vld ),
    .Q(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 )
  );
  FD   \dvi_rx1/dec_b/cbnd/rcvd_ctkn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o ),
    .Q(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_738 )
  );
  FDRE   \dvi_rx1/dec_g/cbnd/ra_3  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/cbnd/ra_en_758 ),
    .D(\dvi_rx1/dec_g/cbnd/Result [3]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/ra [3])
  );
  FDRE   \dvi_rx1/dec_g/cbnd/ra_2  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/cbnd/ra_en_758 ),
    .D(\dvi_rx1/dec_g/cbnd/Result [2]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/ra [2])
  );
  FDRE   \dvi_rx1/dec_g/cbnd/ra_1  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/cbnd/ra_en_758 ),
    .D(\dvi_rx1/dec_g/cbnd/Result [1]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/ra [1])
  );
  FDRE   \dvi_rx1/dec_g/cbnd/ra_0  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_g/cbnd/ra_en_758 ),
    .D(\dvi_rx1/dec_g/cbnd/Result [0]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/ra [0])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_9  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [9]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [9])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_8  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [8]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [8])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_7  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [7]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [7])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [6]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [6])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [5]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [5])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [4]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [4])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [3]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [3])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [2]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [2])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [1]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [1])
  );
  FD   \dvi_rx1/dec_g/cbnd/sdata_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/dpfo_dout [0]),
    .Q(\dvi_rx1/dec_g/cbnd/sdata [0])
  );
  FD   \dvi_rx1/dec_g/cbnd/rcvd_ctkn_q  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_762 ),
    .Q(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_q_761 )
  );
  FD   \dvi_rx1/dec_g/cbnd/rcvd_ctkn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o ),
    .Q(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_762 )
  );
  FDRE   \dvi_rx1/dec_r/cbnd/ra_3  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/cbnd/ra_en_782 ),
    .D(\dvi_rx1/dec_r/cbnd/Result [3]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/ra [3])
  );
  FDRE   \dvi_rx1/dec_r/cbnd/ra_2  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/cbnd/ra_en_782 ),
    .D(\dvi_rx1/dec_r/cbnd/Result [2]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/ra [2])
  );
  FDRE   \dvi_rx1/dec_r/cbnd/ra_1  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/cbnd/ra_en_782 ),
    .D(\dvi_rx1/dec_r/cbnd/Result [1]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/ra [1])
  );
  FDRE   \dvi_rx1/dec_r/cbnd/ra_0  (
    .C(rx_pclk),
    .CE(\dvi_rx1/dec_r/cbnd/ra_en_782 ),
    .D(\dvi_rx1/dec_r/cbnd/Result [0]),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/ra [0])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_9  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [9]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [9])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_8  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [8]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [8])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_7  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [7]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [7])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_6  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [6]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [6])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_5  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [5]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [5])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_4  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [4]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [4])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_3  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [3]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [3])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_2  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [2]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [2])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_1  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [1]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [1])
  );
  FD   \dvi_rx1/dec_r/cbnd/sdata_0  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/dpfo_dout [0]),
    .Q(\dvi_rx1/dec_r/cbnd/sdata [0])
  );
  FD   \dvi_rx1/dec_r/cbnd/rcvd_ctkn_q  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_786 ),
    .Q(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_q_785 )
  );
  FD   \dvi_rx1/dec_r/cbnd/rcvd_ctkn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o ),
    .Q(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_786 )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [9]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [9])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [8]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [8])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [7]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [6]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [5]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [4]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [3]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [2]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [1]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_r/rawword [0]),
    .DPRA0(\dvi_rx1/dec_r/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_r/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_r/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_r/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_r/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_r/cbnd/dpfo_dout [0])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [9]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [9])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [8]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [8])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [7]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [6]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [5]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [4]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [3]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [2]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [1]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_g/rawword [0]),
    .DPRA0(\dvi_rx1/dec_g/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_g/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_g/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_g/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_g/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_g/cbnd/dpfo_dout [0])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [9]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [9])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [8]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [8])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [7]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [6]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [5]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [4]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [3]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [2]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [1]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U  (
    .A0(\dvi_rx1/dec_b/cbnd/wa [0]),
    .A1(\dvi_rx1/dec_b/cbnd/wa [1]),
    .A2(\dvi_rx1/dec_b/cbnd/wa [2]),
    .A3(\dvi_rx1/dec_b/cbnd/wa [3]),
    .D(\dvi_rx1/dec_b/rawword [0]),
    .DPRA0(\dvi_rx1/dec_b/cbnd/ra [0]),
    .DPRA1(\dvi_rx1/dec_b/cbnd/ra [1]),
    .DPRA2(\dvi_rx1/dec_b/cbnd/ra [2]),
    .DPRA3(\dvi_rx1/dec_b/cbnd/ra [3]),
    .WCLK(rx_pclk),
    .WE(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .SPO(\NLW_dvi_rx1/dec_b/cbnd/cbfifo_i/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_rx1/dec_b/cbnd/dpfo_dout [0])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/clkout/oserdes_m  (
    .SHIFTOUT1(\dvi_tx/clkout/cascade_di ),
    .D2(\b_mux<2> [1]),
    .D3(\b_mux<2> [1]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/clkout/oserdes_m_TQ_UNCONNECTED ),
    .SHIFTIN1(N0),
    .T4(\b_mux<2> [1]),
    .OCE(N0),
    .SHIFTIN4(\dvi_tx/clkout/cascade_to ),
    .SHIFTIN3(\dvi_tx/clkout/cascade_do ),
    .SHIFTOUT3(\NLW_dvi_tx/clkout/oserdes_m_SHIFTOUT3_UNCONNECTED ),
    .OQ(\dvi_tx/tmdsclk ),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<2> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(N0),
    .D1(\dvi_tx/tmdsclkint [0]),
    .D4(\b_mux<2> [1]),
    .TCE(N0),
    .T3(\b_mux<2> [1]),
    .SHIFTOUT2(\dvi_tx/clkout/cascade_ti ),
    .TRAIN(\b_mux<2> [1]),
    .CLK1(\b_mux<2> [1]),
    .RST(\b_mux<2> [1]),
    .SHIFTOUT4(\NLW_dvi_tx/clkout/oserdes_m_SHIFTOUT4_UNCONNECTED ),
    .T2(\b_mux<2> [1])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/clkout/oserdes_s  (
    .SHIFTOUT1(\NLW_dvi_tx/clkout/oserdes_s_SHIFTOUT1_UNCONNECTED ),
    .D2(\dvi_tx/tmdsclkint [0]),
    .D3(\dvi_tx/tmdsclkint [0]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/clkout/oserdes_s_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/clkout/cascade_di ),
    .T4(\b_mux<2> [1]),
    .OCE(N0),
    .SHIFTIN4(N0),
    .SHIFTIN3(N0),
    .SHIFTOUT3(\dvi_tx/clkout/cascade_do ),
    .OQ(\NLW_dvi_tx/clkout/oserdes_s_OQ_UNCONNECTED ),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<2> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/clkout/cascade_ti ),
    .D1(\dvi_tx/tmdsclkint [0]),
    .D4(\dvi_tx/tmdsclkint [0]),
    .TCE(N0),
    .T3(\b_mux<2> [1]),
    .SHIFTOUT2(\NLW_dvi_tx/clkout/oserdes_s_SHIFTOUT2_UNCONNECTED ),
    .TRAIN(\b_mux<2> [1]),
    .CLK1(\b_mux<2> [1]),
    .RST(\b_mux<2> [1]),
    .SHIFTOUT4(\dvi_tx/clkout/cascade_to ),
    .T2(\b_mux<2> [1])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes0/oserdes_m  (
    .SHIFTOUT1(\dvi_tx/oserdes0/cascade_di ),
    .D2(\b_mux<2> [1]),
    .D3(\b_mux<2> [1]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes0/oserdes_m_TQ_UNCONNECTED ),
    .SHIFTIN1(N0),
    .T4(\b_mux<2> [1]),
    .OCE(N0),
    .SHIFTIN4(\dvi_tx/oserdes0/cascade_to ),
    .SHIFTIN3(\dvi_tx/oserdes0/cascade_do ),
    .SHIFTOUT3(\NLW_dvi_tx/oserdes0/oserdes_m_SHIFTOUT3_UNCONNECTED ),
    .OQ(\dvi_tx/tmdsint [0]),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<2> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(N0),
    .D1(\dvi_tx/n0011 [4]),
    .D4(\b_mux<2> [1]),
    .TCE(N0),
    .T3(\b_mux<2> [1]),
    .SHIFTOUT2(\dvi_tx/oserdes0/cascade_ti ),
    .TRAIN(\b_mux<2> [1]),
    .CLK1(\b_mux<2> [1]),
    .RST(\b_mux<2> [1]),
    .SHIFTOUT4(\NLW_dvi_tx/oserdes0/oserdes_m_SHIFTOUT4_UNCONNECTED ),
    .T2(\b_mux<2> [1])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes0/oserdes_s  (
    .SHIFTOUT1(\NLW_dvi_tx/oserdes0/oserdes_s_SHIFTOUT1_UNCONNECTED ),
    .D2(\dvi_tx/n0011 [1]),
    .D3(\dvi_tx/n0011 [2]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes0/oserdes_s_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/oserdes0/cascade_di ),
    .T4(\b_mux<2> [1]),
    .OCE(N0),
    .SHIFTIN4(N0),
    .SHIFTIN3(N0),
    .SHIFTOUT3(\dvi_tx/oserdes0/cascade_do ),
    .OQ(\NLW_dvi_tx/oserdes0/oserdes_s_OQ_UNCONNECTED ),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<2> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/oserdes0/cascade_ti ),
    .D1(\dvi_tx/n0011 [0]),
    .D4(\dvi_tx/n0011 [3]),
    .TCE(N0),
    .T3(\b_mux<2> [1]),
    .SHIFTOUT2(\NLW_dvi_tx/oserdes0/oserdes_s_SHIFTOUT2_UNCONNECTED ),
    .TRAIN(\b_mux<2> [1]),
    .CLK1(\b_mux<2> [1]),
    .RST(\b_mux<2> [1]),
    .SHIFTOUT4(\dvi_tx/oserdes0/cascade_to ),
    .T2(\b_mux<2> [1])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes1/oserdes_m  (
    .SHIFTOUT1(\dvi_tx/oserdes1/cascade_di ),
    .D2(\b_mux<2> [1]),
    .D3(\b_mux<2> [1]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes1/oserdes_m_TQ_UNCONNECTED ),
    .SHIFTIN1(N0),
    .T4(\b_mux<2> [1]),
    .OCE(N0),
    .SHIFTIN4(\dvi_tx/oserdes1/cascade_to ),
    .SHIFTIN3(\dvi_tx/oserdes1/cascade_do ),
    .SHIFTOUT3(\NLW_dvi_tx/oserdes1/oserdes_m_SHIFTOUT3_UNCONNECTED ),
    .OQ(\dvi_tx/tmdsint [1]),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<2> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(N0),
    .D1(\dvi_tx/n0011 [9]),
    .D4(\b_mux<2> [1]),
    .TCE(N0),
    .T3(\b_mux<2> [1]),
    .SHIFTOUT2(\dvi_tx/oserdes1/cascade_ti ),
    .TRAIN(\b_mux<2> [1]),
    .CLK1(\b_mux<2> [1]),
    .RST(\b_mux<2> [1]),
    .SHIFTOUT4(\NLW_dvi_tx/oserdes1/oserdes_m_SHIFTOUT4_UNCONNECTED ),
    .T2(\b_mux<2> [1])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes1/oserdes_s  (
    .SHIFTOUT1(\NLW_dvi_tx/oserdes1/oserdes_s_SHIFTOUT1_UNCONNECTED ),
    .D2(\dvi_tx/n0011 [6]),
    .D3(\dvi_tx/n0011 [7]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes1/oserdes_s_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/oserdes1/cascade_di ),
    .T4(\b_mux<2> [1]),
    .OCE(N0),
    .SHIFTIN4(N0),
    .SHIFTIN3(N0),
    .SHIFTOUT3(\dvi_tx/oserdes1/cascade_do ),
    .OQ(\NLW_dvi_tx/oserdes1/oserdes_s_OQ_UNCONNECTED ),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<2> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/oserdes1/cascade_ti ),
    .D1(\dvi_tx/n0011 [5]),
    .D4(\dvi_tx/n0011 [8]),
    .TCE(N0),
    .T3(\b_mux<2> [1]),
    .SHIFTOUT2(\NLW_dvi_tx/oserdes1/oserdes_s_SHIFTOUT2_UNCONNECTED ),
    .TRAIN(\b_mux<2> [1]),
    .CLK1(\b_mux<2> [1]),
    .RST(\b_mux<2> [1]),
    .SHIFTOUT4(\dvi_tx/oserdes1/cascade_to ),
    .T2(\b_mux<2> [1])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "MASTER" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes2/oserdes_m  (
    .SHIFTOUT1(\dvi_tx/oserdes2/cascade_di ),
    .D2(\b_mux<2> [1]),
    .D3(\b_mux<2> [1]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes2/oserdes_m_TQ_UNCONNECTED ),
    .SHIFTIN1(N0),
    .T4(\b_mux<2> [1]),
    .OCE(N0),
    .SHIFTIN4(\dvi_tx/oserdes2/cascade_to ),
    .SHIFTIN3(\dvi_tx/oserdes2/cascade_do ),
    .SHIFTOUT3(\NLW_dvi_tx/oserdes2/oserdes_m_SHIFTOUT3_UNCONNECTED ),
    .OQ(\dvi_tx/tmdsint [2]),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<2> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(N0),
    .D1(\dvi_tx/n0011 [14]),
    .D4(\b_mux<2> [1]),
    .TCE(N0),
    .T3(\b_mux<2> [1]),
    .SHIFTOUT2(\dvi_tx/oserdes2/cascade_ti ),
    .TRAIN(\b_mux<2> [1]),
    .CLK1(\b_mux<2> [1]),
    .RST(\b_mux<2> [1]),
    .SHIFTOUT4(\NLW_dvi_tx/oserdes2/oserdes_m_SHIFTOUT4_UNCONNECTED ),
    .T2(\b_mux<2> [1])
  );
  OSERDES2 #(
    .BYPASS_GCLK_FF ( "FALSE" ),
    .DATA_RATE_OQ ( "SDR" ),
    .DATA_RATE_OT ( "SDR" ),
    .OUTPUT_MODE ( "DIFFERENTIAL" ),
    .SERDES_MODE ( "SLAVE" ),
    .DATA_WIDTH ( 5 ),
    .TRAIN_PATTERN ( 0 ))
  \dvi_tx/oserdes2/oserdes_s  (
    .SHIFTOUT1(\NLW_dvi_tx/oserdes2/oserdes_s_SHIFTOUT1_UNCONNECTED ),
    .D2(\dvi_tx/n0011 [11]),
    .D3(\dvi_tx/n0011 [12]),
    .CLKDIV(tx_pclkx2),
    .TQ(\NLW_dvi_tx/oserdes2/oserdes_s_TQ_UNCONNECTED ),
    .SHIFTIN1(\dvi_tx/oserdes2/cascade_di ),
    .T4(\b_mux<2> [1]),
    .OCE(N0),
    .SHIFTIN4(N0),
    .SHIFTIN3(N0),
    .SHIFTOUT3(\dvi_tx/oserdes2/cascade_do ),
    .OQ(\NLW_dvi_tx/oserdes2/oserdes_s_OQ_UNCONNECTED ),
    .CLK0(tx_pclkx10),
    .T1(\b_mux<2> [1]),
    .IOCE(tx_serdesstrobe),
    .SHIFTIN2(\dvi_tx/oserdes2/cascade_ti ),
    .D1(\dvi_tx/n0011 [10]),
    .D4(\dvi_tx/n0011 [13]),
    .TCE(N0),
    .T3(\b_mux<2> [1]),
    .SHIFTOUT2(\NLW_dvi_tx/oserdes2/oserdes_s_SHIFTOUT2_UNCONNECTED ),
    .TRAIN(\b_mux<2> [1]),
    .CLK1(\b_mux<2> [1]),
    .RST(\b_mux<2> [1]),
    .SHIFTOUT4(\dvi_tx/oserdes2/cascade_to ),
    .T2(\b_mux<2> [1])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \dvi_tx/TMDS2  (
    .I(\dvi_tx/tmdsint [2]),
    .O(TX0_TMDS[2]),
    .OB(TX0_TMDSB[2])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \dvi_tx/TMDS1  (
    .I(\dvi_tx/tmdsint [1]),
    .O(TX0_TMDS[1]),
    .OB(TX0_TMDSB[1])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \dvi_tx/TMDS0  (
    .I(\dvi_tx/tmdsint [0]),
    .O(TX0_TMDS[0]),
    .OB(TX0_TMDSB[0])
  );
  OBUFDS #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IOSTANDARD ( "DEFAULT" ),
    .SLEW ( "20" ))
  \dvi_tx/TMDS3  (
    .I(\dvi_tx/tmdsclk ),
    .O(TX0_TMDS[3]),
    .OB(TX0_TMDSB[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/toggle  (
    .C(tx_pclkx2),
    .D(\dvi_tx/toggle_inv ),
    .Q(\dvi_tx/toggle_949 )
  );
  FD   \dvi_tx/encr/n0q_m_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/PWR_35_o_BUS_0017_sub_29_OUT [3]),
    .Q(\dvi_tx/encr/n0q_m [3])
  );
  FD   \dvi_tx/encr/n0q_m_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/PWR_35_o_BUS_0017_sub_29_OUT [2]),
    .Q(\dvi_tx/encr/n0q_m [2])
  );
  FD   \dvi_tx/encr/n0q_m_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/PWR_35_o_BUS_0017_sub_29_OUT [1]),
    .Q(\dvi_tx/encr/n0q_m [1])
  );
  FD   \dvi_tx/encr/n1q_m_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .Q(\dvi_tx/encr/n1q_m [3])
  );
  FD   \dvi_tx/encr/n1q_m_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_29 ),
    .Q(\dvi_tx/encr/n1q_m [2])
  );
  FD   \dvi_tx/encr/n1q_m_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_19 ),
    .Q(\dvi_tx/encr/n1q_m [1])
  );
  FD   \dvi_tx/encr/q_m_reg_8  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [8]),
    .Q(\dvi_tx/encr/q_m_reg [8])
  );
  FD   \dvi_tx/encr/q_m_reg_7  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [7]),
    .Q(\dvi_tx/encr/q_m_reg [7])
  );
  FD   \dvi_tx/encr/q_m_reg_6  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [6]),
    .Q(\dvi_tx/encr/q_m_reg [6])
  );
  FD   \dvi_tx/encr/q_m_reg_5  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [5]),
    .Q(\dvi_tx/encr/q_m_reg [5])
  );
  FD   \dvi_tx/encr/q_m_reg_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [4]),
    .Q(\dvi_tx/encr/q_m_reg [4])
  );
  FD   \dvi_tx/encr/q_m_reg_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [3]),
    .Q(\dvi_tx/encr/q_m_reg [3])
  );
  FD   \dvi_tx/encr/q_m_reg_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [2]),
    .Q(\dvi_tx/encr/q_m_reg [2])
  );
  FD   \dvi_tx/encr/q_m_reg_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/q_m [1]),
    .Q(\dvi_tx/encr/q_m_reg [1])
  );
  FD   \dvi_tx/encr/q_m_reg_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/din_q [0]),
    .Q(\dvi_tx/encr/q_m_reg [0])
  );
  FD   \dvi_tx/encr/n1d_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy<0>2 ),
    .Q(\dvi_tx/encr/n1d [3])
  );
  FD   \dvi_tx/encr/n1d_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_24 ),
    .Q(\dvi_tx/encr/n1d [2])
  );
  FD   \dvi_tx/encr/n1d_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_14 ),
    .Q(\dvi_tx/encr/n1d [1])
  );
  FD   \dvi_tx/encr/n1d_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_04 ),
    .Q(\dvi_tx/encr/n1d [0])
  );
  FD   \dvi_tx/encr/de_reg  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/de_q_1288 ),
    .Q(\dvi_tx/encr/de_reg_1287 )
  );
  FD   \dvi_tx/encr/de_q  (
    .C(tx_pclk),
    .D(tx_de),
    .Q(\dvi_tx/encr/de_q_1288 )
  );
  FD   \dvi_tx/encr/din_q_7  (
    .C(tx_pclk),
    .D(tx_red[7]),
    .Q(\dvi_tx/encr/din_q [7])
  );
  FD   \dvi_tx/encr/din_q_6  (
    .C(tx_pclk),
    .D(tx_red[6]),
    .Q(\dvi_tx/encr/din_q [6])
  );
  FD   \dvi_tx/encr/din_q_5  (
    .C(tx_pclk),
    .D(tx_red[5]),
    .Q(\dvi_tx/encr/din_q [5])
  );
  FD   \dvi_tx/encr/din_q_4  (
    .C(tx_pclk),
    .D(tx_red[4]),
    .Q(\dvi_tx/encr/din_q [4])
  );
  FD   \dvi_tx/encr/din_q_3  (
    .C(tx_pclk),
    .D(tx_red[3]),
    .Q(\dvi_tx/encr/din_q [3])
  );
  FD   \dvi_tx/encr/din_q_2  (
    .C(tx_pclk),
    .D(tx_red[2]),
    .Q(\dvi_tx/encr/din_q [2])
  );
  FD   \dvi_tx/encr/din_q_1  (
    .C(tx_pclk),
    .D(tx_red[1]),
    .Q(\dvi_tx/encr/din_q [1])
  );
  FD   \dvi_tx/encr/din_q_0  (
    .C(tx_pclk),
    .D(tx_red[0]),
    .Q(\dvi_tx/encr/din_q [0])
  );
  FD   \dvi_tx/encg/n0q_m_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/PWR_35_o_BUS_0017_sub_29_OUT [3]),
    .Q(\dvi_tx/encg/n0q_m [3])
  );
  FD   \dvi_tx/encg/n0q_m_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/PWR_35_o_BUS_0017_sub_29_OUT [2]),
    .Q(\dvi_tx/encg/n0q_m [2])
  );
  FD   \dvi_tx/encg/n0q_m_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/PWR_35_o_BUS_0017_sub_29_OUT [1]),
    .Q(\dvi_tx/encg/n0q_m [1])
  );
  FD   \dvi_tx/encg/n1q_m_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .Q(\dvi_tx/encg/n1q_m [3])
  );
  FD   \dvi_tx/encg/n1q_m_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_29 ),
    .Q(\dvi_tx/encg/n1q_m [2])
  );
  FD   \dvi_tx/encg/n1q_m_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_19 ),
    .Q(\dvi_tx/encg/n1q_m [1])
  );
  FD   \dvi_tx/encg/q_m_reg_8  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [8]),
    .Q(\dvi_tx/encg/q_m_reg [8])
  );
  FD   \dvi_tx/encg/q_m_reg_7  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [7]),
    .Q(\dvi_tx/encg/q_m_reg [7])
  );
  FD   \dvi_tx/encg/q_m_reg_6  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [6]),
    .Q(\dvi_tx/encg/q_m_reg [6])
  );
  FD   \dvi_tx/encg/q_m_reg_5  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [5]),
    .Q(\dvi_tx/encg/q_m_reg [5])
  );
  FD   \dvi_tx/encg/q_m_reg_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [4]),
    .Q(\dvi_tx/encg/q_m_reg [4])
  );
  FD   \dvi_tx/encg/q_m_reg_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [3]),
    .Q(\dvi_tx/encg/q_m_reg [3])
  );
  FD   \dvi_tx/encg/q_m_reg_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [2]),
    .Q(\dvi_tx/encg/q_m_reg [2])
  );
  FD   \dvi_tx/encg/q_m_reg_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/q_m [1]),
    .Q(\dvi_tx/encg/q_m_reg [1])
  );
  FD   \dvi_tx/encg/q_m_reg_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/din_q [0]),
    .Q(\dvi_tx/encg/q_m_reg [0])
  );
  FD   \dvi_tx/encg/n1d_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy<0>2 ),
    .Q(\dvi_tx/encg/n1d [3])
  );
  FD   \dvi_tx/encg/n1d_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_24 ),
    .Q(\dvi_tx/encg/n1d [2])
  );
  FD   \dvi_tx/encg/n1d_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_14 ),
    .Q(\dvi_tx/encg/n1d [1])
  );
  FD   \dvi_tx/encg/n1d_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_04 ),
    .Q(\dvi_tx/encg/n1d [0])
  );
  FD   \dvi_tx/encg/din_q_7  (
    .C(tx_pclk),
    .D(tx_green[7]),
    .Q(\dvi_tx/encg/din_q [7])
  );
  FD   \dvi_tx/encg/din_q_6  (
    .C(tx_pclk),
    .D(tx_green[6]),
    .Q(\dvi_tx/encg/din_q [6])
  );
  FD   \dvi_tx/encg/din_q_5  (
    .C(tx_pclk),
    .D(tx_green[5]),
    .Q(\dvi_tx/encg/din_q [5])
  );
  FD   \dvi_tx/encg/din_q_4  (
    .C(tx_pclk),
    .D(tx_green[4]),
    .Q(\dvi_tx/encg/din_q [4])
  );
  FD   \dvi_tx/encg/din_q_3  (
    .C(tx_pclk),
    .D(tx_green[3]),
    .Q(\dvi_tx/encg/din_q [3])
  );
  FD   \dvi_tx/encg/din_q_2  (
    .C(tx_pclk),
    .D(tx_green[2]),
    .Q(\dvi_tx/encg/din_q [2])
  );
  FD   \dvi_tx/encg/din_q_1  (
    .C(tx_pclk),
    .D(tx_green[1]),
    .Q(\dvi_tx/encg/din_q [1])
  );
  FD   \dvi_tx/encg/din_q_0  (
    .C(tx_pclk),
    .D(tx_green[0]),
    .Q(\dvi_tx/encg/din_q [0])
  );
  FD   \dvi_tx/encb/n0q_m_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/PWR_35_o_BUS_0017_sub_29_OUT [3]),
    .Q(\dvi_tx/encb/n0q_m [3])
  );
  FD   \dvi_tx/encb/n0q_m_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/PWR_35_o_BUS_0017_sub_29_OUT [2]),
    .Q(\dvi_tx/encb/n0q_m [2])
  );
  FD   \dvi_tx/encb/n0q_m_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/PWR_35_o_BUS_0017_sub_29_OUT [1]),
    .Q(\dvi_tx/encb/n0q_m [1])
  );
  FD   \dvi_tx/encb/n1q_m_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .Q(\dvi_tx/encb/n1q_m [3])
  );
  FD   \dvi_tx/encb/n1q_m_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_29 ),
    .Q(\dvi_tx/encb/n1q_m [2])
  );
  FD   \dvi_tx/encb/n1q_m_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_19 ),
    .Q(\dvi_tx/encb/n1q_m [1])
  );
  FD   \dvi_tx/encb/q_m_reg_8  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [8]),
    .Q(\dvi_tx/encb/q_m_reg [8])
  );
  FD   \dvi_tx/encb/q_m_reg_7  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [7]),
    .Q(\dvi_tx/encb/q_m_reg [7])
  );
  FD   \dvi_tx/encb/q_m_reg_6  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [6]),
    .Q(\dvi_tx/encb/q_m_reg [6])
  );
  FD   \dvi_tx/encb/q_m_reg_5  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [5]),
    .Q(\dvi_tx/encb/q_m_reg [5])
  );
  FD   \dvi_tx/encb/q_m_reg_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [4]),
    .Q(\dvi_tx/encb/q_m_reg [4])
  );
  FD   \dvi_tx/encb/q_m_reg_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [3]),
    .Q(\dvi_tx/encb/q_m_reg [3])
  );
  FD   \dvi_tx/encb/q_m_reg_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [2]),
    .Q(\dvi_tx/encb/q_m_reg [2])
  );
  FD   \dvi_tx/encb/q_m_reg_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/q_m [1]),
    .Q(\dvi_tx/encb/q_m_reg [1])
  );
  FD   \dvi_tx/encb/q_m_reg_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/din_q [0]),
    .Q(\dvi_tx/encb/q_m_reg [0])
  );
  FD   \dvi_tx/encb/c1_reg  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_q_1285 ),
    .Q(\dvi_tx/encb/c1_reg_1271 )
  );
  FD   \dvi_tx/encb/c0_reg  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c0_q_1286 ),
    .Q(\dvi_tx/encb/c0_reg_1223 )
  );
  FD   \dvi_tx/encb/n1d_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy<0>2 ),
    .Q(\dvi_tx/encb/n1d [3])
  );
  FD   \dvi_tx/encb/n1d_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_24 ),
    .Q(\dvi_tx/encb/n1d [2])
  );
  FD   \dvi_tx/encb/n1d_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_14 ),
    .Q(\dvi_tx/encb/n1d [1])
  );
  FD   \dvi_tx/encb/n1d_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_04 ),
    .Q(\dvi_tx/encb/n1d [0])
  );
  FD   \dvi_tx/encb/c1_q  (
    .C(tx_pclk),
    .D(tx_vsync),
    .Q(\dvi_tx/encb/c1_q_1285 )
  );
  FD   \dvi_tx/encb/c0_q  (
    .C(tx_pclk),
    .D(tx_hsync),
    .Q(\dvi_tx/encb/c0_q_1286 )
  );
  FD   \dvi_tx/encb/din_q_7  (
    .C(tx_pclk),
    .D(tx_blue[7]),
    .Q(\dvi_tx/encb/din_q [7])
  );
  FD   \dvi_tx/encb/din_q_6  (
    .C(tx_pclk),
    .D(tx_blue[6]),
    .Q(\dvi_tx/encb/din_q [6])
  );
  FD   \dvi_tx/encb/din_q_5  (
    .C(tx_pclk),
    .D(tx_blue[5]),
    .Q(\dvi_tx/encb/din_q [5])
  );
  FD   \dvi_tx/encb/din_q_4  (
    .C(tx_pclk),
    .D(tx_blue[4]),
    .Q(\dvi_tx/encb/din_q [4])
  );
  FD   \dvi_tx/encb/din_q_3  (
    .C(tx_pclk),
    .D(tx_blue[3]),
    .Q(\dvi_tx/encb/din_q [3])
  );
  FD   \dvi_tx/encb/din_q_2  (
    .C(tx_pclk),
    .D(tx_blue[2]),
    .Q(\dvi_tx/encb/din_q [2])
  );
  FD   \dvi_tx/encb/din_q_1  (
    .C(tx_pclk),
    .D(tx_blue[1]),
    .Q(\dvi_tx/encb/din_q [1])
  );
  FD   \dvi_tx/encb/din_q_0  (
    .C(tx_pclk),
    .D(tx_blue[0]),
    .Q(\dvi_tx/encb/din_q [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out14  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [14]),
    .Q(\dvi_tx/n0011 [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out13  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [13]),
    .Q(\dvi_tx/n0011 [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out12  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [12]),
    .Q(\dvi_tx/n0011 [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out11  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [11]),
    .Q(\dvi_tx/n0011 [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out10  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [10]),
    .Q(\dvi_tx/n0011 [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out9  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [9]),
    .Q(\dvi_tx/n0011 [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out8  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [8]),
    .Q(\dvi_tx/n0011 [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out7  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [7]),
    .Q(\dvi_tx/n0011 [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out6  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [6]),
    .Q(\dvi_tx/n0011 [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out5  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [5]),
    .Q(\dvi_tx/n0011 [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out4  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [4]),
    .Q(\dvi_tx/n0011 [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out3  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [3]),
    .Q(\dvi_tx/n0011 [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out2  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [2]),
    .Q(\dvi_tx/n0011 [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out1  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [1]),
    .Q(\dvi_tx/n0011 [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_out0  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/mux [0]),
    .Q(\dvi_tx/n0011 [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db29  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [29]),
    .Q(\dvi_tx/pixel2x/db [29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db28  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [28]),
    .Q(\dvi_tx/pixel2x/db [28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db27  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [27]),
    .Q(\dvi_tx/pixel2x/db [27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db26  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [26]),
    .Q(\dvi_tx/pixel2x/db [26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db25  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [25]),
    .Q(\dvi_tx/pixel2x/db [25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db24  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [24]),
    .Q(\dvi_tx/pixel2x/db [24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db23  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [23]),
    .Q(\dvi_tx/pixel2x/db [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db22  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [22]),
    .Q(\dvi_tx/pixel2x/db [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db21  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [21]),
    .Q(\dvi_tx/pixel2x/db [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db20  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [20]),
    .Q(\dvi_tx/pixel2x/db [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db19  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [19]),
    .Q(\dvi_tx/pixel2x/db [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db18  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [18]),
    .Q(\dvi_tx/pixel2x/db [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db17  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [17]),
    .Q(\dvi_tx/pixel2x/db [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db16  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [16]),
    .Q(\dvi_tx/pixel2x/db [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db15  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [15]),
    .Q(\dvi_tx/pixel2x/db [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db14  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [14]),
    .Q(\dvi_tx/pixel2x/db [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db13  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [13]),
    .Q(\dvi_tx/pixel2x/db [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db12  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [12]),
    .Q(\dvi_tx/pixel2x/db [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db11  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [11]),
    .Q(\dvi_tx/pixel2x/db [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db10  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [10]),
    .Q(\dvi_tx/pixel2x/db [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db9  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [9]),
    .Q(\dvi_tx/pixel2x/db [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db8  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [8]),
    .Q(\dvi_tx/pixel2x/db [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db7  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [7]),
    .Q(\dvi_tx/pixel2x/db [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db6  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [6]),
    .Q(\dvi_tx/pixel2x/db [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db5  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [5]),
    .Q(\dvi_tx/pixel2x/db [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db4  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [4]),
    .Q(\dvi_tx/pixel2x/db [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db3  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [3]),
    .Q(\dvi_tx/pixel2x/db [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db2  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [2]),
    .Q(\dvi_tx/pixel2x/db [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db1  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [1]),
    .Q(\dvi_tx/pixel2x/db [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_db0  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/dataint [0]),
    .Q(\dvi_tx/pixel2x/db [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_ra3  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/Mram_ra_d3 ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/ra [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_ra2  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/Mram_ra_d2 ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/ra [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_ra1  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/Mram_ra_d1 ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/ra [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_ra0  (
    .C(tx_pclkx2),
    .CE(\dvi_tx/pixel2x/sync ),
    .D(\dvi_tx/pixel2x/Mram_ra_d ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/ra [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/sync_gen  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/sync_INV_50_o ),
    .R(\dvi_tx/pixel2x/rstp ),
    .Q(\dvi_tx/pixel2x/sync )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_rstp  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/rstsync_q ),
    .Q(\dvi_tx/pixel2x/rstp )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fd_rstsync  (
    .C(tx_pclkx2),
    .D(\dvi_tx/pixel2x/rstsync ),
    .Q(\dvi_tx/pixel2x/rstsync_q )
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[29].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [9]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[29].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [29])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[28].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [8]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[28].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [28])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[27].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [7]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[27].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [27])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[26].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [6]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[26].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [26])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[25].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [5]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[25].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [25])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[24].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [9]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[24].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [24])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[23].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [8]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[23].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [23])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[22].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [7]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[22].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [22])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[21].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [6]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[21].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [21])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[20].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [5]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[20].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [20])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[19].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [9]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[19].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [19])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[18].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [8]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[18].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [18])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[17].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [7]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[17].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [17])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[16].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [6]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[16].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [16])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[15].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [5]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[15].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [15])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[14].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [4]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[14].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [14])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[13].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [3]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[13].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [13])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[12].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[12].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [12])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[11].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [1]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[11].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [11])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[10].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encr/dout [0]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[10].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [10])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[9].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [4]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[9].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [9])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[8].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [3]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[8].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [8])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[7].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[7].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [7])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[6].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [1]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[6].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[5].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encg/dout [0]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[5].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[4].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [4]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[4].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[3].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [3]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[3].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[2].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [2]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[2].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[1].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [1]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[1].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \dvi_tx/pixel2x/fifo_u/dram16s[0].i_RAM16X1D_U  (
    .A0(\dvi_tx/pixel2x/wa [0]),
    .A1(\dvi_tx/pixel2x/wa [1]),
    .A2(\dvi_tx/pixel2x/wa [2]),
    .A3(\dvi_tx/pixel2x/wa [3]),
    .D(\dvi_tx/encb/dout [0]),
    .DPRA0(\dvi_tx/pixel2x/ra [0]),
    .DPRA1(\dvi_tx/pixel2x/ra [1]),
    .DPRA2(\dvi_tx/pixel2x/ra [2]),
    .DPRA3(\dvi_tx/pixel2x/ra [3]),
    .WCLK(tx_pclk),
    .WE(N0),
    .SPO(\NLW_dvi_tx/pixel2x/fifo_u/dram16s[0].i_RAM16X1D_U_SPO_UNCONNECTED ),
    .DPO(\dvi_tx/pixel2x/dataint [0])
  );
  LUT5 #(
    .INIT ( 32'h03010200 ))
  Mmux_tx_blue11 (
    .I0(SW_0_IBUF_10),
    .I1(SW_2_IBUF_8),
    .I2(SW_1_IBUF_9),
    .I3(\b_mux<1> [0]),
    .I4(\dvi_rx1/dec_b/dout [0]),
    .O(tx_blue[0])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_blue21 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_b/dout [1]),
    .I4(\b_mux<1> [1]),
    .O(tx_blue[1])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_blue31 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_b/dout [2]),
    .I4(\b_mux<1> [2]),
    .O(tx_blue[2])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_blue41 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_b/dout [3]),
    .I4(\b_mux<1> [3]),
    .O(tx_blue[3])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_blue51 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_b/dout [4]),
    .I4(\b_mux<1> [4]),
    .O(tx_blue[4])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_blue61 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_b/dout [5]),
    .I4(\b_mux<1> [5]),
    .O(tx_blue[5])
  );
  LUT5 #(
    .INIT ( 32'h03010200 ))
  Mmux_tx_blue71 (
    .I0(SW_0_IBUF_10),
    .I1(SW_2_IBUF_8),
    .I2(SW_1_IBUF_9),
    .I3(\b_mux<1> [6]),
    .I4(\dvi_rx1/dec_b/dout [6]),
    .O(tx_blue[6])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_blue81 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_b/dout [7]),
    .I4(\b_mux<1> [7]),
    .O(tx_blue[7])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_de11 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_b/de_44 ),
    .I4(\rgb2ycbcr_converter/de/[5].delay_i/temp_0_101 ),
    .O(tx_de)
  );
  LUT5 #(
    .INIT ( 32'h03010200 ))
  Mmux_tx_green11 (
    .I0(SW_0_IBUF_10),
    .I1(SW_2_IBUF_8),
    .I2(SW_1_IBUF_9),
    .I3(\g_mux<1> [0]),
    .I4(\dvi_rx1/dec_g/dout [0]),
    .O(tx_green[0])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_green21 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_g/dout [1]),
    .I4(\g_mux<1> [1]),
    .O(tx_green[1])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_green31 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_g/dout [2]),
    .I4(\g_mux<1> [2]),
    .O(tx_green[2])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_green41 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_g/dout [3]),
    .I4(\g_mux<1> [3]),
    .O(tx_green[3])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_green51 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_g/dout [4]),
    .I4(\g_mux<1> [4]),
    .O(tx_green[4])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_green61 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_g/dout [5]),
    .I4(\g_mux<1> [5]),
    .O(tx_green[5])
  );
  LUT5 #(
    .INIT ( 32'h03010200 ))
  Mmux_tx_green71 (
    .I0(SW_0_IBUF_10),
    .I1(SW_2_IBUF_8),
    .I2(SW_1_IBUF_9),
    .I3(\g_mux<1> [6]),
    .I4(\dvi_rx1/dec_g/dout [6]),
    .O(tx_green[6])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_green81 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_g/dout [7]),
    .I4(\g_mux<1> [7]),
    .O(tx_green[7])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_hsync11 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_b/c0_42 ),
    .I4(\rgb2ycbcr_converter/hsync/[5].delay_i/temp_0_99 ),
    .O(tx_hsync)
  );
  LUT5 #(
    .INIT ( 32'h03010200 ))
  Mmux_tx_red11 (
    .I0(SW_0_IBUF_10),
    .I1(SW_2_IBUF_8),
    .I2(SW_1_IBUF_9),
    .I3(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<0> ),
    .I4(\dvi_rx1/dec_r/dout [0]),
    .O(tx_red[0])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_red21 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_r/dout [1]),
    .I4(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<1> ),
    .O(tx_red[1])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_red31 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_r/dout [2]),
    .I4(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<2> ),
    .O(tx_red[2])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_red41 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_r/dout [3]),
    .I4(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<3> ),
    .O(tx_red[3])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_red51 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_r/dout [4]),
    .I4(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<4> ),
    .O(tx_red[4])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_red61 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_r/dout [5]),
    .I4(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<5> ),
    .O(tx_red[5])
  );
  LUT5 #(
    .INIT ( 32'h03010200 ))
  Mmux_tx_red71 (
    .I0(SW_0_IBUF_10),
    .I1(SW_2_IBUF_8),
    .I2(SW_1_IBUF_9),
    .I3(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<6> ),
    .I4(\dvi_rx1/dec_r/dout [6]),
    .O(tx_red[6])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_red81 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_r/dout [7]),
    .I4(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<7> ),
    .O(tx_red[7])
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mmux_tx_vsync11 (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\dvi_rx1/dec_b/c1_43 ),
    .I4(\rgb2ycbcr_converter/vsync/[5].delay_i/temp_0_100 ),
    .O(tx_vsync)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[7]_data[7]_MUX_117_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [7]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[7]_data[7]_MUX_117_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[4]_data[4]_MUX_114_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[4]_data[4]_MUX_114_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[1]_data[1]_MUX_111_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[1]_data[1]_MUX_111_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[2]_data[2]_MUX_112_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[2]_data[2]_MUX_112_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[3]_data[3]_MUX_113_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [3]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[3]_data[3]_MUX_113_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[5]_data[5]_MUX_115_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[5]_data[5]_MUX_115_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_r/data[6]_data[6]_MUX_116_o1  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [5]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_r/data[6]_data[6]_MUX_116_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_r/Mmux_data11  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [9]),
    .O(\dvi_rx1/dec_r/data [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_r/Mxor_rx_toggle_xo<0>1  (
    .I0(\dvi_rx1/dec_r/flipgearx2_156 ),
    .I1(\dvi_rx1/dec_r/toggle_271 ),
    .O(\dvi_rx1/dec_r/rx_toggle )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_r/iamrdy_other_ch1_rdy_AND_30_o_inv1  (
    .I0(\dvi_rx1/dec_b/cbnd/iamrdy_45 ),
    .I1(\dvi_rx1/dec_g/cbnd/iamrdy_46 ),
    .I2(\dvi_rx1/dec_r/cbnd/iamrdy_47 ),
    .O(\dvi_rx1/dec_b/iamrdy_other_ch1_rdy_AND_30_o_inv )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_r/bitslip_bitslip_q_AND_1_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_174 ),
    .I1(\dvi_rx1/dec_r/bitslip_q_158 ),
    .O(\dvi_rx1/dec_r/bitslip_bitslip_q_AND_1_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[7]_data[7]_MUX_117_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [7]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[7]_data[7]_MUX_117_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[4]_data[4]_MUX_114_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[4]_data[4]_MUX_114_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[1]_data[1]_MUX_111_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[1]_data[1]_MUX_111_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[2]_data[2]_MUX_112_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[2]_data[2]_MUX_112_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[3]_data[3]_MUX_113_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [3]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[3]_data[3]_MUX_113_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[5]_data[5]_MUX_115_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[5]_data[5]_MUX_115_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_g/data[6]_data[6]_MUX_116_o1  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [5]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_g/data[6]_data[6]_MUX_116_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_g/Mmux_data11  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [9]),
    .O(\dvi_rx1/dec_g/data [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_g/Mxor_rx_toggle_xo<0>1  (
    .I0(\dvi_rx1/dec_g/flipgearx2_202 ),
    .I1(\dvi_rx1/dec_r/toggle_271 ),
    .O(\dvi_rx1/dec_g/rx_toggle )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_g/bitslip_bitslip_q_AND_1_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_220 ),
    .I1(\dvi_rx1/dec_g/bitslip_q_204 ),
    .O(\dvi_rx1/dec_g/bitslip_bitslip_q_AND_1_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[7]_data[7]_MUX_117_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [7]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[7]_data[7]_MUX_117_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[4]_data[4]_MUX_114_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[4]_data[4]_MUX_114_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[1]_data[1]_MUX_111_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[1]_data[1]_MUX_111_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[2]_data[2]_MUX_112_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[2]_data[2]_MUX_112_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[3]_data[3]_MUX_113_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[3]_data[3]_MUX_113_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[5]_data[5]_MUX_115_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[5]_data[5]_MUX_115_o )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \dvi_rx1/dec_b/data[6]_data[6]_MUX_116_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(\dvi_rx1/dec_b/data[6]_data[6]_MUX_116_o )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \dvi_rx1/dec_b/n0050_inv1  (
    .I0(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o1_227 ),
    .I1(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o2_228 ),
    .O(\dvi_rx1/dec_b/n0050_inv )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_16_o1  (
    .I0(\dvi_rx1/dec_b/c0_42 ),
    .I1(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o2_228 ),
    .I2(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o1_227 ),
    .O(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_16_o )
  );
  LUT4 #(
    .INIT ( 16'hBDB8 ))
  \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o3  (
    .I0(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o1_227 ),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [9]),
    .I2(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o2_228 ),
    .I3(\dvi_rx1/dec_b/c1_43 ),
    .O(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/Mmux_data11  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [9]),
    .O(\dvi_rx1/dec_b/data [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/Mxor_rx_toggle_xo<0>1  (
    .I0(\dvi_rx1/dec_b/flipgearx2_253 ),
    .I1(\dvi_rx1/dec_r/toggle_271 ),
    .O(\dvi_rx1/dec_b/rx_toggle )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_b/bitslip_bitslip_q_AND_1_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_272 ),
    .I1(\dvi_rx1/dec_b/bitslip_q_255 ),
    .O(\dvi_rx1/dec_b/bitslip_bitslip_q_AND_1_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv1  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 ),
    .O(\dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv )
  );
  LUT4 #(
    .INIT ( 16'hDD28 ))
  \dvi_rx1/dec_b/des_0/state_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 ),
    .I1(\dvi_rx1/dec_b/des_0/busy_data_d_341 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 ),
    .O(\dvi_rx1/dec_b/des_0/state_FSM_FFd3-In )
  );
  LUT6 #(
    .INIT ( 64'hA9B5A9B4A985A984 ))
  \dvi_rx1/dec_b/des_0/state_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_b/des_0/busy_data_d_341 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 ),
    .I4(\dvi_rx1/dec_b/des_0/enable_344 ),
    .I5(\dvi_rx1/dec_b/des_0/counter [8]),
    .O(\dvi_rx1/dec_b/des_0/state_FSM_FFd4-In )
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \dvi_rx1/dec_b/des_0/state_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_b/des_0/busy_data_d_341 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 ),
    .O(\dvi_rx1/dec_b/des_0/state_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o<4>1  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_equal_48_o<4>1  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_equal_48_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o1  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 ),
    .I2(\dvi_rx1/dec_b/des_0/busy_data_d_341 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 ),
    .O(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv1  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 ),
    .O(\dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv )
  );
  LUT4 #(
    .INIT ( 16'hDD28 ))
  \dvi_rx1/dec_g/des_0/state_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 ),
    .I1(\dvi_rx1/dec_g/des_0/busy_data_d_389 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 ),
    .O(\dvi_rx1/dec_g/des_0/state_FSM_FFd3-In )
  );
  LUT6 #(
    .INIT ( 64'hA9B5A9B4A985A984 ))
  \dvi_rx1/dec_g/des_0/state_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_g/des_0/busy_data_d_389 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 ),
    .I4(\dvi_rx1/dec_b/des_0/enable_344 ),
    .I5(\dvi_rx1/dec_b/des_0/counter [8]),
    .O(\dvi_rx1/dec_g/des_0/state_FSM_FFd4-In )
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \dvi_rx1/dec_g/des_0/state_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_g/des_0/busy_data_d_389 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 ),
    .O(\dvi_rx1/dec_g/des_0/state_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o<4>1  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_equal_48_o<4>1  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_equal_48_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o1  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 ),
    .I2(\dvi_rx1/dec_g/des_0/busy_data_d_389 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 ),
    .O(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv1  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 ),
    .O(\dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv )
  );
  LUT4 #(
    .INIT ( 16'hDD28 ))
  \dvi_rx1/dec_r/des_0/state_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 ),
    .I1(\dvi_rx1/dec_r/des_0/busy_data_d_434 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 ),
    .O(\dvi_rx1/dec_r/des_0/state_FSM_FFd3-In )
  );
  LUT6 #(
    .INIT ( 64'hA9B5A9B4A985A984 ))
  \dvi_rx1/dec_r/des_0/state_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_r/des_0/busy_data_d_434 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 ),
    .I4(\dvi_rx1/dec_b/des_0/enable_344 ),
    .I5(\dvi_rx1/dec_b/des_0/counter [8]),
    .O(\dvi_rx1/dec_r/des_0/state_FSM_FFd4-In )
  );
  LUT4 #(
    .INIT ( 16'hFF40 ))
  \dvi_rx1/dec_r/des_0/state_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_r/des_0/busy_data_d_434 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 ),
    .O(\dvi_rx1/dec_r/des_0/state_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h00000001 ))
  \dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o<4>1  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o )
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_equal_48_o<4>1  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_equal_48_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o1  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 ),
    .I2(\dvi_rx1/dec_r/des_0/busy_data_d_434 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 ),
    .O(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_rst_535 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_531 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_529 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_528 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_533 ),
    .I5(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_532 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_45_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_272 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_530 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_529 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_528 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_531 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_45_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_530 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_529 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_528 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_532 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_451 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_41_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_rst_536 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_529 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_528 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_531 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_41_o )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<3>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<3>1 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>111  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>11 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<2>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'hEA48 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [1]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_531 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_451 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<6>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [6]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [5]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<6>1 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_47_o1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/psaligned_132 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_531 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_530 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_529 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_528 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_47_o )
  );
  LUT5 #(
    .INIT ( 32'hEAAA4888 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [2]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_531 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [1]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_451 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_52_o<0>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_534 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_532 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_531 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_530 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_528 ),
    .I5(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_529 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_52_o )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dvi_rx1/dec_b/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o<6>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [6]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_531 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [2]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/flipgear_273 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_451 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_Select_50_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<1>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_534 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_529 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_528 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_530 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_523 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout_524 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h8888F888 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_532 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_526 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_530 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_523 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_cnt_tout_524 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_532 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_526 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_525 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6-In1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_533 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_525 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6-In )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_rst_622 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_618 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_616 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_615 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_620 ),
    .I5(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_619 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_45_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_220 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_617 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_616 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_615 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_618 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_45_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_617 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_616 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_615 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_619 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_538 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_41_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_rst_623 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_616 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_615 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_618 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_41_o )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<3>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<3>1 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>111  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>11 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<2>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'hEA48 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [1]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_618 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_538 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<6>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [6]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [5]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<6>1 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_47_o1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/psaligned_131 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_618 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_617 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_616 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_615 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_47_o )
  );
  LUT5 #(
    .INIT ( 32'hEAAA4888 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [2]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_618 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [1]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_538 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_52_o<0>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_621 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_619 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_618 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_617 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_615 ),
    .I5(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_616 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_52_o )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dvi_rx1/dec_g/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o<6>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [6]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_618 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [2]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/flipgear_221 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_538 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_Select_50_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<1>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_621 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_616 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_615 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_617 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_610 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout_611 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h8888F888 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_619 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_613 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_617 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_610 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_cnt_tout_611 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_619 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_613 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_612 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6-In1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_620 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_612 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6-In )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_rst_709 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_705 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_703 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_702 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_707 ),
    .I5(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_706 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_PWR_17_o_Select_43_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_45_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_174 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_704 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_703 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_702 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_705 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_45_o )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_704 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_703 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_702 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_706 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_625 )
  );
  LUT4 #(
    .INIT ( 16'hFFA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_41_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_rst_710 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_703 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_702 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_705 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_41_o )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<3>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<3>1 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>111  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>11 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<2>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'hEA48 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [1]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_705 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_625 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<6>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [6]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [5]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<6>1 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_47_o1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/psaligned_130 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_705 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_704 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_703 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_702 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_47_o )
  );
  LUT5 #(
    .INIT ( 32'hEAAA4888 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [2]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_705 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [0]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [1]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_625 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_52_o<0>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_708 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_706 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_705 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_704 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_702 ),
    .I5(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_703 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_52_o )
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \dvi_rx1/dec_r/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o<6>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [6]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>11 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter[6]_PWR_17_o_equal_17_o )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_705 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [2]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/flipgear_175 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o<2>1_625 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_Select_50_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<1>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_708 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_703 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_702 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_704 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_697 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout_698 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'h8888F888 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_706 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_700 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_704 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_697 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_cnt_tout_698 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3-In )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_706 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_700 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_699 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4-In )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6-In1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_707 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_699 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6-In )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_b/cbnd/Mcount_ra_xor<2>11  (
    .I0(\dvi_rx1/dec_b/cbnd/ra [2]),
    .I1(\dvi_rx1/dec_b/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_b/cbnd/ra [1]),
    .O(\dvi_rx1/dec_b/cbnd/Result [2])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_b/cbnd/Mcount_wa_xor<2>11  (
    .I0(\dvi_rx1/dec_b/cbnd/wa [2]),
    .I1(\dvi_rx1/dec_b/cbnd/wa [0]),
    .I2(\dvi_rx1/dec_b/cbnd/wa [1]),
    .O(\dvi_rx1/dec_b/cbnd/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_b/cbnd/Mcount_ra_xor<3>11  (
    .I0(\dvi_rx1/dec_b/cbnd/ra [3]),
    .I1(\dvi_rx1/dec_b/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_b/cbnd/ra [1]),
    .I3(\dvi_rx1/dec_b/cbnd/ra [2]),
    .O(\dvi_rx1/dec_b/cbnd/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_b/cbnd/Mcount_wa_xor<3>11  (
    .I0(\dvi_rx1/dec_b/cbnd/wa [3]),
    .I1(\dvi_rx1/dec_b/cbnd/wa [0]),
    .I2(\dvi_rx1/dec_b/cbnd/wa [1]),
    .I3(\dvi_rx1/dec_b/cbnd/wa [2]),
    .O(\dvi_rx1/dec_b/cbnd/Result<3>1 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \dvi_rx1/dec_b/cbnd/rawdata_vld_inv1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/psaligned_132 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/psaligned_131 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/psaligned_130 ),
    .O(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv )
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \dvi_rx1/dec_b/cbnd/rawdata_vld_rising_other_ch0_rdy_OR_127_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_734 ),
    .I1(\dvi_rx1/dec_b/cbnd/iamrdy_45 ),
    .I2(\dvi_rx1/dec_g/cbnd/iamrdy_46 ),
    .I3(\dvi_rx1/dec_r/cbnd/iamrdy_47 ),
    .O(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_other_ch0_rdy_OR_127_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/cbnd/Mcount_ra_xor<1>11  (
    .I0(\dvi_rx1/dec_b/cbnd/ra [1]),
    .I1(\dvi_rx1/dec_b/cbnd/ra [0]),
    .O(\dvi_rx1/dec_b/cbnd/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_b/cbnd/Mcount_wa_xor<1>11  (
    .I0(\dvi_rx1/dec_b/cbnd/wa [1]),
    .I1(\dvi_rx1/dec_b/cbnd/wa [0]),
    .O(\dvi_rx1/dec_b/cbnd/Result<1>1 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_b/cbnd/rawdata_vld1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/psaligned_132 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/psaligned_131 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/psaligned_130 ),
    .O(\dvi_rx1/dec_b/cbnd/rawdata_vld )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_g/cbnd/Mcount_ra_xor<2>11  (
    .I0(\dvi_rx1/dec_g/cbnd/ra [2]),
    .I1(\dvi_rx1/dec_g/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_g/cbnd/ra [1]),
    .O(\dvi_rx1/dec_g/cbnd/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_g/cbnd/Mcount_ra_xor<3>11  (
    .I0(\dvi_rx1/dec_g/cbnd/ra [3]),
    .I1(\dvi_rx1/dec_g/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_g/cbnd/ra [1]),
    .I3(\dvi_rx1/dec_g/cbnd/ra [2]),
    .O(\dvi_rx1/dec_g/cbnd/Result [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_g/cbnd/Mcount_ra_xor<1>11  (
    .I0(\dvi_rx1/dec_g/cbnd/ra [1]),
    .I1(\dvi_rx1/dec_g/cbnd/ra [0]),
    .O(\dvi_rx1/dec_g/cbnd/Result [1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_rx1/dec_r/cbnd/Mcount_ra_xor<2>11  (
    .I0(\dvi_rx1/dec_r/cbnd/ra [2]),
    .I1(\dvi_rx1/dec_r/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_r/cbnd/ra [1]),
    .O(\dvi_rx1/dec_r/cbnd/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_rx1/dec_r/cbnd/Mcount_ra_xor<3>11  (
    .I0(\dvi_rx1/dec_r/cbnd/ra [3]),
    .I1(\dvi_rx1/dec_r/cbnd/ra [0]),
    .I2(\dvi_rx1/dec_r/cbnd/ra [1]),
    .I3(\dvi_rx1/dec_r/cbnd/ra [2]),
    .O(\dvi_rx1/dec_r/cbnd/Result [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_rx1/dec_r/cbnd/Mcount_ra_xor<1>11  (
    .I0(\dvi_rx1/dec_r/cbnd/ra [1]),
    .I1(\dvi_rx1/dec_r/cbnd/ra [0]),
    .O(\dvi_rx1/dec_r/cbnd/Result [1])
  );
  LUT6 #(
    .INIT ( 64'hFF775F5F55110505 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT10411  (
    .I0(\dvi_tx/encr/cnt [3]),
    .I1(\dvi_tx/encr/cnt [1]),
    .I2(\dvi_tx/encr/cnt [2]),
    .I3(\dvi_tx/encr/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ),
    .I4(\dvi_tx/encr/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2> ),
    .I5(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ),
    .O(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT91  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encr/q_m_reg [8]),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [8])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_xor<0>11  (
    .I0(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd3_lut [0]),
    .I1(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_lut [0]),
    .I2(tx_red[2]),
    .I3(tx_red[3]),
    .I4(tx_red[7]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_04 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encr/Mmux_q_m<6>11  (
    .I0(\dvi_tx/encr/din_q [5]),
    .I1(\dvi_tx/encr/din_q [6]),
    .I2(\dvi_tx/encr/q_m [4]),
    .O(\dvi_tx/encr/q_m [6])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd3_lut<0>1  (
    .I0(tx_red[0]),
    .I1(tx_red[1]),
    .I2(tx_red[4]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd3_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA955555555AA ))
  \dvi_tx/encr/Mmux_q_m<1>11  (
    .I0(\dvi_tx/encr/din_q [1]),
    .I1(\dvi_tx/encr/n1d [1]),
    .I2(\dvi_tx/encr/n1d [0]),
    .I3(\dvi_tx/encr/n1d [2]),
    .I4(\dvi_tx/encr/n1d [3]),
    .I5(\dvi_tx/encr/din_q [0]),
    .O(\dvi_tx/encr/q_m [1])
  );
  LUT5 #(
    .INIT ( 32'hFFFFA8AA ))
  \dvi_tx/encr/Mmux_q_m<3>111  (
    .I0(\dvi_tx/encr/n1d [2]),
    .I1(\dvi_tx/encr/n1d [0]),
    .I2(\dvi_tx/encr/n1d [1]),
    .I3(\dvi_tx/encr/din_q [0]),
    .I4(\dvi_tx/encr/n1d [3]),
    .O(\dvi_tx/encr/Mmux_q_m<3>11 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encr/Mmux_q_m<2>11  (
    .I0(\dvi_tx/encr/din_q [2]),
    .I1(\dvi_tx/encr/din_q [1]),
    .I2(\dvi_tx/encr/din_q [0]),
    .O(\dvi_tx/encr/q_m [2])
  );
  LUT4 #(
    .INIT ( 16'h5755 ))
  \dvi_tx/encr/Mmux_q_m<3>121  (
    .I0(\dvi_tx/encr/n1d [2]),
    .I1(\dvi_tx/encr/n1d [0]),
    .I2(\dvi_tx/encr/n1d [1]),
    .I3(\dvi_tx/encr/din_q [0]),
    .O(\dvi_tx/encr/Mmux_q_m<3>12 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd31  (
    .I0(tx_red[1]),
    .I1(tx_red[4]),
    .I2(tx_red[0]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd3 )
  );
  LUT5 #(
    .INIT ( 32'hA88A2002 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT41  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encr/decision2_1050 ),
    .I2(\dvi_tx/encr/decision3_1049 ),
    .I3(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT61_1010 ),
    .I4(\dvi_tx/encr/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ),
    .O(\dvi_tx/encr/GND_37_o_cnt[4]_mux_55_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encr/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1>11  (
    .I0(\dvi_tx/encr/cnt [1]),
    .I1(\dvi_tx/encr/n1q_m [1]),
    .I2(\dvi_tx/encr/n0q_m [1]),
    .O(\dvi_tx/encr/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encr/Msub_n0233_lut<1>11  (
    .I0(\dvi_tx/encr/n0q_m [1]),
    .I1(\dvi_tx/encr/n1q_m [1]),
    .O(\dvi_tx/encr/Msub_n0233_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encr/Msub_n0233_lut<3>1  (
    .I0(\dvi_tx/encr/n0q_m [3]),
    .I1(\dvi_tx/encr/n1q_m [3]),
    .O(\dvi_tx/encr/Msub_n0233_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encr/Msub_n0233_lut<2>1  (
    .I0(\dvi_tx/encr/n0q_m [2]),
    .I1(\dvi_tx/encr/n1q_m [2]),
    .O(\dvi_tx/encr/Msub_n0233_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hFF775F5F55110505 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT10411  (
    .I0(\dvi_tx/encg/cnt [3]),
    .I1(\dvi_tx/encg/cnt [1]),
    .I2(\dvi_tx/encg/cnt [2]),
    .I3(\dvi_tx/encg/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ),
    .I4(\dvi_tx/encg/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2> ),
    .I5(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ),
    .O(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT91  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [8])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_xor<0>11  (
    .I0(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd3_lut [0]),
    .I1(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_lut [0]),
    .I2(tx_green[2]),
    .I3(tx_green[3]),
    .I4(tx_green[7]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_04 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encg/Mmux_q_m<6>11  (
    .I0(\dvi_tx/encg/din_q [5]),
    .I1(\dvi_tx/encg/din_q [6]),
    .I2(\dvi_tx/encg/q_m [4]),
    .O(\dvi_tx/encg/q_m [6])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd3_lut<0>1  (
    .I0(tx_green[0]),
    .I1(tx_green[1]),
    .I2(tx_green[4]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd3_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA955555555AA ))
  \dvi_tx/encg/Mmux_q_m<1>11  (
    .I0(\dvi_tx/encg/din_q [1]),
    .I1(\dvi_tx/encg/n1d [1]),
    .I2(\dvi_tx/encg/n1d [0]),
    .I3(\dvi_tx/encg/n1d [2]),
    .I4(\dvi_tx/encg/n1d [3]),
    .I5(\dvi_tx/encg/din_q [0]),
    .O(\dvi_tx/encg/q_m [1])
  );
  LUT5 #(
    .INIT ( 32'hFFFFA8AA ))
  \dvi_tx/encg/Mmux_q_m<3>111  (
    .I0(\dvi_tx/encg/n1d [2]),
    .I1(\dvi_tx/encg/n1d [0]),
    .I2(\dvi_tx/encg/n1d [1]),
    .I3(\dvi_tx/encg/din_q [0]),
    .I4(\dvi_tx/encg/n1d [3]),
    .O(\dvi_tx/encg/Mmux_q_m<3>11 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encg/Mmux_q_m<2>11  (
    .I0(\dvi_tx/encg/din_q [2]),
    .I1(\dvi_tx/encg/din_q [1]),
    .I2(\dvi_tx/encg/din_q [0]),
    .O(\dvi_tx/encg/q_m [2])
  );
  LUT4 #(
    .INIT ( 16'h5755 ))
  \dvi_tx/encg/Mmux_q_m<3>121  (
    .I0(\dvi_tx/encg/n1d [2]),
    .I1(\dvi_tx/encg/n1d [0]),
    .I2(\dvi_tx/encg/n1d [1]),
    .I3(\dvi_tx/encg/din_q [0]),
    .O(\dvi_tx/encg/Mmux_q_m<3>12 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd31  (
    .I0(tx_green[1]),
    .I1(tx_green[4]),
    .I2(tx_green[0]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd3 )
  );
  LUT5 #(
    .INIT ( 32'hA88A2002 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT41  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encg/decision2_1151 ),
    .I2(\dvi_tx/encg/decision3_1150 ),
    .I3(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT61_1110 ),
    .I4(\dvi_tx/encg/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ),
    .O(\dvi_tx/encg/GND_37_o_cnt[4]_mux_55_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encg/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1>11  (
    .I0(\dvi_tx/encg/cnt [1]),
    .I1(\dvi_tx/encg/n1q_m [1]),
    .I2(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encg/Msub_n0233_lut<1>11  (
    .I0(\dvi_tx/encg/n1q_m [1]),
    .I1(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/Msub_n0233_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encg/Msub_n0233_lut<3>1  (
    .I0(\dvi_tx/encg/n0q_m [3]),
    .I1(\dvi_tx/encg/n1q_m [3]),
    .O(\dvi_tx/encg/Msub_n0233_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encg/Msub_n0233_lut<2>1  (
    .I0(\dvi_tx/encg/n0q_m [2]),
    .I1(\dvi_tx/encg/n1q_m [2]),
    .O(\dvi_tx/encg/Msub_n0233_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hFF775F5F55110505 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT10411  (
    .I0(\dvi_tx/encb/cnt [3]),
    .I1(\dvi_tx/encb/cnt [1]),
    .I2(\dvi_tx/encb/cnt [2]),
    .I3(\dvi_tx/encb/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ),
    .I4(\dvi_tx/encb/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2> ),
    .I5(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ),
    .O(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT91  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encb/c0_reg_1223 ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [8])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_xor<0>11  (
    .I0(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd3_lut [0]),
    .I1(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_lut [0]),
    .I2(tx_blue[2]),
    .I3(tx_blue[3]),
    .I4(tx_blue[7]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_04 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encb/Mmux_q_m<6>11  (
    .I0(\dvi_tx/encb/din_q [5]),
    .I1(\dvi_tx/encb/din_q [6]),
    .I2(\dvi_tx/encb/q_m [4]),
    .O(\dvi_tx/encb/q_m [6])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd3_lut<0>1  (
    .I0(tx_blue[0]),
    .I1(tx_blue[1]),
    .I2(tx_blue[4]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd3_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA955555555AA ))
  \dvi_tx/encb/Mmux_q_m<1>11  (
    .I0(\dvi_tx/encb/din_q [1]),
    .I1(\dvi_tx/encb/n1d [1]),
    .I2(\dvi_tx/encb/n1d [0]),
    .I3(\dvi_tx/encb/n1d [2]),
    .I4(\dvi_tx/encb/n1d [3]),
    .I5(\dvi_tx/encb/din_q [0]),
    .O(\dvi_tx/encb/q_m [1])
  );
  LUT5 #(
    .INIT ( 32'hFFFFA8AA ))
  \dvi_tx/encb/Mmux_q_m<3>111  (
    .I0(\dvi_tx/encb/n1d [2]),
    .I1(\dvi_tx/encb/n1d [0]),
    .I2(\dvi_tx/encb/n1d [1]),
    .I3(\dvi_tx/encb/din_q [0]),
    .I4(\dvi_tx/encb/n1d [3]),
    .O(\dvi_tx/encb/Mmux_q_m<3>11 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encb/Mmux_q_m<2>11  (
    .I0(\dvi_tx/encb/din_q [2]),
    .I1(\dvi_tx/encb/din_q [1]),
    .I2(\dvi_tx/encb/din_q [0]),
    .O(\dvi_tx/encb/q_m [2])
  );
  LUT4 #(
    .INIT ( 16'h5755 ))
  \dvi_tx/encb/Mmux_q_m<3>121  (
    .I0(\dvi_tx/encb/n1d [2]),
    .I1(\dvi_tx/encb/n1d [0]),
    .I2(\dvi_tx/encb/n1d [1]),
    .I3(\dvi_tx/encb/din_q [0]),
    .O(\dvi_tx/encb/Mmux_q_m<3>12 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd31  (
    .I0(tx_blue[1]),
    .I1(tx_blue[4]),
    .I2(tx_blue[0]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd3 )
  );
  LUT5 #(
    .INIT ( 32'hA88A2002 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT41  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encb/decision2_1253 ),
    .I2(\dvi_tx/encb/decision3_1252 ),
    .I3(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT61_1211 ),
    .I4(\dvi_tx/encb/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ),
    .O(\dvi_tx/encb/GND_37_o_cnt[4]_mux_55_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \dvi_tx/encb/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1>11  (
    .I0(\dvi_tx/encb/cnt [1]),
    .I1(\dvi_tx/encb/n1q_m [1]),
    .I2(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encb/Msub_n0233_lut<1>11  (
    .I0(\dvi_tx/encb/n1q_m [1]),
    .I1(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/Msub_n0233_lut [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encb/Msub_n0233_lut<3>1  (
    .I0(\dvi_tx/encb/n0q_m [3]),
    .I1(\dvi_tx/encb/n1q_m [3]),
    .O(\dvi_tx/encb/Msub_n0233_lut [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \dvi_tx/encb/Msub_n0233_lut<2>1  (
    .I0(\dvi_tx/encb/n0q_m [2]),
    .I1(\dvi_tx/encb/n1q_m [2]),
    .O(\dvi_tx/encb/Msub_n0233_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_tx/pixel2x/Mram_ra_d21  (
    .I0(\dvi_tx/pixel2x/ra [2]),
    .I1(\dvi_tx/pixel2x/ra [0]),
    .I2(\dvi_tx/pixel2x/ra [1]),
    .O(\dvi_tx/pixel2x/Mram_ra_d2 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \dvi_tx/pixel2x/Mram_wa_d21  (
    .I0(\dvi_tx/pixel2x/wa [2]),
    .I1(\dvi_tx/pixel2x/wa [0]),
    .I2(\dvi_tx/pixel2x/wa [1]),
    .O(\dvi_tx/pixel2x/Mram_wa_d2 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_tx/pixel2x/Mram_ra_d31  (
    .I0(\dvi_tx/pixel2x/ra [3]),
    .I1(\dvi_tx/pixel2x/ra [0]),
    .I2(\dvi_tx/pixel2x/ra [1]),
    .I3(\dvi_tx/pixel2x/ra [2]),
    .O(\dvi_tx/pixel2x/Mram_ra_d3 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \dvi_tx/pixel2x/Mram_wa_d31  (
    .I0(\dvi_tx/pixel2x/wa [3]),
    .I1(\dvi_tx/pixel2x/wa [0]),
    .I2(\dvi_tx/pixel2x/wa [1]),
    .I3(\dvi_tx/pixel2x/wa [2]),
    .O(\dvi_tx/pixel2x/Mram_wa_d3 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux16  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [0]),
    .I2(\dvi_tx/pixel2x/db [15]),
    .O(\dvi_tx/pixel2x/mux [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux21  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [10]),
    .I2(\dvi_tx/pixel2x/db [25]),
    .O(\dvi_tx/pixel2x/mux [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux31  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [11]),
    .I2(\dvi_tx/pixel2x/db [26]),
    .O(\dvi_tx/pixel2x/mux [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux41  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [12]),
    .I2(\dvi_tx/pixel2x/db [27]),
    .O(\dvi_tx/pixel2x/mux [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux51  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [13]),
    .I2(\dvi_tx/pixel2x/db [28]),
    .O(\dvi_tx/pixel2x/mux [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux61  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [14]),
    .I2(\dvi_tx/pixel2x/db [29]),
    .O(\dvi_tx/pixel2x/mux [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux71  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [1]),
    .I2(\dvi_tx/pixel2x/db [16]),
    .O(\dvi_tx/pixel2x/mux [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux81  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [2]),
    .I2(\dvi_tx/pixel2x/db [17]),
    .O(\dvi_tx/pixel2x/mux [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux91  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [3]),
    .I2(\dvi_tx/pixel2x/db [18]),
    .O(\dvi_tx/pixel2x/mux [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux101  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [4]),
    .I2(\dvi_tx/pixel2x/db [19]),
    .O(\dvi_tx/pixel2x/mux [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux111  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [5]),
    .I2(\dvi_tx/pixel2x/db [20]),
    .O(\dvi_tx/pixel2x/mux [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux121  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [6]),
    .I2(\dvi_tx/pixel2x/db [21]),
    .O(\dvi_tx/pixel2x/mux [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux131  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [7]),
    .I2(\dvi_tx/pixel2x/db [22]),
    .O(\dvi_tx/pixel2x/mux [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux141  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [8]),
    .I2(\dvi_tx/pixel2x/db [23]),
    .O(\dvi_tx/pixel2x/mux [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_tx/pixel2x/Mmux_mux151  (
    .I0(\dvi_tx/pixel2x/sync ),
    .I1(\dvi_tx/pixel2x/db [9]),
    .I2(\dvi_tx/pixel2x/db [24]),
    .O(\dvi_tx/pixel2x/mux [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_tx/pixel2x/Mram_ra_d111  (
    .I0(\dvi_tx/pixel2x/ra [0]),
    .I1(\dvi_tx/pixel2x/ra [1]),
    .O(\dvi_tx/pixel2x/Mram_ra_d1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_tx/pixel2x/Mram_wa_d111  (
    .I0(\dvi_tx/pixel2x/wa [0]),
    .I1(\dvi_tx/pixel2x/wa [1]),
    .O(\dvi_tx/pixel2x/Mram_wa_d1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \dvi_rx1/dec_r/n0050_inv2  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [5]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I5(\dvi_rx1/dec_r/cbnd/sdata [7]),
    .O(\dvi_rx1/dec_r/n0050_inv2_1403 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDFFFFFFFF ))
  \dvi_rx1/dec_g/n0050_inv2  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [5]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I5(\dvi_rx1/dec_g/cbnd/sdata [7]),
    .O(\dvi_rx1/dec_g/n0050_inv2_1404 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o1_SW0  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [7]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o1  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I5(N2),
    .O(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o1_227 )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o2_SW0  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [7]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h0000000010000000 ))
  \dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o2  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I5(N4),
    .O(\dvi_rx1/dec_b/sdata[9]_GND_9_o_Select_17_o2_228 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0F8F2FAA ))
  \dvi_rx1/dec_b/des_0/_n0283_inv1  (
    .I0(\dvi_rx1/dec_b/des_0/valid_data_d_339 ),
    .I1(\dvi_rx1/dec_b/des_0/incdec_data_d_340 ),
    .I2(\dvi_rx1/dec_b/des_0/flag_342 ),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_equal_48_o ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I5(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_b/des_0/_n0283_inv1_1407 )
  );
  LUT4 #(
    .INIT ( 16'h7F00 ))
  \dvi_rx1/dec_b/des_0/_n0283_inv2  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 ),
    .I3(\dvi_rx1/dec_b/des_0/_n0283_inv1_1407 ),
    .O(\dvi_rx1/dec_b/des_0/_n0283_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0F8F2FAA ))
  \dvi_rx1/dec_g/des_0/_n0283_inv1  (
    .I0(\dvi_rx1/dec_g/des_0/valid_data_d_387 ),
    .I1(\dvi_rx1/dec_g/des_0/incdec_data_d_388 ),
    .I2(\dvi_rx1/dec_g/des_0/flag_390 ),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_equal_48_o ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I5(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_g/des_0/_n0283_inv1_1408 )
  );
  LUT4 #(
    .INIT ( 16'h7F00 ))
  \dvi_rx1/dec_g/des_0/_n0283_inv2  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 ),
    .I3(\dvi_rx1/dec_g/des_0/_n0283_inv1_1408 ),
    .O(\dvi_rx1/dec_g/des_0/_n0283_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF0F8F2FAA ))
  \dvi_rx1/dec_r/des_0/_n0283_inv1  (
    .I0(\dvi_rx1/dec_r/des_0/valid_data_d_432 ),
    .I1(\dvi_rx1/dec_r/des_0/incdec_data_d_433 ),
    .I2(\dvi_rx1/dec_r/des_0/flag_435 ),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_equal_48_o ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I5(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(\dvi_rx1/dec_r/des_0/_n0283_inv1_1409 )
  );
  LUT4 #(
    .INIT ( 16'h7F00 ))
  \dvi_rx1/dec_r/des_0/_n0283_inv2  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 ),
    .I3(\dvi_rx1/dec_r/des_0/_n0283_inv1_1409 ),
    .O(\dvi_rx1/dec_r/des_0/_n0283_inv )
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In_SW0  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_529 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/blnkprd_cnt_0_534 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_530 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_523 ),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFF8F8FDF8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_tout_525 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd6_533 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_531 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_532 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_526 ),
    .I5(N18),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5-In_497 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [7]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [6]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [9]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [8]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [11]),
    .I5(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>2  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [1]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [0]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [3]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [2]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [5]),
    .I5(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1412 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>3  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1412 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o )
  );
  LUT5 #(
    .INIT ( 32'h00000020 ))
  \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1  (
    .I0(\dvi_rx1/dec_b/rawword [2]),
    .I1(\dvi_rx1/dec_b/rawword [1]),
    .I2(\dvi_rx1/dec_b/rawword [4]),
    .I3(\dvi_rx1/dec_b/rawword [0]),
    .I4(\dvi_rx1/dec_b/rawword [3]),
    .O(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1413 )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2  (
    .I0(\dvi_rx1/dec_b/rawword [2]),
    .I1(\dvi_rx1/dec_b/rawword [0]),
    .I2(\dvi_rx1/dec_b/rawword [4]),
    .I3(\dvi_rx1/dec_b/rawword [3]),
    .I4(\dvi_rx1/dec_b/rawword [1]),
    .O(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1414 )
  );
  LUT6 #(
    .INIT ( 64'h0420002004000000 ))
  \dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o3  (
    .I0(\dvi_rx1/dec_b/rawword [8]),
    .I1(\dvi_rx1/dec_b/rawword [5]),
    .I2(\dvi_rx1/dec_b/rawword [6]),
    .I3(\dvi_rx1/dec_b/rawword [7]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1414 ),
    .I5(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1413 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/sdata[9]_sdata[9]_OR_85_o )
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In_SW0  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_616 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/blnkprd_cnt_0_621 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_617 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_610 ),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFF8F8FDF8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_tout_612 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd6_620 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_618 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_619 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_613 ),
    .I5(N20),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5-In_584 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [7]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [6]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [9]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [8]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [11]),
    .I5(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>2  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [1]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [0]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [3]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [2]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [5]),
    .I5(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1417 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>3  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1417 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o )
  );
  LUT5 #(
    .INIT ( 32'h00000020 ))
  \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1  (
    .I0(\dvi_rx1/dec_g/rawword [2]),
    .I1(\dvi_rx1/dec_g/rawword [1]),
    .I2(\dvi_rx1/dec_g/rawword [4]),
    .I3(\dvi_rx1/dec_g/rawword [0]),
    .I4(\dvi_rx1/dec_g/rawword [3]),
    .O(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1418 )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2  (
    .I0(\dvi_rx1/dec_g/rawword [2]),
    .I1(\dvi_rx1/dec_g/rawword [0]),
    .I2(\dvi_rx1/dec_g/rawword [4]),
    .I3(\dvi_rx1/dec_g/rawword [3]),
    .I4(\dvi_rx1/dec_g/rawword [1]),
    .O(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1419 )
  );
  LUT6 #(
    .INIT ( 64'h0420002004000000 ))
  \dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o3  (
    .I0(\dvi_rx1/dec_g/rawword [8]),
    .I1(\dvi_rx1/dec_g/rawword [5]),
    .I2(\dvi_rx1/dec_g/rawword [6]),
    .I3(\dvi_rx1/dec_g/rawword [7]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1419 ),
    .I5(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1418 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/sdata[9]_sdata[9]_OR_85_o )
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In_SW0  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_703 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/blnkprd_cnt_0_708 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_704 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_697 ),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFF8F8FDF8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_tout_699 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd6_707 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_705 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_706 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_700 ),
    .I5(N22),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5-In_671 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [7]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [6]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [9]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [8]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [11]),
    .I5(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>2  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [1]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [0]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [3]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [2]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [5]),
    .I5(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1422 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>3  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11> ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o<11>1_1422 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer[11]_PWR_17_o_equal_11_o )
  );
  LUT5 #(
    .INIT ( 32'h00000020 ))
  \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1  (
    .I0(\dvi_rx1/dec_r/rawword [2]),
    .I1(\dvi_rx1/dec_r/rawword [1]),
    .I2(\dvi_rx1/dec_r/rawword [4]),
    .I3(\dvi_rx1/dec_r/rawword [0]),
    .I4(\dvi_rx1/dec_r/rawword [3]),
    .O(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1423 )
  );
  LUT5 #(
    .INIT ( 32'h04000000 ))
  \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2  (
    .I0(\dvi_rx1/dec_r/rawword [2]),
    .I1(\dvi_rx1/dec_r/rawword [0]),
    .I2(\dvi_rx1/dec_r/rawword [4]),
    .I3(\dvi_rx1/dec_r/rawword [3]),
    .I4(\dvi_rx1/dec_r/rawword [1]),
    .O(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1424 )
  );
  LUT6 #(
    .INIT ( 64'h0420002004000000 ))
  \dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o3  (
    .I0(\dvi_rx1/dec_r/rawword [8]),
    .I1(\dvi_rx1/dec_r/rawword [5]),
    .I2(\dvi_rx1/dec_r/rawword [6]),
    .I3(\dvi_rx1/dec_r/rawword [7]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o2_1424 ),
    .I5(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o1_1423 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/sdata[9]_sdata[9]_OR_85_o )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o2  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I5(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .O(\dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o2_1425 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o2  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I5(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .O(\dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o2_1426 )
  );
  LUT6 #(
    .INIT ( 64'h1000000000000000 ))
  \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o2  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I5(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .O(\dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o2_1427 )
  );
  LUT6 #(
    .INIT ( 64'hAAA288808880AAA2 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT85  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encr/decision2_1050 ),
    .I2(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT8 ),
    .I3(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT83 ),
    .I4(\dvi_tx/encr/cnt [3]),
    .I5(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT81_1011 ),
    .O(\dvi_tx/encr/GND_37_o_cnt[4]_mux_55_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h9696969699666699 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT61  (
    .I0(\dvi_tx/encr/cnt [2]),
    .I1(\dvi_tx/encr/Madd_cnt[4]_GND_37_o_add_47_OUT1 ),
    .I2(\dvi_tx/encr/n0233 [2]),
    .I3(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT61_1010 ),
    .I4(\dvi_tx/encr/n0236 [2]),
    .I5(\dvi_tx/encr/decision3_1049 ),
    .O(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT6 )
  );
  LUT6 #(
    .INIT ( 64'h2AA22A2A08800808 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT62  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encr/decision2_1050 ),
    .I2(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT63 ),
    .I3(\dvi_tx/encr/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ),
    .I4(\dvi_tx/encr/cnt [1]),
    .I5(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT6 ),
    .O(\dvi_tx/encr/GND_37_o_cnt[4]_mux_55_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0F0FF0F066996699 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT81  (
    .I0(N24),
    .I1(\dvi_tx/encr/n0236 [3]),
    .I2(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ),
    .I3(\dvi_tx/encr/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>2 ),
    .I4(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT811 ),
    .I5(\dvi_tx/encr/decision3_1049 ),
    .O(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT81_1011 )
  );
  LUT6 #(
    .INIT ( 64'h7F55BFAA3F003F00 ))
  \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<3>1  (
    .I0(\dvi_tx/encr/q_m [2]),
    .I1(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N26),
    .I3(\dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>16 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .O(\dvi_tx/encr/PWR_35_o_BUS_0017_sub_29_OUT [3])
  );
  LUT5 #(
    .INIT ( 32'hCCCC0C48 ))
  \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>12  (
    .I0(\dvi_tx/encr/q_m [2]),
    .I1(\dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>1 ),
    .I2(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9 ),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>11_1435 )
  );
  LUT4 #(
    .INIT ( 16'hE400 ))
  \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>13  (
    .I0(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encr/q_m [5]),
    .I2(\dvi_tx/encr/q_m [7]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>12_1436 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFD5EAFFFFC0C0 ))
  \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>14  (
    .I0(\dvi_tx/encr/q_m [2]),
    .I1(\dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>16 ),
    .I2(\dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>12_1436 ),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>11_1435 ),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .O(\dvi_tx/encr/PWR_35_o_BUS_0017_sub_29_OUT [2])
  );
  LUT3 #(
    .INIT ( 8'hDB ))
  \dvi_tx/encr/decision3_SW0  (
    .I0(\dvi_tx/encr/cnt [4]),
    .I1(\dvi_tx/encr/n1q_m [1]),
    .I2(\dvi_tx/encr/n0q_m [1]),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'h24A66524E7A665E7 ))
  \dvi_tx/encr/decision3  (
    .I0(\dvi_tx/encr/cnt [4]),
    .I1(\dvi_tx/encr/n1q_m [3]),
    .I2(\dvi_tx/encr/n0q_m [3]),
    .I3(\dvi_tx/encr/n1q_m [2]),
    .I4(\dvi_tx/encr/n0q_m [2]),
    .I5(N28),
    .O(\dvi_tx/encr/decision3_1049 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_tx/encr/decision2_SW0  (
    .I0(\dvi_tx/encr/cnt [3]),
    .I1(\dvi_tx/encr/cnt [4]),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'hFF01010101010101 ))
  \dvi_tx/encr/decision2  (
    .I0(\dvi_tx/encr/cnt [1]),
    .I1(\dvi_tx/encr/cnt [2]),
    .I2(N30),
    .I3(\dvi_tx/encr/Msub_n0233_lut [2]),
    .I4(\dvi_tx/encr/Msub_n0233_lut [1]),
    .I5(\dvi_tx/encr/Msub_n0233_lut [3]),
    .O(\dvi_tx/encr/decision2_1050 )
  );
  LUT6 #(
    .INIT ( 64'hA9659A5665A9569A ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT101  (
    .I0(\dvi_tx/encr/cnt [4]),
    .I1(\dvi_tx/encr/q_m_reg [8]),
    .I2(\dvi_tx/encr/Msub_n0233_cy [3]),
    .I3(\dvi_tx/encr/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 ),
    .I5(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .O(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT10 )
  );
  LUT6 #(
    .INIT ( 64'hAAA288808880AAA2 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT85  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encg/decision2_1151 ),
    .I2(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT8 ),
    .I3(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT83 ),
    .I4(\dvi_tx/encg/cnt [3]),
    .I5(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT81_1111 ),
    .O(\dvi_tx/encg/GND_37_o_cnt[4]_mux_55_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h99996666A55A5AA5 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT61  (
    .I0(\dvi_tx/encg/cnt [2]),
    .I1(\dvi_tx/encg/n0233 [2]),
    .I2(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT61_1110 ),
    .I3(\dvi_tx/encg/n0236 [2]),
    .I4(\dvi_tx/encg/Madd_cnt[4]_GND_37_o_add_47_OUT1 ),
    .I5(\dvi_tx/encg/decision3_1150 ),
    .O(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT6 )
  );
  LUT6 #(
    .INIT ( 64'h2AA22A2A08800808 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT62  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encg/decision2_1151 ),
    .I2(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT63 ),
    .I3(\dvi_tx/encg/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ),
    .I4(\dvi_tx/encg/cnt [1]),
    .I5(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT6 ),
    .O(\dvi_tx/encg/GND_37_o_cnt[4]_mux_55_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0F0FF0F066996699 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT81  (
    .I0(N32),
    .I1(\dvi_tx/encg/n0236 [3]),
    .I2(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ),
    .I3(\dvi_tx/encg/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>2 ),
    .I4(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT811 ),
    .I5(\dvi_tx/encg/decision3_1150 ),
    .O(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT81_1111 )
  );
  LUT6 #(
    .INIT ( 64'h7F55BFAA3F003F00 ))
  \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<3>1  (
    .I0(\dvi_tx/encg/q_m [2]),
    .I1(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N34),
    .I3(\dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>16 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .O(\dvi_tx/encg/PWR_35_o_BUS_0017_sub_29_OUT [3])
  );
  LUT5 #(
    .INIT ( 32'hCCCC0C48 ))
  \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>12  (
    .I0(\dvi_tx/encg/q_m [2]),
    .I1(\dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>1 ),
    .I2(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9 ),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>11_1446 )
  );
  LUT4 #(
    .INIT ( 16'hE400 ))
  \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>13  (
    .I0(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encg/q_m [5]),
    .I2(\dvi_tx/encg/q_m [7]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>12_1447 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFD5EAFFFFC0C0 ))
  \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>14  (
    .I0(\dvi_tx/encg/q_m [2]),
    .I1(\dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>16 ),
    .I2(\dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>12_1447 ),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>11_1446 ),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .O(\dvi_tx/encg/PWR_35_o_BUS_0017_sub_29_OUT [2])
  );
  LUT3 #(
    .INIT ( 8'hDB ))
  \dvi_tx/encg/decision3_SW0  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/n1q_m [1]),
    .I2(\dvi_tx/encg/n0q_m [1]),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'h42D24B42DBD24BDB ))
  \dvi_tx/encg/decision3  (
    .I0(\dvi_tx/encg/n1q_m [3]),
    .I1(\dvi_tx/encg/n0q_m [3]),
    .I2(\dvi_tx/encg/cnt [4]),
    .I3(\dvi_tx/encg/n1q_m [2]),
    .I4(\dvi_tx/encg/n0q_m [2]),
    .I5(N36),
    .O(\dvi_tx/encg/decision3_1150 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_tx/encg/decision2_SW0  (
    .I0(\dvi_tx/encg/cnt [3]),
    .I1(\dvi_tx/encg/cnt [4]),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'hF0F1001100110011 ))
  \dvi_tx/encg/decision2  (
    .I0(\dvi_tx/encg/cnt [1]),
    .I1(\dvi_tx/encg/cnt [2]),
    .I2(\dvi_tx/encg/Msub_n0233_lut [3]),
    .I3(N38),
    .I4(\dvi_tx/encg/Msub_n0233_lut [2]),
    .I5(\dvi_tx/encg/Msub_n0233_lut [1]),
    .O(\dvi_tx/encg/decision2_1151 )
  );
  LUT6 #(
    .INIT ( 64'hAAA288808880AAA2 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT85  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encb/decision2_1253 ),
    .I2(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT8 ),
    .I3(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT83 ),
    .I4(\dvi_tx/encb/cnt [3]),
    .I5(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT81_1212 ),
    .O(\dvi_tx/encb/GND_37_o_cnt[4]_mux_55_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h99996666A55A5AA5 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT61  (
    .I0(\dvi_tx/encb/cnt [2]),
    .I1(\dvi_tx/encb/n0233 [2]),
    .I2(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT61_1211 ),
    .I3(\dvi_tx/encb/n0236 [2]),
    .I4(\dvi_tx/encb/Madd_cnt[4]_GND_37_o_add_47_OUT1 ),
    .I5(\dvi_tx/encb/decision3_1252 ),
    .O(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT6 )
  );
  LUT6 #(
    .INIT ( 64'h2AA22A2A08800808 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT62  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encb/decision2_1253 ),
    .I2(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT63 ),
    .I3(\dvi_tx/encb/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ),
    .I4(\dvi_tx/encb/cnt [1]),
    .I5(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT6 ),
    .O(\dvi_tx/encb/GND_37_o_cnt[4]_mux_55_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0F0FF0F066996699 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT81  (
    .I0(N40),
    .I1(\dvi_tx/encb/n0236 [3]),
    .I2(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ),
    .I3(\dvi_tx/encb/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>2 ),
    .I4(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT811 ),
    .I5(\dvi_tx/encb/decision3_1252 ),
    .O(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT81_1212 )
  );
  LUT6 #(
    .INIT ( 64'h7F55BFAA3F003F00 ))
  \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<3>1  (
    .I0(\dvi_tx/encb/q_m [2]),
    .I1(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N42),
    .I3(\dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>16 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .O(\dvi_tx/encb/PWR_35_o_BUS_0017_sub_29_OUT [3])
  );
  LUT5 #(
    .INIT ( 32'hCCCC0C48 ))
  \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>12  (
    .I0(\dvi_tx/encb/q_m [2]),
    .I1(\dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>1 ),
    .I2(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9 ),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>11_1456 )
  );
  LUT4 #(
    .INIT ( 16'hE400 ))
  \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>13  (
    .I0(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encb/q_m [5]),
    .I2(\dvi_tx/encb/q_m [7]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>12_1457 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFD5EAFFFFC0C0 ))
  \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>14  (
    .I0(\dvi_tx/encb/q_m [2]),
    .I1(\dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>16 ),
    .I2(\dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>12_1457 ),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>11_1456 ),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_cy<0>2 ),
    .O(\dvi_tx/encb/PWR_35_o_BUS_0017_sub_29_OUT [2])
  );
  LUT3 #(
    .INIT ( 8'hDB ))
  \dvi_tx/encb/decision3_SW0  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/n1q_m [1]),
    .I2(\dvi_tx/encb/n0q_m [1]),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'h42D24B42DBD24BDB ))
  \dvi_tx/encb/decision3  (
    .I0(\dvi_tx/encb/n1q_m [3]),
    .I1(\dvi_tx/encb/n0q_m [3]),
    .I2(\dvi_tx/encb/cnt [4]),
    .I3(\dvi_tx/encb/n1q_m [2]),
    .I4(\dvi_tx/encb/n0q_m [2]),
    .I5(N44),
    .O(\dvi_tx/encb/decision3_1252 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_tx/encb/decision2_SW0  (
    .I0(\dvi_tx/encb/cnt [3]),
    .I1(\dvi_tx/encb/cnt [4]),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'hF0F1001100110011 ))
  \dvi_tx/encb/decision2  (
    .I0(\dvi_tx/encb/cnt [1]),
    .I1(\dvi_tx/encb/cnt [2]),
    .I2(\dvi_tx/encb/Msub_n0233_lut [3]),
    .I3(N46),
    .I4(\dvi_tx/encb/Msub_n0233_lut [2]),
    .I5(\dvi_tx/encb/Msub_n0233_lut [1]),
    .O(\dvi_tx/encb/decision2_1253 )
  );
  IBUF   clk100_IBUF (
    .I(clk100),
    .O(clk100_IBUF_12)
  );
  IBUF   SW_2_IBUF (
    .I(SW[2]),
    .O(SW_2_IBUF_8)
  );
  IBUF   SW_1_IBUF (
    .I(SW[1]),
    .O(SW_1_IBUF_9)
  );
  IBUF   SW_0_IBUF (
    .I(SW[0]),
    .O(SW_0_IBUF_10)
  );
  IBUF   rstbtn_n_IBUF (
    .I(rstbtn_n),
    .O(rstbtn_n_IBUF_11)
  );
  OBUF   LED_7_OBUF (
    .I(\dvi_rx1/dec_r/cbnd/iamrdy_47 ),
    .O(LED[7])
  );
  OBUF   LED_6_OBUF (
    .I(\dvi_rx1/dec_g/cbnd/iamrdy_46 ),
    .O(LED[6])
  );
  OBUF   LED_5_OBUF (
    .I(\dvi_rx1/dec_b/cbnd/iamrdy_45 ),
    .O(LED[5])
  );
  OBUF   LED_4_OBUF (
    .I(\dvi_rx1/dec_r/cbnd/iamrdy_47 ),
    .O(LED[4])
  );
  OBUF   LED_3_OBUF (
    .I(\dvi_rx1/dec_g/cbnd/iamrdy_46 ),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(\dvi_rx1/dec_b/cbnd/iamrdy_45 ),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(\dvi_rx1/dec_b/de_44 ),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(\dvi_rx1/dec_b/de_44 ),
    .O(LED[0])
  );
  FDR   \dvi_rx1/dec_b/cbnd/skip_line  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/skip_line_glue_set_1473 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/skip_line_733 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_rx1/dec_b/cbnd/skip_line_glue_set  (
    .I0(\dvi_rx1/dec_b/cbnd/skip_line_733 ),
    .I1(\dvi_rx1/dec_b/cbnd/blnkbgn_736 ),
    .O(\dvi_rx1/dec_b/cbnd/skip_line_glue_set_1473 )
  );
  FDR   \dvi_rx1/dec_b/cbnd/iamrdy  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/iamrdy_glue_set_1474 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_b/cbnd/iamrdy_45 )
  );
  FDR   \dvi_rx1/dec_g/cbnd/skip_line  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/skip_line_glue_set_1475 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/skip_line_759 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_rx1/dec_g/cbnd/skip_line_glue_set  (
    .I0(\dvi_rx1/dec_g/cbnd/skip_line_759 ),
    .I1(\dvi_rx1/dec_g/cbnd/blnkbgn_760 ),
    .O(\dvi_rx1/dec_g/cbnd/skip_line_glue_set_1475 )
  );
  FDR   \dvi_rx1/dec_g/cbnd/iamrdy  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/iamrdy_glue_set_1476 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_g/cbnd/iamrdy_46 )
  );
  FDR   \dvi_rx1/dec_r/cbnd/skip_line  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/skip_line_glue_set_1477 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/skip_line_783 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \dvi_rx1/dec_r/cbnd/skip_line_glue_set  (
    .I0(\dvi_rx1/dec_r/cbnd/skip_line_783 ),
    .I1(\dvi_rx1/dec_r/cbnd/blnkbgn_784 ),
    .O(\dvi_rx1/dec_r/cbnd/skip_line_glue_set_1477 )
  );
  FDR   \dvi_rx1/dec_r/cbnd/iamrdy  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/iamrdy_glue_set_1478 ),
    .R(\dvi_rx1/dec_b/cbnd/rawdata_vld_inv ),
    .Q(\dvi_rx1/dec_r/cbnd/iamrdy_47 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1479 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [9]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1480 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [8]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1481 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [7]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1482 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [6]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1483 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [5]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1484 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1485 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [3]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1486 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [2]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1487 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [1]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1488 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1489 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [9]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1490 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [8]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1491 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [7]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1492 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [6]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1493 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [5]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1494 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1495 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [3]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1496 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [2]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1497 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [1]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1498 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [10]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<10>_rt_1499 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [9]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<9>_rt_1500 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [8]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<8>_rt_1501 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [7]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<7>_rt_1502 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [6]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<6>_rt_1503 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [5]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<5>_rt_1504 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<4>_rt_1505 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [3]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<3>_rt_1506 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [2]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<2>_rt_1507 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [1]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_cy<1>_rt_1508 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [11]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1509 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [11]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1510 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [11]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_xor<11>_rt_1511 )
  );
  FDC   \dvi_rx1/dec_b/des_0/cal_data_master  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/cal_data_master_rstpot_1512 ),
    .Q(\dvi_rx1/dec_b/des_0/cal_data_master_346 )
  );
  FDC   \dvi_rx1/dec_b/des_0/flag  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/flag_rstpot_1513 ),
    .Q(\dvi_rx1/dec_b/des_0/flag_342 )
  );
  FDC   \dvi_rx1/dec_b/des_0/ce_data_inta  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/ce_data_inta_rstpot_1514 ),
    .Q(\dvi_rx1/dec_b/des_0/ce_data_inta_343 )
  );
  FDC   \dvi_rx1/dec_b/des_0/cal_data_sint  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/cal_data_sint_rstpot_1515 ),
    .Q(\dvi_rx1/dec_b/des_0/cal_data_sint_345 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/enable_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/counter [5]),
    .I1(\dvi_rx1/dec_b/des_0/enable_344 ),
    .I2(N0),
    .O(\dvi_rx1/dec_b/des_0/enable_rstpot_1516 )
  );
  FDC   \dvi_rx1/dec_b/des_0/enable  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_b/des_0/enable_rstpot_1516 ),
    .Q(\dvi_rx1/dec_b/des_0/enable_344 )
  );
  FDC   \dvi_rx1/dec_g/des_0/cal_data_master  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/cal_data_master_rstpot_1518 ),
    .Q(\dvi_rx1/dec_g/des_0/cal_data_master_393 )
  );
  FDC   \dvi_rx1/dec_g/des_0/flag  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/flag_rstpot_1519 ),
    .Q(\dvi_rx1/dec_g/des_0/flag_390 )
  );
  FDC   \dvi_rx1/dec_g/des_0/ce_data_inta  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/ce_data_inta_rstpot_1520 ),
    .Q(\dvi_rx1/dec_g/des_0/ce_data_inta_391 )
  );
  FDC   \dvi_rx1/dec_g/des_0/cal_data_sint  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_g/des_0/cal_data_sint_rstpot_1521 ),
    .Q(\dvi_rx1/dec_g/des_0/cal_data_sint_392 )
  );
  FDC   \dvi_rx1/dec_r/des_0/cal_data_master  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/cal_data_master_rstpot_1523 ),
    .Q(\dvi_rx1/dec_r/des_0/cal_data_master_438 )
  );
  FDC   \dvi_rx1/dec_r/des_0/flag  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/flag_rstpot_1524 ),
    .Q(\dvi_rx1/dec_r/des_0/flag_435 )
  );
  FDC   \dvi_rx1/dec_r/des_0/ce_data_inta  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/ce_data_inta_rstpot_1525 ),
    .Q(\dvi_rx1/dec_r/des_0/ce_data_inta_436 )
  );
  FDC   \dvi_rx1/dec_r/des_0/cal_data_sint  (
    .C(\dvi_rx1/pclkx2 ),
    .CLR(rx_reset),
    .D(\dvi_rx1/dec_r/des_0/cal_data_sint_rstpot_1526 ),
    .Q(\dvi_rx1/dec_r/des_0/cal_data_sint_437 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_b/phsalgn_0/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_523 ),
    .I1(\dvi_rx1/dec_b/phsalgn_0/rcvd_ctkn_q_527 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_rstpot_1528 )
  );
  FD   \dvi_rx1/dec_b/phsalgn_0/blnkbgn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_rstpot_1528 ),
    .Q(\dvi_rx1/dec_b/phsalgn_0/blnkbgn_526 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_g/phsalgn_0/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_610 ),
    .I1(\dvi_rx1/dec_g/phsalgn_0/rcvd_ctkn_q_614 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_rstpot_1529 )
  );
  FD   \dvi_rx1/dec_g/phsalgn_0/blnkbgn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_rstpot_1529 ),
    .Q(\dvi_rx1/dec_g/phsalgn_0/blnkbgn_613 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_r/phsalgn_0/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_697 ),
    .I1(\dvi_rx1/dec_r/phsalgn_0/rcvd_ctkn_q_701 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_rstpot_1530 )
  );
  FD   \dvi_rx1/dec_r/phsalgn_0/blnkbgn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_rstpot_1530 ),
    .Q(\dvi_rx1/dec_r/phsalgn_0/blnkbgn_700 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_b/cbnd/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_738 ),
    .I1(\dvi_rx1/dec_b/cbnd/rcvd_ctkn_q_737 ),
    .O(\dvi_rx1/dec_b/cbnd/blnkbgn_rstpot_1531 )
  );
  FD   \dvi_rx1/dec_b/cbnd/blnkbgn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/blnkbgn_rstpot_1531 ),
    .Q(\dvi_rx1/dec_b/cbnd/blnkbgn_736 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_g/cbnd/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_762 ),
    .I1(\dvi_rx1/dec_g/cbnd/rcvd_ctkn_q_761 ),
    .O(\dvi_rx1/dec_g/cbnd/blnkbgn_rstpot_1532 )
  );
  FD   \dvi_rx1/dec_g/cbnd/blnkbgn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/blnkbgn_rstpot_1532 ),
    .Q(\dvi_rx1/dec_g/cbnd/blnkbgn_760 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \dvi_rx1/dec_r/cbnd/blnkbgn_rstpot  (
    .I0(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_786 ),
    .I1(\dvi_rx1/dec_r/cbnd/rcvd_ctkn_q_785 ),
    .O(\dvi_rx1/dec_r/cbnd/blnkbgn_rstpot_1533 )
  );
  FD   \dvi_rx1/dec_r/cbnd/blnkbgn  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/blnkbgn_rstpot_1533 ),
    .Q(\dvi_rx1/dec_r/cbnd/blnkbgn_784 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/tmdsclkint_0  (
    .C(tx_pclkx2),
    .D(\dvi_tx/toggle_949 ),
    .Q(\dvi_tx/tmdsclkint [0])
  );
  FD   \dvi_rx1/dec_b/des_0/inc_data_int  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/des_0/inc_data_int_rstpot_1534 ),
    .Q(\dvi_rx1/dec_b/des_0/inc_data_int_333 )
  );
  FD   \dvi_rx1/dec_b/des_0/ce_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/des_0/ce_data_rstpot_1535 ),
    .Q(\dvi_rx1/dec_b/des_0/ce_data_338 )
  );
  FD   \dvi_rx1/dec_g/des_0/inc_data_int  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/des_0/inc_data_int_rstpot_1536 ),
    .Q(\dvi_rx1/dec_g/des_0/inc_data_int_381 )
  );
  FD   \dvi_rx1/dec_g/des_0/ce_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/des_0/ce_data_rstpot_1537 ),
    .Q(\dvi_rx1/dec_g/des_0/ce_data_386 )
  );
  FD   \dvi_rx1/dec_r/des_0/inc_data_int  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/des_0/inc_data_int_rstpot_1538 ),
    .Q(\dvi_rx1/dec_r/des_0/inc_data_int_426 )
  );
  FD   \dvi_rx1/dec_r/des_0/ce_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/des_0/ce_data_rstpot_1539 ),
    .Q(\dvi_rx1/dec_r/des_0/ce_data_431 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_b/cbnd/ra_en  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_b/cbnd/ra_en_rstpot_1540 ),
    .Q(\dvi_rx1/dec_b/cbnd/ra_en_732 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_g/cbnd/ra_en  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_g/cbnd/ra_en_rstpot_1541 ),
    .Q(\dvi_rx1/dec_g/cbnd/ra_en_758 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_rx1/dec_r/cbnd/ra_en  (
    .C(rx_pclk),
    .D(\dvi_rx1/dec_r/cbnd/ra_en_rstpot_1542 ),
    .Q(\dvi_rx1/dec_r/cbnd/ra_en_782 )
  );
  FD   \dvi_rx1/dec_b/des_0/rst_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_b/des_0/rst_data_rstpot1_1543 ),
    .Q(\dvi_rx1/dec_b/des_0/rst_data_334 )
  );
  FD   \dvi_rx1/dec_g/des_0/rst_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_g/des_0/rst_data_rstpot1_1544 ),
    .Q(\dvi_rx1/dec_g/des_0/rst_data_382 )
  );
  FD   \dvi_rx1/dec_r/des_0/rst_data  (
    .C(\dvi_rx1/pclkx2 ),
    .D(\dvi_rx1/dec_r/des_0/rst_data_rstpot1_1545 ),
    .Q(\dvi_rx1/dec_r/des_0/rst_data_427 )
  );
  LUT6 #(
    .INIT ( 64'hD841412727BEBED8 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>11  (
    .I0(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encr/q_m [3]),
    .I2(\dvi_tx/encr/q_m [5]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8_lut [0]),
    .I4(\dvi_tx/encr/q_m [7]),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>1 )
  );
  LUT6 #(
    .INIT ( 64'hD841412727BEBED8 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>11  (
    .I0(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encg/q_m [3]),
    .I2(\dvi_tx/encg/q_m [5]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8_lut [0]),
    .I4(\dvi_tx/encg/q_m [7]),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>1 )
  );
  LUT6 #(
    .INIT ( 64'hD841412727BEBED8 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>11  (
    .I0(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encb/q_m [3]),
    .I2(\dvi_tx/encb/q_m [5]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8_lut [0]),
    .I4(\dvi_tx/encb/q_m [7]),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>1 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encr/Mmux_q_m<4>11  (
    .I0(\dvi_tx/encr/din_q [4]),
    .I1(\dvi_tx/encr/din_q [3]),
    .I2(\dvi_tx/encr/din_q [2]),
    .I3(\dvi_tx/encr/din_q [1]),
    .I4(\dvi_tx/encr/din_q [0]),
    .O(\dvi_tx/encr/q_m [4])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encg/Mmux_q_m<4>11  (
    .I0(\dvi_tx/encg/din_q [4]),
    .I1(\dvi_tx/encg/din_q [3]),
    .I2(\dvi_tx/encg/din_q [2]),
    .I3(\dvi_tx/encg/din_q [1]),
    .I4(\dvi_tx/encg/din_q [0]),
    .O(\dvi_tx/encg/q_m [4])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encb/Mmux_q_m<4>11  (
    .I0(\dvi_tx/encb/din_q [4]),
    .I1(\dvi_tx/encb/din_q [3]),
    .I2(\dvi_tx/encb/din_q [2]),
    .I3(\dvi_tx/encb/din_q [1]),
    .I4(\dvi_tx/encb/din_q [0]),
    .O(\dvi_tx/encb/q_m [4])
  );
  LUT6 #(
    .INIT ( 64'h80800000C000C000 ))
  \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>1411  (
    .I0(\dvi_tx/encr/q_m [2]),
    .I1(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N26),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_cy<0>2 )
  );
  LUT6 #(
    .INIT ( 64'h80800000C000C000 ))
  \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>1411  (
    .I0(\dvi_tx/encg/q_m [2]),
    .I1(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N34),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_cy<0>2 )
  );
  LUT6 #(
    .INIT ( 64'h80800000C000C000 ))
  \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>1411  (
    .I0(\dvi_tx/encb/q_m [2]),
    .I1(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N42),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_cy<0>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_tx/encr/Mmux_q_m<6>11_SW0  (
    .I0(\dvi_tx/encr/din_q [7]),
    .I1(\dvi_tx/encr/din_q [5]),
    .O(N54)
  );
  LUT6 #(
    .INIT ( 64'h7B5A2100B7A51200 ))
  \dvi_tx/encr/Mmux_q_m<7>11  (
    .I0(\dvi_tx/encr/din_q [6]),
    .I1(\dvi_tx/encr/n1d [3]),
    .I2(N54),
    .I3(\dvi_tx/encr/Mmux_q_m<3>12 ),
    .I4(\dvi_tx/encr/Mmux_q_m<3>11 ),
    .I5(\dvi_tx/encr/q_m [4]),
    .O(\dvi_tx/encr/q_m [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_tx/encg/Mmux_q_m<6>11_SW0  (
    .I0(\dvi_tx/encg/din_q [7]),
    .I1(\dvi_tx/encg/din_q [5]),
    .O(N56)
  );
  LUT6 #(
    .INIT ( 64'h7B5A2100B7A51200 ))
  \dvi_tx/encg/Mmux_q_m<7>11  (
    .I0(\dvi_tx/encg/din_q [6]),
    .I1(\dvi_tx/encg/n1d [3]),
    .I2(N56),
    .I3(\dvi_tx/encg/Mmux_q_m<3>12 ),
    .I4(\dvi_tx/encg/Mmux_q_m<3>11 ),
    .I5(\dvi_tx/encg/q_m [4]),
    .O(\dvi_tx/encg/q_m [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \dvi_tx/encb/Mmux_q_m<6>11_SW0  (
    .I0(\dvi_tx/encb/din_q [7]),
    .I1(\dvi_tx/encb/din_q [5]),
    .O(N58)
  );
  LUT6 #(
    .INIT ( 64'h7B5A2100B7A51200 ))
  \dvi_tx/encb/Mmux_q_m<7>11  (
    .I0(\dvi_tx/encb/din_q [6]),
    .I1(\dvi_tx/encb/n1d [3]),
    .I2(N58),
    .I3(\dvi_tx/encb/Mmux_q_m<3>12 ),
    .I4(\dvi_tx/encb/Mmux_q_m<3>11 ),
    .I5(\dvi_tx/encb/q_m [4]),
    .O(\dvi_tx/encb/q_m [7])
  );
  LUT6 #(
    .INIT ( 64'h41D7BE28D7BE2841 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1011  (
    .I0(\dvi_tx/encr/cnt [3]),
    .I1(\dvi_tx/encr/Msub_n0233_lut [3]),
    .I2(\dvi_tx/encr/Msub_n0236_xor<3>11_1009 ),
    .I3(N60),
    .I4(\dvi_tx/encr/Msub_n0236_cy [3]),
    .I5(\dvi_tx/encr/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>2 ),
    .O(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1013 )
  );
  LUT6 #(
    .INIT ( 64'h906050A0A0509060 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT82  (
    .I0(\dvi_tx/encr/n0236 [3]),
    .I1(\dvi_tx/encr/n0236 [2]),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/cnt [3]),
    .I4(\dvi_tx/encr/cnt [2]),
    .I5(N72),
    .O(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT8 )
  );
  LUT6 #(
    .INIT ( 64'h906050A0A0509060 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT82  (
    .I0(\dvi_tx/encg/n0236 [3]),
    .I1(\dvi_tx/encg/n0236 [2]),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/cnt [3]),
    .I4(\dvi_tx/encg/cnt [2]),
    .I5(N74),
    .O(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT8 )
  );
  LUT6 #(
    .INIT ( 64'h906050A0A0509060 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT82  (
    .I0(\dvi_tx/encb/n0236 [3]),
    .I1(\dvi_tx/encb/n0236 [2]),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/cnt [3]),
    .I4(\dvi_tx/encb/cnt [2]),
    .I5(N76),
    .O(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT8 )
  );
  LUT6 #(
    .INIT ( 64'h050A090606090A05 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT84  (
    .I0(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ),
    .I1(\dvi_tx/encr/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2> ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/cnt [3]),
    .I4(N78),
    .I5(\dvi_tx/encr/cnt [2]),
    .O(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT83 )
  );
  LUT6 #(
    .INIT ( 64'h050A090606090A05 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT84  (
    .I0(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ),
    .I1(\dvi_tx/encg/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2> ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/cnt [3]),
    .I4(N80),
    .I5(\dvi_tx/encg/cnt [2]),
    .O(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT83 )
  );
  LUT6 #(
    .INIT ( 64'h050A090606090A05 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT84  (
    .I0(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ),
    .I1(\dvi_tx/encb/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2> ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/cnt [3]),
    .I4(N82),
    .I5(\dvi_tx/encb/cnt [2]),
    .O(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT83 )
  );
  LUT6 #(
    .INIT ( 64'h3322CC88BE3CEBC3 ))
  \dvi_tx/encg/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>31  (
    .I0(\dvi_tx/encg/cnt [1]),
    .I1(\dvi_tx/encg/cnt [2]),
    .I2(\dvi_tx/encg/n1q_m [1]),
    .I3(\dvi_tx/encg/q_m_reg [8]),
    .I4(\dvi_tx/encg/Msub_n0233_lut [2]),
    .I5(\dvi_tx/encg/Msub_n0233_lut [1]),
    .O(\dvi_tx/encg/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>2 )
  );
  LUT6 #(
    .INIT ( 64'h3322CC88BE3CEBC3 ))
  \dvi_tx/encb/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>31  (
    .I0(\dvi_tx/encb/cnt [1]),
    .I1(\dvi_tx/encb/cnt [2]),
    .I2(\dvi_tx/encb/n1q_m [1]),
    .I3(\dvi_tx/encb/q_m_reg [8]),
    .I4(\dvi_tx/encb/Msub_n0233_lut [2]),
    .I5(\dvi_tx/encb/Msub_n0233_lut [1]),
    .O(\dvi_tx/encb/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>2 )
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o1  (
    .I0(\dvi_rx1/dec_b/des_0/incdec_data_d_340 ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o )
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o1  (
    .I0(\dvi_rx1/dec_g/des_0/incdec_data_d_388 ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o )
  );
  LUT6 #(
    .INIT ( 64'h2AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o1  (
    .I0(\dvi_rx1/dec_r/des_0/incdec_data_d_433 ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o )
  );
  LUT6 #(
    .INIT ( 64'h055F55FF0157157F ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT10421  (
    .I0(\dvi_tx/encr/cnt [3]),
    .I1(\dvi_tx/encr/cnt [1]),
    .I2(\dvi_tx/encr/cnt [2]),
    .I3(\dvi_tx/encr/n0236 [3]),
    .I4(\dvi_tx/encr/n0236 [2]),
    .I5(\dvi_tx/encr/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ),
    .O(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 )
  );
  LUT6 #(
    .INIT ( 64'h055F015755FF157F ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT10421  (
    .I0(\dvi_tx/encg/cnt [3]),
    .I1(\dvi_tx/encg/cnt [1]),
    .I2(\dvi_tx/encg/cnt [2]),
    .I3(\dvi_tx/encg/n0236 [3]),
    .I4(\dvi_tx/encg/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ),
    .I5(\dvi_tx/encg/n0236 [2]),
    .O(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 )
  );
  LUT6 #(
    .INIT ( 64'h055F015755FF157F ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT10421  (
    .I0(\dvi_tx/encb/cnt [3]),
    .I1(\dvi_tx/encb/cnt [1]),
    .I2(\dvi_tx/encb/cnt [2]),
    .I3(\dvi_tx/encb/n0236 [3]),
    .I4(\dvi_tx/encb/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<1> ),
    .I5(\dvi_tx/encb/n0236 [2]),
    .O(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 )
  );
  LUT4 #(
    .INIT ( 16'h6966 ))
  \dvi_tx/encg/Msub_n0236_xor<2>11  (
    .I0(\dvi_tx/encg/n0q_m [2]),
    .I1(\dvi_tx/encg/n1q_m [2]),
    .I2(\dvi_tx/encg/n1q_m [1]),
    .I3(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/n0236 [2])
  );
  LUT4 #(
    .INIT ( 16'h6966 ))
  \dvi_tx/encb/Msub_n0236_xor<2>11  (
    .I0(\dvi_tx/encb/n0q_m [2]),
    .I1(\dvi_tx/encb/n1q_m [2]),
    .I2(\dvi_tx/encb/n1q_m [1]),
    .I3(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/n0236 [2])
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT102  (
    .I0(\dvi_tx/encg/Msub_n0233_cy [3]),
    .I1(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101 ),
    .I2(N84),
    .I3(N85),
    .I4(N87),
    .I5(N86),
    .O(\dvi_tx/encg/GND_37_o_cnt[4]_mux_55_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFEDC7654BA983210 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT102  (
    .I0(\dvi_tx/encb/Msub_n0233_cy [3]),
    .I1(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101 ),
    .I2(N89),
    .I3(N90),
    .I4(N92),
    .I5(N91),
    .O(\dvi_tx/encb/GND_37_o_cnt[4]_mux_55_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hB4B4B4E11E1E1E4B ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT631  (
    .I0(\dvi_tx/encr/q_m_reg [8]),
    .I1(\dvi_tx/encr/Msub_n0233_lut [2]),
    .I2(\dvi_tx/encr/cnt [2]),
    .I3(\dvi_tx/encr/Msub_n0233_lut [1]),
    .I4(\dvi_tx/encr/n0q_m [1]),
    .I5(\dvi_tx/encr/n0236 [2]),
    .O(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT63 )
  );
  LUT6 #(
    .INIT ( 64'h6A6AC0C03FC03FC0 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>31  (
    .I0(\dvi_tx/encr/q_m [2]),
    .I1(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N26),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_29 )
  );
  LUT6 #(
    .INIT ( 64'h6A6AC0C03FC03FC0 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>31  (
    .I0(\dvi_tx/encg/q_m [2]),
    .I1(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N34),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_29 )
  );
  LUT6 #(
    .INIT ( 64'h6A6AC0C03FC03FC0 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>31  (
    .I0(\dvi_tx/encb/q_m [2]),
    .I1(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 ),
    .I2(N42),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_29 )
  );
  LUT6 #(
    .INIT ( 64'h8800EECCCF8EFCE8 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT8111  (
    .I0(\dvi_tx/encg/cnt [1]),
    .I1(\dvi_tx/encg/cnt [2]),
    .I2(\dvi_tx/encg/n0q_m [1]),
    .I3(\dvi_tx/encg/q_m_reg [8]),
    .I4(\dvi_tx/encg/Msub_n0233_lut [2]),
    .I5(\dvi_tx/encg/Msub_n0233_lut [1]),
    .O(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT811 )
  );
  LUT6 #(
    .INIT ( 64'h8800EECCCF8EFCE8 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT8111  (
    .I0(\dvi_tx/encb/cnt [1]),
    .I1(\dvi_tx/encb/cnt [2]),
    .I2(\dvi_tx/encb/n0q_m [1]),
    .I3(\dvi_tx/encb/q_m_reg [8]),
    .I4(\dvi_tx/encb/Msub_n0233_lut [2]),
    .I5(\dvi_tx/encb/Msub_n0233_lut [1]),
    .O(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT811 )
  );
  LUT6 #(
    .INIT ( 64'h88AA088AEEFFAEEF ))
  \dvi_tx/encr/Msub_n0236_cy<3>11  (
    .I0(\dvi_tx/encr/n1q_m [3]),
    .I1(\dvi_tx/encr/n1q_m [2]),
    .I2(\dvi_tx/encr/n0q_m [1]),
    .I3(\dvi_tx/encr/n0q_m [2]),
    .I4(\dvi_tx/encr/n1q_m [1]),
    .I5(\dvi_tx/encr/n0q_m [3]),
    .O(\dvi_tx/encr/Msub_n0236_cy [3])
  );
  LUT6 #(
    .INIT ( 64'hDD4D4D44DD4DDD4D ))
  \dvi_tx/encg/Msub_n0236_cy<3>11  (
    .I0(\dvi_tx/encg/n0q_m [3]),
    .I1(\dvi_tx/encg/n1q_m [3]),
    .I2(\dvi_tx/encg/n0q_m [2]),
    .I3(\dvi_tx/encg/n1q_m [2]),
    .I4(\dvi_tx/encg/n1q_m [1]),
    .I5(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/Msub_n0236_cy [3])
  );
  LUT6 #(
    .INIT ( 64'hDD4D4D44DD4DDD4D ))
  \dvi_tx/encb/Msub_n0236_cy<3>11  (
    .I0(\dvi_tx/encb/n0q_m [3]),
    .I1(\dvi_tx/encb/n1q_m [3]),
    .I2(\dvi_tx/encb/n0q_m [2]),
    .I3(\dvi_tx/encb/n1q_m [2]),
    .I4(\dvi_tx/encb/n1q_m [1]),
    .I5(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/Msub_n0236_cy [3])
  );
  LUT4 #(
    .INIT ( 16'hBB2B ))
  \dvi_tx/encr/Msub_n0236_xor<3>111  (
    .I0(\dvi_tx/encr/n1q_m [2]),
    .I1(\dvi_tx/encr/n0q_m [2]),
    .I2(\dvi_tx/encr/n0q_m [1]),
    .I3(\dvi_tx/encr/n1q_m [1]),
    .O(\dvi_tx/encr/Msub_n0236_xor<3>11_1009 )
  );
  LUT4 #(
    .INIT ( 16'hBB2B ))
  \dvi_tx/encg/Msub_n0236_xor<3>111  (
    .I0(\dvi_tx/encg/n1q_m [2]),
    .I1(\dvi_tx/encg/n0q_m [2]),
    .I2(\dvi_tx/encg/n0q_m [1]),
    .I3(\dvi_tx/encg/n1q_m [1]),
    .O(\dvi_tx/encg/Msub_n0236_xor<3>11_1108 )
  );
  LUT4 #(
    .INIT ( 16'hBB2B ))
  \dvi_tx/encg/Msub_n0233_xor<3>111  (
    .I0(\dvi_tx/encg/n0q_m [2]),
    .I1(\dvi_tx/encg/n1q_m [2]),
    .I2(\dvi_tx/encg/n1q_m [1]),
    .I3(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/Msub_n0233_xor<3>11 )
  );
  LUT4 #(
    .INIT ( 16'hBB2B ))
  \dvi_tx/encb/Msub_n0236_xor<3>111  (
    .I0(\dvi_tx/encb/n1q_m [2]),
    .I1(\dvi_tx/encb/n0q_m [2]),
    .I2(\dvi_tx/encb/n0q_m [1]),
    .I3(\dvi_tx/encb/n1q_m [1]),
    .O(\dvi_tx/encb/Msub_n0236_xor<3>11_1209 )
  );
  LUT4 #(
    .INIT ( 16'hBB2B ))
  \dvi_tx/encb/Msub_n0233_xor<3>111  (
    .I0(\dvi_tx/encb/n0q_m [2]),
    .I1(\dvi_tx/encb/n1q_m [2]),
    .I2(\dvi_tx/encb/n1q_m [1]),
    .I3(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/Msub_n0233_xor<3>11 )
  );
  LUT6 #(
    .INIT ( 64'h9699969966969699 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT8131  (
    .I0(\dvi_tx/encr/n0q_m [3]),
    .I1(\dvi_tx/encr/n1q_m [3]),
    .I2(\dvi_tx/encr/n0q_m [2]),
    .I3(\dvi_tx/encr/n1q_m [2]),
    .I4(\dvi_tx/encr/n1q_m [1]),
    .I5(\dvi_tx/encr/n0q_m [1]),
    .O(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 )
  );
  LUT6 #(
    .INIT ( 64'h6696969966966696 ))
  \dvi_tx/encr/Msub_n0236_xor<3>11  (
    .I0(\dvi_tx/encr/n0q_m [3]),
    .I1(\dvi_tx/encr/n1q_m [3]),
    .I2(\dvi_tx/encr/n0q_m [2]),
    .I3(\dvi_tx/encr/n1q_m [2]),
    .I4(\dvi_tx/encr/n1q_m [1]),
    .I5(\dvi_tx/encr/n0q_m [1]),
    .O(\dvi_tx/encr/n0236 [3])
  );
  LUT5 #(
    .INIT ( 32'hFFFF6696 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1011_SW0  (
    .I0(\dvi_tx/encr/n0q_m [2]),
    .I1(\dvi_tx/encr/n1q_m [2]),
    .I2(\dvi_tx/encr/n0q_m [1]),
    .I3(\dvi_tx/encr/n1q_m [1]),
    .I4(\dvi_tx/encr/cnt [2]),
    .O(N60)
  );
  LUT5 #(
    .INIT ( 32'hBEEBBEBE ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1011_SW0  (
    .I0(\dvi_tx/encg/cnt [2]),
    .I1(\dvi_tx/encg/n1q_m [2]),
    .I2(\dvi_tx/encg/n0q_m [2]),
    .I3(\dvi_tx/encg/n1q_m [1]),
    .I4(\dvi_tx/encg/n0q_m [1]),
    .O(N62)
  );
  LUT5 #(
    .INIT ( 32'hBEEBBEBE ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1011_SW0  (
    .I0(\dvi_tx/encb/cnt [2]),
    .I1(\dvi_tx/encb/n1q_m [2]),
    .I2(\dvi_tx/encb/n0q_m [2]),
    .I3(\dvi_tx/encb/n1q_m [1]),
    .I4(\dvi_tx/encb/n0q_m [1]),
    .O(N64)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o1  (
    .I0(\dvi_rx1/dec_b/des_0/flag_342 ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o )
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o1  (
    .I0(\dvi_rx1/dec_g/des_0/flag_390 ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o )
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o1  (
    .I0(\dvi_rx1/dec_r/des_0/flag_435 ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o )
  );
  LUT6 #(
    .INIT ( 64'h6696969966966696 ))
  \dvi_tx/encg/Msub_n0236_xor<3>11  (
    .I0(\dvi_tx/encg/n0q_m [3]),
    .I1(\dvi_tx/encg/n1q_m [3]),
    .I2(\dvi_tx/encg/n0q_m [2]),
    .I3(\dvi_tx/encg/n1q_m [2]),
    .I4(\dvi_tx/encg/n1q_m [1]),
    .I5(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/n0236 [3])
  );
  LUT6 #(
    .INIT ( 64'h6696969966966696 ))
  \dvi_tx/encb/Msub_n0236_xor<3>11  (
    .I0(\dvi_tx/encb/n0q_m [3]),
    .I1(\dvi_tx/encb/n1q_m [3]),
    .I2(\dvi_tx/encb/n0q_m [2]),
    .I3(\dvi_tx/encb/n1q_m [2]),
    .I4(\dvi_tx/encb/n1q_m [1]),
    .I5(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/n0236 [3])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \dvi_rx1/dec_g/des_0/_n02651  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 ),
    .I3(\dvi_rx1/dec_g/des_0/busy_data_d_389 ),
    .I4(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 ),
    .I5(rx_reset),
    .O(\dvi_rx1/dec_g/des_0/_n0265 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000008 ))
  \dvi_rx1/dec_r/des_0/_n02651  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 ),
    .I3(\dvi_rx1/dec_r/des_0/busy_data_d_434 ),
    .I4(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 ),
    .I5(rx_reset),
    .O(\dvi_rx1/dec_r/des_0/_n0265 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>121  (
    .I0(\dvi_tx/encr/din_q [0]),
    .I1(\dvi_tx/encr/q_m [4]),
    .I2(\dvi_tx/encr/q_m [1]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encr/q_m [3]),
    .I5(\dvi_tx/encr/q_m [7]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 )
  );
  LUT6 #(
    .INIT ( 64'h96FF0096FF969600 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd91  (
    .I0(\dvi_tx/encr/din_q [0]),
    .I1(\dvi_tx/encr/q_m [4]),
    .I2(\dvi_tx/encr/q_m [1]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encr/q_m [3]),
    .I5(\dvi_tx/encr/q_m [7]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>121  (
    .I0(\dvi_tx/encg/din_q [0]),
    .I1(\dvi_tx/encg/q_m [4]),
    .I2(\dvi_tx/encg/q_m [1]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encg/q_m [3]),
    .I5(\dvi_tx/encg/q_m [7]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 )
  );
  LUT6 #(
    .INIT ( 64'h96FF0096FF969600 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd91  (
    .I0(\dvi_tx/encg/din_q [0]),
    .I1(\dvi_tx/encg/q_m [4]),
    .I2(\dvi_tx/encg/q_m [1]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encg/q_m [3]),
    .I5(\dvi_tx/encg/q_m [7]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9 )
  );
  LUT6 #(
    .INIT ( 64'h6996966996696996 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>121  (
    .I0(\dvi_tx/encb/din_q [0]),
    .I1(\dvi_tx/encb/q_m [4]),
    .I2(\dvi_tx/encb/q_m [1]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encb/q_m [3]),
    .I5(\dvi_tx/encb/q_m [7]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 )
  );
  LUT6 #(
    .INIT ( 64'h96FF0096FF969600 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd91  (
    .I0(\dvi_tx/encb/din_q [0]),
    .I1(\dvi_tx/encb/q_m [4]),
    .I2(\dvi_tx/encb/q_m [1]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encb/q_m [3]),
    .I5(\dvi_tx/encb/q_m [7]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9 )
  );
  LUT6 #(
    .INIT ( 64'h171717FFFF17FFFF ))
  \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>11  (
    .I0(\dvi_tx/encr/din_q [0]),
    .I1(\dvi_tx/encr/q_m [4]),
    .I2(\dvi_tx/encr/q_m [1]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encr/q_m [5]),
    .I5(\dvi_tx/encr/q_m [7]),
    .O(\dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>1 )
  );
  LUT6 #(
    .INIT ( 64'h171717FFFF17FFFF ))
  \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>11  (
    .I0(\dvi_tx/encg/din_q [0]),
    .I1(\dvi_tx/encg/q_m [4]),
    .I2(\dvi_tx/encg/q_m [1]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encg/q_m [5]),
    .I5(\dvi_tx/encg/q_m [7]),
    .O(\dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>1 )
  );
  LUT6 #(
    .INIT ( 64'h171717FFFF17FFFF ))
  \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>11  (
    .I0(\dvi_tx/encb/din_q [0]),
    .I1(\dvi_tx/encb/q_m [4]),
    .I2(\dvi_tx/encb/q_m [1]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I4(\dvi_tx/encb/q_m [5]),
    .I5(\dvi_tx/encb/q_m [7]),
    .O(\dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>1 )
  );
  LUT6 #(
    .INIT ( 64'h32ECB332C8B3ECC8 ))
  \dvi_tx/encr/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>31  (
    .I0(\dvi_tx/encr/cnt [1]),
    .I1(\dvi_tx/encr/cnt [2]),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/n1q_m [1]),
    .I4(\dvi_tx/encr/n0q_m [1]),
    .I5(\dvi_tx/encr/Msub_n0233_lut [2]),
    .O(\dvi_tx/encr/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>2 )
  );
  LUT4 #(
    .INIT ( 16'h6966 ))
  \dvi_tx/encr/Msub_n0236_xor<2>11  (
    .I0(\dvi_tx/encr/n0q_m [2]),
    .I1(\dvi_tx/encr/n1q_m [2]),
    .I2(\dvi_tx/encr/n1q_m [1]),
    .I3(\dvi_tx/encr/n0q_m [1]),
    .O(\dvi_tx/encr/n0236 [2])
  );
  LUT5 #(
    .INIT ( 32'hA5695A96 ))
  \dvi_tx/encr/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2>1  (
    .I0(\dvi_tx/encr/n1q_m [2]),
    .I1(\dvi_tx/encr/n1q_m [1]),
    .I2(\dvi_tx/encr/n0q_m [2]),
    .I3(\dvi_tx/encr/n0q_m [1]),
    .I4(\dvi_tx/encr/cnt [2]),
    .O(\dvi_tx/encr/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2> )
  );
  LUT6 #(
    .INIT ( 64'h0022001000000001 ))
  \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>161  (
    .I0(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encr/q_m [3]),
    .I2(\dvi_tx/encr/q_m [5]),
    .I3(N103),
    .I4(\dvi_tx/encr/q_m [7]),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>16 )
  );
  LUT6 #(
    .INIT ( 64'h0022001000000001 ))
  \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>161  (
    .I0(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encg/q_m [3]),
    .I2(\dvi_tx/encg/q_m [5]),
    .I3(N105),
    .I4(\dvi_tx/encg/q_m [7]),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>16 )
  );
  LUT6 #(
    .INIT ( 64'h0022001000000001 ))
  \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>161  (
    .I0(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut [0]),
    .I1(\dvi_tx/encb/q_m [3]),
    .I2(\dvi_tx/encb/q_m [5]),
    .I3(N107),
    .I4(\dvi_tx/encb/q_m [7]),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 ),
    .O(\dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>16 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd8_lut<0>1  (
    .I0(\dvi_tx/encr/din_q [4]),
    .I1(\dvi_tx/encr/din_q [3]),
    .I2(\dvi_tx/encr/din_q [2]),
    .I3(\dvi_tx/encr/din_q [1]),
    .I4(\dvi_tx/encr/q_m [1]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8_lut [0])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd8_lut<0>1  (
    .I0(\dvi_tx/encg/din_q [4]),
    .I1(\dvi_tx/encg/din_q [3]),
    .I2(\dvi_tx/encg/din_q [2]),
    .I3(\dvi_tx/encg/din_q [1]),
    .I4(\dvi_tx/encg/q_m [1]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8_lut [0])
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd8_lut<0>1  (
    .I0(\dvi_tx/encb/din_q [4]),
    .I1(\dvi_tx/encb/din_q [3]),
    .I2(\dvi_tx/encb/din_q [2]),
    .I3(\dvi_tx/encb/din_q [1]),
    .I4(\dvi_tx/encb/q_m [1]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFF699696690000 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd81  (
    .I0(\dvi_tx/encr/din_q [4]),
    .I1(\dvi_tx/encr/din_q [3]),
    .I2(\dvi_tx/encr/din_q [2]),
    .I3(\dvi_tx/encr/din_q [1]),
    .I4(\dvi_tx/encr/din_q [0]),
    .I5(\dvi_tx/encr/q_m [1]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd8 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF699696690000 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd81  (
    .I0(\dvi_tx/encg/din_q [4]),
    .I1(\dvi_tx/encg/din_q [3]),
    .I2(\dvi_tx/encg/din_q [2]),
    .I3(\dvi_tx/encg/din_q [1]),
    .I4(\dvi_tx/encg/din_q [0]),
    .I5(\dvi_tx/encg/q_m [1]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd8 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF699696690000 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd81  (
    .I0(\dvi_tx/encb/din_q [4]),
    .I1(\dvi_tx/encb/din_q [3]),
    .I2(\dvi_tx/encb/din_q [2]),
    .I3(\dvi_tx/encb/din_q [1]),
    .I4(\dvi_tx/encb/din_q [0]),
    .I5(\dvi_tx/encb/q_m [1]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd8 )
  );
  LUT6 #(
    .INIT ( 64'h966955AA55555555 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1012_SW0  (
    .I0(\dvi_tx/encr/cnt [4]),
    .I1(\dvi_tx/encr/cnt [3]),
    .I2(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ),
    .I3(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1011_1007 ),
    .I4(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT811 ),
    .I5(\dvi_tx/encr/decision3_1049 ),
    .O(N109)
  );
  LUT6 #(
    .INIT ( 64'h966955AAAAAAAAAA ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1012_SW1  (
    .I0(\dvi_tx/encr/cnt [4]),
    .I1(\dvi_tx/encr/cnt [3]),
    .I2(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ),
    .I3(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1011_1007 ),
    .I4(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT811 ),
    .I5(\dvi_tx/encr/decision3_1049 ),
    .O(N110)
  );
  LUT6 #(
    .INIT ( 64'hAAA88A8822200200 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT102  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encr/decision2_1050 ),
    .I2(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1013 ),
    .I3(N109),
    .I4(N110),
    .I5(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT10 ),
    .O(\dvi_tx/encr/GND_37_o_cnt[4]_mux_55_OUT<4> )
  );
  FD   \dvi_tx/encr/cnt_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/GND_37_o_cnt[4]_mux_55_OUT<4> ),
    .Q(\dvi_tx/encr/cnt [4])
  );
  FD   \dvi_tx/encr/cnt_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/GND_37_o_cnt[4]_mux_55_OUT<3> ),
    .Q(\dvi_tx/encr/cnt [3])
  );
  FD   \dvi_tx/encr/cnt_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/GND_37_o_cnt[4]_mux_55_OUT<2> ),
    .Q(\dvi_tx/encr/cnt [2])
  );
  FD   \dvi_tx/encr/cnt_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/GND_37_o_cnt[4]_mux_55_OUT<1> ),
    .Q(\dvi_tx/encr/cnt [1])
  );
  FD   \dvi_tx/encr/dout_9  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [9]),
    .Q(\dvi_tx/encr/dout [9])
  );
  FD   \dvi_tx/encr/dout_8  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [8]),
    .Q(\dvi_tx/encr/dout [8])
  );
  FD   \dvi_tx/encr/dout_7  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [7]),
    .Q(\dvi_tx/encr/dout [7])
  );
  FD   \dvi_tx/encr/dout_6  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [6]),
    .Q(\dvi_tx/encr/dout [6])
  );
  FD   \dvi_tx/encr/dout_5  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [5]),
    .Q(\dvi_tx/encr/dout [5])
  );
  FD   \dvi_tx/encr/dout_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [4]),
    .Q(\dvi_tx/encr/dout [4])
  );
  FD   \dvi_tx/encr/dout_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [3]),
    .Q(\dvi_tx/encr/dout [3])
  );
  FD   \dvi_tx/encr/dout_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [2]),
    .Q(\dvi_tx/encr/dout [2])
  );
  FD   \dvi_tx/encr/dout_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [1]),
    .Q(\dvi_tx/encr/dout [1])
  );
  FD   \dvi_tx/encr/dout_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [0]),
    .Q(\dvi_tx/encr/dout [0])
  );
  FD   \dvi_tx/encg/cnt_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/GND_37_o_cnt[4]_mux_55_OUT<4> ),
    .Q(\dvi_tx/encg/cnt [4])
  );
  FD   \dvi_tx/encg/cnt_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/GND_37_o_cnt[4]_mux_55_OUT<3> ),
    .Q(\dvi_tx/encg/cnt [3])
  );
  FD   \dvi_tx/encg/cnt_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/GND_37_o_cnt[4]_mux_55_OUT<2> ),
    .Q(\dvi_tx/encg/cnt [2])
  );
  FD   \dvi_tx/encg/cnt_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/GND_37_o_cnt[4]_mux_55_OUT<1> ),
    .Q(\dvi_tx/encg/cnt [1])
  );
  FD   \dvi_tx/encg/dout_9  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [9]),
    .Q(\dvi_tx/encg/dout [9])
  );
  FD   \dvi_tx/encg/dout_8  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [8]),
    .Q(\dvi_tx/encg/dout [8])
  );
  FD   \dvi_tx/encg/dout_7  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [7]),
    .Q(\dvi_tx/encg/dout [7])
  );
  FD   \dvi_tx/encg/dout_6  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [6]),
    .Q(\dvi_tx/encg/dout [6])
  );
  FD   \dvi_tx/encg/dout_5  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [5]),
    .Q(\dvi_tx/encg/dout [5])
  );
  FD   \dvi_tx/encg/dout_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [4]),
    .Q(\dvi_tx/encg/dout [4])
  );
  FD   \dvi_tx/encg/dout_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [3]),
    .Q(\dvi_tx/encg/dout [3])
  );
  FD   \dvi_tx/encg/dout_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [2]),
    .Q(\dvi_tx/encg/dout [2])
  );
  FD   \dvi_tx/encg/dout_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [1]),
    .Q(\dvi_tx/encg/dout [1])
  );
  FD   \dvi_tx/encg/dout_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [0]),
    .Q(\dvi_tx/encg/dout [0])
  );
  FD   \dvi_tx/encb/cnt_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/GND_37_o_cnt[4]_mux_55_OUT<4> ),
    .Q(\dvi_tx/encb/cnt [4])
  );
  FD   \dvi_tx/encb/cnt_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/GND_37_o_cnt[4]_mux_55_OUT<3> ),
    .Q(\dvi_tx/encb/cnt [3])
  );
  FD   \dvi_tx/encb/cnt_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/GND_37_o_cnt[4]_mux_55_OUT<2> ),
    .Q(\dvi_tx/encb/cnt [2])
  );
  FD   \dvi_tx/encb/cnt_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/GND_37_o_cnt[4]_mux_55_OUT<1> ),
    .Q(\dvi_tx/encb/cnt [1])
  );
  FD   \dvi_tx/encb/dout_9  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [9]),
    .Q(\dvi_tx/encb/dout [9])
  );
  FD   \dvi_tx/encb/dout_8  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [8]),
    .Q(\dvi_tx/encb/dout [8])
  );
  FD   \dvi_tx/encb/dout_7  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [7]),
    .Q(\dvi_tx/encb/dout [7])
  );
  FD   \dvi_tx/encb/dout_6  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [6]),
    .Q(\dvi_tx/encb/dout [6])
  );
  FD   \dvi_tx/encb/dout_5  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [5]),
    .Q(\dvi_tx/encb/dout [5])
  );
  FD   \dvi_tx/encb/dout_4  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [4]),
    .Q(\dvi_tx/encb/dout [4])
  );
  FD   \dvi_tx/encb/dout_3  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [3]),
    .Q(\dvi_tx/encb/dout [3])
  );
  FD   \dvi_tx/encb/dout_2  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [2]),
    .Q(\dvi_tx/encb/dout [2])
  );
  FD   \dvi_tx/encb/dout_1  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [1]),
    .Q(\dvi_tx/encb/dout [1])
  );
  FD   \dvi_tx/encb/dout_0  (
    .C(tx_pclk),
    .D(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [0]),
    .Q(\dvi_tx/encb/dout [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \dvi_tx/pixel2x/fdp_rst  (
    .C(tx_pclkx2),
    .D(\b_mux<2> [1]),
    .Q(\dvi_tx/pixel2x/rstsync )
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_wa3  (
    .C(tx_pclk),
    .D(\dvi_tx/pixel2x/Mram_wa_d3 ),
    .Q(\dvi_tx/pixel2x/wa [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_wa2  (
    .C(tx_pclk),
    .D(\dvi_tx/pixel2x/Mram_wa_d2 ),
    .Q(\dvi_tx/pixel2x/wa [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_wa1  (
    .C(tx_pclk),
    .D(\dvi_tx/pixel2x/Mram_wa_d1 ),
    .Q(\dvi_tx/pixel2x/wa [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \dvi_tx/pixel2x/fdc_wa0  (
    .C(tx_pclk),
    .D(\dvi_tx/pixel2x/Mram_wa_d ),
    .Q(\dvi_tx/pixel2x/wa [0])
  );
  MUXF7   \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW0  (
    .I0(N112),
    .I1(N113),
    .S(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 ),
    .O(N84)
  );
  LUT6 #(
    .INIT ( 64'hA06060A050505050 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW0_F  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1151 ),
    .O(N112)
  );
  LUT6 #(
    .INIT ( 64'h9050509050505050 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW0_G  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1151 ),
    .O(N113)
  );
  MUXF7   \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW1  (
    .I0(N114),
    .I1(N115),
    .S(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 ),
    .O(N85)
  );
  LUT6 #(
    .INIT ( 64'h9050509050505050 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW1_F  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1151 ),
    .O(N114)
  );
  LUT6 #(
    .INIT ( 64'hA06060A050505050 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW1_G  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1151 ),
    .O(N115)
  );
  MUXF7   \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW2  (
    .I0(N116),
    .I1(N117),
    .S(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 ),
    .O(N86)
  );
  LUT6 #(
    .INIT ( 64'hA06060A0A0A0A0A0 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW2_F  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1151 ),
    .O(N116)
  );
  LUT6 #(
    .INIT ( 64'h90505090A0A0A0A0 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW2_G  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1151 ),
    .O(N117)
  );
  MUXF7   \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW3  (
    .I0(N118),
    .I1(N119),
    .S(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 ),
    .O(N87)
  );
  LUT6 #(
    .INIT ( 64'h90505090A0A0A0A0 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW3_F  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1151 ),
    .O(N118)
  );
  LUT6 #(
    .INIT ( 64'hA06060A0A0A0A0A0 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW3_G  (
    .I0(\dvi_tx/encg/cnt [4]),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encg/decision2_1151 ),
    .O(N119)
  );
  MUXF7   \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW0  (
    .I0(N120),
    .I1(N121),
    .S(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 ),
    .O(N89)
  );
  LUT6 #(
    .INIT ( 64'hA06060A050505050 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW0_F  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1253 ),
    .O(N120)
  );
  LUT6 #(
    .INIT ( 64'h9050509050505050 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW0_G  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1253 ),
    .O(N121)
  );
  MUXF7   \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW1  (
    .I0(N122),
    .I1(N123),
    .S(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 ),
    .O(N90)
  );
  LUT6 #(
    .INIT ( 64'h9050509050505050 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW1_F  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1253 ),
    .O(N122)
  );
  LUT6 #(
    .INIT ( 64'hA06060A050505050 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW1_G  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1253 ),
    .O(N123)
  );
  MUXF7   \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW2  (
    .I0(N124),
    .I1(N125),
    .S(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 ),
    .O(N91)
  );
  LUT6 #(
    .INIT ( 64'hA06060A0A0A0A0A0 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW2_F  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1253 ),
    .O(N124)
  );
  LUT6 #(
    .INIT ( 64'h90505090A0A0A0A0 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW2_G  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1253 ),
    .O(N125)
  );
  MUXF7   \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW3  (
    .I0(N126),
    .I1(N127),
    .S(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1041 ),
    .O(N92)
  );
  LUT6 #(
    .INIT ( 64'h90505090A0A0A0A0 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW3_F  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1253 ),
    .O(N126)
  );
  LUT6 #(
    .INIT ( 64'hA06060A0A0A0A0A0 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101_SW3_G  (
    .I0(\dvi_tx/encb/cnt [4]),
    .I1(\dvi_tx/encb/q_m_reg [8]),
    .I2(\dvi_tx/encr/de_reg_1287 ),
    .I3(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I4(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1042 ),
    .I5(\dvi_tx/encb/decision2_1253 ),
    .O(N127)
  );
  LUT6 #(
    .INIT ( 64'hB4B4B4E11E1E1E4B ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT631  (
    .I0(\dvi_tx/encg/q_m_reg [8]),
    .I1(\dvi_tx/encg/Msub_n0233_lut [2]),
    .I2(\dvi_tx/encg/cnt [2]),
    .I3(\dvi_tx/encg/Msub_n0233_lut [1]),
    .I4(\dvi_tx/encg/n0q_m [1]),
    .I5(\dvi_tx/encg/n0236 [2]),
    .O(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT63 )
  );
  LUT6 #(
    .INIT ( 64'hB4B4B4E11E1E1E4B ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT631  (
    .I0(\dvi_tx/encb/q_m_reg [8]),
    .I1(\dvi_tx/encb/Msub_n0233_lut [2]),
    .I2(\dvi_tx/encb/cnt [2]),
    .I3(\dvi_tx/encb/Msub_n0233_lut [1]),
    .I4(\dvi_tx/encb/n0q_m [1]),
    .I5(\dvi_tx/encb/n0236 [2]),
    .O(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT63 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT10111_SW2  (
    .I0(\dvi_tx/encr/n1q_m [1]),
    .I1(\dvi_tx/encr/n0q_m [1]),
    .O(N128)
  );
  LUT6 #(
    .INIT ( 64'h244D24244D4D244D ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT10111  (
    .I0(\dvi_tx/encr/n0q_m [3]),
    .I1(\dvi_tx/encr/n1q_m [3]),
    .I2(\dvi_tx/encr/cnt [3]),
    .I3(\dvi_tx/encr/n0q_m [2]),
    .I4(\dvi_tx/encr/n1q_m [2]),
    .I5(N128),
    .O(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT1011_1007 )
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT21  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encr/decision2_1050 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/q_m_reg [1]),
    .I4(\dvi_tx/encr/decision3_1049 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [1])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT41  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encr/decision2_1050 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/q_m_reg [3]),
    .I4(\dvi_tx/encr/decision3_1049 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [3])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT61  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encr/decision2_1050 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/q_m_reg [5]),
    .I4(\dvi_tx/encr/decision3_1049 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [5])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT81  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encr/decision2_1050 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/q_m_reg [7]),
    .I4(\dvi_tx/encr/decision3_1049 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [7])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT12  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encr/decision2_1050 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/q_m_reg [0]),
    .I4(\dvi_tx/encr/decision3_1049 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [0])
  );
  LUT5 #(
    .INIT ( 32'h95A6FFFF ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT51  (
    .I0(\dvi_tx/encr/q_m_reg [4]),
    .I1(\dvi_tx/encr/decision2_1050 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/decision3_1049 ),
    .I4(\dvi_tx/encr/de_reg_1287 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [4])
  );
  LUT5 #(
    .INIT ( 32'h95A6FFFF ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT71  (
    .I0(\dvi_tx/encr/q_m_reg [6]),
    .I1(\dvi_tx/encr/decision2_1050 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/decision3_1049 ),
    .I4(\dvi_tx/encr/de_reg_1287 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [6])
  );
  LUT5 #(
    .INIT ( 32'h95A6FFFF ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT31  (
    .I0(\dvi_tx/encr/q_m_reg [2]),
    .I1(\dvi_tx/encr/decision2_1050 ),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/decision3_1049 ),
    .I4(\dvi_tx/encr/de_reg_1287 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [2])
  );
  LUT4 #(
    .INIT ( 16'h72FF ))
  \dvi_tx/encr/Mmux_c1_reg_decision3_mux_54_OUT101  (
    .I0(\dvi_tx/encr/decision2_1050 ),
    .I1(\dvi_tx/encr/q_m_reg [8]),
    .I2(\dvi_tx/encr/decision3_1049 ),
    .I3(\dvi_tx/encr/de_reg_1287 ),
    .O(\dvi_tx/encr/c1_reg_decision3_mux_54_OUT [9])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT21  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encg/decision2_1151 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/q_m_reg [1]),
    .I4(\dvi_tx/encg/decision3_1150 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [1])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT41  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encg/decision2_1151 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/q_m_reg [3]),
    .I4(\dvi_tx/encg/decision3_1150 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [3])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT61  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encg/decision2_1151 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/q_m_reg [5]),
    .I4(\dvi_tx/encg/decision3_1150 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [5])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT81  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encg/decision2_1151 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/q_m_reg [7]),
    .I4(\dvi_tx/encg/decision3_1150 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [7])
  );
  LUT5 #(
    .INIT ( 32'h802AA208 ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT12  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encg/decision2_1151 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/q_m_reg [0]),
    .I4(\dvi_tx/encg/decision3_1150 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [0])
  );
  LUT5 #(
    .INIT ( 32'h95A6FFFF ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT51  (
    .I0(\dvi_tx/encg/q_m_reg [4]),
    .I1(\dvi_tx/encg/decision2_1151 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/decision3_1150 ),
    .I4(\dvi_tx/encr/de_reg_1287 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [4])
  );
  LUT5 #(
    .INIT ( 32'h95A6FFFF ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT71  (
    .I0(\dvi_tx/encg/q_m_reg [6]),
    .I1(\dvi_tx/encg/decision2_1151 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/decision3_1150 ),
    .I4(\dvi_tx/encr/de_reg_1287 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [6])
  );
  LUT5 #(
    .INIT ( 32'h95A6FFFF ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT31  (
    .I0(\dvi_tx/encg/q_m_reg [2]),
    .I1(\dvi_tx/encg/decision2_1151 ),
    .I2(\dvi_tx/encg/q_m_reg [8]),
    .I3(\dvi_tx/encg/decision3_1150 ),
    .I4(\dvi_tx/encr/de_reg_1287 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [2])
  );
  LUT4 #(
    .INIT ( 16'h72FF ))
  \dvi_tx/encg/Mmux_c1_reg_decision3_mux_54_OUT101  (
    .I0(\dvi_tx/encg/decision2_1151 ),
    .I1(\dvi_tx/encg/q_m_reg [8]),
    .I2(\dvi_tx/encg/decision3_1150 ),
    .I3(\dvi_tx/encr/de_reg_1287 ),
    .O(\dvi_tx/encg/c1_reg_decision3_mux_54_OUT [9])
  );
  LUT6 #(
    .INIT ( 64'hD57FF75D802AA208 ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT21  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encb/decision2_1253 ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/q_m_reg [1]),
    .I4(\dvi_tx/encb/decision3_1252 ),
    .I5(\dvi_tx/encb/c0_reg_1223 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [1])
  );
  LUT6 #(
    .INIT ( 64'hD57FF75D802AA208 ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT41  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encb/decision2_1253 ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/q_m_reg [3]),
    .I4(\dvi_tx/encb/decision3_1252 ),
    .I5(\dvi_tx/encb/c0_reg_1223 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [3])
  );
  LUT6 #(
    .INIT ( 64'hD57FF75D802AA208 ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT61  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encb/decision2_1253 ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/q_m_reg [5]),
    .I4(\dvi_tx/encb/decision3_1252 ),
    .I5(\dvi_tx/encb/c0_reg_1223 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [5])
  );
  LUT6 #(
    .INIT ( 64'hD57FF75D802AA208 ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT81  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encb/decision2_1253 ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/q_m_reg [7]),
    .I4(\dvi_tx/encb/decision3_1252 ),
    .I5(\dvi_tx/encb/c0_reg_1223 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [7])
  );
  LUT6 #(
    .INIT ( 64'hD57FF75D802AA208 ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT12  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encb/decision2_1253 ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/q_m_reg [0]),
    .I4(\dvi_tx/encb/decision3_1252 ),
    .I5(\dvi_tx/encb/c0_reg_1223 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [0])
  );
  LUT6 #(
    .INIT ( 64'h82228828D777DD7D ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT51  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encb/q_m_reg [4]),
    .I2(\dvi_tx/encb/decision2_1253 ),
    .I3(\dvi_tx/encb/q_m_reg [8]),
    .I4(\dvi_tx/encb/decision3_1252 ),
    .I5(\dvi_tx/encb/c0_reg_1223 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [4])
  );
  LUT6 #(
    .INIT ( 64'h82228828D777DD7D ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT71  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encb/q_m_reg [6]),
    .I2(\dvi_tx/encb/decision2_1253 ),
    .I3(\dvi_tx/encb/q_m_reg [8]),
    .I4(\dvi_tx/encb/decision3_1252 ),
    .I5(\dvi_tx/encb/c0_reg_1223 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [6])
  );
  LUT6 #(
    .INIT ( 64'h82228828D777DD7D ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT31  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encb/q_m_reg [2]),
    .I2(\dvi_tx/encb/decision2_1253 ),
    .I3(\dvi_tx/encb/q_m_reg [8]),
    .I4(\dvi_tx/encb/decision3_1252 ),
    .I5(\dvi_tx/encb/c0_reg_1223 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [2])
  );
  LUT6 #(
    .INIT ( 64'h7F5D2A082A087F5D ))
  \dvi_tx/encb/Mmux_c1_reg_decision3_mux_54_OUT101  (
    .I0(\dvi_tx/encr/de_reg_1287 ),
    .I1(\dvi_tx/encb/decision2_1253 ),
    .I2(\dvi_tx/encb/q_m_reg [8]),
    .I3(\dvi_tx/encb/decision3_1252 ),
    .I4(\dvi_tx/encb/c1_reg_1271 ),
    .I5(\dvi_tx/encb/c0_reg_1223 ),
    .O(\dvi_tx/encb/c1_reg_decision3_mux_54_OUT [9])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_b/des_0/_n0330_inv1_SW0  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 ),
    .O(N130)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_g/des_0/_n0330_inv1_SW0  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 ),
    .O(N132)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_r/des_0/_n0330_inv1_SW0  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 ),
    .O(N134)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFCFFAAAAA8AA ))
  \dvi_rx1/dec_g/des_0/inc_data_int_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/_n0265 ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o ),
    .I4(N138),
    .I5(\dvi_rx1/dec_g/des_0/inc_data_int_381 ),
    .O(\dvi_rx1/dec_g/des_0/inc_data_int_rstpot_1536 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFCFFAAAAA8AA ))
  \dvi_rx1/dec_r/des_0/inc_data_int_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/_n0265 ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o ),
    .I4(N140),
    .I5(\dvi_rx1/dec_r/des_0/inc_data_int_426 ),
    .O(\dvi_rx1/dec_r/des_0/inc_data_int_rstpot_1538 )
  );
  LUT4 #(
    .INIT ( 16'hFFF2 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<3>11_SW0  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I1(\dvi_rx1/dec_b/des_0/flag_342 ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .I3(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(N66)
  );
  LUT4 #(
    .INIT ( 16'hFFF2 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<3>11_SW0  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I1(\dvi_rx1/dec_g/des_0/flag_390 ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I3(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(N68)
  );
  LUT4 #(
    .INIT ( 16'hFFF2 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<3>11_SW0  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I1(\dvi_rx1/dec_r/des_0/flag_435 ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I3(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .O(N70)
  );
  LUT6 #(
    .INIT ( 64'h9699969966969699 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT8131  (
    .I0(\dvi_tx/encg/n0q_m [3]),
    .I1(\dvi_tx/encg/n1q_m [3]),
    .I2(\dvi_tx/encg/n0q_m [2]),
    .I3(\dvi_tx/encg/n1q_m [2]),
    .I4(\dvi_tx/encg/n1q_m [1]),
    .I5(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 )
  );
  LUT6 #(
    .INIT ( 64'h9699969966969699 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT8131  (
    .I0(\dvi_tx/encb/n0q_m [3]),
    .I1(\dvi_tx/encb/n1q_m [3]),
    .I2(\dvi_tx/encb/n0q_m [2]),
    .I3(\dvi_tx/encb/n1q_m [2]),
    .I4(\dvi_tx/encb/n1q_m [1]),
    .I5(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 )
  );
  LUT6 #(
    .INIT ( 64'h88AA088AEEFFAEEF ))
  \dvi_tx/encr/Msub_n0233_cy<3>11  (
    .I0(\dvi_tx/encr/n0q_m [3]),
    .I1(\dvi_tx/encr/n0q_m [2]),
    .I2(\dvi_tx/encr/n1q_m [1]),
    .I3(\dvi_tx/encr/n1q_m [2]),
    .I4(\dvi_tx/encr/n0q_m [1]),
    .I5(\dvi_tx/encr/n1q_m [3]),
    .O(\dvi_tx/encr/Msub_n0233_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h695A ))
  \dvi_tx/encr/Msub_n0233_xor<2>11  (
    .I0(\dvi_tx/encr/n1q_m [2]),
    .I1(\dvi_tx/encr/n0q_m [1]),
    .I2(\dvi_tx/encr/n0q_m [2]),
    .I3(\dvi_tx/encr/n1q_m [1]),
    .O(\dvi_tx/encr/n0233 [2])
  );
  LUT4 #(
    .INIT ( 16'h695A ))
  \dvi_tx/encg/Msub_n0233_xor<2>11  (
    .I0(\dvi_tx/encg/n1q_m [2]),
    .I1(\dvi_tx/encg/n0q_m [1]),
    .I2(\dvi_tx/encg/n0q_m [2]),
    .I3(\dvi_tx/encg/n1q_m [1]),
    .O(\dvi_tx/encg/n0233 [2])
  );
  LUT4 #(
    .INIT ( 16'h695A ))
  \dvi_tx/encb/Msub_n0233_xor<2>11  (
    .I0(\dvi_tx/encb/n1q_m [2]),
    .I1(\dvi_tx/encb/n0q_m [1]),
    .I2(\dvi_tx/encb/n0q_m [2]),
    .I3(\dvi_tx/encb/n1q_m [1]),
    .O(\dvi_tx/encb/n0233 [2])
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT82_SW0  (
    .I0(\dvi_tx/encr/n1q_m [1]),
    .I1(\dvi_tx/encr/n0q_m [1]),
    .I2(\dvi_tx/encr/cnt [1]),
    .O(N72)
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT82_SW0  (
    .I0(\dvi_tx/encg/n1q_m [1]),
    .I1(\dvi_tx/encg/n0q_m [1]),
    .I2(\dvi_tx/encg/cnt [1]),
    .O(N74)
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT82_SW0  (
    .I0(\dvi_tx/encb/n1q_m [1]),
    .I1(\dvi_tx/encb/n0q_m [1]),
    .I2(\dvi_tx/encb/cnt [1]),
    .O(N76)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT83_SW0  (
    .I0(\dvi_tx/encr/cnt [1]),
    .I1(\dvi_tx/encr/n0q_m [1]),
    .I2(\dvi_tx/encr/n1q_m [1]),
    .O(N78)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT83_SW0  (
    .I0(\dvi_tx/encg/cnt [1]),
    .I1(\dvi_tx/encg/n0q_m [1]),
    .I2(\dvi_tx/encg/n1q_m [1]),
    .O(N80)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT83_SW0  (
    .I0(\dvi_tx/encb/cnt [1]),
    .I1(\dvi_tx/encb/n0q_m [1]),
    .I2(\dvi_tx/encb/n1q_m [1]),
    .O(N82)
  );
  LUT5 #(
    .INIT ( 32'h000096A5 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT81_SW0  (
    .I0(\dvi_tx/encr/n0q_m [2]),
    .I1(\dvi_tx/encr/n1q_m [1]),
    .I2(\dvi_tx/encr/n1q_m [2]),
    .I3(\dvi_tx/encr/n0q_m [1]),
    .I4(\dvi_tx/encr/cnt [2]),
    .O(N24)
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT611  (
    .I0(\dvi_tx/encr/cnt [1]),
    .I1(\dvi_tx/encr/n0q_m [1]),
    .I2(\dvi_tx/encr/n1q_m [1]),
    .I3(\dvi_tx/encr/q_m_reg [8]),
    .O(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT61_1010 )
  );
  LUT4 #(
    .INIT ( 16'h8EE8 ))
  \dvi_tx/encr/Madd_cnt[4]_GND_37_o_add_47_OUT11  (
    .I0(\dvi_tx/encr/q_m_reg [8]),
    .I1(\dvi_tx/encr/cnt [1]),
    .I2(\dvi_tx/encr/n0q_m [1]),
    .I3(\dvi_tx/encr/n1q_m [1]),
    .O(\dvi_tx/encr/Madd_cnt[4]_GND_37_o_add_47_OUT1 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT611  (
    .I0(\dvi_tx/encg/cnt [1]),
    .I1(\dvi_tx/encg/n0q_m [1]),
    .I2(\dvi_tx/encg/n1q_m [1]),
    .I3(\dvi_tx/encg/q_m_reg [8]),
    .O(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT61_1110 )
  );
  LUT4 #(
    .INIT ( 16'h8EE8 ))
  \dvi_tx/encg/Madd_cnt[4]_GND_37_o_add_47_OUT11  (
    .I0(\dvi_tx/encg/q_m_reg [8]),
    .I1(\dvi_tx/encg/cnt [1]),
    .I2(\dvi_tx/encg/n0q_m [1]),
    .I3(\dvi_tx/encg/n1q_m [1]),
    .O(\dvi_tx/encg/Madd_cnt[4]_GND_37_o_add_47_OUT1 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT611  (
    .I0(\dvi_tx/encb/cnt [1]),
    .I1(\dvi_tx/encb/n0q_m [1]),
    .I2(\dvi_tx/encb/n1q_m [1]),
    .I3(\dvi_tx/encb/q_m_reg [8]),
    .O(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT61_1211 )
  );
  LUT4 #(
    .INIT ( 16'h8EE8 ))
  \dvi_tx/encb/Madd_cnt[4]_GND_37_o_add_47_OUT11  (
    .I0(\dvi_tx/encb/q_m_reg [8]),
    .I1(\dvi_tx/encb/cnt [1]),
    .I2(\dvi_tx/encb/n0q_m [1]),
    .I3(\dvi_tx/encb/n1q_m [1]),
    .O(\dvi_tx/encb/Madd_cnt[4]_GND_37_o_add_47_OUT1 )
  );
  LUT5 #(
    .INIT ( 32'h000096A5 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT81_SW0  (
    .I0(\dvi_tx/encg/n1q_m [2]),
    .I1(\dvi_tx/encg/n1q_m [1]),
    .I2(\dvi_tx/encg/n0q_m [2]),
    .I3(\dvi_tx/encg/n0q_m [1]),
    .I4(\dvi_tx/encg/cnt [2]),
    .O(N32)
  );
  LUT5 #(
    .INIT ( 32'h000096A5 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT81_SW0  (
    .I0(\dvi_tx/encb/n1q_m [2]),
    .I1(\dvi_tx/encb/n1q_m [1]),
    .I2(\dvi_tx/encb/n0q_m [2]),
    .I3(\dvi_tx/encb/n0q_m [1]),
    .I4(\dvi_tx/encb/cnt [2]),
    .O(N40)
  );
  LUT5 #(
    .INIT ( 32'hFFFF6AA9 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT51  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I3(\dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I4(N66),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF6AA9 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT51  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I3(\dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I4(N68),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hFFFF6AA9 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT51  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I3(\dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I4(N70),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h17E8E817E81717E8 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_xor<0>21  (
    .I0(tx_red[6]),
    .I1(tx_red[5]),
    .I2(tx_red[7]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4 ),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_14 )
  );
  LUT6 #(
    .INIT ( 64'h17FFFFE8FFE8E800 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_xor<0>31  (
    .I0(tx_red[6]),
    .I1(tx_red[5]),
    .I2(tx_red[7]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4 ),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_24 )
  );
  LUT6 #(
    .INIT ( 64'hE800000000000000 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy<0>31  (
    .I0(tx_red[6]),
    .I1(tx_red[5]),
    .I2(tx_red[7]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4 ),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy<0>2 )
  );
  LUT6 #(
    .INIT ( 64'h17E8E817E81717E8 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_xor<0>21  (
    .I0(tx_green[6]),
    .I1(tx_green[5]),
    .I2(tx_green[7]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd4 ),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_14 )
  );
  LUT6 #(
    .INIT ( 64'h17FFFFE8FFE8E800 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_xor<0>31  (
    .I0(tx_green[6]),
    .I1(tx_green[5]),
    .I2(tx_green[7]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd4 ),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_24 )
  );
  LUT6 #(
    .INIT ( 64'hE800000000000000 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy<0>31  (
    .I0(tx_green[6]),
    .I1(tx_green[5]),
    .I2(tx_green[7]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd4 ),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy<0>2 )
  );
  LUT6 #(
    .INIT ( 64'h17E8E817E81717E8 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_xor<0>21  (
    .I0(tx_blue[6]),
    .I1(tx_blue[5]),
    .I2(tx_blue[7]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4 ),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_14 )
  );
  LUT6 #(
    .INIT ( 64'h17FFFFE8FFE8E800 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_xor<0>31  (
    .I0(tx_blue[6]),
    .I1(tx_blue[5]),
    .I2(tx_blue[7]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4 ),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_24 )
  );
  LUT6 #(
    .INIT ( 64'hE800000000000000 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy<0>31  (
    .I0(tx_blue[6]),
    .I1(tx_blue[5]),
    .I2(tx_blue[7]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd3 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy [0]),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4 ),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy<0>2 )
  );
  LUT5 #(
    .INIT ( 32'h69FF9600 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>21  (
    .I0(\dvi_tx/encr/din_q [2]),
    .I1(\dvi_tx/encr/din_q [1]),
    .I2(\dvi_tx/encr/din_q [0]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_19 )
  );
  LUT5 #(
    .INIT ( 32'h69FF9600 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>21  (
    .I0(\dvi_tx/encg/din_q [2]),
    .I1(\dvi_tx/encg/din_q [1]),
    .I2(\dvi_tx/encg/din_q [0]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_19 )
  );
  LUT5 #(
    .INIT ( 32'h69FF9600 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>21  (
    .I0(\dvi_tx/encb/din_q [2]),
    .I1(\dvi_tx/encb/din_q [1]),
    .I2(\dvi_tx/encb/din_q [0]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_19 )
  );
  LUT5 #(
    .INIT ( 32'h0069FF96 ))
  \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<1>11  (
    .I0(\dvi_tx/encr/din_q [2]),
    .I1(\dvi_tx/encr/din_q [1]),
    .I2(\dvi_tx/encr/din_q [0]),
    .I3(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encr/PWR_35_o_BUS_0017_sub_29_OUT [1])
  );
  LUT5 #(
    .INIT ( 32'h0069FF96 ))
  \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<1>11  (
    .I0(\dvi_tx/encg/din_q [2]),
    .I1(\dvi_tx/encg/din_q [1]),
    .I2(\dvi_tx/encg/din_q [0]),
    .I3(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encg/PWR_35_o_BUS_0017_sub_29_OUT [1])
  );
  LUT5 #(
    .INIT ( 32'h0069FF96 ))
  \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<1>11  (
    .I0(\dvi_tx/encb/din_q [2]),
    .I1(\dvi_tx/encb/din_q [1]),
    .I2(\dvi_tx/encb/din_q [0]),
    .I3(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_xor<0>12 ),
    .I4(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd9_lut<0>1 ),
    .O(\dvi_tx/encb/PWR_35_o_BUS_0017_sub_29_OUT [1])
  );
  LUT6 #(
    .INIT ( 64'h8228288228828228 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy<0>11  (
    .I0(tx_red[2]),
    .I1(tx_red[3]),
    .I2(tx_red[6]),
    .I3(tx_red[5]),
    .I4(tx_red[7]),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd3_lut [0]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4_cy [0])
  );
  LUT6 #(
    .INIT ( 64'h8448EDDEEDDE8448 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd41  (
    .I0(tx_red[0]),
    .I1(tx_red[3]),
    .I2(tx_red[4]),
    .I3(tx_red[1]),
    .I4(tx_red[7]),
    .I5(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_lut [0]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd4 )
  );
  LUT6 #(
    .INIT ( 64'h8228288228828228 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy<0>11  (
    .I0(tx_green[2]),
    .I1(tx_green[3]),
    .I2(tx_green[6]),
    .I3(tx_green[5]),
    .I4(tx_green[7]),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd3_lut [0]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd4_cy [0])
  );
  LUT6 #(
    .INIT ( 64'h8448EDDEEDDE8448 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd41  (
    .I0(tx_green[0]),
    .I1(tx_green[3]),
    .I2(tx_green[4]),
    .I3(tx_green[1]),
    .I4(tx_green[7]),
    .I5(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_lut [0]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd4 )
  );
  LUT6 #(
    .INIT ( 64'h8228288228828228 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy<0>11  (
    .I0(tx_blue[2]),
    .I1(tx_blue[3]),
    .I2(tx_blue[6]),
    .I3(tx_blue[5]),
    .I4(tx_blue[7]),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd3_lut [0]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4_cy [0])
  );
  LUT6 #(
    .INIT ( 64'h8448EDDEEDDE8448 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd41  (
    .I0(tx_blue[0]),
    .I1(tx_blue[3]),
    .I2(tx_blue[4]),
    .I3(tx_blue[1]),
    .I4(tx_blue[7]),
    .I5(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_lut [0]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd4 )
  );
  LUT6 #(
    .INIT ( 64'hF66F9FF9F99F6FF6 ))
  \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>161_SW0  (
    .I0(\dvi_tx/encr/din_q [4]),
    .I1(\dvi_tx/encr/din_q [3]),
    .I2(\dvi_tx/encr/din_q [2]),
    .I3(\dvi_tx/encr/din_q [1]),
    .I4(\dvi_tx/encr/din_q [0]),
    .I5(\dvi_tx/encr/q_m [1]),
    .O(N103)
  );
  LUT6 #(
    .INIT ( 64'hF66F9FF9F99F6FF6 ))
  \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>161_SW0  (
    .I0(\dvi_tx/encg/din_q [4]),
    .I1(\dvi_tx/encg/din_q [3]),
    .I2(\dvi_tx/encg/din_q [2]),
    .I3(\dvi_tx/encg/din_q [1]),
    .I4(\dvi_tx/encg/din_q [0]),
    .I5(\dvi_tx/encg/q_m [1]),
    .O(N105)
  );
  LUT6 #(
    .INIT ( 64'hF66F9FF9F99F6FF6 ))
  \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<2>161_SW0  (
    .I0(\dvi_tx/encb/din_q [4]),
    .I1(\dvi_tx/encb/din_q [3]),
    .I2(\dvi_tx/encb/din_q [2]),
    .I3(\dvi_tx/encb/din_q [1]),
    .I4(\dvi_tx/encb/din_q [0]),
    .I5(\dvi_tx/encb/q_m [1]),
    .O(N107)
  );
  LUT6 #(
    .INIT ( 64'h80C8FE80ECFEC8EC ))
  \dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT8111  (
    .I0(\dvi_tx/encr/cnt [1]),
    .I1(\dvi_tx/encr/cnt [2]),
    .I2(\dvi_tx/encr/q_m_reg [8]),
    .I3(\dvi_tx/encr/n1q_m [1]),
    .I4(\dvi_tx/encr/n0q_m [1]),
    .I5(\dvi_tx/encr/Msub_n0233_lut [2]),
    .O(\dvi_tx/encr/Mmux_GND_37_o_cnt[4]_mux_55_OUT811 )
  );
  LUT5 #(
    .INIT ( 32'h96966996 ))
  \dvi_tx/encg/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2>1  (
    .I0(\dvi_tx/encg/cnt [2]),
    .I1(\dvi_tx/encg/n0q_m [2]),
    .I2(\dvi_tx/encg/n1q_m [2]),
    .I3(\dvi_tx/encg/n1q_m [1]),
    .I4(\dvi_tx/encg/n0q_m [1]),
    .O(\dvi_tx/encg/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2> )
  );
  LUT5 #(
    .INIT ( 32'h96966996 ))
  \dvi_tx/encb/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2>1  (
    .I0(\dvi_tx/encb/cnt [2]),
    .I1(\dvi_tx/encb/n0q_m [2]),
    .I2(\dvi_tx/encb/n1q_m [2]),
    .I3(\dvi_tx/encb/n1q_m [1]),
    .I4(\dvi_tx/encb/n0q_m [1]),
    .O(\dvi_tx/encb/Madd_cnt[4]_GND_37_o_sub_41_OUT_lut<2> )
  );
  LUT6 #(
    .INIT ( 64'hEEFEEFFF11011000 ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd_lut<0>1  (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<5> ),
    .I4(\dvi_rx1/dec_r/dout [5]),
    .I5(tx_red[6]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hEEFEEFFF11011000 ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd_lut<0>1  (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\g_mux<1> [5]),
    .I4(\dvi_rx1/dec_g/dout [5]),
    .I5(tx_green[6]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hEEFEEFFF11011000 ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd_lut<0>1  (
    .I0(SW_1_IBUF_9),
    .I1(SW_2_IBUF_8),
    .I2(SW_0_IBUF_10),
    .I3(\b_mux<1> [5]),
    .I4(\dvi_rx1/dec_b/dout [5]),
    .I5(tx_blue[6]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hAAAA8AAAAAAA8BAA ))
  \dvi_rx1/dec_b/des_0/rst_data_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/rst_data_334 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 ),
    .I4(rx_reset),
    .I5(\dvi_rx1/dec_b/des_0/busy_data_d_341 ),
    .O(\dvi_rx1/dec_b/des_0/rst_data_rstpot_1517 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA8AAAAAAA8BAA ))
  \dvi_rx1/dec_g/des_0/rst_data_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/rst_data_382 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 ),
    .I4(rx_reset),
    .I5(\dvi_rx1/dec_g/des_0/busy_data_d_389 ),
    .O(\dvi_rx1/dec_g/des_0/rst_data_rstpot_1522 )
  );
  LUT6 #(
    .INIT ( 64'hAAAA8AAAAAAA8BAA ))
  \dvi_rx1/dec_r/des_0/rst_data_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/rst_data_427 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 ),
    .I4(rx_reset),
    .I5(\dvi_rx1/dec_r/des_0/busy_data_d_434 ),
    .O(\dvi_rx1/dec_r/des_0/rst_data_rstpot_1527 )
  );
  LUT5 #(
    .INIT ( 32'hABAB888A ))
  \dvi_rx1/dec_b/des_0/cal_data_master_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/cal_data_master_346 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 ),
    .I3(\dvi_rx1/dec_b/des_0/enable_344 ),
    .I4(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 ),
    .O(\dvi_rx1/dec_b/des_0/cal_data_master_rstpot_1512 )
  );
  LUT6 #(
    .INIT ( 64'h5C5C04445D5D0444 ))
  \dvi_rx1/dec_b/des_0/cal_data_sint_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 ),
    .I3(\dvi_rx1/dec_b/des_0/busy_data_d_341 ),
    .I4(\dvi_rx1/dec_b/des_0/cal_data_sint_345 ),
    .I5(\dvi_rx1/dec_b/des_0/enable_344 ),
    .O(\dvi_rx1/dec_b/des_0/cal_data_sint_rstpot_1515 )
  );
  LUT5 #(
    .INIT ( 32'hABAB888A ))
  \dvi_rx1/dec_g/des_0/cal_data_master_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/cal_data_master_393 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 ),
    .I3(\dvi_rx1/dec_b/des_0/enable_344 ),
    .I4(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 ),
    .O(\dvi_rx1/dec_g/des_0/cal_data_master_rstpot_1518 )
  );
  LUT6 #(
    .INIT ( 64'h5C5C04445D5D0444 ))
  \dvi_rx1/dec_g/des_0/cal_data_sint_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 ),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 ),
    .I3(\dvi_rx1/dec_g/des_0/busy_data_d_389 ),
    .I4(\dvi_rx1/dec_g/des_0/cal_data_sint_392 ),
    .I5(\dvi_rx1/dec_b/des_0/enable_344 ),
    .O(\dvi_rx1/dec_g/des_0/cal_data_sint_rstpot_1521 )
  );
  LUT5 #(
    .INIT ( 32'hABAB888A ))
  \dvi_rx1/dec_r/des_0/cal_data_master_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/cal_data_master_438 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 ),
    .I3(\dvi_rx1/dec_b/des_0/enable_344 ),
    .I4(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 ),
    .O(\dvi_rx1/dec_r/des_0/cal_data_master_rstpot_1523 )
  );
  LUT6 #(
    .INIT ( 64'h5C5C04445D5D0444 ))
  \dvi_rx1/dec_r/des_0/cal_data_sint_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 ),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 ),
    .I3(\dvi_rx1/dec_r/des_0/busy_data_d_434 ),
    .I4(\dvi_rx1/dec_r/des_0/cal_data_sint_437 ),
    .I5(\dvi_rx1/dec_b/des_0/enable_344 ),
    .O(\dvi_rx1/dec_r/des_0/cal_data_sint_rstpot_1526 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \dvi_rx1/dec_b/cbnd/ra_en_rstpot_SW0  (
    .I0(\dvi_rx1/dec_b/cbnd/iamrdy_45 ),
    .I1(\dvi_rx1/dec_g/cbnd/iamrdy_46 ),
    .I2(\dvi_rx1/dec_r/cbnd/iamrdy_47 ),
    .O(N142)
  );
  LUT6 #(
    .INIT ( 64'hFFFFF3FFAAAAA2AA ))
  \dvi_rx1/dec_b/cbnd/ra_en_rstpot  (
    .I0(\dvi_rx1/dec_b/cbnd/ra_en_732 ),
    .I1(\dvi_rx1/dec_b/cbnd/blnkbgn_736 ),
    .I2(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_734 ),
    .I3(\dvi_rx1/dec_b/cbnd/skip_line_733 ),
    .I4(N142),
    .I5(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_other_ch0_rdy_OR_127_o ),
    .O(\dvi_rx1/dec_b/cbnd/ra_en_rstpot_1540 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \dvi_rx1/dec_g/cbnd/ra_en_rstpot_SW0  (
    .I0(\dvi_rx1/dec_g/cbnd/blnkbgn_760 ),
    .I1(\dvi_rx1/dec_g/cbnd/skip_line_759 ),
    .I2(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_734 ),
    .O(N144)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \dvi_rx1/dec_r/cbnd/ra_en_rstpot_SW0  (
    .I0(\dvi_rx1/dec_r/cbnd/blnkbgn_784 ),
    .I1(\dvi_rx1/dec_r/cbnd/skip_line_783 ),
    .I2(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_734 ),
    .O(N146)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \dvi_rx1/dec_b/des_0/_n0256_SW1  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 ),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 ),
    .O(N136)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \dvi_rx1/dec_g/des_0/_n0256_SW1  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 ),
    .I2(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 ),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 ),
    .O(N138)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \dvi_rx1/dec_r/des_0/_n0256_SW1  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 ),
    .I2(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 ),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 ),
    .O(N140)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_b/cbnd/iamrdy_glue_set  (
    .I0(\dvi_rx1/dec_b/cbnd/skip_line_733 ),
    .I1(\dvi_rx1/dec_b/cbnd/blnkbgn_736 ),
    .I2(\dvi_rx1/dec_b/cbnd/iamrdy_45 ),
    .O(\dvi_rx1/dec_b/cbnd/iamrdy_glue_set_1474 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_g/cbnd/iamrdy_glue_set  (
    .I0(\dvi_rx1/dec_g/cbnd/skip_line_759 ),
    .I1(\dvi_rx1/dec_g/cbnd/blnkbgn_760 ),
    .I2(\dvi_rx1/dec_g/cbnd/iamrdy_46 ),
    .O(\dvi_rx1/dec_g/cbnd/iamrdy_glue_set_1476 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \dvi_rx1/dec_r/cbnd/iamrdy_glue_set  (
    .I0(\dvi_rx1/dec_r/cbnd/skip_line_783 ),
    .I1(\dvi_rx1/dec_r/cbnd/blnkbgn_784 ),
    .I2(\dvi_rx1/dec_r/cbnd/iamrdy_47 ),
    .O(\dvi_rx1/dec_r/cbnd/iamrdy_glue_set_1478 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3_SW1  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I1(\dvi_rx1/dec_b/des_0/flag_342 ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(N148)
  );
  LUT6 #(
    .INIT ( 64'h0110101010101001 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3  (
    .I0(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(N148),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3_SW1  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I1(\dvi_rx1/dec_g/des_0/flag_390 ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(N150)
  );
  LUT6 #(
    .INIT ( 64'h0110101010101001 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3  (
    .I0(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(N150),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3_SW1  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I1(\dvi_rx1/dec_r/des_0/flag_435 ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(N152)
  );
  LUT6 #(
    .INIT ( 64'h0110101010101001 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT3  (
    .I0(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(N152),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I4(\dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hFBFFFFFF ))
  \dvi_rx1/dec_r/n0050_inv4_SW0  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [7]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [5]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(N154)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFEFF7F7F7E7F ))
  \dvi_rx1/dec_r/n0050_inv4  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [3]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .I4(N154),
    .I5(\dvi_rx1/dec_r/n0050_inv2_1403 ),
    .O(\dvi_rx1/dec_r/n0050_inv )
  );
  LUT5 #(
    .INIT ( 32'hFBFFFFFF ))
  \dvi_rx1/dec_g/n0050_inv4_SW0  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [7]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [5]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(N156)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFEFF7F7F7E7F ))
  \dvi_rx1/dec_g/n0050_inv4  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [3]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .I4(N156),
    .I5(\dvi_rx1/dec_g/n0050_inv2_1404 ),
    .O(\dvi_rx1/dec_g/n0050_inv )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o4_SW0  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [4]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_b/cbnd/sdata [8]),
    .O(N158)
  );
  LUT6 #(
    .INIT ( 64'h0101810100008000 ))
  \dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o4  (
    .I0(\dvi_rx1/dec_b/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_b/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_b/cbnd/sdata [7]),
    .I3(\dvi_rx1/dec_b/cbnd/sdata [0]),
    .I4(N158),
    .I5(\dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o2_1425 ),
    .O(\dvi_rx1/dec_b/cbnd/sdata[9]_sdata[9]_OR_126_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o4_SW0  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [4]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_g/cbnd/sdata [8]),
    .O(N160)
  );
  LUT6 #(
    .INIT ( 64'h0101810100008000 ))
  \dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o4  (
    .I0(\dvi_rx1/dec_g/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_g/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_g/cbnd/sdata [7]),
    .I3(\dvi_rx1/dec_g/cbnd/sdata [0]),
    .I4(N160),
    .I5(\dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o2_1426 ),
    .O(\dvi_rx1/dec_g/cbnd/sdata[9]_sdata[9]_OR_126_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o4_SW0  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [1]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [2]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [4]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [6]),
    .I4(\dvi_rx1/dec_r/cbnd/sdata [8]),
    .O(N162)
  );
  LUT6 #(
    .INIT ( 64'h0101810100008000 ))
  \dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o4  (
    .I0(\dvi_rx1/dec_r/cbnd/sdata [3]),
    .I1(\dvi_rx1/dec_r/cbnd/sdata [5]),
    .I2(\dvi_rx1/dec_r/cbnd/sdata [7]),
    .I3(\dvi_rx1/dec_r/cbnd/sdata [0]),
    .I4(N162),
    .I5(\dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o2_1427 ),
    .O(\dvi_rx1/dec_r/cbnd/sdata[9]_sdata[9]_OR_126_o )
  );
  LUT6 #(
    .INIT ( 64'h0001010001000001 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT41  (
    .I0(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_4_o ),
    .I3(\dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I5(\dvi_rx1/dec_b/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h0001010001000001 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT41  (
    .I0(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o ),
    .I3(\dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I5(\dvi_rx1/dec_g/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h0001010001000001 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT41  (
    .I0(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o ),
    .I3(\dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I5(\dvi_rx1/dec_r/des_0/incdec_data_d_pdcounter[4]_AND_5_o ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA2 ))
  \dvi_rx1/dec_b/des_0/rst_data_rstpot1  (
    .I0(\dvi_rx1/dec_b/des_0/rst_data_rstpot_1517 ),
    .I1(\dvi_rx1/dec_b/des_0/enable_344 ),
    .I2(rx_reset),
    .I3(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 ),
    .I4(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 ),
    .I5(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 ),
    .O(\dvi_rx1/dec_b/des_0/rst_data_rstpot1_1543 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA2 ))
  \dvi_rx1/dec_g/des_0/rst_data_rstpot1  (
    .I0(\dvi_rx1/dec_g/des_0/rst_data_rstpot_1522 ),
    .I1(\dvi_rx1/dec_b/des_0/enable_344 ),
    .I2(rx_reset),
    .I3(\dvi_rx1/dec_g/des_0/state_FSM_FFd2_385 ),
    .I4(\dvi_rx1/dec_g/des_0/state_FSM_FFd3_384 ),
    .I5(\dvi_rx1/dec_g/des_0/state_FSM_FFd4_383 ),
    .O(\dvi_rx1/dec_g/des_0/rst_data_rstpot1_1544 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA2 ))
  \dvi_rx1/dec_r/des_0/rst_data_rstpot1  (
    .I0(\dvi_rx1/dec_r/des_0/rst_data_rstpot_1527 ),
    .I1(\dvi_rx1/dec_b/des_0/enable_344 ),
    .I2(rx_reset),
    .I3(\dvi_rx1/dec_r/des_0/state_FSM_FFd2_430 ),
    .I4(\dvi_rx1/dec_r/des_0/state_FSM_FFd3_429 ),
    .I5(\dvi_rx1/dec_r/des_0/state_FSM_FFd4_428 ),
    .O(\dvi_rx1/dec_r/des_0/rst_data_rstpot1_1545 )
  );
  LUT4 #(
    .INIT ( 16'hD554 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2>11  (
    .I0(\dvi_rx1/dec_b/des_0/incdec_data_d_340 ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> )
  );
  LUT4 #(
    .INIT ( 16'hD554 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2>11  (
    .I0(\dvi_rx1/dec_g/des_0/incdec_data_d_388 ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> )
  );
  LUT4 #(
    .INIT ( 16'hD554 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2>11  (
    .I0(\dvi_rx1/dec_r/des_0/incdec_data_d_433 ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_cy<2> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAEFEFAAAA2220 ))
  \dvi_rx1/dec_b/des_0/flag_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I1(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(N130),
    .I5(\dvi_rx1/dec_b/des_0/flag_342 ),
    .O(\dvi_rx1/dec_b/des_0/flag_rstpot_1513 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAEFEFAAAA2220 ))
  \dvi_rx1/dec_g/des_0/flag_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I1(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(N132),
    .I5(\dvi_rx1/dec_g/des_0/flag_390 ),
    .O(\dvi_rx1/dec_g/des_0/flag_rstpot_1519 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAEFEFAAAA2220 ))
  \dvi_rx1/dec_r/des_0/flag_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I1(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I4(N134),
    .I5(\dvi_rx1/dec_r/des_0/flag_435 ),
    .O(\dvi_rx1/dec_r/des_0/flag_rstpot_1524 )
  );
  LUT6 #(
    .INIT ( 64'h7777557522220020 ))
  \dvi_rx1/dec_b/des_0/ce_data_inta_rstpot  (
    .I0(\dvi_rx1/dec_b/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I1(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_b/des_0/flag_342 ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_b/des_0/ce_data_inta_343 ),
    .O(\dvi_rx1/dec_b/des_0/ce_data_inta_rstpot_1514 )
  );
  LUT6 #(
    .INIT ( 64'h7777557522220020 ))
  \dvi_rx1/dec_g/des_0/ce_data_inta_rstpot  (
    .I0(\dvi_rx1/dec_g/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I1(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_g/des_0/flag_390 ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_g/des_0/ce_data_inta_391 ),
    .O(\dvi_rx1/dec_g/des_0/ce_data_inta_rstpot_1520 )
  );
  LUT6 #(
    .INIT ( 64'h7777557522220020 ))
  \dvi_rx1/dec_r/des_0/ce_data_inta_rstpot  (
    .I0(\dvi_rx1/dec_r/des_0/GND_10_o_GND_10_o_equal_45_o_inv ),
    .I1(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_r/des_0/flag_435 ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I5(\dvi_rx1/dec_r/des_0/ce_data_inta_436 ),
    .O(\dvi_rx1/dec_r/des_0/ce_data_inta_rstpot_1525 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<4>12  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<4>1 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<4>12  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<4>1 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<4>12  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<4>1 )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<5>11  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [2]),
    .I2(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .I3(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [1]),
    .I4(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [3]),
    .I5(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<5>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0>1  (
    .I0(\dvi_rx1/dec_b/phsalgn_0/bitslip_cnt [0]),
    .I1(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd3_530 ),
    .I2(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd2_529 ),
    .I3(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd1_528 ),
    .I4(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd5_532 ),
    .I5(\dvi_rx1/dec_b/phsalgn_0/cstate_FSM_FFd4_531 ),
    .O(\dvi_rx1/dec_b/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<5>11  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [2]),
    .I2(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .I3(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [1]),
    .I4(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [3]),
    .I5(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<5>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0>1  (
    .I0(\dvi_rx1/dec_g/phsalgn_0/bitslip_cnt [0]),
    .I1(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd3_617 ),
    .I2(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd2_616 ),
    .I3(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd1_615 ),
    .I4(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd5_619 ),
    .I5(\dvi_rx1/dec_g/phsalgn_0/cstate_FSM_FFd4_618 ),
    .O(\dvi_rx1/dec_g/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<5>11  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [5]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [2]),
    .I2(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .I3(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [1]),
    .I4(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [3]),
    .I5(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [4]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<5>1 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFDAAAAAAA8 ))
  \dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0>1  (
    .I0(\dvi_rx1/dec_r/phsalgn_0/bitslip_cnt [0]),
    .I1(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd3_704 ),
    .I2(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd2_703 ),
    .I3(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd1_702 ),
    .I4(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd5_706 ),
    .I5(\dvi_rx1/dec_r/phsalgn_0/cstate_FSM_FFd4_705 ),
    .O(\dvi_rx1/dec_r/phsalgn_0/cstate[5]_GND_18_o_select_48_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h11111151 ))
  \dvi_tx/encr/q_m<8>1  (
    .I0(\dvi_tx/encr/n1d [3]),
    .I1(\dvi_tx/encr/n1d [2]),
    .I2(\dvi_tx/encr/din_q [0]),
    .I3(\dvi_tx/encr/n1d [1]),
    .I4(\dvi_tx/encr/n1d [0]),
    .O(\dvi_tx/encr/q_m [8])
  );
  LUT5 #(
    .INIT ( 32'h11111151 ))
  \dvi_tx/encg/q_m<8>1  (
    .I0(\dvi_tx/encg/n1d [3]),
    .I1(\dvi_tx/encg/n1d [2]),
    .I2(\dvi_tx/encg/din_q [0]),
    .I3(\dvi_tx/encg/n1d [1]),
    .I4(\dvi_tx/encg/n1d [0]),
    .O(\dvi_tx/encg/q_m [8])
  );
  LUT5 #(
    .INIT ( 32'h11111151 ))
  \dvi_tx/encb/q_m<8>1  (
    .I0(\dvi_tx/encb/n1d [3]),
    .I1(\dvi_tx/encb/n1d [2]),
    .I2(\dvi_tx/encb/din_q [0]),
    .I3(\dvi_tx/encb/n1d [1]),
    .I4(\dvi_tx/encb/n1d [0]),
    .O(\dvi_tx/encb/q_m [8])
  );
  LUT6 #(
    .INIT ( 64'h0000110111010000 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT21  (
    .I0(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_b/des_0/flag_342 ),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h0000110111010000 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT21  (
    .I0(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_g/des_0/flag_390 ),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h0000110111010000 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT21  (
    .I0(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_3_o ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_r/des_0/flag_435 ),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h1999999999999999 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1>1  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I1(\dvi_rx1/dec_b/des_0/incdec_data_d_340 ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I5(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> )
  );
  LUT6 #(
    .INIT ( 64'h1999999999999999 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1>1  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I1(\dvi_rx1/dec_g/des_0/incdec_data_d_388 ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I5(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> )
  );
  LUT6 #(
    .INIT ( 64'h1999999999999999 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1>1  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I1(\dvi_rx1/dec_r/des_0/incdec_data_d_433 ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I5(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .O(\dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_pdcounter[4]_mux_59_OUT_rs_lut<1> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_4_o1  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_b/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_b/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_b/des_0/flag_342 ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_4_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o1  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_g/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_g/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_g/des_0/flag_390 ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_flag_AND_4_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o1  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [4]),
    .I1(\dvi_rx1/dec_r/des_0/pdcounter [3]),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter [2]),
    .I3(\dvi_rx1/dec_r/des_0/pdcounter [1]),
    .I4(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I5(\dvi_rx1/dec_r/des_0/flag_435 ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_flag_AND_4_o )
  );
  LUT4 #(
    .INIT ( 16'h1101 ))
  \dvi_rx1/dec_b/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT11  (
    .I0(\dvi_rx1/dec_b/des_0/pdcounter [0]),
    .I1(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_b/des_0/flag_342 ),
    .O(\dvi_rx1/dec_b/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h1101 ))
  \dvi_rx1/dec_g/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT11  (
    .I0(\dvi_rx1/dec_g/des_0/pdcounter [0]),
    .I1(\dvi_rx1/dec_g/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_g/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_g/des_0/flag_390 ),
    .O(\dvi_rx1/dec_g/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h1101 ))
  \dvi_rx1/dec_r/des_0/Mmux_pdcounter[4]_PWR_10_o_mux_63_OUT11  (
    .I0(\dvi_rx1/dec_r/des_0/pdcounter [0]),
    .I1(\dvi_rx1/dec_r/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_r/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(\dvi_rx1/dec_r/des_0/flag_435 ),
    .O(\dvi_rx1/dec_r/des_0/pdcounter[4]_PWR_10_o_mux_63_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFA8A8A8A8A8A8A8 ))
  \dvi_rx1/dec_g/cbnd/ra_en_rstpot  (
    .I0(N144),
    .I1(\dvi_rx1/dec_g/cbnd/ra_en_758 ),
    .I2(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_734 ),
    .I3(\dvi_rx1/dec_b/cbnd/iamrdy_45 ),
    .I4(\dvi_rx1/dec_g/cbnd/iamrdy_46 ),
    .I5(\dvi_rx1/dec_r/cbnd/iamrdy_47 ),
    .O(\dvi_rx1/dec_g/cbnd/ra_en_rstpot_1541 )
  );
  LUT6 #(
    .INIT ( 64'hFFA8A8A8A8A8A8A8 ))
  \dvi_rx1/dec_r/cbnd/ra_en_rstpot  (
    .I0(N146),
    .I1(\dvi_rx1/dec_r/cbnd/ra_en_782 ),
    .I2(\dvi_rx1/dec_b/cbnd/rawdata_vld_rising_734 ),
    .I3(\dvi_rx1/dec_b/cbnd/iamrdy_45 ),
    .I4(\dvi_rx1/dec_g/cbnd/iamrdy_46 ),
    .I5(\dvi_rx1/dec_r/cbnd/iamrdy_47 ),
    .O(\dvi_rx1/dec_r/cbnd/ra_en_rstpot_1542 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_b/des_0/ce_data_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_b/des_0/ce_data_inta_343 ),
    .I2(\dvi_rx1/dec_b/des_0/ce_data_338 ),
    .O(\dvi_rx1/dec_b/des_0/ce_data_rstpot_1535 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_g/des_0/ce_data_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_g/des_0/ce_data_inta_391 ),
    .I2(\dvi_rx1/dec_g/des_0/ce_data_386 ),
    .O(\dvi_rx1/dec_g/des_0/ce_data_rstpot_1537 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \dvi_rx1/dec_r/des_0/ce_data_rstpot  (
    .I0(rx_reset),
    .I1(\dvi_rx1/dec_r/des_0/ce_data_inta_436 ),
    .I2(\dvi_rx1/dec_r/des_0/ce_data_431 ),
    .O(\dvi_rx1/dec_r/des_0/ce_data_rstpot_1539 )
  );
  LUT6 #(
    .INIT ( 64'h88AA088AEEFFAEEF ))
  \dvi_tx/encg/Msub_n0233_cy<3>11  (
    .I0(\dvi_tx/encg/n0q_m [3]),
    .I1(\dvi_tx/encg/n0q_m [2]),
    .I2(\dvi_tx/encg/n1q_m [1]),
    .I3(\dvi_tx/encg/n1q_m [2]),
    .I4(\dvi_tx/encg/n0q_m [1]),
    .I5(\dvi_tx/encg/n1q_m [3]),
    .O(\dvi_tx/encg/Msub_n0233_cy [3])
  );
  LUT6 #(
    .INIT ( 64'h88AA088AEEFFAEEF ))
  \dvi_tx/encb/Msub_n0233_cy<3>11  (
    .I0(\dvi_tx/encb/n0q_m [3]),
    .I1(\dvi_tx/encb/n0q_m [2]),
    .I2(\dvi_tx/encb/n1q_m [1]),
    .I3(\dvi_tx/encb/n1q_m [2]),
    .I4(\dvi_tx/encb/n0q_m [1]),
    .I5(\dvi_tx/encb/n1q_m [3]),
    .O(\dvi_tx/encb/Msub_n0233_cy [3])
  );
  LUT6 #(
    .INIT ( 64'h555556AA555555AA ))
  \dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut<0>1  (
    .I0(\dvi_tx/encr/din_q [6]),
    .I1(\dvi_tx/encr/n1d [0]),
    .I2(\dvi_tx/encr/n1d [1]),
    .I3(\dvi_tx/encr/n1d [2]),
    .I4(\dvi_tx/encr/n1d [3]),
    .I5(\dvi_tx/encr/din_q [0]),
    .O(\dvi_tx/encr/ADDERTREE_INTERNAL_Madd5_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h555556AA555555AA ))
  \dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut<0>1  (
    .I0(\dvi_tx/encg/din_q [6]),
    .I1(\dvi_tx/encg/n1d [0]),
    .I2(\dvi_tx/encg/n1d [1]),
    .I3(\dvi_tx/encg/n1d [2]),
    .I4(\dvi_tx/encg/n1d [3]),
    .I5(\dvi_tx/encg/din_q [0]),
    .O(\dvi_tx/encg/ADDERTREE_INTERNAL_Madd5_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h555556AA555555AA ))
  \dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut<0>1  (
    .I0(\dvi_tx/encb/din_q [6]),
    .I1(\dvi_tx/encb/n1d [0]),
    .I2(\dvi_tx/encb/n1d [1]),
    .I3(\dvi_tx/encb/n1d [2]),
    .I4(\dvi_tx/encb/n1d [3]),
    .I5(\dvi_tx/encb/din_q [0]),
    .O(\dvi_tx/encb/ADDERTREE_INTERNAL_Madd5_lut [0])
  );
  MUXF7   \dvi_rx1/dec_b/des_0/inc_data_int_rstpot  (
    .I0(N164),
    .I1(N165),
    .S(\dvi_rx1/dec_b/des_0/pdcounter[4]_flag_AND_3_o ),
    .O(\dvi_rx1/dec_b/des_0/inc_data_int_rstpot_1534 )
  );
  LUT5 #(
    .INIT ( 32'hAAAAAA8A ))
  \dvi_rx1/dec_b/des_0/inc_data_int_rstpot_F  (
    .I0(\dvi_rx1/dec_b/des_0/inc_data_int_333 ),
    .I1(\dvi_rx1/dec_b/des_0/GND_10_o_busy_data_d_OR_63_o ),
    .I2(\dvi_rx1/dec_b/des_0/pdcounter[4]_GND_10_o_equal_50_o ),
    .I3(N136),
    .I4(\dvi_rx1/dec_b/des_0/flag_342 ),
    .O(N164)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAAE ))
  \dvi_rx1/dec_b/des_0/inc_data_int_rstpot_G  (
    .I0(\dvi_rx1/dec_b/des_0/inc_data_int_333 ),
    .I1(\dvi_rx1/dec_b/des_0/state_FSM_FFd2_337 ),
    .I2(\dvi_rx1/dec_b/des_0/state_FSM_FFd3_336 ),
    .I3(\dvi_rx1/dec_b/des_0/busy_data_d_341 ),
    .I4(\dvi_rx1/dec_b/des_0/state_FSM_FFd4_335 ),
    .I5(rx_reset),
    .O(N165)
  );
  MUXF7   \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<3>1_SW0  (
    .I0(N166),
    .I1(N167),
    .S(\dvi_tx/encr/Mmux_q_m<3>12 ),
    .O(N26)
  );
  LUT5 #(
    .INIT ( 32'hA028820A ))
  \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<3>1_SW0_F  (
    .I0(\dvi_tx/encr/Mmux_q_m<3>11 ),
    .I1(\dvi_tx/encr/din_q [6]),
    .I2(\dvi_tx/encr/q_m [4]),
    .I3(\dvi_tx/encr/din_q [5]),
    .I4(N54),
    .O(N166)
  );
  LUT6 #(
    .INIT ( 64'hF5D77D5F41055014 ))
  \dvi_tx/encr/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<3>1_SW0_G  (
    .I0(\dvi_tx/encr/n1d [3]),
    .I1(\dvi_tx/encr/din_q [6]),
    .I2(\dvi_tx/encr/q_m [4]),
    .I3(N54),
    .I4(\dvi_tx/encr/din_q [5]),
    .I5(\dvi_tx/encr/Mmux_q_m<3>11 ),
    .O(N167)
  );
  MUXF7   \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<3>1_SW0  (
    .I0(N168),
    .I1(N169),
    .S(\dvi_tx/encg/Mmux_q_m<3>12 ),
    .O(N34)
  );
  LUT5 #(
    .INIT ( 32'hA028820A ))
  \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<3>1_SW0_F  (
    .I0(\dvi_tx/encg/Mmux_q_m<3>11 ),
    .I1(\dvi_tx/encg/din_q [6]),
    .I2(\dvi_tx/encg/q_m [4]),
    .I3(\dvi_tx/encg/din_q [5]),
    .I4(N56),
    .O(N168)
  );
  LUT6 #(
    .INIT ( 64'hF5D77D5F41055014 ))
  \dvi_tx/encg/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<3>1_SW0_G  (
    .I0(\dvi_tx/encg/n1d [3]),
    .I1(\dvi_tx/encg/din_q [6]),
    .I2(\dvi_tx/encg/q_m [4]),
    .I3(N56),
    .I4(\dvi_tx/encg/din_q [5]),
    .I5(\dvi_tx/encg/Mmux_q_m<3>11 ),
    .O(N169)
  );
  MUXF7   \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<3>1_SW0  (
    .I0(N170),
    .I1(N171),
    .S(\dvi_tx/encb/Mmux_q_m<3>12 ),
    .O(N42)
  );
  LUT5 #(
    .INIT ( 32'hA028820A ))
  \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<3>1_SW0_F  (
    .I0(\dvi_tx/encb/Mmux_q_m<3>11 ),
    .I1(\dvi_tx/encb/din_q [6]),
    .I2(\dvi_tx/encb/q_m [4]),
    .I3(\dvi_tx/encb/din_q [5]),
    .I4(N58),
    .O(N170)
  );
  LUT6 #(
    .INIT ( 64'hF5D77D5F41055014 ))
  \dvi_tx/encb/Msub_PWR_35_o_BUS_0017_sub_29_OUT_xor<3>1_SW0_G  (
    .I0(\dvi_tx/encb/n1d [3]),
    .I1(\dvi_tx/encb/din_q [6]),
    .I2(\dvi_tx/encb/q_m [4]),
    .I3(N58),
    .I4(\dvi_tx/encb/din_q [5]),
    .I5(\dvi_tx/encb/Mmux_q_m<3>11 ),
    .O(N171)
  );
  MUXF7   \dvi_tx/encr/Mmux_q_m<5>11  (
    .I0(N172),
    .I1(N173),
    .S(\dvi_tx/encr/q_m [4]),
    .O(\dvi_tx/encr/q_m [5])
  );
  LUT6 #(
    .INIT ( 64'h5555555566666A66 ))
  \dvi_tx/encr/Mmux_q_m<5>11_F  (
    .I0(\dvi_tx/encr/din_q [5]),
    .I1(\dvi_tx/encr/n1d [2]),
    .I2(\dvi_tx/encr/n1d [1]),
    .I3(\dvi_tx/encr/din_q [0]),
    .I4(\dvi_tx/encr/n1d [0]),
    .I5(\dvi_tx/encr/n1d [3]),
    .O(N172)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA99999599 ))
  \dvi_tx/encr/Mmux_q_m<5>11_G  (
    .I0(\dvi_tx/encr/din_q [5]),
    .I1(\dvi_tx/encr/n1d [2]),
    .I2(\dvi_tx/encr/n1d [0]),
    .I3(\dvi_tx/encr/din_q [0]),
    .I4(\dvi_tx/encr/n1d [1]),
    .I5(\dvi_tx/encr/n1d [3]),
    .O(N173)
  );
  MUXF7   \dvi_tx/encg/Mmux_q_m<5>11  (
    .I0(N174),
    .I1(N175),
    .S(\dvi_tx/encg/q_m [4]),
    .O(\dvi_tx/encg/q_m [5])
  );
  LUT6 #(
    .INIT ( 64'h5555555566666A66 ))
  \dvi_tx/encg/Mmux_q_m<5>11_F  (
    .I0(\dvi_tx/encg/din_q [5]),
    .I1(\dvi_tx/encg/n1d [2]),
    .I2(\dvi_tx/encg/n1d [1]),
    .I3(\dvi_tx/encg/din_q [0]),
    .I4(\dvi_tx/encg/n1d [0]),
    .I5(\dvi_tx/encg/n1d [3]),
    .O(N174)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA99999599 ))
  \dvi_tx/encg/Mmux_q_m<5>11_G  (
    .I0(\dvi_tx/encg/din_q [5]),
    .I1(\dvi_tx/encg/n1d [2]),
    .I2(\dvi_tx/encg/n1d [0]),
    .I3(\dvi_tx/encg/din_q [0]),
    .I4(\dvi_tx/encg/n1d [1]),
    .I5(\dvi_tx/encg/n1d [3]),
    .O(N175)
  );
  MUXF7   \dvi_tx/encb/Mmux_q_m<5>11  (
    .I0(N176),
    .I1(N177),
    .S(\dvi_tx/encb/q_m [4]),
    .O(\dvi_tx/encb/q_m [5])
  );
  LUT6 #(
    .INIT ( 64'h5555555566666A66 ))
  \dvi_tx/encb/Mmux_q_m<5>11_F  (
    .I0(\dvi_tx/encb/din_q [5]),
    .I1(\dvi_tx/encb/n1d [2]),
    .I2(\dvi_tx/encb/n1d [1]),
    .I3(\dvi_tx/encb/din_q [0]),
    .I4(\dvi_tx/encb/n1d [0]),
    .I5(\dvi_tx/encb/n1d [3]),
    .O(N176)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA99999599 ))
  \dvi_tx/encb/Mmux_q_m<5>11_G  (
    .I0(\dvi_tx/encb/din_q [5]),
    .I1(\dvi_tx/encb/n1d [2]),
    .I2(\dvi_tx/encb/n1d [0]),
    .I3(\dvi_tx/encb/din_q [0]),
    .I4(\dvi_tx/encb/n1d [1]),
    .I5(\dvi_tx/encb/n1d [3]),
    .O(N177)
  );
  MUXF7   \dvi_tx/encr/Mmux_q_m<3>13  (
    .I0(N178),
    .I1(N179),
    .S(\dvi_tx/encr/q_m [2]),
    .O(\dvi_tx/encr/q_m [3])
  );
  LUT6 #(
    .INIT ( 64'h5555555566666A66 ))
  \dvi_tx/encr/Mmux_q_m<3>13_F  (
    .I0(\dvi_tx/encr/din_q [3]),
    .I1(\dvi_tx/encr/n1d [2]),
    .I2(\dvi_tx/encr/n1d [1]),
    .I3(\dvi_tx/encr/din_q [0]),
    .I4(\dvi_tx/encr/n1d [0]),
    .I5(\dvi_tx/encr/n1d [3]),
    .O(N178)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA99999599 ))
  \dvi_tx/encr/Mmux_q_m<3>13_G  (
    .I0(\dvi_tx/encr/din_q [3]),
    .I1(\dvi_tx/encr/n1d [2]),
    .I2(\dvi_tx/encr/n1d [0]),
    .I3(\dvi_tx/encr/din_q [0]),
    .I4(\dvi_tx/encr/n1d [1]),
    .I5(\dvi_tx/encr/n1d [3]),
    .O(N179)
  );
  MUXF7   \dvi_tx/encg/Mmux_q_m<3>13  (
    .I0(N180),
    .I1(N181),
    .S(\dvi_tx/encg/q_m [2]),
    .O(\dvi_tx/encg/q_m [3])
  );
  LUT6 #(
    .INIT ( 64'h5555555566666A66 ))
  \dvi_tx/encg/Mmux_q_m<3>13_F  (
    .I0(\dvi_tx/encg/din_q [3]),
    .I1(\dvi_tx/encg/n1d [2]),
    .I2(\dvi_tx/encg/n1d [1]),
    .I3(\dvi_tx/encg/din_q [0]),
    .I4(\dvi_tx/encg/n1d [0]),
    .I5(\dvi_tx/encg/n1d [3]),
    .O(N180)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA99999599 ))
  \dvi_tx/encg/Mmux_q_m<3>13_G  (
    .I0(\dvi_tx/encg/din_q [3]),
    .I1(\dvi_tx/encg/n1d [2]),
    .I2(\dvi_tx/encg/n1d [0]),
    .I3(\dvi_tx/encg/din_q [0]),
    .I4(\dvi_tx/encg/n1d [1]),
    .I5(\dvi_tx/encg/n1d [3]),
    .O(N181)
  );
  MUXF7   \dvi_tx/encb/Mmux_q_m<3>13  (
    .I0(N182),
    .I1(N183),
    .S(\dvi_tx/encb/q_m [2]),
    .O(\dvi_tx/encb/q_m [3])
  );
  LUT6 #(
    .INIT ( 64'h5555555566666A66 ))
  \dvi_tx/encb/Mmux_q_m<3>13_F  (
    .I0(\dvi_tx/encb/din_q [3]),
    .I1(\dvi_tx/encb/n1d [2]),
    .I2(\dvi_tx/encb/n1d [1]),
    .I3(\dvi_tx/encb/din_q [0]),
    .I4(\dvi_tx/encb/n1d [0]),
    .I5(\dvi_tx/encb/n1d [3]),
    .O(N182)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA99999599 ))
  \dvi_tx/encb/Mmux_q_m<3>13_G  (
    .I0(\dvi_tx/encb/din_q [3]),
    .I1(\dvi_tx/encb/n1d [2]),
    .I2(\dvi_tx/encb/n1d [0]),
    .I3(\dvi_tx/encb/din_q [0]),
    .I4(\dvi_tx/encb/n1d [1]),
    .I5(\dvi_tx/encb/n1d [3]),
    .O(N183)
  );
  MUXF7   \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1012  (
    .I0(N184),
    .I1(N185),
    .S(\dvi_tx/encg/decision3_1150 ),
    .O(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT101 )
  );
  LUT6 #(
    .INIT ( 64'h6556A66AA66A9AA9 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1012_F  (
    .I0(\dvi_tx/encg/Msub_n0236_cy [3]),
    .I1(\dvi_tx/encg/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>2 ),
    .I2(\dvi_tx/encg/Msub_n0236_xor<3>11_1108 ),
    .I3(\dvi_tx/encg/Msub_n0233_lut [3]),
    .I4(\dvi_tx/encg/cnt [3]),
    .I5(N62),
    .O(N184)
  );
  LUT6 #(
    .INIT ( 64'h24B2DBB2DB4DDBB2 ))
  \dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT1012_G  (
    .I0(\dvi_tx/encg/n0q_m [3]),
    .I1(\dvi_tx/encg/n1q_m [3]),
    .I2(\dvi_tx/encg/Msub_n0233_xor<3>11 ),
    .I3(\dvi_tx/encg/cnt [3]),
    .I4(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT811 ),
    .I5(\dvi_tx/encg/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ),
    .O(N185)
  );
  MUXF7   \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1012  (
    .I0(N186),
    .I1(N187),
    .S(\dvi_tx/encb/decision3_1252 ),
    .O(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT101 )
  );
  LUT6 #(
    .INIT ( 64'h6556A66AA66A9AA9 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1012_F  (
    .I0(\dvi_tx/encb/Msub_n0236_cy [3]),
    .I1(\dvi_tx/encb/Madd_cnt[4]_GND_37_o_add_50_OUT_cy<0>2 ),
    .I2(\dvi_tx/encb/Msub_n0236_xor<3>11_1209 ),
    .I3(\dvi_tx/encb/Msub_n0233_lut [3]),
    .I4(\dvi_tx/encb/cnt [3]),
    .I5(N64),
    .O(N186)
  );
  LUT6 #(
    .INIT ( 64'h24B2DBB2DB4DDBB2 ))
  \dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT1012_G  (
    .I0(\dvi_tx/encb/n0q_m [3]),
    .I1(\dvi_tx/encb/n1q_m [3]),
    .I2(\dvi_tx/encb/Msub_n0233_xor<3>11 ),
    .I3(\dvi_tx/encb/cnt [3]),
    .I4(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT811 ),
    .I5(\dvi_tx/encb/Mmux_GND_37_o_cnt[4]_mux_55_OUT813 ),
    .O(N187)
  );
  INV   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut<0>_INV_0  (
    .I(\dvi_rx1/dec_b/phsalgn_0/ctkn_srh_timer [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_srh_timer_lut [0])
  );
  INV   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut<0>_INV_0  (
    .I(\dvi_rx1/dec_g/phsalgn_0/ctkn_srh_timer [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_srh_timer_lut [0])
  );
  INV   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut<0>_INV_0  (
    .I(\dvi_rx1/dec_r/phsalgn_0/ctkn_srh_timer [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_srh_timer_lut [0])
  );
  INV   rstbtn_n_INV_31_o1_INV_0 (
    .I(rstbtn_n_IBUF_11),
    .O(rstbtn_n_INV_31_o)
  );
  INV   \dvi_rx1/reset1_INV_0  (
    .I(\dvi_rx1/bufpll_lock ),
    .O(rx_reset)
  );
  INV   \dvi_rx1/dec_r/toggle_INV_3_o1_INV_0  (
    .I(\dvi_rx1/dec_r/toggle_271 ),
    .O(\dvi_rx1/dec_r/toggle_INV_3_o )
  );
  INV   \dvi_rx1/dec_b/des_0/counter<8>_inv1_INV_0  (
    .I(\dvi_rx1/dec_b/des_0/counter [8]),
    .O(\dvi_rx1/dec_b/des_0/counter<8>_inv )
  );
  INV   \dvi_rx1/dec_b/des_0/reset_inv1_INV_0  (
    .I(rx_reset),
    .O(\dvi_rx1/dec_b/des_0/reset_inv )
  );
  INV   \dvi_rx1/dec_b/phsalgn_0/Mcount_ctkn_counter_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_b/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_b/phsalgn_0/Result<0>1 )
  );
  INV   \dvi_rx1/dec_g/phsalgn_0/Mcount_ctkn_counter_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_g/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_g/phsalgn_0/Result<0>1 )
  );
  INV   \dvi_rx1/dec_r/phsalgn_0/Mcount_ctkn_counter_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_r/phsalgn_0/ctkn_counter [0]),
    .O(\dvi_rx1/dec_r/phsalgn_0/Result<0>1 )
  );
  INV   \dvi_rx1/dec_b/cbnd/Mcount_ra_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_b/cbnd/ra [0]),
    .O(\dvi_rx1/dec_b/cbnd/Result [0])
  );
  INV   \dvi_rx1/dec_b/cbnd/Mcount_wa_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_b/cbnd/wa [0]),
    .O(\dvi_rx1/dec_b/cbnd/Result<0>1 )
  );
  INV   \dvi_rx1/dec_b/cbnd/rawdata_vld_rawdata_vld_q_AND_23_o_norst1_INV_0  (
    .I(\dvi_rx1/dec_b/cbnd/rawdata_vld_q_735 ),
    .O(\dvi_rx1/dec_b/cbnd/rawdata_vld_rawdata_vld_q_AND_23_o_norst )
  );
  INV   \dvi_rx1/dec_g/cbnd/Mcount_ra_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_g/cbnd/ra [0]),
    .O(\dvi_rx1/dec_g/cbnd/Result [0])
  );
  INV   \dvi_rx1/dec_r/cbnd/Mcount_ra_xor<0>11_INV_0  (
    .I(\dvi_rx1/dec_r/cbnd/ra [0]),
    .O(\dvi_rx1/dec_r/cbnd/Result [0])
  );
  INV   \dvi_tx/toggle_inv1_INV_0  (
    .I(\dvi_tx/toggle_949 ),
    .O(\dvi_tx/toggle_inv )
  );
  INV   \dvi_tx/pixel2x/Mram_ra_d11_INV_0  (
    .I(\dvi_tx/pixel2x/ra [0]),
    .O(\dvi_tx/pixel2x/Mram_ra_d )
  );
  INV   \dvi_tx/pixel2x/Mram_wa_d11_INV_0  (
    .I(\dvi_tx/pixel2x/wa [0]),
    .O(\dvi_tx/pixel2x/Mram_wa_d )
  );
  INV   \dvi_tx/pixel2x/sync_INV_50_o1_INV_0  (
    .I(\dvi_tx/pixel2x/sync ),
    .O(\dvi_tx/pixel2x/sync_INV_50_o )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \rgb2ycbcr_converter/hsync/[5].delay_i/Mshreg_temp_0  (
    .A0(\b_mux<2> [1]),
    .A1(\b_mux<2> [1]),
    .A2(N0),
    .A3(\b_mux<2> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\dvi_rx1/dec_b/c0_42 ),
    .Q(\rgb2ycbcr_converter/hsync/[5].delay_i/Mshreg_temp_0_1632 ),
    .Q15(\NLW_rgb2ycbcr_converter/hsync/[5].delay_i/Mshreg_temp_0_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rgb2ycbcr_converter/hsync/[5].delay_i/temp_0  (
    .C(rx_pclk),
    .CE(N0),
    .D(\rgb2ycbcr_converter/hsync/[5].delay_i/Mshreg_temp_0_1632 ),
    .Q(\rgb2ycbcr_converter/hsync/[5].delay_i/temp_0_99 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \rgb2ycbcr_converter/de/[5].delay_i/Mshreg_temp_0  (
    .A0(\b_mux<2> [1]),
    .A1(\b_mux<2> [1]),
    .A2(N0),
    .A3(\b_mux<2> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\dvi_rx1/dec_b/de_44 ),
    .Q(\rgb2ycbcr_converter/de/[5].delay_i/Mshreg_temp_0_1633 ),
    .Q15(\NLW_rgb2ycbcr_converter/de/[5].delay_i/Mshreg_temp_0_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rgb2ycbcr_converter/de/[5].delay_i/temp_0  (
    .C(rx_pclk),
    .CE(N0),
    .D(\rgb2ycbcr_converter/de/[5].delay_i/Mshreg_temp_0_1633 ),
    .Q(\rgb2ycbcr_converter/de/[5].delay_i/temp_0_101 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \rgb2ycbcr_converter/vsync/[5].delay_i/Mshreg_temp_0  (
    .A0(\b_mux<2> [1]),
    .A1(\b_mux<2> [1]),
    .A2(N0),
    .A3(\b_mux<2> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\dvi_rx1/dec_b/c1_43 ),
    .Q(\rgb2ycbcr_converter/vsync/[5].delay_i/Mshreg_temp_0_1634 ),
    .Q15(\NLW_rgb2ycbcr_converter/vsync/[5].delay_i/Mshreg_temp_0_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rgb2ycbcr_converter/vsync/[5].delay_i/temp_0  (
    .C(rx_pclk),
    .CE(N0),
    .D(\rgb2ycbcr_converter/vsync/[5].delay_i/Mshreg_temp_0_1634 ),
    .Q(\rgb2ycbcr_converter/vsync/[5].delay_i/temp_0_100 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_5  (
    .A0(\b_mux<2> [1]),
    .A1(\b_mux<2> [1]),
    .A2(\b_mux<2> [1]),
    .A3(\b_mux<2> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\rgb2ycbcr_converter/YRGB_output [5]),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_5_1635 ),
    .Q15(\NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_5_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp_5  (
    .C(rx_pclk),
    .CE(N0),
    .D(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_5_1635 ),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<5> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_7  (
    .A0(\b_mux<2> [1]),
    .A1(\b_mux<2> [1]),
    .A2(\b_mux<2> [1]),
    .A3(\b_mux<2> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\rgb2ycbcr_converter/YRGB_output [7]),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_7_1636 ),
    .Q15(\NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_7_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp_7  (
    .C(rx_pclk),
    .CE(N0),
    .D(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_7_1636 ),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<7> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_6  (
    .A0(\b_mux<2> [1]),
    .A1(\b_mux<2> [1]),
    .A2(\b_mux<2> [1]),
    .A3(\b_mux<2> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\rgb2ycbcr_converter/YRGB_output [6]),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_6_1637 ),
    .Q15(\NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_6_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp_6  (
    .C(rx_pclk),
    .CE(N0),
    .D(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_6_1637 ),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<6> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_2  (
    .A0(\b_mux<2> [1]),
    .A1(\b_mux<2> [1]),
    .A2(\b_mux<2> [1]),
    .A3(\b_mux<2> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\rgb2ycbcr_converter/YRGB_output [2]),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_2_1638 ),
    .Q15(\NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_2_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp_2  (
    .C(rx_pclk),
    .CE(N0),
    .D(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_2_1638 ),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<2> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_4  (
    .A0(\b_mux<2> [1]),
    .A1(\b_mux<2> [1]),
    .A2(\b_mux<2> [1]),
    .A3(\b_mux<2> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\rgb2ycbcr_converter/YRGB_output [4]),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_4_1639 ),
    .Q15(\NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_4_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp_4  (
    .C(rx_pclk),
    .CE(N0),
    .D(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_4_1639 ),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<4> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_3  (
    .A0(\b_mux<2> [1]),
    .A1(\b_mux<2> [1]),
    .A2(\b_mux<2> [1]),
    .A3(\b_mux<2> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\rgb2ycbcr_converter/YRGB_output [3]),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_3_1640 ),
    .Q15(\NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_3_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp_3  (
    .C(rx_pclk),
    .CE(N0),
    .D(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_3_1640 ),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<3> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_1  (
    .A0(\b_mux<2> [1]),
    .A1(\b_mux<2> [1]),
    .A2(\b_mux<2> [1]),
    .A3(\b_mux<2> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\rgb2ycbcr_converter/YRGB_output [1]),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_1_1641 ),
    .Q15(\NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_1_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp_1  (
    .C(rx_pclk),
    .CE(N0),
    .D(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_1_1641 ),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<1> )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_0  (
    .A0(\b_mux<2> [1]),
    .A1(\b_mux<2> [1]),
    .A2(\b_mux<2> [1]),
    .A3(\b_mux<2> [1]),
    .CE(N0),
    .CLK(rx_pclk),
    .D(\rgb2ycbcr_converter/YRGB_output [0]),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_0_1642 ),
    .Q15(\NLW_rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_0_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \rgb2ycbcr_converter/Y_delay/[1].delay_i/temp_0  (
    .C(rx_pclk),
    .CE(N0),
    .D(\rgb2ycbcr_converter/Y_delay/[1].delay_i/Mshreg_temp_0_1642 ),
    .Q(\rgb2ycbcr_converter/Y_delay/[1].delay_i/temp<0> )
  );
  PLL_BASE #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLK_FEEDBACK ( "CLKFBOUT" ),
    .COMPENSATION ( "SOURCE_SYNCHRONOUS" ),
    .RESET_ON_LOSS_OF_LOCK ( "FALSE" ),
    .CLKFBOUT_MULT ( 10 ),
    .CLKOUT0_DIVIDE ( 1 ),
    .CLKOUT1_DIVIDE ( 10 ),
    .CLKOUT2_DIVIDE ( 5 ),
    .CLKOUT3_DIVIDE ( 1 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN_PERIOD ( 10 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_PHASE ( 0.000000 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .REF_JITTER ( 0.100000 ))
  PLL_OSERDES_0 (
    .CLKIN(tx_pclk),
    .CLKFBIN(tx_clkfbin),
    .CLKOUT0(tx_pllclk0),
    .CLKFBOUT(tx_clkfbout),
    .CLKOUT2(tx_pllclk2),
    .RST(rx_reset),
    .LOCKED(tx_plllckd),
    .CLKOUT3(NLW_PLL_OSERDES_0_CLKOUT3_UNCONNECTED),
    .CLKOUT1(NLW_PLL_OSERDES_0_CLKOUT1_UNCONNECTED),
    .CLKOUT4(NLW_PLL_OSERDES_0_CLKOUT4_UNCONNECTED),
    .CLKOUT5(NLW_PLL_OSERDES_0_CLKOUT5_UNCONNECTED)
  );
  PLL_BASE #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLK_FEEDBACK ( "CLKFBOUT" ),
    .COMPENSATION ( "INTERNAL" ),
    .RESET_ON_LOSS_OF_LOCK ( "FALSE" ),
    .CLKFBOUT_MULT ( 10 ),
    .CLKOUT0_DIVIDE ( 1 ),
    .CLKOUT1_DIVIDE ( 10 ),
    .CLKOUT2_DIVIDE ( 5 ),
    .CLKOUT3_DIVIDE ( 1 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN_PERIOD ( 10 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_PHASE ( 0.000000 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .REF_JITTER ( 0.100000 ))
  \dvi_rx1/PLL_ISERDES  (
    .CLKIN(\dvi_rx1/rxclk ),
    .CLKOUT1(rx_pllclk1),
    .CLKOUT0(\dvi_rx1/pllclk0 ),
    .CLKOUT2(\dvi_rx1/pllclk2 ),
    .RST(rstbtn_n_INV_31_o),
    .LOCKED(\dvi_rx1/pll_lckd ),
    .CLKFBOUT(\dvi_rx1/clkfbout ),
    .CLKFBIN(\dvi_rx1/clkfbout ),
    .CLKOUT3(\NLW_dvi_rx1/PLL_ISERDES_CLKOUT3_UNCONNECTED ),
    .CLKOUT4(\NLW_dvi_rx1/PLL_ISERDES_CLKOUT4_UNCONNECTED ),
    .CLKOUT5(\NLW_dvi_rx1/PLL_ISERDES_CLKOUT5_UNCONNECTED )
  );
  mull   \rgb2ycbcr_converter/mull_CrB  (
    .clk(rx_pclk),
    .a({\b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], 
\b_mux<2> [1], \dvi_rx1/dec_b/dout [7], \dvi_rx1/dec_b/dout [6], \dvi_rx1/dec_b/dout [5], \dvi_rx1/dec_b/dout [4], \dvi_rx1/dec_b/dout [3], 
\dvi_rx1/dec_b/dout [2], \dvi_rx1/dec_b/dout [1], \dvi_rx1/dec_b/dout [0]}),
    .b({N0, N0, N0, N0, N0, \b_mux<2> [1], N0, \b_mux<2> [1], N0, N0, \b_mux<2> [1], \b_mux<2> [1], N0, \b_mux<2> [1], N0, N0, N0, N0}),
    .p({\NLW_rgb2ycbcr_converter/mull_CrB_p<35>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrB_p<34>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrB_p<33>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrB_p<32>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrB_p<31>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrB_p<30>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrB_p<29>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrB_p<28>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrB_p<27>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrB_p<26>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrB_p<25>_UNCONNECTED , \rgb2ycbcr_converter/CrB [24], \rgb2ycbcr_converter/CrB [23], \rgb2ycbcr_converter/CrB [22], 
\rgb2ycbcr_converter/CrB [21], \rgb2ycbcr_converter/CrB [20], \rgb2ycbcr_converter/CrB [19], \rgb2ycbcr_converter/CrB [18], 
\rgb2ycbcr_converter/CrB [17], \rgb2ycbcr_converter/CrB [16], \NLW_rgb2ycbcr_converter/mull_CrB_p<15>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrB_p<14>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrB_p<13>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrB_p<12>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrB_p<11>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrB_p<10>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrB_p<9>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrB_p<8>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrB_p<7>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrB_p<6>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrB_p<5>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrB_p<4>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrB_p<3>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrB_p<2>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrB_p<1>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrB_p<0>_UNCONNECTED })
  );
  mull   \rgb2ycbcr_converter/mull_CrG  (
    .clk(rx_pclk),
    .a({\b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], 
\b_mux<2> [1], \dvi_rx1/dec_g/dout [7], \dvi_rx1/dec_g/dout [6], \dvi_rx1/dec_g/dout [5], \dvi_rx1/dec_g/dout [4], \dvi_rx1/dec_g/dout [3], 
\dvi_rx1/dec_g/dout [2], \dvi_rx1/dec_g/dout [1], \dvi_rx1/dec_g/dout [0]}),
    .b({N0, N0, N0, \b_mux<2> [1], \b_mux<2> [1], N0, \b_mux<2> [1], N0, \b_mux<2> [1], \b_mux<2> [1], N0, N0, \b_mux<2> [1], N0, \b_mux<2> [1], 
\b_mux<2> [1], \b_mux<2> [1], N0}),
    .p({\NLW_rgb2ycbcr_converter/mull_CrG_p<35>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrG_p<34>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrG_p<33>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrG_p<32>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrG_p<31>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrG_p<30>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrG_p<29>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrG_p<28>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrG_p<27>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrG_p<26>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrG_p<25>_UNCONNECTED , \rgb2ycbcr_converter/CrG [24], \rgb2ycbcr_converter/CrG [23], \rgb2ycbcr_converter/CrG [22], 
\rgb2ycbcr_converter/CrG [21], \rgb2ycbcr_converter/CrG [20], \rgb2ycbcr_converter/CrG [19], \rgb2ycbcr_converter/CrG [18], 
\rgb2ycbcr_converter/CrG [17], \rgb2ycbcr_converter/CrG [16], \NLW_rgb2ycbcr_converter/mull_CrG_p<15>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrG_p<14>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrG_p<13>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrG_p<12>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrG_p<11>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrG_p<10>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrG_p<9>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrG_p<8>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrG_p<7>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrG_p<6>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrG_p<5>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrG_p<4>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrG_p<3>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrG_p<2>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrG_p<1>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrG_p<0>_UNCONNECTED })
  );
  mull   \rgb2ycbcr_converter/mull_CrR  (
    .clk(rx_pclk),
    .a({\b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], 
\b_mux<2> [1], \dvi_rx1/dec_r/dout [7], \dvi_rx1/dec_r/dout [6], \dvi_rx1/dec_r/dout [5], \dvi_rx1/dec_r/dout [4], \dvi_rx1/dec_r/dout [3], 
\dvi_rx1/dec_r/dout [2], \dvi_rx1/dec_r/dout [1], \dvi_rx1/dec_r/dout [0]}),
    .b({\b_mux<2> [1], \b_mux<2> [1], N0, \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], 
\b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1]}),
    .p({\NLW_rgb2ycbcr_converter/mull_CrR_p<35>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrR_p<34>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrR_p<33>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrR_p<32>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrR_p<31>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrR_p<30>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrR_p<29>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrR_p<28>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrR_p<27>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrR_p<26>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrR_p<25>_UNCONNECTED , \rgb2ycbcr_converter/CrR [24], \rgb2ycbcr_converter/CrR [23], \rgb2ycbcr_converter/CrR [22], 
\rgb2ycbcr_converter/CrR [21], \rgb2ycbcr_converter/CrR [20], \rgb2ycbcr_converter/CrR [19], \rgb2ycbcr_converter/CrR [18], 
\rgb2ycbcr_converter/CrR [17], \rgb2ycbcr_converter/CrR [16], \NLW_rgb2ycbcr_converter/mull_CrR_p<15>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrR_p<14>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrR_p<13>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrR_p<12>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrR_p<11>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrR_p<10>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrR_p<9>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrR_p<8>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrR_p<7>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrR_p<6>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrR_p<5>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrR_p<4>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrR_p<3>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrR_p<2>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CrR_p<1>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CrR_p<0>_UNCONNECTED })
  );
  mull   \rgb2ycbcr_converter/mull_CbB  (
    .clk(rx_pclk),
    .a({\b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], 
\b_mux<2> [1], \dvi_rx1/dec_b/dout [7], \dvi_rx1/dec_b/dout [6], \dvi_rx1/dec_b/dout [5], \dvi_rx1/dec_b/dout [4], \dvi_rx1/dec_b/dout [3], 
\dvi_rx1/dec_b/dout [2], \dvi_rx1/dec_b/dout [1], \dvi_rx1/dec_b/dout [0]}),
    .b({\b_mux<2> [1], \b_mux<2> [1], N0, \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], 
\b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1]}),
    .p({\NLW_rgb2ycbcr_converter/mull_CbB_p<35>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbB_p<34>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbB_p<33>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbB_p<32>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbB_p<31>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbB_p<30>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbB_p<29>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbB_p<28>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbB_p<27>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbB_p<26>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbB_p<25>_UNCONNECTED , \rgb2ycbcr_converter/CbB [24], \rgb2ycbcr_converter/CbB [23], \rgb2ycbcr_converter/CbB [22], 
\rgb2ycbcr_converter/CbB [21], \rgb2ycbcr_converter/CbB [20], \rgb2ycbcr_converter/CbB [19], \rgb2ycbcr_converter/CbB [18], 
\rgb2ycbcr_converter/CbB [17], \rgb2ycbcr_converter/CbB [16], \NLW_rgb2ycbcr_converter/mull_CbB_p<15>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbB_p<14>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbB_p<13>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbB_p<12>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbB_p<11>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbB_p<10>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbB_p<9>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbB_p<8>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbB_p<7>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbB_p<6>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbB_p<5>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbB_p<4>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbB_p<3>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbB_p<2>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbB_p<1>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbB_p<0>_UNCONNECTED })
  );
  mull   \rgb2ycbcr_converter/mull_CbG  (
    .clk(rx_pclk),
    .a({\b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], 
\b_mux<2> [1], \dvi_rx1/dec_g/dout [7], \dvi_rx1/dec_g/dout [6], \dvi_rx1/dec_g/dout [5], \dvi_rx1/dec_g/dout [4], \dvi_rx1/dec_g/dout [3], 
\dvi_rx1/dec_g/dout [2], \dvi_rx1/dec_g/dout [1], \dvi_rx1/dec_g/dout [0]}),
    .b({N0, N0, N0, \b_mux<2> [1], N0, \b_mux<2> [1], N0, \b_mux<2> [1], N0, N0, \b_mux<2> [1], \b_mux<2> [1], N0, N0, \b_mux<2> [1], \b_mux<2> [1], 
N0, \b_mux<2> [1]}),
    .p({\NLW_rgb2ycbcr_converter/mull_CbG_p<35>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbG_p<34>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbG_p<33>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbG_p<32>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbG_p<31>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbG_p<30>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbG_p<29>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbG_p<28>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbG_p<27>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbG_p<26>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbG_p<25>_UNCONNECTED , \rgb2ycbcr_converter/CbG [24], \rgb2ycbcr_converter/CbG [23], \rgb2ycbcr_converter/CbG [22], 
\rgb2ycbcr_converter/CbG [21], \rgb2ycbcr_converter/CbG [20], \rgb2ycbcr_converter/CbG [19], \rgb2ycbcr_converter/CbG [18], 
\rgb2ycbcr_converter/CbG [17], \rgb2ycbcr_converter/CbG [16], \NLW_rgb2ycbcr_converter/mull_CbG_p<15>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbG_p<14>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbG_p<13>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbG_p<12>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbG_p<11>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbG_p<10>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbG_p<9>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbG_p<8>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbG_p<7>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbG_p<6>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbG_p<5>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbG_p<4>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbG_p<3>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbG_p<2>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbG_p<1>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbG_p<0>_UNCONNECTED })
  );
  mull   \rgb2ycbcr_converter/mull_CbR  (
    .clk(rx_pclk),
    .a({\b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], 
\b_mux<2> [1], \dvi_rx1/dec_r/dout [7], \dvi_rx1/dec_r/dout [6], \dvi_rx1/dec_r/dout [5], \dvi_rx1/dec_r/dout [4], \dvi_rx1/dec_r/dout [3], 
\dvi_rx1/dec_r/dout [2], \dvi_rx1/dec_r/dout [1], \dvi_rx1/dec_r/dout [0]}),
    .b({N0, N0, N0, N0, \b_mux<2> [1], N0, \b_mux<2> [1], N0, \b_mux<2> [1], \b_mux<2> [1], N0, N0, \b_mux<2> [1], \b_mux<2> [1], N0, N0, N0, 
\b_mux<2> [1]}),
    .p({\NLW_rgb2ycbcr_converter/mull_CbR_p<35>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbR_p<34>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbR_p<33>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbR_p<32>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbR_p<31>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbR_p<30>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbR_p<29>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbR_p<28>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbR_p<27>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbR_p<26>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbR_p<25>_UNCONNECTED , \rgb2ycbcr_converter/CbR [24], \rgb2ycbcr_converter/CbR [23], \rgb2ycbcr_converter/CbR [22], 
\rgb2ycbcr_converter/CbR [21], \rgb2ycbcr_converter/CbR [20], \rgb2ycbcr_converter/CbR [19], \rgb2ycbcr_converter/CbR [18], 
\rgb2ycbcr_converter/CbR [17], \rgb2ycbcr_converter/CbR [16], \NLW_rgb2ycbcr_converter/mull_CbR_p<15>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbR_p<14>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbR_p<13>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbR_p<12>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbR_p<11>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbR_p<10>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbR_p<9>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbR_p<8>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbR_p<7>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbR_p<6>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbR_p<5>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbR_p<4>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbR_p<3>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbR_p<2>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_CbR_p<1>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_CbR_p<0>_UNCONNECTED })
  );
  mull   \rgb2ycbcr_converter/mull_YB  (
    .clk(rx_pclk),
    .a({\b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], 
\b_mux<2> [1], \dvi_rx1/dec_b/dout [7], \dvi_rx1/dec_b/dout [6], \dvi_rx1/dec_b/dout [5], \dvi_rx1/dec_b/dout [4], \dvi_rx1/dec_b/dout [3], 
\dvi_rx1/dec_b/dout [2], \dvi_rx1/dec_b/dout [1], \dvi_rx1/dec_b/dout [0]}),
    .b({\b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], N0, N0, N0, \b_mux<2> [1], N0, \b_mux<2> [1], \b_mux<2> [1], N0, 
\b_mux<2> [1], N0, N0, N0, N0}),
    .p({\NLW_rgb2ycbcr_converter/mull_YB_p<35>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YB_p<34>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YB_p<33>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YB_p<32>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YB_p<31>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YB_p<30>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YB_p<29>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YB_p<28>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YB_p<27>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YB_p<26>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YB_p<25>_UNCONNECTED , \rgb2ycbcr_converter/YB [24], \rgb2ycbcr_converter/YB [23], \rgb2ycbcr_converter/YB [22], 
\rgb2ycbcr_converter/YB [21], \rgb2ycbcr_converter/YB [20], \rgb2ycbcr_converter/YB [19], \rgb2ycbcr_converter/YB [18], \rgb2ycbcr_converter/YB [17], 
\rgb2ycbcr_converter/YB [16], \NLW_rgb2ycbcr_converter/mull_YB_p<15>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YB_p<14>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YB_p<13>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YB_p<12>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YB_p<11>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YB_p<10>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YB_p<9>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YB_p<8>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YB_p<7>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YB_p<6>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YB_p<5>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YB_p<4>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YB_p<3>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YB_p<2>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YB_p<1>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YB_p<0>_UNCONNECTED })
  );
  mull   \rgb2ycbcr_converter/mull_YG  (
    .clk(rx_pclk),
    .a({\b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], 
\b_mux<2> [1], \dvi_rx1/dec_g/dout [7], \dvi_rx1/dec_g/dout [6], \dvi_rx1/dec_g/dout [5], \dvi_rx1/dec_g/dout [4], \dvi_rx1/dec_g/dout [3], 
\dvi_rx1/dec_g/dout [2], \dvi_rx1/dec_g/dout [1], \dvi_rx1/dec_g/dout [0]}),
    .b({\b_mux<2> [1], \b_mux<2> [1], N0, \b_mux<2> [1], \b_mux<2> [1], N0, \b_mux<2> [1], N0, N0, \b_mux<2> [1], \b_mux<2> [1], N0, \b_mux<2> [1], 
\b_mux<2> [1], \b_mux<2> [1], N0, N0, \b_mux<2> [1]}),
    .p({\NLW_rgb2ycbcr_converter/mull_YG_p<35>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YG_p<34>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YG_p<33>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YG_p<32>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YG_p<31>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YG_p<30>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YG_p<29>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YG_p<28>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YG_p<27>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YG_p<26>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YG_p<25>_UNCONNECTED , \rgb2ycbcr_converter/YG [24], \rgb2ycbcr_converter/YG [23], \rgb2ycbcr_converter/YG [22], 
\rgb2ycbcr_converter/YG [21], \rgb2ycbcr_converter/YG [20], \rgb2ycbcr_converter/YG [19], \rgb2ycbcr_converter/YG [18], \rgb2ycbcr_converter/YG [17], 
\rgb2ycbcr_converter/YG [16], \NLW_rgb2ycbcr_converter/mull_YG_p<15>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YG_p<14>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YG_p<13>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YG_p<12>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YG_p<11>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YG_p<10>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YG_p<9>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YG_p<8>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YG_p<7>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YG_p<6>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YG_p<5>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YG_p<4>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YG_p<3>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YG_p<2>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YG_p<1>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YG_p<0>_UNCONNECTED })
  );
  mull   \rgb2ycbcr_converter/mull_YR  (
    .clk(rx_pclk),
    .a({\b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], 
\b_mux<2> [1], \dvi_rx1/dec_r/dout [7], \dvi_rx1/dec_r/dout [6], \dvi_rx1/dec_r/dout [5], \dvi_rx1/dec_r/dout [4], \dvi_rx1/dec_r/dout [3], 
\dvi_rx1/dec_r/dout [2], \dvi_rx1/dec_r/dout [1], \dvi_rx1/dec_r/dout [0]}),
    .b({\b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], N0, \b_mux<2> [1], \b_mux<2> [1], N0, N0, \b_mux<2> [1], \b_mux<2> [1], N0, \b_mux<2> [1], 
\b_mux<2> [1], \b_mux<2> [1], N0, \b_mux<2> [1], N0, N0}),
    .p({\NLW_rgb2ycbcr_converter/mull_YR_p<35>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YR_p<34>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YR_p<33>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YR_p<32>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YR_p<31>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YR_p<30>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YR_p<29>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YR_p<28>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YR_p<27>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YR_p<26>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YR_p<25>_UNCONNECTED , \rgb2ycbcr_converter/YR [24], \rgb2ycbcr_converter/YR [23], \rgb2ycbcr_converter/YR [22], 
\rgb2ycbcr_converter/YR [21], \rgb2ycbcr_converter/YR [20], \rgb2ycbcr_converter/YR [19], \rgb2ycbcr_converter/YR [18], \rgb2ycbcr_converter/YR [17], 
\rgb2ycbcr_converter/YR [16], \NLW_rgb2ycbcr_converter/mull_YR_p<15>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YR_p<14>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YR_p<13>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YR_p<12>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YR_p<11>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YR_p<10>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YR_p<9>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YR_p<8>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YR_p<7>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YR_p<6>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YR_p<5>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YR_p<4>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YR_p<3>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YR_p<2>_UNCONNECTED , 
\NLW_rgb2ycbcr_converter/mull_YR_p<1>_UNCONNECTED , \NLW_rgb2ycbcr_converter/mull_YR_p<0>_UNCONNECTED })
  );
  sum   \rgb2ycbcr_converter/Cr_RGB_total  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\rgb2ycbcr_converter/CrRGB_output [8], \rgb2ycbcr_converter/CrRGB_output [7], \rgb2ycbcr_converter/CrRGB_output [6], 
\rgb2ycbcr_converter/CrRGB_output [5], \rgb2ycbcr_converter/CrRGB_output [4], \rgb2ycbcr_converter/CrRGB_output [3], 
\rgb2ycbcr_converter/CrRGB_output [2], \rgb2ycbcr_converter/CrRGB_output [1], \rgb2ycbcr_converter/CrRGB_output [0]}),
    .b({\b_mux<2> [1], N0, \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1]}),
    .s({\NLW_rgb2ycbcr_converter/Cr_RGB_total_s<8>_UNCONNECTED , \b_mux<1> [7], \b_mux<1> [6], \b_mux<1> [5], \b_mux<1> [4], \b_mux<1> [3], 
\b_mux<1> [2], \b_mux<1> [1], \b_mux<1> [0]})
  );
  sum   \rgb2ycbcr_converter/Cr_RGB  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\rgb2ycbcr_converter/CrRG_output [8], \rgb2ycbcr_converter/CrRG_output [7], \rgb2ycbcr_converter/CrRG_output [6], 
\rgb2ycbcr_converter/CrRG_output [5], \rgb2ycbcr_converter/CrRG_output [4], \rgb2ycbcr_converter/CrRG_output [3], \rgb2ycbcr_converter/CrRG_output [2]
, \rgb2ycbcr_converter/CrRG_output [1], \rgb2ycbcr_converter/CrRG_output [0]}),
    .b({\rgb2ycbcr_converter/CrB [24], \rgb2ycbcr_converter/CrB [23], \rgb2ycbcr_converter/CrB [22], \rgb2ycbcr_converter/CrB [21], 
\rgb2ycbcr_converter/CrB [20], \rgb2ycbcr_converter/CrB [19], \rgb2ycbcr_converter/CrB [18], \rgb2ycbcr_converter/CrB [17], 
\rgb2ycbcr_converter/CrB [16]}),
    .s({\rgb2ycbcr_converter/CrRGB_output [8], \rgb2ycbcr_converter/CrRGB_output [7], \rgb2ycbcr_converter/CrRGB_output [6], 
\rgb2ycbcr_converter/CrRGB_output [5], \rgb2ycbcr_converter/CrRGB_output [4], \rgb2ycbcr_converter/CrRGB_output [3], 
\rgb2ycbcr_converter/CrRGB_output [2], \rgb2ycbcr_converter/CrRGB_output [1], \rgb2ycbcr_converter/CrRGB_output [0]})
  );
  sum   \rgb2ycbcr_converter/Cr_RG  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\rgb2ycbcr_converter/CrR [24], \rgb2ycbcr_converter/CrR [23], \rgb2ycbcr_converter/CrR [22], \rgb2ycbcr_converter/CrR [21], 
\rgb2ycbcr_converter/CrR [20], \rgb2ycbcr_converter/CrR [19], \rgb2ycbcr_converter/CrR [18], \rgb2ycbcr_converter/CrR [17], 
\rgb2ycbcr_converter/CrR [16]}),
    .b({\rgb2ycbcr_converter/CrG [24], \rgb2ycbcr_converter/CrG [23], \rgb2ycbcr_converter/CrG [22], \rgb2ycbcr_converter/CrG [21], 
\rgb2ycbcr_converter/CrG [20], \rgb2ycbcr_converter/CrG [19], \rgb2ycbcr_converter/CrG [18], \rgb2ycbcr_converter/CrG [17], 
\rgb2ycbcr_converter/CrG [16]}),
    .s({\rgb2ycbcr_converter/CrRG_output [8], \rgb2ycbcr_converter/CrRG_output [7], \rgb2ycbcr_converter/CrRG_output [6], 
\rgb2ycbcr_converter/CrRG_output [5], \rgb2ycbcr_converter/CrRG_output [4], \rgb2ycbcr_converter/CrRG_output [3], \rgb2ycbcr_converter/CrRG_output [2]
, \rgb2ycbcr_converter/CrRG_output [1], \rgb2ycbcr_converter/CrRG_output [0]})
  );
  sum   \rgb2ycbcr_converter/Cb_RGB_total  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\rgb2ycbcr_converter/CbRGB_output [8], \rgb2ycbcr_converter/CbRGB_output [7], \rgb2ycbcr_converter/CbRGB_output [6], 
\rgb2ycbcr_converter/CbRGB_output [5], \rgb2ycbcr_converter/CbRGB_output [4], \rgb2ycbcr_converter/CbRGB_output [3], 
\rgb2ycbcr_converter/CbRGB_output [2], \rgb2ycbcr_converter/CbRGB_output [1], \rgb2ycbcr_converter/CbRGB_output [0]}),
    .b({\b_mux<2> [1], N0, \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1], \b_mux<2> [1]}),
    .s({\NLW_rgb2ycbcr_converter/Cb_RGB_total_s<8>_UNCONNECTED , \g_mux<1> [7], \g_mux<1> [6], \g_mux<1> [5], \g_mux<1> [4], \g_mux<1> [3], 
\g_mux<1> [2], \g_mux<1> [1], \g_mux<1> [0]})
  );
  sum   \rgb2ycbcr_converter/Cb_RGB  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\rgb2ycbcr_converter/CbRG_output [8], \rgb2ycbcr_converter/CbRG_output [7], \rgb2ycbcr_converter/CbRG_output [6], 
\rgb2ycbcr_converter/CbRG_output [5], \rgb2ycbcr_converter/CbRG_output [4], \rgb2ycbcr_converter/CbRG_output [3], \rgb2ycbcr_converter/CbRG_output [2]
, \rgb2ycbcr_converter/CbRG_output [1], \rgb2ycbcr_converter/CbRG_output [0]}),
    .b({\rgb2ycbcr_converter/CbB [24], \rgb2ycbcr_converter/CbB [23], \rgb2ycbcr_converter/CbB [22], \rgb2ycbcr_converter/CbB [21], 
\rgb2ycbcr_converter/CbB [20], \rgb2ycbcr_converter/CbB [19], \rgb2ycbcr_converter/CbB [18], \rgb2ycbcr_converter/CbB [17], 
\rgb2ycbcr_converter/CbB [16]}),
    .s({\rgb2ycbcr_converter/CbRGB_output [8], \rgb2ycbcr_converter/CbRGB_output [7], \rgb2ycbcr_converter/CbRGB_output [6], 
\rgb2ycbcr_converter/CbRGB_output [5], \rgb2ycbcr_converter/CbRGB_output [4], \rgb2ycbcr_converter/CbRGB_output [3], 
\rgb2ycbcr_converter/CbRGB_output [2], \rgb2ycbcr_converter/CbRGB_output [1], \rgb2ycbcr_converter/CbRGB_output [0]})
  );
  sum   \rgb2ycbcr_converter/Cb_RG  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\rgb2ycbcr_converter/CbR [24], \rgb2ycbcr_converter/CbR [23], \rgb2ycbcr_converter/CbR [22], \rgb2ycbcr_converter/CbR [21], 
\rgb2ycbcr_converter/CbR [20], \rgb2ycbcr_converter/CbR [19], \rgb2ycbcr_converter/CbR [18], \rgb2ycbcr_converter/CbR [17], 
\rgb2ycbcr_converter/CbR [16]}),
    .b({\rgb2ycbcr_converter/CbG [24], \rgb2ycbcr_converter/CbG [23], \rgb2ycbcr_converter/CbG [22], \rgb2ycbcr_converter/CbG [21], 
\rgb2ycbcr_converter/CbG [20], \rgb2ycbcr_converter/CbG [19], \rgb2ycbcr_converter/CbG [18], \rgb2ycbcr_converter/CbG [17], 
\rgb2ycbcr_converter/CbG [16]}),
    .s({\rgb2ycbcr_converter/CbRG_output [8], \rgb2ycbcr_converter/CbRG_output [7], \rgb2ycbcr_converter/CbRG_output [6], 
\rgb2ycbcr_converter/CbRG_output [5], \rgb2ycbcr_converter/CbRG_output [4], \rgb2ycbcr_converter/CbRG_output [3], \rgb2ycbcr_converter/CbRG_output [2]
, \rgb2ycbcr_converter/CbRG_output [1], \rgb2ycbcr_converter/CbRG_output [0]})
  );
  sum   \rgb2ycbcr_converter/Y_RGB  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\rgb2ycbcr_converter/YRG_output [8], \rgb2ycbcr_converter/YRG_output [7], \rgb2ycbcr_converter/YRG_output [6], 
\rgb2ycbcr_converter/YRG_output [5], \rgb2ycbcr_converter/YRG_output [4], \rgb2ycbcr_converter/YRG_output [3], \rgb2ycbcr_converter/YRG_output [2], 
\rgb2ycbcr_converter/YRG_output [1], \rgb2ycbcr_converter/YRG_output [0]}),
    .b({\rgb2ycbcr_converter/YB [24], \rgb2ycbcr_converter/YB [23], \rgb2ycbcr_converter/YB [22], \rgb2ycbcr_converter/YB [21], 
\rgb2ycbcr_converter/YB [20], \rgb2ycbcr_converter/YB [19], \rgb2ycbcr_converter/YB [18], \rgb2ycbcr_converter/YB [17], \rgb2ycbcr_converter/YB [16]})
,
    .s({\NLW_rgb2ycbcr_converter/Y_RGB_s<8>_UNCONNECTED , \rgb2ycbcr_converter/YRGB_output [7], \rgb2ycbcr_converter/YRGB_output [6], 
\rgb2ycbcr_converter/YRGB_output [5], \rgb2ycbcr_converter/YRGB_output [4], \rgb2ycbcr_converter/YRGB_output [3], \rgb2ycbcr_converter/YRGB_output [2]
, \rgb2ycbcr_converter/YRGB_output [1], \rgb2ycbcr_converter/YRGB_output [0]})
  );
  sum   \rgb2ycbcr_converter/Y_RG  (
    .clk(rx_pclk),
    .ce(N0),
    .a({\rgb2ycbcr_converter/YR [24], \rgb2ycbcr_converter/YR [23], \rgb2ycbcr_converter/YR [22], \rgb2ycbcr_converter/YR [21], 
\rgb2ycbcr_converter/YR [20], \rgb2ycbcr_converter/YR [19], \rgb2ycbcr_converter/YR [18], \rgb2ycbcr_converter/YR [17], \rgb2ycbcr_converter/YR [16]})
,
    .b({\rgb2ycbcr_converter/YG [24], \rgb2ycbcr_converter/YG [23], \rgb2ycbcr_converter/YG [22], \rgb2ycbcr_converter/YG [21], 
\rgb2ycbcr_converter/YG [20], \rgb2ycbcr_converter/YG [19], \rgb2ycbcr_converter/YG [18], \rgb2ycbcr_converter/YG [17], \rgb2ycbcr_converter/YG [16]})
,
    .s({\rgb2ycbcr_converter/YRG_output [8], \rgb2ycbcr_converter/YRG_output [7], \rgb2ycbcr_converter/YRG_output [6], 
\rgb2ycbcr_converter/YRG_output [5], \rgb2ycbcr_converter/YRG_output [4], \rgb2ycbcr_converter/YRG_output [3], \rgb2ycbcr_converter/YRG_output [2], 
\rgb2ycbcr_converter/YRG_output [1], \rgb2ycbcr_converter/YRG_output [0]})
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
