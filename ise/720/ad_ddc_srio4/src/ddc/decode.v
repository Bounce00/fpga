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
output	reg				PRI					,  				//
output	reg	[ 7:0]	check_code1			,					//У����1   AA
output	reg	[ 7:0]	check_code2			,					//У����1   55
output	reg	[ 7:0]	work_mode			,					//����ģʽ
output	reg	[ 7:0]	ver_code				,					//��λ��
//reg				[ 7:0]	hor_code				,					//
output	reg	[ 7:0]	wave_code			,					//������
output	reg	[ 7:0]	fre_code				,					//Ƶ����
output	reg	[15:0]	pri_code				,					//������
output	reg	[ 7:0]	hor_code				,					//��λ��
output	reg	[ 7:0]	pulse_mode			,					//����ģʽ
output	reg	[ 7:0]	monitor_addr		,					//����ַ
output	reg	[ 7:0]	monitor_mode		,					//���ģʽ
output	reg	[15:0]	hor_phase_R			,					//���շ�λ����ֵ
output	reg	[15:0]	ver_phase_R			,					//������������ֵ
output	reg	[15:0]	hor_phase_T			,					//���䷽λ����ֵ
output	reg	[15:0]	ver_phase_T			,					//������������ֵ
output						flag					
//output			[149:0]	TRIG1						
 );
 
reg				[ 7:0]	hor1_code			;					//ģʽ1��λ��
reg				[ 7:0]	hor2_code			;					//ģʽ2��λ��
reg				[ 7:0]	hor3_code			;					//ģʽ3��λ��
reg				[ 7:0]	pri_code1			;					//�������8bits
reg				[ 7:0]	pri_code2			;					//�������8bits
//------------------------ָ�����---------------------
reg							FPRI_reg				;					//��FPRI�ӳ�һ��100MHzʱ������
reg							FPRI_reg1			;					//
reg							FPRI_reg2			;					//
reg							code_reg				;
reg							code_reg1			;
reg							code_reg2			;
reg				[ 1:0]	segment				;					//��0��3�������൱��100MHz���ķ�Ƶ,������������ָ��
reg				[ 4:0]	num_code				;					//�յ�8bits����������������ܹ���21��bits������
reg				[ 2:0]	cnt_8bit				;					//8bits����
reg				[ 7:0]	data_temp			;					//8bits���ݻ���
reg				[ 7:0]	temp_end				;					//
//-----------------------PRI����������---------------------
reg				[10:0]	cnt_pri				;
//-----------------------��ͷ��֤---------------------------
reg							flag1					;
reg							flag2					;
//---------------------------------------------------------
assign						flag=flag1 | flag2;					//��������ͷ����ȷ����flagΪ0
assign						FPRI_n	=	(FPRI_reg1==1'b0)&&(FPRI_reg2==1'b1);

//------------------����FPRI_reg-------------------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
		begin
			FPRI_reg			<=			1'b0			;
			FPRI_reg1		<=			1'b0			;
			FPRI_reg2		<=			1'b0			;
			code_reg			<=			1'b0			;
			code_reg1		<=			1'b0			;
			code_reg2		<=			1'b0			;
		end
	else	
		begin
			FPRI_reg			<=			FPRI			;
			FPRI_reg1		<=			FPRI_reg		;
			FPRI_reg2		<=			FPRI_reg1	;
			code_reg			<=			code			;
			code_reg1		<=			code_reg		;
			code_reg2		<=			code_reg1	;
		end
end
//------------��FPRIΪ����������segment���൱��100MHz���ķ�Ƶ----------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
			segment			<=			2'b00			;
	else	if(FPRI_n)								//��FPRI�½���
			segment			<=			2'b00			;
	else
			segment			<=			segment+1	;
end
//---------------0��7��������ȡ��8bits�Ŀ�����-------------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
			cnt_8bit			<=			3'b000		;
	else	if(FPRI_reg2==1'b1)
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
	else	if(FPRI_reg2==1'b1)										
			num_code			<=			5'd0			;
	else	if(num_code==5'd23)
			num_code			<=			5'd23			;
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
	else	if(FPRI_reg2==1'b1)
			data_temp		<=			8'd0			;
	else	if((num_code<=22)&&(segment==2'b01))
			data_temp		<=			{data_temp[6:0],code_reg1};
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
			pri_code1			<=			8'd0			;	
			pri_code2			<=			8'd0			;	
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
	else	if(FPRI_n)
		begin
			check_code1			<=			8'd0			;	
			check_code2			<=			8'd0			;		
			work_mode			<=			8'd0			;	
			ver_code				<=			8'd0			;	
			wave_code			<=			8'd0			;	
			fre_code				<=			8'd0			;	
			pri_code1			<=			8'd0			;	
			pri_code2			<=			8'd0			;	
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
			pri_code1			<=			data_temp	;
		8:
			pri_code2			<=			data_temp	;
		9:
			hor1_code			<=			data_temp	;
		10:
			hor2_code			<=			data_temp	;
		11:
			hor3_code			<=			data_temp	;
		12:
			pulse_mode			<=			data_temp	;
		13:
			monitor_addr		<=			data_temp	;
		14:
			monitor_mode		<=			data_temp	;
		15:
			hor_phase_R[7:0]	<=			data_temp	;
		16:
			hor_phase_R[15:8]	<=			data_temp	;
		17:
			ver_phase_R[7:0]	<=			data_temp	;
		18:
			ver_phase_R[15:8]	<=			data_temp	;
		19:
			hor_phase_T[7:0]	<=			data_temp	;
		20:
			hor_phase_T[15:8]	<=			data_temp	;
		21:
			ver_phase_T[7:0]	<=			data_temp	;
		22:
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
//-------------��ȡ��cpi_st��cpi_end-------------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
		begin
			cnt_pri				<=			11'd0			;
			PRI					<=			1'b0			;
		end
	else	if(FPRI_reg1==1'b1)
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

//-----------------���ݹ���ģʽ��ѡ��ǰ�Ĳ�λ-----------------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
			hor_code				<=			8'h00			;
	else	
		case(work_mode)
		8'h01:
			hor_code				<=			hor1_code	;
		8'h02:
			hor_code				<=			hor2_code	;
		8'h03:
			hor_code				<=			hor3_code	;
		default:
			hor_code				<=			hor3_code	;
		endcase
end
//---------------------��������16bits----------------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
			pri_code				<=			16'b0			;
	else
			pri_code				<=			{pri_code2,pri_code1};
end

//assign	TRIG1[2:0]		=	{PRI,FPRI,code};
//assign	TRIG1[13:3]		=	cnt_pri;
//assign	TRIG1[21:14]	=	check_code1;
//assign	TRIG1[29:22]	=	check_code2;
//assign	TRIG1[45:30]	=	pri_code;
//assign	TRIG1[53:46]	=	work_mode;
//assign	TRIG1[61:54]	=	wave_code;
//assign	TRIG1[63:62]	=	segment;
//assign	TRIG1[64]		=	FPRI_n;
//assign	TRIG1[65]		=	FPRI_reg2;
////assign	TRIG1[66]		=	code_reg2;
//assign	TRIG1[71:67]	=	num_code;
//assign	TRIG1[74:72]	=	cnt_8bit;
//assign	TRIG1[82:75]	=	data_temp;

endmodule
