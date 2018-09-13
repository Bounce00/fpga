`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:17:53 12/21/2014 
// Design Name: 
// Module Name:    ddc_test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: �����AD�ź�Ϊ16λ���±�Ƶ����18λ��
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module dpc(clk_200M,clk_50M,ddc_HE_I,ddc_HE_Q,PRI,cnt,pc_HE_I,pc_HE_Q
					    );
input								clk_200M			;
input								clk_50M			;
input					[19:0]	ddc_HE_I			;			//DDCʵ��
input					[19:0]	ddc_HE_Q			;			//DDC�鲿
//input				[ 2:0]	mode				;		//����ģʽ
input								PRI				;			//��������PRI�źţ�������λ�ź����ã���FIR���и�λ����
input					[13:0]	cnt				;

output				[24:0]	pc_HE_I			;			//��ѹʵ�����
output				[24:0]	pc_HE_Q			;			//��ѹ�鲿���

//--------------�±�Ƶģ��----------------------
wire              [15:0] 	mix_dataI      ;

//--------------FIRģ��----------------------
wire								rdy_20us_I		;			//FIR�����READY�ź�
wire								rdy_20us_Q		;			//FIR�����READY�ź�
reg								sclr				;
reg								ce_20us_I		;
reg								ce_20us_Q		;
wire					[23:0]	ac					;			//ģ�⸴���˷�����Ľ���� (a+bi)*(c+di)=(ac-bd)+(ad+bc)i
wire					[23:0]	ad					;
wire					[23:0]	bc					;
wire					[23:0]	bd					;
reg								addr				;
reg								sub				;

//-----------FIR �˲������˲�+��ȡ-------------

FIR_20us_I u_FIR_20us_I (
			.sclr				(sclr					),			// input sclr
			.clk				(clk_200M			), 		// input clk
			.rfd				(rfd					), 		// ouput rfd
			.rdy				(rdy_20us_I			), 		// ouput rdy
			.din_1			(ddc_HE_I			), 		// input [19 : 0] din
			.din_2			(ddc_HE_Q			), 		// input [19 : 0] din
			.dout_1			(ac					),			// ouput [38 : 0] dout
			.dout_2			(bc					)			// ouput [38 : 0] dout
			);

FIR_20us_Q u_FIR_20us_Q (
			.sclr				(sclr					),			// input sclr
			.clk				(clk_200M			),			// input clk
			.rfd				(rfd					),			// ouput rfd
			.rdy				(rdy_20us_Q			),			// ouput rdy
			.din_1			(ddc_HE_I			),			// input [19 : 0] din
			.din_2			(ddc_HE_Q			),			// input [19 : 0] din
			.dout_1			(ad					),			// ouput [38 : 0] dout		
			.dout_2			(bd					)			// ouput [38 : 0] dout		
			); 

//-----------�鲿��� ad+bc----------------------------
ADDER u_addr_ad_bc (
			.a					(bc					), 		// input [23 : 0] a
			.b					(ad					), 		// input [23 : 0] b
			.clk				(clk_50M				), 		// input clk
			.add				(addr					), 		// input add
			.sclr				(sclr					), 		// input sclr
			.s					(pc_HE_Q				) 			// output [23 : 0] s
			);					
//-----------ʵ����� ac-bd----------------------------
ADDER u_subtract_ac_bd (
			.a					(ac					), 		// input [23 : 0] a
			.b					(bd					), 		// input [23 : 0] b
			.clk				(clk_50M				), 		// input clk
			.add				(sub					), 		// input adds
			.sclr				(sclr					), 		// input sclr
			.s					(pc_HE_I				) 			// output [23 : 0] s
			);	
//------------------ÿ��PRI����һ��---------------------
always @ ( posedge clk_200M )
begin
	if(PRI)
			sclr				<=		1'b1				;
	else	if(PRI)
			sclr				<=		1'b1				;
	else
			sclr				<=		1'b0				;
end
//------------------�Ӽ�������---------------------------
always @ ( posedge clk_200M )
begin
			addr				<=		1'b1				;
			sub				<=		1'b0				;
end

//integer fid3;
//integer fid4;
//			
//initial
//begin
//	fid3=$fopen("MIX_HEI.txt","w");
//	fid4=$fopen("MIX_HEQ.txt","w");
//end
//
//always @ ( posedge clk_100M )
//begin
//	if(cnt<=2003)
//		begin
//			$fwrite(fid3,"%b\n",MIX_HEI);
//			$fwrite(fid4,"%b\n",MIX_HEQ);
//		end
//end
//
//integer fid1;
//integer fid2;
//			
//initial
//begin
//	fid1=$fopen("pc_20usI.txt","w");
//	fid2=$fopen("pc_20usQ.txt","w");
//end
//
//always @ ( posedge clk_50M )
//begin
//	if((cnt>=170) &&( cnt<=3000))
//		begin
//			$fwrite(fid1,"%b\n",pc_HE_I);
//			$fwrite(fid2,"%b\n",pc_HE_Q);
//		end
//end

endmodule
