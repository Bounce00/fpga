`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:45 11/30/2012 
// Design Name: 
// Module Name:    spi_clk 
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
module spi_clk(
    input         clk,
	 input         rst_n,
	 output        csb,
	 output        sclk,
	 inout         sdio,
	 output reg [7:0]rd_d
    );

   reg [12:0]cnt=0;
   always@(posedge clk)
	  if(!rst_n)
	     cnt <= 13'b0;
	   else if(cnt < 13'h1fff)
  		  cnt <= cnt + 1'b1;
//		else 
//		  cnt	<=	13'd0;
	  
	reg [12:0]waddr;
   reg [7:0]wdata;	
	reg wr_en;
	
	always@(posedge clk)
	  if(cnt==800) 
       begin waddr <=	13'h00; wdata <= 8'b1001_0000; wr_en <= 1'b1; end   //
	  else 		
	  if(cnt==900) 
       begin waddr <=	13'h45; wdata <= 8'b0000_0000; wr_en <= 1'b1; end   //[0]=1 Select CLK1  [0]=0 Select CLK2
	  else 	
	  if(cnt==1000) 
       begin waddr <=	13'h4a; wdata <= 8'b0000_0000; wr_en <= 1'b1; end   //
	  else 
	  if(cnt==1100) 
       begin waddr <=	13'h4b; wdata <= 8'b1000_0000; wr_en <= 1'b1; end   //Bypass clk0; Power-Down Divider Logic; Route Clock Directly to Output	 
	  else 	  
	  if(cnt==1200) 
       begin waddr <=	13'h4c; wdata <= 8'b0000_0000; wr_en <= 1'b1; end   //Bypass clk1; Power-Down Divider Logic; Route Clock Directly to Output	 
	  else 
	  if(cnt==1300) 
       begin waddr <=	13'h4d; wdata <= 8'b1000_0000; wr_en <= 1'b1; end   //Bypass clk1
	  else 
	  if(cnt==1400) 
       begin waddr <=	13'h4e; wdata <= 8'b0000_0000; wr_en <= 1'b1; end   //Bypass clk2
	  else 
	  if(cnt==1500) 
       begin waddr <=	13'h4f; wdata <= 8'b1000_0000; wr_en <= 1'b1; end   //Bypass clk2
	  else 
	  if(cnt==1600) 
       begin waddr <=	13'h50; wdata <= 8'b0000_0000; wr_en <= 1'b1; end   //Bypass clk3
	  else 
	  if(cnt==1700) 
       begin waddr <=	13'h51; wdata <= 8'b1000_0000; wr_en <= 1'b1; end   //Bypass clk3
	  else 
	  if(cnt==1800) 
       begin waddr <=	13'h52; wdata <= 8'b0000_0000; wr_en <= 1'b1; end   //Bypass clk4
	  else
	  if(cnt==1900) 
       begin waddr <=	13'h53; wdata <= 8'b1000_0000; wr_en <= 1'b1; end   //Bypass clk4
	  else
	  if(cnt==2000) 
       begin waddr <=	13'h5a; wdata <= 8'b0000_0001; wr_en <= 1'b1; end   //Bypass clk4		 
	  else
	    begin waddr <=	13'h0; wdata <= 8'b0; wr_en <= 1'b0; end
		       
				 
	 reg [12:0] raddr;
    reg rd_en;	 
	 
	 always@(posedge clk) 
	  if(cnt==4900) 
       begin raddr <=	13'h0; rd_en <= 1'b1; end 		 
	  else 
	  if(cnt==5000) 
       begin raddr <=	13'h45; rd_en <= 1'b1; end 		 
	  else 
	  if(cnt==5100) 
       begin raddr <=	13'h4a; rd_en <= 1'b1; end 
	  else 
	  if(cnt==5200) 
       begin raddr <=	13'h4b; rd_en <= 1'b1; end 
	  else 
	  if(cnt==5300) 
       begin raddr <=	13'h4c; rd_en <= 1'b1; end 
	  else 
	  if(cnt==5400) 
       begin raddr <=	13'h4d; rd_en <= 1'b1; end 
	  else 
	  if(cnt==5500) 
       begin raddr <=	13'h4e; rd_en <= 1'b1; end 
	  else 
	  if(cnt==5600) 
       begin raddr <=	13'h4f; rd_en <= 1'b1; end 
	  else 
	  if(cnt==5700) 
       begin raddr <=	13'h50; rd_en <= 1'b1; end 		 
	  else 
	  if(cnt==5800) 
       begin raddr <=	13'h51; rd_en <= 1'b1; end 
	  else 
	  if(cnt==5900) 
       begin raddr <=	13'h52; rd_en <= 1'b1; end 
	  else 
	  if(cnt==6000) 
       begin raddr <=	13'h53; rd_en <= 1'b1; end 	
	  else 
	  if(cnt==6100) 
       begin raddr <=	13'h5a; rd_en <= 1'b1; end 		 
	  else
	  if(cnt==6200) 
       begin raddr <=	13'h45; rd_en <= 1'b1; end 		 
	  else
	  if(cnt==6300) 
       begin raddr <=	13'h3d; rd_en <= 1'b1; end 	
	  else
	  if(cnt==6400) 
       begin raddr <=	13'h3e; rd_en <= 1'b1; end 
	  else
	  if(cnt==6500) 
       begin raddr <=	13'h3f; rd_en <= 1'b1; end 
	  else
	  if(cnt==6600) 
       begin raddr <=	13'h40; rd_en <= 1'b1; end 
	  else
	  if(cnt==6700) 
       begin raddr <=	13'h41; rd_en <= 1'b1; end 		 
	  else
	    begin raddr <=	13'b0; rd_en <= 1'b0; end 
		 
    wire wcsb,wsclk,wsdio;
	 spi_wr inst_spi_wr (
	 .clk(clk), 
	 .rst(!rst_n),
	 .wr_en(wr_en),
	 .addr(waddr), 
	 .data(wdata), 
	 .csb(wcsb), 
	 .sclk(wsclk), 
	 .sdio(wsdio)
	 ); 
    
	 wire rcsb,rsclk,rsdio;
	 wire [5:0]s_cnt;
    spi_rd inst_spi_rd (
    .clk(clk), 
	 .rst(!rst_n),
    .rd_en(rd_en), 
    .addr(raddr), 
    .csb(rcsb), 
    .sclk(rsclk), 
    .sdio(rsdio),
	 .s_cnt(s_cnt)
    );

	 reg sd_flag;
	 always@(posedge clk)
	   if(wr_en)
		  sd_flag <= 1'b0;
		else if(rd_en) 
		  sd_flag <= 1'b1;
	 
(* KEEP = "TRUE" *)   wire sdio_o;	 
(* KEEP = "TRUE" *)	 wire buf_t;
    assign 	buf_t = (s_cnt >=6'd33)? 1'b1:1'b0;
	 
//	 wire sdio_i;
//	 IOBUF IOBUF_inst (
//    .O(sdio_i),     // Buffer output
//    .IO(sdio),   // Buffer inout port (connect directly to top-level port)
//    .I(sdio_o),     // Buffer input
//    .T((buf_t&sd_flag))      // 3-state enable input, high=input, low=output

assign sdio   = (buf_t&sd_flag)? 1'bz : sdio_o; 
assign sdio_i =  sdio;
    
	 reg [6:0]in_reg_data;
    always@(posedge clk)
      case(s_cnt)
 		  6'd33: in_reg_data[6] <= sdio_i;
		  6'd35: in_reg_data[5] <= sdio_i;
		  6'd37: in_reg_data[4] <= sdio_i;
		  6'd39: in_reg_data[3] <= sdio_i;
		  6'd41: in_reg_data[2] <= sdio_i;
		  6'd43: in_reg_data[1] <= sdio_i;
		  6'd45: in_reg_data[0] <= sdio_i;
		  6'd47: rd_d[7:0] <= {in_reg_data[6:0],sdio_i};
		endcase  

    assign csb = sd_flag? rcsb:wcsb;
    assign sclk = sd_flag? rsclk:wsclk;
    assign sdio_o = sd_flag? rsdio:wsdio;	 


endmodule
