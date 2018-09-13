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

//---------------板上100MHz晶振----------------
input							OSC_100M				,
//--------------频宗输入的100MHz时钟------------
input							FMC_100M_p			,
input							FMC_100M_n			,
//---------------IFM输入的控制信号--------------	 
input							FPRI					,					//IFM送来的 FPRI信号
input							code					,					//IFM送来的串行控制码		
//--------------输出给IFM的时钟-------------------系统时钟由频宗输入100MHz到鉴相板，鉴相板经过锁相环分出25MHz时钟到接口板,
output						IFM_25M_o_p			,	//接口板接收的25MHz时钟再传给鉴相板和脉压板，鉴相板和脉压板的系统时间都由接口板
output						IFM_25M_o_n			,	//传来的25MHz时钟产生
//--------------IFM输入25MHz时钟--------------------
input							IFM_25M_i_p			,
input							IFM_25M_i_n			,
//-------------将指令和时钟传给FPGA1----------------------
output						clk_25M_o_p			,
output						clk_25M_o_n			,
output						code_out				,
output						FPRI_out				,
//--------------ADC----------------------
input          			dclk1_p				,					//两个ADC输入的随路时钟
input          			dclk1_n				,
input          			dclk2_p				,
input         				dclk2_n				,
input  			[7:0]	 	di1_p					,					//四路ADC数据，每个AD芯片有两路ADC通道
input  			[7:0]	 	di1_n					, 
input  			[7:0]	 	dq1_p					,
input  			[7:0]	 	dq1_n					,
input  			[7:0]	 	di2_p					,
input  			[7:0]	 	di2_n					, 
input  			[7:0]	 	dq2_p					,
input  			[7:0]	 	dq2_n					,
output         			f_ad9512_sclk		,					//spi		AD9512 时钟分配器配置
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
//--------------------------时钟相关----------------------
wire							FMC_100M				;
wire							pll_100M				;					//DCM产生的100MHz时钟
wire							IFM_25M_i			;					//IFM送来的100MHz时钟当做全局时钟
wire							pll_25M				;
wire							locked				;
//------------------------------------------------
wire							rst_n					;
//------------------------接收到的指令--------------------
wire				[ 7:0]	check_code1			;					//校验码1   AA
wire				[ 7:0]	check_code2			;					//校验码1   55
wire				[ 7:0]	work_mode			;					//工作模式
wire				[ 7:0]	ver_code				;					//波位码
//wire			[ 7:0]	hor_code				;					//
wire				[ 7:0]	wave_code			;					//波形码
wire				[ 7:0]	fre_code				;					//频率码
wire				[15:0]	pri_code				;					//周期码
wire				[ 7:0]	hor_code				;
wire				[ 7:0]	pulse_mode			;					//脉冲模式
wire				[ 7:0]	monitor_addr		;					//监测地址
wire				[ 7:0]	monitor_mode		;					//监测模式
wire				[15:0]	hor_phase_R			;					//接收方位移相值
wire				[15:0]	ver_phase_R			;					//接收仰角移相值
wire				[15:0]	hor_phase_T			;					//发射方位移相值
wire				[15:0]	ver_phase_T			;					//发射仰角移相值
wire							flag					;
//---------------------控制信号------------------
wire							PRI					;
wire				[1:0]		segment				;					//100MHz 4分频
//---------------------rom-------------------------
wire				[15:0]	AD_he					;
wire				[15:0]	AD_fw					;
wire				[15:0]	AD_fy					;
reg				[14:0]	cnt					;					//每30000个时钟一个PRT		
wire							sim_sel				;
//--------------------ddc模块----------------------
wire				[17:0]	fir_he_I				;			//FIR输出的和路I路数据
wire				[17:0]	fir_he_Q				;			//FIR输出的和路Q路数据
wire				[17:0]	fir_fw_I				;			//FIR输出的方位差路I路数据
wire				[17:0]	fir_fw_Q				;			//FIR输出的方位差路Q路数据
wire				[17:0]	fir_fy_I				;			//FIR输出的俯仰差路I路数据
wire				[17:0]	fir_fy_Q				;			//FIR输出的俯仰差路Q路数据
wire							rdy_20M				;			//fir核输出的数据有效标志
wire							rdy_1M				;
//wire							rdy_2_5M				;
//--------------------srio 模块--------------------
wire				[63:0]	tx_data				;

