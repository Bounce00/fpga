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
// File name:     srio_v5_6_top.v
// Rev:           5.6
// Description:   This is the top level RapidIO End-Point.
// 
//                It instantiates the Physical Layer Module,
//                the Logical IO Layer Module, the Register
//                Manager, the Buffer Module and the User
//                Application.
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps


module srio_v5_6_top  #(
  parameter FAST_TRAIN_MODE = 1'b0,
  parameter SRIO_VIO        = 1,
  parameter TCQ             = 100
  )(

     /***************  User Signals  ************************************/
     // Place User Signals Here




     /***************  System Interface  ********************************/
//     input         sys_clkp,
//     input         sys_clkn,
	  input			 REFCLK,

	  input			 rst_n,

     /***************  Serial bit RIO Link Interface  *******************/
     output        srio_txp0, 
     output        srio_txn0,
     output        srio_txp1, 
     output        srio_txn1,
     output        srio_txp2, 
     output        srio_txn2,
     output        srio_txp3, 
     output        srio_txn3,
     input         srio_rxp0, 
     input         srio_rxn0,
     input         srio_rxp1, 
     input         srio_rxn1,
     input         srio_rxp2, 
     input         srio_rxn2,
     input         srio_rxp3, 
     input         srio_rxn3,
	  
	  
	  output                      user_clk,
     output                      user_rst_n,	  
	  
     output                      ram_wr,  
     output                      ram_rd,  
     output            [31:0]    ram_addr,
     input             [63:0]    ram_dout, 
     output            [63:0]    ram_din,
	  output            [7:0]     ram_bus_sel,
	  
///////////////////////////////////////////////////////////////	  
     input             [7:0]     ucfg_dest_id,
     input             [31:0]    ucfg_src_start_addr,
     input             [33:0]    ucfg_dest_start_addr,
     input             [8:0]     ucfg_byte_count,
     input             [15:0]    ucfg_db_info,
     input                       ucfg_wr_n,        // 0:write, 1:read
                       
     input                       ucfg_normal_trigger,
     input                       ucfg_db_trigger, 
    
     output                      srio_mem_wren,
     output                      srio_mem_rden,
     output             [31:0]   srio_mem_addr,
     output             [63:0]   srio_mem_din,
     input              [63:0]   srio_mem_dout,         
    
     output                      srio_db_resp,
     output                      srio_initial_busy   
  );

  /*******************************************************************/
  /***************  Start Wire Declaration  **************************/
  /*******************************************************************/

  /**********  User Wire Declaration  ********************************/
  //Place User Wire Declarations Here

  // Resets
  wire       local_reset_n;
  wire       link_reset_n;
  wire       sys_reset_n;
  wire       log_reset_n;
  wire       phy_reset_n;


  /**********  Target Request Interface  *****************************/
  //Target Req control signals
  wire          treq_sof_n;
  wire          treq_eof_n;
  wire          treq_vld_n;
  wire          treq_rdy_n;
  //Target Req data to the application interface
  wire  [0:1]   treq_prio;
  wire  [0:3]   treq_ftype;
  wire  [0:7]   treq_dest_id;
  wire  [0:7]   treq_src_id;
  wire  [0:7]   treq_tid;
  wire  [0:3]   treq_ttype;
  wire  [0:33]  treq_addr;
  wire  [0:7]   treq_byte_en_n;
  wire  [0:8]   treq_byte_count;
  wire  [0:63]  treq_data;
  // Doorbell/Messaging signals
  wire  [0:15]  treq_db_info;
  wire  [0:3]   treq_msg_len;
  wire  [0:3]   treq_msg_seg;
  wire  [0:5]   treq_mbox;
  wire  [0:1]   treq_letter;

  /**********  Target Response Interface  ****************************/
  //Target Response control signals
  wire          tresp_sof_n;
  wire          tresp_eof_n;
  wire          tresp_vld_n;
  wire          tresp_dsc_n;
  wire          tresp_rdy_n;
  //Target Response Signals from application interface
  wire   [0:1]  tresp_prio;
  wire   [0:3]  tresp_ftype;
  wire   [0:7]  tresp_dest_id;
  wire   [0:3]  tresp_ttype;
  wire   [0:3]  tresp_status;
  wire   [0:7]  tresp_tid;
  wire   [0:63] tresp_data;
  // Doorbell/Messaging signals
  wire   [0:3]   tresp_msg_seg;
  wire   [0:1]   tresp_mbox;
  wire   [0:1]   tresp_letter;

  /**********  Initiator Response Interface  *************************/
  //Initiator Response control signals
  wire          iresp_sof_n;
  wire          iresp_eof_n;
  wire          iresp_vld_n;
  wire          iresp_rdy_n;
  wire          iresp_local;
  //Initiator response data signals to application interface
  wire   [0:1]  iresp_prio;
  wire   [0:3]  iresp_ftype;
  wire   [0:3]  iresp_ttype;
  wire   [0:3]  iresp_status;
  wire   [0:7]  iresp_tid;
  wire   [0:7]  iresp_dest_id;
  wire   [0:7]  iresp_src_id;
  wire   [0:63] iresp_data;
  // Doorbell/Messaging signals
  wire   [0:3]  iresp_msg_seg;
  wire   [0:1]  iresp_mbox;
  wire   [0:1]  iresp_letter;

  /**********  Initiator Request Interface  **************************/
  //Initiator Request control signals
  wire          ireq_sof_n;
  wire          ireq_eof_n;
  wire          ireq_vld_n;
  wire          ireq_local;
  wire          ireq_dsc_n;
  wire          ireq_rdy_n;
  //Initiator Request data signals to application interface
  wire  [0:1]   ireq_prio;
  wire  [0:3]   ireq_ftype;
  wire  [0:7]   ireq_tid;
  wire  [0:7]   ireq_dest_id;
  wire  [0:7]   ireq_hop_count;
  wire  [0:3]   ireq_ttype;
  wire  [0:8]   ireq_byte_count;
  wire  [0:7]   ireq_byte_en_n;
  wire  [0:33]  ireq_addr;
  wire  [0:63]  ireq_data;
  // Doorbell/Messaging signals
  wire  [0:15]  ireq_db_info;
  wire  [0:3]   ireq_msg_len;
  wire  [0:3]   ireq_msg_seg;
  wire  [0:5]   ireq_mbox;
  wire  [0:1]   ireq_letter;

  // Initialization
  wire [0:15]   deviceid;
  wire          port_initialized;
  wire          mode_sel;
  wire          lnk_porterr_n;

  // Core Configuration Bus
  wire [0:511]  srio_cfg;
  wire [0:257]  log_io_cfg;
  wire [0:63]   buffer_cfg;
  wire [0:23]   resp_timeout;

  wire          lnk_reset_n;
  wire          lnk_rrdy_n;
  wire          lnk_trdy_n;

  // Clocks
