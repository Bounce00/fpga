`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:21 12/13/2012 
// Design Name: 
// Module Name:    top_ad 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//			鉴相器从上到下的第二块子板为窄带采集板，连接的是FPGA2，
//			子板从上到下的5个SMA中，第一个为采集时钟输入端，输入100MHz信号，下面三个依次为和路、方位差和俯仰差路信号输入端，
//			第四个为备用端口，第五个为FPGA同步输入端口，不需要使用
//			在程序中，AD1_data2与和路对应，AD1_data1与方位差路对应，AD2_data2与俯仰差路对应
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top_ad(
	 input						clk_100M,
	 input						rst_n,
	 input						PRI,
	 input						bisuo_sclr,		//暂时不用，因为现在接收的数据都是在PRI触发后就有的，发射期都置0了
	 input			[ 7:0]	bisuo_st,
	 input			[ 7:0]	bisuo_width,
	 input			[7:0]		wave_code,
    input          			dclk1_p,			//两个ADC输入的随路时钟
    input          			dclk1_n,
	 input          			dclk2_p,
    input         			dclk2_n,
	 
    input  			[7:0]	 	di1_p,				//四路ADC数据，每个AD芯片有两路ADC通道
    input  			[7:0]	 	di1_n, 
				
    input  			[7:0]	 	dq1_p,
    input  			[7:0]	 	dq1_n,
				
    input  			[7:0]	 	di2_p,
    input  			[7:0]	 	di2_n, 
				
    input  			[7:0]	 	dq2_p,
    input  			[7:0]	 	dq2_n,
	 
    output         			f_ad9512_sclk,	//spi		AD9512 时钟分配器配置
    inout          			f_ad9512_sdio,	//spi
    output         			f_ad9512_csb,	   //spi	
	
	 output			[15:0] 	AD1,			//AD采集数据
	 output			[15:0] 	AD2,
	 output			[15:0] 	AD3,
	 output			[15:0] 	AD4,
	 output			[33:0]	TRIG0

    );
//-----------clk & rst-------------------
//wire					rst_n					;
//wire					clk_spi				;		//100MHz
//-----------ad9512----------------------
wire 		[7:0]		f_ad9512_rd_data	;
//-------------ad------------------------
wire					dclk1					;
wire					dclk2					;
//wire		[15:0]	di1					;
//wire		[15:0]	dq1					;
//wire		[15:0]	di2					;
//wire		[15:0]	dq2					;
wire			[15:0]	AD1_data1			;
wire			[15:0]	AD1_data2			;
wire			[15:0]	AD2_data1			;
wire			[15:0]	AD2_data2			;
//----------------fifo--------------------
reg						rd_en					;
reg			[13:0]	cnt_rd				;
wire						empty1				;
wire						full1					;
//------------chipscope-------------------
wire		[35:0]	CONTROL0					;
wire		[35:0]	CONTROL1					;
//wire		[49:0]	TRIG0						;
//wire		[49:0]	TRIG1						;
    
always @ ( posedge clk_100M )
begin
	if(!rst_n)
			cnt_rd			<=		13'b0			;
	else	if(PRI)
			cnt_rd			<=		13'b0			;
	else	if(cnt_rd==14'd5000)
			cnt_rd			<=		cnt_rd		;
	else
			cnt_rd			<=		cnt_rd+1'b1	;
end	 

always @ ( posedge clk_100M )
begin
	if(!rst_n)
			rd_en				<=		1'b0			;
	else	case(wave_code)
		8'h01:													//5us baker
			if(cnt_rd<=14'd400)								//500-120=380
				rd_en			<=		1'b0			;
			else
				rd_en			<=		1'b1			;
		8'h02:													//13us baker
			if(cnt_rd<=14'd1200)								//1300-120=1180
				rd_en			<=		1'b0			;
			else
				rd_en			<=		1'b1			;
		8'h03:													//20us lfm
			if(cnt_rd<=14'd1900)								//2000-120=1880
				rd_en			<=		1'b0			;
			else
				rd_en			<=		1'b1			;
		8'h04:													//240us nlfm
			if(cnt_rd<=14'd190)								//2000-120=1880
				rd_en			<=		1'b0			;
			else
				rd_en			<=		1'b1			;
		8'h05:													//40us lfm
			if(cnt_rd<=14'd3900)								//4000-120=3880
				rd_en			<=		1'b0			;
			else
				rd_en			<=		1'b1			;
		8'h06:													//40us nlfm
			if(cnt_rd<=14'd3900)								//4000-120=3880
				rd_en			<=		1'b0			;
			else
				rd_en			<=		1'b1			;
		8'h07:													//100us lfm
			if(cnt_rd<=14'd9900)								//10000-120=9880
				rd_en			<=		1'b0			;
			else
				rd_en			<=		1'b1			;
		default:
				rd_en			<=		1'b1			;
		endcase
end
//------------配置AD9512-------------------
config_ad9512 inst_config_ad9512 (
    .clk					(clk_100M		), 
    .rst_n				(1'b1				),    
    .f_ad9512_sclk	(f_ad9512_sclk	), 
    .f_ad9512_sdio	(f_ad9512_sdio	), 
    .f_ad9512_csb		(f_ad9512_csb	),  
    .fmc_rd_data		(f_ad9512_rd_data)
    );

//-------------ADC输入-----------------------
ADC_capture inst_ADC_capture (
    .dclk1P				(dclk1_p			), 	//两个ADC输入的随路时钟
    .dclk1N				(dclk1_n			),
	 .dclk2P				(dclk2_p			), 
    .dclk2N				(dclk2_n			),	 
    .di1N				(di1_n			), 	//两个ADC输入的4路数据
    .di1P				(di1_p			), 
    .dq1N				(dq1_n			), 
    .dq1P				(dq1_p			), 
	 .di2N				(di2_n			), 
    .di2P				(di2_p			), 
    .dq2N				(dq2_n			), 
    .dq2P				(dq2_p			),
    .AD1_data1			(AD1_data1		), 	//AD采集数据
    .AD1_data2			(AD1_data2		), 
	 .AD2_data1			(AD2_data1		), 
    .AD2_data2			(AD2_data2		),
    .dclk1				(dclk1			),		//AD时钟
	 .dclk2				(dclk2			)
//	 .TRIG0				(TRIG0			)
    );
//	 
//-------------跨时钟域，加fifo-------------------
ad1_fifo inst_ad1_fifo (
		.rst					(PRI						), 		// input rst
		.wr_clk				(dclk1					), 		// input wr_clk
		.rd_clk				(clk_100M				), 		// input rd_clk
		.din					({AD1_data1,AD1_data2}), 		// input [63 : 0] din
		.wr_en				(1'b1						), 		// input wr_en
		.rd_en				(rd_en					), 		// input rd_en
		.dout					({AD1,AD2}				), 		// output [63 : 0] dout
		.full					(full1					), 		// output full
		.empty				(empty1					)	 		// output empty
);

ad1_fifo inst_ad2_fifo (
		.rst					(PRI						), 		// input rst
		.wr_clk				(dclk2					), 		// input wr_clk
		.rd_clk				(clk_100M				), 		// input rd_clk
		.din					({AD2_data1,AD2_data2}), 		// input [63 : 0] din
		.wr_en				(1'b1						), 		// input wr_en
		.rd_en				(rd_en					), 		// input rd_en
		.dout					({AD3,AD4}				), 		// output [63 : 0] dout
		.full					(full2					), 		// output full
		.empty				(empty2					)	 		// output empty
);
//-------------chipscope---------------------------
//ila_inst inst_ila1 (
//    .CONTROL			(CONTROL0		), 	// INOUT BUS [35:0]
//    .CLK					(dclk1			), 	// IN
//    .TRIG0				(TRIG0			) 		// IN BUS [149:0]
//	);
//
//ila_inst inst_ila2 (
//    .CONTROL			(CONTROL1		), 	// INOUT BUS [35:0]
//    .CLK					(dclk2			), 	// IN
//    .TRIG0				(TRIG1			) 		// IN BUS [149:0]
//	);
// 	 
//icon_inst inst_icon (
//    .CONTROL0			(CONTROL0		),		// INOUT BUS [35:0]
//    .CONTROL1			(CONTROL1		)		// INOUT BUS [35:0]
//	);	
//	
assign	TRIG0[14:0]		=		cnt_rd;
assign	TRIG0[17:15]	=		{empty1,full1,rd_en};
assign	TRIG0[33:18]	=		AD1_data2;
//
//assign	TRIG1[15:0]		=		AD2_data1;
//assign	TRIG1[31:16]	=		AD2_data2;

	
endmodule
