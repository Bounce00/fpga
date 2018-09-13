module srio_target_interface_64
(
	         sys_clk,
            sys_rst_n,

             // Target Response
            tresp_prio,
            tresp_ftype,
            tresp_dest_id,
            tresp_ttype,
            tresp_status,
            tresp_tid,
            tresp_data,
            tresp_sof_n,
            tresp_eof_n,
            tresp_vld_n,
            tresp_dsc_n,
            tresp_rdy_n,
//            tresp_stalls,
//            tresp_msg_seg,
//            tresp_mbox,
//            tresp_letter,

            // Target Request
            treq_prio,
            treq_ftype,
            treq_dest_id,
            treq_src_id,
            treq_tid,
            treq_ttype,
            treq_addr,
            treq_byte_en_n,
            treq_byte_count,
            treq_data,
            treq_sof_n,
            treq_eof_n,
            treq_vld_n,
            treq_rdy_n,
//          treq_db_info,
//          treq_msg_len,
//          treq_msg_seg,
//          treq_mbox,            
//          treq_letter 

//          memory bus
            ram_wr,
            ram_rd,
            ram_addr,
            ram_dout,
            ram_din,
            ram_bus_sel				
);

  input        sys_clk; 
  input        sys_rst_n;
                 
  // Target Request
  input        treq_sof_n;
  input        treq_eof_n;
  input        treq_vld_n;
  output       treq_rdy_n;
  
  input [0:1]  treq_prio;       
  input [0:3]  treq_ftype;     
  input [0:7]  treq_dest_id;   
  input [0:7]  treq_src_id;    
  input [0:7]  treq_tid;       
  input [0:3]  treq_ttype;     
  input [0:33] treq_addr;      
  input [0:7]  treq_byte_en_n; 
  input [0:8]  treq_byte_count;
  input [0:63] treq_data;
  
  // Target Response
  input        tresp_rdy_n;  
  output       tresp_sof_n;
  output       tresp_eof_n;
  output       tresp_vld_n;
  output       tresp_dsc_n;
  
  output [0:1] tresp_prio;      
  output [0:3] tresp_ftype;     
  output [0:7] tresp_dest_id;      
  output [0:7] tresp_tid;       
  output [0:3] tresp_ttype;
  output [0:3] tresp_status;          
  output [0:63]tresp_data;
  
  //memory bus
  output       ram_wr;  
  output       ram_rd;  
  output[31:0] ram_addr;
  input [63:0] ram_dout; 
  output[63:0] ram_din;
  output[7:0]  ram_bus_sel;

  reg [0:1]  treq_prio_q;       
  reg [0:3]  treq_ftype_q;        
  reg [0:7]  treq_src_id_q;    
  reg [0:7]  treq_tid_q;       
  reg [0:3]  treq_ttype_q;  
  reg [0:8]  treq_byte_count_q;  
  reg [63:0] ram_din;
  
  reg        tresp_sof_n;
  reg        tresp_eof_n;
  reg        tresp_vld_n;
  reg        ram_rd;
  reg        ram_wr;  
  reg [31:0] ram_addr;
  reg [7:0]  ram_bus_sel;
