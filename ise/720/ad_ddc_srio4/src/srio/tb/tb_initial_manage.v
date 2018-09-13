`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:59:39 03/16/2015
// Design Name:   srio_initial_manage
// Module Name:   D:/code_pro/ise_pro/my_pro/fsp5/srio_test/src/srio/tb/tb_initial_manage.v
// Project Name:  srio_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: srio_initial_manage
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_initial_manage;

	// Inputs
	reg sys_clk;
	reg sys_rst_n;
	reg srio_single_rdn;
	reg srio_single_wrn;
	reg srio_single_csn;
	reg [7:0] srio_single_addr;
	reg [31:0] srio_single_dout;
	reg [9:0] fifo_rd_len;
	reg srio_db_resp;
	reg srio_initial_busy;
	reg [31:0] error_conter;

	// Outputs
	wire [31:0] srio_single_din;
	wire [7:0] ucfg_dest_id;
	wire [31:0] ucfg_src_start_addr;
	wire [33:0] ucfg_dest_start_addr;
	wire [8:0] ucfg_byte_count;
	wire [15:0] ucfg_db_info;
	wire ucfg_wr_n;
	wire ucfg_normal_trigger;
	wire ucfg_db_trigger;

	// Instantiate the Unit Under Test (UUT)
	srio_initial_manage uut (
		.sys_clk(sys_clk), 
		.sys_rst_n(sys_rst_n), 
		.srio_single_rdn(srio_single_rdn), 
		.srio_single_wrn(srio_single_wrn), 
		.srio_single_csn(srio_single_csn), 
		.srio_single_addr(srio_single_addr), 
		.srio_single_dout(srio_single_dout), 
		.srio_single_din(srio_single_din), 
		.ucfg_dest_id(ucfg_dest_id), 
		.ucfg_src_start_addr(ucfg_src_start_addr), 
		.ucfg_dest_start_addr(ucfg_dest_start_addr), 
		.ucfg_byte_count(ucfg_byte_count), 
		.ucfg_db_info(ucfg_db_info), 
		.ucfg_wr_n(ucfg_wr_n), 
		.ucfg_normal_trigger(ucfg_normal_trigger), 
		.ucfg_db_trigger(ucfg_db_trigger), 
		.fifo_rd_len(fifo_rd_len), 
		.srio_db_resp(srio_db_resp), 
		.srio_initial_busy(srio_initial_busy), 
		.error_conter(error_conter)
	);

	initial begin
		// Initialize Inputs
		sys_clk = 0;
		sys_rst_n = 0;
		srio_single_rdn = 0;
		srio_single_wrn = 0;
		srio_single_csn = 0;
		srio_single_addr = 0;
		srio_single_dout = 0;
		fifo_rd_len = 0;
		srio_db_resp = 0;
		srio_initial_busy = 0;
		error_conter = 0;

		// Wait 100 ns for global reset to finish
		#100;
      sys_rst_n=1; 
		srio_single_rdn = 1;
		srio_single_wrn = 1;
		srio_single_csn = 1;
		srio_initial_busy = 0;
		#100000;
		srio_single_wrn = 0;
		srio_single_csn = 0;
		srio_single_addr = 8;
		srio_single_dout = 10;
		#100;
		srio_single_wrn = 1;
		srio_single_csn = 1;
		#10000;
		srio_single_rdn = 0;
		srio_single_csn = 0;
		#100;
		srio_single_rdn = 1;
		srio_single_csn = 1;
		// Add stimulus here
		

	end
	
	always #5 sys_clk=~sys_clk;
      
endmodule

