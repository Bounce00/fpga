///////////////////////////////////////////////////////////////////////////////
//
// (c) Copyright 1995 - 2011 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//     
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

///////////////////////////////////////////////////////////////////////////////
//
// File name:     phy_wrapper.v
// Rev:           5.6
// Description:   This is an example wrapper that instantiates
//                the the Serial RapidIO Physical Layer, and
//                RocketIO Transceivers.
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps

module phy_wrapper #(parameter SRIO_VIO = 0)
  (
   /**********  Clock and Reset Signals  **************************************/
   input         refclk,
   input         uclk,
   input         lnk_clk,
   input         dcm_lock,
   output        pll_locked,

   input         sys_reset_n,
   output        lnk_reset_n,

   input [0:7]   h_error,  // Currently unsupported
   input [0:7]   tc_error, // Currently unsupported
   input         fifo_error,
   input [35:0]  control2,

   /**********  Serial Link Interface  ****************************************/
   input          srio_rxn0, srio_rxp0,
   input          srio_rxn1, srio_rxp1,
   input          srio_rxn2, srio_rxp2,
   input          srio_rxn3, srio_rxp3,
   output         srio_txn0, srio_txp0,
   output         srio_txn1, srio_txp1,
   output         srio_txn2, srio_txp2,
   output         srio_txn3, srio_txp3,

  /*********** Management Interface ***************************************/
   input          mgt_clk,
   input          mgt_reset_n,
   input          mgt_rd_n,
   input  [0:3]   mgt_wr_n,
   input  [0:23]  mgt_a,
   input  [0:31]  mgt_do,
   input          mgt_phy_sel_n,

   output [0:31]  mgt_d_phy,
   output         mgt_phy_rdy_n,

   output         master_enable,

  /*********** Log Transmit Interface ***************************************/
   input          lnk_tsof_n,
   input          lnk_teof_n,
   input          lnk_tsrc_rdy_n,
   input          lnk_tsrc_dsc_n,
   output         lnk_tdst_rdy_n,
   output         lnk_tdst_dsc_n,
   input  [0:63]  lnk_td,
   input  [0:2]   lnk_trem,

  // Receive data path from the RapidIO link
   output         lnk_rsof_n,
   output         lnk_reof_n,
   input          lnk_rdst_rdy_n,
   input          lnk_rdst_dsc_n,
   output         lnk_rsrc_rdy_n,
   output         lnk_rsrc_dsc_n,
   output [0:63]  lnk_rd,
   output [0:2]   lnk_rrem,

   output [0:4]   lnk_rx_buf_stat,   // How many packets far-end can accept
   input  [0:4]   lnk_buf_stat,      // How many packets can be accepted
   output [0:4]   lnk_tlast_ack,     // AckID of last packet to accept
   output [0:4]   lnk_tnext_fm,      // AckID of next packet to transmit

   /**********  SRIO Interface Signals  ***************************************/
   input          lnk_mcast_req_n,
   input          force_reinit,
   input          lnk_linkreset_n,
   input          fast_train,
   output         lnk_mcast_ack_n,
   output         lnk_porterr_n,
   output         lnk_pna_n,
   output [0:23]  resp_time_out,
   output         lnk_mce_dec_n,

   /**********  Configuration and Status Signals  *****************************/
   output [0:511] srio_cfg,
   output         port_initialized,
   output         mode_sel,
   output         lnk_rrdy_n,
   output         lnk_trdy_n
  );

  // RocketIO Interface
  wire         rst_uclk_n;

  wire        enchanbond;
  wire [0:3]  chanbonddone;
  wire        chanbonddone0, chanbonddone1, chanbonddone2, chanbonddone3;
  wire        rx_buf_rst;
  wire        rxbuferr;
  wire [0:63] rxdata;
  wire [0:15] rxdata0, rxdata1, rxdata2, rxdata3;
  wire [0:7]  rxcharisk;
  wire [0:1]  rxcharisk0, rxcharisk1, rxcharisk2, rxcharisk3;
  wire [0:7]  rxdisperr;
  wire [0:1]  rxdisperr0, rxdisperr1, rxdisperr2, rxdisperr3;
  wire [0:7]  rxnotintable;
  wire [0:1]  rxnotintable0, rxnotintable1, rxnotintable2, rxnotintable3;
  wire        txinhibit_02;
  wire        txinhibit_13;
  wire [0:63] txdata;
  wire [0:15] txdata0, txdata1, txdata2, txdata3;
  wire [0:7]  txcharisk;
  wire [0:1]  txcharisk0, txcharisk1, txcharisk2, txcharisk3;

