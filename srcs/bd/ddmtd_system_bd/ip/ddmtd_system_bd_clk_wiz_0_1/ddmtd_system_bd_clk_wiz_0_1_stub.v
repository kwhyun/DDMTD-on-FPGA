// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Feb 26 14:08:12 2026
// Host        : RAINFALLBOOK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top ddmtd_system_bd_clk_wiz_0_1 -prefix
//               ddmtd_system_bd_clk_wiz_0_1_ ddmtd_system_bd_clk_wiz_0_1_stub.v
// Design      : ddmtd_system_bd_clk_wiz_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CORE_GENERATION_INFO = "ddmtd_system_bd_clk_wiz_0_1,clk_wiz_v6_0_16_0_0,{component_name=ddmtd_system_bd_clk_wiz_0_1,use_phase_alignment=false,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=1,clkin1_period=10.000,clkin2_period=10.000,use_power_down=false,use_reset=true,use_locked=true,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}" *) 
module ddmtd_system_bd_clk_wiz_0_1(clk_b_o, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="resetn,locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_b_o" */;
  output clk_b_o /* synthesis syn_isclock = 1 */;
  input resetn;
  output locked;
  input clk_in1;
endmodule
