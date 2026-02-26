-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Feb 26 14:11:50 2026
-- Host        : RAINFALLBOOK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/DDMTD_Project/ddmtd_fpga/srcs/bd/ddmtd_system_bd/ip/ddmtd_system_bd_dps_controller_0_0/ddmtd_system_bd_dps_controller_0_0_sim_netlist.vhdl
-- Design      : ddmtd_system_bd_dps_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ddmtd_system_bd_dps_controller_0_0_dps_controller is
  port (
    total_steps_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    psen_o : out STD_LOGIC;
    psincdec_o : out STD_LOGIC;
    steps_per_toggle_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    psclk_i : in STD_LOGIC;
    toggle_i : in STD_LOGIC;
    dir_i : in STD_LOGIC;
    psdone_i : in STD_LOGIC;
    rstn_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ddmtd_system_bd_dps_controller_0_0_dps_controller : entity is "dps_controller";
end ddmtd_system_bd_dps_controller_0_0_dps_controller;

architecture STRUCTURE of ddmtd_system_bd_dps_controller_0_0_dps_controller is
  signal FSM_sequential_state_i_1_n_0 : STD_LOGIC;
  signal dir_latched_i_1_n_0 : STD_LOGIC;
  signal dir_latched_reg_n_0 : STD_LOGIC;
  signal dir_s : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal psen_o_i_1_n_0 : STD_LOGIC;
  signal psen_o_i_2_n_0 : STD_LOGIC;
  signal psen_o_i_3_n_0 : STD_LOGIC;
  signal psen_o_i_4_n_0 : STD_LOGIC;
  signal psen_o_i_5_n_0 : STD_LOGIC;
  signal psen_o_i_6_n_0 : STD_LOGIC;
  signal psen_o_i_7_n_0 : STD_LOGIC;
  signal \^psincdec_o\ : STD_LOGIC;
  signal psincdec_o_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC;
  signal step_s : STD_LOGIC;
  signal step_s_d : STD_LOGIC;
  signal steps_left : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \steps_left[4]_i_2_n_0\ : STD_LOGIC;
  signal \steps_left[7]_i_1_n_0\ : STD_LOGIC;
  signal \steps_left[7]_i_3_n_0\ : STD_LOGIC;
  signal \steps_left[7]_i_4_n_0\ : STD_LOGIC;
  signal \steps_left_reg_n_0_[0]\ : STD_LOGIC;
  signal \steps_left_reg_n_0_[1]\ : STD_LOGIC;
  signal \steps_left_reg_n_0_[2]\ : STD_LOGIC;
  signal \steps_left_reg_n_0_[3]\ : STD_LOGIC;
  signal \steps_left_reg_n_0_[4]\ : STD_LOGIC;
  signal \steps_left_reg_n_0_[5]\ : STD_LOGIC;
  signal \steps_left_reg_n_0_[6]\ : STD_LOGIC;
  signal \steps_left_reg_n_0_[7]\ : STD_LOGIC;
  signal steps_s : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \steps_sync_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^total_steps_o\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \total_steps_o[11]_i_2_n_0\ : STD_LOGIC;
  signal \total_steps_o[11]_i_3_n_0\ : STD_LOGIC;
  signal \total_steps_o[11]_i_4_n_0\ : STD_LOGIC;
  signal \total_steps_o[11]_i_5_n_0\ : STD_LOGIC;
  signal \total_steps_o[11]_i_6_n_0\ : STD_LOGIC;
  signal \total_steps_o[11]_i_7_n_0\ : STD_LOGIC;
  signal \total_steps_o[11]_i_8_n_0\ : STD_LOGIC;
  signal \total_steps_o[11]_i_9_n_0\ : STD_LOGIC;
  signal \total_steps_o[15]_i_1_n_0\ : STD_LOGIC;
  signal \total_steps_o[15]_i_3_n_0\ : STD_LOGIC;
  signal \total_steps_o[15]_i_4_n_0\ : STD_LOGIC;
  signal \total_steps_o[15]_i_5_n_0\ : STD_LOGIC;
  signal \total_steps_o[15]_i_6_n_0\ : STD_LOGIC;
  signal \total_steps_o[15]_i_7_n_0\ : STD_LOGIC;
  signal \total_steps_o[15]_i_8_n_0\ : STD_LOGIC;
  signal \total_steps_o[15]_i_9_n_0\ : STD_LOGIC;
  signal \total_steps_o[3]_i_2_n_0\ : STD_LOGIC;
  signal \total_steps_o[3]_i_3_n_0\ : STD_LOGIC;
  signal \total_steps_o[3]_i_4_n_0\ : STD_LOGIC;
  signal \total_steps_o[3]_i_5_n_0\ : STD_LOGIC;
  signal \total_steps_o[3]_i_6_n_0\ : STD_LOGIC;
  signal \total_steps_o[3]_i_7_n_0\ : STD_LOGIC;
  signal \total_steps_o[3]_i_8_n_0\ : STD_LOGIC;
  signal \total_steps_o[3]_i_9_n_0\ : STD_LOGIC;
  signal \total_steps_o[7]_i_2_n_0\ : STD_LOGIC;
  signal \total_steps_o[7]_i_3_n_0\ : STD_LOGIC;
  signal \total_steps_o[7]_i_4_n_0\ : STD_LOGIC;
  signal \total_steps_o[7]_i_5_n_0\ : STD_LOGIC;
  signal \total_steps_o[7]_i_6_n_0\ : STD_LOGIC;
  signal \total_steps_o[7]_i_7_n_0\ : STD_LOGIC;
  signal \total_steps_o[7]_i_8_n_0\ : STD_LOGIC;
  signal \total_steps_o[7]_i_9_n_0\ : STD_LOGIC;
  signal \total_steps_o_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \total_steps_o_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \total_steps_o_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \total_steps_o_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \total_steps_o_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \total_steps_o_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \total_steps_o_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \total_steps_o_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \total_steps_o_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \total_steps_o_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \total_steps_o_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \total_steps_o_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \total_steps_o_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \total_steps_o_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \total_steps_o_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \total_steps_o_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \total_steps_o_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \total_steps_o_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \total_steps_o_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \total_steps_o_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \total_steps_o_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \total_steps_o_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \total_steps_o_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \total_steps_o_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \total_steps_o_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \total_steps_o_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \total_steps_o_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \total_steps_o_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \total_steps_o_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \total_steps_o_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \total_steps_o_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_total_steps_o_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_state_reg : label is "S_WAIT:1,S_IDLE:0";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of dir_latched_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of psen_o_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \steps_left[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \steps_left[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \steps_left[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \steps_left[7]_i_4\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \total_steps_o_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \total_steps_o_reg[15]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \total_steps_o_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \total_steps_o_reg[7]_i_1\ : label is 11;
begin
  psincdec_o <= \^psincdec_o\;
  total_steps_o(15 downto 0) <= \^total_steps_o\(15 downto 0);
FSM_sequential_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => psen_o_i_7_n_0,
      I1 => \steps_left_reg_n_0_[4]\,
      I2 => \steps_left_reg_n_0_[3]\,
      I3 => \steps_left_reg_n_0_[6]\,
      I4 => \steps_left_reg_n_0_[5]\,
      I5 => state,
      O => FSM_sequential_state_i_1_n_0
    );
FSM_sequential_state_reg: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \steps_left[7]_i_1_n_0\,
      D => FSM_sequential_state_i_1_n_0,
      Q => state,
      R => psen_o_i_1_n_0
    );
dir_latched_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => state,
      I2 => step_s_d,
      I3 => step_s,
      I4 => dir_s,
      O => dir_latched_i_1_n_0
    );
dir_latched_reg: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => dir_latched_i_1_n_0,
      Q => dir_latched_reg_n_0,
      R => psen_o_i_1_n_0
    );
