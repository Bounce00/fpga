`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:43 11/29/2012 
// Design Name: 
// Module Name:    spi 
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
module spi_ad(
    input         clk,
	 input         reset,
	 output        csb1,
	 output			csb2,
	 output        sclk,
	 inout			sdio,
	 output reg [7:0]rd_d
    );

   reg [12:0]cnt;
	initial cnt=0;
   always@(posedge clk or posedge reset)
	  if(reset)
	     cnt <= 13'b0;
	   else if(cnt < 13'h1fff)
  		  cnt <= cnt + 1'b1;
	  
	reg [5:0]waddr;
   reg [7:0]wdata;	
	reg wr_en;
	always@(posedge clk)  
	  if(cnt==1000) 
       begin waddr <=	6'h00; wdata <= 8'b1000_0110; wr_en <= 1'b1; end   //configure serial interface for MSB first
	  else 
	  if(cnt==1100) 
       begin waddr <=	6'h01; wdata <= 8'b00000_0100; wr_en <= 1'b1; end  	//set Devices-Index to program ADC Channels 0 and 1	 
	  else 
	  if(cnt==1200) 
       begin waddr <=	6'h08; wdata <= 8'b0010_0000; wr_en <= 1'b1; end 
	  else 
	  if(cnt==1300) 
       begin waddr <=	6'h09; wdata <= 8'b0110_1000; wr_en <= 1'b1; end 
	  else 
	  if(cnt==1400) 
       begin waddr <=	6'h0a; wdata <= 8'b1011_0000; wr_en <= 1'b1; end 	
	  else 
	  if(cnt==1500) 
       begin waddr <=	6'h0b; wdata <= 8'b1111_1000; wr_en <= 1'b1; end 			 
	  else
	  if(cnt==1600) 
       begin waddr <=	6'h0c; wdata <= 8'b0000_0000; wr_en <= 1'b1; end 		 
	  else
	  if(cnt==1700) 
       begin waddr <=	6'h0d; wdata <= 8'b1111_1111; wr_en <= 1'b1; end 		 
	  else
	  if(cnt==1800) 
       begin waddr <=	6'h0e; wdata <= 8'b1111_1111; wr_en <= 1'b1; end 		 
	  else
	  if(cnt==1900) 
       begin waddr <=	6'h0f; wdata <= 8'b0000_0000; wr_en <= 1'b1; end 		 
	  else
	    begin waddr <=	6'h00; wdata <= 8'b0; wr_en <= 1'b0; end
		       
				 
	 reg [5:0] raddr;
    reg rd_en;	 
	 always@(posedge clk) 
	  if(cnt==5000) 
       begin raddr <=	6'h00; rd_en <= 1'b1; end 		 
	  else 
	  if(cnt==5100) 
       begin raddr <=	6'h01; rd_en <= 1'b1; end 
	  else 
	  if(cnt==5200) 
       begin raddr <=	6'h08; rd_en <= 1'b1; end 
	  else 
	  if(cnt==5300) 
       begin raddr <=	6'h09; rd_en <= 1'b1; end 
	  else 
	  if(cnt==5400) 
       begin raddr <=	6'h0a; rd_en <= 1'b1; end
	  else 
	  if(cnt==5500) 
       begin raddr <=	6'h0b; rd_en <= 1'b1; end 
	  else 
	  if(cnt==5600) 
       begin raddr <=	6'h0c; rd_en <= 1'b1; end 	
	  else 
	  if(cnt==5700) 
       begin raddr <=	6'h0d; rd_en <= 1'b1; end 
	  else 
	  if(cnt==5800) 
       begin raddr <=	6'h0e; rd_en <= 1'b1; end 
	  else 
	  if(cnt==5900) 
       begin raddr <=	6'h0f; rd_en <= 1'b1; end 		 
	  else
	    begin raddr <=	6'b0; rd_en <= 1'b0; end 
		 
    wire wcsb,wsclk,wsdi;
	 spi_wr_ad spi_wr_ad (
	 .clk(clk), 
	 .rst(reset),
	 .wr_en(wr_en),
	 .addr(waddr), 
	 .data(wdata), 
	 .csb(wcsb), 
	 .sclk(wsclk), 
	 .sdi(wsdi)
	 ); 
    
	 wire rcsb,rsclk,rsdi;
	 wire [5:0]s_cnt;
    spi_rd_ad spi_rd_ad (
    .clk(clk), 
	 .rst(reset),
    .rd_en(rd_en), 
    .addr(raddr), 
    .csb(rcsb), 
    .sclk(rsclk), 
    .sdi(rsdi),
	 .s_cnt(s_cnt)
    );


	 reg sd_flag;
	 always@(posedge clk)
	   if(wr_en)
		  sd_flag <= 1'b0;
		else if(rd_en) 
		  sd_flag <= 1'b1;
    
	 reg [6:0]reg_data;
    always@(posedge clk)
      case(s_cnt)
		  6'd17: reg_data[6] <= sdio_i;
		  6'd19: reg_data[5] <= sdio_i;
		  6'd21: reg_data[4] <= sdio_i;
		  6'd23: reg_data[3] <= sdio_i;
		  6'd25: reg_data[2] <= sdio_i;
		  6'd27: reg_data[1] <= sdio_i;
		  6'd29: reg_data[0] <= sdio_i;
		  6'd31: rd_d[7:0] <= {reg_data[6:0],sdio_i};
		endcase  
	
	 assign csb2 = csb1;
    assign csb1 = sd_flag? rcsb:wcsb;
    assign sclk = sd_flag? rsclk:wsclk;
    assign sdio_o = sd_flag? rsdi:wsdi;	 

assign 	buf_t = (s_cnt >= 6'd17)? 1'b1:1'b0;

assign sdio   = (buf_t&sd_flag)? 1'bz : sdio_o; 
assign sdio_i =  sdio;	 
	 
	 
endmodule
