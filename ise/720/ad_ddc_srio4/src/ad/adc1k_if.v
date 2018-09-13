//
module adc1k_if(
    input dclk,
    input [7:0] Dpin_N,
    input [7:0] Dpin_P,
    input 	 reset,
    input 	 SET_IN,
    output [7:0] Dout_1, 
    output [7:0] Dout_2
		);

   wire [7:0] 	  Dpin;
   wire 	  VCC1;
   
   assign VCC1 = 1;

   IBUFDS Dpin_0_IBUFDS_INST (.I(Dpin_P[0]), 
                              .IB(Dpin_N[0]), 
                              .O(Dpin[0]));
   defparam Dpin_0_IBUFDS_INST.IOSTANDARD = "LVDS_25";
   defparam Dpin_0_IBUFDS_INST.DIFF_TERM = "TRUE";
   IDDR Dpin_0_IDDR_INST (.C(dclk), 
                          .CE(VCC1), 
                          .D(Dpin[0]), 
                          .R(reset), 
                          .S(SET_IN), 
                          .Q1(Dout_1[0]), 
                          .Q2(Dout_2[0]));
   defparam Dpin_0_IDDR_INST.DDR_CLK_EDGE = "SAME_EDGE_PIPELINED";
   defparam Dpin_0_IDDR_INST.INIT_Q1 = 1'b0;
   defparam Dpin_0_IDDR_INST.INIT_Q2 = 1'b0;
   defparam Dpin_0_IDDR_INST.SRTYPE = "SYNC";
   IBUFDS Dpin_1_IBUFDS_INST (.I(Dpin_P[1]), 
                              .IB(Dpin_N[1]), 
                              .O(Dpin[1]));
   defparam Dpin_1_IBUFDS_INST.IOSTANDARD = "LVDS_25";
   defparam Dpin_1_IBUFDS_INST.DIFF_TERM = "TRUE";
   IDDR Dpin_1_IDDR_INST (.C(dclk), 
                          .CE(VCC1), 
                          .D(Dpin[1]), 
                          .R(reset), 
                          .S(SET_IN), 
                          .Q1(Dout_1[1]), 
                          .Q2(Dout_2[1]));
   defparam Dpin_1_IDDR_INST.DDR_CLK_EDGE = "SAME_EDGE_PIPELINED";
   defparam Dpin_1_IDDR_INST.INIT_Q1 = 1'b0;
   defparam Dpin_1_IDDR_INST.INIT_Q2 = 1'b0;
   defparam Dpin_1_IDDR_INST.SRTYPE = "SYNC";
   IBUFDS Dpin_2_IBUFDS_INST (.I(Dpin_P[2]), 
                              .IB(Dpin_N[2]), 
                              .O(Dpin[2]));
   defparam Dpin_2_IBUFDS_INST.IOSTANDARD = "LVDS_25";
   defparam Dpin_2_IBUFDS_INST.DIFF_TERM = "TRUE";
   IDDR Dpin_2_IDDR_INST (.C(dclk), 
                          .CE(VCC1), 
                          .D(Dpin[2]), 
                          .R(reset), 
                          .S(SET_IN), 
                          .Q1(Dout_1[2]), 
                          .Q2(Dout_2[2]));
   defparam Dpin_2_IDDR_INST.DDR_CLK_EDGE = "SAME_EDGE_PIPELINED";
   defparam Dpin_2_IDDR_INST.INIT_Q1 = 1'b0;
   defparam Dpin_2_IDDR_INST.INIT_Q2 = 1'b0;
   defparam Dpin_2_IDDR_INST.SRTYPE = "SYNC";
   IBUFDS Dpin_3_IBUFDS_INST (.I(Dpin_P[3]), 
                              .IB(Dpin_N[3]), 
                              .O(Dpin[3]));
   defparam Dpin_3_IBUFDS_INST.IOSTANDARD = "LVDS_25";
   defparam Dpin_3_IBUFDS_INST.DIFF_TERM = "TRUE";
   IDDR Dpin_3_IDDR_INST (.C(dclk), 
                          .CE(VCC1), 
                          .D(Dpin[3]), 
                          .R(reset), 
                          .S(SET_IN), 
                          .Q1(Dout_1[3]), 
                          .Q2(Dout_2[3]));
   defparam Dpin_3_IDDR_INST.DDR_CLK_EDGE = "SAME_EDGE_PIPELINED";
   defparam Dpin_3_IDDR_INST.INIT_Q1 = 1'b0;
   defparam Dpin_3_IDDR_INST.INIT_Q2 = 1'b0;
   defparam Dpin_3_IDDR_INST.SRTYPE = "SYNC";
   IBUFDS Dpin_4_IBUFDS_INST (.I(Dpin_P[4]), 
                              .IB(Dpin_N[4]), 
                              .O(Dpin[4]));
   defparam Dpin_4_IBUFDS_INST.IOSTANDARD = "LVDS_25";
   defparam Dpin_4_IBUFDS_INST.DIFF_TERM = "TRUE";
   IDDR Dpin_4_IDDR_INST (.C(dclk), 
                          .CE(VCC1), 
                          .D(Dpin[4]), 
                          .R(reset), 
                          .S(SET_IN), 
                          .Q1(Dout_1[4]), 
                          .Q2(Dout_2[4]));
   defparam Dpin_4_IDDR_INST.DDR_CLK_EDGE = "SAME_EDGE_PIPELINED";
   defparam Dpin_4_IDDR_INST.INIT_Q1 = 1'b0;
   defparam Dpin_4_IDDR_INST.INIT_Q2 = 1'b0;
   defparam Dpin_4_IDDR_INST.SRTYPE = "SYNC";
   IBUFDS Dpin_5_IBUFDS_INST (.I(Dpin_P[5]), 
                              .IB(Dpin_N[5]), 
                              .O(Dpin[5]));
   defparam Dpin_5_IBUFDS_INST.IOSTANDARD = "LVDS_25";
   defparam Dpin_5_IBUFDS_INST.DIFF_TERM = "TRUE";
   IDDR Dpin_5_IDDR_INST (.C(dclk), 
                          .CE(VCC1), 
                          .D(Dpin[5]), 
                          .R(reset), 
                          .S(SET_IN), 
                          .Q1(Dout_1[5]), 
                          .Q2(Dout_2[5]));
   defparam Dpin_5_IDDR_INST.DDR_CLK_EDGE = "SAME_EDGE_PIPELINED";
   defparam Dpin_5_IDDR_INST.INIT_Q1 = 1'b0;
   defparam Dpin_5_IDDR_INST.INIT_Q2 = 1'b0;
   defparam Dpin_5_IDDR_INST.SRTYPE = "SYNC";
   IBUFDS Dpin_6_IBUFDS_INST (.I(Dpin_P[6]), 
                              .IB(Dpin_N[6]), 
                              .O(Dpin[6]));
   defparam Dpin_6_IBUFDS_INST.IOSTANDARD = "LVDS_25";
   defparam Dpin_6_IBUFDS_INST.DIFF_TERM = "TRUE";
   IDDR Dpin_6_IDDR_INST (.C(dclk), 
                          .CE(VCC1), 
                          .D(Dpin[6]), 
                          .R(reset), 
                          .S(SET_IN), 
                          .Q1(Dout_1[6]), 
                          .Q2(Dout_2[6]));
   defparam Dpin_6_IDDR_INST.DDR_CLK_EDGE = "SAME_EDGE_PIPELINED";
   defparam Dpin_6_IDDR_INST.INIT_Q1 = 1'b0;
   defparam Dpin_6_IDDR_INST.INIT_Q2 = 1'b0;
   defparam Dpin_6_IDDR_INST.SRTYPE = "SYNC";
   IBUFDS Dpin_7_IBUFDS_INST (.I(Dpin_P[7]), 
                              .IB(Dpin_N[7]), 
                              .O(Dpin[7]));
   defparam Dpin_7_IBUFDS_INST.IOSTANDARD = "LVDS_25";
   defparam Dpin_7_IBUFDS_INST.DIFF_TERM = "TRUE";
   IDDR Dpin_7_IDDR_INST (.C(dclk), 
                          .CE(VCC1), 
                          .D(Dpin[7]), 
                          .R(reset), 
                          .S(SET_IN), 
                          .Q1(Dout_1[7]), 
                          .Q2(Dout_2[7]));
   defparam Dpin_7_IDDR_INST.DDR_CLK_EDGE = "SAME_EDGE_PIPELINED";
   defparam Dpin_7_IDDR_INST.INIT_Q1 = 1'b0;
   defparam Dpin_7_IDDR_INST.INIT_Q2 = 1'b0;
   defparam Dpin_7_IDDR_INST.SRTYPE = "SYNC";
	
endmodule