\dir_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => dir_i,
      Q => \p_1_in__0\(1),
      R => psen_o_i_1_n_0
    );
\dir_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => \p_1_in__0\(1),
      Q => dir_s,
      R => psen_o_i_1_n_0
    );
psen_o_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn_i,
      O => psen_o_i_1_n_0
    );
psen_o_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF54FFFF54545454"
    )
        port map (
      I0 => psen_o_i_3_n_0,
      I1 => psen_o_i_4_n_0,
      I2 => psen_o_i_5_n_0,
      I3 => psen_o_i_6_n_0,
      I4 => psen_o_i_7_n_0,
      I5 => \total_steps_o[15]_i_1_n_0\,
      O => psen_o_i_2_n_0
    );
psen_o_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => state,
      I1 => step_s_d,
      I2 => step_s,
      O => psen_o_i_3_n_0
    );
psen_o_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => steps_s(7),
      I1 => steps_s(5),
      I2 => steps_s(6),
      I3 => steps_s(4),
      O => psen_o_i_4_n_0
    );
psen_o_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => steps_s(2),
      I1 => steps_s(1),
      I2 => steps_s(3),
      I3 => steps_s(0),
      O => psen_o_i_5_n_0
    );
psen_o_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \steps_left_reg_n_0_[4]\,
      I1 => \steps_left_reg_n_0_[3]\,
      I2 => \steps_left_reg_n_0_[6]\,
      I3 => \steps_left_reg_n_0_[5]\,
      O => psen_o_i_6_n_0
    );
