///////////////////////////////////////////////////////////////////////////////
//
// File name:    rio_reset.v
// Rev:          5.6
// Description:  This module issues a lnk_linkreset_n when a system
//               reset occurs. This causes the SRIO PHY to send four
//               link reset control symbols to the connected device
//               forcing it to reset. Once this link goes down, a 
//               system reset is then issued to the SRIO PHY. This
//               reset sequence is necessary to prevent ackIDs from
//               getting out of sync.
//
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

`timescale 1 ps / 1 ps

module rio_reset #( parameter TCQ = 100 ) 
  (
  input       lnk_clk,
  input       link_reset_n,
  input       port_initialized,
  input       lnk_reset_n,
  output  reg sys_reset_n,
  output  reg lnk_linkreset_n,
  input       log_clk,
  input       phy_clk,
  (* shreg_extract = "no" *)
  output  reg log_reset_n,
  (* shreg_extract = "no" *)
  output  reg phy_reset_n
  );

  // Reset lengths
  localparam SYS_RESET_LEN = 5;
  localparam LOG_RESET_LEN = 16;
  localparam PHY_RESET_LEN = 4;  
  
  // Reset State Machine
  localparam  IDLE       = 4'b0001;
  localparam  LINKRESET  = 4'b0010;
  localparam  PHY_RESET1 = 4'b0100;
  localparam  PHY_RESET2 = 4'b1000;

  // Internal declarations
  reg   [0:3]   reset_state = IDLE;
  reg   [0:3]   reset_next_state = IDLE;  
  reg                     sys_reset_n_int = 0;
  reg [0:SYS_RESET_LEN-1] sys_reset_n_pipe = 0;
  reg [0:LOG_RESET_LEN-1] log_reset_n_sync_r = 0;
  reg [0:PHY_RESET_LEN-1] phy_reset_n_sync_r = 0;

  always@(posedge lnk_clk)
    reset_state <= #TCQ reset_next_state;  


  always @(reset_state or link_reset_n or port_initialized)
    casex (reset_state)

      IDLE: begin
        // Current State Outputs
        sys_reset_n_int = 1'b1;
        lnk_linkreset_n = 1'b1;
        // Next State Outputs
        if (~link_reset_n)
          reset_next_state = LINKRESET;
        else
          reset_next_state = IDLE;
      end
      
      LINKRESET: begin
        // Current State Outputs
        sys_reset_n_int = 1'b1;
        lnk_linkreset_n = 1'b0;
        // Next State Outputs
        if (~port_initialized)
          reset_next_state = PHY_RESET1;
        else
          reset_next_state = LINKRESET;
      end

      PHY_RESET1: begin
        // Current State Outputs
        sys_reset_n_int = 1'b0;
        lnk_linkreset_n = 1'b1;
        // Next State Outputs
        reset_next_state = PHY_RESET2;
      end

      PHY_RESET2: begin
        // Current State Outputs
        sys_reset_n_int = 1'b0;
        lnk_linkreset_n = 1'b1;
        // Next State Outputs
        if (~link_reset_n)
          reset_next_state = PHY_RESET2;
        else
          reset_next_state = IDLE;
      end

      default: begin
        // Current State Outputs
        sys_reset_n_int = 1'b1;
        lnk_linkreset_n = 1'b1;
        // Next State Outputs
        reset_next_state = IDLE;
      end
    
    endcase

  // Extend reset by SYS_RESET_LEN number of cycles
  always @(posedge lnk_clk) begin
    sys_reset_n_pipe <= #TCQ {sys_reset_n_pipe[1:SYS_RESET_LEN-1],sys_reset_n_int};
  end

  always @(posedge lnk_clk) begin
    sys_reset_n <= #TCQ &sys_reset_n_pipe;
  end

  // Synchronize release of reset to log_clk and extend by LOG_RESET_LEN
  // of cycles
  always @(posedge log_clk or negedge lnk_reset_n)
    if (!lnk_reset_n)
      log_reset_n_sync_r <= #TCQ {LOG_RESET_LEN{1'b0}};
    else
      log_reset_n_sync_r <= #TCQ {log_reset_n_sync_r[1:LOG_RESET_LEN-1],1'b1};
    
  always @(posedge log_clk)
    log_reset_n <= #TCQ log_reset_n_sync_r[0];

  // Synchronize release of reset to phy_clk and extend by PHY_RESET_LEN
  // of cycles
  always @(posedge phy_clk or negedge lnk_reset_n)
    if (!lnk_reset_n)
      phy_reset_n_sync_r <= #TCQ {PHY_RESET_LEN{1'b0}};
    else
      phy_reset_n_sync_r <= #TCQ {phy_reset_n_sync_r[1:PHY_RESET_LEN-1],1'b1};
    
  always @(posedge phy_clk)
    phy_reset_n <= #TCQ phy_reset_n_sync_r[0];	
	
endmodule
