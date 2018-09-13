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
input								clk					;			//����100MHzʱ��
input								rst					;			//��PRI���������ź�
input					[15:0]	AD_data				;
output				[15:0]	mix_dataI			;			//���I·����
output				[15:0]	mix_dataQ			;			//���Q·����

reg					[ 1:0]	COS					;
reg					[ 1:0]	SIN					;
reg					[ 1:0]	cnt					;

//----------------ϵ������------------------------------
always @ ( posedge clk )									//I·ϵ��Ϊ1 0 -1 0 ������ĸ�����ѭ��һ��
begin
	if(rst)															//Q·ϵ��Ϊ0 1 0 -1 ������ĸ�����ѭ��һ��
		cnt			<=			2'b0		;
	else
		cnt			<=			cnt+1		;
end

//----------------����I Q·���ϵ��------------------------
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
