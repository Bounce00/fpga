module dabus_invert
(
    input    wire [7:0]    bus_en_in,
    input    wire [63:0]   din,
    output   reg  [63:0]   dout
);

  always@*            
       casex(bus_en_in)                                                          
           8'b1???_????: dout    =    din;                          
           8'b01??_????: dout    =    {8'b0,  din[63:8]};                          
           8'b001?_????: dout    =    {16'b0, din[63:16]};                          
           8'b0001_????: dout    =    {24'b0, din[63:24]};                          
           8'b0000_1???: dout    =    {32'b0, din[63:32]};                          
           8'b0000_01??: dout    =    {40'b0, din[63:40]};                          
           8'b0000_001?: dout    =    {48'b0, din[63:48]};         
	       8'b0000_0001: dout    =    {56'b0, din[63:56]};
	       default:      dout    =    din; 
       endcase	
       
endmodule    