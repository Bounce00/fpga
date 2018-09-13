module port_err_total
(
  input                      sys_clk,
  input                      sys_rst_n,
  
  input                      srio_single_rdn,
  input                      srio_single_wrn,
  input                      srio_single_csn,
  input            [7:0]     srio_single_addr,
  input            [31:0]    srio_single_dout,
  output    reg    [31:0]    srio_single_din,
  
  input                      ddr0_init_done,
  input                      ddr0_err,
  input                      ddr1_init_done,
  input                      ddr1_err
);

  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          srio_single_din    <=    32'b0;
      else if (!srio_single_rdn & !srio_single_csn)
      begin
      	  case (srio_single_addr)
      	      8'h00: srio_single_din    <=    {30'b0, ddr0_init_done, ddr0_err};
      	      8'h04: srio_single_din    <=    {30'b0, ddr1_init_done, 1'b0};
					default: srio_single_din    <=   32'b0; 
				endcase
      end
      
endmodule      
      	    
  	