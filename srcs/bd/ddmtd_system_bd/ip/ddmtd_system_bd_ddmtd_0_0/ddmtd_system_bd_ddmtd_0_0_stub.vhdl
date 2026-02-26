-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Feb 26 14:11:50 2026
-- Host        : RAINFALLBOOK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/DDMTD_Project/ddmtd_fpga/srcs/bd/ddmtd_system_bd/ip/ddmtd_system_bd_ddmtd_0_0/ddmtd_system_bd_ddmtd_0_0_stub.vhdl
-- Design      : ddmtd_system_bd_ddmtd_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ddmtd_system_bd_ddmtd_0_0 is
  Port ( 
    rst_n_ddmtdclk_i : in STD_LOGIC;
    clk_a_i : in STD_LOGIC;
    clk_b_i : in STD_LOGIC;
    clk_ddmtd_i : in STD_LOGIC;
    deglitch_threshold_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_diff_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_diff_p_o : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ddmtd_system_bd_ddmtd_0_0 : entity is "ddmtd_system_bd_ddmtd_0_0,ddmtd,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ddmtd_system_bd_ddmtd_0_0 : entity is "ddmtd_system_bd_ddmtd_0_0,ddmtd,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ddmtd,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,COUNTER_BIT_WIDTH=16}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ddmtd_system_bd_ddmtd_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ddmtd_system_bd_ddmtd_0_0 : entity is "module_ref";
end ddmtd_system_bd_ddmtd_0_0;

architecture stub of ddmtd_system_bd_ddmtd_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "rst_n_ddmtdclk_i,clk_a_i,clk_b_i,clk_ddmtd_i,deglitch_threshold_i[15:0],phase_diff_o[15:0],phase_diff_p_o";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "ddmtd,Vivado 2025.1";
begin
end;
