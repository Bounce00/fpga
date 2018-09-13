`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:26 11/29/2012 
// Design Name: 
// Module Name:    spi_rd 
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
module spi_rd_ad(
    input          clk,
	 input          rst,
	 input	       rd_en,
	 input  [5:0]   addr,
	 output  reg    csb,
	 output         sclk,
	 output  reg    sdi,
	 output reg[5:0]s_cnt
    );

	 reg [5:0]reg_addr;
    always@(posedge clk)
	   if(rd_en)
		  reg_addr <= addr;
		  
    reg [5:0]cnt;
	 initial cnt = 0;
    always@(posedge clk or posedge rst)
	 	if(rst)
		  cnt <= 6'h3f;
	   else if(rd_en)
		  cnt <= 6'b0;
      else if(cnt < 6'h3f)
	     cnt <= cnt + 1'b1;
	 
    initial csb=1;	 
    always@(posedge clk or posedge rst)
	   if(rst)
		  csb <= 1'b1;
      else if(cnt==6'd3)
		  csb <= 1'b0;
		else if(cnt==6'd52) 
		  csb <= 1'b1;
    		  
	 assign sclk = csb? 1'b0:cnt[0];
	 
	 reg reg_sdi;
    always@(posedge clk)
	   case(cnt)
		  6'd3: sdi <= 1'b1; //R/W
		  6'd5: sdi <= 1'b0; //must be set to 10b
		  6'd7: sdi <= reg_addr[5]; //must be set to 10b	
        6'd9: sdi <= reg_addr[4]; 
		  6'd11: sdi <= reg_addr[3];
		  6'd13: sdi <= reg_addr[2];
		  6'd15: sdi <= reg_addr[1];
		  6'd17: sdi <= reg_addr[0]; 
      endcase
    
	 always@(posedge clk or posedge csb)
	   if(csb)
		  s_cnt <= 6'b0;
		else  
	     s_cnt <= s_cnt + 1'b1;
		 








endmodule
