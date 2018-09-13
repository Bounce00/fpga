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
// Dependencies: 将三路信号分别传送到fsp4板的3片fpga，将每路信号先缓存，然后按包分别发送
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
input									normal_trigger_he	,			//he路数据传输标志
input									normal_trigger_fw	,			//fw路数据传输标志
input									normal_trigger_fy	,			//fy路数据传输标志
input					[63:0]		he						,			//将IQ拼成36位放在低位，高28位补0
input					[63:0]		fw						,			//将IQ拼成36位放在低位，高28位补0
input					[63:0]		fy						,			//将IQ拼成36位放在低位，高28位补0
input									fir_20M_rdy			,			//fir数据有效标志
output				[63:0]		fifo_out_he			,			//he路数据输出
output				[63:0]		fifo_out_fw			,			//fw路数据输出
output				[63:0]		fifo_out_fy			,			//fy路数据输出

output				[ 9:0]		data_count_he		,			//fifo中数据个数
output				[ 9:0]		data_count_fw		,
output				[ 9:0]		data_count_fy		

);

//---------------3个fifo---------------------------
reg					[63:0]		fifo_in_he			;
reg					[63:0]		fifo_in_fw			;
reg					[63:0]		fifo_in_fy			;
reg									wr_en					;
reg									rd_en_he				;			//3个fifo的读使能
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
//-------写使能在fir_rdy有效后置位一个100MHz时钟周期--------
always @ ( posedge wr_clk )
begin
	if(!rst_n)
			wr_en				<=		1'b0					;
	else	if(fir_20M_rdy)
			wr_en				<=		1'b1					;
	else
			wr_en				<=		1'b0					;
end
//------------fifo的写入数据赋值--------------------------
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

//-------------------每次只读32个数据------------------------
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

//-----------3个fifo分别存放ddc信号---------------------------
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
