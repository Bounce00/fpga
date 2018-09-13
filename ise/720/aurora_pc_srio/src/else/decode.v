`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:42 04/11/2015 
// Design Name: 
// Module Name:    decode 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//�����յ��Ŀ����������������PRI
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module decode(

input							glb_100M				,					//
input							rst_n					,
input							FPRI					,
input							code					,
(*keep="true"*)
output	reg				PRI					,  				//
//output	reg				CPI_ST				,  				//CPI��ʼ
output	reg	[ 7:0]	check_code1			,					//У����1   AA
output	reg	[ 7:0]	check_code2			,					//У����1   55
(*keep="true"*)
output	reg	[ 7:0]	work_mode			,					//����ģʽ
(*keep="true"*)
output	reg	[ 7:0]	ver_code				,					//��λ��
//reg				[ 7:0]	hor_code				,					//
(*keep="true"*)
output	reg	[ 7:0]	wave_code			,					//������
(*keep="true"*)
output	reg	[ 7:0]	fre_code				,					//Ƶ����
(*keep="true"*)
output	reg	[ 7:0]	pri_code				,					//������
(*keep="true"*)
output	reg	[ 7:0]	hor1_code			,					//ģʽ1��λ��
(*keep="true"*)
output	reg	[ 7:0]	hor2_code			,					//ģʽ2��λ��
(*keep="true"*)
output	reg	[ 7:0]	hor3_code			,					//ģʽ3��λ��
(*keep="true"*)
output	reg	[ 7:0]	pulse_mode			,					//����ģʽ
(*keep="true"*)
output	reg	[ 7:0]	monitor_addr		,					//����ַ
(*keep="true"*)
output	reg	[ 7:0]	monitor_mode		,					//���ģʽ
(*keep="true"*)
output	reg	[15:0]	hor_phase_R			,					//���շ�λ����ֵ
(*keep="true"*)
output	reg	[15:0]	ver_phase_R			,					//������������ֵ
(*keep="true"*)
output	reg	[15:0]	hor_phase_T			,					//���䷽λ����ֵ
(*keep="true"*)
output	reg	[15:0]	ver_phase_T			,					//������������ֵ
output						flag					
 );
//------------------------ָ�����---------------------
reg							FPRI_reg				;					//��FPRI�ӳ�һ��100MHzʱ������
reg				[ 1:0]	segment				;					//��0��3�������൱��100MHz���ķ�Ƶ,������������ָ��
reg				[ 4:0]	num_code				;					//�յ�8bits����������������ܹ���21��bits������
reg				[ 2:0]	cnt_8bit				;					//8bits����
reg				[ 7:0]	data_temp			;					//8bits���ݻ���
reg				[ 7:0]	temp_end				;					//
//-----------------------PRI����������---------------------
reg				[10:0]	cnt_pri				;
//----------------------rom addr control------------------
//(*keep="true"*)
//reg				[15:0]	cnt					;
//-----------------------��ͷ��֤---------------------------
reg							flag1					;
reg							flag2					;
//---------------------------------------------------------
assign						flag=flag1 | flag2;					//��������ͷ����ȷ����flagΪ0
 //------------------����FPRI_reg-------------------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
			FPRI_reg			<=			1'b0			;
	else	
			FPRI_reg			<=			FPRI			;
end
//------------��FPRIΪ����������segment���൱��100MHz���ķ�Ƶ----------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
			segment			<=			2'b00			;
	else	if({FPRI,FPRI_reg}==2'b01)								//��FPRI�½���
			segment			<=			2'b00			;
	else
			segment			<=			segment+1	;
end
//---------------0��7��������ȡ��8bits�Ŀ�����-------------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
			cnt_8bit			<=			3'b000		;
	else	if({FPRI,FPRI_reg}==2'b01)
			cnt_8bit			<=			3'b000		;
	else	if(segment==2'b01)
			cnt_8bit			<=			cnt_8bit+1	;
	else
			cnt_8bit			<=			cnt_8bit		;
end
//-------------ȡ��21��8bits���ݣ�����21��ֹͣ����-------------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
			num_code			<=			5'd0			;
	else	if({FPRI,FPRI_reg}==2'b01)								//��FPRI�½���
			num_code			<=			5'd0			;
	else	if(num_code==5'd22)
			num_code			<=			5'd22			;
	else	if((cnt_8bit==3'b111)&&(segment==2'b01))
			num_code			<=			num_code+1	;
	else
			num_code			<=			num_code		;
end
//--------------------�Ĵ沢������-------------------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
			data_temp		<=			8'd0			;
	else	if({FPRI,FPRI_reg}==2'b01)
			data_temp		<=			8'd0			;
	else	if((num_code<=21)&&(segment==2'b01))
			data_temp		<=			{data_temp[6:0],code};
	else
			data_temp		<=			data_temp	;			
end
//-------------------�����п����븳����Ӧ����----------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
		begin	
			check_code1			<=			8'd0			;	
			check_code2			<=			8'd0			;		
			work_mode			<=			8'd0			;	
			ver_code				<=			8'd0			;	
			wave_code			<=			8'd0			;	
			fre_code				<=			8'd0			;	
			pri_code				<=			8'd0			;	
			hor1_code			<=			8'd0			;	
			hor2_code			<=			8'd0			;	
			hor3_code			<=			8'd0			;	
			pulse_mode			<=			8'd0			;	
			monitor_addr		<=			8'd0			;	
			monitor_mode		<=			8'd0			;	
			hor_phase_R			<=			8'd0			;	
			ver_phase_R			<=			8'd0			;	
			hor_phase_T			<=			8'd0			;	
			ver_phase_T			<=			8'd0			;	
		end
	else	if({FPRI,FPRI_reg}==2'b01)
		begin
			check_code1			<=			8'd0			;	
			check_code2			<=			8'd0			;		
			work_mode			<=			8'd0			;	
			ver_code				<=			8'd0			;	
			wave_code			<=			8'd0			;	
			fre_code				<=			8'd0			;	
			pri_code				<=			8'd0			;	
			hor1_code			<=			8'd0			;	
			hor2_code			<=			8'd0			;	
			hor3_code			<=			8'd0			;	
			pulse_mode			<=			8'd0			;	
			monitor_addr		<=			8'd0			;	
			monitor_mode		<=			8'd0			;	
			hor_phase_R			<=			8'd0			;	
			ver_phase_R			<=			8'd0			;	
			hor_phase_T			<=			8'd0			;	
			ver_phase_T			<=			8'd0			;	
		end
	else	if(cnt_8bit==3'b000)
		case(num_code)
		1:
			check_code1			<=			data_temp	;
		2:
			check_code2			<=			data_temp	;
		3:
			work_mode			<=			data_temp	;
		4:
			ver_code				<=			data_temp	;
		5:
			wave_code			<=			data_temp	;
		6:
			fre_code				<=			data_temp	;
		7:
			pri_code				<=			data_temp	;
		8:
			hor1_code			<=			data_temp	;
		9:
			hor2_code			<=			data_temp	;
		10:
			hor3_code			<=			data_temp	;
		11:
			pulse_mode			<=			data_temp	;
		12:
			monitor_addr		<=			data_temp	;
		13:
			monitor_mode		<=			data_temp	;
		14:
			hor_phase_R[7:0]	<=			data_temp	;
		15:
			hor_phase_R[15:8]	<=			data_temp	;
		16:
			ver_phase_R[7:0]	<=			data_temp	;
		17:
			ver_phase_R[15:8]	<=			data_temp	;
		18:
			hor_phase_T[7:0]	<=			data_temp	;
		19:
			hor_phase_T[15:8]	<=			data_temp	;
		20:
			ver_phase_T[7:0]	<=			data_temp	;
		21:
			ver_phase_T[15:8]	<=			data_temp	;
		default:
			temp_end				<=			data_temp	;
		endcase
end
//--------------��ͷ��֤---------------------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
			flag1					<=			1'b0			;
	else	if(check_code1==8'haa)										//��һ����ͷΪaa
			flag1					<=			1'b0			;
	else
			flag1					<=			1'b1			;
end

always @ ( posedge glb_100M )
begin
	if(!rst_n)
			flag2					<=			1'b0			;
	else	if(check_code2==8'h55)										//�ڶ�����ͷΪ55
			flag2					<=			1'b0			;
	else
			flag2					<=			1'b1			;
end

//-------------FPRI�½���20us�󣬲���PRI--------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
		begin
			cnt_pri				<=			11'd0			;
			PRI					<=			1'b0			;
		end
	else	if({FPRI,FPRI_reg}==2'b01)
		begin
			cnt_pri				<=			11'd0			;
		end
	else	if((cnt_pri>=11'd2000)&&(cnt_pri<=11'd2003))		//PRI�ߵ�ƽ40ns
		begin
			cnt_pri				<=			cnt_pri+1	;
			PRI					<=			1'b1			;
		end
	else	if(cnt_pri<2000)
		begin
			cnt_pri				<=			cnt_pri+1	;
			PRI					<=			1'b0			;
		end
	else
		begin
			cnt_pri				<=			cnt_pri		;
			PRI					<=			1'b0			;
		end
end

endmodule
