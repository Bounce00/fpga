`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:04:38 08/04/2015 
// Design Name: 
// Module Name:    rst 
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
module rst(
input				clk_100M				,
input				locked				,
output	reg	rst_n					
    );

reg		[33:0]cnt_rst				;
//----------------------------------加载后50s开始传输数据-----------------------------------------
//-------鉴相板的ppc启动后把fpga的bin文件传给fpga，fpga2从上电到程序加载完成要1分45秒左右的时间，加上50s的复位
//-------时间，上电后2分35s后程序才开始运行-----------
always @ ( posedge clk_100M )
begin
	if(!locked)
		begin
			cnt_rst							<=		0							;
			rst_n								<=		0							;
		end
	else	if(cnt_rst==34'd5_000_000_000)						//100s  34'd10_000_000_000
		begin
			cnt_rst							<=		cnt_rst					;
			rst_n								<=		1							;
		end
	else
		begin
			cnt_rst							<=		cnt_rst+1				;
			rst_n								<=		0							;
		end
end

endmodule
