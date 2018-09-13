module gtx_rerst
(
    input    REFCLK,
    
    input    TXPLLKDET,
    output   reg    GTXTEST1
);

    wire clk;
    reg  [9:0]  cnt_wait;
    reg  [9:0]  cnt_rst;
    assign clk = REFCLK;
	 
//    BUFG bufg_inst
//    (
//        .I(REFCLK),
//        .O(clk)
//    );
    
    always@(posedge clk)
        if (cnt_wait != 10'h3ff)
            GTXTEST1    <=    1'b0;
        else if (cnt_rst[8])
            GTXTEST1    <=    1'b0;
        else
            GTXTEST1    <=    1'b1;  
            
    always@(posedge clk)
        if (TXPLLKDET & (cnt_wait != 10'h3ff))
            cnt_wait    <=    cnt_wait    +    1'b1;
        else if (!TXPLLKDET)
            cnt_wait    <=    10'b0;
            
    always@(posedge clk)
        if (TXPLLKDET & (&cnt_wait) & (cnt_rst != 10'h3ff))
            cnt_rst    <=    cnt_rst    +    1'b1;
        else if (!TXPLLKDET | (cnt_wait != 10'h3ff))
            cnt_rst    <=    10'b0;
            
endmodule  
