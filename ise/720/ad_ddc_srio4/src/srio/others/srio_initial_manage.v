//initiator�˿ڵĿ����źŵ�����
//fir֮������ݶ����ӳ�3us����������fifo��дʹ�ܣ�fifo��յȲ���
module srio_initial_manage(
	input                     	sys_clk						,
	input                     	sys_rst_n					,
	input								pll_100M						,
	input								PRI							,
//	input								cpi_st						,
	input								rst_n							,
	input								fir_20M_rdy					,
	input								fir_1M_rdy					,
//	input								fir_2_5M_rdy				,
	input				[ 7:0]		work_mode_ifm				,			//����ģʽ
	input				[63:0]		he								,			//��IQƴ��36λ���ڵ�λ����28λ��0
	input				[63:0]		fw								,			//��IQƴ��36λ���ڵ�λ����28λ��0
	input				[63:0]		fy								,			//��IQƴ��36λ���ڵ�λ����28λ��0
	input				[ 7:0]		cmd_DA						,			//DA��������
	input				[15:0]		AD_he							,			//AD��·�ź�
	input				[15:0]		AD_fw							,			//AD��λ��·�ź�
	input				[15:0]		AD_fy							,			//AD������·�ź�
	input                     	srio_db_resp				,       	//�Է���db��ִ    
	input                     	srio_initial_busy			,			//�Ƿ��ڷ�������
	
	output   reg 	[ 7:0]    	ucfg_dest_id				,			//Ŀ��ID
	output    	   [31:0]    	ucfg_src_start_addr		,			//Դ��ʼ��ַ
	output   reg   [33:0]    	ucfg_dest_start_addr		,			//Ŀ����ʼ��ַ
	output        	[ 8:0]    	ucfg_byte_count			,			//һ������������С
	output         [15:0]    	ucfg_db_info				,			//1   doorbell����
	output                    	ucfg_wr_n					,        // 0:write, 1:read      0
	output	reg	[63:0]		initiator_dout				,			//Ҫ���͵�����	
	output   reg              	ucfg_normal_trigger		,			//����6.4ns�Ĵ����ź�
	output   	 	           	ucfg_db_trigger			,			//ucfg_normal_trigger��λ�������������ݿ�ʼ��Ч
	output			[149:0]		TRIG2							,
	output			[149:0]		TRIG0							
		);

//-----------------srio�����ź�---------------------------
//reg					[ 7:0]		ucfg_dest_id				;			//Ŀ��ID
//reg					[31:0]		srio_dest_addr				;			//Ŀ�ĵ�ַ
//reg									srio_dest_addr_valid		;			//��ַ��Ч������ַ��Ч��Ŀ�ĵ�ַ���͸�initiatorģ��
//reg					[31:0]		ucfg_dest_start_addr		;			//Ŀ�ĵ�ַ�ӳ�
reg									initial_busy_temp			;			//initial_busy�ӳ�
reg									normal_trigger_temp		;			//normal_trigger�ӳ�
reg					[13:0]		bags_cnt						;			//�����������
reg									normal_trigger				;
wire									normal_trigger_p			;			//normal_trigger��������
wire									initial_busy_n				;			//initial_busy���½���
reg					[ 1:0]		cnt_sel						;
reg					[ 7:0]		cnt150						;
//---------------3��fifo--------------------------------
reg					[63:0]		fifo_in_he					;
reg					[63:0]		fifo_in_fw					;
reg					[63:0]		fifo_in_fy					;
wire					[63:0]		fifo_out_he					;
wire					[63:0]		fifo_out_fw					;
wire					[63:0]		fifo_out_fy					;
reg									wr_en_he						;
reg									wr_en_fw						;
reg									wr_en_fy						;
reg					[ 5:0]		cnt_wr_en					;			//��baker��ģʽ�£�fir_rdyʹ�ܺ��32������wr_en���ø�
reg									rd_en_he						;			//3��fifo�Ķ�ʹ��
reg									rd_en_fw						;			
reg									rd_en_fy						;	
reg									rd_he_reg					;			//�ø��źŽ�fifo��������ݸ���initiator_dout
reg									rd_fw_reg					;
reg									rd_fy_reg					;
reg					[ 5:0]		cnt_rd						;
wire					[ 9:0]		data_count_he				;		
wire					[ 9:0]		data_count_fw				;	
wire					[ 9:0]		data_count_fy				;	
wire									full_he						;
wire									full_fw						;
wire									full_fy						;
wire									empty_he						;
wire									empty_fw						;
wire									empty_fy						;
reg					[ 8:0]		cnt_delay					;			//���ǵ�FIR���ӳٺ����ݷ����ӳ٣�cpi���ӳ�3.5us��fifo��λһ��
reg									sclr							;

