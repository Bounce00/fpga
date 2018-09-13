//
//srio数据接收模块，接收IFM板发来的指令，
//解析出IFM板的命令，并根据命令选择相应操作
module target_in_align
(
	 input						 clk,
	 input						 sys_rst_n,
	 input						 target_wr,
    input    		 [7:0]    bus_en_in,
    input    		 [31:0]   addrin,
    input    		 [63:0]   din,
//    output   reg   [31:0]   addrout,
    output   reg   [ 7:0]   cmd_DA,
	 output	 reg	 			 sig_sel,				// 即内部源/外部源选择，0为外部源，1为内部源
	 output	 reg	 			 clk_sel,				//内外部时钟选择  0为外部时钟，1为板上晶振时钟
	 output	 reg				 bisuo_sclr,			//闭锁期置0选择，0为闭锁期置0,1为不置0
	 output	 reg	 [ 7:0]	 bisuo_st,				//闭锁期置0起始
	 output	 reg	 [ 7:0]	 bisuo_width,			//闭锁期置0宽度
	 output			 [149:0]	 TRIG3
);

//----------------该程序中，地址没有用到，但还是将地址做偏移--------------
//always @ ( posedge clk )
//	 casez(bus_en_in)                                                          
//		  8'b1???_????: addrout    =    addrin + 4'h0;                          
//		  8'b01??_????: addrout    =    addrin + 4'h1;                          
//		  8'b001?_????: addrout    =    addrin + 4'h2;                          
//		  8'b0001_????: addrout    =    addrin + 4'h3;  
//		  8'b0000_1???: addrout    =    addrin + 4'h4;                         
//		  8'b0000_01??: addrout    =    addrin + 4'h5;                          
//		  8'b0000_001?: addrout    =    addrin + 4'h6;
//		  8'b0000_0001: addrout    =    addrin + 4'h7;                                                  
//		 default:       addrout    =    addrin;                                
//	 endcase  
////---------------将数据偏移到高位地址------------------------
//always@( posedge clk )           
//	 casez(bus_en_in) 
//		  8'b1???_????: dout    =    din;
//		  8'b01??_????: dout    =    {din[55:0],8'b0};
//		  8'b001?_????: dout    =    {din[47:0],16'b0};
//		  8'b0001_????: dout    =    {din[39:0],24'b0};
//		  8'b0000_1???: dout    =    {din[31:0],32'b0};                                                    
//		  8'b0000_01??: dout    =    {din[23:0],40'b0};             
//		  8'b0000_001?: dout    =    {din[15:0],48'b0};           
//		  8'b0000_0001: dout    =    {din[7:0],56'b0};                                             
//		 default:       dout    =    din;     
//	 endcase			 
always @ ( posedge clk )
begin
	if(!sys_rst_n)
		begin
				cmd_DA				<=		8'h00				;
				sig_sel				<=		1'b0				;
				clk_sel				<=		1'b0				;
				bisuo_sclr			<=		1'b0				;
				bisuo_st				<=		8'h00				;
				bisuo_width			<=		8'h00				;
		end
	else	if((addrin[31:28]==4'hc)&&(target_wr))				//所有命令中，0都表示正常工作状态
		case(addrin[15:0])
		16'h00:															//0xc000_0000_0000_0000地址发送DA选择信号
				cmd_DA				<=		din[39:32]		;
		16'h08:															//0xc000_0000_0000_0008地址发送内外部源选择信号，0为外部源
				sig_sel				<=		din[32]			;
		16'h10:															//0xc000_0000_0000_0010地址发送时钟选择信号，0为FMC时钟，1为晶振时钟
				clk_sel				<=		din[32]			;
		16'h18:															//0xc000_0000_0000_0018地址发送闭锁期置0使能信号，0为置0,1为不置0
				bisuo_sclr			<=		din[32]			;
		16'h20:
				bisuo_st				<=		din[39:32]		;		//闭锁期开始
		16'h28:
				bisuo_width			<=		din[39:32]		;		//闭锁期结束
		default:
			begin
				cmd_DA				<=		cmd_DA			;
				sig_sel				<=		sig_sel			;
				clk_sel				<=		clk_sel			;
				bisuo_sclr			<=		bisuo_sclr		;
				bisuo_st				<=		bisuo_st			;
				bisuo_width			<=		bisuo_width		;
			end
		endcase
	else
		begin
				cmd_DA				<=		cmd_DA			;
				sig_sel				<=		sig_sel			;
				clk_sel				<=		clk_sel			;
				bisuo_sclr			<=		bisuo_sclr		;
				bisuo_st				<=		bisuo_st			;
				bisuo_width			<=		bisuo_width		;
		end
end

assign	TRIG3[0]		=		target_wr	;
assign	TRIG3[8:1]	=		bus_en_in	;
assign	TRIG3[72:9]	=		din			;
assign	TRIG3[104:73]	=	addrin		;
assign	TRIG3[112:105]	=	cmd_DA		;
assign	TRIG3[113]		=	sig_sel		;
assign	TRIG3[114]		=	clk_sel		;

endmodule                                                                                    