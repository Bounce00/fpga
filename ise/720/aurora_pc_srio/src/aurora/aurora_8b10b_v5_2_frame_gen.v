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

//
//  FRAME GEN
//
//
//
//  Description: This module is a pattern generator to test the Aurora
//               designs in hardware. It generates data and passes it 
//               through the Aurora channel. If connected to a framing 
//               interface, it generates frames of varying size and 
//               separation. LFSR is used to generate the pseudo-random 
//               data and lower bits of LFSR are connected to REM bus 
`timescale 1 ns / 1 ps

module aurora_8b10b_v5_2_FRAME_GEN(

	input							USER_CLK			,       
	input							RESET				,
	input							CHANNEL_UP		,
	 
	output			[63:0]	TX_D				, 
	(*keep = "true"*)
	output			[ 2:0]	TX_REM			,     
	output						TX_SOF_N			,       
	output						TX_EOF_N			,
	output						TX_SRC_RDY_N	,
	input							TX_DST_RDY_N	

); 

(*keep = "true"*)
reg			[ 2:0]				current_state			;
reg			[ 2:0]				next_state				;
reg			[31:0]				wr_cnt					;
reg			[64:0]				wr_data					;
reg			[ 7:0]				delay_reg				;
reg									wr_timer_en				;
reg			[31:0]				wr_timer					;

parameter		idle 						=	3'd0			,
					send_head				=  3'd1			,
					send_data				=  3'd2			,
					send_end					=  3'd3			,
					delay						=  3'd4			;

assign	TX_SOF_N			= 	(current_state == send_head	) ?	1'b0	: 1'b1	;
assign	TX_EOF_N			=  (current_state == send_end		) ?	1'b0	: 1'b1	;
assign	TX_SRC_RDY_N   =	1'b0	;
assign	TX_D				= 	wr_data		;
assign	TX_REM			=	3'b111			;

always @(posedge USER_CLK or posedge RESET)
	if (RESET)
		wr_timer_en						<=	1'b0				;
	else if (current_state == send_head)
		wr_timer_en						<=	1'b1				;
	else if (current_state == send_end)
		wr_timer_en						<=	1'b0				;

always @(posedge USER_CLK or posedge RESET)
	if (RESET)
		wr_timer							<= 32'h0				;
	else if (wr_timer_en)
		wr_timer							<=	wr_timer + 1'b1	;
	else 
		wr_timer							<=	32'h0				;

always @(posedge USER_CLK or posedge RESET)
	if (RESET)
		delay_reg						<=	8'h0				;
	else if (current_state == delay)
		delay_reg						<=	delay_reg + 1'b1	;
	else 
		delay_reg						<=	8'h0				;

always @(posedge USER_CLK or posedge RESET)
	if (RESET)
		wr_cnt							<=	32'h0				;
	else if ((current_state == send_data) & !TX_DST_RDY_N)
		wr_cnt							<=	wr_cnt + 1'b1	;
	else if (current_state == idle)
		wr_cnt							<=	32'h0				;
		
always @(posedge USER_CLK or posedge RESET)
	if (RESET)
		wr_data							<= 64'd0					;
	else if (current_state == idle)
		wr_data							<=	64'd0					;
	else if (!TX_DST_RDY_N)
		wr_data							<=	wr_data + 1'b1		;
		
always @(posedge USER_CLK or posedge RESET)
	if (RESET)
		current_state					<=	idle				;
	else
		current_state					<=	next_state		;
           
always@*
	case(current_state)
		idle			:		if (CHANNEL_UP)
									next_state			=	send_head		;
								else
									next_state			=	idle				;
								
		send_head	:		if (!TX_DST_RDY_N)
									next_state			=	send_data		;
								else 
									next_state			=	send_head		;

		send_data	:		if (wr_cnt == 1000)				//(trans_len/2 -32'd3))
									next_state			=	send_end			;
								else 
									next_state			=	send_data		;
		
		send_end		:		if (!TX_DST_RDY_N)
									next_state			=	delay				;
								else 
									next_state			=	send_end			;
									
		delay			:		if (delay_reg == 7'hff)
									next_state			=	idle				;
								else 
									next_state			=	delay				;
									
		default		:			next_state			=	idle				;	
		
	endcase
			  
endmodule

