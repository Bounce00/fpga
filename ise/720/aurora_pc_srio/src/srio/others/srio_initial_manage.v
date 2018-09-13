module srio_initial_manage
(
  input                      sys_clk,
  input                      sys_rst_n,
                             
  input                      srio_single_rdn,
  input                      srio_single_wrn,
  input                      srio_single_csn,
  input            [7:0]     srio_single_addr,
  input            [31:0]    srio_single_dout,
  output    reg    [31:0]    srio_single_din,
    
  output           [7:0]     ucfg_dest_id,
  output           [31:0]    ucfg_src_start_addr,
  output           [33:0]    ucfg_dest_start_addr,
  output    reg    [8:0]     ucfg_byte_count,
  output           [15:0]    ucfg_db_info,
  output                     ucfg_wr_n,        // 0:write, 1:read
            
  output    reg              ucfg_normal_trigger,
  output                     ucfg_db_trigger,
  
  input            [9:0]     fifo_rd_len,
                   
  input                      srio_db_resp,           
  input                      srio_initial_busy,
  input	[31:0]				  error_conter

);

  reg     [31:0]    	src_mem_addr_reg				;
  reg     [31:0]    	dest_srio_addr_reg			;
  reg     [31:0]    	dest_srio_id_reg				;  
  reg		 [31:0]	  	dest_srio_start_addr_reg	;  
  reg		 [31:0]		trans_time						;
  reg		 [31:0]		trans_bags						;
  reg						trans_start						;
  reg						srio_reset						;
  reg		 [31:0]		srio_conter_reg				;
  reg						srio_addr_valid				;
  
  reg					  	srio_initial_busy_ff1		;
  reg					  	srio_initial_busy_ff2		;
  
  reg						srio_addr_valid_ff1			;
  reg						srio_addr_valid_ff2			;
  
  reg		[31:0]		srio_conter						;
  
  reg						srio_trans_complete			;
  reg						ucfg_db_trigger				;
  reg						ucfg_db_trigger_reg			;
  reg						srio_dest_sel					;
  reg		[31:0]		trans_end_addr					;
  reg		[31:0]		doorbell_cnt						;
  
 
  
  assign    ucfg_dest_id            =    dest_srio_id_reg[7:0]		;
  assign    ucfg_src_start_addr     =    src_mem_addr_reg			;  
//  assign    ucfg_dest_start_addr    =    dest_srio_addr_reg			;
  assign    ucfg_dest_start_addr    =  (srio_dest_sel)? dest_srio_addr_reg : 32'h00000100			;
  
  assign    ucfg_db_info            =    16'd1							;
  assign    ucfg_wr_n               =    1'b0							;
  
  assign		srio_initial_busy_n	= (srio_initial_busy_ff1 == 1'b0) & (srio_initial_busy_ff2 == 1'b1);  
  assign		srio_addr_valid_p  	= (srio_addr_valid_ff1 == 1'b1) & (srio_addr_valid_ff2 == 1'b0);
  
  always@(posedge sys_clk or negedge sys_rst_n)
		if(!sys_rst_n)	begin
			srio_initial_busy_ff1	<= 1'b0	;
			srio_initial_busy_ff2	<= 1'b0	;
		end else begin
			srio_initial_busy_ff1	<= srio_initial_busy			;
			srio_initial_busy_ff2	<= srio_initial_busy_ff1	;
		end
		
  always@(posedge sys_clk or negedge sys_rst_n)
		if(!sys_rst_n)	begin
			srio_addr_valid_ff1	<= 1'b0	;
			srio_addr_valid_ff2	<= 1'b0	;
		end else begin
			srio_addr_valid_ff1	<= srio_addr_valid			;
			srio_addr_valid_ff2	<= srio_initial_busy_ff1	;
		end
	
          
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          ucfg_normal_trigger    <=    1'b0;
      else if (!srio_initial_busy & trans_start & (srio_conter > 0))
          ucfg_normal_trigger    <=    1'b1;
      else
          ucfg_normal_trigger    <=    1'b0;

  always@(posedge sys_clk or negedge sys_rst_n)
		if(!sys_rst_n)
			dest_srio_addr_reg	<= 32'b0;
		else if(srio_addr_valid_p) 
			dest_srio_addr_reg 	<= dest_srio_start_addr_reg;
		else if(srio_initial_busy_n)
			begin
				if(dest_srio_addr_reg < trans_end_addr)
					dest_srio_addr_reg	<= dest_srio_addr_reg + ucfg_byte_count;
				else 
					dest_srio_addr_reg 	<= dest_srio_start_addr_reg;
			end



always@(posedge sys_clk or negedge sys_rst_n)
	if(!sys_rst_n) begin
		srio_conter			<=		32'd0						;
	end else begin 
		if(srio_addr_valid_p) begin
			srio_conter		<=		srio_conter_reg		;
		end else if( srio_conter >= 1 & srio_initial_busy_n ) begin
			srio_conter		<=		srio_conter	- 1'b1	;
		end
	end