//generate if (SRIO_VIO == 1) begin : srio_ila2_gen
//  wire [255:0] phy_data;
//  wire [31:0] phy_trig;
//
//    phy_ila i_phy_ila
//    (
//      .control(control2),
//      .clk(uclk),
//      .data(phy_data),
//      .trig0(phy_trig)
//    );
//
//  //PHY ILA Data Signals
//  assign phy_data[255:192]  = txdata[0:63];
//  assign phy_data[191:184]  = txcharisk[0:7];
//  assign phy_data[183:120]  = rxdata[0:63];
//  assign phy_data[119:112]  = rxcharisk[0:7];
//  assign phy_data[111]      = txinhibit_02;
//  assign phy_data[110]      = txinhibit_13;                               
//  assign phy_data[109]      = lnk_tsof_n;
//  assign phy_data[108]      = lnk_teof_n;
//  assign phy_data[107]      = lnk_tsrc_rdy_n;
//  assign phy_data[106]      = lnk_tdst_rdy_n;
//  assign phy_data[105]      = lnk_tsrc_dsc_n;
//  assign phy_data[104]      = lnk_tdst_dsc_n;
// 
//  assign phy_data[103]      = 1'b0;
//  assign phy_data[102]      = lnk_rsof_n;
//  assign phy_data[101]      = lnk_reof_n;
//  assign phy_data[100]      = lnk_rsrc_rdy_n;
//  assign phy_data[99]       = lnk_rdst_rdy_n;
//  assign phy_data[98]       = lnk_rsrc_dsc_n;
//  assign phy_data[97]       = lnk_rdst_dsc_n;
// 
//  assign phy_data[96]     = 1'b0;
//  assign phy_data[95:91]  = lnk_tnext_fm[0:4];
//  assign phy_data[90:86]  = lnk_tlast_ack[0:4];
//  assign phy_data[85]     = lnk_porterr_n;
//  assign phy_data[84]     = lnk_pna_n;
//  assign phy_data[83:76]  = tc_error[0:7];
//  assign phy_data[75:68]  = h_error[0:7];
//  assign phy_data[67]     = fifo_error;
//  assign phy_data[66]     = port_initialized;                                
//                        
//  assign phy_data[65:58]  = rxdisperr[0:7];                           
//  assign phy_data[57:50]  = rxnotintable[0:7];                           
//  assign phy_data[49]     = enchanbond;                           
//  assign phy_data[48]     = mode_sel;                                                                 
//  assign phy_data[47]     = force_reinit;                           
//  assign phy_data[46]     = lnk_trdy_n;                           
//  assign phy_data[45]     = lnk_rrdy_n;
//  assign phy_data[44]     = pll_locked;
//  assign phy_data[43:0]   = 44'b0;  
//
//
//  //PHY ILA Trigger Signals
//  assign phy_trig[31]   = lnk_tsof_n;
//  assign phy_trig[30]   = lnk_teof_n;
//  assign phy_trig[29]   = lnk_tsrc_rdy_n;
//  assign phy_trig[28]   = lnk_tdst_rdy_n;
//  assign phy_trig[27]   = lnk_tsrc_dsc_n;
//  assign phy_trig[26]   = lnk_tdst_dsc_n;
//  assign phy_trig[25]   = 1'b0;   
//  assign phy_trig[24]   = lnk_rsof_n;
//  assign phy_trig[23]   = lnk_reof_n;
//  assign phy_trig[22]   = lnk_rsrc_rdy_n;
//  assign phy_trig[21]   = lnk_rdst_rdy_n;
//  assign phy_trig[20]   = lnk_rsrc_dsc_n;
//  assign phy_trig[19]   = lnk_rdst_dsc_n;
//  assign phy_trig[18]   = 1'b0;   
//  assign phy_trig[17]   = lnk_porterr_n;                                
//  assign phy_trig[16]   = lnk_pna_n;                                
//  assign phy_trig[15]   = lnk_trdy_n;                                
//  assign phy_trig[14]   = lnk_rrdy_n;                                
//  assign phy_trig[13:8] = h_error[0:5];                                
//  assign phy_trig[7]    = fifo_error;                                
//  assign phy_trig[6]    = txinhibit_02;
//  assign phy_trig[5]    = txinhibit_13;
//  assign phy_trig[4]    = enchanbond;
//  assign phy_trig[3]    = mode_sel;
//  assign phy_trig[2]    = port_initialized;
//  assign phy_trig[1]    = |rxdisperr;
//  assign phy_trig[0]    = |rxnotintable;
//
//end // srio_ila2_gen
//endgenerate // srio_ila2_gen

  assign rxdata       = {rxdata0, rxdata1, rxdata2, rxdata3};
  assign rxcharisk    = {rxcharisk0, rxcharisk1, rxcharisk2, rxcharisk3};
  assign rxdisperr    = {rxdisperr0, rxdisperr1, rxdisperr2, rxdisperr3};
  assign rxnotintable = {rxnotintable0, rxnotintable1, rxnotintable2, rxnotintable3};
  assign chanbonddone = {chanbonddone0, chanbonddone1, chanbonddone2, chanbonddone3};
  assign txdata0      = txdata[0:15];
  assign txdata1      = txdata[16:31];
  assign txdata2      = txdata[32:47];
  assign txdata3      = txdata[48:63];
  assign txcharisk0   = txcharisk[0:1];
  assign txcharisk1   = txcharisk[2:3];
  assign txcharisk2   = txcharisk[4:5];
  assign txcharisk3   = txcharisk[6:7];

  /****************************************************************************/
  /*  Physical Layer - SRIO Core and RocketIO Transceivers                    */
  /****************************************************************************/

  srio_phy_v5_6 phy_4x_ser
    (
    .uclk               (uclk),
    .uclk_dv4           (lnk_clk),
    .uclk_lock          (dcm_lock),
    .sys_reset_n        (sys_reset_n),
    .lnk_td             (lnk_td),
    .lnk_trem           (lnk_trem),
    .lnk_tsof_n         (lnk_tsof_n),
    .lnk_teof_n         (lnk_teof_n),
    .lnk_tsrc_rdy_n     (lnk_tsrc_rdy_n),
    .lnk_tsrc_dsc_n     (lnk_tsrc_dsc_n),
    .lnk_mcast_req_n    (lnk_mcast_req_n),
    .lnk_rbuf_stat      (lnk_buf_stat),
    .lnk_rdst_rdy_n     (lnk_rdst_rdy_n),
    .lnk_rdst_dsc_n     (lnk_rdst_dsc_n),
    .lnk_linkreset_n    (lnk_linkreset_n),
    .force_reinit       (force_reinit),
    .mgt_clk            (mgt_clk),
    .mgt_reset_n        (mgt_reset_n),
    .mgt_a              (mgt_a[12:23]),
    .mgt_sel_n          (mgt_phy_sel_n),
    .mgt_wr_n           (mgt_wr_n),
    .mgt_rd_n           (mgt_rd_n),
    .mgt_di             (mgt_do),
    .fast_train         (fast_train),
    .cfg_out            (srio_cfg),
    .lnk_tlast_ack      (lnk_tlast_ack),
    .lnk_tnext_fm       (lnk_tnext_fm),
    .lnk_tbuf_stat      (lnk_rx_buf_stat),
    .lnk_trdy_n         (lnk_trdy_n),
    .lnk_tdst_rdy_n     (lnk_tdst_rdy_n),
    .lnk_tdst_dsc_n     (lnk_tdst_dsc_n),
    .lnk_mcast_ack_n    (lnk_mcast_ack_n),
    .lnk_rd             (lnk_rd),
    .lnk_rrem           (lnk_rrem),
    .lnk_rrdy_n         (lnk_rrdy_n),
    .lnk_rsof_n         (lnk_rsof_n),
    .lnk_reof_n         (lnk_reof_n),
    .lnk_rsrc_rdy_n     (lnk_rsrc_rdy_n),
    .lnk_rsrc_dsc_n     (lnk_rsrc_dsc_n),
    .lnk_porterr_n      (lnk_porterr_n),
    .lnk_pna_n          (lnk_pna_n),
    .resp_time_out      (resp_time_out),
    .master_enable      (master_enable),
    .rst_uclk_n         (rst_uclk_n),
    .lnk_reset_n        (lnk_reset_n),
    .lnk_mce_dec_n      (lnk_mce_dec_n),
    .mgt_do             (mgt_d_phy),
    .mgt_rdy_n          (mgt_phy_rdy_n),
    .mgt_int_n          (),
    .port_initialized   (port_initialized),
    .mode_sel           (mode_sel),
    .rxbuferr           (rxbuferr),
    .rxcharisk          (rxcharisk),
    .rxdisperr          (rxdisperr),
    .rxnotintable       (rxnotintable),
    .rxdata             (rxdata),
    .chanbonddone       (chanbonddone),
    .enchanbond         (enchanbond),
    .rx_buf_rst         (rx_buf_rst),
    .txinhibit_02       (txinhibit_02),
    .txinhibit_13       (txinhibit_13),
    .txcharisk          (txcharisk),
    .txdata             (txdata)
  ); //srio_phy


  srio_gt_wrapper_v6_4x srio_gt_wrapper
    (
    .REFCLK             (refclk),
    .GTXRESET           (~rst_uclk_n),
    .ENCHANSYNC         (enchanbond),
    .RXBUFRST           (rx_buf_rst),
    .RXBUFERR           (rxbuferr),
    .RXUSRCLK           (uclk),
    .RXUSRCLK2          (uclk),
    .TXUSRCLK           (uclk),
    .TXUSRCLK2          (uclk),
    .RXN0               (srio_rxn0),
    .RXP0               (srio_rxp0),
    .RXN1               (srio_rxn1),
    .RXP1               (srio_rxp1),
    .RXN2               (srio_rxn2),
    .RXP2               (srio_rxp2),
    .RXN3               (srio_rxn3),
    .RXP3               (srio_rxp3),
    .TXN0               (srio_txn0),
    .TXP0               (srio_txp0),
    .TXN1               (srio_txn1),
    .TXP1               (srio_txp1),
    .TXN2               (srio_txn2),
    .TXP2               (srio_txp2),
    .TXN3               (srio_txn3),
    .TXP3               (srio_txp3),
    .PLLLKDET           (pll_locked),
    .RXDATA0            (rxdata0),
    .RXCHARISK0         (rxcharisk0),
    .RXDISPERR0         (rxdisperr0),
    .RXNOTINTABLE0      (rxnotintable0),
    .RXDATA1            (rxdata1),
    .RXDATA2            (rxdata2),
    .RXDATA3            (rxdata3),
    .RXCHARISK1         (rxcharisk1),
    .RXCHARISK2         (rxcharisk2),
    .RXCHARISK3         (rxcharisk3),
    .RXDISPERR1         (rxdisperr1),
    .RXDISPERR2         (rxdisperr2),
    .RXDISPERR3         (rxdisperr3),
    .RXNOTINTABLE1      (rxnotintable1),
    .RXNOTINTABLE2      (rxnotintable2),
    .RXNOTINTABLE3      (rxnotintable3),
    .TXINHIBIT_02       (txinhibit_02),
    .TXINHIBIT_13       (txinhibit_13),
    .TXDATA0            (txdata0),
    .TXCHARISK0         (txcharisk0),
    .TXDATA1            (txdata1),
    .TXDATA2            (txdata2),
    .TXDATA3            (txdata3),
    .TXCHARISK1         (txcharisk1),
    .TXCHARISK2         (txcharisk2),
    .TXCHARISK3         (txcharisk3),
    .CHBONDDONE0        (chanbonddone0),
    .CHBONDDONE1        (chanbonddone1),
    .CHBONDDONE2        (chanbonddone2),
    .CHBONDDONE3        (chanbonddone3)
  ); // RocketIO Transceivers


endmodule
