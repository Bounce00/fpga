`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:20 04/11/2015 
// Design Name: 
// Module Name:    segment_gen 
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
module segment_gen(
input								clk			,			// ‰»Î ±÷”100MHz
input								rst_n			,			//
input								PRI			,			//
output	reg	[1:0]			segment					//4∑÷∆µ
);

always  @ ( posedge clk )
begin
	if(!rst_n)
		segment			<=		2'b00			;
	else	if(PRI)
		segment			<=		2'b00			;
	else
		segment			<=		segment+1	;
end

endmodule