psen_o_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \steps_left_reg_n_0_[1]\,
      I1 => \steps_left_reg_n_0_[7]\,
      I2 => \steps_left_reg_n_0_[0]\,
      I3 => \steps_left_reg_n_0_[2]\,
      O => psen_o_i_7_n_0
    );
psen_o_reg: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => psen_o_i_2_n_0,
      Q => psen_o,
      R => psen_o_i_1_n_0
    );
psincdec_o_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => state,
      I2 => dir_s,
      I3 => psen_o_i_2_n_0,
      I4 => \^psincdec_o\,
      O => psincdec_o_i_1_n_0
    );
psincdec_o_reg: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => psincdec_o_i_1_n_0,
      Q => \^psincdec_o\,
      R => psen_o_i_1_n_0
    );
step_s_d_reg: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => step_s,
      Q => step_s_d,
      R => psen_o_i_1_n_0
    );
\step_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => toggle_i,
      Q => p_1_in(1),
      R => psen_o_i_1_n_0
    );
\step_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => p_1_in(1),
      Q => step_s,
      R => psen_o_i_1_n_0
    );
\steps_left[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \steps_left_reg_n_0_[0]\,
      I1 => state,
      I2 => steps_s(0),
      O => steps_left(0)
    );
\steps_left[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \steps_left_reg_n_0_[1]\,
      I1 => \steps_left_reg_n_0_[0]\,
      I2 => state,
      I3 => steps_s(1),
      O => steps_left(1)
    );
\steps_left[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9FFA900"
    )
        port map (
      I0 => \steps_left_reg_n_0_[2]\,
      I1 => \steps_left_reg_n_0_[0]\,
      I2 => \steps_left_reg_n_0_[1]\,
      I3 => state,
      I4 => steps_s(2),
      O => steps_left(2)
    );
\steps_left[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => \steps_left_reg_n_0_[3]\,
      I1 => \steps_left_reg_n_0_[2]\,
      I2 => \steps_left_reg_n_0_[1]\,
      I3 => \steps_left_reg_n_0_[0]\,
      I4 => state,
      I5 => steps_s(3),
      O => steps_left(3)
    );
\steps_left[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
        port map (
      I0 => \steps_left_reg_n_0_[4]\,
      I1 => \steps_left_reg_n_0_[3]\,
      I2 => \steps_left[4]_i_2_n_0\,
      I3 => state,
      I4 => steps_s(4),
      O => steps_left(4)
    );
\steps_left[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \steps_left_reg_n_0_[0]\,
      I1 => \steps_left_reg_n_0_[1]\,
      I2 => \steps_left_reg_n_0_[2]\,
      O => \steps_left[4]_i_2_n_0\
    );
\steps_left[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \steps_left_reg_n_0_[5]\,
      I1 => \steps_left[7]_i_4_n_0\,
      I2 => state,
      I3 => steps_s(5),
      O => steps_left(5)
    );
\steps_left[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
        port map (
      I0 => \steps_left_reg_n_0_[6]\,
      I1 => \steps_left_reg_n_0_[5]\,
      I2 => \steps_left[7]_i_4_n_0\,
      I3 => state,
      I4 => steps_s(6),
      O => steps_left(6)
    );
\steps_left[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \steps_left[7]_i_3_n_0\,
      I1 => state,
      I2 => psdone_i,
      O => \steps_left[7]_i_1_n_0\
    );
\steps_left[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA6FFFFAAA60000"
    )
        port map (
      I0 => \steps_left_reg_n_0_[7]\,
      I1 => \steps_left[7]_i_4_n_0\,
      I2 => \steps_left_reg_n_0_[5]\,
      I3 => \steps_left_reg_n_0_[6]\,
      I4 => state,
      I5 => steps_s(7),
      O => steps_left(7)
    );
\steps_left[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => psen_o_i_5_n_0,
      I1 => steps_s(7),
      I2 => steps_s(5),
      I3 => steps_s(6),
      I4 => steps_s(4),
      I5 => psen_o_i_3_n_0,
      O => \steps_left[7]_i_3_n_0\
    );
\steps_left[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \steps_left_reg_n_0_[2]\,
      I1 => \steps_left_reg_n_0_[1]\,
      I2 => \steps_left_reg_n_0_[0]\,
      I3 => \steps_left_reg_n_0_[4]\,
      I4 => \steps_left_reg_n_0_[3]\,
      O => \steps_left[7]_i_4_n_0\
    );
\steps_left_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \steps_left[7]_i_1_n_0\,
      D => steps_left(0),
      Q => \steps_left_reg_n_0_[0]\,
      R => psen_o_i_1_n_0
    );
\steps_left_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \steps_left[7]_i_1_n_0\,
      D => steps_left(1),
      Q => \steps_left_reg_n_0_[1]\,
      R => psen_o_i_1_n_0
    );
