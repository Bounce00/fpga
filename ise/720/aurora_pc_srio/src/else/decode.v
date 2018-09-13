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
//将接收到的控制码解析，并产生PRI
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
//output	reg				CPI_ST				,  				//CPI起始
output	reg	[ 7:0]	check_code1			,					//校验码1   AA
output	reg	[ 7:0]	check_code2			,					//校验码1   55
(*keep="true"*)
output	reg	[ 7:0]	work_mode			,					//工作模式
(*keep="true"*)
output	reg	[ 7:0]	ver_code				,					//波位码
//reg				[ 7:0]	hor_code				,					//
(*keep="true"*)
output	reg	[ 7:0]	wave_code			,					//波形码
(*keep="true"*)
output	reg	[ 7:0]	fre_code				,					//频率码
(*keep="true"*)
output	reg	[ 7:0]	pri_code				,					//周期码
(*keep="true"*)
output	reg	[ 7:0]	hor1_code			,					//模式1方位码
(*keep="true"*)
output	reg	[ 7:0]	hor2_code			,					//模式2方位码
(*keep="true"*)
output	reg	[ 7:0]	hor3_code			,					//模式3方位码
(*keep="true"*)
output	reg	[ 7:0]	pulse_mode			,					//脉冲模式
(*keep="true"*)
output	reg	[ 7:0]	monitor_addr		,					//监测地址
(*keep="true"*)
output	reg	[ 7:0]	monitor_mode		,					//监测模式
(*keep="true"*)
output	reg	[15:0]	hor_phase_R			,					//接收方位移相值
(*keep="true"*)
output	reg	[15:0]	ver_phase_R			,					//接收仰角移相值
(*keep="true"*)
output	reg	[15:0]	hor_phase_T			,					//发射方位移相值
(*keep="true"*)
output	reg	[15:0]	ver_phase_T			,					//发射仰角移相值
output						flag					
 );
//------------------------指令接收---------------------
reg							FPRI_reg				;					//比FPRI延迟一个100MHz时钟周期
reg				[ 1:0]	segment				;					//从0到3计数，相当于100MHz的四分频,用来解析串行指令
reg				[ 4:0]	num_code				;					//收到8bits控制码个数计数，总共有21个bits控制码
reg				[ 2:0]	cnt_8bit				;					//8bits计数
reg				[ 7:0]	data_temp			;					//8bits数据缓存
reg				[ 7:0]	temp_end				;					//
//-----------------------PRI产生计数器---------------------
reg				[10:0]	cnt_pri				;
//----------------------rom addr control------------------
//(*keep="true"*)
//reg				[15:0]	cnt					;
//-----------------------字头验证---------------------------
reg							flag1					;
reg							flag2					;
//---------------------------------------------------------
assign						flag=flag1 | flag2;					//若两个字头均正确，则flag为0
 //------------------产生FPRI_reg-------------------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
			FPRI_reg			<=			1'b0			;
	else	
			FPRI_reg			<=			FPRI			;
end
//------------以FPRI为触发，产生segment，相当于100MHz的四分频----------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
			segment			<=			2'b00			;
	else	if({FPRI,FPRI_reg}==2'b01)								//采FPRI下降沿
			segment			<=			2'b00			;
	else
			segment			<=			segment+1	;
end
//---------------0到7计数，即取出8bits的控制码-------------------
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
//-------------取出21个8bits数据，超过21后，停止计数-------------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
			num_code			<=			5'd0			;
	else	if({FPRI,FPRI_reg}==2'b01)								//采FPRI下降沿
			num_code			<=			5'd0			;
	else	if(num_code==5'd22)
			num_code			<=			5'd22			;
	else	if((cnt_8bit==3'b111)&&(segment==2'b01))
			num_code			<=			num_code+1	;
	else
			num_code			<=			num_code		;
end
//--------------------寄存并行数据-------------------------
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
//-------------------将并行控制码赋到相应变量----------------
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
//--------------字头验证---------------------------
always @ ( posedge glb_100M )
begin
	if(!rst_n)
			flag1					<=			1'b0			;
	else	if(check_code1==8'haa)										//第一个字头为aa
			flag1					<=			1'b0			;
	else
			flag1					<=			1'b1			;
end

always @ ( posedge glb_100M )
begin
	if(!rst_n)
			flag2					<=			1'b0			;
	else	if(check_code2==8'h55)										//第二个字头为55
			flag2					<=			1'b0			;
	else
			flag2					<=			1'b1			;
end

//-------------FPRI下降沿20us后，产生PRI--------------
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
	else	if((cnt_pri>=11'd2000)&&(cnt_pri<=11'd2003))		//PRI高电平40ns
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
