`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:53:53 12/21/2014 
// Design Name: 
// Module Name:    mix 
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
module mix(clk,rst,AD_data,mix_dataI,mix_dataQ
    );
input								clk					;			//输入100MHz时钟
input								rst					;			//用PRI当做清零信号
input					[15:0]	AD_data				;
output				[15:0]	mix_dataI			;			//输出I路数据
output				[15:0]	mix_dataQ			;			//输出Q路数据

reg					[ 1:0]	COS					;
reg					[ 1:0]	SIN					;
reg					[ 1:0]	cnt					;

//----------------系数计数------------------------------
always @ ( posedge clk )									//I路系数为1 0 -1 0 ，因此四个周期循环一次
begin
	if(rst)															//Q路系数为0 1 0 -1 ，因此四个周期循环一次
		cnt			<=			2'b0		;
	else
		cnt			<=			cnt+1		;
end

//----------------产生I Q路相乘系数------------------------
always @ ( posedge clk )
begin
	if(rst)
		begin
			COS		<=			2'b0		;
			SIN		<=			2'b0		;
		end
	else
		begin
		case(cnt)
		2'b00:	
			begin		
				COS	<=			2'b01		;			//1
				SIN	<=			2'b00		;			//0
			end
		2'b01:	
			begin		
				COS	<=			2'b00		;			//0
				SIN	<=			2'b11		;			//-1
			end
		2'b10:	
			begin		
				COS	<=			2'b11		;			//-1
				SIN	<=			2'b00		;			//0
			end
		2'b11:	
			begin		
				COS	<=			2'b00		;			//0
				SIN	<=			2'b01		;			//1
			end
		default:
			begin
				COS	<=			COS		;
				SIN	<=			SIN		;
			end
		endcase
		end
end
		
mul inst_MULI (
			.clk			(clk), 						// input clk 100MHz
			.a				(AD_data), 					// input [15 : 0] a
			.b				(COS), 						// input [1 : 0] b
			.sclr			(rst), 						// input sclr
			.p				(mix_dataI) 				// output [17 : 0] p
			);

mul inst_MULQ (
			.clk			(clk), 						// input clk 100MHz
			.a				(AD_data), 					// input [15 : 0] a
			.b				(SIN), 						// input [1 : 0] b
			.sclr			(rst), 						// input sclr
			.p				(mix_dataQ) 				// output [17 : 0] p
			);

endmodule