\steps_left_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \steps_left[7]_i_1_n_0\,
      D => steps_left(2),
      Q => \steps_left_reg_n_0_[2]\,
      R => psen_o_i_1_n_0
    );
\steps_left_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \steps_left[7]_i_1_n_0\,
      D => steps_left(3),
      Q => \steps_left_reg_n_0_[3]\,
      R => psen_o_i_1_n_0
    );
\steps_left_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \steps_left[7]_i_1_n_0\,
      D => steps_left(4),
      Q => \steps_left_reg_n_0_[4]\,
      R => psen_o_i_1_n_0
    );
\steps_left_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \steps_left[7]_i_1_n_0\,
      D => steps_left(5),
      Q => \steps_left_reg_n_0_[5]\,
      R => psen_o_i_1_n_0
    );
\steps_left_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \steps_left[7]_i_1_n_0\,
      D => steps_left(6),
      Q => \steps_left_reg_n_0_[6]\,
      R => psen_o_i_1_n_0
    );
\steps_left_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \steps_left[7]_i_1_n_0\,
      D => steps_left(7),
      Q => \steps_left_reg_n_0_[7]\,
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => steps_per_toggle_i(0),
      Q => \steps_sync_reg[0]\(0),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => steps_per_toggle_i(1),
      Q => \steps_sync_reg[0]\(1),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => steps_per_toggle_i(2),
      Q => \steps_sync_reg[0]\(2),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => steps_per_toggle_i(3),
      Q => \steps_sync_reg[0]\(3),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => steps_per_toggle_i(4),
      Q => \steps_sync_reg[0]\(4),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => steps_per_toggle_i(5),
      Q => \steps_sync_reg[0]\(5),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => steps_per_toggle_i(6),
      Q => \steps_sync_reg[0]\(6),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => steps_per_toggle_i(7),
      Q => \steps_sync_reg[0]\(7),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => \steps_sync_reg[0]\(0),
      Q => steps_s(0),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => \steps_sync_reg[0]\(1),
      Q => steps_s(1),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => \steps_sync_reg[0]\(2),
      Q => steps_s(2),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => \steps_sync_reg[0]\(3),
      Q => steps_s(3),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => \steps_sync_reg[0]\(4),
      Q => steps_s(4),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => \steps_sync_reg[0]\(5),
      Q => steps_s(5),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => \steps_sync_reg[0]\(6),
      Q => steps_s(6),
      R => psen_o_i_1_n_0
    );
\steps_sync_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => '1',
      D => \steps_sync_reg[0]\(7),
      Q => steps_s(7),
      R => psen_o_i_1_n_0
    );
\total_steps_o[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[11]_i_2_n_0\
    );
\total_steps_o[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[11]_i_3_n_0\
    );
\total_steps_o[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[11]_i_4_n_0\
    );
\total_steps_o[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[11]_i_5_n_0\
    );
\total_steps_o[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(11),
      O => \total_steps_o[11]_i_6_n_0\
    );
\total_steps_o[11]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(10),
      O => \total_steps_o[11]_i_7_n_0\
    );
\total_steps_o[11]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(9),
      O => \total_steps_o[11]_i_8_n_0\
    );
\total_steps_o[11]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(8),
      O => \total_steps_o[11]_i_9_n_0\
    );
\total_steps_o[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => psdone_i,
      I1 => state,
      O => \total_steps_o[15]_i_1_n_0\
    );
\total_steps_o[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[15]_i_3_n_0\
    );
\total_steps_o[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[15]_i_4_n_0\
    );
\total_steps_o[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[15]_i_5_n_0\
    );
\total_steps_o[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(15),
      O => \total_steps_o[15]_i_6_n_0\
    );
