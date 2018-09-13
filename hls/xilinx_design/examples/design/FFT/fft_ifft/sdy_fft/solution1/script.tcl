############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sdy_fft
set_top fft_top
add_files fft_top.cpp
add_files -tb fft_tb.cpp
open_solution "solution1"
set_part {xq7z045rf900-2il} -tool vivado
create_clock -period 10 -name default
#source "./sdy_fft/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
