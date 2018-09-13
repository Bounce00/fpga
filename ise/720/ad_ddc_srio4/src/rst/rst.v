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
//----------------------------------���غ�50s��ʼ��������-----------------------------------------
//-------������ppc�������fpga��bin�ļ�����fpga��fpga2���ϵ絽����������Ҫ1��45�����ҵ�ʱ�䣬����50s�ĸ�λ
//-------ʱ�䣬�ϵ��2��35s�����ſ�ʼ����-----------
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