\total_steps_o[15]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(14),
      O => \total_steps_o[15]_i_7_n_0\
    );
\total_steps_o[15]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(13),
      O => \total_steps_o[15]_i_8_n_0\
    );
\total_steps_o[15]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(12),
      O => \total_steps_o[15]_i_9_n_0\
    );
\total_steps_o[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[3]_i_2_n_0\
    );
\total_steps_o[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[3]_i_3_n_0\
    );
\total_steps_o[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[3]_i_4_n_0\
    );
\total_steps_o[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[3]_i_5_n_0\
    );
\total_steps_o[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(3),
      O => \total_steps_o[3]_i_6_n_0\
    );
\total_steps_o[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(2),
      O => \total_steps_o[3]_i_7_n_0\
    );
\total_steps_o[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(1),
      O => \total_steps_o[3]_i_8_n_0\
    );
\total_steps_o[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(0),
      O => \total_steps_o[3]_i_9_n_0\
    );
\total_steps_o[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[7]_i_2_n_0\
    );
\total_steps_o[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[7]_i_3_n_0\
    );
\total_steps_o[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[7]_i_4_n_0\
    );
\total_steps_o[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      O => \total_steps_o[7]_i_5_n_0\
    );
\total_steps_o[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(7),
      O => \total_steps_o[7]_i_6_n_0\
    );
\total_steps_o[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(6),
      O => \total_steps_o[7]_i_7_n_0\
    );
\total_steps_o[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(5),
      O => \total_steps_o[7]_i_8_n_0\
    );
\total_steps_o[7]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dir_latched_reg_n_0,
      I1 => \^total_steps_o\(4),
      O => \total_steps_o[7]_i_9_n_0\
    );
\total_steps_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[3]_i_1_n_7\,
      Q => \^total_steps_o\(0),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[11]_i_1_n_5\,
      Q => \^total_steps_o\(10),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[11]_i_1_n_4\,
      Q => \^total_steps_o\(11),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_steps_o_reg[7]_i_1_n_0\,
      CO(3) => \total_steps_o_reg[11]_i_1_n_0\,
      CO(2) => \total_steps_o_reg[11]_i_1_n_1\,
      CO(1) => \total_steps_o_reg[11]_i_1_n_2\,
      CO(0) => \total_steps_o_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \total_steps_o[11]_i_2_n_0\,
      DI(2) => \total_steps_o[11]_i_3_n_0\,
      DI(1) => \total_steps_o[11]_i_4_n_0\,
      DI(0) => \total_steps_o[11]_i_5_n_0\,
      O(3) => \total_steps_o_reg[11]_i_1_n_4\,
      O(2) => \total_steps_o_reg[11]_i_1_n_5\,
      O(1) => \total_steps_o_reg[11]_i_1_n_6\,
      O(0) => \total_steps_o_reg[11]_i_1_n_7\,
      S(3) => \total_steps_o[11]_i_6_n_0\,
      S(2) => \total_steps_o[11]_i_7_n_0\,
      S(1) => \total_steps_o[11]_i_8_n_0\,
      S(0) => \total_steps_o[11]_i_9_n_0\
    );
\total_steps_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[15]_i_2_n_7\,
      Q => \^total_steps_o\(12),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[15]_i_2_n_6\,
      Q => \^total_steps_o\(13),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[15]_i_2_n_5\,
      Q => \^total_steps_o\(14),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[15]_i_2_n_4\,
      Q => \^total_steps_o\(15),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_steps_o_reg[11]_i_1_n_0\,
      CO(3) => \NLW_total_steps_o_reg[15]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \total_steps_o_reg[15]_i_2_n_1\,
      CO(1) => \total_steps_o_reg[15]_i_2_n_2\,
      CO(0) => \total_steps_o_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \total_steps_o[15]_i_3_n_0\,
      DI(1) => \total_steps_o[15]_i_4_n_0\,
      DI(0) => \total_steps_o[15]_i_5_n_0\,
      O(3) => \total_steps_o_reg[15]_i_2_n_4\,
      O(2) => \total_steps_o_reg[15]_i_2_n_5\,
      O(1) => \total_steps_o_reg[15]_i_2_n_6\,
      O(0) => \total_steps_o_reg[15]_i_2_n_7\,
      S(3) => \total_steps_o[15]_i_6_n_0\,
      S(2) => \total_steps_o[15]_i_7_n_0\,
      S(1) => \total_steps_o[15]_i_8_n_0\,
      S(0) => \total_steps_o[15]_i_9_n_0\
    );
