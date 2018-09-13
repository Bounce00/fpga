`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:08 01/28/2015 
// Design Name: 
// Module Name:    seg_cnt 
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
module seg_cnt(CLK50M,RST,SEG_CNT
    );
input						CLK50M			;
input						RST				;
output	reg	[2:0]	SEG_CNT			;

always @ ( posedge CLK50M )
begin
	if(!RST)
		SEG_CNT		<=			0				;
	else
		SEG_CNT		<=			SEG_CNT+1	;
end

endmodule
