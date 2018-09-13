`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:17:53 12/21/2014 
// Design Name: 
// Module Name:    ddc_test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: �����AD�ź�Ϊ16λ���±�Ƶ����18λ��
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ddc_top(
					    
input								clk				,			//����100MHzʱ��
input								rst_n				,
input					[15:0]	AD_he				,			//��ͨ��
input					[15:0]	AD_fw				,			//��λ��ͨ��
input					[15:0]	AD_fy				,			//������ͨ��
input								PRI				,			//��������PRI�źţ�������λ�ź����ã���FIR���и�λ����
//input								cpi_st			,
input					[ 7:0]	work_mode_ifm		,		//����ģʽ����ѡ��ͬ��fir
output	reg		[17:0]	fir_he_I			,			//FIR����ĺ�·I·����
output	reg		[17:0]	fir_he_Q			,			//FIR����ĺ�·Q·����
output	reg		[17:0]	fir_fw_I			,			//FIR����ķ�λ��·I·����
output	reg		[17:0]	fir_fw_Q			,			//FIR����ķ�λ��·Q·����
output	reg		[17:0]	fir_fy_I			,			//FIR����ĸ�����·I·����
output	reg		[17:0]	fir_fy_Q			,			//FIR����ĸ�����·Q·����
(*keep="true"*)
output	reg					rdy_20M			,
(*keep="true"*)
output	reg					rdy_1M			,
output				[149:0]	TRIG1				
);
//--------------�±�Ƶģ��--------------------
wire              [15:0] 	mix_heI     	;			//�±�Ƶ���ͨ��I·
wire              [15:0] 	mix_heQ	      ;			//�±�Ƶ���ͨ��Q·
wire              [15:0] 	mix_fwI     	;			//�±�Ƶ��λ��ͨ��I·
wire              [15:0] 	mix_fwQ	      ;			//�±�Ƶ��λ��ͨ��Q·
wire              [15:0] 	mix_fyI     	;			//�±�Ƶ������ͨ��I·
wire              [15:0] 	mix_fyQ	      ;			//�±�Ƶ������ͨ��Q·

//--------------20M FIRģ��----------------------
reg					[15:0]	din1_20M			;
reg					[15:0]	din2_20M			;
reg					[15:0]	din3_20M			;
reg					[15:0]	din4_20M			;
reg					[15:0]	din5_20M			;
reg					[15:0]	din6_20M			;
wire					[17:0]	dout1_20M		;
wire					[17:0]	dout2_20M		;
wire					[17:0]	dout3_20M		;
wire					[17:0]	dout4_20M		;
wire					[17:0]	dout5_20M		;
wire					[17:0]	dout6_20M		;
wire								rdy20M			;			//FIR�����READY�ź�
	
//--------------1M FIRģ��----------------------
reg					[15:0]	din1_1M			;
reg					[15:0]	din2_1M			;
reg					[15:0]	din3_1M			;
reg					[15:0]	din4_1M			;
reg					[15:0]	din5_1M			;
reg					[15:0]	din6_1M			;
wire					[17:0]	dout1_1M			;
wire					[17:0]	dout2_1M			;
wire					[17:0]	dout3_1M			;
wire					[17:0]	dout4_1M			;
wire					[17:0]	dout5_1M			;
wire					[17:0]	dout6_1M			;
wire								rdy1M				;			//FIR�����READY�ź�

reg					[ 8:0]	cnt_sclr			;			//���ǵ�FIR���ӳ٣�PRI���ӳ�3us��FIR��λһ��
reg								sclr				;
reg								sclr_20M			;
reg								cpi_st_temp		;
//--------------����ģʽ��ѡ������ĸ�fir------------
wire								fir_sel			;			//1��ʱ��ѡ��1MHz��0��ʱ��ѡ��20MHz
reg					[ 7:0]	work_mode		;

assign				fir_sel	=	((work_mode==8'h01) || (work_mode==8'h03))?1'b1:1'b0;
//assign				cpi_p		=	((cpi_st==1'b1)&&(cpi_st_temp==1'b0))?1'b1:1'b0;
//--------------��PRI������ʱȡ����ǰ�Ĺ���ģʽ------------------
always @ ( posedge clk )
begin
	if(PRI)
			work_mode			<=		work_mode_ifm		;
	else
			work_mode			<=		work_mode			;
end
//------------------��cpi�������ظ�λfir��--------------
//--fir�������rdy�ź��븴λ�źű���ͬ��------------
//always @ ( posedge clk )
//begin
//	if(!rst_n)
//			cpi_st_temp			<=		1'b0					;
//	else
//			cpi_st_temp			<=		cpi_st				;
//end
//--------------��·�˷������---------------------
mix	inst_MIX_he(
			.clk				(clk					),
			.rst				(PRI					),
			.AD_data			(AD_he				),			//AD��·�ź�
			.mix_dataI		(mix_heI				),
			.mix_dataQ		(mix_heQ				)
			);		
mix	inst_MIX_fw(
			.clk				(clk					),
			.rst				(PRI					),
			.AD_data			(AD_fw				),			//AD��λ��·�ź�
			.mix_dataI		(mix_fwI				),
			.mix_dataQ		(mix_fwQ				)
			);		
mix	inst_MIX_fy(
			.clk				(clk					),
			.rst				(PRI					),
			.AD_data			(AD_fy				),			//AD������·�ź�
			.mix_dataI		(mix_fyI				),
			.mix_dataQ		(mix_fyQ				)
			);					

//-----------FIR �˲������˲�+��ȡ-----------------------------
FIR_20M inst_FIR_20M (
			.sclr				(sclr_20M			), 		// input sclr
			.clk				(clk					), 		// input clk
			.rfd				(rfd20M				), 		// ouput rfd
//			.ce				(ce_20M				), 		// input ce
			.rdy				(rdy20M				), 		// ouput rdy
			.din_1			(din1_20M			), 		// input [15 : 0] din_1
			.din_2			(din2_20M			), 		// input [15 : 0] din_2
			.din_3			(din3_20M			), 		// input [15 : 0] din_2
			.din_4			(din4_20M			), 		// input [15 : 0] din_2
			.din_5			(din5_20M			), 		// input [15 : 0] din_2
			.din_6			(din6_20M			), 		// input [15 : 0] din_2
			.dout_1			({w1,dout1_20M}	), 		// ouput [33 : 0] dout_1
			.dout_2			({w2,dout2_20M}	),	 		// ouput [33 : 0] dout_2
			.dout_3			({w3,dout3_20M}	),	 		// ouput [33 : 0] dout_2
			.dout_4			({w4,dout4_20M}	),	 		// ouput [33 : 0] dout_2
			.dout_5			({w5,dout5_20M}	),	 		// ouput [33 : 0] dout_2
			.dout_6			({w6,dout6_20M}	)	 		// ouput [33 : 0] dout_2
			); 
			
//-----------FIR �˲������˲�+��ȡ-----------------------------
//--fir�����19bits����2bits��Ϊ����λ�����ֻ��ȡ��18bits������Чλ------
FIR_1M inst_FIR_1M (
			.sclr				(sclr					), 		// input sclr
			.clk				(clk					), 		// input clk
			.rfd				(rfd1M				), 		// ouput rfd
//			.ce				(ce_20M				), 		// input ce
			.rdy				(rdy1M				), 		// ouput rdy
			.din_1			(din1_1M				), 		// input [15 : 0] din_1
			.din_2			(din2_1M				), 		// input [15 : 0] din_2
			.din_3			(din3_1M				), 		// input [15 : 0] din_2
			.din_4			(din4_1M				), 		// input [15 : 0] din_2
			.din_5			(din5_1M				), 		// input [15 : 0] din_2
			.din_6			(din6_1M				), 		// input [15 : 0] din_2
			.dout_1			({w7,dout1_1M}		), 		// ouput [33 : 0] dout_1
			.dout_2			({w8,dout2_1M}		),	 		// ouput [33 : 0] dout_2
			.dout_3			({w9,dout3_1M}		),	 		// ouput [33 : 0] dout_2
			.dout_4			({w10,dout4_1M}	),	 		// ouput [33 : 0] dout_2
			.dout_5			({w11,dout5_1M}	),	 		// ouput [33 : 0] dout_2
			.dout_6			({w12,dout6_1M}	)	 		// ouput [33 : 0] dout_2
			); 

//------����fir���ӳ٣����PRI��3us��FIR���һ��----------------
always @ ( posedge clk )
begin
	if(PRI)
			cnt_sclr			<=		9'd0				;
	else	if(cnt_sclr<=9'd400)
			cnt_sclr			<=		cnt_sclr+1'b1	;
	else
			cnt_sclr			<=		cnt_sclr			;
end

always @ ( posedge clk )
begin
	if(cnt_sclr==9'd300)
			sclr				<=		1'b1				;
	else
			sclr				<=		1'b0				;
end
//--------------------����20MHz�źţ�fir��λ��ͽ�fifo��գ�����д������----------------
//-----��Ϊ20MHz�ź���Ҫ�ܹ�32�����ݺ�ŷ������ݣ���˲�����һ��PRI�����ݻ���ǰһ��PRI---------
always @ ( posedge clk )
begin
	if(!rst_n)
			sclr_20M							<=		1'b1							;
	else	if((cnt_sclr>=9'd300)&&(cnt_sclr<=9'd350))
			sclr_20M							<=		1'b1							;
	else
			sclr_20M							<=		1'b0							;
end
//------------����mode������ѡ������ĸ�FIR�˲���-----------
always @ ( posedge clk )
begin
	if(!rst_n)
		begin
			din1_20M			<=		16'd0				;
			din2_20M			<=		16'd0				;
			din3_20M			<=		16'd0				;
			din4_20M			<=		16'd0				;
			din5_20M			<=		16'd0				;
			din6_20M			<=		16'd0				;
			din1_1M			<=		16'd0				;
			din2_1M			<=		16'd0				;
			din3_1M			<=		16'd0				;
			din4_1M			<=		16'd0				;
			din5_1M			<=		16'd0				;
			din6_1M			<=		16'd0				;
		end
	else	
		case(fir_sel)											//0ѡ��20MHz fir
		1'b0:
		begin
			din1_20M			<=		mix_heI			;
			din2_20M			<=		mix_heQ			;
			din3_20M			<=		mix_fwI			;
			din4_20M			<=		mix_fwQ			;
			din5_20M			<=		mix_fyI			;
			din6_20M			<=		mix_fyQ			;
			din1_1M			<=		16'd0				;
			din2_1M			<=		16'd0				;
			din3_1M			<=		16'd0				;
			din4_1M			<=		16'd0				;
			din5_1M			<=		16'd0				;
			din6_1M			<=		16'd0				;
		end
		1'b1:														//1ѡ��1MHz fir
		begin
			din1_20M			<=		16'd0				;
			din2_20M			<=		16'd0				;
			din3_20M			<=		16'd0				;
			din4_20M			<=		16'd0				;
			din5_20M			<=		16'd0				;
			din6_20M			<=		16'd0				;
			din1_1M			<=		mix_heI			;
			din2_1M			<=		mix_heQ			;
			din3_1M			<=		mix_fwI			;
			din4_1M			<=		mix_fwQ			;
			din5_1M			<=		mix_fyI			;
			din6_1M			<=		mix_fyQ			;
		end
		default:
		begin
			din1_20M			<=		16'd0				;
			din2_20M			<=		16'd0				;
			din3_20M			<=		16'd0				;
			din4_20M			<=		16'd0				;
			din5_20M			<=		16'd0				;
			din6_20M			<=		16'd0				;
			din1_1M			<=		16'd0				;
			din2_1M			<=		16'd0				;
			din3_1M			<=		16'd0				;
			din4_1M			<=		16'd0				;
			din5_1M			<=		16'd0				;
			din6_1M			<=		16'd0				;
		end
		endcase
end
//------------���ݹ���ģʽѡ������ĸ�FIR�˵����--------------
always @ ( posedge clk )
begin
	if(!rst_n)
		begin
			fir_he_I			<=		18'b0				;
			fir_he_Q			<=		18'b0				;
			fir_fw_I			<=		18'b0				;
			fir_fw_Q			<=		18'b0				;
			fir_fy_I			<=		18'b0				;
			fir_fy_Q			<=		18'b0				;
		end
	else	
		case(fir_sel)
		1'b1:									//baker
		begin
			fir_he_I			<=		dout1_1M			;
			fir_he_Q			<=		dout2_1M			;
			fir_fw_I			<=		dout3_1M			;
			fir_fw_Q			<=		dout4_1M			;
			fir_fy_I			<=		dout5_1M			;
			fir_fy_Q			<=		dout6_1M			;
		end
		1'b0:								//lfm
		begin
			fir_he_I			<=		dout1_20M		;
			fir_he_Q			<=		dout2_20M		;
			fir_fw_I			<=		dout3_20M		;
			fir_fw_Q			<=		dout4_20M		;
			fir_fy_I			<=		dout5_20M		;
			fir_fy_Q			<=		dout6_20M		;
		end
		default:
		begin
			fir_he_I			<=		18'b0				;
			fir_he_Q			<=		18'b0				;
			fir_fw_I			<=		18'b0				;
			fir_fw_Q			<=		18'b0				;
			fir_fy_I			<=		18'b0				;
			fir_fy_Q			<=		18'b0				;
		end
		endcase
end
//------------�������ݴ���һ�ģ���rdy�ź�Ҳ��һ��--------
always @ ( posedge clk )
begin
			rdy_20M			<=		rdy20M			;
			rdy_1M			<=		rdy1M				;
end

assign	TRIG1[1:0]		=		{rdy_20M,rdy_1M};
assign	TRIG1[19:2]		=		fir_he_I;
assign	TRIG1[37:20]	=		fir_he_Q;
assign	TRIG1[46:38]	=		cnt_sclr;
assign	TRIG1[47]		=		sclr;
assign	TRIG1[55:48]	=		work_mode_ifm;
assign	TRIG1[73:56]	=		fir_fw_I;
assign	TRIG1[74]		=		PRI;
assign	TRIG1[90:75]	=		din1_20M;
assign	TRIG1[116:91]	=		din1_1M;
assign	TRIG1[117]		=		fir_sel;
assign	TRIG1[133:118]	=		AD_he;
assign	TRIG1[148:134]	=		AD_fw;
assign	TRIG1[149]		=		rst_n;


endmodule