//  wire          REFCLK;
  wire          UCLK;
  wire          LNK_CLK;
  wire          LOG_CLK;
  wire          PHY_CLK;
  wire          DCM_LOCK;
  wire          PLL_LOCKED;

  wire [0:7]    h_error;  // Currently unsupported.
  wire [0:7]    tc_error; // Currently unsupported.

  /*******************************************************************/
  /***************  End Wire Declaration  ****************************/
  /*******************************************************************/


  assign    user_clk      =    LOG_CLK;
  assign    user_rst_n    =    lnk_reset_n;


  /*******************************************************************/
  // User Design Instances
  /*******************************************************************/
  // Place User Design Instance here

 srio_target_interface_64 u_srio_target_interface
(

            .sys_clk(LOG_CLK),
            .sys_rst_n(lnk_reset_n),
            
            // Target Response
            .tresp_prio(tresp_prio),
            .tresp_ftype(tresp_ftype),
            .tresp_dest_id(tresp_dest_id),
            .tresp_ttype(tresp_ttype),
            .tresp_status(tresp_status),
            .tresp_tid(tresp_tid),
            .tresp_data(tresp_data),
            .tresp_sof_n(tresp_sof_n),
            .tresp_eof_n(tresp_eof_n),
            .tresp_vld_n(tresp_vld_n),
            .tresp_dsc_n(tresp_dsc_n),
            .tresp_rdy_n(tresp_rdy_n),
//          .tresp_stalls(),
//          .tresp_msg_seg(),
//          .tresp_mbox(),                         
//          .tresp_letter(),                         
                                     
            // Target Request                         
            .treq_prio(treq_prio),                       
            .treq_ftype(treq_ftype),                     
            .treq_dest_id(treq_dest_id),                 
            .treq_src_id(treq_src_id),                   
            .treq_tid(treq_tid),                         
            .treq_ttype(treq_ttype),                     
            .treq_addr(treq_addr),                       
            .treq_byte_en_n(treq_byte_en_n),             
            .treq_byte_count(treq_byte_count),           
            .treq_data(treq_data),                       
            .treq_sof_n(treq_sof_n),                     
            .treq_eof_n(treq_eof_n),                     
            .treq_vld_n(treq_vld_n),                     
            .treq_rdy_n(treq_rdy_n),                     
//          .treq_db_info(),                         
//          .treq_msg_len(),                         
//          .treq_msg_seg(),                         
//          .treq_mbox(),                                
//          .treq_letter()                          
                                     
            //memory bus                         
            .ram_wr(ram_wr),                         
            .ram_rd(ram_rd),                         
            .ram_addr(ram_addr),                         
            .ram_dout(ram_dout),                         
            .ram_din(ram_din),
            .ram_bus_sel(ram_bus_sel)				
 );
 
