//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
//Date        : Thu Feb 26 14:32:45 2026
//Host        : RAINFALLBOOK running 64-bit major release  (build 9200)
//Command     : generate_target ddmtd_system_bd_wrapper.bd
//Design      : ddmtd_system_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ddmtd_system_bd_wrapper
   (board_clk,
    clk_ddmtd_locked,
    resetn);
  input [0:0]board_clk;
  output clk_ddmtd_locked;
  input resetn;

  wire [0:0]board_clk;
  wire clk_ddmtd_locked;
  wire resetn;

  ddmtd_system_bd ddmtd_system_bd_i
       (.board_clk(board_clk),
        .clk_ddmtd_locked(clk_ddmtd_locked),
        .resetn(resetn));
endmodule
