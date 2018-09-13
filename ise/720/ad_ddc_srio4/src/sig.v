`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:50:51 07/22/2015 
// Design Name: 
// Module Name:    sig 
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
module sig(
input							clk_100M						,
input							rst_n							,
input							locked						,					//在chipscope中采出来看时钟是否稳定
input				[ 7:0]	work_mode					,
input				[ 7:0]	wave_code					,
input				[ 7:0]	hor_code						,
input				[15:0]	pri_code						,
input							PRI							,
input							sim_sel						,					//选择内部源还是外部源，=1时为内部源
input							bisuo_sclr					,
input				[ 7:0]	bisuo_st						,
input				[ 7:0]	bisuo_width					,
//--------------ADC----------------------
input          			dclk1_p						,					//两个ADC输入的随路时钟
input          			dclk1_n						,
input          			dclk2_p						,
input         				dclk2_n						,
input  			[7:0]	 	di1_p							,					//四路ADC数据，每个AD芯片有两路ADC通道
input  			[7:0]	 	di1_n							, 
input  			[7:0]	 	dq1_p							,
input  			[7:0]	 	dq1_n							,
input  			[7:0]	 	di2_p							,
input  			[7:0]	 	di2_n							, 
input  			[7:0]	 	dq2_p							,
input  			[7:0]	 	dq2_n							,
output         			f_ad9512_sclk				,					//spi		AD9512 时钟分配器配置
inout          			f_ad9512_sdio				,					//spi
output         			f_ad9512_csb				,	   			//spi	
output	reg	[15:0]	AD_he							,
output	reg	[15:0]	AD_fw							,
output	reg	[15:0]	AD_fy							,
output			[149:0]	TRIG0							
    );

//---------------temp-----------------------				//中间数据
wire				[15:0]	AD1_data1					;
wire				[15:0]	AD1_data2					;
wire				[15:0]	AD2_data1					;
wire				[15:0]	AD2_data2					;
wire				[15:0]	sim_he						;
wire				[15:0]	sim_fw						;
wire				[15:0]	sim_fy						;

wire				[33:0]	TRIG_ad						;
//----------根据内外部源选择信号，选择内部源还是外部源------------
always @ ( posedge clk_100M )
begin
	if(!rst_n)
		begin
			AD_he			<=	16'b0							;
			AD_fw			<=	16'b0							;
			AD_fy			<=	16'b0							;
		end
	else	if(sim_sel==1'b1)									//内部源
		begin
			AD_he			<=	sim_he						;
			AD_fw			<=	sim_fw						;
			AD_fy			<=	sim_fy						;
		end
	else															//外部源
		begin
			AD_he			<=	AD1_data2					;
			AD_fw			<=	AD1_data1					;
			AD_fy			<=	AD2_data2					;
		end
end

//--------------------rom sig----------------------
sim_sig	inst_sig(
		.clk_100M			(clk_100M			),
		.rst_n				(rst_n				),
		.work_mode_ifm		(work_mode			),
		.wave_code_ifm		(wave_code			),
		.hor_code_ifm		(hor_code			),
		.pri_code_ifm		(pri_code			),
		.PRI					(PRI					),
		.AD_he				(sim_he				),
		.AD_fw				(sim_fw				),
		.AD_fy				(sim_fy				)
		);
		
//-----------------ADC信号------------------------------------			
top_ad	inst_ad(
		.clk_100M			(clk_100M			),    	//
		.rst_n				(rst_n				),
		.PRI					(PRI					),
		.bisuo_sclr			(bisuo_sclr			),
		.bisuo_st			(bisuo_st			),
		.bisuo_width		(bisuo_width		),
		.wave_code			(wave_code			),
   	.dclk1_p				(dclk1_p				),			//两个ADC输入的随路时钟
   	.dclk1_n				(dclk1_n				),
   	.dclk2_p				(dclk2_p				),
  		.dclk2_n				(dclk2_n				),
		.di1_p				(di1_p				),			//四路ADC数据，每个AD芯片有两路ADC通道
		.di1_n				(di1_n				), 
		.dq1_p				(dq1_p				),
		.dq1_n				(dq1_n				),
		.di2_p				(di2_p				),
		.di2_n				(di2_n				), 
		.dq2_p				(dq2_p				),
		.dq2_n				(dq2_n				),
		.f_ad9512_sclk		(f_ad9512_sclk		),			//spi		AD9512 时钟分配器配置
		.f_ad9512_sdio		(f_ad9512_sdio		),			//spi
		.f_ad9512_csb		(f_ad9512_csb		),	   	//spi	
		.AD1					(AD1_data1			),			//AD采集数据
		.AD2					(AD1_data2			),
		.AD3					(AD2_data1			),
		.AD4					(AD2_data2			),
		.TRIG0				(TRIG_ad				)
		);		

assign	TRIG0[0]				=	PRI;
assign	TRIG0[8:1]			=	work_mode;
assign	TRIG0[16:9]			=	wave_code;
assign	TRIG0[24:17]		=	hor_code;
assign	TRIG0[40:25]		=	pri_code;
assign	TRIG0[56:41]		=	AD_he;
assign	TRIG0[72:57]		=	AD_fw;
assign	TRIG0[88:73]		=	AD_fy;
assign	TRIG0[89]			=	rst_n;
assign	TRIG0[123:90]		=	TRIG_ad;
assign	TRIG0[124]			=	sim_sel;
assign	TRIG0[125]			=	locked;

endmodule
