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
  
  input                      ddr_init_done,
  input                      ddr_err,
  input                      qdr0_init_done,
  input                      qdr0_err,
  input                      qdr1_init_done,
  input                      qdr1_err,
  input            [31:0]    aurora_err_countX4_1,
  input            [31:0]    aurora_err_countX4_2,
  input            [31:0]    aurora_err_countX4_3,
  input            [31:0]    aurora_err_countX4_4
//  input            [31:0]    aurora_err_countX4_5,
//  input            [31:0]    aurora_err_countX4_6,
//  input            [31:0]    aurora_err_countX4_7,
//  input          	 [31:0]    aurora_err_countX4_8,
//  input            [31:0]    aurora_err_countX4_9,
//  input            [31:0]    aurora_err_countX4_10
);

  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          srio_single_din    <=    32'b0;
      else if (!srio_single_rdn & !srio_single_csn)
      begin
      	  case (srio_single_addr)
      	      8'h00: srio_single_din    <=    {30'b0, ddr_init_done, ddr_err};
      	      8'h04: srio_single_din    <=    {28'b0, qdr0_init_done, qdr0_err, qdr1_init_done, qdr1_err};
      	      8'h08: srio_single_din    <=    {aurora_err_countX4_1};
      	      8'h0c: srio_single_din    <=    {aurora_err_countX4_2};
      	      8'h10: srio_single_din    <=    {aurora_err_countX4_3};
					8'h14: srio_single_din    <=    {aurora_err_countX4_4};
//					8'h18: srio_single_din    <=    {aurora_err_countX4_5};
//					8'h1c: srio_single_din    <=    {aurora_err_countX4_6};
//					8'h20: srio_single_din    <=    {aurora_err_countX4_7};
//					8'h24: srio_single_din    <=    {aurora_err_countX4_8};
//					8'h28: srio_single_din    <=    {aurora_err_countX4_9};
//					8'h2c: srio_single_din    <=    {aurora_err_countX4_10};
					default: srio_single_din    <=   32'b0; 
				endcase
      end
      
endmodule      
      	    
  	