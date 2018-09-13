module srio_initial_interface_64
(
  input                	     sys_clk,
  input                      sys_rst_n,
    
  // Logical Layer - IREQ Interface
  output    reg              ireq_sof_n,       // Start of frame
  output    reg              ireq_eof_n,       // End of frame
  output    reg              ireq_vld_n,       // Data valid
  output                     ireq_dsc_n,       // Discontinue indication
  input                      ireq_rdy_n,       // Ready
  output           [0:63]    ireq_data,        // Data
  output    reg    [0:1]     ireq_prio,        // Priority
  output    reg              ireq_crf,         // Critical Request Flow
  output    reg    [0:3]     ireq_ftype,       // Format Type
  output    reg    [0:3]     ireq_ttype,       // Transaction Type
  output    reg    [0:7]     ireq_tid,         // Transaction ID
  output    reg    [0:7]     ireq_dest_id,     // Destination ID
  output    reg    [0:33]    ireq_addr,        // Address
  output    reg    [0:7]     ireq_hopcount,    // Hopcount
  output    reg    [0:8]     ireq_byte_count,  // Packet byte count
  output    reg    [0:7]     ireq_byte_en_n,   // Packet byte enable
  output    reg              ireq_local,       // Local configuration
  output    reg    [0:15]    ireq_db_info,     // Doorbell Info
  output           [0:3]     ireq_msg_len,     // Message length
  output           [0:3]     ireq_msg_seg,     // Message segment
  output           [0:5]     ireq_mbox,        // Mailbox
  output           [0:1]     ireq_letter,      // Letter

  // Logical Layer - IRESP Interface
  input                      iresp_sof_n,
  input                      iresp_eof_n,
  input                      iresp_vld_n,
  output                     iresp_rdy_n,
  input            [0:63]    iresp_data,
  input            [0:3]     iresp_ftype,
  input            [0:3]     iresp_ttype,
  input            [0:7]     iresp_dest_id,
  input            [0:7]     iresp_src_id,
  input            [0:3]     iresp_status,
  input            [0:7]     iresp_tid,
  input            [0:3]     iresp_msg_seg,
  input            [0:1]     iresp_mbox,
  input            [0:1]     iresp_letter,
//  output           [0:1]     tresp_stalls,
  
  // Usr Control Interface
//  input                 ucfg_src_id,
  input            [7:0]     ucfg_dest_id,
  input            [31:0]    ucfg_src_start_addr,
  input            [33:0]    ucfg_dest_start_addr,
  input            [8:0]     ucfg_byte_count,
  input            [15:0]    ucfg_db_info,
  input                      ucfg_wr_n,        // 0:write, 1:read
                     
  input                      ucfg_normal_trigger,
  input                      ucfg_db_trigger, 
  
  output    reg              srio_mem_wren,
  output    reg              srio_mem_rden,
  output    reg    [31:0]    srio_mem_addr,
  output           [63:0]    srio_mem_din,
  input            [63:0]    srio_mem_dout,         
  
  output    reg              srio_db_resp,
  output                     srio_initial_busy               
);

  wire    fifo_clk;           
  wire    fifo_rst;           
  wire    [63:0]    fifo_din; 
  reg     fifo_wr;            
  wire    fifo_rd;            
  wire    [63:0]    fifo_dout;
  wire    fifo_full;          
  wire    fifo_empty; 
  (*keep = "true"*)
  reg     [8:0]    mem_rd_count;
  reg     [8:0]    req_tx_count;
  
  reg     [7:0]    db_id_reg;     
  
  wire             wr_fifo_noempty;
(*KEEP = "TRUE"*)  reg     [4:0]    cur_status_req;
  reg     [4:0]    nex_status_req;
  
  parameter  IDLE_REQ        =    5'b0_0001,
             WR_HEAD_REQ     =    5'b0_0010,
             WR_DATA_REQ     =    5'b0_0100,
             DB_HEAD_REQ     =    5'b0_1000,
             RD_HEAD_REQ     =    5'b1_0000;
             
  assign  fifo_clk    =    sys_clk;            
  assign  fifo_rst    =    !sys_rst_n;
  assign  fifo_din    =    srio_mem_dout;
  
  assign  ireq_data   =    fifo_dout;
  assign  wr_fifo_noempty    =    !fifo_empty;
  assign  fifo_rd     =    (cur_status_req == WR_DATA_REQ) & wr_fifo_noempty & !ireq_rdy_n;
           
  assign  ireq_dsc_n  =    1'b1;     
  assign  iresp_rdy_n =    1'b0;
  assign  srio_initial_busy = (cur_status_req != IDLE_REQ) ? 1'b1 : 1'b0;


