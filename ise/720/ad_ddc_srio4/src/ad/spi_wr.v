`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:39:25 11/29/2012 
// Design Name: 
// Module Name:    spi_wr 
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
module spi_wr(
    input         clk,
	 input         rst,
	 input	      wr_en,
	 input  [12:0] addr,
	 input  [7:0]  data,  
	 output  reg   csb,
	 output        sclk,
	 output  reg   sdio
    );
    
	 reg [12:0]reg_addr;
	 reg [7:0]reg_data;
    always@(posedge clk)
	   if(wr_en)
		  begin
		    reg_addr <= addr;
			 reg_data <= data;
		  end
		  
    reg [5:0]cnt;
	 initial cnt = 0;
    always@(posedge clk or posedge rst)
	   if(rst)
		  cnt <= 6'h3f;
	   else if(wr_en)
		  cnt <= 6'b0;
      else if(cnt < 6'h3f)
	     cnt <= cnt + 1'b1;
	 
    initial csb=1;	 
    always@(posedge clk)
      if(cnt==6'd3)
		  csb <= 1'b0;
		else if(cnt==6'd52) 
		  csb <= 1'b1;
		  
	 assign sclk = csb? 1'b0:cnt[0];
	 
    always@(posedge clk)
	   case(cnt)
		  6'd3: sdio <= 1'b0; //R/W
		  6'd5: sdio <= 1'b0; //W1
		  6'd7: sdio <= 1'b0; //W0	
        6'd9: sdio <= reg_addr[12]; 
		  6'd11: sdio <= reg_addr[11];
		  6'd13: sdio <= reg_addr[10];
		  6'd15: sdio <= reg_addr[9];
		  6'd17: sdio <= reg_addr[8];
		  6'd19: sdio <= reg_addr[7];
		  6'd21: sdio <= reg_addr[6];
		  6'd23: sdio <= reg_addr[5];
		  6'd25: sdio <= reg_addr[4];
		  6'd27: sdio <= reg_addr[3];
		  6'd29: sdio <= reg_addr[2];
		  6'd31: sdio <= reg_addr[1];
		  6'd33: sdio <= reg_addr[0];
		  6'd35: sdio <= reg_data[7];
		  6'd37: sdio <= reg_data[6];
		  6'd39: sdio <= reg_data[5];
		  6'd41: sdio <= reg_data[4];
		  6'd43: sdio <= reg_data[3];
		  6'd45: sdio <= reg_data[2];
		  6'd47: sdio <= reg_data[1];
		  6'd49: sdio <= reg_data[0];
      endcase
endmodule
