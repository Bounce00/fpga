`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:52:03 12/19/2013 
// Design Name: 
// Module Name:    fsp5_v6_fpga 
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
module srio_top( 
		input          			SRIO_SYS_CLKP		,	 			//srio 时钟 156.25MHz
		input         	 			SRIO_SYS_CLKN		, 

		output         			SRIO_TXP0			,				//4*srio data port 
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
		output						srio_usr_clk		,
		output						srio_db_resp		,				//接收端口的doorbell反馈
		input							PRI					,				//fifo清零
		input				[ 7:0]	work_mode_ifm			,
		input							rst_n					,
		input				[63:0]	he						,				//要传输的数据
		input				[63:0]	fw						,				//要传输的数据
		input				[63:0]	fy						,				//要传输的数据
		input							pll_100M				,				//fifo写时钟
		input							fir_20M_rdy			,
		input							fir_1M_rdy			,
//		output    reg   [ 7:0]  cmd_DA				,
		output	 		 			sig_sel				,				//工作/测试信号选择  即内部源/外部源选择，0为外部源，1为内部源
		output	 		 			clk_sel				,				//内外部时钟选择  0为外部时钟，1为板上晶振时钟
		output	 					bisuo_sclr			,				//闭锁期置0选择，0为闭锁期置0,1为不置0
		output	 		 [ 7:0]	bisuo_st				,				//闭锁期置0起始
		output	 		 [ 7:0]  bisuo_width			,				//闭锁期置0宽度
		input				 [15:0]	AD_he					,
		input				 [15:0]	AD_fw					,
		input				 [15:0]	AD_fy					,
		output			[149:0]	TRIG2					,
		output			[149:0]	TRIG3					
		);
//wire							srio_usr_clk					;			//156.25MHz
wire							srio_usr_rst_n					;
//----------------target端口-------------------------
(*KEEP="TRUE"*)
wire           			target_wr						;   		//target端口的写操作是写入
wire           			target_rd						;   		//target读出
(*KEEP="TRUE"*)
wire  [31:0]   			target_addr						; 
wire  [63:0]   			target_dout						; 
(*KEEP="TRUE"*)
wire  [63:0]   			target_din						;			//保留接收数据的功能，但实际没有要接收的数据
wire  [ 7:0]    			target_bus_sel					;
wire  [ 7:0]  				cmd_DA							;
//-----------------srio配置---------------------------
wire  [ 7:0]    			ucfg_dest_id					;
wire  [31:0]    			ucfg_src_start_addr			;
wire  [33:0]    			ucfg_dest_start_addr			;
(*KEEP="TRUE"*)
wire  [ 8:0]    			ucfg_byte_count				;
wire  [15:0]    			ucfg_db_info					;
wire  			 			ucfg_wr_n						;
wire  			 			ucfg_normal_trigger			;
wire  			 			ucfg_db_trigger				;
//------------------initiator端口---------------------
wire            			initiator_wren					;			//initiator端口写端口是写出
wire           			initiator_rden					;			//initiator端口读入
wire  [31:0]    			initiator_addr					;
wire  [63:0]    			initiator_din					;
wire              		srio_initial_busy				;
wire  [31:0]   			addrout							;
wire  [63:0]   			dout								;
wire 	[31:0]   		 	initial_manage_dout			;
wire  [63:0]    			initiator_dout					;


//---------------srio-------------------------------------	
srio_v5_6_top u_srio_v5_6_top (
    .sys_clkp					(SRIO_SYS_CLKP			), 
    .sys_clkn					(SRIO_SYS_CLKN			), 
    .rst_n						(1'b1						),     
    .srio_txp0					(SRIO_TXP0				), 
    .srio_txn0					(SRIO_TXN0				), 
    .srio_txp1					(SRIO_TXP1				), 
    .srio_txn1					(SRIO_TXN1				), 
    .srio_txp2					(SRIO_TXP2				), 
    .srio_txn2					(SRIO_TXN2				), 
    .srio_txp3					(SRIO_TXP3				), 
    .srio_txn3					(SRIO_TXN3				), 
    .srio_rxp0					(SRIO_RXP0				), 
    .srio_rxn0					(SRIO_RXN0				), 
    .srio_rxp1					(SRIO_RXP1				), 
    .srio_rxn1					(SRIO_RXN1				), 
    .srio_rxp2					(SRIO_RXP2				), 
    .srio_rxn2					(SRIO_RXN2				), 
    .srio_rxp3					(SRIO_RXP3				), 
    .srio_rxn3					(SRIO_RXN3				),    
    .user_clk					(srio_usr_clk			), 
    .user_rst_n				(srio_usr_rst_n		),
//target_memory     
    .target_wr					(target_wr				), 			//out
    .target_rd					(target_rd				), 			//out
    .target_addr				(target_addr			), 			//out
    .target_dout				(target_dout			), 			//in
    .target_din				(target_din				), 			//out
    .target_bus_sel			(target_bus_sel		), 			//out
//initial_config    
    .ucfg_dest_id				(ucfg_dest_id			), 			//in
    .ucfg_src_start_addr	(ucfg_src_start_addr	), 			//in
    .ucfg_dest_start_addr	(ucfg_dest_start_addr), 			//in
    .ucfg_byte_count			(ucfg_byte_count		), 			//in			一包中要发送的数据大小
    .ucfg_db_info				(ucfg_db_info			), 			//in			门铃内容
    .ucfg_wr_n					(ucfg_wr_n				), 			//in
    .ucfg_normal_trigger	(ucfg_normal_trigger	), 			//in			发送数据触发
    .ucfg_db_trigger			(ucfg_db_trigger		),   			//in			发送门铃触发
//initial_memory         
    .initiator_wren			(initiator_wren		), 			//out
    .initiator_rden			(initiator_rden		), 			//out
    .initiator_addr			(initiator_addr		), 			//out
    .initiator_din			(initiator_din			), 			//out
    .initiator_dout			(initiator_dout		), 			//in
    .srio_db_resp				(srio_db_resp			), 			//out			门铃反馈，对方收到门铃后，会反馈一个门铃信号
    .srio_initial_busy		(srio_initial_busy	)				//out			在发送数据时为1，未发送时数据时为0
);
//---------------target数据地址对齐---------------------
target_in_align u_target_in_align(
   .clk							(srio_usr_clk			), 
	.sys_rst_n					(srio_usr_rst_n		),
	.target_wr					(target_wr				),				//数据有效标志，与写入的数据对齐
	.bus_en_in          		(target_bus_sel		),				//总线选择信号，若是PPC用*指令发来的数据，则该值为0xf0
	.addrin             		(target_addr			),				//地址
	.din                		(target_din				),				//target端口接收的数据偏移到高位地址后的结果
	.cmd_DA						(cmd_DA					),
	.sig_sel						(sig_sel					),				//内外部源选择
	.clk_sel						(clk_sel					),				//时钟选择
	.bisuo_sclr					(bisuo_sclr				),				//闭锁期清零
	.bisuo_st					(bisuo_st				),
	.bisuo_width				(bisuo_width			),
	.TRIG3						(TRIG3					)
);

//-----------------initiator端口配置-------------------
srio_initial_manage u_srio_initial_manage (
	.sys_clk						(srio_usr_clk				), 
	.sys_rst_n					(srio_usr_rst_n			), 
	.pll_100M					(pll_100M					),
	.PRI							(PRI							),
	.work_mode_ifm				(work_mode_ifm				),
	.rst_n						(rst_n						),
	.fir_20M_rdy				(fir_20M_rdy				),
	.fir_1M_rdy					(fir_1M_rdy					),
//	.fir_2_5M_rdy				(fir_2_5M_rdy				),
	.he							(he							),
	.fw							(fw							),
	.fy							(fy							),
	.cmd_DA						(cmd_DA						),
	.AD_he						(AD_he						),				//AD信号，发送到DA总线
	.AD_fw						(AD_fw						),
	.AD_fy						(AD_fy						),
	.srio_db_resp				(srio_db_resp				), 			//门铃相应信号，在该程序中没有用到，因为该程序不需要发门铃
	.srio_initial_busy		(srio_initial_busy		),
	
	.ucfg_dest_id				(ucfg_dest_id				), 			//目的ID
	.ucfg_src_start_addr		(ucfg_src_start_addr		), 			//源起始地址
	.ucfg_dest_start_addr	(ucfg_dest_start_addr	), 			//目的起始地址
	.ucfg_byte_count			(ucfg_byte_count			), 			//256，即每包中含有数据量大小，都是256Bytes
	.ucfg_db_info				(ucfg_db_info				), 			//门铃内容
	.ucfg_wr_n					(ucfg_wr_n					), 			//读写控制
	.initiator_dout			(initiator_dout			),				//数据发送端口，数据从该端口发送出去
	.ucfg_normal_trigger		(ucfg_normal_trigger		), 			//发送数据触发
	.ucfg_db_trigger			(ucfg_db_trigger			),				//门铃触发
	.TRIG2						(TRIG2						)
//	.TRIG0						(TRIG0						)
	);

endmodule