wire	 						sig_sel				;				//工作/测试信号选择  即内部源/外部源选择，0为外部源，1为内部源
wire	 						clk_sel				;				//内外部时钟选择  0为外部时钟，1为板上晶振时钟
wire							bisuo_sclr			;				//闭锁期置0选择，0为闭锁期置0,1为不置0
wire	 			[ 7:0]	bisuo_st				;				//闭锁期置0起始
wire	 			[ 7:0]  	bisuo_width			;				//闭锁期置0宽度
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
//---------------将指令和时钟传给FPGA1----------------------------------
assign			code_out	=	code				;
assign			FPRI_out =  FPRI				;
//------------接收IFM板的25MHz时钟，产生100MHz鉴相板的全局时钟------------
//------------输入源端选择globle buffer-----------------------
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
//-------------生成25MHz时钟输出给IFM板------------------
pll inst_pll_clkout(
		.CLK_IN1				(clk_100M			),    			// IN
		.CLK_OUT1			(pll_25M				)     			// OUT
		); 
//---------接收IFM板的时钟，并将pll产生的100MHz时钟用作全局时钟------
pll2 inst_pll(
		.CLK_IN1				(IFM_25M_i			),    			// IN
		.CLK_OUT1			(pll_100M			),     			// OUT
		.LOCKED				(locked				)
		); 		
//-------------输入25MHz时钟--------------------
IBUFGDS #(
		.DIFF_TERM			("TRUE"				), 				// Differential Termination
		.IOSTANDARD			("DEFAULT"			) 					// Specifies the I/O standard for this buffer
) IBUFGDS_IFM (
		.O						(IFM_25M_i			),  				// Clock buffer output
		.I						(IFM_25M_i_p		),  				// Diff_p clock buffer input
		.IB					(IFM_25M_i_n		) 					// Diff_n clock buffer input
		);		
//-------------输出25MHz时钟--------------------
OBUFDS #(
      .IOSTANDARD			("DEFAULT"			) 					// Specify the output I/O standard
   ) OBUFDS_IFM (
      .O						(IFM_25M_o_p		),     			// Diff_p output (connect directly to top-level port)
      .OB					(IFM_25M_o_n		),   				// Diff_n output (connect directly to top-level port)
      .I						(pll_25M				)      			// Buffer input 
   );
//------------输出到FPGA1的25MHz时钟------------------
OBUFDS #(
		.IOSTANDARD			("DEFAULT"			) 					// Specify the output I/O standard
) OBUFDS_FPGA1 (
		.O						(clk_25M_o_p		),     			// Diff_p output (connect directly to top-level port)
		.OB					(clk_25M_o_n		),   				// Diff_n output (connect directly to top-level port)
		.I						(IFM_25M_i			)      			// Buffer input 
);
//------------------解控制码---------------------------
decode	inst_decode(
		.glb_100M			(pll_100M			),					//
		.rst_n				(rst_n				),
		.FPRI					(FPRI					),
		.code					(code					),					//串行控制码
		.PRI					(PRI					),  				//
		.check_code1		(check_code1		),					//校验码1   AA
		.check_code2		(check_code2		),					//校验码1   55
		.work_mode			(work_mode			),					//工作模式
		.ver_code			(ver_code			),					//波位码
		.hor_code			(hor_code			),					//
		.wave_code			(wave_code			),					//波形码
		.fre_code			(fre_code			),					//频率码
		.pri_code			(pri_code			),					//周期码
		.pulse_mode			(pulse_mode),							//脉冲模式
		.monitor_addr		(monitor_addr		),					//监测地址
		.monitor_mode		(monitor_mode		),					//监测模式
		.hor_phase_R		(hor_phase_R		),					//接收方位移相值
		.ver_phase_R		(ver_phase_R		),					//接收仰角移相值
		.hor_phase_T		(hor_phase_T		),					//发射方位移相值
		.ver_phase_T		(ver_phase_T		),
		.flag					(flag					)
		);
