`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:21:51 03/16/2015
// Design Name:   srio_v5_6_top
// Module Name:   D:/code_pro/ise_pro/my_pro/fsp5/srio_test/src/srio/tb/tb_srio_top.v
// Project Name:  srio_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: srio_v5_6_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_srio_top;

	// Inputs
	reg sys_clkp;
	reg sys_clkn;
	reg rst_n;
	reg srio_rxp0;
	reg srio_rxn0;
	reg srio_rxp1;
	reg srio_rxn1;
	reg srio_rxp2;
	reg srio_rxn2;
	reg srio_rxp3;
	reg srio_rxn3;
	reg [63:0] target_dout;
	reg [7:0] ucfg_dest_id;
	reg [31:0] ucfg_src_start_addr;
	reg [33:0] ucfg_dest_start_addr;
	reg [8:0] ucfg_byte_count;
	reg [15:0] ucfg_db_info;
	reg ucfg_wr_n;
	reg ucfg_normal_trigger;
	reg ucfg_db_trigger;
	reg [63:0] initiator_dout;

	// Outputs
	wire srio_txp0;
	wire srio_txn0;
	wire srio_txp1;
	wire srio_txn1;
	wire srio_txp2;
	wire srio_txn2;
	wire srio_txp3;
	wire srio_txn3;
	wire user_clk;
	wire user_rst_n;
	wire target_wr;
	wire target_rd;
	wire [31:0] target_addr;
	wire [63:0] target_din;
	wire [7:0] target_bus_sel;
	wire initiator_wren;
	wire initiator_rden;
	wire [31:0] initiator_addr;
	wire [63:0] initiator_din;
	wire srio_db_resp;
	wire srio_initial_busy;

	// Instantiate the Unit Under Test (UUT)
	srio_v5_6_top uut (
		.sys_clkp(sys_clkp), 
		.sys_clkn(sys_clkn), 
		.rst_n(rst_n), 
		.srio_txp0(srio_txp0), 
		.srio_txn0(srio_txn0), 
		.srio_txp1(srio_txp1), 
		.srio_txn1(srio_txn1), 
		.srio_txp2(srio_txp2), 
		.srio_txn2(srio_txn2), 
		.srio_txp3(srio_txp3), 
		.srio_txn3(srio_txn3), 
		.srio_rxp0(srio_rxp0), 
		.srio_rxn0(srio_rxn0), 
		.srio_rxp1(srio_rxp1), 
		.srio_rxn1(srio_rxn1), 
		.srio_rxp2(srio_rxp2), 
		.srio_rxn2(srio_rxn2), 
		.srio_rxp3(srio_rxp3), 
		.srio_rxn3(srio_rxn3), 
		.user_clk(user_clk), 
		.user_rst_n(user_rst_n), 
		.target_wr(target_wr), 
		.target_rd(target_rd), 
		.target_addr(target_addr), 
		.target_dout(target_dout), 
		.target_din(target_din), 
		.target_bus_sel(target_bus_sel), 
		.ucfg_dest_id(ucfg_dest_id), 
		.ucfg_src_start_addr(ucfg_src_start_addr), 
		.ucfg_dest_start_addr(ucfg_dest_start_addr), 
		.ucfg_byte_count(ucfg_byte_count), 
		.ucfg_db_info(ucfg_db_info), 
		.ucfg_wr_n(ucfg_wr_n), 
		.ucfg_normal_trigger(ucfg_normal_trigger), 
		.ucfg_db_trigger(ucfg_db_trigger), 
		.initiator_wren(initiator_wren), 
		.initiator_rden(initiator_rden), 
		.initiator_addr(initiator_addr), 
		.initiator_din(initiator_din), 
		.initiator_dout(initiator_dout), 
		.srio_db_resp(srio_db_resp), 
		.srio_initial_busy(srio_initial_busy)
	);

	initial begin
		// Initialize Inputs
		sys_clkp = 0;
		sys_clkn = 1;
		rst_n = 0;
		srio_rxp0 = 0;
		srio_rxn0 = 0;
		srio_rxp1 = 0;
		srio_rxn1 = 0;
		srio_rxp2 = 0;
		srio_rxn2 = 0;
		srio_rxp3 = 0;
		srio_rxn3 = 0;
		target_dout = 0;
		ucfg_dest_id = 0;
		ucfg_src_start_addr = 0;
		ucfg_dest_start_addr = 0;
		ucfg_byte_count = 0;
		ucfg_db_info = 0;
		ucfg_wr_n = 1;
		ucfg_normal_trigger = 0;
		ucfg_db_trigger = 0;
		initiator_dout = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst_n=1;
		#10000;
		ucfg_normal_trigger=1;
		ucfg_dest_id = 20;
		ucfg_src_start_addr=0;
		ucfg_byte_count=10;
		#20;
		ucfg_normal_trigger=0;
        
		// Add stimulus here

	end
	
	always #4 sys_clkp=~sys_clkp;
	always #4 sys_clkn=~sys_clkn;
	
	always  @ ( posedge sys_clkp )
		initiator_dout	<=	initiator_dout+1;
	
      
endmodule

