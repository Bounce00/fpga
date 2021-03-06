// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="awgn_top,hls_ip_2016_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z045ffg900-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.950000,HLS_SYN_LAT=54,HLS_SYN_TPT=none,HLS_SYN_MEM=3,HLS_SYN_DSP=3,HLS_SYN_FF=778,HLS_SYN_LUT=1956}" *)

module awgn_top (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        snr_V_V_dout,
        snr_V_V_empty_n,
        snr_V_V_read,
        noise_V_V_din,
        noise_V_V_full_n,
        noise_V_V_write
);

parameter    ap_ST_fsm_state1 = 3'b1;
parameter    ap_ST_fsm_state2 = 3'b10;
parameter    ap_ST_fsm_state3 = 3'b100;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_1 = 32'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] snr_V_V_dout;
input   snr_V_V_empty_n;
output   snr_V_V_read;
output  [15:0] noise_V_V_din;
input   noise_V_V_full_n;
output   noise_V_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg snr_V_V_read;
reg noise_V_V_write;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
reg    snr_V_V_blk_n;
reg    noise_V_V_blk_n;
wire   [0:0] ap_CS_fsm_state3;
reg   [7:0] tmp_V_1_reg_63;
wire   [15:0] grp_operator_s_fu_49_ap_return;
reg   [15:0] noiseSample_V_reg_68;
wire   [0:0] ap_CS_fsm_state2;
wire    grp_operator_s_fu_49_ap_done;
wire    grp_operator_s_fu_49_ap_start;
wire    grp_operator_s_fu_49_ap_idle;
wire    grp_operator_s_fu_49_ap_ready;
reg    ap_reg_grp_operator_s_fu_49_ap_start;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'b1;
#0 ap_reg_grp_operator_s_fu_49_ap_start = 1'b0;
end

operator_s grp_operator_s_fu_49(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_operator_s_fu_49_ap_start),
    .ap_done(grp_operator_s_fu_49_ap_done),
    .ap_idle(grp_operator_s_fu_49_ap_idle),
    .ap_ready(grp_operator_s_fu_49_ap_ready),
    .snr_V_read(tmp_V_1_reg_63),
    .ap_return(grp_operator_s_fu_49_ap_return)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_operator_s_fu_49_ap_start <= 1'b0;
    end else begin
        if (((ap_CS_fsm_state1 == 1'b1) & ~((ap_start == 1'b0) | (snr_V_V_empty_n == 1'b0)))) begin
            ap_reg_grp_operator_s_fu_49_ap_start <= 1'b1;
        end else if ((1'b1 == grp_operator_s_fu_49_ap_ready)) begin
            ap_reg_grp_operator_s_fu_49_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & ~(1'b0 == grp_operator_s_fu_49_ap_done))) begin
        noiseSample_V_reg_68 <= grp_operator_s_fu_49_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~((ap_start == 1'b0) | (snr_V_V_empty_n == 1'b0)))) begin
        tmp_V_1_reg_63 <= snr_V_V_dout;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~(noise_V_V_full_n == 1'b0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~(noise_V_V_full_n == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        noise_V_V_blk_n = noise_V_V_full_n;
    end else begin
        noise_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~(noise_V_V_full_n == 1'b0))) begin
        noise_V_V_write = 1'b1;
    end else begin
        noise_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        snr_V_V_blk_n = snr_V_V_empty_n;
    end else begin
        snr_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~((ap_start == 1'b0) | (snr_V_V_empty_n == 1'b0)))) begin
        snr_V_V_read = 1'b1;
    end else begin
        snr_V_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (~((ap_start == 1'b0) | (snr_V_V_empty_n == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (~(1'b0 == grp_operator_s_fu_49_ap_done)) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (~(noise_V_V_full_n == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign ap_CS_fsm_state2 = ap_CS_fsm[ap_const_lv32_1];

assign ap_CS_fsm_state3 = ap_CS_fsm[ap_const_lv32_2];

assign grp_operator_s_fu_49_ap_start = ap_reg_grp_operator_s_fu_49_ap_start;

assign noise_V_V_din = noiseSample_V_reg_68;

endmodule //awgn_top
