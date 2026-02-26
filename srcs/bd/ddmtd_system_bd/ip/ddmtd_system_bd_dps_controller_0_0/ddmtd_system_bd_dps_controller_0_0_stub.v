// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Feb 26 14:11:50 2026
// Host        : RAINFALLBOOK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/DDMTD_Project/ddmtd_fpga/srcs/bd/ddmtd_system_bd/ip/ddmtd_system_bd_dps_controller_0_0/ddmtd_system_bd_dps_controller_0_0_stub.v
// Design      : ddmtd_system_bd_dps_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "ddmtd_system_bd_dps_controller_0_0,dps_controller,{}" *) (* CORE_GENERATION_INFO = "ddmtd_system_bd_dps_controller_0_0,dps_controller,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=dps_controller,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,SYNC_STAGES=2,REQUIRE_LOCKED=0}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "dps_controller,Vivado 2025.1" *) 
module ddmtd_system_bd_dps_controller_0_0(psclk_i, rstn_i, toggle_i, dir_i, 
  steps_per_toggle_i, locked_i, psdone_i, psen_o, psincdec_o, total_steps_o)
/* synthesis syn_black_box black_box_pad_pin="rstn_i,toggle_i,dir_i,steps_per_toggle_i[7:0],locked_i,psdone_i,psen_o,psincdec_o,total_steps_o[15:0]" */
/* synthesis syn_force_seq_prim="psclk_i" */;
  input psclk_i /* synthesis syn_isclock = 1 */;
  input rstn_i;
  input toggle_i;
  input dir_i;
  input [7:0]steps_per_toggle_i;
  input locked_i;
  input psdone_i;
  output psen_o;
  output psincdec_o;
  output [15:0]total_steps_o;
endmodule
