############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_window_fn_float
set_top window_fn_top
add_files window_fn_top.cpp
add_files -tb window_fn_test.cpp
open_solution "solution1"
set_part {xc7k160tfbg484-1}
create_clock -period 5 -name default
source "./proj_window_fn_float/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
