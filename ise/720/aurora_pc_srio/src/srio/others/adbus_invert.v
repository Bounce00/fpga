module adbus_invert
(
    input    wire [7:0]    bus_en_in,
    input    wire [31:0]   addrin,
    input    wire [63:0]   din,
    output   reg  [7:0]    bus_en_out,  
    output   reg  [31:0]   addrout,
    output   reg  [63:0]   dout
);
        
//  wire [7:0]  bus_en;
//  assign bus_en = {!bus_en_in[7], !bus_en_in[6], !bus_en_in[5], !bus_en_in[4], !bus_en_in[3], !bus_en_in[2], !bus_en_in[1], !bus_en_in[0]};         
//  assign bus_en = {!bus_en_in[0], !bus_en_in[1], !bus_en_in[2], !bus_en_in[3], !bus_en_in[4], !bus_en_in[5], !bus_en_in[6], !bus_en_in[7]};      
   always@*
       casex(bus_en_in)                                                          
           8'b1???_????: addrout    =    addrin + 4'h0;                          
           8'b01??_????: addrout    =    addrin + 4'h1;                          
           8'b001?_????: addrout    =    addrin + 4'h2;                          
           8'b0001_????: addrout    =    addrin + 4'h3;  
           8'b0000_1???: addrout    =    addrin + 4'h4;                         
           8'b0000_01??: addrout    =    addrin + 4'h5;                          
           8'b0000_001?: addrout    =    addrin + 4'h6;
           8'b0000_0001: addrout    =    addrin + 4'h7;                                                  
	       default:      addrout    =    addrin;                                
       endcase  
     
    always@*            
       casex(bus_en_in) 
           8'b1???_????: dout    =    din;
           8'b01??_????: dout    =    {din[55:0],8'b0};
           8'b001?_????: dout    =    {din[47:0],16'b0};
           8'b0001_????: dout    =    {din[39:0],24'b0};
           8'b0000_1???: dout    =    {din[31:0],32'b0};                                                    
           8'b0000_01??: dout    =    {din[23:0],40'b0};             
           8'b0000_001?: dout    =    {din[15:0],48'b0};           
           8'b0000_0001: dout    =    {din[7:0],56'b0};                                             
	       default:       dout    =    din;     
       endcase			 
                        
    always@*            
       casex(bus_en_in)                                                       
          8'b1???_????: bus_en_out    =    bus_en_in;                          
          8'b01??_????: bus_en_out    =    {bus_en_in[6:0], 1'b0};                          
          8'b001?_????: bus_en_out    =    {bus_en_in[5:0], 2'b0};                          
          8'b0001_????: bus_en_out    =    {bus_en_in[4:0], 3'b0};                          
          8'b0000_1???: bus_en_out    =    {bus_en_in[3:0], 4'b0};                          
          8'b0000_01??: bus_en_out    =    {bus_en_in[2:0], 5'b0};                          
          8'b0000_001?: bus_en_out    =    {bus_en_in[1:0], 6'b0};
          8'b0000_0001: bus_en_out    =    {bus_en_in[0]  , 7'b0};            
	       default:      bus_en_out    =    bus_en_in;                                
       endcase                    
       
endmodule                                                                                    