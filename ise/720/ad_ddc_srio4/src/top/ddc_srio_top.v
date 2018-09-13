`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:59 03/14/2015 
// Design Name: 
// Module Name:    clk_fpri_instruct 
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
module ddc_srio( 

//---------------����100MHz����----------------
input							OSC_100M				,
//--------------Ƶ�������100MHzʱ��------------
input							FMC_100M_p			,
input							FMC_100M_n			,
//---------------IFM����Ŀ����ź�--------------	 
input							FPRI					,					//IFM������ FPRI�ź�
input							code					,					//IFM�����Ĵ��п�����		
//--------------�����IFM��ʱ��-------------------ϵͳʱ����Ƶ������100MHz������壬����徭�����໷�ֳ�25MHzʱ�ӵ��ӿڰ�,
output						IFM_25M_o_p			,	//�ӿڰ���յ�25MHzʱ���ٴ�����������ѹ�壬��������ѹ���ϵͳʱ�䶼�ɽӿڰ�
output						IFM_25M_o_n			,	//������25MHzʱ�Ӳ���
//--------------IFM����25MHzʱ��--------------------
input							IFM_25M_i_p			,
input							IFM_25M_i_n			,
//-------------��ָ���ʱ�Ӵ���FPGA1----------------------
output						clk_25M_o_p			,
output						clk_25M_o_n			,
output						code_out				,
output						FPRI_out				,
//--------------ADC----------------------
input          			dclk1_p				,					//����ADC�������·ʱ��
input          			dclk1_n				,
input          			dclk2_p				,
input         				dclk2_n				,
input  			[7:0]	 	di1_p					,					//��·ADC���ݣ�ÿ��ADоƬ����·ADCͨ��
input  			[7:0]	 	di1_n					, 
input  			[7:0]	 	dq1_p					,
input  			[7:0]	 	dq1_n					,
input  			[7:0]	 	di2_p					,
input  			[7:0]	 	di2_n					, 
input  			[7:0]	 	dq2_p					,
input  			[7:0]	 	dq2_n					,
output         			f_ad9512_sclk		,					//spi		AD9512 ʱ�ӷ���������
inout          			f_ad9512_sdio		,					//spi
output         			f_ad9512_csb		,	   			//spi	
//------------SRIO------------------------
input          			SRIO_SYS_CLKP		,	 				//srio clk 156.25MHz
input         	 			SRIO_SYS_CLKN		, 
output         			SRIO_TXP0			,					//4*SRIO data port
output        	 			SRIO_TXN0			,
output         			SRIO_TXP1			,
output         			SRIO_TXN1			,
output         			SRIO_TXP2			,
output         			SRIO_TXN2			,
output         			SRIO_TXP3			,
output         			SRIO_TXN3			,
input         		 		SRIO_RXP0			,
input          			SRIO_RXN0			,
input          			SRIO_RXP1			,
input          			SRIO_RXN1			,
input          			SRIO_RXP2			,
input          			SRIO_RXN2			,
input          			SRIO_RXP3			,
input          			SRIO_RXN3   		,
output						srio_db_resp		,					//doorbell response
//------------led-----------------------
output			[ 1:0]	led
);	
//--------------------------ʱ�����----------------------
wire							FMC_100M				;
wire							pll_100M				;					//DCM������100MHzʱ��
wire							IFM_25M_i			;					//IFM������100MHzʱ�ӵ���ȫ��ʱ��
wire							pll_25M				;
wire							locked				;
//------------------------------------------------
wire							rst_n					;
//------------------------���յ���ָ��--------------------
wire				[ 7:0]	check_code1			;					//У����1   AA
wire				[ 7:0]	check_code2			;					//У����1   55
wire				[ 7:0]	work_mode			;					//����ģʽ
wire				[ 7:0]	ver_code				;					//��λ��
//wire			[ 7:0]	hor_code				;					//
wire				[ 7:0]	wave_code			;					//������
wire				[ 7:0]	fre_code				;					//Ƶ����
wire				[15:0]	pri_code				;					//������
wire				[ 7:0]	hor_code				;
wire				[ 7:0]	pulse_mode			;					//����ģʽ
wire				[ 7:0]	monitor_addr		;					//����ַ
wire				[ 7:0]	monitor_mode		;					//���ģʽ
wire				[15:0]	hor_phase_R			;					//���շ�λ����ֵ
wire				[15:0]	ver_phase_R			;					//������������ֵ
wire				[15:0]	hor_phase_T			;					//���䷽λ����ֵ
wire				[15:0]	ver_phase_T			;					//������������ֵ
wire							flag					;
//---------------------�����ź�------------------
wire							PRI					;
wire				[1:0]		segment				;					//100MHz 4��Ƶ
//---------------------rom-------------------------
wire				[15:0]	AD_he					;
wire				[15:0]	AD_fw					;
wire				[15:0]	AD_fy					;
reg				[14:0]	cnt					;					//ÿ30000��ʱ��һ��PRT		
wire							sim_sel				;
//--------------------ddcģ��----------------------
wire				[17:0]	fir_he_I				;			//FIR����ĺ�·I·����
wire				[17:0]	fir_he_Q				;			//FIR����ĺ�·Q·����
wire				[17:0]	fir_fw_I				;			//FIR����ķ�λ��·I·����
wire				[17:0]	fir_fw_Q				;			//FIR����ķ�λ��·Q·����
wire				[17:0]	fir_fy_I				;			//FIR����ĸ�����·I·����
wire				[17:0]	fir_fy_Q				;			//FIR����ĸ�����·Q·����
wire							rdy_20M				;			//fir�������������Ч��־
wire							rdy_1M				;
//wire							rdy_2_5M				;
//--------------------srio ģ��--------------------
wire				[63:0]	tx_data				;

wire	 						sig_sel				;				//����/�����ź�ѡ��  ���ڲ�Դ/�ⲿԴѡ��0Ϊ�ⲿԴ��1Ϊ�ڲ�Դ
wire	 						clk_sel				;				//���ⲿʱ��ѡ��  0Ϊ�ⲿʱ�ӣ�1Ϊ���Ͼ���ʱ��
wire							bisuo_sclr			;				//��������0ѡ��0Ϊ��������0,1Ϊ����0
wire	 			[ 7:0]	bisuo_st				;				//��������0��ʼ
wire	 			[ 7:0]  	bisuo_width			;				//��������0���
//------------------debug--------------------------
wire				[149:0]	TRIG0					;
wire				[149:0]	TRIG1					;
wire				[149:0]	TRIG2					;
wire				[149:0]	TRIG3					;
wire				[35:0]	CONTROL0				;
wire				[35:0]	CONTROL1				;
wire				[35:0]	CONTROL2				;
wire				[35:0]	CONTROL3				;
wire				[35:0]	CONTROL4				;
//wire				[ 7:0]	ASYNC_OUT			;
//---------------��ָ���ʱ�Ӵ���FPGA1----------------------------------
assign			code_out	=	code				;
assign			FPRI_out =  FPRI				;
//------------����IFM���25MHzʱ�ӣ�����100MHz������ȫ��ʱ��------------
//------------����Դ��ѡ��globle buffer-----------------------
//pll inst_pll(
//		.CLK_IN1_P			(FMC_100M_p			),    			// IN
//		.CLK_IN1_N			(FMC_100M_n			),    			// IN
//		.CLK_OUT1			(pll_100M			),     			// OUT
//		.CLK_OUT2			(IFM_25M				),     			// OUT
//		.LOCKED				(locked				)
//		); 

IBUFGDS #(
		.DIFF_TERM			("FALSE"				), 				// Differential Termination
		.IOSTANDARD			("DEFAULT"			) 					// Specifies the I/O standard for this buffer
) IBUFGDS_inst (
		.O						(FMC_100M			),  				// Clock buffer output
		.I						(FMC_100M_p			),  				// Diff_p clock buffer input
		.IB					(FMC_100M_n			) 					// Diff_n clock buffer input
);
	
BUFGMUX_1 BUFGMUX_inst (
		.O						(clk_100M			),   				// 1-bit output: Clock buffer output
		.I0					(FMC_100M			), 				// 1-bit input: Clock buffer input (S=0)
		.I1					(OSC_100M			), 				// 1-bit input: Clock buffer input (S=1)
		.S						(clk_sel				)    				// 1-bit input: Clock buffer select
);
//-------------����25MHzʱ�������IFM��------------------
pll inst_pll_clkout(
		.CLK_IN1				(clk_100M			),    			// IN
		.CLK_OUT1			(pll_25M				)     			// OUT
		); 
//---------����IFM���ʱ�ӣ�����pll������100MHzʱ������ȫ��ʱ��------
pll2 inst_pll(
		.CLK_IN1				(IFM_25M_i			),    			// IN
		.CLK_OUT1			(pll_100M			),     			// OUT
		.LOCKED				(locked				)
		); 		
//-------------����25MHzʱ��--------------------
IBUFGDS #(
		.DIFF_TERM			("TRUE"				), 				// Differential Termination
		.IOSTANDARD			("DEFAULT"			) 					// Specifies the I/O standard for this buffer
) IBUFGDS_IFM (
		.O						(IFM_25M_i			),  				// Clock buffer output
		.I						(IFM_25M_i_p		),  				// Diff_p clock buffer input
		.IB					(IFM_25M_i_n		) 					// Diff_n clock buffer input
		);		
//-------------���25MHzʱ��--------------------
OBUFDS #(
      .IOSTANDARD			("DEFAULT"			) 					// Specify the output I/O standard
   ) OBUFDS_IFM (
      .O						(IFM_25M_o_p		),     			// Diff_p output (connect directly to top-level port)
      .OB					(IFM_25M_o_n		),   				// Diff_n output (connect directly to top-level port)
      .I						(pll_25M				)      			// Buffer input 
   );
//------------�����FPGA1��25MHzʱ��------------------
OBUFDS #(
		.IOSTANDARD			("DEFAULT"			) 					// Specify the output I/O standard
) OBUFDS_FPGA1 (
		.O						(clk_25M_o_p		),     			// Diff_p output (connect directly to top-level port)
		.OB					(clk_25M_o_n		),   				// Diff_n output (connect directly to top-level port)
		.I						(IFM_25M_i			)      			// Buffer input 
);
//------------------�������---------------------------
decode	inst_decode(
		.glb_100M			(pll_100M			),					//
		.rst_n				(rst_n				),
		.FPRI					(FPRI					),
		.code					(code					),					//���п�����
		.PRI					(PRI					),  				//
		.check_code1		(check_code1		),					//У����1   AA
		.check_code2		(check_code2		),					//У����1   55
		.work_mode			(work_mode			),					//����ģʽ
		.ver_code			(ver_code			),					//��λ��
		.hor_code			(hor_code			),					//
		.wave_code			(wave_code			),					//������
		.fre_code			(fre_code			),					//Ƶ����
		.pri_code			(pri_code			),					//������
		.pulse_mode			(pulse_mode),							//����ģʽ
		.monitor_addr		(monitor_addr		),					//����ַ
		.monitor_mode		(monitor_mode		),					//���ģʽ
		.hor_phase_R		(hor_phase_R		),					//���շ�λ����ֵ
		.ver_phase_R		(ver_phase_R		),					//������������ֵ
		.hor_phase_T		(hor_phase_T		),					//���䷽λ����ֵ
		.ver_phase_T		(ver_phase_T		),
		.flag					(flag					)
		);
//-----------------��������ģ�飬��ѡ���ڲ�Դ���ⲿԴ----------------
sig	inst_sig(
		.clk_100M			(pll_100M			),    	//
		.rst_n				(rst_n				),
		.locked				(locked				),			//������ʱ��
		.sim_sel				(sig_sel				),			//ѡ���ڲ�Դ�����ⲿԴ��=1ʱΪ�ڲ�Դ
		.work_mode			(work_mode			),
		.wave_code			(wave_code			),
		.hor_code			(hor_code			),
		.pri_code			(pri_code			),
		.PRI					(PRI					),
		
		.bisuo_sclr			(bisuo_sclr			),			//����������
		.bisuo_st			(bisuo_st			),			//��������ʼ
		.bisuo_width		(bisuo_width		),			//�����ڿ��
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
		.AD_he				(AD_he				),			//AD�ɼ�����
		.AD_fw				(AD_fw				),
		.AD_fy				(AD_fy				),
		.TRIG0				(TRIG0				)
		);		
//----------------����ģ��---------------------------------------			
ddc_top	inst_ddc(
			.clk				(pll_100M			),					//����100MHzʱ��
			.rst_n			(rst_n				),
			.AD_he			(AD_he				),					//��ͨ��
			.AD_fw			(AD_fw				),					//��λ��ͨ��
			.AD_fy			(AD_fy				),					//������ͨ��
			.PRI				(PRI					),					//��������PRI�źţ�������λ�ź����ã���FIR���и�λ����
//			.cpi_st			(cpi_st				),
			.work_mode_ifm	(work_mode			),					//
			.fir_he_I		(fir_he_I			),					//FIR����ĺ�·I·����
			.fir_he_Q		(fir_he_Q			),					//FIR����ĺ�·Q·����
			.fir_fw_I		(fir_fw_I			),					//FIR����ķ�λ��·I·����
			.fir_fw_Q		(fir_fw_Q			),					//FIR����ķ�λ��·Q·����
			.fir_fy_I		(fir_fy_I			),					//FIR����ĸ�����·I·����
			.fir_fy_Q		(fir_fy_Q			),					//FIR����ĸ�����·Q·����	
			.rdy_20M			(rdy_20M				),
			.rdy_1M			(rdy_1M				),
//			.rdy_2_5M		(rdy_2_5M			),
			.TRIG1			(TRIG1				)
			);		

//-----------------srio------------------------------------------
srio_top inst_srio( 
			.SRIO_SYS_CLKP	(SRIO_SYS_CLKP		),	 				//srio ʱ�� 156.25MHz
			.SRIO_SYS_CLKN	(SRIO_SYS_CLKN		), 
			.SRIO_TXP0		(SRIO_TXP0			),					//4*srio data port 
			.SRIO_TXN0		(SRIO_TXN0			),
			.SRIO_TXP1		(SRIO_TXP1			),
			.SRIO_TXN1		(SRIO_TXN1			),
			.SRIO_TXP2		(SRIO_TXP2			),
			.SRIO_TXN2		(SRIO_TXN2			),
			.SRIO_TXP3		(SRIO_TXP3			),
			.SRIO_TXN3		(SRIO_TXN3			),
	 		.SRIO_RXP0		(SRIO_RXP0			),
			.SRIO_RXN0		(SRIO_RXN0			),
			.SRIO_RXP1		(SRIO_RXP1			),
			.SRIO_RXN1		(SRIO_RXN1			),
			.SRIO_RXP2		(SRIO_RXP2			),
			.SRIO_RXN2		(SRIO_RXN2			),
			.SRIO_RXP3		(SRIO_RXP3			),
			.SRIO_RXN3  	(SRIO_RXN3			),
			.srio_usr_clk	(srio_usr_clk		),
			.srio_db_resp	(srio_db_resp		),					//������Ӧ�źţ��ó���û�з����壬��˸��ź�û���õ�
			.PRI				(PRI					),					//�������ͻ���������ź�
//			.cpi_st			(cpi_st				),
			.work_mode_ifm	(work_mode			),
			.rst_n			(rst_n				),
			.pll_100M		(pll_100M			),					//fifoдʱ��
			.fir_20M_rdy	(rdy_20M				),
			.fir_1M_rdy		(rdy_1M				),
//			.fir_2_5M_rdy	(rdy_2_5M			),
			.he				({3'b001,25'b0,fir_he_Q,fir_he_I}),		//��IQƴ��36λ���ڵ�λ����3λ���ڱ�־��һ·
			.fw				({3'b010,25'b0,fir_fw_Q,fir_fw_I}),		//��IQƴ��36λ���ڵ�λ����3λ���ڱ�־��һ·
			.fy				({3'b100,25'b0,fir_fy_Q,fir_fy_I}),		//��IQƴ��36λ���ڵ�λ����3λ���ڱ�־��һ·
			.sig_sel			(sig_sel				),					//���ⲿԴѡ��
			.clk_sel			(clk_sel				),					//����ʱ��ѡ��
			.bisuo_sclr		(bisuo_sclr			),					//����������
			.bisuo_st		(bisuo_st			),
			.bisuo_width	(bisuo_width		),
			.AD_he			(AD_he				),					//��cmd_DAָ����Чʱ������DA�����ϵ�AD����
			.AD_fw			(AD_fw				),
			.AD_fy			(AD_fy				),
			.TRIG2			(TRIG2				),
			.TRIG3			(TRIG3				)
			);	
//---------��������ϵ�ledÿ��һ������һ��-----------	
led	inst_led(			
			.clk_100M		(pll_100M			),
			.rst_n			(rst_n				),
			.led				(led					)
			);
//---------------������غ�50s�ڶ����ڸ�λ״̬���ȴ�ɨ�������ִ��---------
rst	inst_rst(
			.clk_100M		(pll_100M			),
			.locked			(locked				),
			.rst_n			(rst_n				)
);

ila_inst inst_ila0 (
    .CONTROL			(CONTROL0			), // INOUT BUS [35:0]
    .CLK					(pll_100M			), // IN
    .TRIG0				(TRIG0				) // IN BUS [199:0]
);

ila_inst inst_ila1 (
    .CONTROL			(CONTROL1			), // INOUT BUS [35:0]
    .CLK					(pll_100M			), // IN
    .TRIG0				(TRIG1				) // IN BUS [199:0]
);

ila_inst inst_ila2 (
    .CONTROL			(CONTROL2			), // INOUT BUS [35:0]
    .CLK					(srio_usr_clk		), // IN
    .TRIG0				(TRIG2				) // IN BUS [199:0]
);

ila_inst inst_ila3 (
    .CONTROL			(CONTROL3			), // INOUT BUS [35:0]
    .CLK					(srio_usr_clk		), // IN
    .TRIG0				(TRIG3				) // IN BUS [199:0]
);

icon_inst inst_icon (
    .CONTROL0			(CONTROL0			), // INOUT BUS [35:0]
    .CONTROL1			(CONTROL1			), // INOUT BUS [35:0]
    .CONTROL2			(CONTROL2			), // INOUT BUS [35:0]
   .CONTROL3			(CONTROL3			) // INOUT BUS [35:0]
);

//vio_inst inst_vio (
//    .CONTROL			(CONTROL3			), // INOUT BUS [35:0]
//    .ASYNC_OUT			(ASYNC_OUT			) // IN BUS [7:0]
//);

//assign		sim_sel=	ASYNC_OUT[0];

endmodule
