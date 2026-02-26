// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Feb 26 14:11:50 2026
// Host        : RAINFALLBOOK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/DDMTD_Project/ddmtd_fpga/srcs/bd/ddmtd_system_bd/ip/ddmtd_system_bd_ddmtd_0_0/ddmtd_system_bd_ddmtd_0_0_stub.v
// Design      : ddmtd_system_bd_ddmtd_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ddmtd_system_bd_ddmtd_0_0,ddmtd,{}" *) (* CORE_GENERATION_INFO = "ddmtd_system_bd_ddmtd_0_0,ddmtd,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ddmtd,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,COUNTER_BIT_WIDTH=16}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "ddmtd,Vivado 2025.1" *) 
module ddmtd_system_bd_ddmtd_0_0(rst_n_ddmtdclk_i, clk_a_i, clk_b_i, 
  clk_ddmtd_i, deglitch_threshold_i, phase_diff_o, phase_diff_p_o)
/* synthesis syn_black_box black_box_pad_pin="rst_n_ddmtdclk_i,clk_a_i,clk_b_i,deglitch_threshold_i[15:0],phase_diff_o[15:0],phase_diff_p_o" */
/* synthesis syn_force_seq_prim="clk_ddmtd_i" */;
  input rst_n_ddmtdclk_i;
  input clk_a_i;
  input clk_b_i;
  input clk_ddmtd_i /* synthesis syn_isclock = 1 */;
  input [15:0]deglitch_threshold_i;
  output [15:0]phase_diff_o;
  output phase_diff_p_o;
endmodule
