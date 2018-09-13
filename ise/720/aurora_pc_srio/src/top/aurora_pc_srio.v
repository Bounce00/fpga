`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:14:46 12/18/2013 
// Design Name: 
// Module Name:    fsp4_v6_fpga1 
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
module aurora_pc_srio(

		input							gclk_100m_p					,
		input							gclk_100m_n					,		
		input    		 			GTXQ0_P						,
		input   		 				GTXQ0_N						,
//		input    				 	GTXQ1_P						,
//		input   		 				GTXQ1_N						,
//--------------------������-----------------------------
		input							FPRI							,
		input							code							,
//////////////////rocket io/////////////////////////////////////
////////////aurora_1T2//////////////////	 
//		input  [ 3:0]    			RXP_2							,
//		input	 [ 3:0]    			RXN_2							,
//		output [ 3:0]    			TXP_2							,
//		output [ 3:0]    			TXN_2							,
//		
//////////////aurora_1T3//////////////////	 
//		input  [ 3:0]    			RXP_3							,
//		input	 [ 3:0]    			RXN_3							,
//		output [ 3:0]    			TXP_3							,
//		output [ 3:0]    			TXN_3							,
//		
////////////aurora_1T4//////////////////	 
		input  [ 3:0]    			RXP_4							,
		input	 [ 3:0]    			RXN_4							,
		output [ 3:0]    			TXP_4							,
		output [ 3:0]    			TXN_4
	 );

//-------------------pll-------------------------------
wire							clk_200m							;
wire							clk_25m							;
wire							clk_100m							;
wire							rst_n								;
//-----------------------------------------------------
wire							ddr2_init_done					;
wire							ddr2_err							;
wire							qdr0_init_done					;
wire							qdr1_init_done					;
wire							qdr0_err							;
wire							qdr1_err							;
wire							GTXQ0_left_i					;
wire							GTXQ1_left_i					;
wire			 	 			HARD_ERR							;
wire			 	 			SOFT_ERR							;
wire	    	 	 			FRAME_ERR						;
wire	[7:0]    			ERR_COUNT						;
wire	[3:0]    			LANE_UP							;
wire			    			CHANNEL_UP						;
wire	 [31:0]				aurora_err_count				;
			
reg   [63:0]    			srio_mem_dout					;
reg							fifo_rd_en						;
reg	[63:0]				compare_data					;
reg							fifo_rd_en_reg					;
reg	[31:0]				error_conter					;
//---------------------------------------------------
wire	[17:0]				ddc_I								;
wire	[17:0]				ddc_Q								;
wire	[15:0]				pc_I								;
wire	[15:0]				pc_Q								;
//---------------------------------------------------
(*keep = "true"*)
wire							PRI								;
	
IBUFDS_GTXE1 IBUFDS_GTXE0_CLK1(
	.I					(GTXQ0_P			),
	.IB				(GTXQ0_N			),
	.CEB				(1'b0				),
	.O					(GTXQ0_left_i	),
	.ODIV2			(					)
				);

//IBUFDS_GTXE1 IBUFDS_GTXE1_CLK1
//(
//	.I					(GTXQ1_P			),
//	.IB				(GTXQ1_N			),
//	.CEB				(1'b0				),
//	.O					(GTXQ1_left_i	),
//	.ODIV2			(					)
//);

sys_clk_w u_sys_clk_w(
	.CLK_IN1_P			(gclk_100m_p	),    
	.CLK_IN1_N			(gclk_100m_n	),    
	.CLK_OUT1			(clk_200M		),       
	.CLK_OUT2			(clk_25M	 		),          
	.CLK_OUT3			(clk_100M		),     
	.LOCKED				(rst_n			)
);   
//------------------�������---------------------------
decode	inst_decode(
		.glb_100M			(clk_100M			),					//
		.rst_n				(rst_n				),
		.FPRI					(FPRI					),
		.code					(code					),					//���п�����
		.PRI					(PRI					),  				//
//		.CPI_ST				(CPI_ST				),  				//CPI��ʼ
		.check_code1		(check_code1		),					//У����1   AA
		.check_code2		(check_code2		),					//У����1   55
		.work_mode			(work_mode			),					//����ģʽ
		.ver_code			(ver_code			),					//��λ��
//		.hor_code			(hor_code			),					//
		.wave_code			(wave_code			),					//������
		.fre_code			(fre_code			),					//Ƶ����
		.pri_code			(pri_code			),					//������
		.hor1_code			(hor1_code			),					//ģʽ1��λ��
		.hor2_code			(hor2_code			),					//ģʽ2��λ��
		.hor3_code			(hor3_code			),					//ģʽ3��λ��
		.pulse_mode			(pulse_mode			),					//����ģʽ
		.monitor_addr		(monitor_addr		),					//����ַ
		.monitor_mode		(monitor_mode		),					//���ģʽ
		.hor_phase_R		(hor_phase_R		),					//���շ�λ����ֵ
		.ver_phase_R		(ver_phase_R		),					//������������ֵ
		.hor_phase_T		(hor_phase_T		),					//���䷽λ����ֵ
		.ver_phase_T		(ver_phase_T		),
		.flag					(flag					)
		);

aurora_8b10b_x4  u_aurora_8b10b_x4_4(
	.HARD_ERR					(HARD_ERR		), 
	.SOFT_ERR					(SOFT_ERR		), 
	.FRAME_ERR					(FRAME_ERR		), 
	.LANE_UP						(LANE_UP			), 
	.CHANNEL_UP					(CHANNEL_UP		),  
	.INIT_CLK					(clk_25m			),	 
	.RESET_N						(rst_n			),	 	
	.PRI							(PRI				),	
	.data_out					({ddc_Q,ddc_I}	),					//ddc������
	.RXP							(RXP_4			), 
	.RXN							(RXN_4			), 
	.TXP							(TXP_4			), 
	.TXN							(TXN_4			),
	.GTXQ0_left_i				(GTXQ0_left_i	)
);

//--------------------DPC------------------------------------	
dpc	u_dpc(
		.clk_200M			(pll_200M			),
		.clk_25M				(clk_25M				),
		.ddc_I				(ddc_I				),
		.ddc_Q				(ddc_Q				),
		.PRI					(PRI					),
		.cnt_srio			(cnt_srio			),					//��ѹ��Ҫ��������ݼ���
		.pc_I					(pc_I					),
		.pc_Q					(pc_Q					)
);

assign  aurora_err_count = {8'b0, HARD_ERR, SOFT_ERR, FRAME_ERR, LANE_UP[3:0], CHANNEL_UP, 8'b0};


endmodule
