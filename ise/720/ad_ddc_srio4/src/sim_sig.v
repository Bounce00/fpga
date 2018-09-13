`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:02:33 05/28/2015 
// Design Name: 
// Module Name:    sim_sig 
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
module sim_sig(
input							clk_100M						,
input							rst_n							,
input				[ 7:0]	work_mode_ifm				,
input				[ 7:0]	wave_code_ifm				,
input				[ 7:0]	hor_code_ifm				,
input				[15:0]	pri_code_ifm				,
input							PRI							,
output	reg	[15:0]	AD_he							,
output	reg	[15:0]	AD_fw							,
output	reg	[15:0]	AD_fy							
//output			[149:0]	TRIG0										
    );

//---------------addr����-----------------------
reg							addr_sclr					;
reg				[13:0]	cnt_addr						;
//------------��֤��������PRI�����ش���ʼ�仯------------
reg							hor_sel						;
reg				[ 7:0]	wave_code					;
reg				[ 7:0]	hor_code						;
reg				[ 7:0]	work_mode					;
//reg				[15:0]	pri_code						;
//-----------------temp---------------------
reg							PRI_temp						;
//---------------------rom-------------------------
reg				[15:0]	addr_sea1					;				//�Ժ�����
reg				[14:0]	addr_sea2_20us				;				//�Ժ�СĿ�� 20us
reg				[11:0]	addr_sea2_40us				;				//�Ժ�СĿ�� 40us
reg				[15:0]	addr_air1					;				//�Կվ���̽��
reg				[15:0]	addr_air2_20us				;				//�Կվ���ȷ��
reg				[15:0]	addr_air2_40us				;				//�Կվ���ȷ��
reg				[11:0]	addr_wide					;				//���ʶ��
reg				[10:0]	addr_narrow					;				//խ��ʶ��
		
wire				[15:0]	AD_sea1_he					;
wire				[15:0]	AD_sea1_cha					;
wire				[15:0]	AD_sea2_20us_he			;
wire				[15:0]	AD_sea2_20us_cha			;
wire				[15:0]	AD_sea2_40us_he			;
wire				[15:0]	AD_sea2_40us_cha			;
wire				[15:0]	AD_air1_he					;
wire				[15:0]	AD_air1_cha					;
wire				[15:0]	AD_air2_20us_he			;
wire				[15:0]	AD_air2_20us_cha			;
wire				[15:0]	AD_air2_40us_he			;
wire				[15:0]	AD_air2_40us_cha			;
wire				[15:0]	AD_wide						;
wire				[15:0]	AD_narrow					;

assign			PRI_p=(PRI==1'b1)&&(PRI_temp==1'b0);
//-----------------�����ź�------------------------------------
//-----------------�Ժ�����-------------------------
sig_13us_he inst_sig_13us_he (
			.clka				(clk_100M					),					// input clka
			.wea				(1'b0							),					// input [0 : 0] wea
			.addra			(addr_sea1					),					// input [14 : 0] addra
			.dina				(16'b0						),					// input [15 : 0] dina
			.douta			(AD_sea1_he					) 					// output [15 : 0] douta
			);			
		
sig_13us_cha inst_sig_13us_cha (		
			.clka				(clk_100M					),					// input clka
			.wea				(1'b0							),					// input [0 : 0] wea
			.addra			(addr_sea1					),					// input [14 : 0] addra
			.dina				(16'b0						),					// input [15 : 0] dina
			.douta			(AD_sea1_cha				) 					// output [15 : 0] douta
			);	
//------------�Ժ�СĿ��  20us---------------------------
sig_20us_sea_he inst_sig_20us_sea_he (
			.clka				(clk_100M					),					// input clka
			.wea				(1'b0							),					// input [0 : 0] wea
			.addra			(addr_sea2_20us			),					// input [14 : 0] addra
			.dina				(16'b0						),					// input [15 : 0] dina
			.douta			(AD_sea2_20us_he			) 					// output [15 : 0] douta
			);

sig_20us_sea_cha inst_sig_20us_sea_cha (
			.clka				(clk_100M					),					// input clka
			.wea				(1'b0							),					// input [0 : 0] wea
			.addra			(addr_sea2_20us			),					// input [14 : 0] addra
			.dina				(16'b0						),					// input [15 : 0] dina
			.douta			(AD_sea2_20us_cha			) 					// output [15 : 0] douta
			);	
			
//-----------------�Ժ�СĿ��  40us---------------------------
sig_40us_sea_he inst_sig_40us_sea_he (
			.clka				(clk_100M					),					// input clka
			.wea				(1'b0							),					// input [0 : 0] wea
			.addra			(addr_sea2_40us			),					// input [14 : 0] addra
			.dina				(16'b0						),					// input [15 : 0] dina
			.douta			(AD_sea2_40us_he			) 					// output [15 : 0] douta
			);

sig_40us_sea_cha inst_sig_40us_sea_cha (
			.clka				(clk_100M					),					// input clka
			.wea				(1'b0							),					// input [0 : 0] wea
			.addra			(addr_sea2_40us			),					// input [14 : 0] addra
			.dina				(16'b0						),					// input [15 : 0] dina
			.douta			(AD_sea2_40us_cha			) 					// output [15 : 0] douta
			);		

//------------------�Կ�̽��------------------------
sig_5us_he inst_sig_5us_he (
			.clka				(clk_100M					),					// input clka
			.wea				(1'b0							),					// input [0 : 0] wea
			.addra			(addr_air1					),					// input [14 : 0] addra
			.dina				(16'b0						),					// input [15 : 0] dina
			.douta			(AD_air1_he					) 					// output [15 : 0] douta
			);	

sig_5us_cha inst_sig_5us_cha (
			.clka				(clk_100M					),					// input clka
			.wea				(1'b0							),					// input [0 : 0] wea
			.addra			(addr_air1					),					// input [14 : 0] addra
			.dina				(16'b0						),					// input [15 : 0] dina
			.douta			(AD_air1_cha				) 					// output [15 : 0] douta
			);	
//------------------�Կ�ȷ��------------------------
sig_20us_air_he inst_sig_20us_air_he (
			.clka				(clk_100M					),					// input clka
			.wea				(1'b0							),					// input [0 : 0] wea
			.addra			(addr_air2					),					// input [14 : 0] addra
			.dina				(16'b0						),					// input [15 : 0] dina
			.douta			(AD_air2_he_20us			) 					// output [15 : 0] douta
			);	
			
sig_20us_air_cha inst_sig_20us_air_cha (
			.clka				(clk_100M					),					// input clka
			.wea				(1'b0							),					// input [0 : 0] wea
			.addra			(addr_air2					),					// input [14 : 0] addra
			.dina				(16'b0						),					// input [15 : 0] dina
			.douta			(AD_air2_cha_20us			) 					// output [15 : 0] douta
			);	
			
sig_40us_air_he inst_sig_40us_air_he (
			.clka				(clk_100M					),					// input clka
			.wea				(1'b0							),					// input [0 : 0] wea
			.addra			(addr_air2					),					// input [14 : 0] addra
			.dina				(16'b0						),					// input [15 : 0] dina
			.douta			(AD_air2_he_40us			) 					// output [15 : 0] douta
			);	
			
sig_40us_air_cha inst_sig_40us_air_cha (
			.clka				(clk_100M					),					// input clka
			.wea				(1'b0							),					// input [0 : 0] wea
			.addra			(addr_air2					),					// input [14 : 0] addra
			.dina				(16'b0						),					// input [15 : 0] dina
			.douta			(AD_air2_cha_40us			) 					// output [15 : 0] douta
			);	
//--------------ʶ��ģʽ-----------------------
sig_wide_shibie inst_sig_wide_shibie (
			.clka				(clk_100M					), 				// input clka
			.wea				(1'b0							), 				// input [0 : 0] wea
			.addra			(addr_wide					), 				// input [12 : 0] addra
			.dina				(16'b0						), 				// input [15 : 0] dina
			.douta			(AD_wide						) 					// output [15 : 0] douta
);

sig_narrow_shibie inst_narrow_shibie (
			.clka				(clk_100M					), 				// input clka
			.wea				(1'b0							), 				// input [0 : 0] wea
			.addra			(addr_narrow				), 				// input [12 : 0] addra
			.dina				(16'b0						), 				// input [15 : 0] dina
			.douta			(AD_narrow					) 					// output [15 : 0] douta
);

//---------------------------------------------------------
always @ ( posedge clk_100M )
begin
	if(!rst_n)
			PRI_temp							<=		1'b0						;
	else
			PRI_temp							<=		PRI						;
end

always @ ( posedge clk_100M )
begin
	if(!rst_n)
		begin
			hor_code							<=		8'b0						;
			work_mode						<=		8'b0						;
			wave_code						<=		8'b0						;
//			pri_code							<=		16'b0						;
		end
	else	if(PRI)
		begin
			hor_code							<=		hor_code_ifm			;
			work_mode						<=		work_mode_ifm			;
			wave_code						<=		wave_code_ifm			;
//			pri_code							<=		pri_code_ifm			;
		end
	else
		begin
			hor_code							<=		hor_code					;
			work_mode						<=		work_mode				;
			wave_code						<=		wave_code				;
//			pri_code							<=		pri_code					;
		end
end
//
always @ ( posedge clk_100M )
begin
	if(!rst_n)
			hor_sel							<=		1'b0						;
	else	if((hor_code<=36)&&(hor_code>=8))
			hor_sel							<=		1'b1						;		//hor_selΪ1ʱ��ʾ�������߷�����������
	else
			hor_sel							<=		1'b0						;
end
//----------------------rom��ַ����---------------------------
always @ ( posedge clk_100M )
begin
	if(!rst_n)
			cnt_addr							<=			14'b0					;
	else	if(PRI_p)
			cnt_addr							<=			14'b1					;
	else	case(wave_code)
		8'h01:																			//5us baker
			if(cnt_addr>=1001)
				cnt_addr						<=			14'd0					;
			else	if(cnt_addr>0)
				cnt_addr						<=			cnt_addr+1'b1		;
			else
				cnt_addr						<=			cnt_addr				;
		8'h02:																			//13us baker
			if(cnt_addr>=2601)
				cnt_addr						<=			14'd0					;
			else	if(cnt_addr>0)
				cnt_addr						<=			cnt_addr+1'b1		;
			else
				cnt_addr						<=			cnt_addr				;
		8'h03:																			//20us lfm
			if(cnt_addr>=4001)
				cnt_addr						<=			14'd0					;
			else	if(cnt_addr>0)
				cnt_addr						<=			cnt_addr+1'b1		;
			else
				cnt_addr						<=			cnt_addr				;
		8'h04:																			//20us lfm 2MHz
			if(cnt_addr>=4001)
				cnt_addr						<=			14'd0					;
			else	if(cnt_addr>0)
				cnt_addr						<=			cnt_addr+1'b1		;
			else
				cnt_addr						<=			cnt_addr				;
		8'h06:																			//40us lfm
			if(cnt_addr>=8001)
				cnt_addr						<=			14'd0					;
			else	if(cnt_addr>0)
				cnt_addr						<=			cnt_addr+1'b1		;
			else
				cnt_addr						<=			cnt_addr				;
		8'h07:																			//40us lfm 2MHz
			if(cnt_addr>=8001)
				cnt_addr						<=			14'd0					;
			else	if(cnt_addr>0)
				cnt_addr						<=			cnt_addr+1'b1		;
			else
				cnt_addr						<=			cnt_addr				;
		default:
				cnt_addr						<=			14'b0					;
		endcase
end
//-------------------��ַ����-----------------------------------
always @ ( posedge clk_100M )
begin
	if(!rst_n)
				addr_sclr					<=			1'b0					;
	else	case(work_mode)
		8'h01:																			//�Ժ�����
		case(hor_sel)
			1'b1:																			//�������߷���
			if(((pri_code_ifm==16'd0)||(pri_code_ifm==16'd16))&&(PRI_p))
				addr_sclr					<=			1'b1					;
			else	
				addr_sclr					<=			1'b0					;
			1'b0:																			//Զ�뷨�߷���
			if(((pri_code_ifm==16'd0)||(pri_code_ifm==16'd32))&&(PRI_p))
				addr_sclr					<=			1'b1					;
			else
				addr_sclr					<=			1'b0					;
			default:
				addr_sclr					<=			1'b0					;
		endcase
		8'h02:																			//�Ժ�СĿ��
		case(hor_sel)
			1'b1:																			//�������߷���
			if(((pri_code_ifm==16'd0)||(pri_code_ifm==16'd8))&&(PRI_p))
				addr_sclr					<=			1'b1					;
			else	
				addr_sclr					<=			1'b0					;
			1'b0:																			//Զ�뷨�߷���
			if(((pri_code_ifm==16'd0)||(pri_code_ifm==16'd16))&&(PRI_p))
				addr_sclr					<=			1'b1					;
			else
				addr_sclr					<=			1'b0					;
			default:
				addr_sclr					<=			1'b0					;
			endcase
		8'h03:																			//�Կ�̽��
		case(hor_sel)
			1'b1:																			//�������߷���
			if(((pri_code_ifm==16'd0)||(pri_code_ifm==16'd128)||(pri_code_ifm==16'd256)||(pri_code_ifm==16'd384))&&(PRI_p))
				addr_sclr					<=			1'b1					;
			else	
				addr_sclr					<=			1'b0					;
			1'b0:																			//Զ�뷨�߷���
			if(((pri_code_ifm==16'd0)||(pri_code_ifm==16'd128)||(pri_code_ifm==16'd256)||(pri_code_ifm==16'd384)||(pri_code_ifm==16'd512)||(pri_code_ifm==16'd640)||(pri_code_ifm==16'd768)||(pri_code_ifm==16'd896))&&(PRI_p))
				addr_sclr					<=			1'b1					;
			else
				addr_sclr					<=			1'b0					;
			default:
				addr_sclr					<=			1'b0					;
		endcase
		8'h05:																				//���ʶ��
			if(PRI_p && (pri_code_ifm==16'd1))
				addr_sclr					<=			1'b1					;
			else
				addr_sclr					<=			1'b0					;
		8'h07:																				//���ʶ��  ��ά��
			if(PRI_p && (pri_code_ifm==16'd1))
				addr_sclr					<=			1'b1					;
			else
				addr_sclr					<=			1'b0					;
		8'h06:																				//խ��ʶ��ģʽ
			if(PRI_p && (pri_code_ifm==16'd1))
				addr_sclr					<=			1'b1					;
			else
				addr_sclr					<=			1'b0					;
		8'h08:																				//�Կվ���ȷ��
		case(hor_sel)																		//ֻ����һ�������
			1'b1:																				//�������߷���
			if(((pri_code_ifm==16'd0)||(pri_code_ifm==16'd16))&&(PRI_p))
				addr_sclr					<=			1'b1					;
			else	
				addr_sclr					<=			1'b0					;
			1'b0:																				//Զ�뷨�߷���
			if(((pri_code_ifm==16'd0)||(pri_code_ifm==16'd32))&&(PRI_p))
				addr_sclr					<=			1'b1					;
			else
				addr_sclr					<=			1'b0					;
			default:
				addr_sclr					<=			1'b0					;
		endcase
	default:
				addr_sclr					<=			1'b0					;
	endcase
			
end
//-----------------�Ժ�����ģʽ-------------------------------------
always @ ( posedge clk_100M )
begin
	if(!rst_n)
			addr_sea1						<=			16'b0					;
	else	if(addr_sclr)
			addr_sea1						<=			16'b0					;
	else	if(cnt_addr>1300)
			addr_sea1						<=			addr_sea1+1'b1		;
	else
			addr_sea1						<=			addr_sea1			;
end
//-----------------�Ժ�СĿ��ģʽ   20us-------------------------------------
always @ ( posedge clk_100M )
begin
	if(!rst_n)
			addr_sea2_20us					<=			15'b0					;
	else	if(addr_sclr)
			addr_sea2_20us					<=			15'b0					;
	else	if(cnt_addr>2000)
			addr_sea2_20us					<=			addr_sea2_20us+1'b1		;
	else
			addr_sea2_20us					<=			addr_sea2_20us			;
end
//-----------------�Ժ�СĿ��ģʽ   40us-------------------------------------
always @ ( posedge clk_100M )
begin
	if(!rst_n)
			addr_sea2_40us					<=			12'b0					;
	else	if(PRI_p)
			addr_sea2_40us					<=			12'b0					;
	else	if(cnt_addr>=4000)
			addr_sea2_40us					<=			addr_sea2_40us+1'b1		;
	else
			addr_sea2_40us					<=			addr_sea2_40us			;
end
//-----------------�Կ�̽��-------------------------------------
always @ ( posedge clk_100M )
begin
	if(!rst_n)
			addr_air1						<=			16'b0					;
	else	if(addr_sclr)		
			addr_air1						<=			16'b0					;
	else	if(cnt_addr>500)
			addr_air1						<=			addr_air1+1'b1		;
	else
			addr_air1						<=			addr_air1			;
end
//-----------------�Կ�ȷ��20us-------------------------------------
always @ ( posedge clk_100M )
begin
	if(!rst_n)
			addr_air2_20us					<=			16'b0					;
	else	if(addr_sclr)		
			addr_air2_20us					<=			16'b0					;
	else	if(cnt_addr>2000)
			addr_air2_20us					<=			addr_air2_20us+1'b1		;
	else
			addr_air2_20us					<=			addr_air2_20us			;
end
//-----------------�Կ�ȷ��40us-------------------------------------
always @ ( posedge clk_100M )
begin
	if(!rst_n)
			addr_air2_40us					<=			16'b0					;
	else	if(addr_sclr)		
			addr_air2_40us					<=			16'b0					;
	else	if(cnt_addr>4000)
			addr_air2_40us					<=			addr_air2_40us+1'b1	;
	else
			addr_air2_40us					<=			addr_air2_40us			;
end

//-----------------���ʶ��--------------------------------
always @ ( posedge clk_100M )
begin
	if(!rst_n)
			addr_wide						<=			12'b0					;
	else	if(PRI_p)		
			addr_wide						<=			12'b0					;
	else	if(cnt_addr>=4000)		
			addr_wide						<=			addr_wide+1'b1		;
	else
			addr_wide						<=			addr_wide			;
end
//-----------------խ��ʶ��--------------------------------
always @ ( posedge clk_100M )
begin
	if(!rst_n)
			addr_narrow						<=			12'b0					;
	else	if(PRI_p)		
			addr_narrow						<=			12'b0					;
	else	if(cnt_addr>=2000)		
			addr_narrow						<=			addr_narrow+1'b1		;
	else
			addr_narrow						<=			addr_narrow			;
end
//---------------------AD_data----------------------------------
always @ ( posedge clk_100M )
begin
	if(!rst_n)
		begin
				AD_he							<=			16'b0					;
				AD_fw							<=			16'b0					;
				AD_fy							<=			16'b0					;
		end
	else
	case(work_mode)	
		8'h01:																			//�Ժ�����
			begin
				AD_he							<=			AD_sea1_he			;		
				AD_fw							<=			AD_sea1_cha			;
				AD_fy							<=			AD_sea1_cha			;
			end			
		8'h02:																			//�Ժ�СĿ��
			case(wave_code)
			8'h03:																		//20us lfm
				begin
					AD_he						<=			AD_sea2_20us_he	;		
					AD_fw						<=			AD_sea2_20us_cha	;
					AD_fy						<=			AD_sea2_20us_cha	;
				end
			8'h06:																	//40us lfm
				begin
					AD_he						<=			AD_sea2_40us_he	;		
					AD_fw						<=			AD_sea2_40us_cha	;
					AD_fy						<=			AD_sea2_40us_cha	;
				end				
			default:
				begin
					AD_he						<=			16'b0					;		
					AD_fw						<=			16'b0					;
					AD_fy						<=			16'b0					;
				end
			endcase
		8'h03:																		//�Կվ���̽��
			begin
				AD_he							<=			AD_air1_he			;		
				AD_fw							<=			AD_air1_cha			;
				AD_fy							<=			AD_air1_cha			;
			end
		8'h08:																		//�Կ�ȷ��
			case(wave_code)
			8'h04:																	//20us lfm 2MHz
				begin
					AD_he						<=			AD_air2_20us_he	;
					AD_fw						<=			AD_air2_20us_cha	;
					AD_fy						<=			AD_air2_20us_cha	;
				end
			8'h07:																	//40us lfm 2MHz
				begin
					AD_he						<=			AD_air2_40us_he	;
					AD_fw						<=			AD_air2_40us_cha	;
					AD_fy						<=			AD_air2_40us_cha	;
				end
			default:
				begin
					AD_he						<=			16'b0					;		
					AD_fw						<=			16'b0					;
					AD_fy						<=			16'b0					;
				end
			endcase
		8'h05:																		//���ʶ��		
			begin
				AD_he							<=			AD_wide				;		
				AD_fw							<=			16'b0					;
				AD_fy							<=			16'b0					;
			end
		8'h07:																		//���ʶ��	��ά��		
			begin
				AD_he							<=			AD_wide				;		
				AD_fw							<=			16'b0					;
				AD_fy							<=			16'b0					;
			end  
		8'h06:																		//խ��ʶ��
			begin
				AD_he							<=			AD_narrow			;
				AD_fw							<=			16'b0					;
				AD_fy							<=			16'b0					;
			end
		default:
			begin
				AD_he							<=			16'b0					;		
				AD_fw							<=			16'b0					;
				AD_fy							<=			16'b0					;
			end
		endcase
end
//
////
//assign	TRIG0[1:0]			=	{addr_sclr,PRI};
//assign	TRIG0[15:2]			=	cnt_addr;
//assign	TRIG0[31:16]		=	addr_air1;
//assign	TRIG0[47:32]		=	addr_air2;
//assign	TRIG0[55:48]		=	wave_code;
//assign	TRIG0[62:56]		=	work_mode_ifm[6:0];
//assign	TRIG0[78:63]		=	AD_air2_he;
//assign	TRIG0[94:79]		=	AD_air1_he;
//assign	TRIG0[110:95]		=	AD_fw;
//assign	TRIG0[126:111]		=	AD_he;
//assign	TRIG0[134:127]		=	work_mode;
//assign	TRIG0[147:135]		=	pri_code_ifm[12:0];
//assign	TRIG0[148]			=	PRI_p;
//assign	TRIG0[149]			=	addr_sclr;


endmodule