//-----------------pri temp----------------------------
reg									sclr_temp1					;			//156.25MHz delay
reg									sclr_temp2					;			//156.25MHz delay
reg									PRI_temp3					;			//100MHz	delay
reg									cpi_st_temp					;
//(*KEEP="TRUE"*)
//wire									PRI_srio_p					;		//��156.25MHzʱ�Ӳɵ���PRI������
//wire									PRI_clk100_p				;		//��100MHzʱ�Ӳɵ���PRI������
wire									fir_sel						;			//1��ʱ��ѡ��1MHz��0��ʱ��ѡ��20MHz
reg					[ 7:0]		work_mode					;
assign	fir_sel						= ((work_mode==3'b001) || (work_mode==3'b011))?1'b1:1'b0;
//------------------------------------------------------
assign	ucfg_src_start_addr		= 32'b0					;			//Դ��ʼ��ַ����0�Ϳ���
assign	fsp4_dest_start_addr		= 34'h000000100		;			//Ŀ����ʼ��ַ���̶�ֵ
assign	ucfg_wr_n					= 1'b0					;			//д���ݣ�����initiator��˵��д������ζ����target�˿�д���ݣ��������
assign	ucfg_byte_count			= 9'h100					;			//һ���е���������С,256Bytes
assign	ucfg_db_info				= 16'h0002				;			//db����
assign	ucfg_db_trigger			= 1'b0					;			//��FPGA��������doorbell
//assign	ucfg_normal_trigger		= normal_trigger_p	;
assign	initial_busy_n				= (srio_initial_busy==1'b0)&&(initial_busy_temp==1'b1) ;	//ȡ�½��أ����������
assign   normal_trigger_p			= (normal_trigger==1'b1)&&(normal_trigger_temp==1'b0) ;	//ȡ������
assign	sclr_srio_p					= (sclr_temp1==1'b1)&&(sclr_temp2==1'b0);						//��156.25MHzʱ�Ӳɵ���sclr������
assign	PRI_clk100_p				= (PRI==1'b1)&&(PRI_temp3==1'b0);								//��100MHzʱ�Ӳɵ���PRI������
//assign	cpi_p							=	((cpi_st==1'b1)&&(cpi_st_temp==1'b0))?1'b1:1'b0;
//-------------------��PRI����-------------------------
always @ ( posedge sys_clk )
begin
	if(!sys_rst_n)
		begin
			sclr_temp1						<=		1'b0					;
			sclr_temp2						<=		1'b0					;
		end
	else
		begin
			sclr_temp1						<=		sclr					;
			sclr_temp2						<=		sclr_temp1			;
		end
end

always @ ( posedge pll_100M )
begin
	if(!rst_n)
			PRI_temp3						<=		1'b0					;
	else
			PRI_temp3						<=		PRI					;
end

//always @ ( posedge pll_100M )
//begin
//	if(!rst_n)
//			cpi_st_temp						<=		1'b0					;
//	else
//			cpi_st_temp						<=		cpi_st				;
//end
//-----��֤��������PRI�����ش���ʼ�仯--------------
always @ ( posedge pll_100M )
begin
	if(!rst_n)
			work_mode			<=		8'b0					;
	else	if(PRI)
			work_mode			<=		work_mode_ifm		;
	else
			work_mode			<=		work_mode			;
end
//--------------------ucfg_normal_trigger------------------------
always @ ( posedge sys_clk )
begin
	if(!sys_rst_n)
			ucfg_normal_trigger			<=		1'b0					;
	else
			ucfg_normal_trigger			<=		normal_trigger_p	;
