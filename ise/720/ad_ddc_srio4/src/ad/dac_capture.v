`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:50 06/21/2013 
// Design Name: 
// Module Name:    dac_capture 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ADC_capture(
						dclk1P,
						dclk1N,
						dclk2P,
						dclk2N,
						
						di1N,
						di1P,
						dq1N,
						dq1P,
						
						di2N,
						di2P,
						dq2N,
						dq2P,
						
						AD1_data1,
						AD1_data2,
						AD2_data1,
						AD2_data2,
//						
//						di1,
//						dq1,
//						di2,
//						dq2,
						
						dclk1,
						dclk2
//						TRIG0

						);

input				dclk1P;			//AD随路时钟
input				dclk1N;
input				dclk2P;
input				dclk2N;

input  [7:0]	di1N;				//AD数据
input  [7:0]	di1P;
input	 [7:0]	dq1N;
input  [7:0]  	dq1P;
input  [7:0]	di2N;
input  [7:0]	di2P;
input	 [7:0]	dq2N;
input  [7:0]  	dq2P;

output [15:0]	AD1_data1;				//输出16bits数据
output [15:0]	AD1_data2;
output [15:0]	AD2_data1;
output [15:0]	AD2_data2;

output			dclk1;			//相位调整后的AD随路时钟
output			dclk2;

//output [49:0]	TRIG0;

wire				dclk1_r;
wire				dclk1_b;
wire				dclk1;

wire				dclk2_r;
wire				dclk2_b;
wire				dclk2;


wire	[7:0]		di1_r;
wire	[7:0]		di1_f;
wire	[7:0]		dq1_r;
wire	[7:0]		dq1_f;
wire	[7:0]		di2_r;
wire	[7:0]		di2_f;
wire	[7:0]		dq2_r;
wire	[7:0]		dq2_f;

reg	[15:0]	di1;
reg	[15:0]	dq1;
reg	[15:0]	di2;
reg	[15:0]	dq2;
reg	[15:0]	AD1_data1;
reg	[15:0]	AD1_data2;
reg	[15:0]	AD2_data1;
reg	[15:0]	AD2_data2;
wire				locked1;
wire				locked2;


reg  [7:0]		di1_r_ff1;
reg  [7:0]		di1_r_ff2;
reg  [7:0]		di1_f_ff1;
reg  [7:0]		di1_f_ff2;
reg  [7:0]		dq1_r_ff1;
reg  [7:0]		dq1_r_ff2;
reg  [7:0]		dq1_f_ff1;
reg  [7:0]		dq1_f_ff2;

reg  [7:0]		di2_r_ff1;
reg  [7:0]		di2_r_ff2;
reg  [7:0]		di2_f_ff1;
reg  [7:0]		di2_f_ff2;
reg  [7:0]		dq2_r_ff1;
reg  [7:0]		dq2_r_ff2;
reg  [7:0]		dq2_f_ff1;
reg  [7:0]		dq2_f_ff2;

//assign	TRIG0[47:0]={di1,AD1_data1,AD1_data2};
//assign	TRIG0[49:48]	=	2'b11;
//原版
//assign di1 = {di1_f_ff2[7],di1_r_ff1[7],di1_f_ff2[6],di1_r_ff1[6],di1_f_ff2[5],di1_r_ff1[5],di1_f_ff2[4],di1_r_ff1[4],
//				  di1_f_ff2[3],di1_r_ff1[3],di1_f_ff2[2],di1_r_ff1[2],di1_f_ff2[1],di1_r_ff1[1],di1_f_ff2[0],di1_r_ff1[0]};
//
//assign dq1 = {dq1_f_ff2[7],dq1_r_ff1[7],dq1_f_ff2[6],dq1_r_ff1[6],dq1_f_ff2[5],dq1_r_ff1[5],dq1_f_ff2[4],dq1_r_ff1[4],
//				  dq1_f_ff2[3],dq1_r_ff1[3],dq1_f_ff2[2],dq1_r_ff1[2],dq1_f_ff2[1],dq1_r_ff1[1],dq1_f_ff2[0],dq1_r_ff1[0]};
//
//assign di2 = {di2_f_ff2[7],di2_r_ff1[7],di2_f_ff2[6],di2_r_ff1[6],di2_f_ff2[5],di2_r_ff1[5],di2_f_ff2[4],di2_r_ff1[4],
//				  di2_f_ff2[3],di2_r_ff1[3],di2_f_ff2[2],di2_r_ff1[2],di2_f_ff2[1],di2_r_ff1[1],di2_f_ff2[0],di2_r_ff1[0]};
//
//assign dq2 = {dq2_f_ff2[7],dq2_r_ff1[7],dq2_f_ff2[6],dq2_r_ff1[6],dq2_f_ff2[5],dq2_r_ff1[5],dq2_f_ff2[4],dq2_r_ff1[4],
//				  dq2_f_ff2[3],dq2_r_ff1[3],dq2_f_ff2[2],dq2_r_ff1[2],dq2_f_ff2[1],dq2_r_ff1[1],dq2_f_ff2[0],dq2_r_ff1[0]};			
//
//assign AD1_data1	=	di1-32768;
//assign AD1_data2	=	dq1-32768;

always @ ( posedge dclk1 )
begin
		di1 			<= {di1_f_ff2[7],di1_r_ff1[7],di1_f_ff2[6],di1_r_ff1[6],di1_f_ff2[5],di1_r_ff1[5],di1_f_ff2[4],di1_r_ff1[4],
							 di1_f_ff2[3],di1_r_ff1[3],di1_f_ff2[2],di1_r_ff1[2],di1_f_ff2[1],di1_r_ff1[1],di1_f_ff2[0],di1_r_ff1[0]};
		dq1 			<= {dq1_f_ff2[7],dq1_r_ff1[7],dq1_f_ff2[6],dq1_r_ff1[6],dq1_f_ff2[5],dq1_r_ff1[5],dq1_f_ff2[4],dq1_r_ff1[4],
							 dq1_f_ff2[3],dq1_r_ff1[3],dq1_f_ff2[2],dq1_r_ff1[2],dq1_f_ff2[1],dq1_r_ff1[1],dq1_f_ff2[0],dq1_r_ff1[0]};
		AD1_data1	<=	di1-32768;
		AD1_data2	<=	dq1-32768;
end

always @ ( posedge dclk2 )
begin
		di2 			<= {di2_f_ff2[7],di2_r_ff1[7],di2_f_ff2[6],di2_r_ff1[6],di2_f_ff2[5],di2_r_ff1[5],di2_f_ff2[4],di2_r_ff1[4],
							 di2_f_ff2[3],di2_r_ff1[3],di2_f_ff2[2],di2_r_ff1[2],di2_f_ff2[1],di2_r_ff1[1],di2_f_ff2[0],di2_r_ff1[0]};
		dq2 			<= {dq2_f_ff2[7],dq2_r_ff1[7],dq2_f_ff2[6],dq2_r_ff1[6],dq2_f_ff2[5],dq2_r_ff1[5],dq2_f_ff2[4],dq2_r_ff1[4],
							 dq2_f_ff2[3],dq2_r_ff1[3],dq2_f_ff2[2],dq2_r_ff1[2],dq2_f_ff2[1],dq2_r_ff1[1],dq2_f_ff2[0],dq2_r_ff1[0]};
		AD2_data1	<=	di2-32768;
		AD2_data2	<=	dq2-32768;
end

IBUFGDS dclk1_bufgds (
	                .I(dclk1P), 
                   .IB(dclk1N), 
                   .O(dclk1_r)
	                );
defparam dclk1_bufgds.IOSTANDARD = "LVDS_25";
defparam dclk1_bufgds.DIFF_TERM  = "TRUE";

// BUFR bufio1_i_inst
//   (.O(dclk1_b),
//    .I(dclk1_r));
//   BUFR #(
//      .BUFR_DIVIDE("BYPASS"), // Values: "BYPASS", "1", "2", "3", "4", "5", "6", "7", "8" 
//      .SIM_DEVICE("VIRTEX6")  // Must be set to "VIRTEX6" 
//   )
//   bufio1_i_inst (
//      .O(dclk1_b),     // 1-bit output: Clock buffer output
//      .CE(1'b1),   // 1-bit input: Active high clock enable input
//      .CLR(1'b0), // 1-bit input: Active high reset input
//      .I(dclk1_r)      // 1-bit input: Clock buffer input driven by an IBUFG, MMCM or local interconnect
//   );
	
ad1_clk u_ad1_clk_w(
	.CLK_IN1			(dclk1_r		),      
	.CLK_OUT1		(dclk1		),   
	.LOCKED			(locked1		)
	);  

IBUFGDS dclk2_bufgds (
	                .I(dclk2P), 
                   .IB(dclk2N), 
                   .O(dclk2_r)
	                );
defparam dclk2_bufgds.IOSTANDARD = "LVDS_25";
defparam dclk2_bufgds.DIFF_TERM  = "TRUE";

// BUFR bufio2_i_inst
//   (.O(dclk2_b),
//    .I(dclk2_r));
//   BUFR #(
//      .BUFR_DIVIDE("BYPASS"), // Values: "BYPASS", "1", "2", "3", "4", "5", "6", "7", "8" 
//      .SIM_DEVICE("VIRTEX6")  // Must be set to "VIRTEX6" 
//   )
//   bufio2_i_inst (
//      .O(dclk2_b),     // 1-bit output: Clock buffer output
//      .CE(1'b1),   // 1-bit input: Active high clock enable input
//      .CLR(1'b0), // 1-bit input: Active high reset input
//      .I(dclk2_r)      // 1-bit input: Clock buffer input driven by an IBUFG, MMCM or local interconnect
//   );
	
ad2_clk u_ad2_clk_w(
	.CLK_IN1			(dclk2_r		),      
	.CLK_OUT1		(dclk2		),   
	.LOCKED			(locked1		)
	); 
	
always@(posedge dclk1) begin
	di1_r_ff1		<= 	di1_r;		//ADC1 I channel rising edge 
	di1_r_ff2		<= 	di1_r_ff1;	//delay one clk
	di1_f_ff1		<=  	di1_f;		//ADC1 Q channel falling edge 
	di1_f_ff2		<= 	di1_f_ff1;	//delay one clk
end

always@(posedge dclk1) begin
	dq1_r_ff1		<= 	dq1_r;
	dq1_r_ff2		<= 	dq1_r_ff1;
	dq1_f_ff1		<=  	dq1_f;
	dq1_f_ff2		<= 	dq1_f_ff1;
end

always@(posedge dclk2) begin
	di2_r_ff1		<= 	di2_r;
	di2_r_ff2		<= 	di2_r_ff1;
	di2_f_ff1		<=  	di2_f;
	di2_f_ff2		<= 	di2_f_ff1;
end

always@(posedge dclk2) begin
	dq2_r_ff1		<= 	dq2_r;
	dq2_r_ff2		<= 	dq2_r_ff1;
	dq2_f_ff1		<=  	dq2_f;
	dq2_f_ff2		<= 	dq2_f_ff1;
end	 

  adc1k_if adc_if0 (
							.dclk(dclk1), 
                     .Dpin_N(di1N), 
                     .Dpin_P(di1P), 
                     .reset(1'b0), 
                     .SET_IN(1'b0),
                     .Dout_1(di1_r), 
                     .Dout_2(di1_f)
	             );


   adc1k_if adc_if1 (
							.dclk(dclk1), 
                     .Dpin_N(dq1N), 
                     .Dpin_P(dq1P), 
                     .reset(1'b0), 
                     .SET_IN(1'b0), 
                     .Dout_1(dq1_r), 
                     .Dout_2(dq1_f)
	             );
					 
					 
	adc1k_if adc_if2 (
							.dclk(dclk2), 
                     .Dpin_N(di2N), 
                     .Dpin_P(di2P), 
                     .reset(1'b0), 
                     .SET_IN(1'b0),
                     .Dout_1(di2_r), 
                     .Dout_2(di2_f)
	             );


   adc1k_if adc_if3 (
							.dclk(dclk2), 
                     .Dpin_N(dq2N), 
                     .Dpin_P(dq2P), 
                     .reset(1'b0), 
                     .SET_IN(1'b0), 
                     .Dout_1(dq2_r), 
                     .Dout_2(dq2_f)
	             );

endmodule
