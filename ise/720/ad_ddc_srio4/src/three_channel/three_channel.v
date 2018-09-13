`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:41:33 04/14/2015 
// Design Name: 
// Module Name:    three2one 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: ����·�źŷֱ��͵�fsp4���3Ƭfpga����ÿ·�ź��Ȼ��棬Ȼ�󰴰��ֱ���
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module three_channel(
input									wr_clk				,			//100MHz	
input									rd_clk				,			//156.25MHz
input									rst_n					,
input									PRI					,
input									normal_trigger_he	,			//he·���ݴ����־
input									normal_trigger_fw	,			//fw·���ݴ����־
input									normal_trigger_fy	,			//fy·���ݴ����־
input					[63:0]		he						,			//��IQƴ��36λ���ڵ�λ����28λ��0
input					[63:0]		fw						,			//��IQƴ��36λ���ڵ�λ����28λ��0
input					[63:0]		fy						,			//��IQƴ��36λ���ڵ�λ����28λ��0
input									fir_20M_rdy			,			//fir������Ч��־
output				[63:0]		fifo_out_he			,			//he·�������
output				[63:0]		fifo_out_fw			,			//fw·�������
output				[63:0]		fifo_out_fy			,			//fy·�������

output				[ 9:0]		data_count_he		,			//fifo�����ݸ���
output				[ 9:0]		data_count_fw		,
output				[ 9:0]		data_count_fy		

);

//---------------3��fifo---------------------------
reg					[63:0]		fifo_in_he			;
reg					[63:0]		fifo_in_fw			;
reg					[63:0]		fifo_in_fy			;
reg									wr_en					;
reg									rd_en_he				;			//3��fifo�Ķ�ʹ��
reg									rd_en_fw				;			
reg									rd_en_fy				;			

wire									full_he				;
wire									full_fw				;
wire									full_fy				;
wire									empty_he				;
wire									empty_fw				;
wire									empty_fy				;
//-----------------pri temp-----------------------
reg									PRI_temp1			;			//156.25MHz delay
reg									PRI_temp2			;			//100MHz		delay
reg									sclr					;
//-----------------------------------------------
always @ ( posedge rd_clk )
begin
	if(!rst_n)
			PRI_temp1		<=		1'b0					;
	else
			PRI_temp1		<=		PRI					;
end

always @ ( posedge wr_clk )
begin
	if(!rst_n)
			PRI_temp2		<=		1'b0					;
	else
			PRI_temp2		<=		PRI					;
end
//-------дʹ����fir_rdy��Ч����λһ��100MHzʱ������--------
always @ ( posedge wr_clk )
begin
	if(!rst_n)
			wr_en				<=		1'b0					;
	else	if(fir_20M_rdy)
			wr_en				<=		1'b1					;
	else
			wr_en				<=		1'b0					;
end
//------------fifo��д�����ݸ�ֵ--------------------------
always @ ( posedge wr_clk )
begin
	if(!rst_n)
		begin
			fifo_in_he		<=		64'b0					;
			fifo_in_fw		<=		64'b0					;
			fifo_in_fy		<=		64'b0					;
		end
	else
		begin
			fifo_in_he		<=		he						;
			fifo_in_fw		<=		fw						;
			fifo_in_fy		<=		fy						;
		end
end

//-------------------ÿ��ֻ��32������------------------------
always @ ( posedge rd_clk )
begin
	if(!rst_n)
		begin
			cnt_rd							<=		6'd0						;
			rd_en								<=		1'b0						;
		end
	else	if(normal_trigger)
		begin
			cnt_rd							<=		6'd1						;
			rd_en								<=		1'b1						;
		end
	else	if(cnt_rd==6'd32)
		begin
			cnt_rd							<=		6'd0						;
			rd_en								<=		1'b0						;
		end
	else	if(cnt_rd>=1)
		begin
			cnt_rd							<=		cnt_rd+1					;
			rd_en								<=		1'b1						;
		end
end
//-------------------------sclr-----------------------------
always @ ( posedge wr_clk )
begin
	if(!rst_n)
			sclr				<=		1'b0				;
	else	if({PRI,PRI_temp2})
			sclr				<=		1'b1				;
	else	
			sclr				<=		1'b0				;
end

//-----------3��fifo�ֱ���ddc�ź�---------------------------
fifo_ddc inst_fifo_he (
		.rst					(sclr						), 		// input rst
		.wr_clk				(wr_clk					), 		// input wr_clk
		.rd_clk				(rd_clk					), 		// input rd_clk
		.din					(fifo_in_he				), 		// input [63 : 0] din
		.wr_en				(wr_en					), 		// input wr_en
		.rd_en				(rd_en_he				), 		// input rd_en
		.dout					(fifo_out_he			), 		// output [63 : 0] dout
		.full					(full_he					), 		// output full
		.empty				(empty_he				), 		// output empty
		.rd_data_count		(data_count_he			) 			// output [9 : 0] rd_data_count
);

fifo_ddc inst_fifo_fw (
		.rst					(sclr						), 		// input rst
		.wr_clk				(wr_clk					), 		// input wr_clk
		.rd_clk				(rd_clk					), 		// input rd_clk
		.din					(fifo_in_fw				), 		// input [63 : 0] din
		.wr_en				(wr_en					), 		// input wr_en
		.rd_en				(rd_fw					), 		// input rd_en
		.dout					(fifo_out_fw			), 		// output [63 : 0] dout
		.full					(full						), 		// output full
		.empty				(empty					), 		// output empty
		.rd_data_count		(data_count_fw			) 			// output [9 : 0] rd_data_count
);

fifo_ddc inst_fifo_fy (
		.rst					(sclr						), 		// input rst
		.wr_clk				(wr_clk					), 		// input wr_clk
		.rd_clk				(rd_clk					), 		// input rd_clk
		.din					(fifo_in_fy				), 		// input [63 : 0] din
		.wr_en				(wr_en					), 		// input wr_en
		.rd_en				(rd_fy					), 		// input rd_en
		.dout					(fifo_out_fy			), 		// output [63 : 0] dout
		.full					(full						), 		// output full
		.empty				(empty					), 		// output empty
		.rd_data_count		(data_count_fy			) 			// output [9 : 0] rd_data_count
);

endmodule
