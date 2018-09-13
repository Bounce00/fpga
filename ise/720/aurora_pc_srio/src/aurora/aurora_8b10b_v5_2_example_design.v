///////////////////////////////////////////////////////////////////////////////
// (c) Copyright 2008 Xilinx, Inc. All rights reserved.
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
// 
///////////////////////////////////////////////////////////////////////////////
//
//  AURORA_EXAMPLE
//
//  Aurora Generator
//
//
//  Description: Sample Instantiation of a 4 2-byte lane module.
//               Only tests initialization in hardware.
//
//         
`timescale 1 ns / 1 ps
(* core_generation_info = "aurora_8b10b_v5_2,aurora_8b10b_v5_2,{backchannel_mode=Sidebands, c_aurora_lanes=4, c_column_used=left, c_gt_clock_1=GTXQ0, c_gt_clock_2=None, c_gt_loc_1=1, c_gt_loc_10=X, c_gt_loc_11=X, c_gt_loc_12=X, c_gt_loc_13=X, c_gt_loc_14=X, c_gt_loc_15=X, c_gt_loc_16=X, c_gt_loc_17=X, c_gt_loc_18=X, c_gt_loc_19=X, c_gt_loc_2=2, c_gt_loc_20=X, c_gt_loc_21=X, c_gt_loc_22=X, c_gt_loc_23=X, c_gt_loc_24=X, c_gt_loc_25=X, c_gt_loc_26=X, c_gt_loc_27=X, c_gt_loc_28=X, c_gt_loc_29=X, c_gt_loc_3=4, c_gt_loc_30=X, c_gt_loc_31=X, c_gt_loc_32=X, c_gt_loc_33=X, c_gt_loc_34=X, c_gt_loc_35=X, c_gt_loc_36=X, c_gt_loc_37=X, c_gt_loc_38=X, c_gt_loc_39=X, c_gt_loc_4=3, c_gt_loc_40=X, c_gt_loc_41=X, c_gt_loc_42=X, c_gt_loc_43=X, c_gt_loc_44=X, c_gt_loc_45=X, c_gt_loc_46=X, c_gt_loc_47=X, c_gt_loc_48=X, c_gt_loc_5=X, c_gt_loc_6=X, c_gt_loc_7=X, c_gt_loc_8=X, c_gt_loc_9=X, c_lane_width=2, c_line_rate=3.125, c_nfc=false, c_nfc_mode=IMM, c_refclk_frequency=125.0, c_simplex=false, c_simplex_mode=TX, c_stream=false, c_ufc=false, flow_mode=None, interface_mode=Framing, dataflow_config=Duplex}" *)
module aurora_8b10b_x4 #
(
     parameter   USE_CHIPSCOPE        = 0,
     parameter   SIM_GTXRESET_SPEEDUP = 1      // Set to 1 to speed up sim reset
)
(
    // User IO
//    RESET,
    HARD_ERR,
    SOFT_ERR,
    FRAME_ERR,
    LANE_UP,
    CHANNEL_UP,
	 INIT_CLK,
//    INIT_CLK_P,
//    INIT_CLK_N,
//    GT_RESET_IN,
	 RESET_N,
//    GTXQ0_P,
//    GTXQ0_N,
	 PRI,
	 data_out,
    // V5 I/O
    RXP,
    RXN,
    TXP,
    TXN,
	 
	 GTXQ0_left_i
	 
//	 GTXQ0_left_i,
//	 user_clk_i,
//	 sync_clk_i,
//	 pll_not_locked_i
);


//***********************************Port Declarations*******************************
    // User I/O
	 input				  GTXQ0_left_i;
    input              RESET_N;
	 input				  INIT_CLK;
//    input              INIT_CLK_P;
//    input              INIT_CLK_N;
//    input              GT_RESET_IN;
    output             HARD_ERR;
    output             SOFT_ERR;
    output             FRAME_ERR;
    output  [0:3]      LANE_UP;
    output             CHANNEL_UP;
    // Clocks
//    input              GTXQ0_P;
//    input              GTXQ0_N;

	 input				  PRI;
	 output	[35:0]	  data_out;
    // V5 I/O
    input   [0:3]      RXP;
    input   [0:3]      RXN;
    output  [0:3]      TXP;
    output  [0:3]      TXN;
	 
//**************************External Register Declarations****************************
    reg                HARD_ERR;
    reg                SOFT_ERR;
    reg                FRAME_ERR;
    reg     [0:3]      LANE_UP;
    reg                CHANNEL_UP;
//********************************Wire Declarations**********************************
    // LocalLink TX Interface
(*KEEP="TRUE"*)    wire    [0:63]     tx_d_i;
    wire    [0:2]      tx_rem_i;
    wire               tx_src_rdy_n_i;
    wire               tx_sof_n_i;
    wire               tx_eof_n_i;
    wire               tx_dst_rdy_n_i;
    // LocalLink RX Interface
    wire    [0:63]     rx_d_i;
    wire    [0:2]      rx_rem_i;
    wire               rx_src_rdy_n_i;
    wire               rx_sof_n_i;
    wire               rx_eof_n_i;
    // V5 Reference Clock Interface
    wire               GTXQ0_left_i;

    // Error Detection Interface
    wire               hard_err_i;
    wire               soft_err_i;
    wire               frame_err_i;
    // Status
    wire               channel_up_i;
    wire    [0:3]      lane_up_i;
    // Clock Compensation Control Interface
    wire               warn_cc_i;
    wire               do_cc_i;
    // System Interface
    wire               pll_not_locked_i;
    wire               user_clk_i;
    wire               sync_clk_i;
    wire               reset_i;
    wire               power_down_i;
    wire    [2:0]      loopback_i;
    (* ASYNC_REG = "TRUE" *)
    wire               tx_lock_i;

    wire               tx_out_clk_i;

    wire               gt_reset_i; 
    wire               system_reset_i;
    //Frame check signals

    wire [35:0] icon_to_vio_i;
    wire [63:0] sync_in_i;
    wire [15:0] sync_out_i;
    
    wire        lane_up_i_i;
    wire        tx_lock_i_i;
    wire        lane_up_reduce_i;
//*********************************Main Body of Code**********************************

  assign lane_up_reduce_i  = &lane_up_i;
//_______________________________Reset________________________________________  
  wire               ini_clk;
  wire               GT_RESET_IN;
  wire               RESET;  
  
  assign RESET = RESET_N;//(rst_cnt == 16'hffff) ? 1'b1 : 1'b0;
  assign GT_RESET_IN = !RESET_N;//(rst_cnt == 16'hffff) ? 1'b0 : 1'b1;


//_______________________________Clock Buffers_________________________________
// IBUFDS_GTXE1 IBUFDS_GTXE1_CLK1
// (
// .I(GTXQ0_P),
// .IB(GTXQ0_N),
// .CEB(1'b0),
// .O(GTXQ0_left_i),
// .ODIV2()
// );


    // Instantiate a clock module for clock division.
    aurora_8b10b_v5_2_CLOCK_MODULE clock_module_i
    (
        .GT_CLK(tx_out_clk_i),
        .GT_CLK_LOCKED(tx_lock_i),
        .USER_CLK(user_clk_i),
        .SYNC_CLK(sync_clk_i),
        .PLL_NOT_LOCKED(pll_not_locked_i)
    );

//____________________________Register User I/O___________________________________
// Register User Outputs from core.

    always @(posedge user_clk_i)
    begin
        HARD_ERR      <=  hard_err_i;
        SOFT_ERR      <=  soft_err_i;
        FRAME_ERR     <=  frame_err_i;
        LANE_UP         <=  lane_up_i;
        CHANNEL_UP      <=  channel_up_i;
    end

//____________________________Tie off unused signals_______________________________

    // System Interface
    assign  power_down_i        =   1'b0;
    assign  loopback_i          =   3'b000;

//___________________________Module Instantiations_________________________________
    aurora_8b10b_v5_2 #
    (
        .SIM_GTXRESET_SPEEDUP(SIM_GTXRESET_SPEEDUP)
    )
    aurora_module_i
    (
        // LocalLink TX Interface
        .TX_D(tx_d_i),
        .TX_REM(tx_rem_i),
        .TX_SRC_RDY_N(tx_src_rdy_n_i),
        .TX_SOF_N(tx_sof_n_i),
        .TX_EOF_N(tx_eof_n_i),
        .TX_DST_RDY_N(tx_dst_rdy_n_i),
        // LocalLink RX Interface
        .RX_D(rx_d_i),
        .RX_REM(rx_rem_i),
        .RX_SRC_RDY_N(rx_src_rdy_n_i),
        .RX_SOF_N(rx_sof_n_i),
        .RX_EOF_N(rx_eof_n_i),
        // V5 Serial I/O
        .RXP(RXP),
        .RXN(RXN),
        .TXP(TXP),
        .TXN(TXN),
        // V5 Reference Clock Interface
        .GTXQ0(GTXQ0_left_i),
        // Error Detection Interface
        .HARD_ERR(hard_err_i),
        .SOFT_ERR(soft_err_i),
        .FRAME_ERR(frame_err_i),
        // Status
        .CHANNEL_UP(channel_up_i),
        .LANE_UP(lane_up_i),
        // Clock Compensation Control Interface
        .WARN_CC(warn_cc_i),
        .DO_CC(do_cc_i),
        // System Interface
        .USER_CLK(user_clk_i),
        .SYNC_CLK(sync_clk_i),
        .RESET(reset_i),
        .POWER_DOWN(power_down_i),
        .LOOPBACK(loopback_i),
        .GT_RESET(gt_reset_i),
        .TX_LOCK(tx_lock_i),
        .TX_OUT_CLK(tx_out_clk_i)
    );

    aurora_8b10b_v5_2_STANDARD_CC_MODULE standard_cc_module_i
    (
        .RESET(lane_up_reduce_i),
        // Clock Compensation Control Interface
        .WARN_CC(warn_cc_i),
        .DO_CC(do_cc_i),
        // System Interface
        .PLL_NOT_LOCKED(pll_not_locked_i),
        .USER_CLK(user_clk_i)
    );

    aurora_8b10b_v5_2_RESET_LOGIC reset_logic_i
    (
        .RESET(RESET),
        .USER_CLK(user_clk_i),
		  .INIT_CLK(INIT_CLK),
//        .INIT_CLK_P(INIT_CLK_P),
//        .INIT_CLK_N(INIT_CLK_N),
        .GT_RESET_IN(GT_RESET_IN),
        .TX_LOCK_IN(tx_lock_i),
        .PLL_NOT_LOCKED(pll_not_locked_i),

        .SYSTEM_RESET(system_reset_i),
        .GT_RESET_OUT(gt_reset_i)
    );

    //Connect a frame generator to the TX User interface
    aurora_8b10b_v5_2_FRAME_GEN frame_gen_i
    (
        // User Interface
        .TX_D(tx_d_i),  
        .TX_REM(tx_rem_i),     
        .TX_SOF_N(tx_sof_n_i),       
        .TX_EOF_N(tx_eof_n_i),
        .TX_SRC_RDY_N(tx_src_rdy_n_i),
        .TX_DST_RDY_N(tx_dst_rdy_n_i),


        // System Interface
        .USER_CLK(user_clk_i),       
        .RESET(reset_i),
        .CHANNEL_UP(channel_up_i)
    );
    aurora_8b10b_v5_2_FRAME_CHECK frame_check_i
    (
        // User Interface
        .RX_D(rx_d_i),  
        .RX_REM(rx_rem_i),     
        .RX_SOF_N(rx_sof_n_i),       
        .RX_EOF_N(rx_eof_n_i),
        .RX_SRC_RDY_N(rx_src_rdy_n_i),
		  .clk_25M(INIT_CLK),
		  .PRI(PRI),
		  .data_out(data_out),
        // System Interface
        .USER_CLK(user_clk_i),       
        .RESET(reset_i),
        .CHANNEL_UP(channel_up_i)
    );    

assign  reset_i           =   system_reset_i;

endmodule
