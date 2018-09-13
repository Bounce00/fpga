`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:14:03 11/30/2012 
// Design Name: 
// Module Name:    config_ad 
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
module config_ad9512(
    input          clk,
	 input          rst_n,
	 
    output         f_ad9512_sclk,	//spi
    inout          f_ad9512_sdio,	//spi
    output         f_ad9512_csb,	   //spi	
	 
	 output  [7:0]  fmc_rd_data
	 
    );
    
	 reg [5:0]cnt;
	 always@(posedge clk)
		cnt <= cnt + 1'b1;
	 
	 wire clk_spi;
	 BUFG bufg_spi_clk (.I(cnt[5]), .O(clk_spi));	

    spi_clk inst_spi_clk (
    .clk				(clk_spi				), 
    .rst_n			(rst_n				), 
    .csb				(f_ad9512_csb		), 
    .sclk			(f_ad9512_sclk		), 
    .sdio			(f_ad9512_sdio		),
	 .rd_d			(fmc_rd_data		)
    );



endmodule