\total_steps_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[3]_i_1_n_6\,
      Q => \^total_steps_o\(1),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[3]_i_1_n_5\,
      Q => \^total_steps_o\(2),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[3]_i_1_n_4\,
      Q => \^total_steps_o\(3),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \total_steps_o_reg[3]_i_1_n_0\,
      CO(2) => \total_steps_o_reg[3]_i_1_n_1\,
      CO(1) => \total_steps_o_reg[3]_i_1_n_2\,
      CO(0) => \total_steps_o_reg[3]_i_1_n_3\,
      CYINIT => \total_steps_o[3]_i_2_n_0\,
      DI(3) => \total_steps_o[3]_i_3_n_0\,
      DI(2) => \total_steps_o[3]_i_4_n_0\,
      DI(1) => \total_steps_o[3]_i_5_n_0\,
      DI(0) => dir_latched_reg_n_0,
      O(3) => \total_steps_o_reg[3]_i_1_n_4\,
      O(2) => \total_steps_o_reg[3]_i_1_n_5\,
      O(1) => \total_steps_o_reg[3]_i_1_n_6\,
      O(0) => \total_steps_o_reg[3]_i_1_n_7\,
      S(3) => \total_steps_o[3]_i_6_n_0\,
      S(2) => \total_steps_o[3]_i_7_n_0\,
      S(1) => \total_steps_o[3]_i_8_n_0\,
      S(0) => \total_steps_o[3]_i_9_n_0\
    );
\total_steps_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[7]_i_1_n_7\,
      Q => \^total_steps_o\(4),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[7]_i_1_n_6\,
      Q => \^total_steps_o\(5),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[7]_i_1_n_5\,
      Q => \^total_steps_o\(6),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[7]_i_1_n_4\,
      Q => \^total_steps_o\(7),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \total_steps_o_reg[3]_i_1_n_0\,
      CO(3) => \total_steps_o_reg[7]_i_1_n_0\,
      CO(2) => \total_steps_o_reg[7]_i_1_n_1\,
      CO(1) => \total_steps_o_reg[7]_i_1_n_2\,
      CO(0) => \total_steps_o_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \total_steps_o[7]_i_2_n_0\,
      DI(2) => \total_steps_o[7]_i_3_n_0\,
      DI(1) => \total_steps_o[7]_i_4_n_0\,
      DI(0) => \total_steps_o[7]_i_5_n_0\,
      O(3) => \total_steps_o_reg[7]_i_1_n_4\,
      O(2) => \total_steps_o_reg[7]_i_1_n_5\,
      O(1) => \total_steps_o_reg[7]_i_1_n_6\,
      O(0) => \total_steps_o_reg[7]_i_1_n_7\,
      S(3) => \total_steps_o[7]_i_6_n_0\,
      S(2) => \total_steps_o[7]_i_7_n_0\,
      S(1) => \total_steps_o[7]_i_8_n_0\,
      S(0) => \total_steps_o[7]_i_9_n_0\
    );
\total_steps_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[11]_i_1_n_7\,
      Q => \^total_steps_o\(8),
      R => psen_o_i_1_n_0
    );
\total_steps_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => psclk_i,
      CE => \total_steps_o[15]_i_1_n_0\,
      D => \total_steps_o_reg[11]_i_1_n_6\,
      Q => \^total_steps_o\(9),
      R => psen_o_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ddmtd_system_bd_dps_controller_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ddmtd_system_bd_dps_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ddmtd_system_bd_dps_controller_0_0 : entity is "ddmtd_system_bd_dps_controller_0_0,dps_controller,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ddmtd_system_bd_dps_controller_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ddmtd_system_bd_dps_controller_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ddmtd_system_bd_dps_controller_0_0 : entity is "dps_controller,Vivado 2025.1";
end ddmtd_system_bd_dps_controller_0_0;

architecture STRUCTURE of ddmtd_system_bd_dps_controller_0_0 is
begin
inst: entity work.ddmtd_system_bd_dps_controller_0_0_dps_controller
     port map (
      dir_i => dir_i,
      psclk_i => psclk_i,
      psdone_i => psdone_i,
      psen_o => psen_o,
      psincdec_o => psincdec_o,
      rstn_i => rstn_i,
      steps_per_toggle_i(7 downto 0) => steps_per_toggle_i(7 downto 0),
      toggle_i => toggle_i,
      total_steps_o(15 downto 0) => total_steps_o(15 downto 0)
    );
end STRUCTURE;
