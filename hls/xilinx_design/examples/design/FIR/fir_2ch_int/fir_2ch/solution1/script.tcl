############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fir_2ch
set_top fir_top
add_files fir_2ch_int.cpp
add_files -tb fir_2ch_int_tb.cpp
add_files -tb fir_2ch_int_dout_q_cmodel.txt
add_files -tb fir_2ch_int_dout_i_cmodel.txt
add_files -tb fir_2ch_int_din_q.txt
add_files -tb fir_2ch_int_din_i.txt
open_solution "solution1"
set_part {xc7z045ffg900-2} -tool vivado
create_clock -period 10 -name default
source "./fir_2ch/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
