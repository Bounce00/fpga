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
		input          			SRIO_SYS_CLKP		,	 			//srio ʱ�� 156.25MHz
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
		output						srio_db_resp		,				//���ն˿ڵ�doorbell����
		input							PRI					,				//fifo����
		input				[ 7:0]	work_mode_ifm			,
		input							rst_n					,
		input				[63:0]	he						,				//Ҫ���������
		input				[63:0]	fw						,				//Ҫ���������
		input				[63:0]	fy						,				//Ҫ���������
		input							pll_100M				,				//fifoдʱ��
		input							fir_20M_rdy			,
		input							fir_1M_rdy			,
//		output    reg   [ 7:0]  cmd_DA				,
		output	 		 			sig_sel				,				//����/�����ź�ѡ��  ���ڲ�Դ/�ⲿԴѡ��0Ϊ�ⲿԴ��1Ϊ�ڲ�Դ
		output	 		 			clk_sel				,				//���ⲿʱ��ѡ��  0Ϊ�ⲿʱ�ӣ�1Ϊ���Ͼ���ʱ��
		output	 					bisuo_sclr			,				//��������0ѡ��0Ϊ��������0,1Ϊ����0
		output	 		 [ 7:0]	bisuo_st				,				//��������0��ʼ
		output	 		 [ 7:0]  bisuo_width			,				//��������0���
		input				 [15:0]	AD_he					,
		input				 [15:0]	AD_fw					,
		input				 [15:0]	AD_fy					,
		output			[149:0]	TRIG2					,
		output			[149:0]	TRIG3					
		);
//wire							srio_usr_clk					;			//156.25MHz
wire							srio_usr_rst_n					;
//----------------target�˿�-------------------------
(*KEEP="TRUE"*)
wire           			target_wr						;   		//target�˿ڵ�д������д��
wire           			target_rd						;   		//target����
(*KEEP="TRUE"*)
wire  [31:0]   			target_addr						; 
wire  [63:0]   			target_dout						; 
(*KEEP="TRUE"*)
wire  [63:0]   			target_din						;			//�����������ݵĹ��ܣ���ʵ��û��Ҫ���յ�����
wire  [ 7:0]    			target_bus_sel					;
wire  [ 7:0]  				cmd_DA							;
//-----------------srio����---------------------------
wire  [ 7:0]    			ucfg_dest_id					;
wire  [31:0]    			ucfg_src_start_addr			;
wire  [33:0]    			ucfg_dest_start_addr			;
(*KEEP="TRUE"*)
wire  [ 8:0]    			ucfg_byte_count				;
wire  [15:0]    			ucfg_db_info					;
wire  			 			ucfg_wr_n						;
wire  			 			ucfg_normal_trigger			;
wire  			 			ucfg_db_trigger				;
//------------------initiator�˿�---------------------
wire            			initiator_wren					;			//initiator�˿�д�˿���д��
wire           			initiator_rden					;			//initiator�˿ڶ���
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
    .ucfg_byte_count			(ucfg_byte_count		), 			//in			һ����Ҫ���͵����ݴ�С
    .ucfg_db_info				(ucfg_db_info			), 			//in			��������
    .ucfg_wr_n					(ucfg_wr_n				), 			//in
    .ucfg_normal_trigger	(ucfg_normal_trigger	), 			//in			�������ݴ���
    .ucfg_db_trigger			(ucfg_db_trigger		),   			//in			�������崥��
//initial_memory         
    .initiator_wren			(initiator_wren		), 			//out
    .initiator_rden			(initiator_rden		), 			//out
    .initiator_addr			(initiator_addr		), 			//out
    .initiator_din			(initiator_din			), 			//out
    .initiator_dout			(initiator_dout		), 			//in
    .srio_db_resp				(srio_db_resp			), 			//out			���巴�����Է��յ�����󣬻ᷴ��һ�������ź�
    .srio_initial_busy		(srio_initial_busy	)				//out			�ڷ�������ʱΪ1��δ����ʱ����ʱΪ0
);
//---------------target���ݵ�ַ����---------------------
target_in_align u_target_in_align(
   .clk							(srio_usr_clk			), 
	.sys_rst_n					(srio_usr_rst_n		),
	.target_wr					(target_wr				),				//������Ч��־����д������ݶ���
	.bus_en_in          		(target_bus_sel		),				//����ѡ���źţ�����PPC��*ָ��������ݣ����ֵΪ0xf0
	.addrin             		(target_addr			),				//��ַ
	.din                		(target_din				),				//target�˿ڽ��յ�����ƫ�Ƶ���λ��ַ��Ľ��
	.cmd_DA						(cmd_DA					),
	.sig_sel						(sig_sel					),				//���ⲿԴѡ��
	.clk_sel						(clk_sel					),				//ʱ��ѡ��
	.bisuo_sclr					(bisuo_sclr				),				//����������
	.bisuo_st					(bisuo_st				),
	.bisuo_width				(bisuo_width			),
	.TRIG3						(TRIG3					)
);

//-----------------initiator�˿�����-------------------
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
	.AD_he						(AD_he						),				//AD�źţ����͵�DA����
	.AD_fw						(AD_fw						),
	.AD_fy						(AD_fy						),
	.srio_db_resp				(srio_db_resp				), 			//������Ӧ�źţ��ڸó�����û���õ�����Ϊ�ó�����Ҫ������
	.srio_initial_busy		(srio_initial_busy		),
	
	.ucfg_dest_id				(ucfg_dest_id				), 			//Ŀ��ID
	.ucfg_src_start_addr		(ucfg_src_start_addr		), 			//Դ��ʼ��ַ
	.ucfg_dest_start_addr	(ucfg_dest_start_addr	), 			//Ŀ����ʼ��ַ
	.ucfg_byte_count			(ucfg_byte_count			), 			//256����ÿ���к�����������С������256Bytes
	.ucfg_db_info				(ucfg_db_info				), 			//��������
	.ucfg_wr_n					(ucfg_wr_n					), 			//��д����
	.initiator_dout			(initiator_dout			),				//���ݷ��Ͷ˿ڣ����ݴӸö˿ڷ��ͳ�ȥ
	.ucfg_normal_trigger		(ucfg_normal_trigger		), 			//�������ݴ���
	.ucfg_db_trigger			(ucfg_db_trigger			),				//���崥��
	.TRIG2						(TRIG2						)
//	.TRIG0						(TRIG0						)
	);

endmodule
