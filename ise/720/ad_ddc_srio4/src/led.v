`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:56 07/29/2015 
// Design Name: 
// Module Name:    led 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 让两个led每隔一秒亮灭一次
//
//////////////////////////////////////////////////////////////////////////////////
module led(
input							clk_100M		,
input							rst_n			,
output	reg	[1:0]		led	
    );
reg				[27:0]	cnt_led		;

always @ ( posedge clk_100M )
begin
	if(!rst_n)
		begin
			cnt_led	<=		28'd0			;
			led		<=		2'b01			;
		end
	else	if(cnt_led==28'd100_000_000)
		begin
			cnt_led	<=		28'd0			;
			led		<=		~led			;
		end
	else
		begin
			cnt_led	<=		cnt_led+1'b1;
			led		<=		led			;
		end
end

endmodule