//______________________________________require_______________________________________________
/////////////////////////////////////////////////////////////////////////  
  always@(posedge sys_clk or negedge sys_rst_n) 
      if (!sys_rst_n)
      begin
          ireq_prio          <=    2'b0;
          ireq_crf           <=    1'b0;
//          ireq_ftype         <=    4'b0;
//          ireq_ttype         <=    4'b0;
          ireq_tid           <=    8'b0;
          ireq_dest_id       <=    8'b0;
          ireq_addr          <=    34'b0;
          ireq_hopcount      <=    8'b0;
          ireq_byte_count    <=    9'b0;
          ireq_local         <=    1'b0;
          ireq_db_info       <=    16'b0;
      end
      else if ((ucfg_normal_trigger | ucfg_db_trigger) & !srio_initial_busy)
      begin
          ireq_prio          <=    2'b1;
          ireq_crf           <=    1'b0;
//          ireq_ftype         <=    4'b0;
//          ireq_ttype         <=    4'b0;
          ireq_tid           <=    ireq_tid + 8'b1;
          ireq_dest_id       <=    ucfg_dest_id;
          ireq_addr          <=    {ucfg_dest_start_addr[33:3], 3'b0};
          ireq_hopcount      <=    8'hff;
          ireq_byte_count    <=    ucfg_byte_count;
          ireq_local         <=    1'b0;
          ireq_db_info       <=    ucfg_db_info;
      end
                            
  always@(posedge sys_clk or negedge sys_rst_n) 
      if (!sys_rst_n)
      begin
          ireq_ftype         <=    4'b0;
          ireq_ttype         <=    4'b0;      	         
      end
      else if (ucfg_db_trigger)
      begin
          ireq_ftype         <=    4'b1010;
          ireq_ttype         <=    4'b0;        	  
      end
      else if (ucfg_normal_trigger & ucfg_wr_n)
      begin
          ireq_ftype         <=    4'b0010;
          ireq_ttype         <=    4'b0100;        	  
      end
      else if (ucfg_normal_trigger & !ucfg_wr_n)
      begin
          ireq_ftype         <=    4'b0101;
          ireq_ttype         <=    4'b0100;        	  
      end                       

  always@(posedge sys_clk or negedge sys_rst_n) 
      if (!sys_rst_n)
          db_id_reg    <=    8'b0;
      else if (ucfg_db_trigger)
          db_id_reg    <=    ireq_tid + 8'b1;
                      
///////////////////////////////////////////////////////////////////////////////// 
  always@(posedge sys_clk or negedge sys_rst_n) 
      if (!sys_rst_n)
          srio_mem_addr    <=    32'b0;
      else if (ucfg_normal_trigger)
          srio_mem_addr    <=    ucfg_src_start_addr;
      else if (!srio_mem_wren)//(srio_mem_wren | srio_mem_rden)
          srio_mem_addr    <=    srio_mem_addr    +    32'h8;
          
  always@(posedge sys_clk or negedge sys_rst_n) 
      if (!sys_rst_n)
          mem_rd_count    <=    9'b0;
      else if (ucfg_normal_trigger & !ucfg_wr_n)
          mem_rd_count    <=    ucfg_byte_count;
      else if (!fifo_full)
          mem_rd_count    <=    (mem_rd_count >= 9'h008) ? (mem_rd_count - 8'h08) : 9'b0;
          
  always@(posedge sys_clk or negedge sys_rst_n) 
      if (!sys_rst_n)
          srio_mem_wren    <=    1'b1;
      else if (ucfg_normal_trigger & !ucfg_wr_n)
          srio_mem_wren    <=    1'b0;
      else if (!fifo_full && (mem_rd_count > 9'd8))
          srio_mem_wren    <=    1'b0;
      else
          srio_mem_wren    <=    1'b1; 
            
  always@(posedge sys_clk or negedge sys_rst_n) 
      if (!sys_rst_n)
          fifo_wr    <=    1'b0;
      else
          fifo_wr    <=    !srio_mem_wren;
          
  always@(posedge sys_clk or negedge sys_rst_n) 
      if (!sys_rst_n)
          req_tx_count    <=    9'h000;
      else if (ucfg_normal_trigger & !ucfg_wr_n & !(ucfg_byte_count[8]& |ucfg_byte_count[7:0]) & |ucfg_byte_count[8:0])
          req_tx_count    <=    ucfg_byte_count;
      else if (fifo_rd)
          req_tx_count    <=    (req_tx_count >= 9'h08) ? (req_tx_count - 8'h08) : 9'b0;       
                
//////////////////////////////////////////////////////////////////////////////////
  always@(posedge sys_clk or negedge sys_rst_n) 
      if (!sys_rst_n)
          ireq_vld_n    <=    1'b1;
      else if ((nex_status_req == DB_HEAD_REQ) | (nex_status_req == RD_HEAD_REQ))
          ireq_vld_n    <=    1'b0;
      else if (fifo_rd & (cur_status_req == WR_DATA_REQ))
          ireq_vld_n    <=    1'b0;
      else if (ireq_rdy_n & wr_fifo_noempty & !ireq_vld_n)
          ireq_vld_n    <=    1'b0;
      else 
          ireq_vld_n    <=    1'b1;
          
  always@(posedge sys_clk or negedge sys_rst_n) 
      if (!sys_rst_n)
          ireq_sof_n    <=    1'b1;
      else if ((nex_status_req == DB_HEAD_REQ) | (nex_status_req == RD_HEAD_REQ))
          ireq_sof_n    <=    1'b0;
      else if ((cur_status_req == WR_HEAD_REQ) & (nex_status_req == WR_DATA_REQ))         
          ireq_sof_n    <=    1'b0;
      else if (!ireq_vld_n & !ireq_rdy_n)
          ireq_sof_n    <=    1'b1;
          
  always@(posedge sys_clk or negedge sys_rst_n) 
      if (!sys_rst_n)
          ireq_eof_n    <=    1'b1;
      else if ((nex_status_req == DB_HEAD_REQ) | (nex_status_req == RD_HEAD_REQ))
          ireq_eof_n    <=    1'b0;
      else if ((cur_status_req == WR_DATA_REQ) & (req_tx_count <= 9'h008) & fifo_rd & |req_tx_count)
          ireq_eof_n    <=    1'b0;
      else if (!ireq_vld_n & !ireq_rdy_n)
          ireq_eof_n    <=    1'b1;
          
  always@(posedge sys_clk or negedge sys_rst_n) 
      if (!sys_rst_n)
          ireq_byte_en_n    <=    8'hff;
      else
      begin
      	  case (ireq_byte_count[6:8])
      	      3'b000 : ireq_byte_en_n    <=    8'b0000_0000;
      	      3'b001 : ireq_byte_en_n    <=    8'b0111_1111;
      	      3'b010 : ireq_byte_en_n    <=    8'b0011_1111;
      	      3'b011 : ireq_byte_en_n    <=    8'b0001_1111;
      	      3'b100 : ireq_byte_en_n    <=    8'b0000_1111;
      	      3'b101 : ireq_byte_en_n    <=    8'b0000_0111;
      	      3'b110 : ireq_byte_en_n    <=    8'b0000_0011;
      	      3'b111 : ireq_byte_en_n    <=    8'b0000_0001;
      	  endcase
      end
      	                           
//////////////////////////////////////////////////////////////////////////////////            
  always@(posedge sys_clk or negedge sys_rst_n)
      if (!sys_rst_n)
          cur_status_req    <=    IDLE_REQ;
      else
          cur_status_req    <=    nex_status_req;
          
  always@(*)
  begin
      case (cur_status_req)
          IDLE_REQ:
          begin
          	  if (ucfg_db_trigger)
          	      nex_status_req    <=    DB_HEAD_REQ;
          	  else if (ucfg_normal_trigger & ucfg_wr_n)
          	      nex_status_req    <=    RD_HEAD_REQ;
          	  else if (ucfg_normal_trigger & !ucfg_wr_n)
          	      nex_status_req    <=    WR_HEAD_REQ;
          	  else
          	      nex_status_req    <=    IDLE_REQ;     
          end
          
          WR_HEAD_REQ:
          begin
          	  if (wr_fifo_noempty & !ireq_rdy_n)
          	      nex_status_req    <=    WR_DATA_REQ;
          	  else
          	      nex_status_req    <=    WR_HEAD_REQ;         
          end
          
          WR_DATA_REQ:
          begin
          	  if (!wr_fifo_noempty & !ireq_rdy_n)
          	      nex_status_req    <=    IDLE_REQ;
          	  else
          	      nex_status_req    <=    WR_DATA_REQ;    
          end
          
          DB_HEAD_REQ:
          begin
              nex_status_req    <=    IDLE_REQ;	  
          end 
          
          RD_HEAD_REQ:
          begin
          	  nex_status_req    <=    IDLE_REQ;
          end
          
          default:
              nex_status_req    <=    IDLE_REQ; 
      
      endcase           
  end
  
/////////////////////////////////////////////////////////////  
                  
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

//______________________________________response_______________________________________________ 
  always@(posedge sys_clk or negedge sys_rst_n) 
      if (!sys_rst_n)
          srio_db_resp    <=    1'b0;
      else if (!iresp_sof_n & !iresp_eof_n & !iresp_vld_n & (iresp_tid == db_id_reg) & (iresp_status == 4'b0) & (iresp_ftype == 4'b1101) & (iresp_ttype == 4'b0))
          srio_db_resp    <=    1'b1;
      else
          srio_db_resp    <=    1'b0;
          
 
endmodule