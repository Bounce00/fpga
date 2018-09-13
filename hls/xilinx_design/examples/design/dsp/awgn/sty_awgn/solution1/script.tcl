############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sty_awgn
set_top awgn_top
add_files awgn.cpp
add_files -tb awgn_tb.cpp
open_solution "solution1"
set_part {xc7z045ffg900-2} -tool vivado
create_clock -period 10 -name default
#source "./sty_awgn/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
