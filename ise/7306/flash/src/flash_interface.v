`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:44:48 01/16/2015 
// Design Name: 
// Module Name:    flash_interface 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module flash_interface
	(
	CLK50M,
	RST,
	SEG_CNT,
	state,
	erase_count,
	prog_count,
	flash_ce_n,
	flash_oe_n,
	flash_we_n,
	flash_rst_n
	);
	
input 						CLK50M		;
input							RST			;
input				[2:0]		state			;
input				[2:0]		SEG_CNT		;
input				[2:0]		erase_count	;
input				[2:0]		prog_count	;
output reg 					flash_ce_n	;
output reg					flash_oe_n	;
output reg 					flash_we_n	;
output reg					flash_rst_n	;
	
parameter
		idle				=				0				,
		read				=				1				,
		prog				=				2				,
		erase				=				3				,
		stop				=				4				;
		
reg		[6:0]					cnt_con				;	
//-------------FLASH复位信号locked有效后置高-----------------------
always @ ( posedge CLK50M )
begin
	if(!RST)
		begin
			flash_rst_n			<=		0				;
			cnt_con				<=		0				;
		end		
	else	if(cnt_con==100)
		begin		
			flash_rst_n			<=		1				;
			cnt_con				<=		cnt_con		;
		end	
	else
		begin
			flash_rst_n			<=		flash_rst_n	;
			cnt_con				<=		cnt_con+1	;
		end
end	

//---------------------------------------------------
always @ ( posedge CLK50M )
begin
	if(!RST)
		begin
			flash_ce_n			<=		1				;
			flash_oe_n			<=		1				;
			flash_we_n			<=		1				;
		end
	else
	case(state)
		idle:
			begin
				flash_ce_n			<=		1				;
				flash_oe_n			<=		1				;
				flash_we_n			<=		1				;
			end
		erase:
			begin
				case(erase_count)
					3'd0:
						begin
							if(SEG_CNT==3)
								begin
									flash_ce_n		<=		1				;
									flash_oe_n		<=		1				;
									flash_we_n		<=		0				;
								end
							else	if(SEG_CNT==5)
								begin
									flash_ce_n		<=		0				;
									flash_oe_n		<=		1				;
									flash_we_n		<=		1				;
								end
							else	if(SEG_CNT==6)
								begin
									flash_ce_n		<=		0				;
									flash_oe_n		<=		1				;
									flash_we_n		<=		0				;
								end
							else	if(SEG_CNT==0)
								begin
									flash_ce_n		<=		0				;
									flash_oe_n		<=		1				;
									flash_we_n		<=		1				;
								end
						end
					3'd1:
						begin
							if(SEG_CNT==3)
								begin
									flash_ce_n		<=		1				;
									flash_oe_n		<=		1				;
									flash_we_n		<=		0				;
								end
							else	if(SEG_CNT==5)
								begin
									flash_ce_n		<=		0				;
									flash_oe_n		<=		1				;
									flash_we_n		<=		1				;
								end
							else	if(SEG_CNT==6)
								begin
									flash_ce_n		<=		0				;
									flash_oe_n		<=		1				;
									flash_we_n		<=		0				;
								end
							else	if(SEG_CNT==0)
								begin
									flash_ce_n		<=		0				;
									flash_oe_n		<=		1				;
									flash_we_n		<=		1				;
								end
						end
					3'd2:
						begin
							if(SEG_CNT==3)
								begin
									flash_ce_n		<=		1				;
									flash_oe_n		<=		1				;
									flash_we_n		<=		0				;
								end
							else	if(SEG_CNT==5)
								begin
									flash_ce_n		<=		0				;
									flash_oe_n		<=		1				;
									flash_we_n		<=		1				;
								end
							else	if(SEG_CNT==6)
								begin
									flash_ce_n		<=		0				;
									flash_oe_n		<=		1				;
									flash_we_n		<=		0				;
								end
							else	if(SEG_CNT==0)
								begin
									flash_ce_n		<=		0				;
									flash_oe_n		<=		1				;
									flash_we_n		<=		1				;
								end
						end
					3'd6:
						begin
							if(SEG_CNT==3)
								begin
									flash_ce_n		<=		1				;
									flash_oe_n		<=		1				;
									flash_we_n		<=		1				;
								end
						end
				endcase
			end
		prog:
			begin
				case(state)
					3'd0:
						begin
							flash_ce_n<=1;
							flash_oe_n<=1;
							flash_we_n<=1;
						end
					3'd1:
						begin
							flash_ce_n<=0;	
						end
					3'd2:
						begin
							flash_we_n<=0;
						end
					3'd6:
						begin
							flash_we_n<=1;
						end
					3'd7:
						begin
							flash_ce_n<=1;
						end
				endcase
			end
		read:
			begin
				if(SEG_CNT==3)
					begin
						flash_ce_n		<=		1				;
						flash_oe_n		<=		1				;
						flash_we_n		<=		1				;
					end
				else	if(SEG_CNT==5)
					begin
						flash_ce_n		<=		0				;
						flash_oe_n		<=		1				;
						flash_we_n		<=		1				;
					end
				else	if(SEG_CNT==6)
					begin
						flash_ce_n		<=		0				;
						flash_oe_n		<=		0				;
						flash_we_n		<=		1				;
					end
			end
	endcase
end				
endmodule