srio_initial_interface_64 u_srio_initial_interface 
(
    .sys_clk(LOG_CLK), 
    .sys_rst_n(lnk_reset_n), 
    
    .ireq_sof_n(ireq_sof_n), 
    .ireq_eof_n(ireq_eof_n), 
    .ireq_vld_n(ireq_vld_n), 
    .ireq_dsc_n(ireq_dsc_n), 
    .ireq_rdy_n(ireq_rdy_n), 
    .ireq_data(ireq_data), 
    .ireq_prio(ireq_prio), 
    .ireq_crf(ireq_crf), 
    .ireq_ftype(ireq_ftype), 
    .ireq_ttype(ireq_ttype), 
    .ireq_tid(ireq_tid), 
    .ireq_dest_id(ireq_dest_id), 
    .ireq_addr(ireq_addr), 
    .ireq_hopcount(ireq_hopcount), 
    .ireq_byte_count(ireq_byte_count), 
    .ireq_byte_en_n(ireq_byte_en_n), 
    .ireq_local(ireq_local), 
    .ireq_db_info(ireq_db_info), 
    .ireq_msg_len(ireq_msg_len), 
    .ireq_msg_seg(ireq_msg_seg), 
    .ireq_mbox(ireq_mbox), 
    .ireq_letter(ireq_letter), 
    
    .iresp_sof_n(iresp_sof_n), 
    .iresp_eof_n(iresp_eof_n), 
    .iresp_vld_n(iresp_vld_n), 
    .iresp_rdy_n(iresp_rdy_n), 
    .iresp_data(iresp_data), 
    .iresp_ftype(iresp_ftype), 
    .iresp_ttype(iresp_ttype), 
    .iresp_dest_id(iresp_dest_id), 
    .iresp_src_id(iresp_src_id), 
    .iresp_status(iresp_status), 
    .iresp_tid(iresp_tid), 
    .iresp_msg_seg(iresp_msg_seg), 
    .iresp_mbox(iresp_mbox), 
    .iresp_letter(iresp_letter), 
    
    .ucfg_dest_id(ucfg_dest_id), 
    .ucfg_src_start_addr(ucfg_src_start_addr), 
    .ucfg_dest_start_addr(ucfg_dest_start_addr), 
    .ucfg_byte_count(ucfg_byte_count), 
    .ucfg_db_info(ucfg_db_info), 
    .ucfg_wr_n(ucfg_wr_n), 
    .ucfg_normal_trigger(ucfg_normal_trigger), 
    .ucfg_db_trigger(ucfg_db_trigger), 
    
    .srio_mem_wren(srio_mem_wren), 
    .srio_mem_rden(srio_mem_rden), 
    .srio_mem_addr(srio_mem_addr), 
    .srio_mem_din(srio_mem_din), 
    .srio_mem_dout(srio_mem_dout), 
    .srio_db_resp(srio_db_resp), 
    .srio_initial_busy(srio_initial_busy)
);  
 


  /*******************************************************************/
  // RIO PHY
  /*******************************************************************/


    // Incoming resets are already active-low
    assign local_reset_n = rst_n;
    assign link_reset_n  = rst_n;


   // Clocking for RIO SERIAL Phy
   srio_v5_6_clk phy_4x_ser_clk (
//      .SYS_CLKP          (sys_clkp),
//      .SYS_CLKN          (sys_clkn),
      .RST_IN            (~local_reset_n),
      .MODE_SEL          (mode_sel),
      .REFCLK            (REFCLK),
      .UCLK              (UCLK),
      .UCLK_DV4          (LNK_CLK),
      .LOCKED_OUT        (DCM_LOCK)
      );

  // Assign LOG_CLK domain to always operate at x4 UCLK rate regardless
  // of whether or not the link trains down to x1.  The PHY_CLK domain
  // will operate at the LNK_CLK rate which does depend upon the link
  // training to x1 or x4.  The LOG_CLK and PHY_CLK domains are
  // independent and consequently the LOG_CLK can be changed to operate
  // at any reasonable frequency.
  assign LOG_CLK = UCLK;
  assign PHY_CLK = LNK_CLK;

  // Reset Circuit to synchronize resets
  rio_reset #(
    .TCQ (TCQ)
  )rio_reset (
    .lnk_clk          (PHY_CLK),
    .link_reset_n     (link_reset_n),
    .port_initialized (port_initialized),
    .lnk_reset_n      (lnk_reset_n),
    .sys_reset_n      (sys_reset_n),
    .lnk_linkreset_n  (lnk_linkreset_n),
    .log_clk          (LOG_CLK),
    .phy_clk          (PHY_CLK),
    .log_reset_n      (log_reset_n),
    .phy_reset_n      (phy_reset_n)
    );


  /*******************************************************************/
  // RapidIO Design Environment Wrapper
  /*******************************************************************/

  rio_wrapper #(
    .TCQ (TCQ),
    .SRIO_VIO (SRIO_VIO)
  ) rio_de_wrapper
    (
   /**********  Clock and Reset Signals  **************************************/
   .refclk            (REFCLK),
   .uclk              (UCLK),
   .log_clk           (LOG_CLK),
   .phy_clk           (PHY_CLK),
   .dcm_lock          (DCM_LOCK),
   .pll_locked        (PLL_LOCKED),
   .sys_reset_n       (sys_reset_n),
   .lnk_linkreset_n   (lnk_linkreset_n),
   .lnk_reset_n       (lnk_reset_n),
   .log_reset_n       (log_reset_n),
   .phy_reset_n       (phy_reset_n),

   /**********  Serial Link Interface  ****************************************/
   .srio_rxn0         (srio_rxn0),
   .srio_rxp0         (srio_rxp0),
   .srio_rxn1         (srio_rxn1),
   .srio_rxp1         (srio_rxp1),
   .srio_rxn2         (srio_rxn2),
   .srio_rxp2         (srio_rxp2),
   .srio_rxn3         (srio_rxn3),
   .srio_rxp3         (srio_rxp3),
   .srio_txn0         (srio_txn0),
   .srio_txp0         (srio_txp0),
   .srio_txn1         (srio_txn1),
   .srio_txp1         (srio_txp1),
   .srio_txn2         (srio_txn2),
   .srio_txp2         (srio_txp2),
   .srio_txn3         (srio_txn3),
   .srio_txp3         (srio_txp3),

   /**********  Target Request Interface  *************************************/
   //Target Req control signals
   .treq_sof_n        (treq_sof_n),
   .treq_eof_n        (treq_eof_n),
   .treq_vld_n        (treq_vld_n),
   .treq_rdy_n        (treq_rdy_n),
   //Target Req data to the application interface
   .treq_prio         (treq_prio),
   .treq_ftype        (treq_ftype),
   .treq_dest_id      (treq_dest_id),
   .treq_src_id       (treq_src_id),
   .treq_tid          (treq_tid),
   .treq_ttype        (treq_ttype),
   .treq_addr         (treq_addr),
   .treq_byte_en_n    (treq_byte_en_n),
   .treq_byte_count   (treq_byte_count),
   .treq_data         (treq_data),
   // Doorbell/Messaging signals
   .treq_db_info      (treq_db_info),
   .treq_msg_len      (treq_msg_len),
   .treq_msg_seg      (treq_msg_seg),
   .treq_mbox         (treq_mbox),
   .treq_letter       (treq_letter),

   /**********  Target Response Interface  ************************************/
   //Target Response control signals
   .tresp_sof_n       (tresp_sof_n),
   .tresp_eof_n       (tresp_eof_n),
   .tresp_vld_n       (tresp_vld_n),
   .tresp_dsc_n       (tresp_dsc_n),
   .tresp_rdy_n       (tresp_rdy_n),
   //Target Response Signals from application interface
   .tresp_prio        (tresp_prio),
   .tresp_ftype       (tresp_ftype),
   .tresp_dest_id     (tresp_dest_id),
   .tresp_ttype       (tresp_ttype),
   .tresp_status      (tresp_status),
   .tresp_tid         (tresp_tid),
    // Set to one to force all undefined Responses to be dataless
   .tresp_no_data     (1'b1),
   .tresp_data        (tresp_data),
   // Doorbell/Messaging signals
   .tresp_msg_seg     (tresp_msg_seg),
   .tresp_mbox        (tresp_mbox),
   .tresp_letter      (tresp_letter),

   /**********  Initiator Response Interface  *********************************/
   //Initiator Response control signals
   .iresp_sof_n       (iresp_sof_n),
   .iresp_eof_n       (iresp_eof_n),
   .iresp_vld_n       (iresp_vld_n),
   .iresp_rdy_n       (iresp_rdy_n),
   .iresp_local       (iresp_local),
   //Initiator response data signals to application interface
   .iresp_prio        (iresp_prio),
   .iresp_src_id      (iresp_src_id),
   .iresp_ftype       (iresp_ftype),
   .iresp_ttype       (iresp_ttype),
   .iresp_status      (iresp_status),
   .iresp_tid         (iresp_tid),
   .iresp_dest_id     (iresp_dest_id),
   .iresp_data        (iresp_data),
   // Doorbell/Messaging signals
   .iresp_msg_seg     (iresp_msg_seg),
   .iresp_mbox        (iresp_mbox),
   .iresp_letter      (iresp_letter),

   /**********  Initiator Request Interface  **********************************/
   //Initiator Request control signals
   .ireq_sof_n        (ireq_sof_n),
   .ireq_eof_n        (ireq_eof_n),
   .ireq_vld_n        (ireq_vld_n),
   .ireq_local        (ireq_local),
   .ireq_dsc_n        (ireq_dsc_n),
   .ireq_rdy_n        (ireq_rdy_n),
   //Initiator Request data signals to application interface
   .ireq_prio         (ireq_prio),
   .ireq_ftype        (ireq_ftype),
   .ireq_tid          (ireq_tid),
   .ireq_dest_id      (ireq_dest_id),
   .ireq_hop_count    (ireq_hop_count),
   .ireq_ttype        (ireq_ttype),
   .ireq_byte_count   (ireq_byte_count),
   .ireq_byte_en_n    (ireq_byte_en_n),
   .ireq_addr         (ireq_addr),
   .ireq_data         (ireq_data),
   // Doorbell/Messaging signals
   .ireq_db_info_i    (ireq_db_info),
   .ireq_msg_len_i    (ireq_msg_len),
   .ireq_msg_seg_i    (ireq_msg_seg),
   .ireq_mbox_i       (ireq_mbox),
   .ireq_letter_i     (ireq_letter),

   /**********  SRIO Interface Signals  ***************************************/
   .lnk_mcast_req_n   (1'b1),
   .force_reinit      (force_reinit),
   .fast_train        (FAST_TRAIN_MODE),
   .lnk_mcast_ack_n   (),
   .lnk_porterr_n     (lnk_porterr_n),
   .lnk_pna_n         (),
   .resp_time_out     (resp_timeout),
   .lnk_mce_dec_n     (),

   .h_error         (h_error),
   .tc_error        (tc_error),
   /*********  ChipScope signals  *********************************************/
   .control1        (control1),
   .control2        (control2),

   /**********  Configuration and Status Signals  *****************************/
   .srio_cfg          (srio_cfg),
   .log_io_cfg        (log_io_cfg),
   .buffer_cfg        (buffer_cfg),
   .deviceid          (deviceid),
   .port_initialized  (lnk_porterr_n),
   .mode_sel          (mode_sel),
   .lnk_rrdy_n        (lnk_rrdy_n),
   .lnk_trdy_n        (lnk_trdy_n)
   );

endmodule