always@(posedge sys_clk or negedge sys_rst_n)
	if(!sys_rst_n) begin
		srio_trans_complete		<= 1'b0	;
	end else if(!srio_initial_busy & (srio_conter == 32'd0)) begin
		srio_trans_complete		<=	1'b1	;
	end else if(srio_reset) begin
		srio_trans_complete		<=	1'b0	;
	end
	
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n) begin
          ucfg_byte_count    <=    32'h0;
      end else if ( trans_start & !srio_initial_busy ) begin
			 ucfg_byte_count    <=    32'h00000100;
		end
 
always@(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n) begin
		trans_time		<= 	32'd0						;
	end else if(trans_start &  (srio_conter > 0) ) begin
		trans_time		<= 	trans_time	+ 1'b1	;
	end else if(srio_reset) begin
		trans_time		<= 	32'd0						;
	end
end 

always@(posedge sys_clk or negedge sys_rst_n) begin
	if(!sys_rst_n) begin
		trans_bags		<=		32'd0						;
	end else if(trans_start & srio_initial_busy_n & (srio_conter > 0)) begin
		trans_bags		<= 	trans_bags	+	1'b1	;
	end else if(srio_reset) begin
		trans_bags		<= 	32'd0						;
	end
end
 
 
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
      begin   
      	  src_mem_addr_reg      		<=    32'b0	;
      	  dest_srio_start_addr_reg    <=    32'b0	;
      	  dest_srio_id_reg      		<=    32'b0	;
			  trans_start						<= 	 1'b0	;
			  srio_reset						<= 	 1'b0 ;
			  srio_conter_reg					<=		32'd0	;
			  srio_addr_valid					<=		 1'b0 ;
			  srio_dest_sel					<=		 1'b0	;
			  trans_end_addr					<=		32'd0	;
      end
      else if (!srio_single_wrn & !srio_single_csn)
      begin
      	  case (srio_single_addr)
      	      8'h00 : 
      	      begin
      	          src_mem_addr_reg    		  <=  	srio_single_dout			;    	  
      	      end
      	      
      	      8'h04 : 
      	      begin
      	          dest_srio_start_addr_reg    <=   	srio_single_dout			;    	  
      	      end 
      	      
      	      8'h08 : 
      	      begin
      	          dest_srio_id_reg    		  <=    	srio_single_dout			;    	  
      	      end       	       	  
					8'h0c :
					begin
						trans_start							<= 	srio_single_dout[0]		;
					end
					8'h10 :
					begin
						srio_reset							<= 	srio_single_dout[0]		;
					end
					8'h1c :
					begin
						srio_conter_reg					<= 	srio_single_dout			;
					end
					8'h20 :
					begin
						srio_addr_valid					<= 	srio_single_dout[0]			;
					end
					8'h2c :
					begin
						srio_dest_sel						<= 	srio_single_dout[0]			;
					end
					8'h30 :
					begin
						trans_end_addr						<= 	srio_single_dout				;
					end
      	  endcase      	  
      end
  
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          srio_single_din    <=    32'b0;
      else if (!srio_single_rdn & !srio_single_csn)
      begin
          case (srio_single_addr)
              8'h00:  srio_single_din    <=    src_mem_addr_reg					;
              8'h04:  srio_single_din    <=    dest_srio_start_addr_reg			; 
              8'h08:  srio_single_din    <=    dest_srio_id_reg					;
				  8'h0c:	 srio_single_din	  <= 	  {31'd0 , trans_start}				;
				  8'h10:	 srio_single_din	  <= 	  {31'd0 , srio_reset}				;
				  8'h14:	 srio_single_din	  <= 	  trans_bags							;
				  8'h18:	 srio_single_din	  <=	  trans_time							;
				  8'h1c:	 srio_single_din	  <= 	  srio_conter_reg						;
				  8'h20:	 srio_single_din	  <=	  {31'd0 , srio_addr_valid}		;
				  8'h24:	 srio_single_din	  <=	  {31'd0 , srio_trans_complete}	;
				  8'h28:	 srio_single_din	  <=	  error_conter							;
				  8'h2c:	 srio_single_din	  <=	  {31'd0 , srio_dest_sel}			;
				  8'h30:	 srio_single_din	  <=	  trans_end_addr						;
              default: srio_single_din   <=    32'b0									;
          endcase
      end

always@(posedge sys_clk or negedge sys_rst_n)
	if(!sys_rst_n) begin
		doorbell_cnt		<=	32'd1000					;
	end else if(srio_conter == 32'd1 & srio_initial_busy_n) begin
		doorbell_cnt		<=	32'd0						;
	end else if(doorbell_cnt < 32'd1000) begin
		doorbell_cnt 		<=	doorbell_cnt + 1'b1	;
	end
		
always@(posedge sys_clk or negedge sys_rst_n)                                        
	if (!sys_rst_n)
		ucfg_db_trigger    <=    1'b0;
	else if ( doorbell_cnt == 32'd999 )
		ucfg_db_trigger    <=    1'b1;
	else if (ucfg_db_trigger_reg)
		ucfg_db_trigger    <=    1'b0;

always@(posedge sys_clk or negedge sys_rst_n)                                        
	if (!sys_rst_n)
		 ucfg_db_trigger_reg    <=    1'b0;
	else
		 ucfg_db_trigger_reg    <=    ucfg_db_trigger;
      
  endmodule             

              
  