`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:45:01 04/13/2015
// Design Name:   fifo_i64_o64_1024
// Module Name:   D:/code_pro/ise_pro/my_pro/fsp5/ddc_srio/src/tb/tb_fifo.v
// Project Name:  ddc_srio
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fifo_i64_o64_1024
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_fifo;

	// Inputs
	reg rst;
	reg wr_clk;
	reg rd_clk;
	reg [63:0] din;
	reg wr_en;
	reg rd_en;

	// Outputs
	wire [63:0] dout;
	wire full;
	wire empty;
	wire [9:0] rd_data_count;
	
	reg [9:0] cnt1;
	reg [9:0] cnt2;

	// Instantiate the Unit Under Test (UUT)
	fifo_i64_o64_1024 uut (
		.rst(rst), 
		.wr_clk(wr_clk), 
		.rd_clk(rd_clk), 
		.din(din), 
		.wr_en(wr_en), 
		.rd_en(rd_en), 
		.dout(dout), 
		.full(full), 
		.empty(empty), 
		.rd_data_count(rd_data_count)
	);

	initial begin
		// Initialize Inputs
		rst = 0;
		wr_clk = 0;
		rd_clk = 0;
		din = 0;
		wr_en = 0;
		rd_en = 0;
		cnt1=0;
		cnt2=0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
	
	always #5 rd_clk=~rd_clk;
	
	always #5 wr_clk=~wr_clk;

	always @ ( posedge wr_clk)
	begin
		if(cnt1==30)
			cnt1<=0;
		else
			cnt1<=cnt1+1;
	end
	
	always @ ( posedge wr_clk )
	begin
		if((cnt1>=10)&&(cnt1<=20))
			begin
				wr_en	<=	1;
				rd_en	<=	1;
			end
		else
			begin
				wr_en	<=	0;
				rd_en	<=	0;
			end
	end
	
	always @ (posedge wr_clk)
	begin
		din<=din+1;
	end
	

	

      
endmodule