//  reg        treq_vld_n_reg;
    
  reg [0:8] read_fifo_count;
  reg [0:8] read_byte_count;
  reg [0:8] write_byte_count;  
  
  wire    fifo_clk;
  wire    fifo_rst;
  wire    [63:0]    fifo_din;
  reg     fifo_wr;
  wire    fifo_rd;
  wire    [63:0]    fifo_dout;
  wire    fifo_full;
  wire    fifo_empty;
  
  reg     bag_head;
    
  reg [3:0] cur_state;
  reg [3:0] nex_state; 
  
  parameter    IDLE        =        4'b0001,
               RD_RESP     =        4'b0010,
               WR_DATA     =        4'b0100,
               WR_RESP     =        4'b1000;
					
  assign tresp_tid        =    treq_tid_q;
  assign tresp_dest_id    =    treq_src_id_q;
  assign tresp_prio       =    treq_prio_q + 1'b1;
  assign tresp_dsc_n      =    1'b1;
  assign treq_rdy_n       =    ((cur_state == IDLE) | (nex_state == WR_DATA) | (cur_state == WR_DATA)) ? 1'b0 : 1'b1;
  assign tresp_ftype      =    4'hd;
  assign tresp_ttype      =    (treq_ftype_q == 4'h2) ? 4'h8 : 4'b0;
  assign tresp_data       =    fifo_dout;   
  
  assign  fifo_clk    =    sys_clk;
  assign  fifo_rst    =    !sys_rst_n;
  assign  fifo_din    =    ram_dout;
  //{ram_dout[7:0], ram_dout[15:8], ram_dout[23:16], ram_dout[31:24],
  //                          ram_dout[39:32], ram_dout[47:40], ram_dout[55:48], ram_dout[63:56]};
  assign  fifo_rd     =    (!tresp_rdy_n & !fifo_empty);

//  always@(posedge sys_clk or negedge sys_rst_n)               
//      if (!sys_rst_n)
//		    treq_vld_n_reg    <=    1'b1;
//	   else
//          treq_vld_n_reg    <=    treq_vld_n;
			 
  always@(posedge sys_clk or negedge sys_rst_n)               
      if (!sys_rst_n) begin
          treq_prio_q       <=        2'b0;        
          treq_ftype_q      <=        4'b0; 
          treq_src_id_q     <=        8'b0;
          treq_tid_q        <=        8'b0;
          treq_ttype_q      <=        4'b0;
			 treq_byte_count_q <=        9'b0;
      end
      else if (!treq_vld_n & !treq_rdy_n & !treq_sof_n) begin
          treq_prio_q       <=        treq_prio;      
          treq_ftype_q      <=        treq_ftype;     
          treq_src_id_q     <=        treq_src_id;    
          treq_tid_q        <=        treq_tid;       
          treq_ttype_q      <=        treq_ttype;  
          treq_byte_count_q <=        treq_byte_count;			 
      end  

  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          write_byte_count    <=    9'b0;
      else if (!treq_sof_n & !treq_vld_n & !treq_rdy_n & (nex_state == WR_DATA))          
          write_byte_count    <=    treq_byte_count;
      else if ((nex_state == WR_DATA) & (write_byte_count > 8) & !treq_vld_n & !treq_rdy_n)
          write_byte_count    <=    write_byte_count - 4'h8;
      else if (cur_state == IDLE)
          write_byte_count    <=    9'b0;
		  
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          read_fifo_count    <=    9'b0;
      else if (!treq_sof_n & !treq_vld_n & !treq_rdy_n & (nex_state == RD_RESP))
		        read_fifo_count    <=   (treq_byte_count > 4'h8) ?  (treq_byte_count - 4'h8) : 9'b0;
		else if (ram_rd) 
	   begin
	       if (read_fifo_count >= 4'h8)
		        read_fifo_count    <=    read_fifo_count    -    4'h8;
		    else
		        read_fifo_count    <=    9'b0;
	   end
	 
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
		    read_byte_count    <=    9'b0;
		else if (!treq_sof_n & !treq_vld_n & !treq_rdy_n & (nex_state == RD_RESP))
		        read_byte_count    <=    treq_byte_count;
		else if (fifo_rd) 	 
	   begin
	       if (read_byte_count >= 4'h8)
		        read_byte_count    <=    read_byte_count    -    4'h8;
		    else
		        read_byte_count    <=    9'b0;
	   end
		
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          tresp_vld_n    <=    1'b1;
      else if (fifo_rd)
        	 tresp_vld_n    <=    1'b0;
      else if (nex_state == WR_RESP)
          tresp_vld_n    <=    1'b0;
      else if (!tresp_rdy_n | fifo_empty)
          tresp_vld_n    <=    1'b1;		
			     
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
	       ram_rd    <=    1'b0;
	   else if ((!treq_sof_n & !treq_vld_n & !treq_rdy_n & (nex_state == RD_RESP)) & !fifo_full)
	       ram_rd    <=    1'b1;
	   else if (|read_fifo_count & !fifo_full)
	       ram_rd    <=    1'b1;
	   else
	       ram_rd    <=    1'b0;
  
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          fifo_wr    <=    1'b0;
      else if (ram_rd)	
          fifo_wr    <=    1'b1;
      else
          fifo_wr    <=    1'b0;	 
        	 		  
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          ram_addr    <=    32'b0;
      else if (ram_wr | ram_rd)
          ram_addr    <=    ram_addr + 4'h8;
//      else if (!treq_sof_n & !treq_eof_n & |treq_byte_en_n & !treq_vld_n & !treq_rdy_n)
//        casex(treq_byte_en_n)
//            8'b1111_1110: ram_addr    <=    treq_addr + 4'h7;
//            8'b1111_110?: ram_addr    <=    treq_addr + 4'h6;
//            8'b1111_10??: ram_addr    <=    treq_addr + 4'h5;
//            8'b1111_0???: ram_addr    <=    treq_addr + 4'h4;
//            8'b1110_????: ram_addr    <=    treq_addr + 4'h3;
//            8'b110?_????: ram_addr    <=    treq_addr + 4'h2;
//            8'b10??_????: ram_addr    <=    treq_addr + 4'h1;
//			   default:      ram_addr    <=    treq_addr;
//        endcase   
      else if (!treq_vld_n & !treq_rdy_n & !treq_sof_n)
          ram_addr    <=    treq_addr[2:33];

  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
		    ram_wr    <=    1'b0;
//		else if (!treq_eof_n & !treq_vld_n & !treq_rdy_n)
//		    ram_wr    <=    1'b1;
	   else if (!treq_vld_n & !treq_rdy_n & (nex_state == WR_DATA))
		    ram_wr    <=    1'b1;
		else
          ram_wr    <=    1'b0;  
			 
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
		    ram_bus_sel    <=    8'b0;
		else if (!treq_eof_n & !treq_vld_n & !treq_rdy_n)
		    ram_bus_sel    <=    {!treq_byte_en_n[0], !treq_byte_en_n[1], !treq_byte_en_n[2], !treq_byte_en_n[3],
			                       !treq_byte_en_n[4], !treq_byte_en_n[5], !treq_byte_en_n[6], !treq_byte_en_n[7]};
          			 
			 
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          bag_head    <=    1'b0;
      else if (!treq_vld_n & !treq_rdy_n & !treq_sof_n)
          bag_head    <=    1'b1;
      else if (!tresp_sof_n | (nex_state == IDLE))
          bag_head    <=    1'b0;

  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          tresp_sof_n    <=    1'b1;
      else if (nex_state == WR_RESP)
          tresp_sof_n    <=    1'b0;
      else if (bag_head & fifo_rd & tresp_sof_n)
          tresp_sof_n    <=    1'b0;
      else if (!tresp_rdy_n & !tresp_vld_n)
          tresp_sof_n    <=    1'b1;

  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          tresp_eof_n    <=    1'b1;
      else if (nex_state == WR_RESP)
          tresp_eof_n    <=    1'b0;
      else if (bag_head & fifo_rd & (read_byte_count <= 4'h8))
          tresp_eof_n    <=    1'b0;
      else if ((read_byte_count >= 4'h8) & (read_byte_count < 9'h10) & fifo_rd)
          tresp_eof_n    <=    1'b0;
      else if (!tresp_rdy_n & !tresp_vld_n)
          tresp_eof_n    <=    1'b1;		

  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          ram_din    <=    64'b0;
      else if (nex_state    ==    WR_DATA)
          ram_din    <=    treq_data;
			 //{treq_data[56:63], treq_data[48:55], treq_data[40:47], treq_data[32:39], 
			 //                  treq_data[24:31], treq_data[16:23], treq_data[8:15], treq_data[0:7]};		
           		
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          cur_state    <=    IDLE;
      else
          cur_state    <=    nex_state;
          
  always@* begin
    case (cur_state)
        IDLE:begin
            if (!treq_sof_n & !treq_vld_n & !treq_rdy_n) begin
                case ({treq_ftype[0:3], treq_ttype[0:3]})                             
                    8'b0010_0100:    nex_state    =    RD_RESP;                           
                    8'b0101_0100,
                    8'b0101_0101,						  
                    8'b0110_0000:    nex_state    =    WR_DATA;                           
                    default     :    nex_state    =    IDLE;
                endcase						  
            end
            else
                nex_state    =    IDLE;    
        end
        
        RD_RESP: begin
            if (!(|read_byte_count))
                nex_state    =    IDLE;
            else 
                nex_state    =    RD_RESP;
        end   
        
        WR_DATA: begin		    
            if ((treq_byte_count_q <= 9'h8) | (write_byte_count <= 9'h8))
				begin
                if ((treq_ftype_q == 4'h5) & (treq_ttype_q == 4'h5))
                    nex_state    =    WR_RESP;
                else
                    nex_state    =    IDLE;
				end
            else
                nex_state    =    WR_DATA;
        end
          
        WR_RESP: begin
		      if (!tresp_vld_n & !tresp_rdy_n)
                nex_state    =    IDLE;
				else 
				    nex_state    =    WR_RESP;
        end
        
        default: 
            nex_state    =    IDLE;
        
    endcase
  end  
   
  fifo_srio_64x16 srio_rx_fifo
  (
  	 .clk(fifo_clk),
	 .rst(fifo_rst),
	 .din(fifo_din), // Bus [63 : 0] 
	 .wr_en(fifo_wr),
	 .rd_en(fifo_rd),
	 .dout(fifo_dout), // Bus [63 : 0] 
	 .full(fifo_full),
	 .empty(fifo_empty)
  );
  
endmodule  