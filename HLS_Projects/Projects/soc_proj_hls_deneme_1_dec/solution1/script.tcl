############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2014 Xilinx Inc. All rights reserved.
############################################################
open_project soc_proj_hls_deneme_1_dec
set_top acorn128_dec_onebyte
add_files soc_proj_hls_deneme_1_dec/source_dec.c
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./soc_proj_hls_deneme_1_dec/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
