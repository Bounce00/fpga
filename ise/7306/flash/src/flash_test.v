`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:26:48 01/16/2015 
// Design Name: 
// Module Name:    flash_test 
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
module flash_test(CLK50M,FLA_RDY,FLA_ADDR,FLA_DATA,FLA_CE_N,FLA_OE_N,FLA_WE_N,FLA_RST_N,FLA_BYTE_N,FLA2_DIR
    );
input									CLK50M			;
input									FLA_RDY			;
output				[21:0]		FLA_ADDR			;
inout					[15:0]		FLA_DATA			;
output								FLA_CE_N			;
output								FLA_OE_N			;
output								FLA_WE_N			;
output								FLA_RST_N		;
output								FLA_BYTE_N		;
output								FLA2_DIR			;

parameter
	idle				=				0					,
	erase				=				1					,
	prog				=				2					,
	read				=				3					,
	stop				=				4					;

parameter
	test_num			=				500				;
	
//reg 					[21:0] 		number			;
reg 					[21:0] 		addr_reg			;
wire 					[2:0] 		state				;
reg					[15:0]		data_in			;
reg					[15:0]		data_out			;

wire 									erasing			;		
wire 									proging			;		//programming
wire 									reading			;
wire 									PLL50M			;
wire									RST				;
wire					[2:0]			SEG_CNT			;

assign 		FLA_RST_N			=1					;
assign 		FLA_BYTE_N			=1					;
assign		DIR					=erasing || proging;
assign		FLA_DATA				=(DIR)?data_out:16'bz;

//------------PLL------INPUT 50MHz---OUTPUT 50MHz------------------------
PLL_iNST PLL
   (
    .CLK_IN1				(CLK50M)					,     // IN
    .CLK_OUT1				(PLL50M)					,     // OUT
    .LOCKED					(RST)
	 );
	 
//---SEG_CNT from 0 to 7--用于确定时序，即在SEG_CNT在不同值时执行不同操作-------
seg_cnt	SEGMENT(
		.CLK50M				(PLL50M)					,
		.RST					(RST)						,
		.SEG_CNT				(SEG_CNT)
    );
	 
//---------------------state control--------------------------------------
state_con	state_con(
		.CLK50M				(PLL50M)					,
		.RST					(RST)						,
		.erasing				(erasing)				,
		.proging				(proging)				,
		.reading				(reading)				,
		.state				(state)
    );
	 
//--------------------flash control----------------------------------------	
flash_control flash_control_inst
	(
		.CLK50M				(PLL50M)					,					
		.flash_rst_n		(RST)						,           	
		.flash_ready		(FLA_RDY)				,           	
//		.local_data			(data_out)				,           
//		.local_address		(addr_reg)				,           	
		.SEG_CNT				(SEG_CNT)				,                                   
//		.data_number		(test_num)				,           	
//		.sector_operate_n	(0)						,           	
//		.sector_address	(0)						,           	
		.reading				(reading)				,           	
		.proging				(proging)				,           	
		.erasing				(erasing)				,           	
			                                                	
		.addr_reg			(FLA_ADDR)				,           	
//		.flash_data			(FLA_DATA)				,
		.flash_ce_n			(FLA_CE_N)				,
		.flash_oe_n			(FLA_OE_N)				,
		.flash_we_n			(FLA_WE_N)				
//		.erase_complete	(erase_complete)		,
//		.prog_complete		(prog_complete)		,
//		.read_complete		(read_complete)
		);
		
		

always @ ( posedge PLL50M )
begin
	if(!RST)
		data_in		<=			0				;
	else	if(reading)
		data_in		<=			FLA_DATA		;
end
//------------------debug core---------------------------------
wire	[35:0]	CONTROL0			;
wire	[99:0]	TRIG0				;

ICON_INST ICON (
    .CONTROL0		(CONTROL0)		 	// INOUT BUS [35:0]
);

ILA_INST ILA (
    .CONTROL		(CONTROL0), 	// INOUT BUS [35:0]
    .CLK				(PLL50M), 		// IN
    .TRIG0			(TRIG0) 			// IN BUS [199:0]
);

assign	TRIG0[0]			=	FLA_CE_N	;
assign	TRIG0[1]			=	FLA_OE_N	;
assign	TRIG0[4:2]		=	SEG_CNT	;
assign	TRIG0[26:5]		=	FLA_ADDR	;
assign	TRIG0[42:27]	=	data_in	;
assign	TRIG0[43]		=	FLA_RDY	;

endmodule
