//*****************************************************************************
// (c) Copyright 2008 2009 Xilinx, Inc. All rights reserved.
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
//
//*****************************************************************************
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor             : Xilinx
// \   \   \/     Version            : 3.8
//  \   \         Application        : MIG
//  /   /         Filename           : example_top.v
// /___/   /\     Date Last Modified : $Date: 2011/05/27 15:51:52 $
// \   \  /  \    Date Created       : Wed Nov 19 2008
//  \___\/\___\
//
// Device           : Virtex-6
// Design Name      : QDRII+ SRAM
// Purpose          :
//   Top-level module. This module serves both as an example,
//   and allows the user to synthesize a self-contained design,
//   which they can use to test their hardware.
//   In addition to the memory controller, the module instantiates:
//     1. Clock generation/distribution, reset logic
//     2. IDELAY control block
//     3. Synthesizable testbench - used to model user's backend logic
//
// Reference        :
// Revision History :
//*****************************************************************************

`timescale 1ps/1ps

(* X_CORE_INFO = "mig_v3_8_qdriip_V6, Coregen 13.2" , CORE_GENERATION_INFO = "qdriip_V6,mig_v3_8,{LANGUAGE=Verilog, SYNTHESIS_TOOL=ISE, AXI_ENABLE=0, LEVEL=CONTROLLER, NO_OF_CONTROLLERS=2, C0_INTERFACE_TYPE=QDR_II+_SRAM, CLK_F0_PERIOD=8000, C0_MEMORY_TYPE=components, C0_MEMORY_PART=cy7c1513kv18-250bzxi, C0_DQ_WIDTH=36, C0_NUM_DEVICES=2, C0_FIXED_LATENCY_MODE=0, C0_PHY_LATENCY=0, REFCLK200_FREQ=200, MMCM_ADV_BANDWIDTH_F0=OPTIMIZED, CLK_F0FBOUT_MULT_F=5, CLK_F0OUT_DIVIDE=5, C0_DEBUG_PORT=OFF, C0_IODELAY_HP_MODE=ON, C0_INTERNAL_VREF=0, C0_DCI_INOUTS=1, INPUT_CLK_TYPE=SINGLE_ENDED,C1_INTERFACE_TYPE=QDR_II+_SRAM, CLK_F0_PERIOD=8000, C1_MEMORY_TYPE=components, C1_MEMORY_PART=cy7c1513kv18-250bzxi, C1_DQ_WIDTH=36, C1_NUM_DEVICES=2, C1_FIXED_LATENCY_MODE=0, C1_PHY_LATENCY=0, REFCLK200_FREQ=200, MMCM_ADV_BANDWIDTH_F0=OPTIMIZED, CLK_F0FBOUT_MULT_F=5, CLK_F0OUT_DIVIDE=5, C1_DEBUG_PORT=OFF, C1_IODELAY_HP_MODE=ON, C1_INTERNAL_VREF=0, C1_DCI_INOUTS=1, INPUT_CLK_TYPE=SINGLE_ENDED}" *)
module qdr_top #
  (
  parameter REFCLK200_FREQ        = 200,        //Iodelay Clock Frequency
  parameter IODELAY200_GRP             = "IODELAY_MIG0",
                                       // It is associated to a set of IODELAYs with
                                       // an IDELAYCTRL that have same IODELAY CONTROLLER
                                       // clock frequency.
  parameter MMCM_ADV_BANDWIDTH_F0      = "OPTIMIZED",
                                       // MMCM programming algorithm 
  parameter CLK_F0FBOUT_MULT_F    = 5,           // write PLL VCO multiplier
  parameter CLK_F0OUT_DIVIDE      = 5,           // VCO output divisor for fast (memory) clocks
  parameter DIVCLK_F0_DIVIDE      = 1,           // write PLL VCO divisor
  parameter CLK_F0_PERIOD         = 8000,      //Double the Memory Clk Period (in ps)
  parameter C0_DEBUG_PORT         = "OFF",       // Enable debug port
  parameter C0_CLK_STABLE         = 2048,        //Cycles till CQ/CQ# is stable
  parameter C0_ADDR_WIDTH         = 20,          //Address Width
  parameter C0_DATA_WIDTH         = 36,          //Data Width
  parameter C0_BW_WIDTH           = 4,//Byte Write Width
  parameter C0_BURST_LEN          = 4,           //Burst Length
  parameter C0_NUM_DEVICES        = 2,           //No. of Connected Memories
  parameter C0_FIXED_LATENCY_MODE = 0,           //Enable Fixed Latency
  parameter C0_PHY_LATENCY        = 0,            //Expected Latency
  parameter C0_SIM_CAL_OPTION     = "NONE",      // Skip various calibration steps
  parameter C0_SIM_INIT_OPTION    = "NONE",      //Simulation only. "NONE", "SIM_MODE"
  parameter C0_PHASE_DETECT       = "ON",       //Enable Phase detector
  parameter C0_IBUF_LPWR_MODE     = "OFF",       // Input buffer low power mode
  parameter C0_IODELAY_HP_MODE    = "ON",        // IODELAY High Performance Mode
  parameter C0_TCQ                = 100,
                                                   //Simulation Register Delay
  
  parameter C1_DEBUG_PORT         = "OFF",       // Enable debug port
  parameter C1_CLK_STABLE         = 2048,        //Cycles till CQ/CQ# is stable
  parameter C1_ADDR_WIDTH         = 20,          //Address Width
  parameter C1_DATA_WIDTH         = 36,          //Data Width
  parameter C1_BW_WIDTH           = 4,//Byte Write Width
  parameter C1_BURST_LEN          = 4,           //Burst Length
  parameter C1_NUM_DEVICES        = 2,           //No. of Connected Memories
  parameter C1_FIXED_LATENCY_MODE = 0,           //Enable Fixed Latency
  parameter C1_PHY_LATENCY        = 0,            //Expected Latency
  parameter C1_SIM_CAL_OPTION     = "NONE",      // Skip various calibration steps
  parameter C1_SIM_INIT_OPTION    = "NONE",      //Simulation only. "NONE", "SIM_MODE"
  parameter C1_PHASE_DETECT       = "ON",       //Enable Phase detector
  parameter C1_IBUF_LPWR_MODE     = "OFF",       // Input buffer low power mode
  parameter C1_IODELAY_HP_MODE    = "ON",        // IODELAY High Performance Mode
  parameter C1_TCQ                = 100,
                                                   //Simulation Register Delay
  
  parameter INPUT_CLK_TYPE     = "SINGLE_ENDED",// # of clock type
  parameter RST_ACT_LOW        = 1           //Active Low Reset
  )
  (

  input                             sys_clk_f0,    //single ended system clocks
//  input                             clk200_ref,     //single ended iodelayctrl clk
  input       [C0_NUM_DEVICES-1:0]     c0_qdriip_cq_p,     //Memory Interface
  input       [C0_NUM_DEVICES-1:0]     c0_qdriip_cq_n,
  input       [C0_NUM_DEVICES-1:0]     c0_qdriip_qvld,
  input       [C0_DATA_WIDTH-1:0]      c0_qdriip_q,
  output wire [C0_NUM_DEVICES-1:0]     c0_qdriip_k_p,
  output wire [C0_NUM_DEVICES-1:0]     c0_qdriip_k_n,
  output wire [C0_DATA_WIDTH-1:0]      c0_qdriip_d,
  output wire [C0_ADDR_WIDTH-1:0]      c0_qdriip_sa,
  output wire                       c0_qdriip_w_n,
  output wire                       c0_qdriip_r_n,
  output wire [C0_BW_WIDTH-1:0]        c0_qdriip_bw_n,

  output wire                       c0_compare_error,//Status signals
  output wire                       c0_qdriip_dll_off_n,
  output wire                       c0_cal_done,

  input       [C1_NUM_DEVICES-1:0]     c1_qdriip_cq_p,     //Memory Interface
  input       [C1_NUM_DEVICES-1:0]     c1_qdriip_cq_n,
  input       [C1_NUM_DEVICES-1:0]     c1_qdriip_qvld,
  input       [C1_DATA_WIDTH-1:0]      c1_qdriip_q,
  output wire [C1_NUM_DEVICES-1:0]     c1_qdriip_k_p,
  output wire [C1_NUM_DEVICES-1:0]     c1_qdriip_k_n,
  output wire [C1_DATA_WIDTH-1:0]      c1_qdriip_d,
  output wire [C1_ADDR_WIDTH-1:0]      c1_qdriip_sa,
  output wire                       c1_qdriip_w_n,
  output wire                       c1_qdriip_r_n,
  output wire [C1_BW_WIDTH-1:0]        c1_qdriip_bw_n,

  output wire                       c1_compare_error,//Status signals
  output wire                       c1_qdriip_dll_off_n,
  output wire                       c1_cal_done,
  input                             sys_rst,  //system reset
  input										iodelay200_ctrl_rdy
  );

  // clog2 function - ceiling of log base 2
  function integer clog2;
    input [31:0] width;
    integer ii;
    begin
      ii = width;
      if (ii == 0) begin
        clog2 = 1;
      end else begin
        for(clog2=0; ii>0; clog2=clog2+1)
          ii = ii >> 1;
      end
    end
  endfunction


  // Number of taps in target IDELAY
  localparam integer C0_DEVICE_TAPS = 32;

  // Number of bits needed to represent DEVICE_TAPS
  localparam integer C0_TAP_BITS = clog2(C0_DEVICE_TAPS - 1);
  localparam integer C0_CQ_BITS  = clog2(C0_NUM_DEVICES - 1); // number of bits to represent number of cq/cq#'s
  localparam integer C0_Q_BITS   = clog2(C0_DATA_WIDTH - 1);  // number of bits needed to represent number of q's

  // Number of taps in target IDELAY
  localparam integer C1_DEVICE_TAPS = 32;

  // Number of bits needed to represent DEVICE_TAPS
  localparam integer C1_TAP_BITS = clog2(C1_DEVICE_TAPS - 1);
  localparam integer C1_CQ_BITS  = clog2(C1_NUM_DEVICES - 1); // number of bits to represent number of cq/cq#'s
  localparam integer C1_Q_BITS   = clog2(C1_DATA_WIDTH - 1);  // number of bits needed to represent number of q's


  wire                                clk200_ref_p;
  wire                                clk200_ref_n;
  wire                                sys_clk_f0_p;
  wire                                sys_clk_f0_n;
  wire                                mmcm_clk_f0;
  wire                            iodelay200_ctrl_rdy;

  wire                            c0_clk;
  wire                            c0_rst_clk;
  wire                            c0_clk_mem;
  wire                            c0_clk_wr;
  wire                            c0_mmcm_locked;
  wire                            c0_user_wr_cmd0;
  wire                            c0_user_wr_cmd1;
  wire [C0_ADDR_WIDTH-1:0]           c0_user_wr_addr0;
  wire [C0_ADDR_WIDTH-1:0]           c0_user_wr_addr1;
  wire                            c0_user_rd_cmd0;
  wire                            c0_user_rd_cmd1;
  wire [C0_ADDR_WIDTH-1:0]           c0_user_rd_addr0;
  wire [C0_ADDR_WIDTH-1:0]           c0_user_rd_addr1;
  wire [C0_BURST_LEN*C0_DATA_WIDTH-1:0] c0_user_wr_data0;
  wire [C0_DATA_WIDTH*2-1:0]         c0_user_wr_data1;
  wire [C0_BURST_LEN*C0_BW_WIDTH-1:0]   c0_user_wr_bw_n0;
  wire [C0_BW_WIDTH*2-1:0]           c0_user_wr_bw_n1;
  wire                            c0_user_cal_done;
  wire                            c0_user_rd_valid0;
  wire                            c0_user_rd_valid1;
  wire [C0_BURST_LEN*C0_DATA_WIDTH-1:0] c0_user_rd_data0;
  wire [C0_DATA_WIDTH*2-1:0]         c0_user_rd_data1;


  wire                            c1_clk;
  wire                            c1_rst_clk;
  wire                            c1_clk_mem;
  wire                            c1_clk_wr;
  wire                            c1_mmcm_locked;
  wire                            c1_user_wr_cmd0;
  wire                            c1_user_wr_cmd1;
  wire [C1_ADDR_WIDTH-1:0]           c1_user_wr_addr0;
  wire [C1_ADDR_WIDTH-1:0]           c1_user_wr_addr1;
  wire                            c1_user_rd_cmd0;
  wire                            c1_user_rd_cmd1;
  wire [C1_ADDR_WIDTH-1:0]           c1_user_rd_addr0;
  wire [C1_ADDR_WIDTH-1:0]           c1_user_rd_addr1;
  wire [C1_BURST_LEN*C1_DATA_WIDTH-1:0] c1_user_wr_data0;
  wire [C1_DATA_WIDTH*2-1:0]         c1_user_wr_data1;
  wire [C1_BURST_LEN*C1_BW_WIDTH-1:0]   c1_user_wr_bw_n0;
  wire [C1_BW_WIDTH*2-1:0]           c1_user_wr_bw_n1;
  wire                            c1_user_cal_done;
  wire                            c1_user_rd_valid0;
  wire                            c1_user_rd_valid1;
  wire [C1_BURST_LEN*C1_DATA_WIDTH-1:0] c1_user_rd_data0;
  wire [C1_DATA_WIDTH*2-1:0]         c1_user_rd_data1;


  wire [1:0]                        c0_dbg_phy_wr_cmd_n;
  wire [C0_ADDR_WIDTH*C0_BURST_LEN-1:0]   c0_dbg_phy_addr;
  wire [1:0]                        c0_dbg_phy_rd_cmd_n;
  wire [C0_DATA_WIDTH*C0_BURST_LEN-1:0]   c0_dbg_phy_wr_data;
  wire                              c0_dbg_inc_cq_all;         // increment all CQs
  wire                              c0_dbg_inc_cqn_all;        // increment all CQ#s
  wire                              c0_dbg_inc_q_all;          // increment all Qs
  wire                              c0_dbg_dec_cq_all;         // decrement all CQs
  wire                              c0_dbg_dec_cqn_all;        // decrement all CQ#s
  wire                              c0_dbg_dec_q_all;          // decrement all Qs
  wire                              c0_dbg_inc_cq;             // increment selected CQ
  wire                              c0_dbg_inc_cqn;            // increment selected CQ#
  wire                              c0_dbg_inc_q;              // increment selected Q
  wire                              c0_dbg_dec_cq;             // decrement selected CQ
  wire                              c0_dbg_dec_cqn;            // decrement selected CQ#
  wire                              c0_dbg_dec_q;              // decrement selected Q
  wire [C0_CQ_BITS-1:0]                c0_dbg_sel_cq;             // selected CQ bit
  wire [C0_CQ_BITS-1:0]                c0_dbg_sel_cqn;            // selected CQ# bit
  wire [C0_Q_BITS-1:0]                 c0_dbg_sel_q;              // selected Q bit
  wire [C0_TAP_BITS*C0_NUM_DEVICES-1:0]   c0_dbg_cq_tapcnt;          // tap count for each cq
  wire [C0_TAP_BITS*C0_NUM_DEVICES-1:0]   c0_dbg_cqn_tapcnt;         // tap count for each cq#
  wire [C0_TAP_BITS*C0_DATA_WIDTH-1:0]    c0_dbg_q_tapcnt;           // tap count for each q
  wire [C0_NUM_DEVICES-1:0]            c0_dbg_clk_rd;             // clk_rd in each domain
  wire [255:0]                      c0_dbg_rd_stage1_cal;      // stage 1 cal debug
  wire [127:0]                      c0_dbg_stage2_cal;         // stage 2 cal debug
  wire [C0_CQ_BITS-1:0]                c0_dbg_cq_num;             // current cq/cq# being calibrated
  wire [C0_Q_BITS-1:0]                 c0_dbg_q_bit;              // current q being calibrated
  wire [4:0]                        c0_dbg_valid_lat;          // latency of the system
  wire [C0_NUM_DEVICES-1:0]            c0_dbg_phase;              // data align phase indication
  wire [C0_NUM_DEVICES-1:0]            c0_dbg_inc_latency;        // increase latency for dcb
  wire [5*C0_NUM_DEVICES-1:0]          c0_dbg_dcb_wr_ptr;         // dcb write pointers
  wire [5*C0_NUM_DEVICES-1:0]          c0_dbg_dcb_rd_ptr;         // dcb read pointers
  wire [4*C0_DATA_WIDTH-1:0]           c0_dbg_dcb_din;            // dcb data in
  wire [4*C0_DATA_WIDTH-1:0]           c0_dbg_dcb_dout;           // dcb data out
  wire [C0_NUM_DEVICES-1:0]            c0_dbg_error_max_latency;  // stage 2 cal max latency error
  wire                              c0_dbg_error_adj_latency;  // stage 2 cal latency adjustment error
  wire [C0_NUM_DEVICES-1:0]            c0_dbg_pd_calib_start;     // indicates phase detector to start
  wire [C0_NUM_DEVICES-1:0]            c0_dbg_pd_calib_done;      // indicates phase detector is complete
  wire [7:0]                        c0_dbg_phy_status;         // phy status
  wire                              c0_cmp_err;
  wire                              c0_dbg_clear_error;
  wire                              c0_dbg_pd_off;
  wire [C0_DATA_WIDTH-1:0]             c0_dbg_align_rd0;
  wire [C0_DATA_WIDTH-1:0]             c0_dbg_align_rd1;
  wire [C0_DATA_WIDTH-1:0]             c0_dbg_align_fd0;
  wire [C0_DATA_WIDTH-1:0]             c0_dbg_align_fd1;

  wire [1:0]                        c1_dbg_phy_wr_cmd_n;
  wire [C1_ADDR_WIDTH*C1_BURST_LEN-1:0]   c1_dbg_phy_addr;
  wire [1:0]                        c1_dbg_phy_rd_cmd_n;
  wire [C1_DATA_WIDTH*C1_BURST_LEN-1:0]   c1_dbg_phy_wr_data;
  wire                              c1_dbg_inc_cq_all;         // increment all CQs
  wire                              c1_dbg_inc_cqn_all;        // increment all CQ#s
  wire                              c1_dbg_inc_q_all;          // increment all Qs
  wire                              c1_dbg_dec_cq_all;         // decrement all CQs
  wire                              c1_dbg_dec_cqn_all;        // decrement all CQ#s
  wire                              c1_dbg_dec_q_all;          // decrement all Qs
  wire                              c1_dbg_inc_cq;             // increment selected CQ
  wire                              c1_dbg_inc_cqn;            // increment selected CQ#
  wire                              c1_dbg_inc_q;              // increment selected Q
  wire                              c1_dbg_dec_cq;             // decrement selected CQ
  wire                              c1_dbg_dec_cqn;            // decrement selected CQ#
  wire                              c1_dbg_dec_q;              // decrement selected Q
  wire [C1_CQ_BITS-1:0]                c1_dbg_sel_cq;             // selected CQ bit
  wire [C1_CQ_BITS-1:0]                c1_dbg_sel_cqn;            // selected CQ# bit
  wire [C1_Q_BITS-1:0]                 c1_dbg_sel_q;              // selected Q bit
  wire [C1_TAP_BITS*C1_NUM_DEVICES-1:0]   c1_dbg_cq_tapcnt;          // tap count for each cq
  wire [C1_TAP_BITS*C1_NUM_DEVICES-1:0]   c1_dbg_cqn_tapcnt;         // tap count for each cq#
  wire [C1_TAP_BITS*C1_DATA_WIDTH-1:0]    c1_dbg_q_tapcnt;           // tap count for each q
  wire [C1_NUM_DEVICES-1:0]            c1_dbg_clk_rd;             // clk_rd in each domain
  wire [255:0]                      c1_dbg_rd_stage1_cal;      // stage 1 cal debug
  wire [127:0]                      c1_dbg_stage2_cal;         // stage 2 cal debug
  wire [C1_CQ_BITS-1:0]                c1_dbg_cq_num;             // current cq/cq# being calibrated
  wire [C1_Q_BITS-1:0]                 c1_dbg_q_bit;              // current q being calibrated
  wire [4:0]                        c1_dbg_valid_lat;          // latency of the system
  wire [C1_NUM_DEVICES-1:0]            c1_dbg_phase;              // data align phase indication
  wire [C1_NUM_DEVICES-1:0]            c1_dbg_inc_latency;        // increase latency for dcb
  wire [5*C1_NUM_DEVICES-1:0]          c1_dbg_dcb_wr_ptr;         // dcb write pointers
  wire [5*C1_NUM_DEVICES-1:0]          c1_dbg_dcb_rd_ptr;         // dcb read pointers
  wire [4*C1_DATA_WIDTH-1:0]           c1_dbg_dcb_din;            // dcb data in
  wire [4*C1_DATA_WIDTH-1:0]           c1_dbg_dcb_dout;           // dcb data out
  wire [C1_NUM_DEVICES-1:0]            c1_dbg_error_max_latency;  // stage 2 cal max latency error
  wire                              c1_dbg_error_adj_latency;  // stage 2 cal latency adjustment error
  wire [C1_NUM_DEVICES-1:0]            c1_dbg_pd_calib_start;     // indicates phase detector to start
  wire [C1_NUM_DEVICES-1:0]            c1_dbg_pd_calib_done;      // indicates phase detector is complete
  wire [7:0]                        c1_dbg_phy_status;         // phy status
  wire                              c1_cmp_err;
  wire                              c1_dbg_clear_error;
  wire                              c1_dbg_pd_off;
  wire [C1_DATA_WIDTH-1:0]             c1_dbg_align_rd0;
  wire [C1_DATA_WIDTH-1:0]             c1_dbg_align_rd1;
  wire [C1_DATA_WIDTH-1:0]             c1_dbg_align_fd0;
  wire [C1_DATA_WIDTH-1:0]             c1_dbg_align_fd1;
  wire                              qdriip_cs0_clk;
  wire [35:0]                       qdriip_cs0_control;
  wire [255:0]                      qdriip_cs0_data;
  wire [7:0]                        qdriip_cs0_trig;

  wire                              qdriip_cs1_clk;
  wire [35:0]                       qdriip_cs1_control;
  wire [255:0]                      qdriip_cs1_data;
  wire [7:0]                        qdriip_cs1_trig;

  wire [255:0]                      qdriip_cs2_async_in;
  wire                              qdriip_cs2_clk;
  wire [35:0]                       qdriip_cs2_control;
  wire [35:0]                       qdriip_cs2_sync_out;

  wire [15:0]                       qdriip_trigger;


  assign clk200_ref_p = 1'b0;
  assign clk200_ref_n = 1'b0;
  assign sys_clk_f0_p = 1'b0;
  assign sys_clk_f0_p = 1'b0;



//  iodelay_ctrl #(
//  .IODELAY_GRP        (IODELAY200_GRP),
//  .INPUT_CLK_TYPE     (INPUT_CLK_TYPE),
//  .RST_ACT_LOW        (RST_ACT_LOW),
//  .TCQ                (C0_TCQ)
//  ) u200_iodelay_ctrl (
//    .sys_rst          (sys_rst),
//    .clk_ref_p        ( ),
//    .clk_ref_n        (clk200_ref_n),
//    .clk_ref          (clk200_ref),
//    .iodelay_ctrl_rdy (iodelay200_ctrl_rdy)
//  );
//  clk_ibuf #
//    (
//     .INPUT_CLK_TYPE (INPUT_CLK_TYPE)
//     )
//    u_clk_f0_ibuf
//      (
//       .sys_clk_p         (sys_clk_f0_p),
//       .sys_clk_n         (sys_clk_f0_n),
//       .sys_clk           (sys_clk_f0),
//       .mmcm_clk          (mmcm_clk_f0)
//       );


  BUFG qdr_bufg_inst
  (
    .I(sys_clk_f0),
	 .O(mmcm_clk_f0)
  );
		

  qdr_rld_infrastructure #(
    .RST_ACT_LOW        (RST_ACT_LOW),
    .CLK_PERIOD         (CLK_F0_PERIOD),
    .MMCM_ADV_BANDWIDTH (MMCM_ADV_BANDWIDTH_F0),
    .CLKFBOUT_MULT_F    (CLK_F0FBOUT_MULT_F),
    .CLKOUT_DIVIDE      (CLK_F0OUT_DIVIDE),
    .DIVCLK_DIVIDE      (DIVCLK_F0_DIVIDE)
  ) c0_u_infrastructure (
    .mmcm_clk    (mmcm_clk_f0),
    .sys_rst     (sys_rst),
    .clk0        (c0_clk_mem),
    .clkdiv0     (c0_clk),
    .clk_wr      (c0_clk_wr),
    .mmcm_locked (c0_mmcm_locked)
  );

  qdr_rld_infrastructure #(
    .RST_ACT_LOW        (RST_ACT_LOW),
    .CLK_PERIOD         (CLK_F0_PERIOD),
    .MMCM_ADV_BANDWIDTH (MMCM_ADV_BANDWIDTH_F0),
    .CLKFBOUT_MULT_F    (CLK_F0FBOUT_MULT_F),
    .CLKOUT_DIVIDE      (CLK_F0OUT_DIVIDE),
    .DIVCLK_DIVIDE      (DIVCLK_F0_DIVIDE)
  ) c1_u_infrastructure (
    .mmcm_clk    (mmcm_clk_f0),
    .sys_rst     (sys_rst),
    .clk0        (c1_clk_mem),
    .clkdiv0     (c1_clk),
    .clk_wr      (c1_clk_wr),
    .mmcm_locked (c1_mmcm_locked)
  );


  //Instantiate the User Interface Module (PHY)
  user_top #(
    .ADDR_WIDTH         (C0_ADDR_WIDTH),
    .DATA_WIDTH         (C0_DATA_WIDTH),
    .BW_WIDTH           (C0_BW_WIDTH),
    .BURST_LEN          (C0_BURST_LEN),
    .CLK_PERIOD         (CLK_F0_PERIOD),
    .REFCLK_FREQ        (REFCLK200_FREQ),
    .NUM_DEVICES        (C0_NUM_DEVICES),
    .IODELAY_GRP        (IODELAY200_GRP),
    .FIXED_LATENCY_MODE (C0_FIXED_LATENCY_MODE),
    .PHY_LATENCY        (C0_PHY_LATENCY),
    .CLK_STABLE         (C0_CLK_STABLE),
    .MEM_TYPE           ("QDR2PLUS"),
    .DEVICE_ARCH        ("virtex6"),
    .RST_ACT_LOW        (RST_ACT_LOW),
    .PHASE_DETECT       (C0_PHASE_DETECT),
    .SIM_CAL_OPTION     (C0_SIM_CAL_OPTION),
    .SIM_INIT_OPTION    (C0_SIM_INIT_OPTION),
    .IBUF_LPWR_MODE     (C0_IBUF_LPWR_MODE),
    .IODELAY_HP_MODE    (C0_IODELAY_HP_MODE),
    .CQ_BITS            (C0_CQ_BITS),
    .Q_BITS             (C0_Q_BITS),
    .DEVICE_TAPS        (C0_DEVICE_TAPS),
    .TAP_BITS           (C0_TAP_BITS),
    .DEBUG_PORT         (C0_DEBUG_PORT),
    .TCQ                (C0_TCQ)
  ) c0_u_user_top (
    .clk                    (c0_clk),
    .rst_clk                (c0_rst_clk),
    .sys_rst                (sys_rst),
    .clk_mem                (c0_clk_mem),
    .clk_wr                 (c0_clk_wr),
    .mmcm_locked            (c0_mmcm_locked),
    .iodelay_ctrl_rdy       (iodelay200_ctrl_rdy),
    .user_wr_cmd0           (c0_user_wr_cmd0),
    .user_wr_cmd1           (c0_user_wr_cmd1),
    .user_wr_addr0          (c0_user_wr_addr0),
    .user_wr_addr1          (c0_user_wr_addr1),
    .user_rd_cmd0           (c0_user_rd_cmd0),
    .user_rd_cmd1           (c0_user_rd_cmd1),
    .user_rd_addr0          (c0_user_rd_addr0),
    .user_rd_addr1          (c0_user_rd_addr1),
    .user_wr_data0          (c0_user_wr_data0),
    .user_wr_data1          (c0_user_wr_data1),
    .user_wr_bw_n0          (c0_user_wr_bw_n0),
    .user_wr_bw_n1          (c0_user_wr_bw_n1),
    .user_cal_done          (c0_cal_done),
    .user_rd_valid0         (c0_user_rd_valid0),
    .user_rd_valid1         (c0_user_rd_valid1),
    .user_rd_data0          (c0_user_rd_data0),
    .user_rd_data1          (c0_user_rd_data1),
    .qdr_dll_off_n          (c0_qdriip_dll_off_n),
    .qdr_k_p                (c0_qdriip_k_p),
    .qdr_k_n                (c0_qdriip_k_n),
    .qdr_sa                 (c0_qdriip_sa),
    .qdr_w_n                (c0_qdriip_w_n),
    .qdr_r_n                (c0_qdriip_r_n),
    .qdr_bw_n               (c0_qdriip_bw_n),
    .qdr_d                  (c0_qdriip_d),
    .qdr_q                  (c0_qdriip_q),
    .qdr_qvld               (c0_qdriip_qvld),
    .qdr_cq_p               (c0_qdriip_cq_p),
    .qdr_cq_n               (c0_qdriip_cq_n),
    .dbg_phy_wr_cmd_n       (c0_dbg_phy_wr_cmd_n),
    .dbg_phy_addr           (c0_dbg_phy_addr),
    .dbg_phy_rd_cmd_n       (c0_dbg_phy_rd_cmd_n),
    .dbg_phy_wr_data        (c0_dbg_phy_wr_data),
    .dbg_inc_cq_all         (c0_dbg_inc_cq_all),
    .dbg_inc_cqn_all        (c0_dbg_inc_cqn_all),
    .dbg_inc_q_all          (c0_dbg_inc_q_all),
    .dbg_dec_cq_all         (c0_dbg_dec_cq_all),
    .dbg_dec_cqn_all        (c0_dbg_dec_cqn_all),
    .dbg_dec_q_all          (c0_dbg_dec_q_all),
    .dbg_inc_cq             (c0_dbg_inc_cq),
    .dbg_inc_cqn            (c0_dbg_inc_cqn),
    .dbg_inc_q              (c0_dbg_inc_q),
    .dbg_dec_cq             (c0_dbg_dec_cq),
    .dbg_dec_cqn            (c0_dbg_dec_cqn),
    .dbg_dec_q              (c0_dbg_dec_q),
    .dbg_sel_cq             (c0_dbg_sel_cq),
    .dbg_sel_cqn            (c0_dbg_sel_cqn),
    .dbg_sel_q              (c0_dbg_sel_q),
    .dbg_cq_tapcnt          (c0_dbg_cq_tapcnt),
    .dbg_cqn_tapcnt         (c0_dbg_cqn_tapcnt),
    .dbg_q_tapcnt           (c0_dbg_q_tapcnt),
    .dbg_clk_rd             (c0_dbg_clk_rd),
    .dbg_rd_stage1_cal      (c0_dbg_rd_stage1_cal),
    .dbg_stage2_cal         (c0_dbg_stage2_cal),
    .dbg_cq_num             (c0_dbg_cq_num),
    .dbg_q_bit              (c0_dbg_q_bit),
    .dbg_valid_lat          (c0_dbg_valid_lat),
    .dbg_phase              (c0_dbg_phase),
    .dbg_inc_latency        (c0_dbg_inc_latency),
    .dbg_dcb_wr_ptr         (c0_dbg_dcb_wr_ptr),
    .dbg_dcb_rd_ptr         (c0_dbg_dcb_rd_ptr),
    .dbg_dcb_din            (c0_dbg_dcb_din),
    .dbg_dcb_dout           (c0_dbg_dcb_dout),
    .dbg_error_max_latency  (c0_dbg_error_max_latency),
    .dbg_error_adj_latency  (c0_dbg_error_adj_latency),
    .dbg_pd_calib_start     (c0_dbg_pd_calib_start),
    .dbg_pd_calib_done      (c0_dbg_pd_calib_done),
    .dbg_pd_off             (c0_dbg_pd_off),
    .dbg_phy_status         (c0_dbg_phy_status),
    .dbg_align_rd0          (c0_dbg_align_rd0),
    .dbg_align_rd1          (c0_dbg_align_rd1),
    .dbg_align_fd0          (c0_dbg_align_fd0),
    .dbg_align_fd1          (c0_dbg_align_fd1)
  );

  //Instantiate the User Interface Module (PHY)
  user_top #(
    .ADDR_WIDTH         (C1_ADDR_WIDTH),
    .DATA_WIDTH         (C1_DATA_WIDTH),
    .BW_WIDTH           (C1_BW_WIDTH),
    .BURST_LEN          (C1_BURST_LEN),
    .CLK_PERIOD         (CLK_F0_PERIOD),
    .REFCLK_FREQ        (REFCLK200_FREQ),
    .NUM_DEVICES        (C1_NUM_DEVICES),
    .IODELAY_GRP        (IODELAY200_GRP),
    .FIXED_LATENCY_MODE (C1_FIXED_LATENCY_MODE),
    .PHY_LATENCY        (C1_PHY_LATENCY),
    .CLK_STABLE         (C1_CLK_STABLE),
    .MEM_TYPE           ("QDR2PLUS"),
    .DEVICE_ARCH        ("virtex6"),
    .RST_ACT_LOW        (RST_ACT_LOW),
    .PHASE_DETECT       (C1_PHASE_DETECT),
    .SIM_CAL_OPTION     (C1_SIM_CAL_OPTION),
    .SIM_INIT_OPTION    (C1_SIM_INIT_OPTION),
    .IBUF_LPWR_MODE     (C1_IBUF_LPWR_MODE),
    .IODELAY_HP_MODE    (C1_IODELAY_HP_MODE),
    .CQ_BITS            (C1_CQ_BITS),
    .Q_BITS             (C1_Q_BITS),
    .DEVICE_TAPS        (C1_DEVICE_TAPS),
    .TAP_BITS           (C1_TAP_BITS),
    .DEBUG_PORT         (C1_DEBUG_PORT),
    .TCQ                (C1_TCQ)
  ) c1_u_user_top (
    .clk                    (c1_clk),
    .rst_clk                (c1_rst_clk),
    .sys_rst                (sys_rst),
    .clk_mem                (c1_clk_mem),
    .clk_wr                 (c1_clk_wr),
    .mmcm_locked            (c1_mmcm_locked),
    .iodelay_ctrl_rdy       (iodelay200_ctrl_rdy),
    .user_wr_cmd0           (c1_user_wr_cmd0),
    .user_wr_cmd1           (c1_user_wr_cmd1),
    .user_wr_addr0          (c1_user_wr_addr0),
    .user_wr_addr1          (c1_user_wr_addr1),
    .user_rd_cmd0           (c1_user_rd_cmd0),
    .user_rd_cmd1           (c1_user_rd_cmd1),
    .user_rd_addr0          (c1_user_rd_addr0),
    .user_rd_addr1          (c1_user_rd_addr1),
    .user_wr_data0          (c1_user_wr_data0),
    .user_wr_data1          (c1_user_wr_data1),
    .user_wr_bw_n0          (c1_user_wr_bw_n0),
    .user_wr_bw_n1          (c1_user_wr_bw_n1),
    .user_cal_done          (c1_cal_done),
    .user_rd_valid0         (c1_user_rd_valid0),
    .user_rd_valid1         (c1_user_rd_valid1),
    .user_rd_data0          (c1_user_rd_data0),
    .user_rd_data1          (c1_user_rd_data1),
    .qdr_dll_off_n          (c1_qdriip_dll_off_n),
    .qdr_k_p                (c1_qdriip_k_p),
    .qdr_k_n                (c1_qdriip_k_n),
    .qdr_sa                 (c1_qdriip_sa),
    .qdr_w_n                (c1_qdriip_w_n),
    .qdr_r_n                (c1_qdriip_r_n),
    .qdr_bw_n               (c1_qdriip_bw_n),
    .qdr_d                  (c1_qdriip_d),
    .qdr_q                  (c1_qdriip_q),
    .qdr_qvld               (c1_qdriip_qvld),
    .qdr_cq_p               (c1_qdriip_cq_p),
    .qdr_cq_n               (c1_qdriip_cq_n),
    .dbg_phy_wr_cmd_n       (c1_dbg_phy_wr_cmd_n),
    .dbg_phy_addr           (c1_dbg_phy_addr),
    .dbg_phy_rd_cmd_n       (c1_dbg_phy_rd_cmd_n),
    .dbg_phy_wr_data        (c1_dbg_phy_wr_data),
    .dbg_inc_cq_all         (c1_dbg_inc_cq_all),
    .dbg_inc_cqn_all        (c1_dbg_inc_cqn_all),
    .dbg_inc_q_all          (c1_dbg_inc_q_all),
    .dbg_dec_cq_all         (c1_dbg_dec_cq_all),
    .dbg_dec_cqn_all        (c1_dbg_dec_cqn_all),
    .dbg_dec_q_all          (c1_dbg_dec_q_all),
    .dbg_inc_cq             (c1_dbg_inc_cq),
    .dbg_inc_cqn            (c1_dbg_inc_cqn),
    .dbg_inc_q              (c1_dbg_inc_q),
    .dbg_dec_cq             (c1_dbg_dec_cq),
    .dbg_dec_cqn            (c1_dbg_dec_cqn),
    .dbg_dec_q              (c1_dbg_dec_q),
    .dbg_sel_cq             (c1_dbg_sel_cq),
    .dbg_sel_cqn            (c1_dbg_sel_cqn),
    .dbg_sel_q              (c1_dbg_sel_q),
    .dbg_cq_tapcnt          (c1_dbg_cq_tapcnt),
    .dbg_cqn_tapcnt         (c1_dbg_cqn_tapcnt),
    .dbg_q_tapcnt           (c1_dbg_q_tapcnt),
    .dbg_clk_rd             (c1_dbg_clk_rd),
    .dbg_rd_stage1_cal      (c1_dbg_rd_stage1_cal),
    .dbg_stage2_cal         (c1_dbg_stage2_cal),
    .dbg_cq_num             (c1_dbg_cq_num),
    .dbg_q_bit              (c1_dbg_q_bit),
    .dbg_valid_lat          (c1_dbg_valid_lat),
    .dbg_phase              (c1_dbg_phase),
    .dbg_inc_latency        (c1_dbg_inc_latency),
    .dbg_dcb_wr_ptr         (c1_dbg_dcb_wr_ptr),
    .dbg_dcb_rd_ptr         (c1_dbg_dcb_rd_ptr),
    .dbg_dcb_din            (c1_dbg_dcb_din),
    .dbg_dcb_dout           (c1_dbg_dcb_dout),
    .dbg_error_max_latency  (c1_dbg_error_max_latency),
    .dbg_error_adj_latency  (c1_dbg_error_adj_latency),
    .dbg_pd_calib_start     (c1_dbg_pd_calib_start),
    .dbg_pd_calib_done      (c1_dbg_pd_calib_done),
    .dbg_pd_off             (c1_dbg_pd_off),
    .dbg_phy_status         (c1_dbg_phy_status),
    .dbg_align_rd0          (c1_dbg_align_rd0),
    .dbg_align_rd1          (c1_dbg_align_rd1),
    .dbg_align_fd0          (c1_dbg_align_fd0),
    .dbg_align_fd1          (c1_dbg_align_fd1)
  );


  tb_top #(
    .BURST_LEN     (C0_BURST_LEN),
    .ADDR_WIDTH    (C0_ADDR_WIDTH),
    .DATA_WIDTH    (C0_DATA_WIDTH),
    .TCQ           (C0_TCQ)
  ) c0_u_tb_top (
    .clk           (c0_clk),
    .rst_clk       (c0_rst_clk),
    .wr_cmd0       (c0_user_wr_cmd0),
    .wr_cmd1       (c0_user_wr_cmd1),
    .wr_addr0      (c0_user_wr_addr0),
    .wr_addr1      (c0_user_wr_addr1),
    .rd_cmd0       (c0_user_rd_cmd0),
    .rd_cmd1       (c0_user_rd_cmd1),
    .rd_addr0      (c0_user_rd_addr0),
    .rd_addr1      (c0_user_rd_addr1),
    .wr_data0      (c0_user_wr_data0),
    .wr_data1      (c0_user_wr_data1),
    .wr_bw_n0      (c0_user_wr_bw_n0),
    .wr_bw_n1      (c0_user_wr_bw_n1),
    .rd_valid0     (c0_user_rd_valid0),
    .rd_valid1     (c0_user_rd_valid1),
    .rd_data0      (c0_user_rd_data0),
    .rd_data1      (c0_user_rd_data1),
    .cal_done      (c0_cal_done),
    .compare_error (c0_compare_error),
    .cmp_err       (c0_cmp_err),
    .clear_error   (c0_dbg_clear_error)
  );

  tb_top #(
    .BURST_LEN     (C1_BURST_LEN),
    .ADDR_WIDTH    (C1_ADDR_WIDTH),
    .DATA_WIDTH    (C1_DATA_WIDTH),
    .TCQ           (C1_TCQ)
  ) c1_u_tb_top (
    .clk           (c1_clk),
    .rst_clk       (c1_rst_clk),
    .wr_cmd0       (c1_user_wr_cmd0),
    .wr_cmd1       (c1_user_wr_cmd1),
    .wr_addr0      (c1_user_wr_addr0),
    .wr_addr1      (c1_user_wr_addr1),
    .rd_cmd0       (c1_user_rd_cmd0),
    .rd_cmd1       (c1_user_rd_cmd1),
    .rd_addr0      (c1_user_rd_addr0),
    .rd_addr1      (c1_user_rd_addr1),
    .wr_data0      (c1_user_wr_data0),
    .wr_data1      (c1_user_wr_data1),
    .wr_bw_n0      (c1_user_wr_bw_n0),
    .wr_bw_n1      (c1_user_wr_bw_n1),
    .rd_valid0     (c1_user_rd_valid0),
    .rd_valid1     (c1_user_rd_valid1),
    .rd_data0      (c1_user_rd_data0),
    .rd_data1      (c1_user_rd_data1),
    .cal_done      (c1_cal_done),
    .compare_error (c1_compare_error),
    .cmp_err       (c1_cmp_err),
    .clear_error   (c1_dbg_clear_error)
  );


  generate
    if (C0_DEBUG_PORT == "OFF") begin: c0_gen_dbg_tie_off
      assign c0_dbg_inc_cq_all     = 1'b0;
      assign c0_dbg_inc_cqn_all    = 1'b0;
      assign c0_dbg_inc_q_all      = 1'b0;
      assign c0_dbg_dec_cq_all     = 1'b0;
      assign c0_dbg_dec_cqn_all    = 1'b0;
      assign c0_dbg_dec_q_all      = 1'b0;
      assign c0_dbg_inc_cq         = 1'b0;
      assign c0_dbg_inc_cqn        = 1'b0;
      assign c0_dbg_inc_q          = 1'b0;
      assign c0_dbg_dec_cq         = 1'b0;
      assign c0_dbg_dec_cqn        = 1'b0;
      assign c0_dbg_dec_q          = 1'b0;
      assign c0_dbg_sel_cq         = 'b0;
      assign c0_dbg_sel_cqn        = 'b0;
      assign c0_dbg_sel_q          = 'b0;
      assign c0_dbg_clear_error    = 'b0;
      assign c0_dbg_pd_off         = 'b0;
    end
  endgenerate
  generate
    if (C0_DEBUG_PORT == "ON") begin: c0_chipscope_inst
      assign c0_dbg_inc_cq_all     =  qdriip_cs2_sync_out[1];
      assign c0_dbg_inc_cqn_all    =  qdriip_cs2_sync_out[2];
      assign c0_dbg_inc_q_all      =  qdriip_cs2_sync_out[3];
      assign c0_dbg_dec_cq_all     =  qdriip_cs2_sync_out[4];
      assign c0_dbg_dec_cqn_all    =  qdriip_cs2_sync_out[5];
      assign c0_dbg_dec_q_all      =  qdriip_cs2_sync_out[6];
      assign c0_dbg_inc_cq         =  qdriip_cs2_sync_out[7];
      assign c0_dbg_inc_cqn        =  qdriip_cs2_sync_out[8];
      assign c0_dbg_inc_q          =  qdriip_cs2_sync_out[9];
      assign c0_dbg_dec_cq         =  qdriip_cs2_sync_out[10];
      assign c0_dbg_dec_cqn        =  qdriip_cs2_sync_out[11];
      assign c0_dbg_dec_q          =  qdriip_cs2_sync_out[12];
      assign c0_dbg_sel_cq         =  qdriip_cs2_sync_out[13+C0_CQ_BITS-1 : 13];
      assign c0_dbg_sel_cqn        =  qdriip_cs2_sync_out[13+(2*C0_CQ_BITS)-1 : 13+C0_CQ_BITS];
      assign c0_dbg_sel_q          =  qdriip_cs2_sync_out[13+(2*C0_CQ_BITS)+C0_Q_BITS-1  : 13+(2*C0_CQ_BITS)];
      assign c0_dbg_clear_error    =  qdriip_cs2_sync_out[13+(2*C0_CQ_BITS)+C0_Q_BITS];
      assign c0_dbg_pd_off         =  qdriip_cs2_sync_out[13+(2*C0_CQ_BITS)+C0_Q_BITS+1];

      assign qdriip_trigger             = {8'b0, c0_dbg_phy_status[7:1], c0_cmp_err};

      assign qdriip_cs0_clk             =  c0_clk;
      assign qdriip_cs0_trig            =  qdriip_trigger;
      assign qdriip_cs0_data[255:231]   = 'b0;
      assign qdriip_cs0_data[230:229]   = c0_dbg_phy_rd_cmd_n;
      assign qdriip_cs0_data[228:227]   = c0_dbg_phy_wr_cmd_n;
      assign qdriip_cs0_data[226:155]   = c0_dbg_phy_wr_data;
      assign qdriip_cs0_data[154]       = c0_user_rd_valid0;
      assign qdriip_cs0_data[153]       = c0_user_rd_cmd0;
      assign qdriip_cs0_data[152]       = c0_user_wr_cmd0;
      assign qdriip_cs0_data[151:148]   = c0_user_rd_addr0[3:0];
      assign qdriip_cs0_data[147:144]   = c0_user_wr_addr0[3:0];
      assign qdriip_cs0_data[143:72]    = c0_user_wr_data0;
      assign qdriip_cs0_data[71:0]      = c0_user_rd_data0;

      assign qdriip_cs1_clk  = c0_dbg_clk_rd[0];
      assign qdriip_cs1_trig = qdriip_trigger;  // add bufr trigger

      assign qdriip_cs1_data[255:73]    =  'b0;
      assign qdriip_cs1_data[72]        =  c0_dbg_phase;
      assign qdriip_cs1_data[71:54]     =  c0_dbg_align_rd0[17:0];
      assign qdriip_cs1_data[53:36]     =  c0_dbg_align_fd0[17:0];
      assign qdriip_cs1_data[35:18]     =  c0_dbg_align_rd1[17:0];
      assign qdriip_cs1_data[17:0]      =  c0_dbg_align_fd1[17:0];

      //vio outputs
      assign qdriip_cs2_clk             = c0_clk;
      assign qdriip_cs2_async_in[4:0]   = c0_dbg_cq_tapcnt[C0_TAP_BITS-1:0];
      assign qdriip_cs2_async_in[9:5]   = c0_dbg_cqn_tapcnt[C0_TAP_BITS-1:0];
      assign qdriip_cs2_async_in[99:10] = c0_dbg_q_tapcnt[89:0];

      icon u_c0_icon
      (
       .CONTROL0 (qdriip_cs0_control),
       .CONTROL1 (qdriip_cs1_control),
       .CONTROL2 (qdriip_cs2_control)
       );

      ila u_c0_cs0
      (
       .CLK     (qdriip_cs0_clk),
       .DATA    (qdriip_cs0_data),
       .TRIG0   (qdriip_cs0_trig),
       .CONTROL (qdriip_cs0_control)
       );

      ila u_c0_cs1
      (
       .CLK     (qdriip_cs1_clk),
       .DATA    (qdriip_cs1_data),
       .TRIG0   (qdriip_cs1_trig),
       .CONTROL (qdriip_cs1_control)
       );

      vio u_c0_cs2_asyncin256_syncout36
      (
       .ASYNC_IN (qdriip_cs2_async_in),
       .SYNC_OUT (qdriip_cs2_sync_out),
       .CLK      (qdriip_cs2_clk),
       .CONTROL  (qdriip_cs2_control)
       );

    end
  endgenerate

  generate
    if (C1_DEBUG_PORT == "OFF") begin: c1_gen_dbg_tie_off
      assign c1_dbg_inc_cq_all     = 1'b0;
      assign c1_dbg_inc_cqn_all    = 1'b0;
      assign c1_dbg_inc_q_all      = 1'b0;
      assign c1_dbg_dec_cq_all     = 1'b0;
      assign c1_dbg_dec_cqn_all    = 1'b0;
      assign c1_dbg_dec_q_all      = 1'b0;
      assign c1_dbg_inc_cq         = 1'b0;
      assign c1_dbg_inc_cqn        = 1'b0;
      assign c1_dbg_inc_q          = 1'b0;
      assign c1_dbg_dec_cq         = 1'b0;
      assign c1_dbg_dec_cqn        = 1'b0;
      assign c1_dbg_dec_q          = 1'b0;
      assign c1_dbg_sel_cq         = 'b0;
      assign c1_dbg_sel_cqn        = 'b0;
      assign c1_dbg_sel_q          = 'b0;
      assign c1_dbg_clear_error    = 'b0;
      assign c1_dbg_pd_off         = 'b0;
    end
  endgenerate


endmodule
