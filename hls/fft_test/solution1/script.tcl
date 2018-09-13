############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fft_test
add_files fft_test/fft_top.cpp
open_solution "solution1"
set_part {xc7z045ffg900-2} -tool vivado
create_clock -period 10 -name default
#source "./fft_test/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
