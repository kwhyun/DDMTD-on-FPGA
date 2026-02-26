//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Thu Feb 26 14:32:45 2026
//Host        : RAINFALLBOOK running 64-bit major release  (build 9200)
//Command     : generate_target ddmtd_system_bd.bd
//Design      : ddmtd_system_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ddmtd_system_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ddmtd_system_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ddmtd_system_bd.hwdef" *) 
module ddmtd_system_bd
   (board_clk,
    clk_ddmtd_locked,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BOARD_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BOARD_CLK, CLK_DOMAIN ddmtd_system_bd_BUFG_I_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input [0:0]board_clk;
  output clk_ddmtd_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [0:0]board_clk;
  wire [0:0]bufg_BUFG_O;
  wire clk_ddmtd_locked;
  wire [15:0]ddmtd_phase_diff_o;
  wire ddmtd_phase_diff_p_o;
  wire dps_controller_psen;
  wire dps_controller_psincdec;
  wire [15:0]dps_controller_total_steps;
  wire mmcm_a_dps_clk_a_o;
  wire mmcm_a_dps_locked;
  wire mmcm_a_dps_psdone;
  wire mmcm_b_clk_b_o;
  wire mmcm_ddmtd_clk_ddmtd_o;
  wire resetn;
  wire [15:0]vio_probe_out0;
  wire [0:0]vio_probe_out1;
  wire [0:0]vio_probe_out2;
  wire [7:0]vio_probe_out3;

  ddmtd_system_bd_util_ds_buf_0_0 bufg
       (.BUFG_I(board_clk),
        .BUFG_O(bufg_BUFG_O));
  ddmtd_system_bd_ddmtd_0_0 ddmtd
       (.clk_a_i(mmcm_a_dps_clk_a_o),
        .clk_b_i(mmcm_b_clk_b_o),
        .clk_ddmtd_i(mmcm_ddmtd_clk_ddmtd_o),
        .deglitch_threshold_i(vio_probe_out0),
        .phase_diff_o(ddmtd_phase_diff_o),
        .phase_diff_p_o(ddmtd_phase_diff_p_o),
        .rst_n_ddmtdclk_i(resetn));
  ddmtd_system_bd_dps_controller_0_0 dps_controller
       (.dir_i(vio_probe_out2),
        .locked_i(mmcm_a_dps_locked),
        .psclk_i(mmcm_ddmtd_clk_ddmtd_o),
        .psdone_i(mmcm_a_dps_psdone),
        .psen_o(dps_controller_psen),
        .psincdec_o(dps_controller_psincdec),
        .rstn_i(resetn),
        .steps_per_toggle_i(vio_probe_out3),
        .toggle_i(vio_probe_out1),
        .total_steps_o(dps_controller_total_steps));
  ddmtd_system_bd_ila_0_0 ila
       (.clk(mmcm_ddmtd_clk_ddmtd_o),
        .probe0(ddmtd_phase_diff_o),
        .probe1(ddmtd_phase_diff_p_o),
        .probe2(mmcm_a_dps_psdone),
        .probe3(dps_controller_psen));
  ddmtd_system_bd_clk_wiz_0_0 mmcm_a_dps
       (.clk_a_o(mmcm_a_dps_clk_a_o),
        .clk_in1(bufg_BUFG_O),
        .locked(mmcm_a_dps_locked),
        .psclk(mmcm_ddmtd_clk_ddmtd_o),
        .psdone(mmcm_a_dps_psdone),
        .psen(dps_controller_psen),
        .psincdec(dps_controller_psincdec),
        .resetn(resetn));
  ddmtd_system_bd_clk_wiz_0_1 mmcm_b
       (.clk_b_o(mmcm_b_clk_b_o),
        .clk_in1(bufg_BUFG_O),
        .resetn(resetn));
  ddmtd_system_bd_clk_wiz_0_2 mmcm_ddmtd
       (.clk_ddmtd_o(mmcm_ddmtd_clk_ddmtd_o),
        .clk_in1(bufg_BUFG_O),
        .locked(clk_ddmtd_locked),
        .resetn(resetn));
  ddmtd_system_bd_vio_0_0 vio
       (.clk(mmcm_ddmtd_clk_ddmtd_o),
        .probe_in0(ddmtd_phase_diff_o),
        .probe_in1(dps_controller_total_steps),
        .probe_out0(vio_probe_out0),
        .probe_out1(vio_probe_out1),
        .probe_out2(vio_probe_out2),
        .probe_out3(vio_probe_out3));
endmodule
