module srio_target_interface_64
(
	         sys_clk,
            sys_rst_n,

             // Target Response
            tresp_prio,					//优先级
            tresp_ftype,				//格式类型
            tresp_dest_id,				//目的ID
            tresp_ttype,				//传输类型
            tresp_status,				//传输状态，即传输完成还是出现错误
            tresp_tid,					//传输ID，表示包的状态，即传输成功完成还是出现错误
            tresp_data,
            tresp_sof_n,
            tresp_eof_n,
            tresp_vld_n,
            tresp_dsc_n,				//TRESP断开标识，低电平有效，表示TRESP接口想在这个时钟周期终止当前包的传输
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
            treq_addr,					//地址，其中[1:0]是从RapidIO包格式而来的xamsbs
            treq_byte_en_n,			//字节计数
            treq_byte_count,			//包字节计数，表示包中有效字节数，最大值为256字节
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
            target_wr,
            target_rd,
            target_addr,
            target_dout,
            target_din,
            target_bus_sel				
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
  output       target_wr;  
  output       target_rd;  
  output[31:0] target_addr;
  input [63:0] target_dout; 
  output[63:0] target_din;
  output[7:0]  target_bus_sel;

  reg [0:1]  treq_prio_q;       
  reg [0:3]  treq_ftype_q;        
  reg [0:7]  treq_src_id_q;    
  reg [0:7]  treq_tid_q;       
  reg [0:3]  treq_ttype_q;  
  reg [0:8]  treq_byte_count_q;  
  reg [63:0] target_din;
  
  reg        tresp_sof_n;
  reg        tresp_eof_n;
  reg        tresp_vld_n;
  reg        target_rd;
  reg        target_wr;  
  reg [31:0] target_addr;
  reg [7:0]  target_bus_sel;
//  reg        treq_vld_n_reg;
    
  reg [0:8] read_fifo_count;				//读fifo计数
  reg [0:8] read_byte_count;				//读字节计数
  reg [0:8] write_byte_count;				//写字节计数
  
//----------FIFO control port----------------
  wire    fifo_clk;
  wire    fifo_rst;
  wire    [63:0]    fifo_din;
  reg     fifo_wr;
  wire    fifo_rd;
  wire    [63:0]    fifo_dout;
  wire    fifo_full;
  wire    fifo_empty;
  
  reg     bag_head;
 
//------------state machine----------------------
  reg [3:0] cur_state;
  reg [3:0] nex_state; 
  
  parameter    IDLE        =        4'b0001,
               RD_RESP     =        4'b0010,		//
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
  assign  fifo_din    =    target_dout;
  //{target_dout[7:0], target_dout[15:8], target_dout[23:16], target_dout[31:24],
  //                          target_dout[39:32], target_dout[47:40], target_dout[55:48], target_dout[63:56]};
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
		else if (target_rd) 
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
			 
//---------------------generate  target_rd signal-----------------------------     
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
	       target_rd    <=    1'b0;
	   else if ((!treq_sof_n & !treq_vld_n & !treq_rdy_n & (nex_state == RD_RESP)) & !fifo_full)
	       target_rd    <=    1'b1;
	   else if (|read_fifo_count & !fifo_full)
	       target_rd    <=    1'b1;
	   else
	       target_rd    <=    1'b0;
  
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          fifo_wr    <=    1'b0;
      else if (target_rd)	
          fifo_wr    <=    1'b1;
      else
          fifo_wr    <=    1'b0;	 
        	 		  
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          target_addr    <=    32'b0;
      else if (target_wr | target_rd)
          target_addr    <=    target_addr + 4'h8;
//      else if (!treq_sof_n & !treq_eof_n & |treq_byte_en_n & !treq_vld_n & !treq_rdy_n)
//        casex(treq_byte_en_n)
//            8'b1111_1110: target_addr    <=    treq_addr + 4'h7;
//            8'b1111_110?: target_addr    <=    treq_addr + 4'h6;
//            8'b1111_10??: target_addr    <=    treq_addr + 4'h5;
//            8'b1111_0???: target_addr    <=    treq_addr + 4'h4;
//            8'b1110_????: target_addr    <=    treq_addr + 4'h3;
//            8'b110?_????: target_addr    <=    treq_addr + 4'h2;
//            8'b10??_????: target_addr    <=    treq_addr + 4'h1;
//			   default:      target_addr    <=    treq_addr;
//        endcase   
      else if (!treq_vld_n & !treq_rdy_n & !treq_sof_n)
          target_addr    <=    treq_addr[2:33];

  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
		    target_wr    <=    1'b0;
//		else if (!treq_eof_n & !treq_vld_n & !treq_rdy_n)
//		    target_wr    <=    1'b1;
	   else if (!treq_vld_n & !treq_rdy_n & (nex_state == WR_DATA))
		    target_wr    <=    1'b1;
		else
          target_wr    <=    1'b0;  
			 
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
		    target_bus_sel    <=    8'b0;
		else if (!treq_eof_n & !treq_vld_n & !treq_rdy_n)
		    target_bus_sel    <=    {!treq_byte_en_n[0], !treq_byte_en_n[1], !treq_byte_en_n[2], !treq_byte_en_n[3],
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
          target_din    <=    64'b0;
      else if (nex_state    ==    WR_DATA)
          target_din    <=    treq_data;
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