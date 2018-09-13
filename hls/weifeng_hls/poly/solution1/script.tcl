############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project poly
set_top poly_filter
add_files windows_func_weshu.cpp
add_files polyfilter_params.cpp
add_files poly_filter.cpp
add_files -tb poly_filter_test.cpp
open_solution "solution1"
set_part {xc7z045ffg900-2} -tool vivado
create_clock -period 10 -name default
#source "./poly/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
