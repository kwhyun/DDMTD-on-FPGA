-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Feb 26 14:08:12 2026
-- Host        : RAINFALLBOOK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top ddmtd_system_bd_clk_wiz_0_2 -prefix
--               ddmtd_system_bd_clk_wiz_0_2_ ddmtd_system_bd_clk_wiz_0_2_stub.vhdl
-- Design      : ddmtd_system_bd_clk_wiz_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ddmtd_system_bd_clk_wiz_0_2 is
  Port ( 
    clk_ddmtd_o : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ddmtd_system_bd_clk_wiz_0_2 : entity is "ddmtd_system_bd_clk_wiz_0_2,clk_wiz_v6_0_16_0_0,{component_name=ddmtd_system_bd_clk_wiz_0_2,use_phase_alignment=false,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=1,clkin1_period=10.000,clkin2_period=10.000,use_power_down=false,use_reset=true,use_locked=true,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}";
end ddmtd_system_bd_clk_wiz_0_2;

architecture stub of ddmtd_system_bd_clk_wiz_0_2 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk_ddmtd_o,resetn,locked,clk_in1";
begin
end;
