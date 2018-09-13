`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:53:16 03/18/2015
// Design Name:   srio_test_top
// Module Name:   D:/code_pro/ise_pro/my_pro/fsp5/srio_fpga_initiator_2/src/srio/tb/tb_top.v
// Project Name:  srio_test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: srio_test_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_top;

	// Inputs
	reg SRIO_SYS_CLKP;
	reg SRIO_SYS_CLKN;
	reg SRIO_RXP0;
	reg SRIO_RXN0;
	reg SRIO_RXP1;
	reg SRIO_RXN1;
	reg SRIO_RXP2;
	reg SRIO_RXN2;
	reg SRIO_RXP3;
	reg SRIO_RXN3;

	// Outputs
	wire SRIO_TXP0;
	wire SRIO_TXN0;
	wire SRIO_TXP1;
	wire SRIO_TXN1;
	wire SRIO_TXP2;
	wire SRIO_TXN2;
	wire SRIO_TXP3;
	wire SRIO_TXN3;

	// Instantiate the Unit Under Test (UUT)
	srio_test_top uut (
		.SRIO_SYS_CLKP(SRIO_SYS_CLKP), 
		.SRIO_SYS_CLKN(SRIO_SYS_CLKN), 
		.SRIO_TXP0(SRIO_TXP0), 
		.SRIO_TXN0(SRIO_TXN0), 
		.SRIO_TXP1(SRIO_TXP1), 
		.SRIO_TXN1(SRIO_TXN1), 
		.SRIO_TXP2(SRIO_TXP2), 
		.SRIO_TXN2(SRIO_TXN2), 
		.SRIO_TXP3(SRIO_TXP3), 
		.SRIO_TXN3(SRIO_TXN3), 
		.SRIO_RXP0(SRIO_RXP0), 
		.SRIO_RXN0(SRIO_RXN0), 
		.SRIO_RXP1(SRIO_RXP1), 
		.SRIO_RXN1(SRIO_RXN1), 
		.SRIO_RXP2(SRIO_RXP2), 
		.SRIO_RXN2(SRIO_RXN2), 
		.SRIO_RXP3(SRIO_RXP3), 
		.SRIO_RXN3(SRIO_RXN3)
	);

	initial begin
		// Initialize Inputs
		SRIO_SYS_CLKP = 0;
		SRIO_SYS_CLKN = 1;
		SRIO_RXP0 = 0;
		SRIO_RXN0 = 0;
		SRIO_RXP1 = 0;
		SRIO_RXN1 = 0;
		SRIO_RXP2 = 0;
		SRIO_RXN2 = 0;
		SRIO_RXP3 = 0;
		SRIO_RXN3 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #5 SRIO_SYS_CLKP=~SRIO_SYS_CLKP;
	always #5 SRIO_SYS_CLKN=~SRIO_SYS_CLKN;
      
endmodule

