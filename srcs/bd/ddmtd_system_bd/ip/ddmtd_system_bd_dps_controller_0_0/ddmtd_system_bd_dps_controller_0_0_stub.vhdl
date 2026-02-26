-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Feb 26 14:11:50 2026
-- Host        : RAINFALLBOOK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/DDMTD_Project/ddmtd_fpga/srcs/bd/ddmtd_system_bd/ip/ddmtd_system_bd_dps_controller_0_0/ddmtd_system_bd_dps_controller_0_0_stub.vhdl
-- Design      : ddmtd_system_bd_dps_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ddmtd_system_bd_dps_controller_0_0 is
  Port ( 
    psclk_i : in STD_LOGIC;
    rstn_i : in STD_LOGIC;
    toggle_i : in STD_LOGIC;
    dir_i : in STD_LOGIC;
    steps_per_toggle_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    locked_i : in STD_LOGIC;
    psdone_i : in STD_LOGIC;
    psen_o : out STD_LOGIC;
    psincdec_o : out STD_LOGIC;
    total_steps_o : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ddmtd_system_bd_dps_controller_0_0 : entity is "ddmtd_system_bd_dps_controller_0_0,dps_controller,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ddmtd_system_bd_dps_controller_0_0 : entity is "ddmtd_system_bd_dps_controller_0_0,dps_controller,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=dps_controller,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,SYNC_STAGES=2,REQUIRE_LOCKED=0}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ddmtd_system_bd_dps_controller_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ddmtd_system_bd_dps_controller_0_0 : entity is "module_ref";
end ddmtd_system_bd_dps_controller_0_0;

architecture stub of ddmtd_system_bd_dps_controller_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "psclk_i,rstn_i,toggle_i,dir_i,steps_per_toggle_i[7:0],locked_i,psdone_i,psen_o,psincdec_o,total_steps_o[15:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "dps_controller,Vivado 2025.1";
begin
end;
