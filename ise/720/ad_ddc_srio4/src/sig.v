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
input							locked						,					//��chipscope�вɳ�����ʱ���Ƿ��ȶ�
input				[ 7:0]	work_mode					,
input				[ 7:0]	wave_code					,
input				[ 7:0]	hor_code						,
input				[15:0]	pri_code						,
input							PRI							,
input							sim_sel						,					//ѡ���ڲ�Դ�����ⲿԴ��=1ʱΪ�ڲ�Դ
input							bisuo_sclr					,
input				[ 7:0]	bisuo_st						,
input				[ 7:0]	bisuo_width					,
//--------------ADC----------------------
input          			dclk1_p						,					//����ADC�������·ʱ��
input          			dclk1_n						,
input          			dclk2_p						,
input         				dclk2_n						,
input  			[7:0]	 	di1_p							,					//��·ADC���ݣ�ÿ��ADоƬ����·ADCͨ��
input  			[7:0]	 	di1_n							, 
input  			[7:0]	 	dq1_p							,
input  			[7:0]	 	dq1_n							,
input  			[7:0]	 	di2_p							,
input  			[7:0]	 	di2_n							, 
input  			[7:0]	 	dq2_p							,
input  			[7:0]	 	dq2_n							,
output         			f_ad9512_sclk				,					//spi		AD9512 ʱ�ӷ���������
inout          			f_ad9512_sdio				,					//spi
output         			f_ad9512_csb				,	   			//spi	
output	reg	[15:0]	AD_he							,
output	reg	[15:0]	AD_fw							,
output	reg	[15:0]	AD_fy							,
output			[149:0]	TRIG0							
    );

//---------------temp-----------------------				//�м�����
wire				[15:0]	AD1_data1					;
wire				[15:0]	AD1_data2					;
wire				[15:0]	AD2_data1					;
wire				[15:0]	AD2_data2					;
wire				[15:0]	sim_he						;
wire				[15:0]	sim_fw						;
wire				[15:0]	sim_fy						;

wire				[33:0]	TRIG_ad						;
//----------�������ⲿԴѡ���źţ�ѡ���ڲ�Դ�����ⲿԴ------------
always @ ( posedge clk_100M )
begin
	if(!rst_n)
		begin
			AD_he			<=	16'b0							;
			AD_fw			<=	16'b0							;
			AD_fy			<=	16'b0							;
		end
	else	if(sim_sel==1'b1)									//�ڲ�Դ
		begin
			AD_he			<=	sim_he						;
			AD_fw			<=	sim_fw						;
			AD_fy			<=	sim_fy						;
		end
	else															//�ⲿԴ
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
		
//-----------------ADC�ź�------------------------------------			
top_ad	inst_ad(
		.clk_100M			(clk_100M			),    	//
		.rst_n				(rst_n				),
		.PRI					(PRI					),
		.bisuo_sclr			(bisuo_sclr			),
		.bisuo_st			(bisuo_st			),
		.bisuo_width		(bisuo_width		),
		.wave_code			(wave_code			),
   	.dclk1_p				(dclk1_p				),			//����ADC�������·ʱ��
   	.dclk1_n				(dclk1_n				),
   	.dclk2_p				(dclk2_p				),
  		.dclk2_n				(dclk2_n				),
		.di1_p				(di1_p				),			//��·ADC���ݣ�ÿ��ADоƬ����·ADCͨ��
		.di1_n				(di1_n				), 
		.dq1_p				(dq1_p				),
		.dq1_n				(dq1_n				),
		.di2_p				(di2_p				),
		.di2_n				(di2_n				), 
		.dq2_p				(dq2_p				),
		.dq2_n				(dq2_n				),
		.f_ad9512_sclk		(f_ad9512_sclk		),			//spi		AD9512 ʱ�ӷ���������
		.f_ad9512_sdio		(f_ad9512_sdio		),			//spi
		.f_ad9512_csb		(f_ad9512_csb		),	   	//spi	
		.AD1					(AD1_data1			),			//AD�ɼ�����
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