end
//-------------------initial_busy��normal_trigger�źŵ��ӳ�-------------------
always @( posedge sys_clk )
begin
	if (!sys_rst_n)
			initial_busy_temp				<= 1'b0								;
	else
			initial_busy_temp				<= srio_initial_busy				;
end

always @( posedge sys_clk )
begin
	if (!sys_rst_n)
			normal_trigger_temp			<= 1'b0								;
	else
			normal_trigger_temp			<= normal_trigger					;	
end		
//-------------------fir֮������ݶ����ӳ�3us������------------------
always @ ( posedge pll_100M )
begin
	if(!rst_n)
			cnt_delay						<=		9'd0							;
	else	if(PRI_clk100_p)
			cnt_delay						<=		9'd0							;
	else	if(cnt_delay<=9'd450)
			cnt_delay						<=		cnt_delay+1'b1				;
	else
			cnt_delay						<=		cnt_delay					;
end
//-----------------����cdc�в��������PRI���ӳ�3.5us�ɱ�֤���������Ч����------------
always @ ( posedge pll_100M )
begin
	if(!rst_n)
			sclr								<=		1'b1							;
	else	if(cnt_delay==9'd350)
			sclr								<=		1'b1							;
	else	
			sclr								<=		1'b0							;
end

//--------------------дʹ����fir_rdy��Ч����λһ��100MHzʱ������-------------------
//always @ ( posedge pll_100M )
//begin
//	if(!rst_n)
//			cnt_wr_en						<=		6'b0							;
//	else	if(sclr)
//			cnt_wr_en						<=		6'b0							;
//	else	if(cnt_wr_en==6'd32)
//			cnt_wr_en						<=		6'b0							;
//	else	if(fir_1M_rdy && fir_sel)												//bakerģʽ
//			cnt_wr_en						<=		6'd1							;
//	else	if(fir_2_5M_rdy && (work_mode==8'h08))								//�Կ�ȷ��
//			cnt_wr_en						<=		6'd1							;
//	else	if(cnt_wr_en>0)
//			cnt_wr_en						<=		cnt_wr_en+1'b1				;
//	else
//			cnt_wr_en						<=		6'b0							;
//end
always @ ( posedge pll_100M )
begin
	if(!rst_n)
			cnt_wr_en						<=		6'b0							;
	else	if(sclr)
			cnt_wr_en						<=		6'b0							;
	else	if(cnt_wr_en==6'd32)
			cnt_wr_en						<=		6'b0							;
	else	if(fir_1M_rdy)
			cnt_wr_en						<=		6'd1							;
	else	if(cnt_wr_en>0)
			cnt_wr_en						<=		cnt_wr_en+1'b1				;
	else
			cnt_wr_en						<=		6'b0							;
end
//---------------��λ������ѡ����Щ���ݷ��͵��ӿڰ�-----------------------
//------����fifo��дʹ�ܣ�������������λ������ָ���ֻ����Ӧ������д��fifo����-----
always @ ( posedge pll_100M )
begin
	if(!rst_n)
		begin
				wr_en_he						<=		1'b0							;
				wr_en_fw						<=		1'b0							;
				wr_en_fy						<=		1'b0							;
		end
	else	case(cmd_DA)			//AD���ݰ�100MHz����ddc���ݰ�25MHz�����ڽӿڰ��и��ݹ���ģʽ�͵�ַ����������
		8'h01:																				//��·AD����
			begin
				wr_en_he						<=		1'b1							;
				wr_en_fw						<=		1'b0							;
				wr_en_fy						<=		1'b0							;
			end
		8'h02:																				//��λ��·AD����
			begin
				wr_en_he						<=		1'b0							;
				wr_en_fw						<=		1'b1							;
				wr_en_fy						<=		1'b0							;
			end
		8'h03:																				//������·AD����
			begin
				wr_en_he						<=		1'b0							;
				wr_en_fw						<=		1'b0							;
				wr_en_fy						<=		1'b1							;
			end
		8'h04:																				//��·ddc����
			begin
				wr_en_he						<=		fir_20M_rdy					;		//fir_20M_rdy
				wr_en_fw						<=		1'b0							;
				wr_en_fy						<=		1'b0							;
			end
		8'h05:																				//��λ��·ddc����
			begin
				wr_en_he						<=		1'b0							;
				wr_en_fw						<=		fir_20M_rdy					;		//fir_20M_rdy
				wr_en_fy						<=		1'b0							;
			end
		8'h06:																				//������·ddc����
			begin
				wr_en_he						<=		1'b0							;
				wr_en_fw						<=		1'b0							;
				wr_en_fy						<=		fir_20M_rdy					;		//fir_20M_rdy
			end
	default:																				//��û������Ҫ���͵��ӿڰ�ʱ����·�źŴ���ʽ��ͬ
		case(fir_sel)
		1'b0:
			begin
				wr_en_he						<=		fir_20M_rdy					;
				wr_en_fw						<=		fir_20M_rdy					;
				wr_en_fy						<=		fir_20M_rdy					;
			end
		1'b1:
			if(cnt_wr_en>0)
				begin
					wr_en_he					<=		1'b1							;
					wr_en_fw					<=		1'b1							;
					wr_en_fy					<=		1'b1							;
				end
			else
				begin
					wr_en_he					<=		1'b0							;
					wr_en_fw					<=		1'b0							;
					wr_en_fy					<=		1'b0							;
				end
		default:
				begin
					wr_en_he					<=		1'b0							;
					wr_en_fw					<=		1'b0							;
					wr_en_fy					<=		1'b0							;
				end
		endcase																		
	endcase
end
//always @ ( posedge pll_100M )
//begin
//	if(!rst_n)
//			wr_en								<=		1'b0							;
//	else	case(fir_sel)
//		1'b0:
//			if((work_mode==8'h08)&&(cnt_wr_en>0))								//�Կ�ȷ��ģʽ�£�ÿ��д��32������
//				wr_en							<=		1'b1							;
//			else	if(work_mode==8'h08)
//				wr_en							<=		1'b0							;
//			else
//				wr_en							<=		fir_20M_rdy					;
//		1'b1:
//			if(cnt_wr_en>0)
//				wr_en							<=		1'b1							;
//			else
//				wr_en							<=		1'b0							;
//		default:
//			wr_en								<=		1'b0							;
//		endcase
//end
//--------------------------fifo��д�����ݸ�ֵ-------------------------------------
always @ ( posedge pll_100M )
begin
	if(!rst_n)
		begin
			fifo_in_he						<=		64'b0							;
			fifo_in_fw						<=		64'b0							;
			fifo_in_fy						<=		64'b0							;
		end						
	else	if(cmd_DA==8'h01)
		begin
			fifo_in_he						<=		AD_he							;
			fifo_in_fw						<=		AD_fw							;
			fifo_in_fy						<=		AD_fy							;
		end
	else
		begin						
			fifo_in_he						<=		he								;
			fifo_in_fw						<=		fw								;
			fifo_in_fy						<=		fy								;
		end
end

always @ ( posedge pll_100M )
begin
	if(!rst_n)
			ucfg_dest_start_addr			<=		34'b0							;
	else	case(cmd_DA)
		8'h01:
			ucfg_dest_start_addr			<=		34'h0_0100_0000			;
		8'h02:
			ucfg_dest_start_addr			<=		34'h0_0100_0000			;
		8'h03:
			ucfg_dest_start_addr			<=		34'h0_0100_0000			;
		8'h04:
			ucfg_dest_start_addr			<=		34'h0_0200_0000			;
		8'h05:
			ucfg_dest_start_addr			<=		34'h0_0200_0000			;
		8'h06:
			ucfg_dest_start_addr			<=		34'h0_0200_0000			;
		default:
			ucfg_dest_start_addr			<=		fsp4_dest_start_addr		;
		endcase
end
////-----------PRI�����غ��ǰ150������cnt_sel���仯-------------------
////150��������� ��chipscope�вɳ��������з������Ľ������֤����Ӱ����һ��PRI���ݴ���
//always @ ( posedge sys_clk )
//begin
//	if(!rst_n)
//			cnt150							<=		8'd0						;
//	else	if(sclr)										//fifo����󣬷��͵ĵ�һ�����Ƿ���FPGA1��
//			cnt150							<=		8'd1						;
//	else	if(cnt150==8'd150)
//			cnt150							<=		8'd0						;
//	else	if(cnt150>=1)
//			cnt150							<=		cnt150+1'b1				;
//	else
//			cnt150							<=		cnt150					;
//end
//----------ÿһ��initial_busy���½��أ�cnt_sel+1����,0 1 2ѭ������----------------
always @ ( posedge sys_clk )
begin
	if(!rst_n)
			cnt_sel							<=		2'b00						;
	else	if(cmd_DA!=8'h00)
		case(cmd_DA)
			8'h01:
				cnt_sel						<=		2'b00						;
			8'h02:
				cnt_sel						<=		2'b01						;
			8'h03:
				cnt_sel						<=		2'b10						;
			8'h04:
				cnt_sel						<=		2'b00						;
			8'h05:
				cnt_sel						<=		2'b01						;
			8'h06:
				cnt_sel						<=		2'b10						;
			default:
				cnt_sel						<=		2'b00						;
			endcase
	else	if(sclr_srio_p)
			cnt_sel							<=		2'b00						;
	else	if(initial_busy_n &&(cnt_sel==2'b10))		
			cnt_sel							<=		2'b00						;
	else	if(initial_busy_n)		
			cnt_sel							<=		cnt_sel+1				;
	else		
			cnt_sel							<=		cnt_sel					;
end
//-------------------------ÿ��ֻ��32������-----------------------------
always @ ( posedge sys_clk )
begin
	if(!rst_n)
		begin
			cnt_rd							<=		6'd0						;
			rd_en_he							<=		1'b0						;
			rd_en_fw							<=		1'b0						;
			rd_en_fy							<=		1'b0						;
		end
//	else	if(cnt150>=1)															//PRI�����غ��ǰ150�����ڲ������κβ���
//		begin
//			cnt_rd							<=		6'd0						;
//			rd_en_he							<=		1'b0						;
//			rd_en_fw							<=		1'b0						;
//			rd_en_fy							<=		1'b0						;
//		end
	else
		case(cnt_sel)
		2'b00:
			if(normal_trigger_p)
				begin
					cnt_rd					<=		6'd1						;
					rd_en_he					<=		1'b1						;
				end
			else	if(cnt_rd==6'd32)
				begin
					cnt_rd					<=		6'd0						;
					rd_en_he					<=		1'b0						;
				end
			else	if(cnt_rd>=1)
				begin
					cnt_rd					<=		cnt_rd+1'b1				;
					rd_en_he					<=		1'b1						;						
				end
			else
				begin
					cnt_rd					<=		cnt_rd					;
					rd_en_he					<=		1'b0						;
				end
		2'b01:
			if(normal_trigger_p)
				begin
					cnt_rd					<=		6'd1						;
					rd_en_fw					<=		1'b1						;
				end
			else	if(cnt_rd==6'd32)
				begin
					cnt_rd					<=		6'd0						;
					rd_en_fw					<=		1'b0						;
				end
			else	if(cnt_rd>=1)
				begin
					cnt_rd					<=		cnt_rd+1'b1				;
					rd_en_fw					<=		1'b1						;	
				end
			else
				begin
					cnt_rd					<=		cnt_rd					;
					rd_en_fw					<=		1'b0						;	
				end
		2'b10:
			if(normal_trigger_p)
				begin
					cnt_rd					<=		6'd1						;
					rd_en_fy					<=		1'b1						;
				end
			else	if(cnt_rd==6'd32)
				begin
					cnt_rd					<=		6'd0						;
					rd_en_fy					<=		1'b0						;
				end
			else	if(cnt_rd>=1)
				begin
					cnt_rd					<=		cnt_rd+1'b1				;
					rd_en_fy					<=		1'b1						;
				end
			else
				begin
					cnt_rd					<=		cnt_rd					;
					rd_en_fy					<=		1'b0						;
				end
		default:
				begin
					cnt_rd					<=		6'd0						;
					rd_en_he					<=		1'b0						;
					rd_en_fw					<=		1'b0						;
					rd_en_fy					<=		1'b0						;
				end
		endcase
end

//----------------normal_trigger��δ����������fifo������������32ʱ��1-----------------
always @ ( posedge sys_clk )
begin
	if(!sys_rst_n)
			normal_trigger					<=		1'b0						;
	else
		case(cnt_sel)																	//cnt_sel==0ʱ������he·����
		2'b00:
			if(!srio_initial_busy && (data_count_he >= 10'd32))
				normal_trigger				<=		1'b1						;
			else
				normal_trigger				<=		1'b0						;
		2'b01:																			//cnt_sel==1ʱ������fw·����
			if(!srio_initial_busy && (data_count_fw >= 10'd32))
				normal_trigger				<=		1'b1						;
			else
				normal_trigger				<=		1'b0						;
		2'b10:																			//cnt_sel==2ʱ������fy·����
			if(!srio_initial_busy && (data_count_fy >= 10'd32))
				normal_trigger				<=		1'b1						;
			else
				normal_trigger				<=		1'b0						;
		default:
				normal_trigger				<=		normal_trigger			;
		endcase
end

//----------------���Ͱ�������һ��normal_trigger��һ������---------------------------
always @( posedge sys_clk )
begin
	if (!sys_rst_n)
			bags_cnt							<= 14'd0							;
	else if(sclr_srio_p)
			bags_cnt							<=	14'd0							;
	else if (normal_trigger_p && (cnt_sel==2'b00))							//��һ·���͵İ�������·���͵İ�����ͬ
			bags_cnt							<= bags_cnt + 1'b1 			;
	else
			bags_cnt							<=	bags_cnt						;
end

//------------����ַ��Ч�ź�==1ʱ������ַ����ucfg_dest_start_addr-------------
//always @( posedge sys_clk )
//begin
//	if (!sys_rst_n)
//			ucfg_dest_start_addr			<= 32'b0							;
//	else if (srio_dest_addr_valid)
//			ucfg_dest_start_addr			<= srio_dest_addr				;
//	else if (initial_busy_n)
//			ucfg_dest_start_addr			<= ucfg_dest_start_addr + 9'h100		;			//ÿ����256�ֽ����ݣ�ÿ������һ�����ݣ���ַ��256
//end
//----------------Ŀ��ID��ֵ������cnt_sel����ֵ------------------e f 10 11
always@( posedge sys_clk )
begin
	if (!sys_rst_n)
			ucfg_dest_id	      		<=    8'h0						;
	else if(cmd_DA!=8'h00)
			ucfg_dest_id					<=		8'h08						;				//�ӿڰ�fpga
	else	case(cnt_sel)
		2'b00:
			if((work_mode==8'h05)||(work_mode==8'h06)||(work_mode==8'h07))								//ʶ��ģʽ
				ucfg_dest_id				<=		8'h11						;				//ʶ��ģʽ��������ƬFPGA
			else																					//��ʶ��ģʽ������һƬFPGA
				ucfg_dest_id				<=		8'h0e	 					;				//fpga1
		2'b01:
			ucfg_dest_id					<=		8'h10	 					;				//fpga2
		2'b10:
			ucfg_dest_id					<=		8'h0f	 					;				//fpga3
		default:
			ucfg_dest_id					<=		ucfg_dest_id			;
		endcase
end

//always @ ( posedge sys_clk )
//begin
//	if(!sys_rst_n)
//			initiator_dout					<=		64'b0						;
//	else	
//		case(cnt_sel)
//		2'b00:
//			initiator_dout					<=		fifo_out_he				;
//		2'b01:
//			initiator_dout					<=		fifo_out_fw				;
//		2'b10:
//			initiator_dout					<=		fifo_out_fy				;
//		default:
//			initiator_dout					<=		64'b0						;
//		endcase
//end
always @ ( posedge sys_clk )
begin
	if(!sys_rst_n)
		begin
			rd_he_reg						<=		1'b0						;
			rd_fw_reg						<=		1'b0						;
			rd_fy_reg						<=		1'b0						;
		end
	else
		begin
			rd_he_reg						<=		rd_en_he					;
			rd_fw_reg						<=		rd_en_fw					;
			rd_fy_reg						<=		rd_en_fy					;
		end
end

always @ ( posedge sys_clk )
begin
	if(!sys_rst_n)
			initiator_dout					<=		64'b0						;
	else	case({rd_he_reg,rd_fw_reg,rd_fy_reg})
		3'b100:
			initiator_dout					<=		fifo_out_he				;
		3'b010:
			initiator_dout					<=		fifo_out_fw				;
		3'b001:
			initiator_dout					<=		fifo_out_fy				;
		default:
			initiator_dout					<=		initiator_dout			;
		endcase
end

//-----------3��fifo�ֱ���ddc�ź�---------------------------
fifo_ddc inst_fifo_he (
		.rst					(sclr						), 		// input rst
		.wr_clk				(pll_100M				), 		// input wr_clk
		.rd_clk				(sys_clk					), 		// input rd_clk
		.din					(fifo_in_he				), 		// input [63 : 0] din
		.wr_en				(wr_en_he				), 		// input wr_en
		.rd_en				(rd_en_he				), 		// input rd_en
		.dout					(fifo_out_he			), 		// output [63 : 0] dout
		.full					(full_he					), 		// output full
		.empty				(empty_he				), 		// output empty
		.rd_data_count		(data_count_he			) 			// output [9 : 0] rd_data_count
);

fifo_ddc inst_fifo_fw (
		.rst					(sclr						), 		// input rst
		.wr_clk				(pll_100M				), 		// input wr_clk
		.rd_clk				(sys_clk					), 		// input rd_clk
		.din					(fifo_in_fw				), 		// input [63 : 0] din
		.wr_en				(wr_en_fw				), 		// input wr_en
		.rd_en				(rd_en_fw				), 		// input rd_en
		.dout					(fifo_out_fw			), 		// output [63 : 0] dout
		.full					(full_fw					), 		// output full
		.empty				(empty_fw				), 		// output empty
		.rd_data_count		(data_count_fw			) 			// output [9 : 0] rd_data_count
);

fifo_ddc inst_fifo_fy (
		.rst					(sclr						), 		// input rst
		.wr_clk				(pll_100M				), 		// input wr_clk
		.rd_clk				(sys_clk					), 		// input rd_clk
		.din					(fifo_in_fy				), 		// input [63 : 0] din
		.wr_en				(wr_en_fy				), 		// input wr_en
		.rd_en				(rd_en_fy				), 		// input rd_en
		.dout					(fifo_out_fy			), 		// output [63 : 0] dout
		.full					(full_fy					), 		// output full
		.empty				(empty_fy				), 		// output empty
		.rd_data_count		(data_count_fy			) 			// output [9 : 0] rd_data_count
);

assign	TRIG2[2:0]			=	{fir_1M_rdy,fir_20M_rdy,PRI};
assign	TRIG2[10:3]			=	work_mode;
assign	TRIG2[18:11]		=	ucfg_dest_id;
assign	TRIG2[34:19]		=	fifo_out_he;
assign	TRIG2[44:35]		=	data_count_he;
assign	TRIG2[46:45]		=	cnt_sel;
assign	TRIG2[54:47]		=	cmd_DA;
assign	TRIG2[82:65]		=	fifo_out_fy;
assign	TRIG2[100:83]		=	initiator_dout[17:0];
assign	TRIG2[103:101]		=	initiator_dout[63:61];
assign	TRIG2[130:117]		=	bags_cnt;
assign	TRIG2[137:131]		=	cnt_rd;
assign	TRIG2[145:138]		=	{sys_rst_n,sclr_srio_p,ucfg_normal_trigger,rd_en_he,rd_en_fw,rd_en_fy,normal_trigger,srio_initial_busy};

assign	TRIG0[2:0]			=	{fir_1M_rdy,fir_20M_rdy,PRI};
assign	TRIG0[10:3]			=	work_mode;
assign	TRIG0[11]			=	wr_en_he;
assign	TRIG0[17:12]		=	cnt_wr_en;
assign	TRIG0[35:18]		=	he;
assign	TRIG0[53:36]		=	fw;
assign	TRIG0[71:54]		=	fy;
assign	TRIG0[81:72]		=	data_count_he;
assign	TRIG0[91:82]		=	data_count_fw;

endmodule