//-----------------数据输入模块，可选择内部源或外部源----------------
sig	inst_sig(
		.clk_100M			(pll_100M			),    	//
		.rst_n				(rst_n				),
		.locked				(locked				),			//看锁定时间
		.sim_sel				(sig_sel				),			//选择内部源还是外部源，=1时为内部源
		.work_mode			(work_mode			),
		.wave_code			(wave_code			),
		.hor_code			(hor_code			),
		.pri_code			(pri_code			),
		.PRI					(PRI					),
		
		.bisuo_sclr			(bisuo_sclr			),			//闭锁期置零
		.bisuo_st			(bisuo_st			),			//闭锁期起始
		.bisuo_width		(bisuo_width		),			//闭锁期宽度
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
		.AD_he				(AD_he				),			//AD采集数据
		.AD_fw				(AD_fw				),
		.AD_fy				(AD_fy				),
		.TRIG0				(TRIG0				)
		);		
//----------------鉴相模块---------------------------------------			
ddc_top	inst_ddc(
			.clk				(pll_100M			),					//输入100MHz时钟
			.rst_n			(rst_n				),
			.AD_he			(AD_he				),					//和通道
			.AD_fw			(AD_fw				),					//方位差通道
			.AD_fy			(AD_fy				),					//俯仰差通道
			.PRI				(PRI					),					//解析出的PRI信号，当做复位信号来用，对FIR进行复位操作
//			.cpi_st			(cpi_st				),
			.work_mode_ifm	(work_mode			),					//
			.fir_he_I		(fir_he_I			),					//FIR输出的和路I路数据
			.fir_he_Q		(fir_he_Q			),					//FIR输出的和路Q路数据
			.fir_fw_I		(fir_fw_I			),					//FIR输出的方位差路I路数据
			.fir_fw_Q		(fir_fw_Q			),					//FIR输出的方位差路Q路数据
			.fir_fy_I		(fir_fy_I			),					//FIR输出的俯仰差路I路数据
			.fir_fy_Q		(fir_fy_Q			),					//FIR输出的俯仰差路Q路数据	
			.rdy_20M			(rdy_20M				),
			.rdy_1M			(rdy_1M				),
//			.rdy_2_5M		(rdy_2_5M			),
			.TRIG1			(TRIG1				)
			);		

//-----------------srio------------------------------------------
srio_top inst_srio( 
			.SRIO_SYS_CLKP	(SRIO_SYS_CLKP		),	 				//srio 时钟 156.25MHz
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
			.srio_db_resp	(srio_db_resp		),					//门铃响应信号，该程序没有发门铃，因此该信号没有用到
			.PRI				(PRI					),					//当做发送缓存的清零信号
//			.cpi_st			(cpi_st				),
			.work_mode_ifm	(work_mode			),
			.rst_n			(rst_n				),
			.pll_100M		(pll_100M			),					//fifo写时钟
			.fir_20M_rdy	(rdy_20M				),
			.fir_1M_rdy		(rdy_1M				),
//			.fir_2_5M_rdy	(rdy_2_5M			),
			.he				({3'b001,25'b0,fir_he_Q,fir_he_I}),		//将IQ拼成36位放在低位，高3位用于标志哪一路
			.fw				({3'b010,25'b0,fir_fw_Q,fir_fw_I}),		//将IQ拼成36位放在低位，高3位用于标志哪一路
			.fy				({3'b100,25'b0,fir_fy_Q,fir_fy_I}),		//将IQ拼成36位放在低位，高3位用于标志哪一路
			.sig_sel			(sig_sel				),					//内外部源选择
			.clk_sel			(clk_sel				),					//内外时钟选择
			.bisuo_sclr		(bisuo_sclr			),					//闭锁期清零
			.bisuo_st		(bisuo_st			),
			.bisuo_width	(bisuo_width		),
			.AD_he			(AD_he				),					//在cmd_DA指令有效时，传到DA总线上的AD数据
			.AD_fw			(AD_fw				),
			.AD_fy			(AD_fy				),
			.TRIG2			(TRIG2				),
			.TRIG3			(TRIG3				)
			);	
//---------控制面板上的led每隔一秒亮灭一次-----------	
led	inst_led(			
			.clk_100M		(pll_100M			),
			.rst_n			(rst_n				),
			.led				(led					)
			);
//---------------程序加载后50s内都处于复位状态，等待扫描命令的执行---------
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
