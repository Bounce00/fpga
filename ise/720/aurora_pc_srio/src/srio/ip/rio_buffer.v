////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.61xd
//  \   \         Application: netgen
//  /   /         Filename: rio_buffer.v
// /___/   /\     Timestamp: Thu Jul 11 09:50:29 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog E:/sriox4_3125/tmp/_cg/srio_v5_6/rio_buffer.ngc E:/sriox4_3125/tmp/_cg/srio_v5_6/rio_buffer.v 
// Device	: xc6vsx315t-ff1156-2
// Input file	: E:/sriox4_3125/tmp/_cg/srio_v5_6/rio_buffer.ngc
// Output file	: E:/sriox4_3125/tmp/_cg/srio_v5_6/rio_buffer.v
// # of Modules	: 1
// Design Name	: rio_buffer
// Xilinx        : C:\Xilinx\13.2\ISE_DS\ISE\
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

module rio_buffer (
  PHY_CLK, LOG_CLK, MGT_CLK, PHY_RST_N, LOG_RST_N, MGT_RST_N, TX_SOF_N_O, TX_VLD_N_O, TX_EOF_N_O, TX_DSC_N_O, TX_CRF_O, TX_RESPONSE_O, RX_RDY_N_O, 
PCFG_MASTER_ENABLE, LNK_TDST_RDY_N, LNK_TDST_DSC_N, LNK_RSOF_N, LNK_REOF_N, LNK_RSRC_RDY_N, LNK_RSRC_DSC_N, LNK_RCRF, MGT_RD_N, MGT_SEL_N, TX_RDY_N_I
, TX_RESP_ONLY_I, RX_SOF_N_I, RX_EOF_N_I, RX_VLD_N_I, RX_CRF_I, LNK_TCRF, LNK_TEOF_N, LNK_TSOF_N, LNK_TSRC_RDY_N, LNK_TSRC_DSC_N, LNK_RDST_DSC_N, 
LNK_RDST_RDY_N, MGT_RDY_N, TX_DATA_O, TX_REM_O, LNK_TLAST_ACK, LNK_TNEXT_FM, LNK_RX_BUF_STAT, LNK_RREM, LNK_RD, MGT_WR_N, MGT_A, MGT_DI, RX_REM_I, 
RX_DATA_I, LNK_TD, LNK_TREM, LNK_BUF_STAT, CFG_IN, MGT_DO
)/* synthesis syn_black_box syn_noprune=1 */;
  input PHY_CLK;
  input LOG_CLK;
  input MGT_CLK;
  input PHY_RST_N;
  input LOG_RST_N;
  input MGT_RST_N;
  input TX_SOF_N_O;
  input TX_VLD_N_O;
  input TX_EOF_N_O;
  input TX_DSC_N_O;
  input TX_CRF_O;
  input TX_RESPONSE_O;
  input RX_RDY_N_O;
  input PCFG_MASTER_ENABLE;
  input LNK_TDST_RDY_N;
  input LNK_TDST_DSC_N;
  input LNK_RSOF_N;
  input LNK_REOF_N;
  input LNK_RSRC_RDY_N;
  input LNK_RSRC_DSC_N;
  input LNK_RCRF;
  input MGT_RD_N;
  input MGT_SEL_N;
  output TX_RDY_N_I;
  output TX_RESP_ONLY_I;
  output RX_SOF_N_I;
  output RX_EOF_N_I;
  output RX_VLD_N_I;
  output RX_CRF_I;
  output LNK_TCRF;
  output LNK_TEOF_N;
  output LNK_TSOF_N;
  output LNK_TSRC_RDY_N;
  output LNK_TSRC_DSC_N;
  output LNK_RDST_DSC_N;
  output LNK_RDST_RDY_N;
  output MGT_RDY_N;
  input [0 : 63] TX_DATA_O;
  input [0 : 1] TX_REM_O;
  input [0 : 4] LNK_TLAST_ACK;
  input [0 : 4] LNK_TNEXT_FM;
  input [0 : 4] LNK_RX_BUF_STAT;
  input [0 : 2] LNK_RREM;
  input [0 : 63] LNK_RD;
  input [0 : 3] MGT_WR_N;
  input [0 : 11] MGT_A;
  input [0 : 31] MGT_DI;
  output [0 : 2] RX_REM_I;
  output [0 : 63] RX_DATA_I;
  output [0 : 63] LNK_TD;
  output [0 : 2] LNK_TREM;
  output [0 : 4] LNK_BUF_STAT;
  output [0 : 63] CFG_IN;
  output [0 : 31] MGT_DO;
  
  // synthesis translate_off
  
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[2] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[11] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[12] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[13] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[14] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[15] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[16] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[19] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[20] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[21] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[22] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[23] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[27] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[28] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[29] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[30] ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_do[31] ;
  wire NlwRenamedSig_OI_TX_RDY_N_I;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_crf_361 ;
  wire NlwRenamedSig_OI_LNK_TEOF_N;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n ;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n ;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n ;
  wire \NlwRenamedSig_OI_U0/buffer_top_inst/cfg_inst/MGT_rdy_n ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_force_rx_fc_372 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_388 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/clr_cond<0>2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/clr_cond<4>2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/clr_cond<10>2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/clr_cond<12>2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mmux_rd_priority[0]_rx_prio_adjust[0]_mux_159_OUT_rs_lut<0> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<4> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<3> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<1> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<0> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Madd_bram_waddr_l_q[0]_GND_9_o_add_14_OUT_cy<3> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LCFG_wm2[0]_link_free_buffer[0]_LessThan_233_o1_462 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LCFG_wm1[0]_link_free_buffer[0]_LessThan_234_o1_463 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LCFG_wm0[0]_link_free_buffer[0]_LessThan_235_o1_464 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1647_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1641_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1653_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1635_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>9 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mcount_bram_raddr_l_val ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>8 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>8 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>8 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>8 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>8 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1665_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>7 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>7 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>7 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>7 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>7 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1662_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>6 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>6 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>6 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>6 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>6 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/n0528_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>5 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>5 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>5 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>5 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>5 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1656_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>4 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1659_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>3 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<4>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<3>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<2>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<1>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Result<0>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd2_542 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd1-In ;
  wire \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd2-In ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1618_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_tdst_rdy_n_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1671_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1694_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_reduce_or_282_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_rd ;
  wire \U0/buffer_top_inst/tx_buffer_inst/set_update_window ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_full ;
  wire \U0/buffer_top_inst/tx_buffer_inst/resp_retry_backup_queue_update[0]_MUX_315_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_priority[0]_rx_prio_adjust[0]_mux_159_OUT<1> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tag_marker[0]_LNK_tsof_n_OR_90_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/existing_priority[0]_tx_prio_adjust[0]_LessThan_338_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_we ;
  wire \U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ;
  wire \U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_dst_rdy_n_AND_49_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_rd_tag_ack_q_partial_OR_147_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/eval_for_backup ;
  wire \U0/buffer_top_inst/tx_buffer_inst/update_window_raw ;
  wire \U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<0> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<1> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<2> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<3> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<4> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_B<0> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/update_window ;
  wire \U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_transmitting_resp_AND_318_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/req1_pending_614 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/req0_pending_615 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_existing_priority[0]_AND_320_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_lnk_tdst_dsc_n_q_AND_282_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_current_ack_tag_d[0]_AND_241_o_618 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_update_window_raw_AND_261_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tag_set_resp_retry_AND_235_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tag_marker[0]_rs_read_tag[0]_equal_148_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio2_mask ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio1_mask ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio0_mask ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<0> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<1> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<2> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<3> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_load_backup_d_AND_288_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/n0357 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_tbuf_stat[0]_reduce_nand_231_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/syn_tx_eof_n_syn_tx_src_dsc_n_AND_56_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1551 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1547 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/resp_retry_653 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_654 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_655 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_656 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tag_search_657 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_15_658 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_14_659 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_13_660 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_12_661 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_11_662 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_10_663 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_9_664 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_8_665 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_7_666 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_6_667 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_5_668 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_4_669 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_3_670 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_2_671 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_1_672 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_0_673 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_716 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_719 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_720 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_721 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd1_730 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_736 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/transmit_enable_1_737 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/update_window_qq_738 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/update_window_raw_q_739 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/update_window_q_740 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_741 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/load_backup_d_742 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_q_743 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/load_backup_q_744 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_746 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_747 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_raw_748 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_749 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_750 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/syn_tx_response_q_751 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/eof_event_752 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pcfg_master_en_q_757 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_q_763 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tag_set_764 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_early ;
  wire \U0/buffer_top_inst/tx_buffer_inst/n0568 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/n0528 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut[3] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut[1] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut[0] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/_n0093_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_893 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_918 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_rd_en ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_comb ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_comb ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_936 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d2_937 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d1_938 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_939 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d2_940 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d1_941 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_942 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_3_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_966 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.vld_window ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBLD_tx_sof_n_TBUF_dst_rdy_n_AND_31_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/log_packet_ack_n_GND_10_o_MUX_106_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBLD_tx_eof_n_TBUF_dst_rdy_n_OR_12_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_988 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.eof_valid_q_989 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.vld_window_q_990 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_i_993 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_994 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[3]_GND_27_o_add_0_OUT<1> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[3]_GND_27_o_add_0_OUT<2> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[3]_GND_27_o_add_0_OUT<3> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/going_empty_fwft_leaving_empty_fwft_OR_5_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1144 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_fb_1145 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_9_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count[3]_GND_36_o_add_0_OUT<2> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count[3]_GND_36_o_add_0_OUT<3> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[3]_reduce_xor_5_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[3]_reduce_xor_4_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[3]_reduce_xor_12_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[3]_reduce_xor_11_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/RD_PNTR[0]_RD_PNTR[1]_XOR_12_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/RD_PNTR[1]_RD_PNTR[2]_XOR_11_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/RD_PNTR[2]_RD_PNTR[3]_XOR_10_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/WR_PNTR[0]_WR_PNTR[1]_XOR_3_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/WR_PNTR[1]_WR_PNTR[2]_XOR_2_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/WR_PNTR[2]_WR_PNTR[3]_XOR_1_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[3]_reduce_xor_6_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[3]_reduce_xor_13_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[4]_GND_49_o_add_0_OUT<1> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[4]_GND_49_o_add_0_OUT<2> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[4]_GND_49_o_add_0_OUT<3> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[4]_GND_49_o_add_0_OUT<4> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count[4]_GND_55_o_add_0_OUT<1> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count[4]_GND_55_o_add_0_OUT<2> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count[4]_GND_55_o_add_0_OUT<3> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count[4]_GND_55_o_add_0_OUT<4> ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_6_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_5_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_4_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_14_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_13_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_12_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/RD_PNTR[0]_RD_PNTR[1]_XOR_30_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/RD_PNTR[1]_RD_PNTR[2]_XOR_29_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/RD_PNTR[2]_RD_PNTR[3]_XOR_28_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/RD_PNTR[3]_RD_PNTR[4]_XOR_27_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/WR_PNTR[0]_WR_PNTR[1]_XOR_22_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/WR_PNTR[1]_WR_PNTR[2]_XOR_21_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/WR_PNTR[2]_WR_PNTR[3]_XOR_20_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/WR_PNTR[3]_WR_PNTR[4]_XOR_19_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_7_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_15_o ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[68] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[67] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[65] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[64] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[63] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[62] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[61] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[60] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[59] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[58] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[57] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[56] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[55] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[54] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[53] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[52] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[51] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[50] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[49] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[48] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[47] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[46] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[45] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[44] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[43] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[42] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[41] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[40] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[39] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[38] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[37] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[36] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[35] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[34] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[33] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[32] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[31] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[30] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[29] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[28] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[27] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[26] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[25] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[24] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[23] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[22] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[21] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[20] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[19] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[18] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[17] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[16] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[15] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[14] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[13] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[12] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[11] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[10] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[9] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[8] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[7] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[6] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[5] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[4] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[3] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[2] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[1] ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[0] ;
  wire \U0/buffer_top_inst/rx_buffer_inst/_n03801 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Msub_GND_172_o_GND_172_o_sub_47_OUT<4:0>_xor<4>11_1309 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we1_1310 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_l61_1311 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<4> ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<3> ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<2> ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<1> ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_cy<0> ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag4 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag3 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag2 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag1_1342 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag ;
  wire \U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_val ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv ;
  wire \U0/buffer_top_inst/rx_buffer_inst/LNK_rsof_n_inv ;
  wire \U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ;
  wire \U0/buffer_top_inst/rx_buffer_inst/GND_172_o_bram_rd_AND_348_o_norst ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<0> ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<1> ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<2> ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<3> ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<4> ;
  wire \U0/buffer_top_inst/rx_buffer_inst/GND_172_o_PWR_68_o_MUX_414_o ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_INV_421_o ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_log_ready_AND_356_o_1363 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_in_packet ;
  wire \U0/buffer_top_inst/rx_buffer_inst/in_rpacket ;
  wire \U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ;
  wire \U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_dsc_n_LNK_reof_n_OR_153_o ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o_1379 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_log_buffer_empty_AND_358_o ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_RX_dst_rdy_n_OR_167_o_1390 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ;
  wire \U0/buffer_top_inst/rx_buffer_inst/in_wpacket ;
  wire \U0/buffer_top_inst/rx_buffer_inst/_n0405 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/lnk_reof_n_q_1394 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/lnk_rdst_dsc_n_q_1395 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/lnk_rsof_n_q_1396 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/lnk_rcrf_q_1401 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/in_wpacket_q_1407 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_1409 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_1410 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_1415 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_sof_n_q_1416 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_q_1417 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_1418 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_1424 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q_1425 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_first_read_1431 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_crf ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_1586 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT3 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT2 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT1_1590 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_log_write_tag_gc_async[0]_PWR_80_o_wide_mux_17_OUT2 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_log_write_tag_gc_async[0]_PWR_80_o_wide_mux_17_OUT1_1594 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_log_write_tag_gc_async[0]_PWR_80_o_wide_mux_17_OUT ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LNK_write_tag[0]_PWR_80_o_wide_mux_12_OUT2 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LNK_write_tag[0]_PWR_80_o_wide_mux_12_OUT1 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LNK_write_tag[0]_PWR_80_o_wide_mux_12_OUT ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT3 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT2 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT1 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT ;
  wire \U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ;
  wire \U0/buffer_top_inst/cfg_inst/_n0160_inv ;
  wire \U0/buffer_top_inst/cfg_inst/_n0158_inv ;
  wire \U0/buffer_top_inst/cfg_inst/_n0154_inv ;
  wire \U0/buffer_top_inst/cfg_inst/_n0150_inv ;
  wire \U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ;
  wire \U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ;
  wire \U0/buffer_top_inst/cfg_inst/read_en_INV_446_o ;
  wire \U0/buffer_top_inst/cfg_inst/_n0171[16] ;
  wire \U0/buffer_top_inst/cfg_inst/_n0171[2] ;
  wire \U0/buffer_top_inst/cfg_inst/write_en_MGT_rst_n_OR_189_o ;
  wire \U0/buffer_top_inst/cfg_inst/write_en_1645 ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<0> ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<1> ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<2> ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<3> ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<4> ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<0> ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<1> ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<2> ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<3> ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<4> ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<0> ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<1> ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<2> ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<3> ;
  wire \U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<4> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<0> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<1> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<2> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<3> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<4> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<0> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<1> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<2> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<3> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<4> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<0> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<1> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<2> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<3> ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<4> ;
  wire \U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_1676 ;
  wire \U0/buffer_top_inst/cfg_inst/first_rd_1692 ;
  wire \U0/buffer_top_inst/cfg_inst/bc_tx_flow_ctrl_1693 ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_rdy_n_q_1694 ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_rd_n_q_1695 ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_sel_n_q_1696 ;
  wire \U0/buffer_top_inst/cfg_inst/wm_wr_en_q_1707 ;
  wire \U0/buffer_top_inst/cfg_inst/mgt_tx_flow_ctrl_1708 ;
  wire \U0/buffer_top_inst/cfg_inst/phy_force_rx_flow_ctrl_1709 ;
  wire \U0/buffer_top_inst/cfg_inst/phy_tx_flow_ctrl_1710 ;
  wire \U0/buffer_top_inst/cfg_inst/pulse_wr_wm_qq_1711 ;
  wire \U0/buffer_top_inst/cfg_inst/pulse_wr_wm_q_1712 ;
  wire \U0/buffer_top_inst/cfg_inst/pulse_wr_wm_1713 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus1<1>_inv ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv ;
  wire N2;
  wire N4;
  wire N6;
  wire N8;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o1_1726 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o2_1727 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o3_1728 ;
  wire N10;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_cy<2>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/out5 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/out51_1732 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mmux_n07481 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/Mmux_n074811_1734 ;
  wire N14;
  wire N16;
  wire N18;
  wire N20;
  wire N22;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_transmitting_resp_AND_318_o1_1740 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n15471_1741 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n15472_1742 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/pending_list<0>1_1743 ;
  wire N24;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1737<1>1 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1737<1>11_1746 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/_n1737<1>12_1747 ;
  wire N26;
  wire N28;
  wire N30;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_3_o1_1751 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o1_1752 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o2_1753 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o3_1754 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o1_1755 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o2_1756 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o3_1757 ;
  wire N32;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_9_o2_1759 ;
  wire N36;
  wire \U0/buffer_top_inst/rx_buffer_inst/_n0417_inv1_1761 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/set_empty_bram_eof_n_AND_349_o2 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/set_empty_bram_eof_n_AND_349_o21_1763 ;
  wire N38;
  wire N40;
  wire N42;
  wire N46;
  wire \U0/buffer_top_inst/rx_buffer_inst/set_empty_single1_1768 ;
  wire N50;
  wire N52;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_glue_set_1771 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_0_glue_set_1772 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_1_glue_set_1773 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_2_glue_set_1774 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_3_glue_set_1775 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_4_glue_set_1776 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n_glue_set_1777 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_glue_set_1778 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_glue_set_1779 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_glue_set_1780 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tag_search_glue_set_1781 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_14_glue_set_1782 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_13_glue_set_1783 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_15_glue_set_1784 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_12_glue_set_1785 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_11_glue_set_1786 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_10_glue_set_1787 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_9_glue_set_1788 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_8_glue_set_1789 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_7_glue_set_1790 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_5_glue_set_1791 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_4_glue_set_1792 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_6_glue_set_1793 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_3_glue_set_1794 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_2_glue_set_1795 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_1_glue_set_1796 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/master_list_0_glue_set_1797 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_glue_ce_1798 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_glue_set_1799 ;
  wire \U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_rstpot_1800 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_rstpot_1801 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_rstpot_1802 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_rstpot_1803 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_first_read_rstpot_1804 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_we_rstpot_1805 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_rstpot_1806 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n_rstpot_1807 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_rstpot_1808 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_rstpot_1809 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_rstpot_1810 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_sof_n_rstpot_1811 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_rstpot_1812 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_rstpot_1813 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_rstpot_1814 ;
  wire \U0/buffer_top_inst/cfg_inst/first_rd_rstpot_1815 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/resp_retry_rstpot1_1816 ;
  wire N54;
  wire N58;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_data_count_q_0_rstpot_1819 ;
  wire \U0/buffer_top_inst/rx_buffer_inst/log_data_count_q_1_rstpot_1820 ;
  wire N60;
  wire N62;
  wire N63;
  wire N65;
  wire N66;
  wire N68;
  wire N70;
  wire N76;
  wire N84;
  wire N88;
  wire N100;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_3_rstpot_1832 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_2_rstpot_1833 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_0_rstpot_1834 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_1_rstpot_1835 ;
  wire N102;
  wire N103;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_4_rstpot_1838 ;
  wire N105;
  wire N107;
  wire N109;
  wire N111;
  wire N113;
  wire N115;
  wire N117;
  wire N119;
  wire N121;
  wire N123;
  wire N125;
  wire N127;
  wire N129;
  wire N131;
  wire N133;
  wire N135;
  wire \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_5_rstpot_1855 ;
  wire N137;
  wire N138;
  wire N140;
  wire N141;
  wire N142;
  wire N143;
  wire N144;
  wire N145;
  wire N149;
  wire N150;
  wire N152;
  wire N153;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1_rstpot_1868 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_dpot_1869 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_dpot_1870 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_dpot_1871 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q_1_dpot_1872 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q_0_dpot_1873 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_4_dpot_1874 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_3_dpot_1875 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_2_dpot_1876 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_1_dpot_1877 ;
  wire \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_0_dpot_1878 ;
  wire N155;
  wire N157;
  wire N159;
  wire N163;
  wire N164;
  wire N165;
  wire N166;
  wire N167;
  wire N168;
  wire N169;
  wire N170;
  wire N171;
  wire N172;
  wire N177;
  wire N179;
  wire N181;
  wire N183;
  wire N185;
  wire N187;
  wire N189;
  wire N190;
  wire N191;
  wire N192;
  wire N193;
  wire N194;
  wire N195;
  wire N196;
  wire N197;
  wire N198;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_queue_lookup1_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup4_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_queue_lookup2_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup3_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup2_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup1_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue4_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue2_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue1_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue3_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue4_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue3_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue2_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue1_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue_prio1_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue4_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue_prio2_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue3_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue2_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue1_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue4_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue3_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue2_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue1_SPO_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM11_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM11_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM10_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM10_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM12_DOC<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM12_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM12_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM8_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM8_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM7_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM7_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM9_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM9_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM5_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM5_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM4_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM4_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM6_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM6_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM2_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM2_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM1_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM1_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM3_DOD<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM3_DOD<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<31>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<30>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<29>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<28>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<27>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<26>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<25>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<24>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<23>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<22>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<21>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<20>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<19>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<18>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<17>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<16>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<15>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<14>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<13>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<12>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<11>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<10>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<9>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<8>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPBDOP<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPBDOP<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPBDOP<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<8>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<31>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<30>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<29>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<28>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<27>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<26>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<25>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<24>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<23>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<22>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<21>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<20>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<19>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<18>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<17>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<16>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<15>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<14>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<13>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<12>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<11>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<10>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<9>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<8>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<8>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<31>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<30>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<29>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<28>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<27>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<26>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<25>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<24>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<23>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<22>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<21>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<20>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<19>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<18>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<17>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<16>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<15>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<14>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<13>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<12>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<11>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<10>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<9>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<8>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPBDOP<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPBDOP<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<8>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<31>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<30>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<29>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<28>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<27>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<26>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<25>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<24>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<23>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<22>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<21>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<20>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<19>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<18>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<17>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<16>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<15>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<14>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<13>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<12>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<11>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<10>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<9>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<8>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<0>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<8>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<7>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<6>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<5>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<4>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<3>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<2>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<1>_UNCONNECTED ;
  wire \NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<0>_UNCONNECTED ;
  wire [2 : 0] \U0/buffer_top_inst/rx_buffer_inst/RX_rem ;
  wire [63 : 0] \U0/buffer_top_inst/rx_buffer_inst/RX_data ;
  wire [68 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat ;
  wire [26 : 26] NlwRenamedSig_OI_MGT_DO;
  wire [59 : 59] NlwRenamedSig_OI_CFG_IN;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/BCFG_watermark2 ;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/BCFG_watermark1 ;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/BCFG_watermark0 ;
  wire [3 : 1] \U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_lut ;
  wire [0 : 0] \U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_cy ;
  wire [5 : 0] \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/local_last_acked ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue ;
  wire [2 : 2] \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy ;
  wire [0 : 0] \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut ;
  wire [5 : 0] \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q ;
  wire [5 : 0] \U0/buffer_top_inst/tx_buffer_inst/Result ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/n0748 ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/_n1748 ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/address_tagb ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/_n1737 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum ;
  wire [2 : 0] \U0/buffer_top_inst/tx_buffer_inst/pending_list ;
  wire [15 : 0] \U0/buffer_top_inst/tx_buffer_inst/clr_cond ;
  wire [5 : 0] \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/next_read_tag ;
  wire [0 : 0] \U0/buffer_top_inst/tx_buffer_inst/transmit_enable ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/local_next_acked ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tag_marker ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/wr_priority ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/current_ack_tag ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/current_write_tag ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/_n1049 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/_n1056 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/_n1047 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/_n1046 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/_n1045 ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/n0992 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/_n1043 ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q ;
  wire [70 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i ;
  wire [2 : 2] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_cy ;
  wire [5 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Result ;
  wire [4 : 1] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1 ;
  wire [0 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wr_pntr_plus1 ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg ;
  wire [2 : 1] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg ;
  wire [4 : 1] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 ;
  wire [4 : 2] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d2 ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin ;
  wire [3 : 1] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2 ;
  wire [0 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus1 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 ;
  wire [3 : 2] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg ;
  wire [2 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg ;
  wire [3 : 1] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 ;
  wire [3 : 2] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin ;
  wire [5 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets ;
  wire [1 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/pcfg_master_en_a ;
  wire [70 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i ;
  wire [70 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 ;
  wire [3 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 ;
  wire [4 : 0] \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg ;
  wire [3 : 2] \U0/buffer_top_inst/rx_buffer_inst/Msub_write_status_partial_lut ;
  wire [3 : 1] \U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut ;
  wire [5 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag ;
  wire [5 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q ;
  wire [5 : 0] \U0/buffer_top_inst/rx_buffer_inst/Result ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/GND_172_o_GND_172_o_sub_47_OUT ;
  wire [5 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/PWR_68_o_PWR_68_o_mux_12_OUT ;
  wire [3 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u ;
  wire [3 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/write_status_cct ;
  wire [1 : 0] \U0/buffer_top_inst/rx_buffer_inst/log_data_count_q ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/log_read_tag ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add ;
  wire [3 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag ;
  wire [2 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_rrem ;
  wire [63 : 0] \U0/buffer_top_inst/rx_buffer_inst/bram_data ;
  wire [63 : 0] \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q ;
  wire [2 : 0] \U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q ;
  wire [0 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_in ;
  wire [69 : 68] \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async ;
  wire [3 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async ;
  wire [3 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc ;
  wire [4 : 0] \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc ;
  wire [1 : 1] \U0/buffer_top_inst/cfg_inst/_n0207 ;
  wire [1 : 1] \U0/buffer_top_inst/cfg_inst/_n0211 ;
  wire [4 : 1] \U0/buffer_top_inst/cfg_inst/_n0198 ;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/_n0201 ;
  wire [4 : 1] \U0/buffer_top_inst/cfg_inst/_n0204 ;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/mgt_wm2 ;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/mgt_wm1 ;
  wire [4 : 0] \U0/buffer_top_inst/cfg_inst/mgt_wm0 ;
  wire [9 : 0] \U0/buffer_top_inst/cfg_inst/mgt_a_q ;
  wire [3 : 0] \U0/buffer_top_inst/cfg_inst/mgt_wr_n_q ;
  assign
    RX_REM_I[0] = \U0/buffer_top_inst/rx_buffer_inst/RX_rem [0],
    RX_REM_I[1] = \U0/buffer_top_inst/rx_buffer_inst/RX_rem [1],
    RX_REM_I[2] = \U0/buffer_top_inst/rx_buffer_inst/RX_rem [2],
    RX_DATA_I[0] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [0],
    RX_DATA_I[1] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [1],
    RX_DATA_I[2] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [2],
    RX_DATA_I[3] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [3],
    RX_DATA_I[4] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [4],
    RX_DATA_I[5] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [5],
    RX_DATA_I[6] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [6],
    RX_DATA_I[7] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [7],
    RX_DATA_I[8] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [8],
    RX_DATA_I[9] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [9],
    RX_DATA_I[10] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [10],
    RX_DATA_I[11] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [11],
    RX_DATA_I[12] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [12],
    RX_DATA_I[13] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [13],
    RX_DATA_I[14] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [14],
    RX_DATA_I[15] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [15],
    RX_DATA_I[16] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [16],
    RX_DATA_I[17] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [17],
    RX_DATA_I[18] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [18],
    RX_DATA_I[19] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [19],
    RX_DATA_I[20] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [20],
    RX_DATA_I[21] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [21],
    RX_DATA_I[22] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [22],
    RX_DATA_I[23] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [23],
    RX_DATA_I[24] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [24],
    RX_DATA_I[25] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [25],
    RX_DATA_I[26] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [26],
    RX_DATA_I[27] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [27],
    RX_DATA_I[28] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [28],
    RX_DATA_I[29] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [29],
    RX_DATA_I[30] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [30],
    RX_DATA_I[31] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [31],
    RX_DATA_I[32] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [32],
    RX_DATA_I[33] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [33],
    RX_DATA_I[34] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [34],
    RX_DATA_I[35] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [35],
    RX_DATA_I[36] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [36],
    RX_DATA_I[37] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [37],
    RX_DATA_I[38] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [38],
    RX_DATA_I[39] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [39],
    RX_DATA_I[40] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [40],
    RX_DATA_I[41] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [41],
    RX_DATA_I[42] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [42],
    RX_DATA_I[43] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [43],
    RX_DATA_I[44] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [44],
    RX_DATA_I[45] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [45],
    RX_DATA_I[46] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [46],
    RX_DATA_I[47] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [47],
    RX_DATA_I[48] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [48],
    RX_DATA_I[49] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [49],
    RX_DATA_I[50] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [50],
    RX_DATA_I[51] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [51],
    RX_DATA_I[52] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [52],
    RX_DATA_I[53] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [53],
    RX_DATA_I[54] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [54],
    RX_DATA_I[55] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [55],
    RX_DATA_I[56] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [56],
    RX_DATA_I[57] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [57],
    RX_DATA_I[58] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [58],
    RX_DATA_I[59] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [59],
    RX_DATA_I[60] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [60],
    RX_DATA_I[61] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [61],
    RX_DATA_I[62] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [62],
    RX_DATA_I[63] = \U0/buffer_top_inst/rx_buffer_inst/RX_data [63],
    LNK_TD[2] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [7],
    LNK_TD[3] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [8],
    LNK_TD[4] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [9],
    LNK_TD[5] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [10],
    LNK_TD[6] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [11],
    LNK_TD[7] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [12],
    LNK_TD[8] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [13],
    LNK_TD[9] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [14],
    LNK_TD[10] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [15],
    LNK_TD[11] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [16],
    LNK_TD[12] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [17],
    LNK_TD[13] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [18],
    LNK_TD[14] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [19],
    LNK_TD[15] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [20],
    LNK_TD[16] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [21],
    LNK_TD[17] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [22],
    LNK_TD[18] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [23],
    LNK_TD[19] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [24],
    LNK_TD[20] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [25],
    LNK_TD[21] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [26],
    LNK_TD[22] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [27],
    LNK_TD[23] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [28],
    LNK_TD[24] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [29],
    LNK_TD[25] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [30],
    LNK_TD[26] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [31],
    LNK_TD[27] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [32],
    LNK_TD[28] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [33],
    LNK_TD[29] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [34],
    LNK_TD[30] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [35],
    LNK_TD[31] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [36],
    LNK_TD[32] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [37],
    LNK_TD[33] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [38],
    LNK_TD[34] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [39],
    LNK_TD[35] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [40],
    LNK_TD[36] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [41],
    LNK_TD[37] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [42],
    LNK_TD[38] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [43],
    LNK_TD[39] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [44],
    LNK_TD[40] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [45],
    LNK_TD[41] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [46],
    LNK_TD[42] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [47],
    LNK_TD[43] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [48],
    LNK_TD[44] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [49],
    LNK_TD[45] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [50],
    LNK_TD[46] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [51],
    LNK_TD[47] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [52],
    LNK_TD[48] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [53],
    LNK_TD[49] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [54],
    LNK_TD[50] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [55],
    LNK_TD[51] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [56],
    LNK_TD[52] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [57],
    LNK_TD[53] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [58],
    LNK_TD[54] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [59],
    LNK_TD[55] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [60],
    LNK_TD[56] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [61],
    LNK_TD[57] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [62],
    LNK_TD[58] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [63],
    LNK_TD[59] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [64],
    LNK_TD[60] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [65],
    LNK_TD[61] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [66],
    LNK_TD[62] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [67],
    LNK_TD[63] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [68],
    LNK_TREM[0] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [0],
    LNK_TREM[1] = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [1],
    LNK_TREM[2] = NlwRenamedSig_OI_MGT_DO[26],
    LNK_BUF_STAT[0] = \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [0],
    LNK_BUF_STAT[1] = \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [1],
    LNK_BUF_STAT[2] = \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [2],
    LNK_BUF_STAT[3] = \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [3],
    LNK_BUF_STAT[4] = \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [4],
    CFG_IN[0] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[1] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[2] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[3] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[4] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[5] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[6] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[7] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[8] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[9] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[10] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[11] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[12] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[13] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[14] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[15] = NlwRenamedSig_OI_CFG_IN[59],
    CFG_IN[16] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[17] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[18] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[19] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[20] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[21] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[22] = NlwRenamedSig_OI_CFG_IN[59],
    CFG_IN[23] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[24] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[25] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[26] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[27] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[28] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[29] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[30] = NlwRenamedSig_OI_CFG_IN[59],
    CFG_IN[31] = NlwRenamedSig_OI_CFG_IN[59],
    CFG_IN[32] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[33] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[34] = NlwRenamedSig_OI_CFG_IN[59],
    CFG_IN[35] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[36] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[37] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[38] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[39] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[40] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[41] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[42] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[43] = NlwRenamedSig_OI_CFG_IN[59],
    CFG_IN[44] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[45] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[46] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[47] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[48] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[49] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[50] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[51] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[52] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[53] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[54] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[55] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[56] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[57] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[58] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[59] = NlwRenamedSig_OI_CFG_IN[59],
    CFG_IN[60] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[61] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[62] = NlwRenamedSig_OI_MGT_DO[26],
    CFG_IN[63] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[0] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[1] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[2] = \U0/buffer_top_inst/cfg_inst/MGT_do[2] ,
    MGT_DO[3] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[4] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[5] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[6] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[7] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[8] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[9] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[10] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[11] = \U0/buffer_top_inst/cfg_inst/MGT_do[11] ,
    MGT_DO[12] = \U0/buffer_top_inst/cfg_inst/MGT_do[12] ,
    MGT_DO[13] = \U0/buffer_top_inst/cfg_inst/MGT_do[13] ,
    MGT_DO[14] = \U0/buffer_top_inst/cfg_inst/MGT_do[14] ,
    MGT_DO[15] = \U0/buffer_top_inst/cfg_inst/MGT_do[15] ,
    MGT_DO[16] = \U0/buffer_top_inst/cfg_inst/MGT_do[16] ,
    MGT_DO[17] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[18] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[19] = \U0/buffer_top_inst/cfg_inst/MGT_do[19] ,
    MGT_DO[20] = \U0/buffer_top_inst/cfg_inst/MGT_do[20] ,
    MGT_DO[21] = \U0/buffer_top_inst/cfg_inst/MGT_do[21] ,
    MGT_DO[22] = \U0/buffer_top_inst/cfg_inst/MGT_do[22] ,
    MGT_DO[23] = \U0/buffer_top_inst/cfg_inst/MGT_do[23] ,
    MGT_DO[24] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[25] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[26] = NlwRenamedSig_OI_MGT_DO[26],
    MGT_DO[27] = \U0/buffer_top_inst/cfg_inst/MGT_do[27] ,
    MGT_DO[28] = \U0/buffer_top_inst/cfg_inst/MGT_do[28] ,
    MGT_DO[29] = \U0/buffer_top_inst/cfg_inst/MGT_do[29] ,
    MGT_DO[30] = \U0/buffer_top_inst/cfg_inst/MGT_do[30] ,
    MGT_DO[31] = \U0/buffer_top_inst/cfg_inst/MGT_do[31] ,
    TX_RDY_N_I = NlwRenamedSig_OI_TX_RDY_N_I,
    RX_SOF_N_I = \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ,
    RX_EOF_N_I = \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ,
    RX_VLD_N_I = \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ,
    RX_CRF_I = \U0/buffer_top_inst/rx_buffer_inst/RX_crf_361 ,
    LNK_TCRF = \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [4],
    LNK_TEOF_N = NlwRenamedSig_OI_LNK_TEOF_N,
    LNK_TSOF_N = \NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ,
    LNK_TSRC_RDY_N = \NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n ,
    LNK_TSRC_DSC_N = \NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n ,
    LNK_RDST_RDY_N = \NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n ,
    MGT_RDY_N = \NlwRenamedSig_OI_U0/buffer_top_inst/cfg_inst/MGT_rdy_n ;
  GND   XST_GND (
    .G(NlwRenamedSig_OI_MGT_DO[26])
  );
  VCC   XST_VCC (
    .P(NlwRenamedSig_OI_CFG_IN[59])
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/n0528_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>6 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [0])
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/n0528_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>6 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [1])
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/n0528_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>6 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2])
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/n0528_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>6 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3])
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/n0528_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>6 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result [4]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result [3]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result [2]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result [1]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result [0]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1647_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1647_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1647_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1647_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1647_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1641_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1641_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1641_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1641_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1641_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1635_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1635_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1635_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1635_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1635_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1653_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1653_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1653_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1653_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue1 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1653_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1662_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>7 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1662_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>7 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1662_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>7 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1662_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>7 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1662_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>7 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1665_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>8 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1665_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>8 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1665_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>8 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1665_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>8 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1665_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>8 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1659_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1659_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1659_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1659_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1659_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1656_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<4>5 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1656_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<3>5 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1656_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<2>5 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1656_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<1>5 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1656_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Result<0>5 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [4])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd1-In ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd1_730 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd2-In ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd2_542 )
  );
  RAM32X1D #(
    .INIT ( 32'hFFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_queue_lookup1  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1]),
    .A4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [1]),
    .DPRA4(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [0]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_queue_lookup1_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1049 [0])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup4  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1]),
    .A4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [1]),
    .DPRA4(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [0]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup4_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [0])
  );
  RAM32X1D #(
    .INIT ( 32'hFFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_queue_lookup2  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1]),
    .A4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [1]),
    .DPRA4(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [0]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_queue_lookup2_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1049 [1])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup3  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1]),
    .A4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [1]),
    .DPRA4(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [0]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup3_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [1])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup2  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1]),
    .A4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [2]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [1]),
    .DPRA4(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [0]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup2_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup1  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1]),
    .A4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [3]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [1]),
    .DPRA4(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [0]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_tag_lookup1_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue4  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue4_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1047 [3])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue2  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue2_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1047 [1])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue1  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue1_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1047 [0])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue3  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req2_queue3_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1047 [2])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue4  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue4_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1045 [3])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue3  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue3_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1045 [2])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue2  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue2_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1045 [1])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue1  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req0_queue1_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1045 [0])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue_prio1  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue_prio1_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/n0992 [0])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue4  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue4_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1046 [3])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue_prio2  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue_prio2_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/n0992 [1])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue3  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue3_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1046 [2])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue2  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue2_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1046 [1])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue1  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_req1_queue1_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1046 [0])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue4  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue4_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1043 [3])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue3  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue3_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1043 [2])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue2  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue2_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1043 [1])
  );
  RAM32X1D #(
    .INIT ( 32'h00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue1  (
    .A0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .A1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .A2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .A3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .A4(NlwRenamedSig_OI_MGT_DO[26]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .DPRA0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .DPRA1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .DPRA2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .DPRA3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .DPRA4(NlwRenamedSig_OI_MGT_DO[26]),
    .WCLK(PHY_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue ),
    .SPO(\NLW_U0/buffer_top_inst/tx_buffer_inst/Mram_resp_queue1_SPO_UNCONNECTED ),
    .DPO(\U0/buffer_top_inst/tx_buffer_inst/_n1043 [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1618_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_priority[0]_rx_prio_adjust[0]_mux_159_OUT<1> ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1618_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/Mmux_rd_priority[0]_rx_prio_adjust[0]_mux_159_OUT_rs_lut<0> ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [1])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/tag_marker_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tag_set_resp_retry_AND_235_o ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/tag_marker_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tag_set_resp_retry_AND_235_o ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [1])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/tag_marker_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tag_set_resp_retry_AND_235_o ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [2])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/tag_marker_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tag_set_resp_retry_AND_235_o ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [3])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [0])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [1])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [2])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/current_ack_tag_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_ack_tag [3])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/LNK_tdst_rdy_n_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/LNK_tdst_rdy_n_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [1])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/LNK_tdst_rdy_n_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [2])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/LNK_tdst_rdy_n_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_update_window_raw_AND_261_o ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [0]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_update_window_raw_AND_261_o ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [1]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_update_window_raw_AND_261_o ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [2]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_update_window_raw_AND_261_o ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [3]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [3])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [1])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [2])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag_q [3])
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/update_window_qq  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/update_window_q_740 ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/update_window_qq_738 )
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_0_dpot_1878 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_1_dpot_1877 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_2_dpot_1876 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_3_dpot_1875 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_4_dpot_1874 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4])
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/update_window_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/update_window ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/update_window_q_740 )
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/update_window_raw_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw_q_739 )
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1671_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<4> ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1671_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<3> ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1671_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<2> ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1671_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<1> ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/_n1671_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<0> ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4])
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_741 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/eval_for_backup ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_q_743 )
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/wr_priority_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [63]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/wr_priority_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [62]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [1])
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/transmit_enable_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable [0]),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable_1_737 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/load_backup_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/load_backup_q_744 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/syn_tx_response_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [64]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_response_q_751 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/tag_set  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tag_set_764 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/current_write_tag_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_dst_rdy_n_AND_49_o ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/n0748 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/current_write_tag_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_dst_rdy_n_AND_49_o ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/n0748 [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/current_write_tag_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_dst_rdy_n_AND_49_o ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/n0748 [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/current_write_tag_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_dst_rdy_n_AND_49_o ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/n0748 [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/load_backup  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/load_backup_d_742 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [0])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [1])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [2])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [3])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [4])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_656 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_q_763 )
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q_0_dpot_1873 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q_1_dpot_1872 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1])
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_dpot_1871 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_719 )
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_dpot_1870 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_720 )
  );
  FDE   \U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_dpot_1869 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_721 )
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q  (
    .C(PHY_CLK),
    .D(LNK_TDST_DSC_N),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_736 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/load_backup_d  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_load_backup_d_AND_288_o ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/load_backup_d_742 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/n0528_inv ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_746 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_rd_tag_ack_q_partial_OR_147_o ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_747 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_750 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_raw  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_raw_748 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/eof_event  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_eof_n_syn_tx_src_dsc_n_AND_56_o ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/eof_event_752 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [0])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [1])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [2])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [3])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [4])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q_5  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [5]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [5])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/pcfg_master_en_q  (
    .C(PHY_CLK),
    .D(PCFG_MASTER_ENABLE),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/pcfg_master_en_q_757 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q_0  (
    .C(PHY_CLK),
    .D(LNK_TLAST_ACK[0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [0])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q_1  (
    .C(PHY_CLK),
    .D(LNK_TLAST_ACK[1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [1])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q_2  (
    .C(PHY_CLK),
    .D(LNK_TLAST_ACK[2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [2])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q_3  (
    .C(PHY_CLK),
    .D(LNK_TLAST_ACK[3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [3])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q_4  (
    .C(PHY_CLK),
    .D(LNK_TLAST_ACK[4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/_n0093_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Result [5]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/_n0093_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Result [4]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/_n0093_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Result [3]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/_n0093_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Result [2]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_4  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/_n0093_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Result [1]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets_5  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/_n0093_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Result [0]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [5])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_893 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_918 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_i  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_i_993 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d1_938 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d2_937 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d1_941 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d2_940 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_936 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d1_938 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_939 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d1_941 )
  );
  FDPE   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d1_938 ),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_936 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg_2  (
    .C(LOG_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg_1  (
    .C(LOG_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1])
  );
  FDPE   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d1_941 ),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_939 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg_1  (
    .C(PHY_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg_0  (
    .C(PHY_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_3_o ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_966 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg_0  (
    .C(LOG_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg_1  (
    .C(LOG_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg_0  (
    .C(PHY_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [0])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg_1  (
    .C(PHY_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1])
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg_2  (
    .C(PHY_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_comb ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.vld_window_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.vld_window ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.vld_window_q_990 )
  );
  FDS   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.eof_valid_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBLD_tx_eof_n_TBUF_dst_rdy_n_OR_12_o ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.eof_valid_q_989 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/pcfg_master_en_a_0  (
    .C(LOG_CLK),
    .D(PCFG_MASTER_ENABLE),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/pcfg_master_en_a [0])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/pcfg_master_en_a_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/pcfg_master_en_a [0]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/pcfg_master_en_a [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_70  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [70]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_69  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [69]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_68  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [68]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_67  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [67]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [67])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_66  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [66]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [66])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_65  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [65]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [65])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_64  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [64]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [64])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_63  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [63]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [63])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_62  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [62]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [62])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_61  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [61]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [61])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_60  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [60]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [60])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_59  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [59]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [59])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_58  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [58]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [58])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_57  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [57]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [57])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_56  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [56]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [56])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_55  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [55]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [55])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_54  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [54]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [54])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_53  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [53]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [53])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_52  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [52]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [52])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_51  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [51]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [51])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_50  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [50]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [50])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_49  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [49]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [49])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_48  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [48]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [48])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_47  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [47]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [47])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_46  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [46]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [46])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_45  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [45]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [45])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_44  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [44]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [44])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_43  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [43]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [43])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_42  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [42]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [42])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_41  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [41]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [41])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_40  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [40]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [40])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_39  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [39]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [39])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_38  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [38]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [38])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_37  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [37]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [37])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_36  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [36]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [36])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_35  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [35]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [35])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_34  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [34]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [34])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_33  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [33]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [33])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_32  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [32]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [32])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_31  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [31]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [31])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_30  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [30]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [30])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_29  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [29]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_28  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [28]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_27  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [27]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_26  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [26]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_25  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [25]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_24  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [24]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_23  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [23]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_22  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [22]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_21  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [21]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_20  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [20]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_19  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [19]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_18  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [18]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_17  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [17]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_16  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [16]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_15  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [15]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_14  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [14]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_13  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [13]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_12  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [12]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_11  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [11]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_10  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [10]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_9  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [9]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_8  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [8]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_7  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [7]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_6  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [6]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_5  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [5]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [0])
  );
  RAM32M #(
    .INIT_A ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM11  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .DIA({TX_DATA_O[2], TX_DATA_O[3]}),
    .DIB({TX_DATA_O[0], TX_DATA_O[1]}),
    .DIC({TX_CRF_O, TX_RESPONSE_O}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [61], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [60]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [63], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [62]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [65], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [64]}),
    .DOD({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM11_DOD<1>_UNCONNECTED , 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM11_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_A ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM10  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .DIA({TX_DATA_O[8], TX_DATA_O[9]}),
    .DIB({TX_DATA_O[6], TX_DATA_O[7]}),
    .DIC({TX_DATA_O[4], TX_DATA_O[5]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [55], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [54]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [57], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [56]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [59], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [58]}),
    .DOD({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM10_DOD<1>_UNCONNECTED , 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM10_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_A ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM12  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .DIA({TX_REM_O[0], TX_REM_O[1]}),
    .DIB({TX_EOF_N_O, TX_DSC_N_O}),
    .DIC({NlwRenamedSig_OI_MGT_DO[26], TX_SOF_N_O}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [67], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [66]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [69], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [68]}),
    .DOC({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM12_DOC<1>_UNCONNECTED , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [70]}),
    .DOD({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM12_DOD<1>_UNCONNECTED , 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM12_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_A ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM8  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .DIA({TX_DATA_O[20], TX_DATA_O[21]}),
    .DIB({TX_DATA_O[18], TX_DATA_O[19]}),
    .DIC({TX_DATA_O[16], TX_DATA_O[17]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [43], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [42]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [45], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [44]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [47], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [46]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM8_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM8_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_A ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM7  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .DIA({TX_DATA_O[26], TX_DATA_O[27]}),
    .DIB({TX_DATA_O[24], TX_DATA_O[25]}),
    .DIC({TX_DATA_O[22], TX_DATA_O[23]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [37], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [36]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [39], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [38]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [41], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [40]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM7_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM7_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_A ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM9  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .DIA({TX_DATA_O[14], TX_DATA_O[15]}),
    .DIB({TX_DATA_O[12], TX_DATA_O[13]}),
    .DIC({TX_DATA_O[10], TX_DATA_O[11]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [49], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [48]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [51], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [50]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [53], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [52]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM9_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM9_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_A ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM5  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .DIA({TX_DATA_O[38], TX_DATA_O[39]}),
    .DIB({TX_DATA_O[36], TX_DATA_O[37]}),
    .DIC({TX_DATA_O[34], TX_DATA_O[35]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [25], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [24]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [27], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [26]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [29], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [28]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM5_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM5_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_A ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM4  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .DIA({TX_DATA_O[44], TX_DATA_O[45]}),
    .DIB({TX_DATA_O[42], TX_DATA_O[43]}),
    .DIC({TX_DATA_O[40], TX_DATA_O[41]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [19], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [18]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [21], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [20]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [23], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [22]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM4_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM4_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_A ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM6  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .DIA({TX_DATA_O[32], TX_DATA_O[33]}),
    .DIB({TX_DATA_O[30], TX_DATA_O[31]}),
    .DIC({TX_DATA_O[28], TX_DATA_O[29]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [31], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [30]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [33], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [32]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [35], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [34]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM6_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM6_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_A ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM2  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .DIA({TX_DATA_O[56], TX_DATA_O[57]}),
    .DIB({TX_DATA_O[54], TX_DATA_O[55]}),
    .DIC({TX_DATA_O[52], TX_DATA_O[53]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [7], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [6]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [9], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [8]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [11], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [10]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM2_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM2_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_A ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM1  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .DIA({TX_DATA_O[62], TX_DATA_O[63]}),
    .DIB({TX_DATA_O[60], TX_DATA_O[61]}),
    .DIC({TX_DATA_O[58], TX_DATA_O[59]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [0]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [2]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [5], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [4]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM1_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM1_DOD<0>_UNCONNECTED })
  );
  RAM32M #(
    .INIT_A ( 64'h0000000000000000 ),
    .INIT_B ( 64'h0000000000000000 ),
    .INIT_C ( 64'h0000000000000000 ),
    .INIT_D ( 64'h0000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM3  (
    .WCLK(LOG_CLK),
    .WE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .DIA({TX_DATA_O[50], TX_DATA_O[51]}),
    .DIB({TX_DATA_O[48], TX_DATA_O[49]}),
    .DIC({TX_DATA_O[46], TX_DATA_O[47]}),
    .DID({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRA({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRB({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRC({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv }),
    .ADDRD({NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]}),
    .DOA({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [13], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [12]}),
    .DOB({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [15], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [14]}),
    .DOC({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [17], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [16]}),
    .DOD({\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM3_DOD<1>_UNCONNECTED 
, \NLW_U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/Mram_RAM3_DOD<0>_UNCONNECTED })
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[3]_GND_27_o_add_0_OUT<3> ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[3]_GND_27_o_add_0_OUT<2> ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[3]_GND_27_o_add_0_OUT<1> ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [1])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In ),
    .Q
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1144 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i  (
    .C(PHY_CLK),
    .D
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/going_empty_fwft_leaving_empty_fwft_OR_5_o )
,
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_fb  (
    .C(PHY_CLK),
    .D
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/going_empty_fwft_leaving_empty_fwft_OR_5_o )
,
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_fb_1145 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_9_o ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_994 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_9_o ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_942 )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2 [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [2])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus1<1>_inv ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus1 [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count[3]_GND_36_o_add_0_OUT<3> )
,
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count[3]_GND_36_o_add_0_OUT<2> )
,
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[3]_reduce_xor_4_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[3]_reduce_xor_5_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[3]_reduce_xor_6_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[3]_reduce_xor_11_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[3]_reduce_xor_12_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[3]_reduce_xor_13_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/RD_PNTR[2]_RD_PNTR[3]_XOR_10_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/RD_PNTR[1]_RD_PNTR[2]_XOR_11_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/RD_PNTR[0]_RD_PNTR[1]_XOR_12_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/WR_PNTR[2]_WR_PNTR[3]_XOR_1_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/WR_PNTR[1]_WR_PNTR[2]_XOR_2_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/WR_PNTR[0]_WR_PNTR[1]_XOR_3_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1_4  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_rd_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_rd_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_rd_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_rd_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_4  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_rd_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[4]_GND_49_o_add_0_OUT<4> ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_rd_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[4]_GND_49_o_add_0_OUT<3> ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_rd_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[4]_GND_49_o_add_0_OUT<2> ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_rd_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[4]_GND_49_o_add_0_OUT<1> ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [1])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_rd_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d2_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1 [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d2 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d2_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d2 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d2_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1 [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d2 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1 [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1 [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1 [2])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1 [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count[4]_GND_55_o_add_0_OUT<4> ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [4])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count[4]_GND_55_o_add_0_OUT<3> ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [3])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count[4]_GND_55_o_add_0_OUT<2> ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [2])
  );
  FDPE #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count[4]_GND_55_o_add_0_OUT<1> ),
    .PRE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [1])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en ),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wr_pntr_plus1 [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_4  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_4_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_5_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_6_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_7_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_4  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_12_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_13_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_14_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_15_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_4  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_4  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_4  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_4  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_4  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_3  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/RD_PNTR[3]_RD_PNTR[4]_XOR_27_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_2  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/RD_PNTR[2]_RD_PNTR[3]_XOR_28_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_1  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/RD_PNTR[1]_RD_PNTR[2]_XOR_29_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_0  (
    .C(LOG_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [1]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/RD_PNTR[0]_RD_PNTR[1]_XOR_30_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_4  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d2 [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_3  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/WR_PNTR[3]_WR_PNTR[4]_XOR_19_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_2  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/WR_PNTR[2]_WR_PNTR[3]_XOR_20_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_1  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/WR_PNTR[1]_WR_PNTR[2]_XOR_21_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_0  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg [0]),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/WR_PNTR[0]_WR_PNTR[1]_XOR_22_o ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[68] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [0])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[67] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [1])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_early ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [2])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[65] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [3])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[64] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [4])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_5  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[63] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [5])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_6  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[62] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [6])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_7  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[61] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [7])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_8  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[60] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [8])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_9  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[59] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [9])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_10  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[58] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [10])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_11  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[57] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [11])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_12  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[56] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [12])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_13  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[55] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [13])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_14  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[54] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [14])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_15  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[53] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [15])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_16  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[52] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [16])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_17  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[51] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [17])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_18  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[50] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [18])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_19  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[49] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [19])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_20  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[48] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [20])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_21  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[47] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [21])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_22  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[46] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [22])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_23  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[45] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [23])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_24  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[44] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [24])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_25  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[43] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [25])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_26  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[42] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [26])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_27  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[41] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [27])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_28  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[40] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [28])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_29  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[39] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [29])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_30  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[38] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [30])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_31  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[37] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [31])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_32  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[36] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [32])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_33  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[35] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [33])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_34  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[34] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [34])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_35  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[33] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [35])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_36  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[32] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [36])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_37  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[31] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [37])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_38  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[30] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [38])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_39  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[29] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [39])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_40  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[28] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [40])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_41  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[27] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [41])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_42  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[26] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [42])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_43  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[25] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [43])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_44  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[24] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [44])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_45  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[23] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [45])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_46  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[22] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [46])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_47  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[21] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [47])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_48  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[20] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [48])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_49  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[19] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [49])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_50  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[18] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [50])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_51  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[17] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [51])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_52  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[16] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [52])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_53  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[15] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [53])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_54  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[14] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [54])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_55  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[13] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [55])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_56  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[12] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [56])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_57  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[11] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [57])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_58  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[10] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [58])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_59  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[9] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [59])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_60  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[8] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [60])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_61  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[7] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [61])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_62  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[6] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [62])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_63  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[5] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [63])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_64  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[4] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [64])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_65  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[3] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [65])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_66  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[2] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [66])
  );
  FDRE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_67  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[1] ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [67])
  );
  FDSE   \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q_68  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[0] ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [68])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_5  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Result [5]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_val ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag4 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [1])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag1_1342 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Result [4]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_val ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Result [2]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_val ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Result [1]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_val ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Result [3]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_val ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Result [0]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_val ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0])
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/PWR_68_o_PWR_68_o_mux_12_OUT [4]),
    .S(\U0/buffer_top_inst/rx_buffer_inst/_n0405 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [0])
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/PWR_68_o_PWR_68_o_mux_12_OUT [3]),
    .S(\U0/buffer_top_inst/rx_buffer_inst/_n0405 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [1])
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/PWR_68_o_PWR_68_o_mux_12_OUT [2]),
    .S(\U0/buffer_top_inst/rx_buffer_inst/_n0405 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [2])
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/PWR_68_o_PWR_68_o_mux_12_OUT [1]),
    .S(\U0/buffer_top_inst/rx_buffer_inst/_n0405 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [3])
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/PWR_68_o_PWR_68_o_mux_12_OUT [0]),
    .S(\U0/buffer_top_inst/rx_buffer_inst/_n0405 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/LNK_rbuf_stat [4])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/write_status_cct_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_GND_172_o_sub_47_OUT [4]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/write_status_cct_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_GND_172_o_sub_47_OUT [3]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [1])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/write_status_cct_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_GND_172_o_sub_47_OUT [2]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [2])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/write_status_cct_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_GND_172_o_sub_47_OUT [1]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/write_status_cct_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_GND_172_o_sub_47_OUT [0]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [4])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<4> ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [0])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<3> ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [1])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<2> ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [2])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<1> ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [3])
  );
  FDRE   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_4  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_cy<0> ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [4])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [0]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [0])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [1])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [2]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [2])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_3  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [3]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [3])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_4  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [4]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [4])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_5  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [5]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [5])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_6  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [6]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [6])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_7  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [7]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [7])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_8  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [8]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [8])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_9  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [9]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [9])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_10  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [10]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [10])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_11  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [11]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [11])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_12  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [12]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [12])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_13  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [13]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [13])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_14  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [14]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [14])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_15  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [15]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [15])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_16  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [16]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [16])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_17  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [17]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [17])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_18  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [18]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [18])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_19  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [19]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [19])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_20  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [20]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [20])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_21  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [21]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [21])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_22  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [22]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [22])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_23  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [23]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [23])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_24  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [24]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [24])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_25  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [25]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [25])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_26  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [26]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [26])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_27  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [27]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [27])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_28  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [28]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [28])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_29  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [29]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [29])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_30  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [30]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [30])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_31  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [31]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [31])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_32  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [32]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [32])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_33  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [33]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [33])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_34  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [34]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [34])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_35  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [35]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [35])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_36  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [36]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [36])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_37  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [37]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [37])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_38  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [38]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [38])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_39  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [39]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [39])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_40  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [40]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [40])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_41  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [41]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [41])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_42  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [42]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [42])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_43  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [43]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [43])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_44  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [44]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [44])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_45  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [45]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [45])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_46  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [46]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [46])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_47  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [47]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [47])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_48  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [48]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [48])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_49  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [49]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [49])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_50  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [50]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [50])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_51  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [51]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [51])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_52  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [52]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [52])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_53  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [53]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [53])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_54  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [54]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [54])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_55  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [55]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [55])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_56  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [56]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [56])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_57  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [57]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [57])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_58  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [58]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [58])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_59  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [59]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [59])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_60  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [60]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [60])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_61  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [61]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [61])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_62  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [62]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [62])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_data_63  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_data [63]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_data [63])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_rem_0  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_rrem [0]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_rem [0])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_rem_1  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_rrem [1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_rem [1])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_rem_2  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_rrem [2]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_rem [2])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/RX_crf  (
    .C(LOG_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_crf ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/RX_crf_361 )
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/bram_sof_n_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n_q_1416 )
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_q_1417 )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_1418 )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q_1425 )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/in_wpacket_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/in_wpacket ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/in_wpacket_q_1407 )
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/LNK_rsof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [0])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/LNK_rsof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [1])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/LNK_rsof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [2])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/LNK_rsof_n_inv ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [3])
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_PWR_68_o_MUX_414_o ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n )
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<4> ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [0])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<3> ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [1])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<2> ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [2])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_3  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<1> ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add_4  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<0> ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [4])
  );
  FDSE   \U0/buffer_top_inst/rx_buffer_inst/lnk_reof_n_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_REOF_N),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_reof_n_q_1394 )
  );
  FDSE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rdst_dsc_n_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(\U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_dsc_n_LNK_reof_n_OR_153_o ),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rdst_dsc_n_q_1395 )
  );
  FDSE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rsof_n_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RSOF_N),
    .S(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rsof_n_q_1396 )
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rcrf_q  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RCRF),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rcrf_q_1401 )
  );
  FDS   \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_INV_421_o ),
    .S(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_1415 )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [0]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [1]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [1])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q_2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [2]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [2])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q_3  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [3]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q_4  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [4]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q_5  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [5]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/bram_rd_early  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_log_ready_AND_356_o_1363 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_1424 )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<4> ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<3> ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [1])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q_2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<2> ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [2])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q_3  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<1> ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q_4  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_cy<0> ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [4])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[0]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [0])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [1])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[2]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [2])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[3]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [3])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[4]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [4])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_5  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[5]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [5])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_6  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[6]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [6])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_7  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[7]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [7])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_8  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[8]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [8])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_9  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[9]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [9])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_10  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[10]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [10])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_11  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[11]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [11])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_12  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[12]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [12])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_13  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[13]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [13])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_14  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[14]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [14])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_15  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[15]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [15])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_16  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[16]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [16])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_17  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[17]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [17])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_18  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[18]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [18])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_19  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[19]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [19])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_20  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[20]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [20])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_21  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[21]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [21])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_22  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[22]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [22])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_23  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[23]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [23])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_24  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[24]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [24])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_25  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[25]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [25])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_26  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[26]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [26])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_27  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[27]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [27])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_28  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[28]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [28])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_29  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[29]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [29])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_30  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[30]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [30])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_31  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[31]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [31])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_32  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[32]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [32])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_33  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[33]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [33])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_34  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[34]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [34])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_35  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[35]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [35])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_36  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[36]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [36])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_37  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[37]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [37])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_38  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[38]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [38])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_39  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[39]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [39])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_40  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[40]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [40])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_41  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[41]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [41])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_42  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[42]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [42])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_43  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[43]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [43])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_44  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[44]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [44])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_45  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[45]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [45])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_46  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[46]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [46])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_47  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[47]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [47])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_48  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[48]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [48])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_49  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[49]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [49])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_50  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[50]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [50])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_51  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[51]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [51])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_52  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[52]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [52])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_53  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[53]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [53])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_54  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[54]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [54])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_55  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[55]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [55])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_56  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[56]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [56])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_57  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[57]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [57])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_58  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[58]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [58])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_59  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[59]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [59])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_60  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[60]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [60])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_61  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[61]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [61])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_62  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[62]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [62])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q_63  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RD[63]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [63])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RREM[0]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q [0])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RREM[1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q [1])
  );
  FDE   \U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid ),
    .D(LNK_RREM[2]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q [2])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [68]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_1586 )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [0]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT3 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [1])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT2 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [2])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT1_1590 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [4])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [0]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [0])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_log_write_tag_gc_async[0]_PWR_80_o_wide_mux_17_OUT2 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [1])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag_2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_log_write_tag_gc_async[0]_PWR_80_o_wide_mux_17_OUT1_1594 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [2])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag_3  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_log_write_tag_gc_async[0]_PWR_80_o_wide_mux_17_OUT ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [0]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [1]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [1])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [2]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [2])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [3]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [3])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [4]),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [4])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [0]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [0])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [1])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async_2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [2]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [2])
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async_3  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [3]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [1]),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LNK_write_tag[0]_PWR_80_o_wide_mux_12_OUT2 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LNK_write_tag[0]_PWR_80_o_wide_mux_12_OUT1 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LNK_write_tag[0]_PWR_80_o_wide_mux_12_OUT ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_write_tag_gc [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [0]),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT3 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc_2  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT2 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc_3  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT1 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc_4  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_read_tag_gc [4])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<4> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [0])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<3> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [1])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<2> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [2])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<1> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [3])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark2_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<0> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [4])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<4> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [0])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<3> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [1])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<2> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [2])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<1> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [3])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark1_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<0> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [4])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<4> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [0])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<3> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [1])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<2> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [2])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<1> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [3])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/BCFG_watermark0_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0160_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<0> ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/pulse_wr_wm_qq  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/cfg_inst/wm_wr_en_q_1707 ),
    .D(\U0/buffer_top_inst/cfg_inst/pulse_wr_wm_q_1712 ),
    .Q(\U0/buffer_top_inst/cfg_inst/pulse_wr_wm_qq_1711 )
  );
  FDS   \U0/buffer_top_inst/cfg_inst/bc_tx_flow_ctrl  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_tx_flow_ctrl_1708 ),
    .S(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/bc_tx_flow_ctrl_1693 )
  );
  FDR   \U0/buffer_top_inst/cfg_inst/BCFG_force_rx_fc  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/phy_force_rx_flow_ctrl_1709 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/BCFG_force_rx_fc_372 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/pulse_wr_wm_q  (
    .C(PHY_CLK),
    .CLR(\U0/buffer_top_inst/cfg_inst/wm_wr_en_q_1707 ),
    .D(\U0/buffer_top_inst/cfg_inst/pulse_wr_wm_1713 ),
    .Q(\U0/buffer_top_inst/cfg_inst/pulse_wr_wm_q_1712 )
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm2_0  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0158_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<4> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [0])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm2_1  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0158_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<3> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [1])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm2_2  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0158_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<2> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [2])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm2_3  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0158_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<1> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [3])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm2_4  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0158_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<0> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [4])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm1_0  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0154_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<4> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [0])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm1_1  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0154_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<3> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [1])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm1_2  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0154_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<2> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [2])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm1_3  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0154_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<1> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [3])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm1_4  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0154_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<0> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [4])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm0_0  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0150_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<4> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [0])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm0_1  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0150_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<3> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [1])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm0_2  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0150_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<2> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [2])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm0_3  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0150_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<1> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [3])
  );
  FDE   \U0/buffer_top_inst/cfg_inst/mgt_wm0_4  (
    .C(MGT_CLK),
    .CE(\U0/buffer_top_inst/cfg_inst/_n0150_inv ),
    .D(\U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<0> ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [4])
  );
  FDS #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/cfg_inst/mgt_rdy_n_q  (
    .C(MGT_CLK),
    .D(\NlwRenamedSig_OI_U0/buffer_top_inst/cfg_inst/MGT_rdy_n ),
    .S(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_rdy_n_q_1694 )
  );
  FD   \U0/buffer_top_inst/cfg_inst/mgt_tx_flow_ctrl  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/phy_tx_flow_ctrl_1710 ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_tx_flow_ctrl_1708 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/phy_force_rx_flow_ctrl  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_1676 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/phy_force_rx_flow_ctrl_1709 )
  );
  FDP #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/pulse_wr_wm  (
    .C(PHY_CLK),
    .D(NlwRenamedSig_OI_MGT_DO[26]),
    .PRE(\U0/buffer_top_inst/cfg_inst/wm_wr_en_q_1707 ),
    .Q(\U0/buffer_top_inst/cfg_inst/pulse_wr_wm_1713 )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/cfg_inst/MGT_rdy_n  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/read_en_INV_446_o ),
    .S(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/cfg_inst/MGT_rdy_n )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/cfg_inst/mgt_rd_n_q  (
    .C(MGT_CLK),
    .D(MGT_RD_N),
    .S(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_rd_n_q_1695 )
  );
  FDS #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/cfg_inst/mgt_sel_n_q  (
    .C(MGT_CLK),
    .D(MGT_SEL_N),
    .S(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_sel_n_q_1696 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_0  (
    .C(MGT_CLK),
    .D(MGT_A[0]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_1  (
    .C(MGT_CLK),
    .D(MGT_A[1]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_2  (
    .C(MGT_CLK),
    .D(MGT_A[2]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_3  (
    .C(MGT_CLK),
    .D(MGT_A[3]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_4  (
    .C(MGT_CLK),
    .D(MGT_A[4]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_5  (
    .C(MGT_CLK),
    .D(MGT_A[5]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_6  (
    .C(MGT_CLK),
    .D(MGT_A[6]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_7  (
    .C(MGT_CLK),
    .D(MGT_A[7]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_8  (
    .C(MGT_CLK),
    .D(MGT_A[8]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/mgt_a_q_9  (
    .C(MGT_CLK),
    .D(MGT_A[9]),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/wm_wr_en_q  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/write_en_MGT_rst_n_OR_189_o ),
    .Q(\U0/buffer_top_inst/cfg_inst/wm_wr_en_q_1707 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_2  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0171[2] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[2] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_11  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0207 [1]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[11] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_12  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0198 [1]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[12] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_13  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0198 [2]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[13] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_14  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0198 [3]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[14] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_15  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0198 [4]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[15] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_16  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0171[16] ),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[16] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_19  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0201 [0]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[19] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_20  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0201 [1]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[20] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_21  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0201 [2]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[21] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_22  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0201 [3]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[22] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_23  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0201 [4]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[23] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_27  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0211 [1]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[27] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_28  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0204 [1]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[28] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_29  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0204 [2]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[29] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_30  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0204 [3]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[30] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/MGT_do_31  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/_n0204 [4]),
    .Q(\U0/buffer_top_inst/cfg_inst/MGT_do[31] )
  );
  FD   \U0/buffer_top_inst/cfg_inst/phy_tx_flow_ctrl  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_388 ),
    .Q(\U0/buffer_top_inst/cfg_inst/phy_tx_flow_ctrl_1710 )
  );
  FDS   \U0/buffer_top_inst/cfg_inst/mgt_wr_n_q_0  (
    .C(MGT_CLK),
    .D(MGT_WR_N[0]),
    .S(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wr_n_q [0])
  );
  FDS   \U0/buffer_top_inst/cfg_inst/mgt_wr_n_q_1  (
    .C(MGT_CLK),
    .D(MGT_WR_N[1]),
    .S(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wr_n_q [1])
  );
  FDS   \U0/buffer_top_inst/cfg_inst/mgt_wr_n_q_2  (
    .C(MGT_CLK),
    .D(MGT_WR_N[2]),
    .S(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wr_n_q [2])
  );
  FDS   \U0/buffer_top_inst/cfg_inst/mgt_wr_n_q_3  (
    .C(MGT_CLK),
    .D(MGT_WR_N[3]),
    .S(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/mgt_wr_n_q [3])
  );
  LUT5 #(
    .INIT ( 32'hAAAABAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1647_inv1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_747 ),
    .I4(LNK_TDST_RDY_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1647_inv )
  );
  LUT5 #(
    .INIT ( 32'hAAAABAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1641_inv1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_747 ),
    .I4(LNK_TDST_RDY_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1641_inv )
  );
  LUT5 #(
    .INIT ( 32'hAAAAEAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1653_inv1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_747 ),
    .I4(LNK_TDST_RDY_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1653_inv )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o1  (
    .I0(LNK_TDST_DSC_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_747 ),
    .I2(LNK_TDST_RDY_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o )
  );
  LUT6 #(
    .INIT ( 64'hBEEEEEEE14444444 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue3 )
  );
  LUT6 #(
    .INIT ( 64'hBEEEEEEE14444444 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue3 )
  );
  LUT6 #(
    .INIT ( 64'hBEEEEEEE14444444 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue3 )
  );
  LUT6 #(
    .INIT ( 64'hBEEEEEEE14444444 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue3 )
  );
  LUT6 #(
    .INIT ( 64'h2000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1  (
    .I0(LNK_TDST_DSC_N),
    .I1(LNK_TDST_RDY_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_750 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable_1_737 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_reduce_or_282_o ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_resp_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>1 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_resp_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>1 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req2_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>3 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req2_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>3 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req1_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result [4])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req1_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result [3])
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req0_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>2 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req0_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>2 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_resp_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>5 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_resp_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>5 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req2_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>4 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req2_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>4 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req1_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>7 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req1_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>7 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req0_queue_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>8 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req0_queue_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>8 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_local_last_acked_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>6 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_local_last_acked_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<3>6 )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_bram_raddr_l_xor<5>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result [5])
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_bram_raddr_l_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<4>9 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/eof_event_752 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_response_q_751 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/wren_req2_queue )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_response_q_751 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/eof_event_752 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/wren_req1_queue )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wr_priority [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_response_q_751 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/eof_event_752 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/wren_req0_queue )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_resp_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>1 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req2_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>3 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req1_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result [2])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req0_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>2 )
  );
  LUT5 #(
    .INIT ( 32'hBEEE1444 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue2 )
  );
  LUT5 #(
    .INIT ( 32'hBEEE1444 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue2 )
  );
  LUT5 #(
    .INIT ( 32'hBEEE1444 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue2 )
  );
  LUT5 #(
    .INIT ( 32'hBEEE1444 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue2 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_resp_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>5 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req2_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>4 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req1_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>7 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req0_queue_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>8 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_local_last_acked_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<2>6 )
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue1 )
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue1 )
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue1 )
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue1 )
  );
  LUT6 #(
    .INIT ( 64'h6AAA0000AAAA0000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_bram_waddr_l31  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [5]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_we ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [2])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Madd_bram_waddr_l_q[0]_GND_9_o_add_14_OUT_cy<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [5]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Madd_bram_waddr_l_q[0]_GND_9_o_add_14_OUT_cy<3> )
  );
  LUT6 #(
    .INIT ( 64'h02020257FFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1694_inv1  (
    .I0(LNK_TDST_RDY_N),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .I2(LNK_TDST_DSC_N),
    .I3(NlwRenamedSig_OI_LNK_TEOF_N),
    .I4(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n ),
    .I5(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1694_inv )
  );
  LUT6 #(
    .INIT ( 64'h5555555504000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1737<1>2  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/pending_list [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/pcfg_master_en_q_757 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/pending_list [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/req0_pending_615 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/pending_list [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1737 [1])
  );
  LUT6 #(
    .INIT ( 64'h80008000FFFF0000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_n074831  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_2_671 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_1_672 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_0_673 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list_3_670 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/address_tagb [0]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/n0748 [2])
  );
  LUT6 #(
    .INIT ( 64'hDD4D4D44DD4DDD4D ))
  \U0/buffer_top_inst/tx_buffer_inst/LCFG_wm2[0]_link_free_buffer[0]_LessThan_233_o1  (
    .I0(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [2]),
    .I2(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [4]),
    .I5(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LCFG_wm2[0]_link_free_buffer[0]_LessThan_233_o1_462 )
  );
  LUT6 #(
    .INIT ( 64'hDD4D4D44DD4DDD4D ))
  \U0/buffer_top_inst/tx_buffer_inst/LCFG_wm1[0]_link_free_buffer[0]_LessThan_234_o1  (
    .I0(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [2]),
    .I2(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [4]),
    .I5(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LCFG_wm1[0]_link_free_buffer[0]_LessThan_234_o1_463 )
  );
  LUT6 #(
    .INIT ( 64'hDD4D4D44DD4DDD4D ))
  \U0/buffer_top_inst/tx_buffer_inst/LCFG_wm0[0]_link_free_buffer[0]_LessThan_235_o1  (
    .I0(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [2]),
    .I2(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [4]),
    .I5(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LCFG_wm0[0]_link_free_buffer[0]_LessThan_235_o1_464 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCF0F0AAAAFF00 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_next_read_tag41  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/_n1047 [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1045 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1046 [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1043 [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/_n1737 [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/_n1737 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [3])
  );
  LUT6 #(
    .INIT ( 64'hCCCCF0F0AAAAFF00 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_next_read_tag31  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/_n1047 [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1045 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1046 [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1043 [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/_n1737 [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/_n1737 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [2])
  );
  LUT6 #(
    .INIT ( 64'hCCCCF0F0AAAAFF00 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_next_read_tag21  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/_n1047 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1045 [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1046 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1043 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/_n1737 [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/_n1737 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [1])
  );
  LUT6 #(
    .INIT ( 64'hCCCCF0F0AAAAFF00 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_next_read_tag11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/_n1047 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1045 [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1046 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1043 [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/_n1737 [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/_n1737 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/next_read_tag [0])
  );
  LUT6 #(
    .INIT ( 64'hF731FFFF7310FFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/prio2_mask1  (
    .I0(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [1]),
    .I1(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_388 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/LCFG_wm2[0]_link_free_buffer[0]_LessThan_233_o1_462 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask )
  );
  LUT6 #(
    .INIT ( 64'hF731FFFF7310FFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/prio1_mask1  (
    .I0(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [1]),
    .I1(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_388 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/LCFG_wm1[0]_link_free_buffer[0]_LessThan_234_o1_463 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask )
  );
  LUT6 #(
    .INIT ( 64'hF731FFFF7310FFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/prio0_mask1  (
    .I0(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [1]),
    .I1(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_388 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/LCFG_wm0[0]_link_free_buffer[0]_LessThan_235_o1_464 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask )
  );
  LUT3 #(
    .INIT ( 8'h0D ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_rd1  (
    .I0(LNK_TDST_RDY_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/update_window_qq_738 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/update_window ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_rd )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_transmit_enable<0>11  (
    .I0(LNK_TDST_DSC_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_736 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/load_backup_q_744 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable_1_737 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable [0])
  );
  LUT3 #(
    .INIT ( 8'h41 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1748<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_719 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_720 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_721 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1748 [1])
  );
  LUT5 #(
    .INIT ( 32'hEFEA4540 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_LNK_td<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_transmitting_resp_AND_318_o ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1748 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_existing_priority[0]_AND_320_o ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [6]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [1]),
    .O(LNK_TD[1])
  );
  LUT4 #(
    .INIT ( 16'hAA2A ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_teof_n1  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_655 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_654 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [2]),
    .O(NlwRenamedSig_OI_LNK_TEOF_N)
  );
  LUT5 #(
    .INIT ( 32'h44440040 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_lnk_tdst_dsc_n_q_AND_282_o1  (
    .I0(LNK_TDST_DSC_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_736 ),
    .I2(LNK_TDST_RDY_N),
    .I3(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_749 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_lnk_tdst_dsc_n_q_AND_282_o )
  );
  LUT6 #(
    .INIT ( 64'h5575555577755555 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_set_update_window11  (
    .I0(LNK_TDST_DSC_N),
    .I1(LNK_TDST_RDY_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_654 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_early ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/set_update_window )
  );
  LUT6 #(
    .INIT ( 64'h8880AAAA9991AAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd2-In1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd2_542 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_736 ),
    .I2(LNK_TDST_RDY_N),
    .I3(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .I4(LNK_TDST_DSC_N),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd1_730 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd2-In )
  );
  LUT6 #(
    .INIT ( 64'hA8AAFFAAA8AAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd1-In1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd1_730 ),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .I2(LNK_TDST_RDY_N),
    .I3(LNK_TDST_DSC_N),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_736 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd2_542 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'h2AAA0000 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1618_inv1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tag_search_657 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_656 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tag_marker[0]_rs_read_tag[0]_equal_148_o ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1618_inv )
  );
  LUT6 #(
    .INIT ( 64'h8808080888888888 ))
  \U0/buffer_top_inst/tx_buffer_inst/address_tagb<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_665 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_664 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_663 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list_13_660 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list_12_661 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_662 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/address_tagb [1])
  );
  LUT5 #(
    .INIT ( 32'hCCCE000A ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_A11  (
    .I0(LNK_TNEXT_FM[4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_lnk_tdst_dsc_n_q_AND_282_o ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_B<0> ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<0> )
  );
  LUT5 #(
    .INIT ( 32'h888888F8 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_A21  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_B<0> ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I2(LNK_TNEXT_FM[3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_lnk_tdst_dsc_n_q_AND_282_o ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<1> )
  );
  LUT5 #(
    .INIT ( 32'h888888F8 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_A31  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_B<0> ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .I2(LNK_TNEXT_FM[2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_lnk_tdst_dsc_n_q_AND_282_o ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<2> )
  );
  LUT5 #(
    .INIT ( 32'h888888F8 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_A41  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_B<0> ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I2(LNK_TNEXT_FM[1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_lnk_tdst_dsc_n_q_AND_282_o ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<3> )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<0>21  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_746 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<0>2 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<4>21  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_746 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<4>2 )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<10>21  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_746 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<10>2 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<12>21  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_746 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<12>2 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_resp_retry_backup_queue_update[0]_MUX_315_o11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1049 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1049 [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0568 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_backup_queue_update[0]_MUX_315_o )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<0>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<0>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<0>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue )
  );
  LUT3 #(
    .INIT ( 8'hB1 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<0>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1748<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_720 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_719 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1748 [0])
  );
  LUT4 #(
    .INIT ( 16'hFF80 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_rd_tag_ack_q_partial_OR_147_o1  (
    .I0(LNK_TDST_RDY_N),
    .I1(LNK_TDST_DSC_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_747 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_rd_tag_ack_q_partial_OR_147_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req0_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req1_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>7 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_local_last_acked_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_resp_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>5 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req2_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req2_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req0_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_resp_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<1>1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req1_queue_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result [1])
  );
  LUT3 #(
    .INIT ( 8'h8F ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_syn_out_of_packet11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_741 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_full ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet )
  );
  LUT4 #(
    .INIT ( 16'h44F4 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_eval_for_backup11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_d_742 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_q_743 ),
    .I2(LNK_TDST_DSC_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_736 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/eval_for_backup )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_ack_tag_rd_addr11  (
    .I0(LNK_TNEXT_FM[0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [0])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_ack_tag_rd_addr21  (
    .I0(LNK_TNEXT_FM[1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [1])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_ack_tag_rd_addr31  (
    .I0(LNK_TNEXT_FM[2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [2])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_ack_tag_rd_addr41  (
    .I0(LNK_TNEXT_FM[3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [3])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_ack_tag_rd_addr51  (
    .I0(LNK_TNEXT_FM[4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/ack_tag_rd_addr [4])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1665_inv1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/_n1049 [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1049 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/n0357 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1665_inv )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1662_inv1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/_n1049 [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/n0357 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1049 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1662_inv )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1656_inv1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/n0357 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1049 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1049 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1656_inv )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1659_inv1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/n0357 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1049 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1049 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1659_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFF8F0 ))
  \U0/buffer_top_inst/tx_buffer_inst/out121  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/pcfg_master_en_q_757 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/req0_pending_615 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/pending_list [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/pending_list [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/pending_list [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_reduce_or_282_o )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/buffer_top_inst/tx_buffer_inst/out81  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_665 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_664 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_663 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_662 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/address_tagb [0])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack1  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .I1(LNK_TDST_RDY_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_existing_priority[0]_AND_320_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_716 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/existing_priority[0]_tx_prio_adjust[0]_LessThan_338_o ),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_existing_priority[0]_AND_320_o )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage21  (
    .I0(LNK_TDST_RDY_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_749 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_rd_stage2 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_response_q_751 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/eof_event_752 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/wren_resp_queue )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list<2>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/pcfg_master_en_q_757 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/req1_pending_614 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/tx_buffer_inst/tag_set_resp_retry_AND_235_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tag_set_764 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_653 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tag_set_resp_retry_AND_235_o )
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_tbuf_stat[0]_reduce_nand_231_o1  (
    .I0(LNK_RX_BUF_STAT[4]),
    .I1(LNK_RX_BUF_STAT[0]),
    .I2(LNK_RX_BUF_STAT[1]),
    .I3(LNK_RX_BUF_STAT[2]),
    .I4(LNK_RX_BUF_STAT[3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_tbuf_stat[0]_reduce_nand_231_o )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut<0>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I1(LNK_TLAST_ACK[4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut [0])
  );
  LUT5 #(
    .INIT ( 32'hCC313131 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<4>1  (
    .I0(LNK_TNEXT_FM[0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_lnk_tdst_dsc_n_q_AND_282_o ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_B<0> ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<4> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_lut<2>1  (
    .I0(LNK_RX_BUF_STAT[2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_lut [2])
  );
  LUT4 #(
    .INIT ( 16'h9A56 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut[1] ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut[0] ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [5]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBLD_tx_sof_n_TBUF_dst_rdy_n_AND_31_o ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Result [1])
  );
  LUT6 #(
    .INIT ( 64'h1111111111101111 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mmux_log_packet_ack_n_GND_10_o_MUX_106_o11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_988 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_i_993 ),
    .I2(NlwRenamedSig_OI_TX_RDY_N_I),
    .I3(TX_VLD_N_O),
    .I4(TX_SOF_N_O),
    .I5(TX_DSC_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/log_packet_ack_n_GND_10_o_MUX_106_o )
  );
  LUT6 #(
    .INIT ( 64'h011001100110FFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/_n0093_inv1  (
    .I0(TX_VLD_N_O),
    .I1(NlwRenamedSig_OI_TX_RDY_N_I),
    .I2(TX_SOF_N_O),
    .I3(TX_DSC_N_O),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_988 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_i_993 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/_n0093_inv )
  );
  LUT4 #(
    .INIT ( 16'h8F88 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mmux_true_synch_unit.vld_window11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.vld_window_q_990 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.eof_valid_q_989 ),
    .I2(TX_SOF_N_O),
    .I3(TX_DSC_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.vld_window )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/ram_wr_en_i1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_746 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_893 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/ram_rd_en_i1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_988 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_918 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_rd_en )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_comb1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_936 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_asreg_d2_937 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/rd_rst_comb )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_comb1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_939 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_asreg_d2_940 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/rstblk/wr_rst_comb )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBUF_dst_rdy_n1  (
    .I0(LOG_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_994 ),
    .O(NlwRenamedSig_OI_TX_RDY_N_I)
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Madd_gc0.count[3]_GND_27_o_add_0_OUT_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [1]),
    .O
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[3]_GND_27_o_add_0_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Madd_gc0.count[3]_GND_27_o_add_0_OUT_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [2]),
    .O
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[3]_GND_27_o_add_0_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Madd_gc0.count[3]_GND_27_o_add_0_OUT_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0]),
    .O
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[3]_GND_27_o_add_0_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[3]_reduce_xor_11_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .O
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[3]_reduce_xor_11_o )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[3]_reduce_xor_12_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1]),
    .O
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[3]_reduce_xor_12_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[3]_reduce_xor_4_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .O
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[3]_reduce_xor_4_o )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[3]_reduce_xor_5_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .O
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[3]_reduce_xor_5_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_WR_PNTR[2]_WR_PNTR[3]_XOR_1_o_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/WR_PNTR[2]_WR_PNTR[3]_XOR_1_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_RD_PNTR[2]_RD_PNTR[3]_XOR_10_o_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/RD_PNTR[2]_RD_PNTR[3]_XOR_10_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_RD_PNTR[1]_RD_PNTR[2]_XOR_11_o_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/RD_PNTR[1]_RD_PNTR[2]_XOR_11_o )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[3]_reduce_xor_131_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .O
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[3]_reduce_xor_13_o )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[3]_reduce_xor_61_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .O
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[3]_reduce_xor_6_o )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[4]_GND_49_o_add_0_OUT<3>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[4]_GND_49_o_add_0_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[4]_GND_49_o_add_0_OUT<4>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[4]_GND_49_o_add_0_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Madd_gc0.count[4]_GND_49_o_add_0_OUT_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[4]_GND_49_o_add_0_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Madd_gc0.count[4]_GND_49_o_add_0_OUT_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count[4]_GND_49_o_add_0_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count[4]_GND_55_o_add_0_OUT<3>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count[4]_GND_55_o_add_0_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count[4]_GND_55_o_add_0_OUT<4>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count[4]_GND_55_o_add_0_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Madd_gic0.gc0.count[4]_GND_55_o_add_0_OUT_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count[4]_GND_55_o_add_0_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Madd_gic0.gc0.count[4]_GND_55_o_add_0_OUT_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count[4]_GND_55_o_add_0_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_12_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_12_o )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_13_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_13_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_4_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_4_o )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_5_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_5_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_WR_PNTR[3]_WR_PNTR[4]_XOR_19_o_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d2 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d2 [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/WR_PNTR[3]_WR_PNTR[4]_XOR_19_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_WR_PNTR[2]_WR_PNTR[3]_XOR_20_o_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d2 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d2 [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/WR_PNTR[2]_WR_PNTR[3]_XOR_20_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_RD_PNTR[3]_RD_PNTR[4]_XOR_27_o_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/RD_PNTR[3]_RD_PNTR[4]_XOR_27_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_RD_PNTR[2]_RD_PNTR[3]_XOR_28_o_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/RD_PNTR[2]_RD_PNTR[3]_XOR_28_o )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_RD_PNTR[1]_RD_PNTR[2]_XOR_29_o_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/RD_PNTR[1]_RD_PNTR[2]_XOR_29_o )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_151_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_15_o )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_71_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_7_o )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_141_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1 [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_gc_asreg_d1[4]_reduce_xor_14_o )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_61_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1 [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_gc_asreg_d1[4]_reduce_xor_6_o )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_xor<4>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Result [4])
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_xor<5>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Result [5])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_xor<3>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Result [3])
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag_xor<3>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag3 )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag_xor<4>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag4 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag_xor<2>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag2 )
  );
  LUT5 #(
    .INIT ( 32'h6CCCCCCC ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_xor<4>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_cy<0> ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<4> ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<3> ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<1> ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<2> ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'h7F80 ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_xor<3>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<2> ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_cy<0> ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<1> ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<3> ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_INV_421_o1  (
    .I0(RX_RDY_N_O),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_INV_421_o )
  );
  LUT5 #(
    .INIT ( 32'h2A2A2AFF ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o1  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_1418 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_1415 ),
    .I3(RX_RDY_N_O),
    .I4(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o )
  );
  LUT5 #(
    .INIT ( 32'h6AAA0000 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_l41  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_log_buffer_empty_AND_358_o ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [3])
  );
  LUT4 #(
    .INIT ( 16'hEEE0 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_l611  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_1431 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q_1425 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_q_1417 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n_q_1416 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_l61_1311 )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAA00000000 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_l31  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_log_buffer_empty_AND_358_o ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [2])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag_xor<1>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag1_1342 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_xor<2>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h6A00 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_l51  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_log_buffer_empty_AND_358_o ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [4])
  );
  LUT6 #(
    .INIT ( 64'h0000000100010001 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_GND_172_o_PWR_68_o_MUX_414_o11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [2]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [3]),
    .I4(LNK_REOF_N),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [4]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_PWR_68_o_MUX_414_o )
  );
  LUT6 #(
    .INIT ( 64'h0888888888888888 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_PWR_68_o_PWR_68_o_mux_12_OUT11  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [4]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [0]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [1]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [2]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/PWR_68_o_PWR_68_o_mux_12_OUT [0])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_LNK_rdst_dsc_n11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we1_1310 ),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n ),
    .I2(LNK_RSRC_RDY_N),
    .O(LNK_RDST_DSC_N)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub_GND_172_o_GND_172_o_sub_47_OUT<4:0>_xor<3>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/Msub_write_status_partial_lut [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/Msub_GND_172_o_GND_172_o_sub_47_OUT<4:0>_xor<4>11_1309 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_GND_172_o_sub_47_OUT [3])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_PWR_68_o_PWR_68_o_mux_12_OUT21  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/PWR_68_o_PWR_68_o_mux_12_OUT [1])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_PWR_68_o_PWR_68_o_mux_12_OUT31  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/PWR_68_o_PWR_68_o_mux_12_OUT [2])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_PWR_68_o_PWR_68_o_mux_12_OUT41  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/PWR_68_o_PWR_68_o_mux_12_OUT [3])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_PWR_68_o_PWR_68_o_mux_12_OUT51  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/PWR_68_o_PWR_68_o_mux_12_OUT [4])
  );
  LUT3 #(
    .INIT ( 8'h8F ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_in_rpacket11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_1415 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_1418 ),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_val1  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_reof_n_q_1394 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_val )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_xor<1>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Result [1])
  );
  LUT3 #(
    .INIT ( 8'h8F ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_in_wpacket11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/in_wpacket_q_1407 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_reof_n_q_1394 ),
    .I2(LNK_RSOF_N),
    .O(\U0/buffer_top_inst/rx_buffer_inst/in_wpacket )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid1  (
    .I0(LNK_RSRC_RDY_N),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/lnk_phase_valid )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/rx_buffer_inst/_n04051  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_388 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/_n0405 )
  );
  LUT5 #(
    .INIT ( 32'h7FFFBFFF ))
  \U0/buffer_top_inst/rx_buffer_inst/_n038011  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut [2]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut [1]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_cy<0> ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/_n03801 )
  );
  LUT4 #(
    .INIT ( 16'hF3F7 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/BRAM_eof_n1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_1586 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [68]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/BRAM_sof_n1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT221  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT311  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT3 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT131  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT1_1590 )
  );
  LUT5 #(
    .INIT ( 32'h96696996 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [4]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/lnk_read_tag_gc_async [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_lnk_read_tag_gc_async[0]_PWR_80_o_wide_mux_8_OUT )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_log_write_tag_gc_async[0]_PWR_80_o_wide_mux_17_OUT211  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_log_write_tag_gc_async[0]_PWR_80_o_wide_mux_17_OUT2 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_log_write_tag_gc_async[0]_PWR_80_o_wide_mux_17_OUT1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [0]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_log_write_tag_gc_async[0]_PWR_80_o_wide_mux_17_OUT )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_log_write_tag_gc_async[0]_PWR_80_o_wide_mux_17_OUT131  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/log_write_tag_gc_async [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_log_write_tag_gc_async[0]_PWR_80_o_wide_mux_17_OUT1_1594 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LNK_write_tag[0]_PWR_80_o_wide_mux_12_OUT21  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LNK_write_tag[0]_PWR_80_o_wide_mux_12_OUT2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LNK_write_tag[0]_PWR_80_o_wide_mux_12_OUT111  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LNK_write_tag[0]_PWR_80_o_wide_mux_12_OUT1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LNK_write_tag[0]_PWR_80_o_wide_mux_12_OUT11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LNK_write_tag[0]_PWR_80_o_wide_mux_12_OUT )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT31  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT21  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [1]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT111  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [2]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/Mram_LOG_read_tag[0]_PWR_80_o_wide_mux_1_OUT )
  );
  LUT5 #(
    .INIT ( 32'h57555555 ))
  \U0/buffer_top_inst/cfg_inst/_n0158_inv1  (
    .I0(MGT_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I2(MGT_WR_N[1]),
    .I3(\U0/buffer_top_inst/cfg_inst/write_en_1645 ),
    .I4(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .O(\U0/buffer_top_inst/cfg_inst/_n0158_inv )
  );
  LUT5 #(
    .INIT ( 32'h57555555 ))
  \U0/buffer_top_inst/cfg_inst/_n0150_inv2  (
    .I0(MGT_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I2(MGT_WR_N[3]),
    .I3(\U0/buffer_top_inst/cfg_inst/write_en_1645 ),
    .I4(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .O(\U0/buffer_top_inst/cfg_inst/_n0150_inv )
  );
  LUT5 #(
    .INIT ( 32'h57555555 ))
  \U0/buffer_top_inst/cfg_inst/_n0154_inv1  (
    .I0(MGT_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I2(MGT_WR_N[2]),
    .I3(\U0/buffer_top_inst/cfg_inst/write_en_1645 ),
    .I4(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .O(\U0/buffer_top_inst/cfg_inst/_n0154_inv )
  );
  LUT4 #(
    .INIT ( 16'h08FF ))
  \U0/buffer_top_inst/cfg_inst/write_en_MGT_rst_n_OR_189_o1  (
    .I0(\U0/buffer_top_inst/cfg_inst/write_en_1645 ),
    .I1(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I3(MGT_RST_N),
    .O(\U0/buffer_top_inst/cfg_inst/write_en_MGT_rst_n_OR_189_o )
  );
  LUT5 #(
    .INIT ( 32'h00FEFEFE ))
  \U0/buffer_top_inst/cfg_inst/read_en_INV_446_o1  (
    .I0(\U0/buffer_top_inst/cfg_inst/first_rd_1692 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_rd_n_q_1695 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_sel_n_q_1696 ),
    .I3(\NlwRenamedSig_OI_U0/buffer_top_inst/cfg_inst/MGT_rdy_n ),
    .I4(\U0/buffer_top_inst/cfg_inst/write_en_1645 ),
    .O(\U0/buffer_top_inst/cfg_inst/read_en_INV_446_o )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \U0/buffer_top_inst/cfg_inst/_n0207<1>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [0]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0207 [1])
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \U0/buffer_top_inst/cfg_inst/_n0211<1>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [0]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0211 [1])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/cfg_inst/_n0171<16>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_1676 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I2(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .O(\U0/buffer_top_inst/cfg_inst/_n0171[16] )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/cfg_inst/_n0171<2>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/bc_tx_flow_ctrl_1693 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I2(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .O(\U0/buffer_top_inst/cfg_inst/_n0171[2] )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/cfg_inst/_n0198<4>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [4]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0198 [4])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/cfg_inst/_n0198<3>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [3]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0198 [3])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/cfg_inst/_n0198<2>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [2]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0198 [2])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/cfg_inst/_n0198<1>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [1]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0198 [1])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/cfg_inst/_n0201<4>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [4]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0201 [4])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/cfg_inst/_n0201<3>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [3]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0201 [3])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/cfg_inst/_n0201<2>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [2]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0201 [2])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/cfg_inst/_n0201<1>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [1]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0201 [1])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/cfg_inst/_n0201<0>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [0]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0201 [0])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/cfg_inst/_n0204<4>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [4]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0204 [4])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/cfg_inst/_n0204<3>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [3]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0204 [3])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/cfg_inst/_n0204<2>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [2]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0204 [2])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/cfg_inst/_n0204<1>1  (
    .I0(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [1]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .O(\U0/buffer_top_inst/cfg_inst/_n0204 [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT11  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [4]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT21  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [3]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT31  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [2]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT41  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [1]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT51  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm1 [0]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark1[0]_CFG_in[19]_mux_47_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT11  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [4]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT21  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [3]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT31  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [2]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT41  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [1]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT51  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm0 [0]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark0[0]_CFG_in[27]_mux_46_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT11  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [4]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT21  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [3]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT31  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [2]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT41  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [1]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT51  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_wm2 [0]),
    .O(\U0/buffer_top_inst/cfg_inst/BCFG_watermark2[0]_CFG_in[11]_mux_48_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm1[0]_CFG_in[19]_mux_29_OUT11  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[23]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm1[0]_CFG_in[19]_mux_29_OUT21  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[22]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm1[0]_CFG_in[19]_mux_29_OUT31  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[21]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm1[0]_CFG_in[19]_mux_29_OUT41  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[20]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm1[0]_CFG_in[19]_mux_29_OUT51  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[19]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm1[0]_CFG_in[19]_mux_29_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm2[0]_CFG_in[11]_mux_30_OUT11  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[15]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm2[0]_CFG_in[11]_mux_30_OUT21  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[14]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm2[0]_CFG_in[11]_mux_30_OUT31  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[13]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm2[0]_CFG_in[11]_mux_30_OUT41  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[12]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm2[0]_CFG_in[11]_mux_30_OUT51  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[11]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm2[0]_CFG_in[11]_mux_30_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm0[0]_CFG_in[27]_mux_28_OUT11  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[31]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm0[0]_CFG_in[27]_mux_28_OUT21  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[30]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm0[0]_CFG_in[27]_mux_28_OUT31  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[29]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm0[0]_CFG_in[27]_mux_28_OUT41  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[28]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/cfg_inst/Mmux_mgt_wm0[0]_CFG_in[27]_mux_28_OUT51  (
    .I0(MGT_RST_N),
    .I1(MGT_DI[27]),
    .O(\U0/buffer_top_inst/cfg_inst/mgt_wm0[0]_CFG_in[27]_mux_28_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/cfg_inst/_n0160_inv1  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/cfg_inst/pulse_wr_wm_qq_1711 ),
    .O(\U0/buffer_top_inst/cfg_inst/_n0160_inv )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<4>1_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'hBEEEEEEE14444444 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue_xor<4>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .I4(N2),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_resp_queue4 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<4>1_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hBEEEEEEE14444444 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue_xor<4>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1]),
    .I4(N4),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req2_queue4 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<4>1_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'hBEEEEEEE14444444 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue_xor<4>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .I4(N6),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req1_queue4 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<4>1_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'hBEEEEEEE14444444 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue_xor<4>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .I4(N8),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_req0_queue4 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o2  (
    .I0(LNK_RX_BUF_STAT[2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [2]),
    .I2(LNK_RX_BUF_STAT[1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o1_1726 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o2_1727 )
  );
  LUT6 #(
    .INIT ( 64'h2000200020000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o4  (
    .I0(LNK_TDST_DSC_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/load_backup_d_742 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_reduce_or_282_o ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable_1_737 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o3_1728 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o2_1727 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o )
  );
  LUT5 #(
    .INIT ( 32'h7F5D2A08 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_cy<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<1> ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<0> ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<0> ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<1> ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_cy<2>1 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/out51  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_14_659 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_15_658 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_12_661 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list_13_660 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_663 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_662 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/out5 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/out52  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_665 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_664 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_6_667 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list_7_666 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list_4_669 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_5_668 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/out51_1732 )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/out53  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_1_672 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_0_673 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_2_671 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list_3_670 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/out5 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/out51_1732 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_full )
  );
  LUT6 #(
    .INIT ( 64'h4F00FFFF00000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_n074811  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_15_658 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_14_659 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_13_660 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list_12_661 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_662 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_663 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mmux_n07481 )
  );
  LUT6 #(
    .INIT ( 64'hCFCF4F4F4FCF4F4F ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_n074812  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_7_666 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_6_667 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_5_668 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_664 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_665 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/Mmux_n07481 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mmux_n074811_1734 )
  );
  LUT6 #(
    .INIT ( 64'hD500F5005500F500 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_n074813  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_1_672 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_4_669 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_2_671 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list_0_673 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list_3_670 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/Mmux_n074811_1734 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/n0748 [0])
  );
  LUT4 #(
    .INIT ( 16'h7BDE ))
  \U0/buffer_top_inst/tx_buffer_inst/tag_marker[0]_rs_read_tag[0]_equal_148_o4_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1043 [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1043 [1]),
    .O(N14)
  );
  LUT5 #(
    .INIT ( 32'h00008421 ))
  \U0/buffer_top_inst/tx_buffer_inst/tag_marker[0]_rs_read_tag[0]_equal_148_o4  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1043 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1043 [2]),
    .I4(N14),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tag_marker[0]_rs_read_tag[0]_equal_148_o )
  );
  LUT6 #(
    .INIT ( 64'h7FF7DFFDBFFBEFFE ))
  \U0/buffer_top_inst/tx_buffer_inst/n05685_SW0  (
    .I0(LNK_TNEXT_FM[4]),
    .I1(LNK_TNEXT_FM[1]),
    .I2(LNK_TNEXT_FM[0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .O(N16)
  );
  LUT5 #(
    .INIT ( 32'h00008421 ))
  \U0/buffer_top_inst/tx_buffer_inst/n05685  (
    .I0(LNK_TNEXT_FM[2]),
    .I1(LNK_TNEXT_FM[3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I4(N16),
    .O(\U0/buffer_top_inst/tx_buffer_inst/n0568 )
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/n05285_SW0  (
    .I0(LNK_TLAST_ACK[4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .I2(LNK_TLAST_ACK[3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [3]),
    .I4(LNK_TLAST_ACK[2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [2]),
    .O(N18)
  );
  LUT5 #(
    .INIT ( 32'h41000041 ))
  \U0/buffer_top_inst/tx_buffer_inst/n05285  (
    .I0(N18),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [1]),
    .I2(LNK_TLAST_ACK[1]),
    .I3(LNK_TLAST_ACK[0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/n0528 )
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/n03575_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [2]),
    .O(N20)
  );
  LUT5 #(
    .INIT ( 32'h41000041 ))
  \U0/buffer_top_inst/tx_buffer_inst/n03575  (
    .I0(N20),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/lnk_tlast_ack_q [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked_q [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/n0357 )
  );
  LUT4 #(
    .INIT ( 16'h8421 ))
  \U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_current_ack_tag_d[0]_AND_241_o_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'h8040201000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_current_ack_tag_d[0]_AND_241_o  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_746 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [1]),
    .I5(N22),
    .O(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_current_ack_tag_d[0]_AND_241_o_618 )
  );
  LUT6 #(
    .INIT ( 64'hBF2FBFBFFFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_transmitting_resp_AND_318_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1748 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_716 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/_n1748 [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/existing_priority[0]_tx_prio_adjust[0]_LessThan_338_o ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_transmitting_resp_AND_318_o1_1740 )
  );
  LUT6 #(
    .INIT ( 64'hFF7F3F1F0F070301 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n15471  (
    .I0(LNK_RX_BUF_STAT[4]),
    .I1(LNK_RX_BUF_STAT[3]),
    .I2(LNK_RX_BUF_STAT[2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_lut [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n15471_1741 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_388 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list<0>1_1743 )
  );
  LUT3 #(
    .INIT ( 8'h8F ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_n07482_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_5_668 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_4_669 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_2_671 ),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'h88088808FFFF0000 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_n07482  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_1_672 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_0_673 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_3_670 ),
    .I3(N24),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/address_tagb [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/n0748 [1])
  );
  LUT6 #(
    .INIT ( 64'h22F222F2FFFF22F2 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1737<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1737<1>1 )
  );
  LUT6 #(
    .INIT ( 64'h6FF66FF6FFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1737<1>12  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1737<1>11_1746 )
  );
  LUT4 #(
    .INIT ( 16'h44F4 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1737<1>13  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req2_queue [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1737<1>12_1747 )
  );
  LUT5 #(
    .INIT ( 32'hAAA80000 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1737<1>14  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/pcfg_master_en_q_757 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1737<1>12_1747 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1737<1>11_1746 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1737<1>1 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list [1])
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/req1_pending_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [2]),
    .O(N26)
  );
  LUT5 #(
    .INIT ( 32'hFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/req1_pending  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req1_queue [3]),
    .I4(N26),
    .O(\U0/buffer_top_inst/tx_buffer_inst/req1_pending_614 )
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/req0_pending_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [2]),
    .O(N28)
  );
  LUT5 #(
    .INIT ( 32'hFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/req0_pending  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rdpt_req0_queue [3]),
    .I4(N28),
    .O(\U0/buffer_top_inst/tx_buffer_inst/req0_pending_615 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_2_671 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_1_672 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_0_673 ),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_7_666 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_6_667 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_5_668 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list_4_669 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list_3_670 ),
    .I5(N30),
    .O(\U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_3_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_3_o1_1751 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o1_1752 )
  );
  LUT6 #(
    .INIT ( 64'h8008000000008008 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o2  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_wr_en ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o1_1752 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o2_1753 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o3  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1 [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1 [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o3_1754 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o1_1755 )
  );
  LUT6 #(
    .INIT ( 64'h8008000000008008 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o2  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/ram_rd_en ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o1_1755 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o2_1756 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o3  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o3_1757 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TX_resp_only_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/pcfg_master_en_a [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [0]),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF8000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TX_resp_only  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [5]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [1]),
    .I5(N32),
    .O(TX_RESP_ONLY_I)
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_9_o2  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_9_o2_1759 )
  );
  LUT4 #(
    .INIT ( 16'hFF2A ))
  \U0/buffer_top_inst/rx_buffer_inst/_n0401_SW0  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_1415 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_1418 ),
    .I3(RX_RDY_N_O),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'h7FFF7FFFFFFF4EFE ))
  \U0/buffer_top_inst/rx_buffer_inst/set_empty_bram_eof_n_AND_349_o21  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [2]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [1]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/set_empty_bram_eof_n_AND_349_o2 )
  );
  LUT4 #(
    .INIT ( 16'hF5FC ))
  \U0/buffer_top_inst/rx_buffer_inst/set_empty_bram_eof_n_AND_349_o22  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/set_empty_bram_eof_n_AND_349_o2 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_log_buffer_empty_AND_358_o ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/set_empty_bram_eof_n_AND_349_o21_1763 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_log_ready_AND_356_o_SW0  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [0]),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'h0000000100010001 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_log_ready_AND_356_o  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q_1425 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_1431 ),
    .I3(N38),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_1418 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_1415 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_log_ready_AND_356_o_1363 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_l2_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4]),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'h6CCCCCCC00000000 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_l2  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [3]),
    .I3(N40),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_log_buffer_empty_AND_358_o ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [1])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_l1_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [4]),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAA00000000 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_l1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [3]),
    .I3(N42),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_log_buffer_empty_AND_358_o ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [0])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we1_SW0  (
    .I0(LNK_RSOF_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [1]),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFB91 ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [4]),
    .I2(LNK_RD[1]),
    .I3(LNK_RD[0]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [2]),
    .I5(N46),
    .O(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we1_1310 )
  );
  LUT6 #(
    .INIT ( 64'hF0000C0200000001 ))
  \U0/buffer_top_inst/rx_buffer_inst/set_empty_single1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut [2]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut [1]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/set_empty_single1_1768 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/cfg_inst/write_en_SW0  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_rd_n_q_1695 ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_sel_n_q_1696 ),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'h0222222222222222 ))
  \U0/buffer_top_inst/cfg_inst/write_en  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_rdy_n_q_1694 ),
    .I1(N50),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_wr_n_q [2]),
    .I3(\U0/buffer_top_inst/cfg_inst/mgt_wr_n_q [1]),
    .I4(\U0/buffer_top_inst/cfg_inst/mgt_wr_n_q [0]),
    .I5(\U0/buffer_top_inst/cfg_inst/mgt_wr_n_q [3]),
    .O(\U0/buffer_top_inst/cfg_inst/write_en_1645 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U0/buffer_top_inst/cfg_inst/_n0150_inv1_SW0  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [2]),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [1]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [4]),
    .I3(\U0/buffer_top_inst/cfg_inst/mgt_a_q [0]),
    .O(N52)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U0/buffer_top_inst/cfg_inst/_n0150_inv1  (
    .I0(\U0/buffer_top_inst/cfg_inst/mgt_a_q [8]),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_a_q [7]),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_a_q [6]),
    .I3(\U0/buffer_top_inst/cfg_inst/mgt_a_q [5]),
    .I4(\U0/buffer_top_inst/cfg_inst/mgt_a_q [3]),
    .I5(N52),
    .O(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_glue_set_1771 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_655 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_0_glue_set_1772 ),
    .R(\U0/buffer_top_inst/tx_buffer_inst/_n1547 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [0])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_1_glue_set_1773 ),
    .R(\U0/buffer_top_inst/tx_buffer_inst/_n1547 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [1])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_2_glue_set_1774 ),
    .R(\U0/buffer_top_inst/tx_buffer_inst/_n1547 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [2])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_3_glue_set_1775 ),
    .R(\U0/buffer_top_inst/tx_buffer_inst/_n1547 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [3])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_4_glue_set_1776 ),
    .R(\U0/buffer_top_inst/tx_buffer_inst/_n1547 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer [4])
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n_glue_set_1777 ),
    .R(\U0/buffer_top_inst/tx_buffer_inst/_n1551 ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_glue_set_1778 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_654 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_glue_set_1779 ),
    .R(\U0/buffer_top_inst/tx_buffer_inst/_n1551 ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_glue_set_1780 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_656 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/tag_search  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tag_search_glue_set_1781 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tag_search_657 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_14  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_14_glue_set_1782 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_14_659 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_13  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_13_glue_set_1783 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_13_660 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_15  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_15_glue_set_1784 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_15_658 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_12  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_12_glue_set_1785 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_12_661 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_11  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_glue_set_1786 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_662 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_10  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_glue_set_1787 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_663 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_9  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_glue_set_1788 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_664 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_8  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_glue_set_1789 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_665 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_7  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_7_glue_set_1790 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_7_666 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_5  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_5_glue_set_1791 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_5_668 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_4_glue_set_1792 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_4_669 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_6  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_6_glue_set_1793 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_6_667 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_3_glue_set_1794 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_3_670 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_2_glue_set_1795 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_2_671 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_1_glue_set_1796 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_1_672 )
  );
  FDR   \U0/buffer_top_inst/tx_buffer_inst/master_list_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/master_list_0_glue_set_1797 ),
    .R(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/master_list_0_673 )
  );
  LUT5 #(
    .INIT ( 32'h66A60000 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_l61  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l_q [5]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_l61_1311 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [5])
  );
  FDR   \U0/buffer_top_inst/cfg_inst/bc_force_rx_fc  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_rstpot_1800 ),
    .R(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv ),
    .Q(\U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_1676 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/transmitting_resp  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_rstpot_1801 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_716 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_rstpot_1802 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_749 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_rstpot_1803 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_988 )
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/log_first_read  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_rstpot_1804 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_1431 )
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/bram_we  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_we_rstpot_1805 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 )
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/bram_rd_q  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_rstpot_1806 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n_rstpot_1807 ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n )
  );
  FD #(
    .INIT ( 1'b1 ))
  \U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_rstpot_1808 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_388 )
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_rstpot_1809 ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n )
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_rstpot_1810 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_1409 )
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/RX_sof_n  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/RX_sof_n_rstpot_1811 ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n )
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_rstpot_1812 ),
    .Q(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n )
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_rstpot_1813 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_1410 )
  );
  FD   \U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_rstpot_1814 ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/cfg_inst/first_rd  (
    .C(MGT_CLK),
    .D(\U0/buffer_top_inst/cfg_inst/first_rd_rstpot_1815 ),
    .Q(\U0/buffer_top_inst/cfg_inst/first_rd_1692 )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/resp_retry  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_rstpot1_1816 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_653 )
  );
  LUT5 #(
    .INIT ( 32'hAACAAAAA ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_log_read_tag_d51  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [4]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_cy<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF0000BFFF0000 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd1  (
    .I0(N54),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut [2]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_RX_dst_rdy_n_OR_167_o_1390 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_bram_rd_AND_348_o_norst )
  );
  LUT6 #(
    .INIT ( 64'h9999A59999999999 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut<3>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h9999C39999999999 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut<2>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [2]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h9999C39999999999 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut<1>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Msub__n0334_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h337B333333FF33FF ))
  \U0/buffer_top_inst/rx_buffer_inst/_n0417_inv1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_RX_dst_rdy_n_OR_167_o_1390 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_cy<0> ),
    .I3(N58),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/set_empty_single1_1768 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/_n03801 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/_n0417_inv1_1761 )
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_data_count_q_0  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q_0_rstpot_1819 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [0])
  );
  FDR   \U0/buffer_top_inst/rx_buffer_inst/log_data_count_q_1  (
    .C(LOG_CLK),
    .D(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q_1_rstpot_1820 ),
    .R(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .Q(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [1])
  );
  LUT6 #(
    .INIT ( 64'h3C3C3C3CF0E0F0F0 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_data_count_q_0_rstpot  (
    .I0(RX_RDY_N_O),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [0]),
    .I3(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/_n0417_inv1_1761 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o_1379 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q_0_rstpot_1819 )
  );
  LUT6 #(
    .INIT ( 64'h00CCCCCC00C8CCC8 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_first_read_rstpot  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_RX_dst_rdy_n_OR_167_o_1390 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/set_empty_bram_eof_n_AND_349_o21_1763 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/_n03801 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_rstpot_1804 )
  );
  LUT5 #(
    .INIT ( 32'hFF6FFFFF ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd1_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(N54)
  );
  LUT6 #(
    .INIT ( 64'hBFFBFFFFFFFFBFFB ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o_SW0_SW1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [0]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [1]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [3]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [4]),
    .O(N60)
  );
  LUT4 #(
    .INIT ( 16'hFDFF ))
  \U0/buffer_top_inst/rx_buffer_inst/set_empty_single2_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [68]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(N58)
  );
  LUT6 #(
    .INIT ( 64'hCC0C0C0CCC0C4C0C ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_log_buffer_empty_AND_358_o1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_1586 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_l61_1311 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [68]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_log_buffer_empty_AND_358_o )
  );
  LUT4 #(
    .INIT ( 16'hFF01 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/BRAM_eof_n1_SW1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I2(RX_RDY_N_O),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_1424 ),
    .O(N63)
  );
  LUT6 #(
    .INIT ( 64'hFF00F3C0FF00F780 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_RX_dst_rdy_n_OR_167_o  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_1586 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I2(N63),
    .I3(N62),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [68]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_RX_dst_rdy_n_OR_167_o_1390 )
  );
  LUT6 #(
    .INIT ( 64'h33333333CC98CCCC ))
  \U0/buffer_top_inst/rx_buffer_inst/log_data_count_q_1_rstpot  (
    .I0(RX_RDY_N_O),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q [0]),
    .I3(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/_n0417_inv1_1761 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o_1379 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_data_count_q_1_rstpot_1820 )
  );
  LUT6 #(
    .INIT ( 64'hF1E0F0F000000000 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .I2(N65),
    .I3(N66),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/set_empty_single1_1768 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_bram_rd_AND_348_o_norst ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o_1379 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AAAEAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_14_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_14_659 ),
    .I1(N68),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [14]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_14_glue_set_1782 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AEAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_13_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_13_660 ),
    .I1(N70),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [13]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_13_glue_set_1783 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AEAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_15_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_15_658 ),
    .I1(N68),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [15]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_15_glue_set_1784 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AAAEAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_12_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_12_661 ),
    .I1(N70),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [12]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_12_glue_set_1785 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AEAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_11_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_662 ),
    .I1(N76),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [11]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_glue_set_1786 )
  );
  LUT6 #(
    .INIT ( 64'h00000000AAAEAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_10_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_663 ),
    .I1(N76),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [10]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_glue_set_1787 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_7_glue_set_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/n0748 [0]),
    .O(N84)
  );
  LUT6 #(
    .INIT ( 64'h0000EAAA0000AAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_7_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_7_666 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/n0748 [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [7]),
    .I5(N84),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_7_glue_set_1790 )
  );
  LUT6 #(
    .INIT ( 64'h0000AEAA0000AAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_5_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_5_668 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/n0748 [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [5]),
    .I5(N84),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_5_glue_set_1791 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_4_glue_set_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/n0748 [0]),
    .O(N88)
  );
  LUT6 #(
    .INIT ( 64'h0000AEAA0000AAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_4_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_4_669 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/n0748 [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [4]),
    .I5(N88),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_4_glue_set_1792 )
  );
  LUT6 #(
    .INIT ( 64'h0000EAAA0000AAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_6_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_6_667 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/n0748 [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [6]),
    .I5(N88),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_6_glue_set_1793 )
  );
  LUT6 #(
    .INIT ( 64'h0000AAEA0000AAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_3_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_3_670 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/n0748 [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [3]),
    .I5(N84),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_3_glue_set_1794 )
  );
  LUT6 #(
    .INIT ( 64'h0000AAEA0000AAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_2_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_2_671 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/n0748 [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [2]),
    .I5(N88),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_2_glue_set_1795 )
  );
  LUT6 #(
    .INIT ( 64'h0000AAAE0000AAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_1_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_1_672 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/n0748 [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [1]),
    .I5(N84),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_1_glue_set_1796 )
  );
  LUT6 #(
    .INIT ( 64'h0000AAAE0000AAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_0_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_0_673 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/n0748 [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [0]),
    .I5(N88),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_0_glue_set_1797 )
  );
  LUT5 #(
    .INIT ( 32'h56A99A65 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub_GND_172_o_GND_172_o_sub_47_OUT<4:0>_xor<4>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/Msub_write_status_partial_lut [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag3 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Mcount_lnk_write_tag4 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/Msub_GND_172_o_GND_172_o_sub_47_OUT<4:0>_xor<4>11_1309 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_GND_172_o_sub_47_OUT [4])
  );
  LUT6 #(
    .INIT ( 64'hA0A0A0A0A0A0A080 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_rstpot  (
    .I0(LOG_RST_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_RX_dst_rdy_n_OR_167_o_1390 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/_n03801 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_rstpot_1806 )
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_glue_ce_SW0  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I2(RX_RDY_N_O),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_1409 ),
    .O(N100)
  );
  LUT6 #(
    .INIT ( 64'hFF00F3C0FF00FF88 ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_glue_ce  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_1586 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I3(N100),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [68]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_glue_ce_1798 )
  );
  LUT5 #(
    .INIT ( 32'hFF555D55 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mcount_bram_raddr_l_val1  (
    .I0(PHY_RST_N),
    .I1(LNK_TDST_RDY_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/update_window_qq_738 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/set_update_window ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/update_window ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mcount_bram_raddr_l_val )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAACCCCCCF0 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_u11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [0])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAACCCCCCF0 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_u21  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [2]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [1])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAACCCCCCF0 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_u31  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [2])
  );
  LUT5 #(
    .INIT ( 32'h69999999 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub_write_status_partial_lut<2>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Msub_write_status_partial_lut [2])
  );
  LUT3 #(
    .INIT ( 8'hB0 ))
  \U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_741 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_full ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_3  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_3_rstpot_1832 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_2  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_2_rstpot_1833 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_0  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_0_rstpot_1834 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_1  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_1_rstpot_1835 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1])
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_set_update_window11_SW0  (
    .I0(LNK_TDST_DSC_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/update_window_q_740 ),
    .O(N102)
  );
  LUT4 #(
    .INIT ( 16'hFF2F ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_set_update_window11_SW1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_654 ),
    .I1(LNK_TDST_RDY_N),
    .I2(LNK_TDST_DSC_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/update_window_q_740 ),
    .O(N103)
  );
  LUT6 #(
    .INIT ( 64'h00F200D000FE0010 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_update_window11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [2]),
    .I2(N102),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o ),
    .I4(N103),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_early ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/update_window )
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_4  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_4_rstpot_1838 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<0>11_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .O(N105)
  );
  LUT6 #(
    .INIT ( 64'hF0000000F2222222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<3>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N105),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<0>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [3])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<0>11_SW1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .O(N107)
  );
  LUT6 #(
    .INIT ( 64'h0F0000002F222222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<2>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N107),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<0>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [2])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<0>11_SW2  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .O(N109)
  );
  LUT6 #(
    .INIT ( 64'h00F0000022F22222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N109),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<0>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<0>11_SW3  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .O(N111)
  );
  LUT6 #(
    .INIT ( 64'h000F0000222F2222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N111),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<0>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFEFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<10>11_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .O(N113)
  );
  LUT6 #(
    .INIT ( 64'hF0000000F2222222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<11>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N113),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<10>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [11])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<10>11_SW1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .O(N115)
  );
  LUT6 #(
    .INIT ( 64'h0F0000002F222222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<10>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N115),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<10>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [10])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<10>11_SW2  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .O(N117)
  );
  LUT6 #(
    .INIT ( 64'h00F0000022F22222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<9>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N117),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<10>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [9])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<10>11_SW3  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .O(N119)
  );
  LUT6 #(
    .INIT ( 64'h000F0000222F2222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<8>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N119),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<10>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [8])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFBFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<12>11_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .O(N121)
  );
  LUT6 #(
    .INIT ( 64'hF0000000F2222222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<15>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N121),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<12>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [15])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFEFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<12>11_SW1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .O(N123)
  );
  LUT6 #(
    .INIT ( 64'h0F0000002F222222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<14>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N123),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<12>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [14])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFEFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<12>11_SW2  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .O(N125)
  );
  LUT6 #(
    .INIT ( 64'h00F0000022F22222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<13>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N125),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<12>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [13])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<12>11_SW3  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .O(N127)
  );
  LUT6 #(
    .INIT ( 64'h000F0000222F2222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<12>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N127),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<12>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [12])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFEFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<4>11_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .O(N129)
  );
  LUT6 #(
    .INIT ( 64'hF0000000F2222222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<7>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N129),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<4>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [7])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<4>11_SW1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .O(N131)
  );
  LUT6 #(
    .INIT ( 64'h0F0000002F222222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<6>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N131),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<4>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [6])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFEFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<4>11_SW2  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .O(N133)
  );
  LUT6 #(
    .INIT ( 64'h00F0000022F22222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<5>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N133),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<4>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [5])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFEFFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<4>11_SW3  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .O(N135)
  );
  LUT6 #(
    .INIT ( 64'h000F0000222F2222 ))
  \U0/buffer_top_inst/tx_buffer_inst/clr_cond<4>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(N135),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1056 [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond<4>2 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [4])
  );
  FD   \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_5  (
    .C(PHY_CLK),
    .D(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_5_rstpot_1855 ),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5])
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we1_SW2  (
    .I0(LNK_REOF_N),
    .I1(LNK_RSRC_RDY_N),
    .I2(LNK_RSRC_DSC_N),
    .O(N138)
  );
  LUT6 #(
    .INIT ( 64'h0202020002020222 ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we2  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_rdst_dsc_n_q_1395 ),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n ),
    .I2(N138),
    .I3(N46),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [2]),
    .I5(N137),
    .O(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_70  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [70]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [70])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_69  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [69]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [69])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_68  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [68]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [68])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_67  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [67]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [67])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_66  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [66]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [66])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_65  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [65]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [65])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_64  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [64]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [64])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_63  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [63]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [63])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_62  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [62]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [62])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_61  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [61]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [61])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_60  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [60]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [60])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_59  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [59]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [59])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_58  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [58]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [58])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_57  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [57]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [57])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_56  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [56]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [56])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_55  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [55]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [55])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_54  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [54]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [54])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_53  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [53]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [53])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_52  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [52]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [52])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_51  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [51]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [51])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_50  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [50]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [50])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_49  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [49]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [49])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_48  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [48]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [48])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_47  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [47]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [47])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_46  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [46]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [46])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_45  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [45]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [45])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_44  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [44]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [44])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_43  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [43]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [43])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_42  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [42]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [42])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_41  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [41]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [41])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_40  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [40]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [40])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_39  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [39]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [39])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_38  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [38]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [38])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_37  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [37]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [37])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_36  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [36]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [36])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_35  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [35]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [35])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_34  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [34]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [34])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_33  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [33]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [33])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_32  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [32]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [32])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_31  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [31]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [31])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_30  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [30]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [30])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_29  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [29]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_28  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [28]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_27  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [27]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_26  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [26]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_25  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [25]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_24  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [24]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_23  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [23]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_22  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [22]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_21  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [21]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_20  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [20]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_19  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [19]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_18  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [18]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_17  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [17]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_16  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [16]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_15  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [15]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_14  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [14]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_13  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [13]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_12  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [12]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_11  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [11]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_10  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [10]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_9  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [9]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_8  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [8]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_7  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [7]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_6  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [6]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_5  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [5]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_4  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [4]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_3  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [3]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_2  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [2]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_1  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [1]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i_0  (
    .C(PHY_CLK),
    .CE(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .D(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/_n0016 [0]),
    .Q(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/gdm.dm/dout_i [0])
  );
  MUXF7   \U0/buffer_top_inst/rx_buffer_inst/set_empty_single2_SW2  (
    .I0(N140),
    .I1(N141),
    .S(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_cy<0> ),
    .O(N66)
  );
  MUXF7   \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we1_SW1  (
    .I0(N142),
    .I1(N143),
    .S(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [4]),
    .O(N137)
  );
  LUT5 #(
    .INIT ( 32'hFBFFFAFF ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we1_SW1_F  (
    .I0(LNK_RSRC_RDY_N),
    .I1(LNK_RD[0]),
    .I2(LNK_REOF_N),
    .I3(LNK_RSRC_DSC_N),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [3]),
    .O(N142)
  );
  LUT6 #(
    .INIT ( 64'hEFEFEFFFEFFFFFFF ))
  \U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we1_SW1_G  (
    .I0(LNK_REOF_N),
    .I1(LNK_RSRC_RDY_N),
    .I2(LNK_RSRC_DSC_N),
    .I3(LNK_RD[1]),
    .I4(LNK_RD[0]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/write_status_cct [3]),
    .O(N143)
  );
  LUT6 #(
    .INIT ( 64'h000000006AAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_3_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/bram_rd ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/Mcount_bram_raddr_l_val ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_3_rstpot_1832 )
  );
  LUT5 #(
    .INIT ( 32'h00006AAA ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_2_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_rd ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Mcount_bram_raddr_l_val ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_2_rstpot_1833 )
  );
  LUT5 #(
    .INIT ( 32'h50F040C0 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_update_window_raw_AND_261_o1  (
    .I0(LNK_TDST_DSC_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw_q_739 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_750 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_raw_748 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/set_update_window ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_update_window_raw_AND_261_o )
  );
  LUT6 #(
    .INIT ( 64'h11FF10F111FF1EFF ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_rstpot  (
    .I0(RX_RDY_N_O),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .I3(N144),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I5(N145),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_rstpot_1813 )
  );
  LUT5 #(
    .INIT ( 32'hCCACCCCC ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_log_read_tag_d11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [0]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [0]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<4> )
  );
  LUT5 #(
    .INIT ( 32'hAACAAAAA ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_log_read_tag_d21  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<3> )
  );
  LUT5 #(
    .INIT ( 32'hAACAAAAA ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_log_read_tag_d31  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF41000041 ))
  \U0/buffer_top_inst/tx_buffer_inst/tag_marker[0]_LNK_tsof_n_OR_90_o1  (
    .I0(N14),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1043 [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/_n1043 [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/delayed_rd_tag_ack ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tag_marker[0]_LNK_tsof_n_OR_90_o )
  );
  LUT5 #(
    .INIT ( 32'h3C3E0F05 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<0>1  (
    .I0(LNK_TNEXT_FM[4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_lnk_tdst_dsc_n_q_AND_282_o ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_B<0> ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<0> )
  );
  LUT5 #(
    .INIT ( 32'hC3C10F05 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<1>1  (
    .I0(LNK_TNEXT_FM[3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_lnk_tdst_dsc_n_q_AND_282_o ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_B<0> ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<1> )
  );
  LUT6 #(
    .INIT ( 64'h7F13370177113300 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy<2>11  (
    .I0(LNK_TLAST_ACK[3]),
    .I1(LNK_TLAST_ACK[2]),
    .I2(LNK_TLAST_ACK[4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy [2])
  );
  LUT6 #(
    .INIT ( 64'h7444300076443200 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_B11  (
    .I0(LNK_TDST_RDY_N),
    .I1(LNK_TDST_DSC_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_749 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_736 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_747 ),
    .I5(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_B<0> )
  );
  LUT4 #(
    .INIT ( 16'h9699 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I1(LNK_TLAST_ACK[3]),
    .I2(LNK_TLAST_ACK[4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [3])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o_SW0_SW0  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [3]),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ),
    .O(N149)
  );
  LUT6 #(
    .INIT ( 64'hE0EEE000E0E0E0E0 ))
  \U0/buffer_top_inst/rx_buffer_inst/set_empty_single2_SW2_G  (
    .I0(RX_RDY_N_O),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I2(N149),
    .I3(N60),
    .I4(N150),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(N141)
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o_SW0_SW3  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [3]),
    .O(N152)
  );
  LUT6 #(
    .INIT ( 64'hE0EEE000E0E0E0E0 ))
  \U0/buffer_top_inst/rx_buffer_inst/set_empty_single2_SW2_F  (
    .I0(RX_RDY_N_O),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I2(N152),
    .I3(N60),
    .I4(N153),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(N140)
  );
  LUT6 #(
    .INIT ( 64'h55FF53FFAA00AC00 ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_xor<2>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_cy<0> ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<2> ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h00000000CCCCFD08 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_4_rstpot  (
    .I0(LNK_TDST_RDY_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/update_window_qq_738 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Result<4>9 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/update_window ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/Mcount_bram_raddr_l_val ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_4_rstpot_1838 )
  );
  LUT6 #(
    .INIT ( 64'h00000000CCCCFD08 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_5_rstpot  (
    .I0(LNK_TDST_RDY_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/update_window_qq_738 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Result [5]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/update_window ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/Mcount_bram_raddr_l_val ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_5_rstpot_1855 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAEEEAAAAA222A ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_u41  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_1586 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [68]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_cy<0> ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [3])
  );
  LUT5 #(
    .INIT ( 32'h20000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1_rstpot  (
    .I0(LNK_TDST_DSC_N),
    .I1(LNK_TDST_RDY_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_valid_750 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable_1_737 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_reduce_or_282_o ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1_rstpot_1868 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_dpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_721 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1_rstpot_1868 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_dpot_1869 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_dpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_720 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1_rstpot_1868 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_dpot_1870 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_dpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_719 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1_rstpot_1868 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_dpot_1871 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q_1_dpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1737 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1_rstpot_1868 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q_1_dpot_1872 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q_0_dpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1737 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1_rstpot_1868 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q_0_dpot_1873 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_4_dpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1_rstpot_1868 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_4_dpot_1874 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_3_dpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1_rstpot_1868 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_3_dpot_1875 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_2_dpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1_rstpot_1868 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_2_dpot_1876 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_1_dpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1_rstpot_1868 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_1_dpot_1877 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_0_dpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack1_rstpot_1868 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked_q_0_dpot_1878 )
  );
  LUT6 #(
    .INIT ( 64'h200A2020200A200A ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_0_rstpot  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/set_update_window ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/update_window ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/update_window_qq_738 ),
    .I5(LNK_TDST_RDY_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_0_rstpot_1834 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o_SW0_SW5  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [2]),
    .O(N155)
  );
  LUT6 #(
    .INIT ( 64'hFAFAC8FAFAFAFAFA ))
  \U0/buffer_top_inst/rx_buffer_inst/set_empty_single2_SW1  (
    .I0(RX_RDY_N_O),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I3(N155),
    .I4(N60),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .O(N65)
  );
  LUT5 #(
    .INIT ( 32'hAAEAAA2A ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_log_read_tag_d41  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_lut<1> )
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [68]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_eof_raw_q_1586 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFD5555 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1737<0>_SW1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/pcfg_master_en_q_757 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/_n1737<1>12_1747 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/_n1737<1>11_1746 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n1737<1>1 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/pending_list [0]),
    .O(N157)
  );
  LUT6 #(
    .INIT ( 64'h8888888882888888 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_bram_waddr_l41  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [5]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [3])
  );
  LUT6 #(
    .INIT ( 64'h8888888882888888 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_bram_waddr_l11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Madd_bram_waddr_l_q[0]_GND_9_o_add_14_OUT_cy<3> ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [0])
  );
  LUT5 #(
    .INIT ( 32'h88888288 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_bram_waddr_l21  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Madd_bram_waddr_l_q[0]_GND_9_o_add_14_OUT_cy<3> ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [1])
  );
  LUT5 #(
    .INIT ( 32'h88888288 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_bram_waddr_l51  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [5]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [4])
  );
  LUT5 #(
    .INIT ( 32'hAAAAA8AB ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_bram_waddr_u11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [0])
  );
  LUT5 #(
    .INIT ( 32'hAAAAABA8 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_bram_waddr_u21  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [1])
  );
  LUT5 #(
    .INIT ( 32'hAAAAABA8 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_bram_waddr_u31  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [2])
  );
  LUT5 #(
    .INIT ( 32'hAAAAABA8 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_bram_waddr_u41  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/current_write_tag [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0748 [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_dst_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [3])
  );
  LUT6 #(
    .INIT ( 64'h00000000F0F02DF0 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_1_rstpot  (
    .I0(LNK_TDST_RDY_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/update_window_qq_738 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/update_window ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/Mcount_bram_raddr_l_val ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l_1_rstpot_1835 )
  );
  LUT5 #(
    .INIT ( 32'h5555FDF5 ))
  \U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_rstpot  (
    .I0(LOG_RST_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/_n03801 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_rstpot_1814 )
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_sof_n_glue_ce_SW0  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I2(RX_RDY_N_O),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_1410 ),
    .O(N159)
  );
  LUT6 #(
    .INIT ( 64'hA8ABA8A8FFFFFFFF ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_sof_n_rstpot  (
    .I0(N159),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .I4(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ),
    .I5(LOG_RST_N),
    .O(\U0/buffer_top_inst/rx_buffer_inst/RX_sof_n_rstpot_1811 )
  );
  LUT4 #(
    .INIT ( 16'h0455 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_we1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_741 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_full ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_we )
  );
  MUXF7   \U0/buffer_top_inst/tx_buffer_inst/_n15474  (
    .I0(N163),
    .I1(N164),
    .S(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1547 )
  );
  LUT6 #(
    .INIT ( 64'h7070100030300000 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n15474_F  (
    .I0(LNK_RX_BUF_STAT[1]),
    .I1(LNK_RX_BUF_STAT[0]),
    .I2(PHY_RST_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/_n15472_1742 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [0]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/_n15471_1741 ),
    .O(N163)
  );
  LUT5 #(
    .INIT ( 32'hF0307010 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n15474_G  (
    .I0(LNK_RX_BUF_STAT[1]),
    .I1(LNK_RX_BUF_STAT[0]),
    .I2(PHY_RST_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/_n15471_1741 ),
    .O(N164)
  );
  MUXF7   \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/BRAM_eof_n1_SW0  (
    .I0(N165),
    .I1(N166),
    .S(\U0/buffer_top_inst/rx_buffer_inst/Mmux_bram_raddr_l61_1311 ),
    .O(N62)
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCCCCCDDDC ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/BRAM_eof_n1_SW0_F  (
    .I0(RX_RDY_N_O),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_1424 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q_1425 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_1431 ),
    .I4(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .O(N165)
  );
  LUT3 #(
    .INIT ( 8'hCD ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/BRAM_eof_n1_SW0_G  (
    .I0(RX_RDY_N_O),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_early_1424 ),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .O(N166)
  );
  MUXF7   \U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o_SW0_SW2  (
    .I0(N167),
    .I1(N168),
    .S(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .O(N150)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF28AAAA28 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o_SW0_SW2_F  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [2]),
    .I5(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ),
    .O(N167)
  );
  LUT5 #(
    .INIT ( 32'hFFFF6FF6 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o_SW0_SW2_G  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [2]),
    .I4(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ),
    .O(N168)
  );
  MUXF7   \U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o_SW0_SW4  (
    .I0(N169),
    .I1(N170),
    .S(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .O(N153)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF14555514 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o_SW0_SW4_F  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [2]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [1]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [2]),
    .I5(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ),
    .O(N169)
  );
  LUT5 #(
    .INIT ( 32'hFFFF6FF6 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_rd_RX_src_rdy_n_AND_364_o_SW0_SW4_G  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LOG_write_tag [2]),
    .I4(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ),
    .O(N170)
  );
  MUXF7   \U0/buffer_top_inst/tx_buffer_inst/Mmux_update_window_raw11  (
    .I0(N171),
    .I1(N172),
    .S(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw )
  );
  LUT6 #(
    .INIT ( 64'h44544444FFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_update_window_raw11_F  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_raw_748 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw_q_739 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [3]),
    .I3(LNK_TDST_RDY_N),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_654 ),
    .I5(LNK_TDST_DSC_N),
    .O(N171)
  );
  LUT6 #(
    .INIT ( 64'h55F555F555F755F5 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_update_window_raw11_G  (
    .I0(LNK_TDST_DSC_N),
    .I1(LNK_TDST_RDY_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/update_window_raw_q_739 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_raw_748 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_654 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_early ),
    .O(N172)
  );
  LUT6 #(
    .INIT ( 64'h80008000FFFF8000 ))
  \U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable_1_737 ),
    .I1(LNK_TDST_DSC_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tag_marker[0]_rs_read_tag[0]_equal_148_o ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tag_search_657 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_656 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/packet_acknowledge_current_ack_tag_d[0]_AND_241_o_618 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_glue_set_1780 )
  );
  LUT6 #(
    .INIT ( 64'h936CC936C33CCC33 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_xor<2>11  (
    .I0(LNK_TLAST_ACK[4]),
    .I1(LNK_TLAST_ACK[2]),
    .I2(LNK_TLAST_ACK[3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [2])
  );
  LUT5 #(
    .INIT ( 32'hF4444444 ))
  \U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/_n1694_inv ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_654 ),
    .I2(LNK_TDST_DSC_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_749 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable_1_737 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_glue_set_1778 )
  );
  LUT6 #(
    .INIT ( 64'h1000000010101010 ))
  \U0/buffer_top_inst/rx_buffer_inst/bram_we_rstpot  (
    .I0(LNK_RSRC_RDY_N),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n ),
    .I2(PHY_RST_N),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_reof_n_q_1394 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/in_wpacket_q_1407 ),
    .I5(LNK_RSOF_N),
    .O(\U0/buffer_top_inst/rx_buffer_inst/bram_we_rstpot_1805 )
  );
  LUT6 #(
    .INIT ( 64'h7F775D5555514440 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_cy<2>12  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBLD_tx_sof_n_TBUF_dst_rdy_n_AND_31_o ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut[1] ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut[0] ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [5]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [4]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_cy [2])
  );
  LUT6 #(
    .INIT ( 64'h9C9C3C96C9C969C3 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut[1] ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBLD_tx_sof_n_TBUF_dst_rdy_n_AND_31_o ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [5]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut[0] ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Result [2])
  );
  LUT6 #(
    .INIT ( 64'hBAAAAAAA8AAAAAAA ))
  \U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_rstpot  (
    .I0(\U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_1676 ),
    .I1(MGT_WR_N[2]),
    .I2(\U0/buffer_top_inst/cfg_inst/_n0150_inv1_1619 ),
    .I3(\U0/buffer_top_inst/cfg_inst/write_en_1645 ),
    .I4(\U0/buffer_top_inst/cfg_inst/mgt_a_q [9]),
    .I5(MGT_DI[16]),
    .O(\U0/buffer_top_inst/cfg_inst/bc_force_rx_fc_rstpot_1800 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_3_o4_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [3]),
    .O(N177)
  );
  LUT6 #(
    .INIT ( 64'h6006000000006006 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_9_o4_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2 [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [3]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2 [3]),
    .O(N179)
  );
  LUT6 #(
    .INIT ( 64'hBAAAD55590009000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_9_o4  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_9_o2_1759 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2 [1]),
    .I5(N179),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_9_o )
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_747 ),
    .I1(PHY_RST_N),
    .I2(LNK_TDST_RDY_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_rstpot_1802 )
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_transmitting_resp_AND_318_o4_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [3]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_transmitting_resp_AND_318_o1_1740 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_656 ),
    .O(N181)
  );
  LUT6 #(
    .INIT ( 64'h1001000000001001 ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_transmitting_resp_AND_318_o4  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .I1(N181),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tag_marker [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u_q [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_transmitting_resp_AND_318_o )
  );
  LUT6 #(
    .INIT ( 64'hFFFF6FF600000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list<0>5  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .I4(N183),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/pending_list<0>1_1743 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list [0])
  );
  LUT6 #(
    .INIT ( 64'h5155515155555555 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/Mmux_RAM_RD_EN_FWFT11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_966 ),
    .I1
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1144 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_741 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_full ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i )
  );
  LUT6 #(
    .INIT ( 64'h2022202022222222 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv1  (
    .I0
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1144 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_741 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_full ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/_n0024_inv )
  );
  LUT6 #(
    .INIT ( 64'h7777777701001111 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/going_empty_fwft_leaving_empty_fwft_OR_5_o1  (
    .I0
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1144 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_741 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/bram_full ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_fb_1145 ),
    .O
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/going_empty_fwft_leaving_empty_fwft_OR_5_o )

  );
  LUT6 #(
    .INIT ( 64'h08080008FFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In11  (
    .I0
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1_1144 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_full ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_741 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/ram_empty_fb_i_966 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/curr_fwft_state_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'h80AAAAAA ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_rstpot_SW1  (
    .I0(LOG_RST_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_1415 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_1418 ),
    .I3(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_1410 ),
    .O(N145)
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Madd_gic0.gc1.count[3]_GND_36_o_add_0_OUT_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2 [1]),
    .O
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count[3]_GND_36_o_add_0_OUT<2> )

  );
  LUT4 #(
    .INIT ( 16'hCCC6 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/Madd_gic0.gc1.count[3]_GND_36_o_add_0_OUT_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count [3]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2 [1]),
    .O
(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count[3]_GND_36_o_add_0_OUT<3> )

  );
  LUT5 #(
    .INIT ( 32'h551555D5 ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_xor<0>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [4]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h88880888AAAAAAAA ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_rstpot  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_glue_set_1799 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_1410 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I5(LOG_RST_N),
    .O(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_rstpot_1812 )
  );
  LUT6 #(
    .INIT ( 64'h6999999999999999 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub_write_status_partial_lut<3>1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [1]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [1]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Msub_write_status_partial_lut [3])
  );
  LUT3 #(
    .INIT ( 8'hBE ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_cy<0>11  (
    .I0(LNK_RX_BUF_STAT[4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I2(LNK_TLAST_ACK[4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_cy [0])
  );
  LUT5 #(
    .INIT ( 32'h00040000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBLD_tx_sof_n_TBUF_dst_rdy_n_AND_31_o1  (
    .I0(TX_VLD_N_O),
    .I1(LOG_RST_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_994 ),
    .I3(TX_SOF_N_O),
    .I4(TX_DSC_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBLD_tx_sof_n_TBUF_dst_rdy_n_AND_31_o )
  );
  LUT6 #(
    .INIT ( 64'h0000100010101010 ))
  \U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_741 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/bram_full ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o )
  );
  LUT6 #(
    .INIT ( 64'h5555555555556555 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut<1>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [4]),
    .I1(TX_VLD_N_O),
    .I2(LOG_RST_N),
    .I3(TX_DSC_N_O),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_994 ),
    .I5(TX_SOF_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut[1] )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAA6AA ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [5]),
    .I1(LOG_RST_N),
    .I2(TX_VLD_N_O),
    .I3(TX_DSC_N_O),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_994 ),
    .I5(TX_SOF_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut[0] )
  );
  LUT6 #(
    .INIT ( 64'h8888888882228282 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_bram_waddr_l61  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l_q [5]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/bram_full ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_741 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [5])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub_GND_172_o_GND_172_o_sub_47_OUT<4:0>_xor<0>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [4]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_GND_172_o_sub_47_OUT [0])
  );
  LUT5 #(
    .INIT ( 32'h00101111 ))
  \U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_dst_rdy_n_AND_49_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/syn_out_of_packet_q_741 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/bram_full ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_dst_rdy_n_AND_49_o )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \U0/buffer_top_inst/tx_buffer_inst/syn_tx_eof_n_syn_tx_src_dsc_n_AND_56_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_full ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gr1.rfwft/empty_fwft_i_811 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [68]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_eof_n_syn_tx_src_dsc_n_AND_56_o )
  );
  LUT6 #(
    .INIT ( 64'h9C9C3C96C9C969C3 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_xor<2>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<1> ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<2> ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<0> ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<0> ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<1> ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hCC313131 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<3>1  (
    .I0(LNK_TNEXT_FM[1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_lnk_tdst_dsc_n_q_AND_282_o ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_B<0> ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<3> )
  );
  LUT5 #(
    .INIT ( 32'h96699696 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_lut<1>1  (
    .I0(LNK_RX_BUF_STAT[3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I2(LNK_TLAST_ACK[3]),
    .I3(LNK_TLAST_ACK[4]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_lut [1])
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_dsc_n_LNK_reof_n_OR_153_o1  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we1_1310 ),
    .I1(LNK_REOF_N),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_rdy_n ),
    .I3(LNK_RSRC_RDY_N),
    .O(\U0/buffer_top_inst/rx_buffer_inst/LNK_rdst_dsc_n_LNK_reof_n_OR_153_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/n0528_inv1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [1]),
    .I1(LNK_TLAST_ACK[1]),
    .I2(LNK_TLAST_ACK[0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [0]),
    .I4(N18),
    .O(\U0/buffer_top_inst/tx_buffer_inst/n0528_inv )
  );
  LUT5 #(
    .INIT ( 32'h22222252 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_xor<0>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_B<0> ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I2(LNK_TNEXT_FM[4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_lnk_tdst_dsc_n_q_AND_282_o ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/n0748<3>_inv1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_7_666 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_6_667 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_5_668 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list_4_669 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list_3_670 ),
    .I5(N30),
    .O(\U0/buffer_top_inst/tx_buffer_inst/n0748 [3])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n15511  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_749 ),
    .I2(LNK_TDST_DSC_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/transmit_enable_1_737 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1551 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF0002 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1635_inv1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_747 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1]),
    .I3(LNK_TDST_RDY_N),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1635_inv )
  );
  LUT4 #(
    .INIT ( 16'hFFFB ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBLD_tx_eof_n_TBUF_dst_rdy_n_OR_12_o1  (
    .I0(TX_VLD_N_O),
    .I1(LOG_RST_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_994 ),
    .I3(TX_EOF_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBLD_tx_eof_n_TBUF_dst_rdy_n_OR_12_o )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_WR_PNTR[1]_WR_PNTR[2]_XOR_2_o_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d3 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/WR_PNTR[1]_WR_PNTR[2]_XOR_2_o )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_WR_PNTR[0]_WR_PNTR[1]_XOR_3_o_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/WR_PNTR[0]_WR_PNTR[1]_XOR_3_o )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/Mxor_RD_PNTR[0]_RD_PNTR[1]_XOR_12_o_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/RD_PNTR[0]_RD_PNTR[1]_XOR_12_o )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_WR_PNTR[1]_WR_PNTR[2]_XOR_21_o_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d2 [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/WR_PNTR[1]_WR_PNTR[2]_XOR_21_o )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_WR_PNTR[0]_WR_PNTR[1]_XOR_22_o_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/WR_PNTR[0]_WR_PNTR[1]_XOR_22_o )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/Mxor_RD_PNTR[0]_RD_PNTR[1]_XOR_30_o_xo<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/RD_PNTR[0]_RD_PNTR[1]_XOR_30_o )
  );
  LUT4 #(
    .INIT ( 16'h444E ))
  \U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_raw_748 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_716 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_queue_select_q [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/transmitting_resp_rstpot_1801 )
  );
  LUT6 #(
    .INIT ( 64'hFCFCFC5454545454 ))
  \U0/buffer_top_inst/rx_buffer_inst/Mmux_log_in_packet11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_first_read_1431 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet_q_1425 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n_q_1417 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n_q_1416 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_in_packet )
  );
  LUT6 #(
    .INIT ( 64'h666656666666A666 ))
  \U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_xor<1>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/Madd_log_read_tag_d[0]_GND_172_o_add_57_OUT_cy<0> ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_q [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_add [3]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/log_read_tag_d[0]_GND_172_o_add_57_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h0000ECA0 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1737<0>  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/req1_pending_614 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/req0_pending_615 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask ),
    .I4(N157),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1737 [0])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBLD_tx_sof_n_TBUF_dst_rdy_n_AND_31_o ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_cy [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h8F88 ))
  \U0/buffer_top_inst/tx_buffer_inst/tag_search_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tag_set_764 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_653 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tag_marker[0]_LNK_tsof_n_OR_90_o ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tag_search_657 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tag_search_glue_set_1781 )
  );
  LUT6 #(
    .INIT ( 64'h399933396CCC666C ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<3> ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<4> ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_cy<2>1 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<2> ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_LNK_tdst_dsc_n_AND_262_o ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<3> ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_xor<3>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I1(LNK_TLAST_ACK[1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [1])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_lut<3>1  (
    .I0(LNK_RX_BUF_STAT[1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I2(LNK_TLAST_ACK[1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h1010101000001000 ))
  \U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_load_backup_d_AND_288_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/load_backup_d_742 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/n0528 ),
    .I3(LNK_TDST_DSC_N),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/lnk_tdst_dsc_n_q_736 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_q_743 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/eval_for_backup_load_backup_d_AND_288_o )
  );
  LUT6 #(
    .INIT ( 64'h555595556666A666 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<1> ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<0> ),
    .I2(LNK_TDST_DSC_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_747 ),
    .I4(LNK_TDST_RDY_N),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<0> ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h00040000 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/ram_wr_en_i1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_fb_i_942 ),
    .I1(LOG_RST_N),
    .I2(TX_VLD_N_O),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_994 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.vld_window ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/ram_wr_en )
  );
  LUT6 #(
    .INIT ( 64'hBEAAAABEAAAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o4  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o2_1753 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count_d1 [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/rd_pntr_bin [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o3_1754 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/gwas.wsts/comp1_comp2_OR_17_o )
  );
  LUT6 #(
    .INIT ( 64'hBEAAAABEAAAAAAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o4  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o2_1756 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count_d1 [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [1]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o3_1757 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_15_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFF08 ))
  \U0/buffer_top_inst/tx_buffer_inst/_n1671_inv1  (
    .I0(LNK_TDST_DSC_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_747 ),
    .I2(LNK_TDST_RDY_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_lnk_tdst_dsc_n_q_AND_282_o ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n1671_inv )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_rstpot_SW0  (
    .I0(LOG_RST_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_sof_n_shadow_1410 ),
    .O(N144)
  );
  LUT5 #(
    .INIT ( 32'h01001115 ))
  \U0/buffer_top_inst/tx_buffer_inst/existing_priority[0]_tx_prio_adjust[0]_LessThan_338_o1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_719 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [5]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [6]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/prio2_mask_q_721 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_720 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/existing_priority[0]_tx_prio_adjust[0]_LessThan_338_o )
  );
  LUT6 #(
    .INIT ( 64'hBABABAFE10101054 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_LNK_td<0>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_transmitting_resp_AND_318_o ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_existing_priority[0]_AND_320_o ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [5]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/prio1_mask_q_720 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/prio0_mask_q_719 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [0]),
    .O(LNK_TD[0])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFD55555555 ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_rstpot  (
    .I0(LOG_RST_N),
    .I1(RX_RDY_N_O),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I3(N185),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_glue_ce_1798 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_rstpot_1809 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFABA8 ))
  \U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_655 ),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n ),
    .I2(LNK_TDST_RDY_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/bram_data_out_q [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_qq_749 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_q_glue_set_1771 )
  );
  LUT6 #(
    .INIT ( 64'h6FF6FFFFFFFF6FF6 ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list<0>5_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/rdpt_resp_queue [2]),
    .O(N183)
  );
  LUT4 #(
    .INIT ( 16'hAA02 ))
  \U0/buffer_top_inst/cfg_inst/first_rd_rstpot  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/cfg_inst/MGT_rdy_n ),
    .I1(\U0/buffer_top_inst/cfg_inst/mgt_sel_n_q_1696 ),
    .I2(\U0/buffer_top_inst/cfg_inst/mgt_rd_n_q_1695 ),
    .I3(\U0/buffer_top_inst/cfg_inst/first_rd_1692 ),
    .O(\U0/buffer_top_inst/cfg_inst/first_rd_rstpot_1815 )
  );
  LUT4 #(
    .INIT ( 16'h6AA9 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_xor<4>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [1]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBLD_tx_sof_n_TBUF_dst_rdy_n_AND_31_o ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_cy [2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Result [4])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF575757DF ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n_glue_set  (
    .I0(PHY_RST_N),
    .I1(LNK_TDST_RDY_N),
    .I2(NlwRenamedSig_OI_LNK_TEOF_N),
    .I3(LNK_TDST_DSC_N),
    .I4(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .I5(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n_glue_set_1777 )
  );
  LUT4 #(
    .INIT ( 16'hDDDF ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_glue_set  (
    .I0(LOG_RST_N),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I2(RX_RDY_N_O),
    .I3(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_glue_set_1799 )
  );
  LUT4 #(
    .INIT ( 16'h69FF ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_4_glue_set  (
    .I0(LNK_TLAST_ACK[4]),
    .I1(LNK_RX_BUF_STAT[4]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I3(PHY_RST_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_4_glue_set_1776 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_glue_set  (
    .I0(LNK_TDST_RDY_N),
    .I1(LNK_TDST_DSC_N),
    .I2(PHY_RST_N),
    .I3(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n_glue_set_1779 )
  );
  LUT6 #(
    .INIT ( 64'h3FC0BD427E81FC03 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_xor<5>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut[3] ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/TBLD_tx_sof_n_TBUF_dst_rdy_n_AND_31_o ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [1]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_cy [2]),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Result [5])
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  \U0/buffer_top_inst/tx_buffer_inst/resp_retry_rstpot1_SW1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_653 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_q_763 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_656 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_backup_queue_update[0]_MUX_315_o ),
    .O(N187)
  );
  LUT6 #(
    .INIT ( 64'h8AAA8A0A00A00000 ))
  \U0/buffer_top_inst/tx_buffer_inst/resp_retry_rstpot1  (
    .I0(PHY_RST_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/observed_dsc_already_FSM_FFd1_730 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/load_backup_745 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0568 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_backup_queue_update[0]_MUX_315_o ),
    .I5(N187),
    .O(\U0/buffer_top_inst/tx_buffer_inst/resp_retry_rstpot1_1816 )
  );
  LUT6 #(
    .INIT ( 64'h5555555555556555 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut<3>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [2]),
    .I1(TX_VLD_N_O),
    .I2(LOG_RST_N),
    .I3(TX_DSC_N_O),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_994 ),
    .I5(TX_SOF_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_lut[3] )
  );
  LUT4 #(
    .INIT ( 16'h45EF ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_rd_priority[0]_rx_prio_adjust[0]_mux_159_OUT_rs_lut<0>1  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_656 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/n0992 [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/n0992 [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Mmux_rd_priority[0]_rx_prio_adjust[0]_mux_159_OUT_rs_lut<0> )
  );
  LUT5 #(
    .INIT ( 32'h5A9696A5 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_xor<4>11  (
    .I0(LNK_TLAST_ACK[0]),
    .I1(LNK_TLAST_ACK[1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [0])
  );
  LUT4 #(
    .INIT ( 16'h0888 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_11_glue_set_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_665 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_664 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_663 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_662 ),
    .O(N76)
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_14_glue_set_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_665 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_664 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_663 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list_13_660 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list_12_661 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_662 ),
    .O(N68)
  );
  LUT6 #(
    .INIT ( 64'h0000800080008000 ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_13_glue_set_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_664 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/master_list_11_662 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/master_list_10_663 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_665 ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/master_list_13_660 ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/master_list_12_661 ),
    .O(N70)
  );
  LUT5 #(
    .INIT ( 32'h7D7D7D28 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_rd_priority[0]_rx_prio_adjust[0]_mux_159_OUT_rs_xor<1>11  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/alt_prio_available_656 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rx_prio_adjust [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/n0992 [0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/n0992 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/rd_priority[0]_rx_prio_adjust[0]_mux_159_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF6FF669660960 ))
  \U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_cy<3>1_SW0  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I1(LNK_TLAST_ACK[3]),
    .I2(LNK_TLAST_ACK[4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I4(LNK_RX_BUF_STAT[4]),
    .I5(LNK_RX_BUF_STAT[3]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h6DFBFB6DFB6D6DFB ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o1  (
    .I0(LNK_RX_BUF_STAT[4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I2(LNK_TLAST_ACK[4]),
    .I3(LNK_RX_BUF_STAT[3]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I5(LNK_TLAST_ACK[3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o1_1726 )
  );
  LUT3 #(
    .INIT ( 8'h4F ))
  \U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_rstpot  (
    .I0(\U0/buffer_top_inst/cfg_inst/BCFG_force_rx_fc_372 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/LNK_tbuf_stat[0]_reduce_nand_231_o ),
    .I2(PHY_RST_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/TBUF_tx_flow_rstpot_1808 )
  );
  LUT6 #(
    .INIT ( 64'h8888888888808888 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_rstpot  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/log_packet_ack_n_GND_10_o_MUX_106_o ),
    .I1(LOG_RST_N),
    .I2(TX_SOF_N_O),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/gwas.wsts/ram_full_i_994 ),
    .I4(TX_DSC_N_O),
    .I5(TX_VLD_N_O),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/ack_fifo_rd_rstpot_1803 )
  );
  LUT5 #(
    .INIT ( 32'hF9606060 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_3_o4  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gcx.clkx/wr_pntr_bin [0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_3_o1_1751 ),
    .I3(N177),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/ram_rd_en_i ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/gras.rsts/comp0_comp1_OR_3_o )
  );
  LUT6 #(
    .INIT ( 64'hB24D4DB24DB2B24D ))
  \U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o3  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [1]),
    .I1(LNK_TLAST_ACK[1]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/Msub_free_buf_partial_sum_Madd_cy [2]),
    .I3(LNK_TLAST_ACK[0]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [0]),
    .I5(LNK_RX_BUF_STAT[0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/pending_list[0]_load_backup_d_AND_260_o3_1728 )
  );
  LUT6 #(
    .INIT ( 64'h69666999FFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_2_glue_set  (
    .I0(LNK_RX_BUF_STAT[2]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [2]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_cy [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_lut [1]),
    .I4(LNK_RX_BUF_STAT[3]),
    .I5(PHY_RST_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_2_glue_set_1774 )
  );
  LUT5 #(
    .INIT ( 32'h41BEFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_3_glue_set  (
    .I0(LNK_RX_BUF_STAT[4]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I2(LNK_TLAST_ACK[4]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_lut [1]),
    .I4(PHY_RST_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_3_glue_set_1775 )
  );
  LUT6 #(
    .INIT ( 64'h00FF40BF40BFFF00 ))
  \U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_xor<3>11  (
    .I0(LNK_TDST_RDY_N),
    .I1(LNK_TDST_DSC_N),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/rd_tag_ack_q_partial_747 ),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_lut<3> ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_A<2> ),
    .I5(\U0/buffer_top_inst/tx_buffer_inst/Mmux_local_next_acked[0]_local_next_acked[0]_mux_291_OUT_rs_cy<2>1 ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked[0]_local_next_acked[0]_mux_291_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hFF2A2A2A ))
  \U0/buffer_top_inst/rx_buffer_inst/RX_eof_n_rstpot_SW0  (
    .I0(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_sof_n ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_q_1415 ),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/in_rpacket_q_1418 ),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/bram_rd_q_1423 ),
    .O(N185)
  );
  LUT5 #(
    .INIT ( 32'h0000BAAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_9_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_664 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/n0748 [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [9]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_9_glue_set_1788 )
  );
  LUT5 #(
    .INIT ( 32'h0000ABAA ))
  \U0/buffer_top_inst/tx_buffer_inst/master_list_8_glue_set  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_665 ),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/sel_a_INV_81_o_557 ),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/n0748 [0]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_syn_tx_src_dsc_n_AND_98_o ),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/clr_cond [8]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/master_list_8_glue_set_1789 )
  );
  LUT6 #(
    .INIT ( 64'hEFFEFDDF7FF7BFFB ))
  \U0/buffer_top_inst/tx_buffer_inst/_n15472  (
    .I0(LNK_TLAST_ACK[3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [4]),
    .I2(LNK_TLAST_ACK[2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [2]),
    .I4(\U0/buffer_top_inst/tx_buffer_inst/local_next_acked [3]),
    .I5(LNK_TLAST_ACK[4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/_n15472_1742 )
  );
  LUT5 #(
    .INIT ( 32'h96669996 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub_GND_172_o_GND_172_o_sub_47_OUT<4:0>_xor<1>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [4]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_GND_172_o_sub_47_OUT [1])
  );
  LUT6 #(
    .INIT ( 64'h5665656556A6A665 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub_GND_172_o_GND_172_o_sub_47_OUT<4:0>_xor<2>11  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/Msub_write_status_partial_lut [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [3]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [4]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_GND_172_o_sub_47_OUT [2])
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req0_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req0_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>8 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req1_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req1_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>7 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_local_last_acked_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/local_last_acked [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>6 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_resp_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_resp_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>5 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_rdpt_backup_req2_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/rdpt_backup_req2_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>4 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req2_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req2_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>3 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req0_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req0_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>2 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_resp_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/wrpt_resp_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result<0>1 )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/Mcount_wrpt_req1_queue_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/wrpt_req1_queue [4]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/Result [0])
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/LNK_tdst_rdy_n_inv1_INV_0  (
    .I(LNK_TDST_RDY_N),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_tdst_rdy_n_inv )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_inv1_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [70]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_inv )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/PHY_rst_n_inv591_INV_0  (
    .I(PHY_RST_N),
    .O(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/LOG_rst_n_inv1_INV_0  (
    .I(LOG_RST_N),
    .O(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv )
  );
  INV 
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/Madd_gc0.count[3]_GND_27_o_add_0_OUT_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv )
  );
  INV 
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/Madd_gc0.count[4]_GND_49_o_add_0_OUT_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rpntr/gc0.count [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.rd/rd_pntr_plus1<0>_inv )
  );
  INV 
  \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/Madd_gic0.gc0.count[4]_GND_55_o_add_0_OUT_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc0.count [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/srl16_fifo_inst/grf.rf/gl0.wr/wr_pntr_plus1 [0])
  );
  INV   \U0/buffer_top_inst/rx_buffer_inst/Mcount_bram_waddr_l_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0]),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Result [0])
  );
  INV   \U0/buffer_top_inst/rx_buffer_inst/LNK_rsof_n_inv1_INV_0  (
    .I(LNK_RSOF_N),
    .O(\U0/buffer_top_inst/rx_buffer_inst/LNK_rsof_n_inv )
  );
  INV   \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_in<0>1_INV_0  (
    .I(\U0/buffer_top_inst/rx_buffer_inst/lnk_rsof_n_q_1396 ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_in [0])
  );
  INV   \U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv1_INV_0  (
    .I(MGT_RST_N),
    .O(\U0/buffer_top_inst/cfg_inst/MGT_rst_n_inv )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<0>_inv1_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [0]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus1 [0])
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv1_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d1 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus2<1>_inv )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus1<1>_inv1_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wpntr/gic0.gc1.count_d2 [1]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/gl0.wr/wr_pntr_plus1<1>_inv )
  );
  INV   \U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Mcount_outstanding_packets_xor<0>11_INV_0  (
    .I(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/outstanding_packets [5]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/Result [0])
  );
  MUXF7   \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_1_glue_set  (
    .I0(N189),
    .I1(N190),
    .S(\U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_lut [2]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_1_glue_set_1773 )
  );
  LUT3 #(
    .INIT ( 8'h6F ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_1_glue_set_F  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_lut [3]),
    .I1(LNK_RX_BUF_STAT[2]),
    .I2(PHY_RST_N),
    .O(N189)
  );
  LUT5 #(
    .INIT ( 32'h656AFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_1_glue_set_G  (
    .I0(\U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_lut [3]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_cy [0]),
    .I2(\U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_lut [1]),
    .I3(LNK_RX_BUF_STAT[3]),
    .I4(PHY_RST_N),
    .O(N190)
  );
  MUXF7   \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_0_glue_set  (
    .I0(N191),
    .I1(N192),
    .S(\U0/buffer_top_inst/tx_buffer_inst/Msub_GND_9_o_GND_9_o_sub_259_OUT_Madd_lut [3]),
    .O(\U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_0_glue_set_1772 )
  );
  LUT4 #(
    .INIT ( 16'h69FF ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_0_glue_set_F  (
    .I0(LNK_RX_BUF_STAT[0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [0]),
    .I2(LNK_RX_BUF_STAT[1]),
    .I3(PHY_RST_N),
    .O(N191)
  );
  LUT6 #(
    .INIT ( 64'h69669969FFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/link_free_buffer_0_glue_set_G  (
    .I0(LNK_RX_BUF_STAT[0]),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [0]),
    .I2(LNK_RX_BUF_STAT[2]),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/free_buf_partial_sum [2]),
    .I4(N10),
    .I5(PHY_RST_N),
    .O(N192)
  );
  MUXF7   \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n_rstpot  (
    .I0(N193),
    .I1(N194),
    .S(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n ),
    .O(\U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n_rstpot_1807 )
  );
  LUT5 #(
    .INIT ( 32'h0111FFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n_rstpot_F  (
    .I0(LNK_TDST_RDY_N),
    .I1(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_rdy_n ),
    .I2(NlwRenamedSig_OI_LNK_TEOF_N),
    .I3(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_654 ),
    .I4(PHY_RST_N),
    .O(N193)
  );
  LUT6 #(
    .INIT ( 64'hBBBFFBFFFFFFFFFF ))
  \U0/buffer_top_inst/tx_buffer_inst/LNK_tsrc_dsc_n_rstpot_G  (
    .I0(LNK_TDST_DSC_N),
    .I1(\U0/buffer_top_inst/tx_buffer_inst/lnk_in_packet_654 ),
    .I2(LNK_TDST_RDY_N),
    .I3(NlwRenamedSig_OI_LNK_TEOF_N),
    .I4(\NlwRenamedSig_OI_U0/buffer_top_inst/tx_buffer_inst/LNK_tsof_n ),
    .I5(PHY_RST_N),
    .O(N194)
  );
  MUXF7   \U0/buffer_top_inst/rx_buffer_inst/Msub_GND_172_o_GND_172_o_sub_47_OUT<4:0>_xor<4>111  (
    .I0(N195),
    .I1(N196),
    .S(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag_we ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/Msub_GND_172_o_GND_172_o_sub_47_OUT<4:0>_xor<4>11_1309 )
  );
  LUT6 #(
    .INIT ( 64'h20FF0020F2FF00F2 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub_GND_172_o_GND_172_o_sub_47_OUT<4:0>_xor<4>111_F  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [4]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [2]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [3]),
    .O(N195)
  );
  LUT6 #(
    .INIT ( 64'h153D353F40545055 ))
  \U0/buffer_top_inst/rx_buffer_inst/Msub_GND_172_o_GND_172_o_sub_47_OUT<4:0>_xor<4>111_G  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [2]),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [4]),
    .I2(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [3]),
    .I3(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [3]),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/rx_async_passage_inst/LNK_read_tag [4]),
    .I5(\U0/buffer_top_inst/rx_buffer_inst/lnk_write_tag [2]),
    .O(N196)
  );
  MUXF7   \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_rstpot  (
    .I0(N197),
    .I1(N198),
    .S(\U0/buffer_top_inst/rx_buffer_inst/bram_eof_n ),
    .O(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_rstpot_1810 )
  );
  LUT6 #(
    .INIT ( 64'h0008222AFFFFFFFF ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_rstpot_F  (
    .I0(\U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n_in_rpacket_OR_168_o ),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/bram_sof_n ),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I3(N36),
    .I4(\U0/buffer_top_inst/rx_buffer_inst/log_buffer_empty_1411 ),
    .I5(LOG_RST_N),
    .O(N197)
  );
  LUT4 #(
    .INIT ( 16'hDDDF ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_rstpot_G  (
    .I0(LOG_RST_N),
    .I1(\U0/buffer_top_inst/rx_buffer_inst/rx_eof_n_shadow_1409 ),
    .I2(\NlwRenamedSig_OI_U0/buffer_top_inst/rx_buffer_inst/RX_src_rdy_n ),
    .I3(RX_RDY_N_O),
    .O(N198)
  );
  RAMB36E1 #(
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_ECC_READ ( "FALSE" ),
    .EN_ECC_WRITE ( "FALSE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_40 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_41 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_42 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_43 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_44 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_45 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_46 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_47 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_48 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_49 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_50 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_51 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_52 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_53 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_54 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_55 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_56 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_57 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_58 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_59 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_60 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_61 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_62 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_63 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_64 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_65 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_66 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_67 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_68 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_69 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_70 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_71 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_72 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_73 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_74 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_75 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_76 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_77 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_78 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_79 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .INIT_FILE ( "NONE" ),
    .RAM_EXTENSION_A ( "NONE" ),
    .RAM_EXTENSION_B ( "NONE" ),
    .RAM_MODE ( "TDP" ),
    .RDADDR_COLLISION_HWCONFIG ( "DELAYED_WRITE" ),
    .READ_WIDTH_A ( 36 ),
    .READ_WIDTH_B ( 36 ),
    .RSTREG_PRIORITY_A ( "REGCE" ),
    .RSTREG_PRIORITY_B ( "REGCE" ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "VIRTEX6" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .WRITE_WIDTH_A ( 36 ),
    .WRITE_WIDTH_B ( 36 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram  (
    .CASCADEINA(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINB(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEOUTA
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED )
,
    .CASCADEOUTB
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED )
,
    .CLKARDCLK(PHY_CLK),
    .CLKBWRCLK(PHY_CLK),
    .DBITERR
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED )
,
    .ENARDEN(NlwRenamedSig_OI_CFG_IN[59]),
    .ENBWREN(\U0/buffer_top_inst/tx_buffer_inst/bram_rd ),
    .INJECTDBITERR(NlwRenamedSig_OI_MGT_DO[26]),
    .INJECTSBITERR(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEAREGCE(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEB(NlwRenamedSig_OI_MGT_DO[26]),
    .RSTRAMARSTRAM(NlwRenamedSig_OI_MGT_DO[26]),
    .RSTRAMB(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .RSTREGARSTREG(NlwRenamedSig_OI_MGT_DO[26]),
    .RSTREGB(NlwRenamedSig_OI_MGT_DO[26]),
    .SBITERR
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED )
,
    .ADDRARDADDR({NlwRenamedSig_OI_CFG_IN[59], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [0], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [1], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [2], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [3], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [0], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [1], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [2], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [3], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [4], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [5], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRBWRADDR({NlwRenamedSig_OI_CFG_IN[59], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [0], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [1], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [2], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [3], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DIADI({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [67], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [66], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [69], 
\U0/buffer_top_inst/tx_buffer_inst/syn_tx_sof_n_inv , 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [65], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [63], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [62], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [61], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [60], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [59], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [58], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [57], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [56], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [55], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [54], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [53], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [52], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [51], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [50], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [49], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [48], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [47], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [46], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [45], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [43], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [42], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [41], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [40], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [39], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [38], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [37], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [36]}),
    .DIBDI({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DIPADIP({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [44]}),
    .DIPBDIP({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DOADO({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<31>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<30>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<29>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<28>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<27>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<26>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<25>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<24>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<23>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<22>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<21>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<20>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<19>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<18>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<17>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<16>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<15>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<14>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<13>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<12>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<11>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<10>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<9>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<8>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<0>_UNCONNECTED 
}),
    .DOBDO({\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[68] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[67] , \U0/buffer_top_inst/tx_buffer_inst/bram_eof_n_early 
, \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[65] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[64] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[63] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[62] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[61] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[60] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[59] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[58] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[57] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[56] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[55] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[54] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[53] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[52] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[51] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[50] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[49] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[48] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[47] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[46] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[45] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[43] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[42] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[41] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[40] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[39] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[38] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[37] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[36] }),
    .DOPADOP({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<0>_UNCONNECTED 
}),
    .DOPBDOP({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPBDOP<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPBDOP<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPBDOP<1>_UNCONNECTED 
, \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[44] }),
    .ECCPARITY({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<0>_UNCONNECTED 
}),
    .RDADDRECC({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<8>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<0>_UNCONNECTED 
}),
    .WEA({\U0/buffer_top_inst/tx_buffer_inst/bram_we , \U0/buffer_top_inst/tx_buffer_inst/bram_we , \U0/buffer_top_inst/tx_buffer_inst/bram_we , 
\U0/buffer_top_inst/tx_buffer_inst/bram_we }),
    .WEBWE({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]})
  );
  RAMB36E1 #(
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_ECC_READ ( "FALSE" ),
    .EN_ECC_WRITE ( "FALSE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_40 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_41 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_42 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_43 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_44 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_45 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_46 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_47 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_48 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_49 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_50 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_51 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_52 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_53 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_54 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_55 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_56 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_57 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_58 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_59 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_60 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_61 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_62 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_63 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_64 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_65 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_66 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_67 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_68 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_69 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_70 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_71 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_72 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_73 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_74 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_75 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_76 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_77 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_78 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_79 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .INIT_FILE ( "NONE" ),
    .RAM_EXTENSION_A ( "NONE" ),
    .RAM_EXTENSION_B ( "NONE" ),
    .RAM_MODE ( "TDP" ),
    .RDADDR_COLLISION_HWCONFIG ( "DELAYED_WRITE" ),
    .READ_WIDTH_A ( 36 ),
    .READ_WIDTH_B ( 36 ),
    .RSTREG_PRIORITY_A ( "REGCE" ),
    .RSTREG_PRIORITY_B ( "REGCE" ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "VIRTEX6" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .WRITE_WIDTH_A ( 36 ),
    .WRITE_WIDTH_B ( 36 ))
  \U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram  (
    .CASCADEINA(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINB(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEOUTA
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED )
,
    .CASCADEOUTB
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED )
,
    .CLKARDCLK(PHY_CLK),
    .CLKBWRCLK(PHY_CLK),
    .DBITERR
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED )
,
    .ENARDEN(NlwRenamedSig_OI_CFG_IN[59]),
    .ENBWREN(\U0/buffer_top_inst/tx_buffer_inst/bram_rd ),
    .INJECTDBITERR(NlwRenamedSig_OI_MGT_DO[26]),
    .INJECTSBITERR(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEAREGCE(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEB(NlwRenamedSig_OI_MGT_DO[26]),
    .RSTRAMARSTRAM(NlwRenamedSig_OI_MGT_DO[26]),
    .RSTRAMB(\U0/buffer_top_inst/cfg_inst/PHY_rst_n_inv ),
    .RSTREGARSTREG(NlwRenamedSig_OI_MGT_DO[26]),
    .RSTREGB(NlwRenamedSig_OI_MGT_DO[26]),
    .SBITERR
(\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED )
,
    .ADDRARDADDR({NlwRenamedSig_OI_CFG_IN[59], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [0], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [1], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [2], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_u [3], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [0], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [1], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [2], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [3], \U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [4], 
\U0/buffer_top_inst/tx_buffer_inst/bram_waddr_l [5], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRBWRADDR({NlwRenamedSig_OI_CFG_IN[59], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [0], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [1], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [2], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_u [3], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [5], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [4], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [3], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [2], \U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [1], 
\U0/buffer_top_inst/tx_buffer_inst/bram_raddr_l [0], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DIADI({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [34], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [33], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [32], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [31], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [30], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [29], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [28], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [27], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [25], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [24], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [23], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [22], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [21], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [20], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [19], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [18], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [16], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [15], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [14], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [13], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [12], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [11], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [10], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [9], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [7], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [6], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [5], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [4], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [3], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [2], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [1], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [0]}),
    .DIBDI({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DIPADIP({\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [35], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [26], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [17], 
\U0/buffer_top_inst/tx_buffer_inst/tx_sync_unit_inst/true_synch_unit.dist_ram_afifo_inst/grf.rf/mem/dout_i [8]}),
    .DIPBDIP({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DOADO({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<31>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<30>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<29>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<28>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<27>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<26>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<25>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<24>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<23>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<22>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<21>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<20>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<19>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<18>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<17>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<16>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<15>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<14>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<13>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<12>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<11>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<10>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<9>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<8>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<0>_UNCONNECTED 
}),
    .DOBDO({\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[34] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[33] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[32] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[31] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[30] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[29] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[28] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[27] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[25] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[24] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[23] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[22] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[21] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[20] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[19] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[18] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[16] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[15] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[14] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[13] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[12] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[11] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[10] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[9] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[7] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[6] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[5] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[4] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[3] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[2] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[1] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[0] }),
    .DOPADOP({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<0>_UNCONNECTED 
}),
    .DOPBDOP({\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[35] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[26] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[17] , 
\U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i[8] }),
    .ECCPARITY({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<0>_UNCONNECTED 
}),
    .RDADDRECC({
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<8>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/tx_buffer_inst/tx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<0>_UNCONNECTED 
}),
    .WEA({\U0/buffer_top_inst/tx_buffer_inst/bram_we , \U0/buffer_top_inst/tx_buffer_inst/bram_we , \U0/buffer_top_inst/tx_buffer_inst/bram_we , 
\U0/buffer_top_inst/tx_buffer_inst/bram_we }),
    .WEBWE({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]})
  );
  RAMB36E1 #(
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_ECC_READ ( "FALSE" ),
    .EN_ECC_WRITE ( "FALSE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_40 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_41 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_42 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_43 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_44 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_45 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_46 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_47 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_48 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_49 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_50 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_51 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_52 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_53 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_54 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_55 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_56 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_57 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_58 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_59 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_60 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_61 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_62 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_63 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_64 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_65 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_66 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_67 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_68 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_69 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_70 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_71 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_72 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_73 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_74 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_75 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_76 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_77 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_78 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_79 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .INIT_FILE ( "NONE" ),
    .RAM_EXTENSION_A ( "NONE" ),
    .RAM_EXTENSION_B ( "NONE" ),
    .RAM_MODE ( "TDP" ),
    .RDADDR_COLLISION_HWCONFIG ( "DELAYED_WRITE" ),
    .READ_WIDTH_A ( 36 ),
    .READ_WIDTH_B ( 36 ),
    .RSTREG_PRIORITY_A ( "REGCE" ),
    .RSTREG_PRIORITY_B ( "REGCE" ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "VIRTEX6" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .WRITE_WIDTH_A ( 36 ),
    .WRITE_WIDTH_B ( 36 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram  (
    .CASCADEINA(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINB(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEOUTA
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED )
,
    .CASCADEOUTB
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED )
,
    .CLKARDCLK(PHY_CLK),
    .CLKBWRCLK(LOG_CLK),
    .DBITERR
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED )
,
    .ENARDEN(NlwRenamedSig_OI_CFG_IN[59]),
    .ENBWREN(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_bram_rd_AND_348_o_norst ),
    .INJECTDBITERR(NlwRenamedSig_OI_MGT_DO[26]),
    .INJECTSBITERR(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEAREGCE(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEB(NlwRenamedSig_OI_MGT_DO[26]),
    .RSTRAMARSTRAM(NlwRenamedSig_OI_MGT_DO[26]),
    .RSTRAMB(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .RSTREGARSTREG(NlwRenamedSig_OI_MGT_DO[26]),
    .RSTREGB(NlwRenamedSig_OI_MGT_DO[26]),
    .SBITERR
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED )
,
    .ADDRARDADDR({NlwRenamedSig_OI_CFG_IN[59], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [0], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [1], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [2], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [3], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRBWRADDR({NlwRenamedSig_OI_CFG_IN[59], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [0], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [1], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [2], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [3], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [0], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [1], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [2], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [3], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [4], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [5], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DIADI({\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/bram_data_in [0], \U0/buffer_top_inst/rx_buffer_inst/lnk_reof_n_q_1394 , 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q [0], \U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q [1], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rrem_q [2], \U0/buffer_top_inst/rx_buffer_inst/lnk_rcrf_q_1401 , 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [0], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [1], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [3], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [4], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [5], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [6], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [7], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [8], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [9], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [10], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [11], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [12], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [13], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [14], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [15], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [16], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [17], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [18], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [20], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [21], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [22], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [23], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [24], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [25], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [26], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [27]}),
    .DIBDI({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DIPADIP({NlwRenamedSig_OI_MGT_DO[26], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [2], NlwRenamedSig_OI_MGT_DO[26], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [19]}),
    .DIPBDIP({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DOADO({
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<31>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<30>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<29>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<28>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<27>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<26>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<25>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<24>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<23>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<22>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<21>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<20>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<19>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<18>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<17>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<16>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<15>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<14>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<13>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<12>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<11>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<10>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<9>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<8>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<0>_UNCONNECTED 
}),
    .DOBDO({\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [69], 
\U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/doutb_i [68], \U0/buffer_top_inst/rx_buffer_inst/bram_rrem [0], 
\U0/buffer_top_inst/rx_buffer_inst/bram_rrem [1], \U0/buffer_top_inst/rx_buffer_inst/bram_rrem [2], \U0/buffer_top_inst/rx_buffer_inst/bram_crf , 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [0], \U0/buffer_top_inst/rx_buffer_inst/bram_data [1], \U0/buffer_top_inst/rx_buffer_inst/bram_data [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [4], \U0/buffer_top_inst/rx_buffer_inst/bram_data [5], \U0/buffer_top_inst/rx_buffer_inst/bram_data [6], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [7], \U0/buffer_top_inst/rx_buffer_inst/bram_data [8], \U0/buffer_top_inst/rx_buffer_inst/bram_data [9], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [10], \U0/buffer_top_inst/rx_buffer_inst/bram_data [11], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [12], \U0/buffer_top_inst/rx_buffer_inst/bram_data [13], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [14], \U0/buffer_top_inst/rx_buffer_inst/bram_data [15], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [16], \U0/buffer_top_inst/rx_buffer_inst/bram_data [17], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [18], \U0/buffer_top_inst/rx_buffer_inst/bram_data [20], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [21], \U0/buffer_top_inst/rx_buffer_inst/bram_data [22], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [23], \U0/buffer_top_inst/rx_buffer_inst/bram_data [24], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [25], \U0/buffer_top_inst/rx_buffer_inst/bram_data [26], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [27]}),
    .DOPADOP({
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<0>_UNCONNECTED 
}),
    .DOPBDOP({
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPBDOP<3>_UNCONNECTED 
, \U0/buffer_top_inst/rx_buffer_inst/bram_data [2], 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPBDOP<1>_UNCONNECTED 
, \U0/buffer_top_inst/rx_buffer_inst/bram_data [19]}),
    .ECCPARITY({
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<0>_UNCONNECTED 
}),
    .RDADDRECC({
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<8>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[1].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<0>_UNCONNECTED 
}),
    .WEA({\U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 , \U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 , 
\U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 , \U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 }),
    .WEBWE({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]})
  );
  RAMB36E1 #(
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_ECC_READ ( "FALSE" ),
    .EN_ECC_WRITE ( "FALSE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_30 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_31 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_32 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_33 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_34 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_35 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_36 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_37 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_38 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_39 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_3F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_40 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_41 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_42 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_43 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_44 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_45 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_46 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_47 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_48 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_49 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_4F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_50 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_51 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_52 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_53 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_54 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_55 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_56 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_57 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_58 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_59 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_5F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_60 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_61 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_62 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_63 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_64 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_65 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_66 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_67 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_68 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_69 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_6F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_70 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_71 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_72 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_73 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_74 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_75 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_76 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_77 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_78 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_79 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_7F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 36'h000000000 ),
    .INIT_B ( 36'h000000000 ),
    .INIT_FILE ( "NONE" ),
    .RAM_EXTENSION_A ( "NONE" ),
    .RAM_EXTENSION_B ( "NONE" ),
    .RAM_MODE ( "TDP" ),
    .RDADDR_COLLISION_HWCONFIG ( "DELAYED_WRITE" ),
    .READ_WIDTH_A ( 36 ),
    .READ_WIDTH_B ( 36 ),
    .RSTREG_PRIORITY_A ( "REGCE" ),
    .RSTREG_PRIORITY_B ( "REGCE" ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .SIM_DEVICE ( "VIRTEX6" ),
    .SRVAL_A ( 36'h000000000 ),
    .SRVAL_B ( 36'h000000000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .WRITE_WIDTH_A ( 36 ),
    .WRITE_WIDTH_B ( 36 ))
  \U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram  (
    .CASCADEINA(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEINB(NlwRenamedSig_OI_MGT_DO[26]),
    .CASCADEOUTA
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED )
,
    .CASCADEOUTB
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED )
,
    .CLKARDCLK(PHY_CLK),
    .CLKBWRCLK(LOG_CLK),
    .DBITERR
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED )
,
    .ENARDEN(NlwRenamedSig_OI_CFG_IN[59]),
    .ENBWREN(\U0/buffer_top_inst/rx_buffer_inst/GND_172_o_bram_rd_AND_348_o_norst ),
    .INJECTDBITERR(NlwRenamedSig_OI_MGT_DO[26]),
    .INJECTSBITERR(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEAREGCE(NlwRenamedSig_OI_MGT_DO[26]),
    .REGCEB(NlwRenamedSig_OI_MGT_DO[26]),
    .RSTRAMARSTRAM(NlwRenamedSig_OI_MGT_DO[26]),
    .RSTRAMB(\U0/buffer_top_inst/rx_buffer_inst/LOG_rst_n_inv ),
    .RSTREGARSTREG(NlwRenamedSig_OI_MGT_DO[26]),
    .RSTREGB(NlwRenamedSig_OI_MGT_DO[26]),
    .SBITERR
(\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED )
,
    .ADDRARDADDR({NlwRenamedSig_OI_CFG_IN[59], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [0], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [1], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [2], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_u [3], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [5], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [4], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [3], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [2], \U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [1], 
\U0/buffer_top_inst/rx_buffer_inst/bram_waddr_l [0], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .ADDRBWRADDR({NlwRenamedSig_OI_CFG_IN[59], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [0], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [1], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [2], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_u [3], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [0], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [1], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [2], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [3], \U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [4], 
\U0/buffer_top_inst/rx_buffer_inst/bram_raddr_l [5], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DIADI({\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [29], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [30], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [31], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [32], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [33], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [34], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [35], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [36], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [38], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [39], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [40], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [41], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [42], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [43], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [44], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [45], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [47], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [48], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [49], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [50], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [51], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [52], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [53], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [54], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [56], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [57], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [58], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [59], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [60], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [61], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [62], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [63]})
,
    .DIBDI({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DIPADIP({\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [28], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [37], 
\U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [46], \U0/buffer_top_inst/rx_buffer_inst/lnk_rd_q [55]}),
    .DIPBDIP({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]}),
    .DOADO({
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<31>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<30>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<29>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<28>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<27>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<26>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<25>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<24>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<23>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<22>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<21>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<20>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<19>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<18>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<17>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<16>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<15>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<14>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<13>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<12>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<11>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<10>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<9>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<8>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOADO<0>_UNCONNECTED 
}),
    .DOBDO({\U0/buffer_top_inst/rx_buffer_inst/bram_data [29], \U0/buffer_top_inst/rx_buffer_inst/bram_data [30], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [31], \U0/buffer_top_inst/rx_buffer_inst/bram_data [32], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [33], \U0/buffer_top_inst/rx_buffer_inst/bram_data [34], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [35], \U0/buffer_top_inst/rx_buffer_inst/bram_data [36], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [38], \U0/buffer_top_inst/rx_buffer_inst/bram_data [39], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [40], \U0/buffer_top_inst/rx_buffer_inst/bram_data [41], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [42], \U0/buffer_top_inst/rx_buffer_inst/bram_data [43], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [44], \U0/buffer_top_inst/rx_buffer_inst/bram_data [45], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [47], \U0/buffer_top_inst/rx_buffer_inst/bram_data [48], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [49], \U0/buffer_top_inst/rx_buffer_inst/bram_data [50], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [51], \U0/buffer_top_inst/rx_buffer_inst/bram_data [52], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [53], \U0/buffer_top_inst/rx_buffer_inst/bram_data [54], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [56], \U0/buffer_top_inst/rx_buffer_inst/bram_data [57], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [58], \U0/buffer_top_inst/rx_buffer_inst/bram_data [59], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [60], \U0/buffer_top_inst/rx_buffer_inst/bram_data [61], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [62], \U0/buffer_top_inst/rx_buffer_inst/bram_data [63]}),
    .DOPADOP({
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_DOPADOP<0>_UNCONNECTED 
}),
    .DOPBDOP({\U0/buffer_top_inst/rx_buffer_inst/bram_data [28], \U0/buffer_top_inst/rx_buffer_inst/bram_data [37], 
\U0/buffer_top_inst/rx_buffer_inst/bram_data [46], \U0/buffer_top_inst/rx_buffer_inst/bram_data [55]}),
    .ECCPARITY({
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_ECCPARITY<0>_UNCONNECTED 
}),
    .RDADDRECC({
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<8>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<7>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<6>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<5>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<4>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<3>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<2>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<1>_UNCONNECTED 
, 
\NLW_U0/buffer_top_inst/rx_buffer_inst/rx_bram_bank_inst/blk_mem_inst/blk_mem_generator/valid.cstr/ramloop[0].ram.r/v6_noinit.ram/SDP.SIMPLE_PRIM36.ram_RDADDRECC<0>_UNCONNECTED 
}),
    .WEA({\U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 , \U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 , 
\U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 , \U0/buffer_top_inst/rx_buffer_inst/bram_we_1408 }),
    .WEBWE({NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], 
NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26], NlwRenamedSig_OI_MGT_DO[26]})
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
