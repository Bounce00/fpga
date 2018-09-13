`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:02 01/31/2015 
// Design Name: 
// Module Name:    state_con 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: �ϵ���Ƚ��в����������ٶ������ݿ��ǲ�����ȷ���ٽ���д������Ȼ��һֱ����ȷ��д��ȥ������
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module state_con(CLK50M,RST,erasing,proging,reading,state
    );
input							CLK50M				;
input							RST					;
input							erasing				;		//
input							proging				;
input							reading				;
output	reg	[2:0]		state					;

parameter
	idle				=				0					,
	erase				=				1					,
	prog				=				2					,
	read				=				3					,
	stop				=				4					;
	
always @ ( posedge CLK50M )
begin
	if(!RST)
				state					<=			idle			;
	else	
	case(state)	
		idle:	
			begin	
				state					<=			erase			;		//erase->program->read	
			end
		erase:
			begin
				if(!erasing)
					begin
						state			<=			read			;		//erase->program
					end
				else
					begin
						state			<=			erase			;
					end
			end
		prog:
			begin
				if(!proging)
					begin
						state			<=			read			;		//program->read
					end
				else
					begin
						state			<=			prog			;
					end
			end
		read:
			begin
				if(!reading)
					begin
						state			<=			stop			;		//read->stop
					end		
				else		
					begin		
						state			<=			read			;
					end		
			end		
		stop:		
			begin		
						state			<=			read			;		//stop->read  д��ɺ�һֱִ�ж������������������ݺ���һ���ں���Ŷ�
			end	
	endcase
end

endmodule
