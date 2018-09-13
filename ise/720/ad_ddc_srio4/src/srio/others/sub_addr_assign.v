module sub_addr_assign
(
     input   wire          clk,
     input   wire          rst_n,
    
     input   wire          sub_cs,
     input   wire          sub_wr,  
     input   wire          sub_rd,  
     input   wire  [19:0]  sub_addr,
     output  reg   [63:0]  sub_dout, 
//   input   wire  [63:0]  ram_din,

     output  reg   [7:0]   srio_sub_cs,
     input   wire  [63:0]  srio_sub_dout0,
     input   wire  [63:0]  srio_sub_dout1,
     input   wire  [63:0]  srio_sub_dout2,
     input   wire  [63:0]  srio_sub_dout3,
     input   wire  [63:0]  srio_sub_dout4,
     input   wire  [63:0]  srio_sub_dout5,
     input   wire  [63:0]  srio_sub_dout6,
     input   wire  [63:0]  srio_sub_dout7
);

  reg    sub_rd_reg;
  reg    sub_cs_reg;
  reg    [31:0]    sub_addr_reg;
//  reg    [31:0]    srio_sub_dout1_reg;
  
  always@(posedge clk or negedge rst_n)
      if (!rst_n)
      begin
          sub_rd_reg    <=    1'b0;
          sub_cs_reg    <=    1'b0;
          sub_addr_reg  <=    32'b0;
      end
      else
      begin
          sub_rd_reg    <=    sub_rd;
          sub_cs_reg    <=    sub_cs;
          sub_addr_reg  <=    sub_addr;          
      end
		
//  always@(posedge clk)
//      srio_sub_dout1_reg    <=    srio_sub_dout1;          
  
  always@(*)
      if (sub_cs_reg & sub_rd_reg)
		begin
          case (sub_addr_reg[19:8])
              12'h000:    sub_dout    =    srio_sub_dout0;
              12'h001:    sub_dout    =    srio_sub_dout1;  
              12'h002:    sub_dout    =    srio_sub_dout2;
              12'h003:    sub_dout    =    srio_sub_dout3;
              12'h004:    sub_dout    =    srio_sub_dout4;
              12'h005:    sub_dout    =    srio_sub_dout5;
              12'h006:    sub_dout    =    srio_sub_dout6;
              12'h007:    sub_dout    =    srio_sub_dout7;
              default:    sub_dout    =    64'h0;
		    endcase
		end		  
      else
          sub_dout    =    64'h0;

  always@(*)
      if  (sub_cs & (sub_wr | sub_rd))
		begin
          case (sub_addr[19:8])
			 
              12'h000:    srio_sub_cs    =    8'b0000_0001;
              12'h001:    srio_sub_cs    =    8'b0000_0010;  
              12'h002:    srio_sub_cs    =    8'b0000_0100;
              12'h003:    srio_sub_cs    =    8'b0000_1000;
              12'h004:    srio_sub_cs    =    8'b0001_0000;
              12'h005:    srio_sub_cs    =    8'b0010_0000;
              12'h006:    srio_sub_cs    =    8'b0100_0000;
              12'h007:    srio_sub_cs    =    8'b1000_0000;
              default:    srio_sub_cs    =    8'b0000_0000;
		    endcase
		end
      else
          srio_sub_cs    =    8'b0000_0000;
          
endmodule          
                    
                    