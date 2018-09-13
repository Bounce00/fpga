`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:44:10 01/16/2015 
// Design Name: 
// Module Name:    flash_control 
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
module flash_control	(

input 							CLK50M				,
input 							flash_rst_n			,
input 							flash_ready			,
						
input				[2:0]			SEG_CNT				,
	
output 	reg					erasing				,
output 	reg					proging				,
output	reg					reading				,
output	reg			[2:0]	state					,	
output 							flash_ce_n			,
output 							flash_oe_n			,
output 							flash_we_n			,
output 	reg 	[21:0] 		addr_reg					
);

reg				[21:0]		data_number			;
reg								sector_operate_n	;
reg				[21:0]		sector_address		;

reg 				[15:0] 		data					;
reg 				[15:0] 		data_reg				;
				
reg 				[2:0]			erase_count			;
reg 				[2:0]			prog_count			;
							
reg 				[2:0] 		flash_operate		;  //0:don't operate 1:read  2:erase 3: prog
reg				[21:0]		local_address=0	;
reg				[15:0]		data_out=0			;
reg				[21:0]		address=0			;

parameter
			idle				=				0			,
			read				=				1			,
			prog				=				2			,
			erase				=				3			,
			stop				=				4			;
	
always @ ( posedge CLK50M )
begin
	if(!flash_rst_n)
		state					<=			idle			;
	else
	case(state)
	idle:
		begin
			prog_count		<=			0				;
			erase_count		<=			0				;
			erasing			<=			0				;
			proging			<=			0				;
			reading			<=			0				;
		end
	erase:														//擦出需要6个周期
		begin
			case(erase_count)
				3'd0:
					begin
						erasing					<=			1					;
						if(SEG_CNT==3)
							begin
								erase_count		<=			erase_count+1	;
								addr_reg			<=			22'h555			;
								data_reg			<=			16'hAA			;
							end	
						else
							begin
								erase_count		<=			erase_count		;
								addr_reg			<=			addr_reg			;
								data_reg			<=			data_reg			;
							end
					end
				3'd1:
					begin
						if(SEG_CNT==3)
							begin
								erase_count		<=			erase_count+1	;
								addr_reg			<=			22'h2AA			;
								data_reg			<=			16'h55			;
							end	
						else
							begin
								erase_count		<=			erase_count		;
								addr_reg			<=			addr_reg			;
								data_reg			<=			data_reg			;
							end
					end	
				3'd2:
					begin
						if(SEG_CNT==3)
							begin
								erase_count		<=			erase_count+1	;
								addr_reg			<=			22'h555			;
								data_reg			<=			16'h80			;
							end	
						else
							begin
								erase_count		<=			erase_count		;
								addr_reg			<=			addr_reg			;
								data_reg			<=			data_reg			;
							end
					end
				3'd3:
					begin
						if(SEG_CNT==3)
							begin
								erase_count		<=			erase_count+1	;
								addr_reg			<=			22'h555			;
								data_reg			<=			16'hAA			;
							end	
						else
							begin
								erase_count		<=			erase_count		;
								addr_reg			<=			addr_reg			;
								data_reg			<=			data_reg			;
							end
					end
				3'd4:
					begin
						if(SEG_CNT==3)
							begin
								erase_count		<=			erase_count+1	;
								addr_reg			<=			22'h2AA			;
								data_reg			<=			16'h55			;
							end	
						else
							begin
								erase_count		<=			erase_count		;
								addr_reg			<=			addr_reg			;
								data_reg			<=			data_reg			;
							end
					end
				3'd5:
					begin
						if(SEG_CNT==3)
							begin
								erase_count		<=			erase_count+1	;
								if(!sector_operate_n)
									begin	
										addr_reg	<=			22'h2AA			;
										data_reg	<=			16'h55			;
									end		
								else	
									begin	
										addr_reg	<=			22'h555			;
										data_reg	<=			16'h10			;
									end	
							end	
						else	
							begin	
								erase_count		<=			erase_count		;
								addr_reg			<=			addr_reg			;
								data_reg			<=			data_reg			;
							end	
					end
				3'd6:
						if(SEG_CNT==3)
							begin
								erasing			<=			0					;
								erase_count		<=			0					;
							end
				default:
					begin
								erasing			<=			erasing			;
								addr_reg			<=			addr_reg			;
								data_reg			<=			data_reg			;
					end
			endcase
		end
	prog:
		begin
			case(prog_count)
				3'd0:
					begin
						proging				<=				1					;
						if(SEG_CNT==3)
							begin
								prog_count		<=			prog_count+1	;
								addr_reg			<=			22'h555			;
								data_reg			<=			16'hAA			;
							end	
						else
							begin
								prog_count		<=			prog_count		;
								addr_reg			<=			addr_reg			;
								data_reg			<=			data_reg			;
							end
					end
				3'd1:
					begin
						if(SEG_CNT==3)
							begin
								prog_count		<=			prog_count+1	;
								addr_reg			<=			22'h2AA			;
								data_reg			<=			16'h55			;
							end	
						else
							begin
								prog_count		<=			prog_count		;
								addr_reg			<=			addr_reg			;
								data_reg			<=			data_reg			;
							end
					end
				3'd2:
					begin
						if(SEG_CNT==3)
							begin
								prog_count		<=			prog_count+1	;
								addr_reg			<=			22'h555			;
								data_reg			<=			16'hA0			;
							end	
						else
							begin
								prog_count		<=			prog_count		;
								addr_reg			<=			addr_reg			;
								data_reg			<=			data_reg			;
							end
					end
				3'd3:
					begin
						if(SEG_CNT==3)
							begin
								prog_count		<=			prog_count+1	;
								addr_reg			<=			22'h2AA			;
								data_reg			<=			16'h55			;
							end	
						else
							begin
								prog_count		<=			prog_count		;
								addr_reg			<=			local_address		;
								data_reg			<=			data_out			;
							end
					end			
				3'd4:
					begin
						if(SEG_CNT==3)
							begin
								proging			<=			0					;
								prog_count		<=			0					;
							end
						else
							begin
								proging			<=			proging			;
								prog_count		<=			prog_count		;
							end
					end
				default:
					begin
								proging			<=			proging			;
								prog_count		<=			prog_count		;
					end	
			endcase
		end
		read:
		begin
			if(SEG_CNT==3)
				begin
					if(address<data_number)
						begin
							addr_reg				<=			address			;
							reading				<=			1					;
							address				<=			address+1		;
						end
					else
						begin
							addr_reg				<=			0					;
							reading				<=			0					;
						end
				end
			else
				begin
							reading				<=			reading			;
							addr_reg				<=			addr_reg			;
				end
		end
	endcase
end
									

assign flash_data=(state==read)? 16'bz: data ;

always @ ( posedge CLK50M )
	begin
		data<=data_reg;
		addr_reg<=addr_reg;
	end

	
flash_interface	flash_interface_inst
	(
	.CLK50M				(CLK50M)				,
	.RST					(RST)					,
	.SEG_CNT				(SEG_CNT)			,
	.state				(state)				,
	.erase_count		(erase_count)		,
	.prog_count			(prog_count)		,
	.flash_ce_n			(flash_ce_n)		,
	.flash_oe_n			(flash_oe_n)		,
	.flash_we_n			(flash_we_n)		,
	.flash_rst_n		(flash_rst_n)
	);	
	
endmodule

