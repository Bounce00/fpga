//
//srio���ݽ���ģ�飬����IFM�巢����ָ�
//������IFM����������������ѡ����Ӧ����
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
	 output	 reg	 			 sig_sel,				// ���ڲ�Դ/�ⲿԴѡ��0Ϊ�ⲿԴ��1Ϊ�ڲ�Դ
	 output	 reg	 			 clk_sel,				//���ⲿʱ��ѡ��  0Ϊ�ⲿʱ�ӣ�1Ϊ���Ͼ���ʱ��
	 output	 reg				 bisuo_sclr,			//��������0ѡ��0Ϊ��������0,1Ϊ����0
	 output	 reg	 [ 7:0]	 bisuo_st,				//��������0��ʼ
	 output	 reg	 [ 7:0]	 bisuo_width,			//��������0���
	 output			 [149:0]	 TRIG3
);

//----------------�ó����У���ַû���õ��������ǽ���ַ��ƫ��--------------
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
////---------------������ƫ�Ƶ���λ��ַ------------------------
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
	else	if((addrin[31:28]==4'hc)&&(target_wr))				//���������У�0����ʾ��������״̬
		case(addrin[15:0])
		16'h00:															//0xc000_0000_0000_0000��ַ����DAѡ���ź�
				cmd_DA				<=		din[39:32]		;
		16'h08:															//0xc000_0000_0000_0008��ַ�������ⲿԴѡ���źţ�0Ϊ�ⲿԴ
				sig_sel				<=		din[32]			;
		16'h10:															//0xc000_0000_0000_0010��ַ����ʱ��ѡ���źţ�0ΪFMCʱ�ӣ�1Ϊ����ʱ��
				clk_sel				<=		din[32]			;
		16'h18:															//0xc000_0000_0000_0018��ַ���ͱ�������0ʹ���źţ�0Ϊ��0,1Ϊ����0
				bisuo_sclr			<=		din[32]			;
		16'h20:
				bisuo_st				<=		din[39:32]		;		//�����ڿ�ʼ
		16'h28:
				bisuo_width			<=		din[39:32]		;		//�����ڽ���
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