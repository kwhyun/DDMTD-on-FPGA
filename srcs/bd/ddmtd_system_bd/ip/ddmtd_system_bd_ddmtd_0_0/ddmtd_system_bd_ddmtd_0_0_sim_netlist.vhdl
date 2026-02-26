-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Feb 26 14:11:50 2026
-- Host        : RAINFALLBOOK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/DDMTD_Project/ddmtd_fpga/srcs/bd/ddmtd_system_bd/ip/ddmtd_system_bd_ddmtd_0_0/ddmtd_system_bd_ddmtd_0_0_sim_netlist.vhdl
-- Design      : ddmtd_system_bd_ddmtd_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ddmtd_system_bd_ddmtd_0_0_sampler is
  port (
    clk_sampled_o_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]_1\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_b_i : in STD_LOGIC;
    clk_ddmtd_i : in STD_LOGIC;
    \tag_int_reg[0]\ : in STD_LOGIC;
    \tag_int_reg[0]_0\ : in STD_LOGIC;
    rst_n_ddmtdclk_i : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_2\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ddmtd_system_bd_ddmtd_0_0_sampler : entity is "sampler";
end ddmtd_system_bd_ddmtd_0_0_sampler;

architecture STRUCTURE of ddmtd_system_bd_ddmtd_0_0_sampler is
  signal clk_i_d0_reg_n_0 : STD_LOGIC;
  signal \clk_i_d1_i_1__0_n_0\ : STD_LOGIC;
  signal clk_i_d1_reg_n_0 : STD_LOGIC;
  signal clk_i_d2_reg_n_0 : STD_LOGIC;
  signal \clk_sampled_o_i_1__0_n_0\ : STD_LOGIC;
  signal \^clk_sampled_o_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \tag_int[15]_i_1\ : label is "soft_lutpair3";
begin
  clk_sampled_o_reg_0 <= \^clk_sampled_o_reg_0\;
\FSM_onehot_state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E2E2E2"
    )
        port map (
      I0 => \FSM_onehot_state_reg[0]_2\,
      I1 => CO(0),
      I2 => \tag_int_reg[0]_0\,
      I3 => \^clk_sampled_o_reg_0\,
      I4 => \tag_int_reg[0]\,
      O => \FSM_onehot_state_reg[0]_1\
    );
\FSM_onehot_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABF8888"
    )
        port map (
      I0 => \FSM_onehot_state_reg[0]_2\,
      I1 => CO(0),
      I2 => \tag_int_reg[0]_0\,
      I3 => \^clk_sampled_o_reg_0\,
      I4 => \tag_int_reg[0]\,
      O => \FSM_onehot_state_reg[0]_0\
    );
\FSM_onehot_state[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF83030"
    )
        port map (
      I0 => \FSM_onehot_state_reg[0]_2\,
      I1 => CO(0),
      I2 => \tag_int_reg[0]_0\,
      I3 => \^clk_sampled_o_reg_0\,
      I4 => \tag_int_reg[0]\,
      O => \FSM_onehot_state_reg[0]\
    );
clk_i_d0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => clk_b_i,
      Q => clk_i_d0_reg_n_0,
      R => SR(0)
    );
\clk_i_d1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_i_d0_reg_n_0,
      O => \clk_i_d1_i_1__0_n_0\
    );
clk_i_d1_reg: unisim.vcomponents.FDSE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \clk_i_d1_i_1__0_n_0\,
      Q => clk_i_d1_reg_n_0,
      S => SR(0)
    );
clk_i_d2_reg: unisim.vcomponents.FDSE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => clk_i_d1_reg_n_0,
      Q => clk_i_d2_reg_n_0,
      S => SR(0)
    );
\clk_sampled_o_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_i_d2_reg_n_0,
      I1 => rst_n_ddmtdclk_i,
      I2 => \^clk_sampled_o_reg_0\,
      O => \clk_sampled_o_i_1__0_n_0\
    );
clk_sampled_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \clk_sampled_o_i_1__0_n_0\,
      Q => \^clk_sampled_o_reg_0\,
      R => '0'
    );
\tag_int[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tag_int_reg[0]\,
      I1 => \^clk_sampled_o_reg_0\,
      I2 => \tag_int_reg[0]_0\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ddmtd_system_bd_ddmtd_0_0_sampler_1 is
  port (
    rst_n_ddmtdclk_i_0 : out STD_LOGIC;
    clk_sampled_o_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]_1\ : out STD_LOGIC;
    clk_a_i : in STD_LOGIC;
    clk_ddmtd_i : in STD_LOGIC;
    rst_n_ddmtdclk_i : in STD_LOGIC;
    \tag_int_reg[0]\ : in STD_LOGIC;
    \tag_int_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_2\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ddmtd_system_bd_ddmtd_0_0_sampler_1 : entity is "sampler";
end ddmtd_system_bd_ddmtd_0_0_sampler_1;

architecture STRUCTURE of ddmtd_system_bd_ddmtd_0_0_sampler_1 is
  signal clk_i_d0 : STD_LOGIC;
  signal clk_i_d1 : STD_LOGIC;
  signal clk_i_d2 : STD_LOGIC;
  signal clk_sampled_o_i_1_n_0 : STD_LOGIC;
  signal \^clk_sampled_o_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^rst_n_ddmtdclk_i_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \tag_int[15]_i_1__0\ : label is "soft_lutpair1";
begin
  clk_sampled_o_reg_0 <= \^clk_sampled_o_reg_0\;
  rst_n_ddmtdclk_i_0 <= \^rst_n_ddmtdclk_i_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E2E2E2"
    )
        port map (
      I0 => \FSM_onehot_state_reg[0]_2\,
      I1 => CO(0),
      I2 => \tag_int_reg[0]_0\,
      I3 => \^clk_sampled_o_reg_0\,
      I4 => \tag_int_reg[0]\,
      O => \FSM_onehot_state_reg[0]_1\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABF8888"
    )
        port map (
      I0 => \FSM_onehot_state_reg[0]_2\,
      I1 => CO(0),
      I2 => \tag_int_reg[0]_0\,
      I3 => \^clk_sampled_o_reg_0\,
      I4 => \tag_int_reg[0]\,
      O => \FSM_onehot_state_reg[0]_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF83030"
    )
        port map (
      I0 => \FSM_onehot_state_reg[0]_2\,
      I1 => CO(0),
      I2 => \tag_int_reg[0]_0\,
      I3 => \^clk_sampled_o_reg_0\,
      I4 => \tag_int_reg[0]\,
      O => \FSM_onehot_state_reg[0]\
    );
clk_i_d0_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => clk_a_i,
      Q => clk_i_d0,
      R => \^rst_n_ddmtdclk_i_0\
    );
clk_i_d1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_i_d0,
      O => p_1_in
    );
clk_i_d1_reg: unisim.vcomponents.FDSE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => p_1_in,
      Q => clk_i_d1,
      S => \^rst_n_ddmtdclk_i_0\
    );
clk_i_d2_reg: unisim.vcomponents.FDSE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => clk_i_d1,
      Q => clk_i_d2,
      S => \^rst_n_ddmtdclk_i_0\
    );
clk_sampled_o_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => clk_i_d2,
      I1 => rst_n_ddmtdclk_i,
      I2 => \^clk_sampled_o_reg_0\,
      O => clk_sampled_o_i_1_n_0
    );
clk_sampled_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => clk_sampled_o_i_1_n_0,
      Q => \^clk_sampled_o_reg_0\,
      R => '0'
    );
\phase_diff_o[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n_ddmtdclk_i,
      O => \^rst_n_ddmtdclk_i_0\
    );
\tag_int[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \tag_int_reg[0]\,
      I1 => \^clk_sampled_o_reg_0\,
      I2 => \tag_int_reg[0]_0\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ddmtd_system_bd_ddmtd_0_0_deglitcher is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    free_cntr_reg : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_sampled_o : out STD_LOGIC;
    tag_p_o : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \tag_o_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tag_o_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tag_o_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC;
    clk_a_i : in STD_LOGIC;
    clk_ddmtd_i : in STD_LOGIC;
    \phase_diff_o_reg[15]\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pd_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    deglitch_threshold_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \phase_diff_o_reg[15]_0\ : in STD_LOGIC_VECTOR ( 14 downto 0 );
    rst_n_ddmtdclk_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ddmtd_system_bd_ddmtd_0_0_deglitcher : entity is "deglitcher";
end ddmtd_system_bd_ddmtd_0_0_deglitcher;

architecture STRUCTURE of ddmtd_system_bd_ddmtd_0_0_deglitcher is
  signal \^fsm_onehot_state_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[2]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^clk_sampled_o\ : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal \free_cntr[0]_i_2_n_0\ : STD_LOGIC;
  signal \^free_cntr_reg\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \free_cntr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \free_cntr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \free_cntr_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \free_cntr_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \free_cntr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \free_cntr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \free_cntr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \free_cntr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \free_cntr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \free_cntr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \free_cntr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \free_cntr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \free_cntr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \free_cntr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \free_cntr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \free_cntr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \free_cntr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \free_cntr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \free_cntr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \free_cntr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \free_cntr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \free_cntr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \free_cntr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \free_cntr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \free_cntr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \free_cntr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \free_cntr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \free_cntr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \free_cntr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \free_cntr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \free_cntr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal sampler_inst_n_2 : STD_LOGIC;
  signal sampler_inst_n_3 : STD_LOGIC;
  signal sampler_inst_n_4 : STD_LOGIC;
  signal sampler_inst_n_5 : STD_LOGIC;
  signal stab_cntr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \stab_cntr0_carry__0_n_0\ : STD_LOGIC;
  signal \stab_cntr0_carry__0_n_1\ : STD_LOGIC;
  signal \stab_cntr0_carry__0_n_2\ : STD_LOGIC;
  signal \stab_cntr0_carry__0_n_3\ : STD_LOGIC;
  signal \stab_cntr0_carry__1_n_0\ : STD_LOGIC;
  signal \stab_cntr0_carry__1_n_1\ : STD_LOGIC;
  signal \stab_cntr0_carry__1_n_2\ : STD_LOGIC;
  signal \stab_cntr0_carry__1_n_3\ : STD_LOGIC;
  signal \stab_cntr0_carry__2_n_2\ : STD_LOGIC;
  signal \stab_cntr0_carry__2_n_3\ : STD_LOGIC;
  signal stab_cntr0_carry_n_0 : STD_LOGIC;
  signal stab_cntr0_carry_n_1 : STD_LOGIC;
  signal stab_cntr0_carry_n_2 : STD_LOGIC;
  signal stab_cntr0_carry_n_3 : STD_LOGIC;
  signal \stab_cntr1_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \stab_cntr1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \stab_cntr1_carry__0_n_3\ : STD_LOGIC;
  signal stab_cntr1_carry_i_1_n_0 : STD_LOGIC;
  signal stab_cntr1_carry_i_2_n_0 : STD_LOGIC;
  signal stab_cntr1_carry_i_3_n_0 : STD_LOGIC;
  signal stab_cntr1_carry_i_4_n_0 : STD_LOGIC;
  signal stab_cntr1_carry_n_0 : STD_LOGIC;
  signal stab_cntr1_carry_n_1 : STD_LOGIC;
  signal stab_cntr1_carry_n_2 : STD_LOGIC;
  signal stab_cntr1_carry_n_3 : STD_LOGIC;
  signal \stab_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[10]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[11]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[12]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[13]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[14]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[15]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[3]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[4]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[5]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[6]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[8]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[9]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_0\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_1\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_2\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_3\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_4\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_5\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_6\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_7\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_0\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_1\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_2\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_3\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_4\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_5\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_6\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_7\ : STD_LOGIC;
  signal \tag_int0_carry__2_n_2\ : STD_LOGIC;
  signal \tag_int0_carry__2_n_3\ : STD_LOGIC;
  signal \tag_int0_carry__2_n_5\ : STD_LOGIC;
  signal \tag_int0_carry__2_n_6\ : STD_LOGIC;
  signal \tag_int0_carry__2_n_7\ : STD_LOGIC;
  signal tag_int0_carry_n_0 : STD_LOGIC;
  signal tag_int0_carry_n_1 : STD_LOGIC;
  signal tag_int0_carry_n_2 : STD_LOGIC;
  signal tag_int0_carry_n_3 : STD_LOGIC;
  signal tag_int0_carry_n_4 : STD_LOGIC;
  signal tag_int0_carry_n_5 : STD_LOGIC;
  signal tag_int0_carry_n_6 : STD_LOGIC;
  signal tag_int0_carry_n_7 : STD_LOGIC;
  signal \tag_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[10]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[11]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[12]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[13]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[14]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[15]_i_2_n_0\ : STD_LOGIC;
  signal \tag_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[8]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[9]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[0]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[10]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[11]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[12]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[13]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[14]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[15]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[1]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[2]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[3]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[4]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[5]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[6]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[7]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[8]\ : STD_LOGIC;
  signal \tag_int_reg_n_0_[9]\ : STD_LOGIC;
  signal \tag_o[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \^tag_p_o\ : STD_LOGIC;
  signal \tag_p_o_i_1__0_n_0\ : STD_LOGIC;
  signal \NLW_free_cntr_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_stab_cntr0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_stab_cntr0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_stab_cntr1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_stab_cntr1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_stab_cntr1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tag_int0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tag_int0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "WAIT_STABLE_0:001,WAIT_EDGE:010,GOT_EDGE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "WAIT_STABLE_0:001,WAIT_EDGE:010,GOT_EDGE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "WAIT_STABLE_0:001,WAIT_EDGE:010,GOT_EDGE:100,";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \free_cntr_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \free_cntr_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \free_cntr_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \free_cntr_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of stab_cntr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \stab_cntr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \stab_cntr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \stab_cntr0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of tag_int0_carry : label is 35;
  attribute ADDER_THRESHOLD of \tag_int0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \tag_int0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \tag_int0_carry__2\ : label is 35;
begin
  \FSM_onehot_state_reg[0]_0\ <= \^fsm_onehot_state_reg[0]_0\;
  \FSM_onehot_state_reg[1]_0\ <= \^fsm_onehot_state_reg[1]_0\;
  \FSM_onehot_state_reg[2]_0\ <= \^fsm_onehot_state_reg[2]_0\;
  Q(15 downto 0) <= \^q\(15 downto 0);
  SR(0) <= \^sr\(0);
  clk_sampled_o <= \^clk_sampled_o\;
  free_cntr_reg(15 downto 0) <= \^free_cntr_reg\(15 downto 0);
  tag_p_o <= \^tag_p_o\;
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => sampler_inst_n_5,
      Q => \^fsm_onehot_state_reg[0]_0\,
      S => \^sr\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => sampler_inst_n_4,
      Q => \^fsm_onehot_state_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => sampler_inst_n_3,
      Q => \^fsm_onehot_state_reg[2]_0\,
      R => \^sr\(0)
    );
\free_cntr[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^free_cntr_reg\(0),
      O => \free_cntr[0]_i_2_n_0\
    );
\free_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[0]_i_1_n_7\,
      Q => \^free_cntr_reg\(0),
      R => \^sr\(0)
    );
\free_cntr_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \free_cntr_reg[0]_i_1_n_0\,
      CO(2) => \free_cntr_reg[0]_i_1_n_1\,
      CO(1) => \free_cntr_reg[0]_i_1_n_2\,
      CO(0) => \free_cntr_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \free_cntr_reg[0]_i_1_n_4\,
      O(2) => \free_cntr_reg[0]_i_1_n_5\,
      O(1) => \free_cntr_reg[0]_i_1_n_6\,
      O(0) => \free_cntr_reg[0]_i_1_n_7\,
      S(3 downto 1) => \^free_cntr_reg\(3 downto 1),
      S(0) => \free_cntr[0]_i_2_n_0\
    );
\free_cntr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[8]_i_1_n_5\,
      Q => \^free_cntr_reg\(10),
      R => \^sr\(0)
    );
\free_cntr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[8]_i_1_n_4\,
      Q => \^free_cntr_reg\(11),
      R => \^sr\(0)
    );
\free_cntr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[12]_i_1_n_7\,
      Q => \^free_cntr_reg\(12),
      R => \^sr\(0)
    );
\free_cntr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_cntr_reg[8]_i_1_n_0\,
      CO(3) => \NLW_free_cntr_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \free_cntr_reg[12]_i_1_n_1\,
      CO(1) => \free_cntr_reg[12]_i_1_n_2\,
      CO(0) => \free_cntr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \free_cntr_reg[12]_i_1_n_4\,
      O(2) => \free_cntr_reg[12]_i_1_n_5\,
      O(1) => \free_cntr_reg[12]_i_1_n_6\,
      O(0) => \free_cntr_reg[12]_i_1_n_7\,
      S(3 downto 0) => \^free_cntr_reg\(15 downto 12)
    );
\free_cntr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[12]_i_1_n_6\,
      Q => \^free_cntr_reg\(13),
      R => \^sr\(0)
    );
\free_cntr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[12]_i_1_n_5\,
      Q => \^free_cntr_reg\(14),
      R => \^sr\(0)
    );
\free_cntr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[12]_i_1_n_4\,
      Q => \^free_cntr_reg\(15),
      R => \^sr\(0)
    );
\free_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[0]_i_1_n_6\,
      Q => \^free_cntr_reg\(1),
      R => \^sr\(0)
    );
\free_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[0]_i_1_n_5\,
      Q => \^free_cntr_reg\(2),
      R => \^sr\(0)
    );
\free_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[0]_i_1_n_4\,
      Q => \^free_cntr_reg\(3),
      R => \^sr\(0)
    );
\free_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[4]_i_1_n_7\,
      Q => \^free_cntr_reg\(4),
      R => \^sr\(0)
    );
\free_cntr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_cntr_reg[0]_i_1_n_0\,
      CO(3) => \free_cntr_reg[4]_i_1_n_0\,
      CO(2) => \free_cntr_reg[4]_i_1_n_1\,
      CO(1) => \free_cntr_reg[4]_i_1_n_2\,
      CO(0) => \free_cntr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \free_cntr_reg[4]_i_1_n_4\,
      O(2) => \free_cntr_reg[4]_i_1_n_5\,
      O(1) => \free_cntr_reg[4]_i_1_n_6\,
      O(0) => \free_cntr_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^free_cntr_reg\(7 downto 4)
    );
\free_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[4]_i_1_n_6\,
      Q => \^free_cntr_reg\(5),
      R => \^sr\(0)
    );
\free_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[4]_i_1_n_5\,
      Q => \^free_cntr_reg\(6),
      R => \^sr\(0)
    );
\free_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[4]_i_1_n_4\,
      Q => \^free_cntr_reg\(7),
      R => \^sr\(0)
    );
\free_cntr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[8]_i_1_n_7\,
      Q => \^free_cntr_reg\(8),
      R => \^sr\(0)
    );
\free_cntr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \free_cntr_reg[4]_i_1_n_0\,
      CO(3) => \free_cntr_reg[8]_i_1_n_0\,
      CO(2) => \free_cntr_reg[8]_i_1_n_1\,
      CO(1) => \free_cntr_reg[8]_i_1_n_2\,
      CO(0) => \free_cntr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \free_cntr_reg[8]_i_1_n_4\,
      O(2) => \free_cntr_reg[8]_i_1_n_5\,
      O(1) => \free_cntr_reg[8]_i_1_n_6\,
      O(0) => \free_cntr_reg[8]_i_1_n_7\,
      S(3 downto 0) => \^free_cntr_reg\(11 downto 8)
    );
\free_cntr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \free_cntr_reg[8]_i_1_n_6\,
      Q => \^free_cntr_reg\(9),
      R => \^sr\(0)
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(7),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(6),
      I4 => \phase_diff_o_reg[15]\(7),
      O => \tag_o_reg[7]_0\(3)
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(6),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(5),
      I4 => \phase_diff_o_reg[15]\(6),
      O => \tag_o_reg[7]_0\(2)
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(5),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(4),
      I4 => \phase_diff_o_reg[15]\(5),
      O => \tag_o_reg[7]_0\(1)
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(4),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(3),
      I4 => \phase_diff_o_reg[15]\(4),
      O => \tag_o_reg[7]_0\(0)
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(11),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(10),
      I4 => \phase_diff_o_reg[15]\(11),
      O => \tag_o_reg[11]_0\(3)
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(10),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(9),
      I4 => \phase_diff_o_reg[15]\(10),
      O => \tag_o_reg[11]_0\(2)
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(9),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(8),
      I4 => \phase_diff_o_reg[15]\(9),
      O => \tag_o_reg[11]_0\(1)
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(8),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(7),
      I4 => \phase_diff_o_reg[15]\(8),
      O => \tag_o_reg[11]_0\(0)
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(15),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(14),
      I4 => \phase_diff_o_reg[15]\(15),
      O => \tag_o_reg[15]_0\(3)
    );
\i__carry__2_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(14),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(13),
      I4 => \phase_diff_o_reg[15]\(14),
      O => \tag_o_reg[15]_0\(2)
    );
\i__carry__2_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(13),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(12),
      I4 => \phase_diff_o_reg[15]\(13),
      O => \tag_o_reg[15]_0\(1)
    );
\i__carry__2_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(12),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(11),
      I4 => \phase_diff_o_reg[15]\(12),
      O => \tag_o_reg[15]_0\(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(3),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(2),
      I4 => \phase_diff_o_reg[15]\(3),
      O => S(3)
    );
\i__carry_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(2),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(1),
      I4 => \phase_diff_o_reg[15]\(2),
      O => S(2)
    );
\i__carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1E22112D"
    )
        port map (
      I0 => \^q\(1),
      I1 => pd_state(0),
      I2 => pd_state(1),
      I3 => \phase_diff_o_reg[15]_0\(0),
      I4 => \phase_diff_o_reg[15]\(1),
      O => S(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AC5"
    )
        port map (
      I0 => \^q\(0),
      I1 => \phase_diff_o_reg[15]\(0),
      I2 => pd_state(0),
      I3 => pd_state(1),
      O => S(0)
    );
sampler_inst: entity work.ddmtd_system_bd_ddmtd_0_0_sampler_1
     port map (
      CO(0) => data0,
      E(0) => sampler_inst_n_2,
      \FSM_onehot_state_reg[0]\ => sampler_inst_n_3,
      \FSM_onehot_state_reg[0]_0\ => sampler_inst_n_4,
      \FSM_onehot_state_reg[0]_1\ => sampler_inst_n_5,
      \FSM_onehot_state_reg[0]_2\ => \^fsm_onehot_state_reg[0]_0\,
      clk_a_i => clk_a_i,
      clk_ddmtd_i => clk_ddmtd_i,
      clk_sampled_o_reg_0 => \^clk_sampled_o\,
      rst_n_ddmtdclk_i => rst_n_ddmtdclk_i,
      rst_n_ddmtdclk_i_0 => \^sr\(0),
      \tag_int_reg[0]\ => \^fsm_onehot_state_reg[1]_0\,
      \tag_int_reg[0]_0\ => \^fsm_onehot_state_reg[2]_0\
    );
stab_cntr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => stab_cntr0_carry_n_0,
      CO(2) => stab_cntr0_carry_n_1,
      CO(1) => stab_cntr0_carry_n_2,
      CO(0) => stab_cntr0_carry_n_3,
      CYINIT => stab_cntr(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(4 downto 1),
      S(3 downto 0) => stab_cntr(4 downto 1)
    );
\stab_cntr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => stab_cntr0_carry_n_0,
      CO(3) => \stab_cntr0_carry__0_n_0\,
      CO(2) => \stab_cntr0_carry__0_n_1\,
      CO(1) => \stab_cntr0_carry__0_n_2\,
      CO(0) => \stab_cntr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(8 downto 5),
      S(3 downto 0) => stab_cntr(8 downto 5)
    );
\stab_cntr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stab_cntr0_carry__0_n_0\,
      CO(3) => \stab_cntr0_carry__1_n_0\,
      CO(2) => \stab_cntr0_carry__1_n_1\,
      CO(1) => \stab_cntr0_carry__1_n_2\,
      CO(0) => \stab_cntr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(12 downto 9),
      S(3 downto 0) => stab_cntr(12 downto 9)
    );
\stab_cntr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \stab_cntr0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_stab_cntr0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \stab_cntr0_carry__2_n_2\,
      CO(0) => \stab_cntr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_stab_cntr0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => p_0_in(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => stab_cntr(15 downto 13)
    );
stab_cntr1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => stab_cntr1_carry_n_0,
      CO(2) => stab_cntr1_carry_n_1,
      CO(1) => stab_cntr1_carry_n_2,
      CO(0) => stab_cntr1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_stab_cntr1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => stab_cntr1_carry_i_1_n_0,
      S(2) => stab_cntr1_carry_i_2_n_0,
      S(1) => stab_cntr1_carry_i_3_n_0,
      S(0) => stab_cntr1_carry_i_4_n_0
    );
\stab_cntr1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => stab_cntr1_carry_n_0,
      CO(3 downto 2) => \NLW_stab_cntr1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => data0,
      CO(0) => \stab_cntr1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_stab_cntr1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \stab_cntr1_carry__0_i_1__0_n_0\,
      S(0) => \stab_cntr1_carry__0_i_2_n_0\
    );
\stab_cntr1_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => deglitch_threshold_i(15),
      I1 => stab_cntr(15),
      O => \stab_cntr1_carry__0_i_1__0_n_0\
    );
\stab_cntr1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => stab_cntr(12),
      I1 => deglitch_threshold_i(12),
      I2 => deglitch_threshold_i(14),
      I3 => stab_cntr(14),
      I4 => deglitch_threshold_i(13),
      I5 => stab_cntr(13),
      O => \stab_cntr1_carry__0_i_2_n_0\
    );
stab_cntr1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => stab_cntr(9),
      I1 => deglitch_threshold_i(9),
      I2 => deglitch_threshold_i(11),
      I3 => stab_cntr(11),
      I4 => deglitch_threshold_i(10),
      I5 => stab_cntr(10),
      O => stab_cntr1_carry_i_1_n_0
    );
stab_cntr1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => stab_cntr(6),
      I1 => deglitch_threshold_i(6),
      I2 => deglitch_threshold_i(8),
      I3 => stab_cntr(8),
      I4 => deglitch_threshold_i(7),
      I5 => stab_cntr(7),
      O => stab_cntr1_carry_i_2_n_0
    );
stab_cntr1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => stab_cntr(3),
      I1 => deglitch_threshold_i(3),
      I2 => deglitch_threshold_i(5),
      I3 => stab_cntr(5),
      I4 => deglitch_threshold_i(4),
      I5 => stab_cntr(4),
      O => stab_cntr1_carry_i_3_n_0
    );
stab_cntr1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => stab_cntr(0),
      I1 => deglitch_threshold_i(0),
      I2 => deglitch_threshold_i(2),
      I3 => stab_cntr(2),
      I4 => deglitch_threshold_i(1),
      I5 => stab_cntr(1),
      O => stab_cntr1_carry_i_4_n_0
    );
\stab_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02320202"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => stab_cntr(0),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[0]_i_1_n_0\
    );
\stab_cntr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(10),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[10]_i_1_n_0\
    );
\stab_cntr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(11),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[11]_i_1_n_0\
    );
\stab_cntr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(12),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[12]_i_1_n_0\
    );
\stab_cntr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(13),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[13]_i_1_n_0\
    );
\stab_cntr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(14),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[14]_i_1_n_0\
    );
\stab_cntr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(15),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[15]_i_1_n_0\
    );
\stab_cntr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(1),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[1]_i_1_n_0\
    );
\stab_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(2),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[2]_i_1_n_0\
    );
\stab_cntr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(3),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[3]_i_1_n_0\
    );
\stab_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(4),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[4]_i_1_n_0\
    );
\stab_cntr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(5),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[5]_i_1_n_0\
    );
\stab_cntr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(6),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[6]_i_1_n_0\
    );
\stab_cntr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(7),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[7]_i_1_n_0\
    );
\stab_cntr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(8),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[8]_i_1_n_0\
    );
\stab_cntr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => p_0_in(9),
      I2 => \^clk_sampled_o\,
      I3 => data0,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[9]_i_1_n_0\
    );
\stab_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[0]_i_1_n_0\,
      Q => stab_cntr(0),
      R => \^sr\(0)
    );
\stab_cntr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[10]_i_1_n_0\,
      Q => stab_cntr(10),
      R => \^sr\(0)
    );
\stab_cntr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[11]_i_1_n_0\,
      Q => stab_cntr(11),
      R => \^sr\(0)
    );
\stab_cntr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[12]_i_1_n_0\,
      Q => stab_cntr(12),
      R => \^sr\(0)
    );
\stab_cntr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[13]_i_1_n_0\,
      Q => stab_cntr(13),
      R => \^sr\(0)
    );
\stab_cntr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[14]_i_1_n_0\,
      Q => stab_cntr(14),
      R => \^sr\(0)
    );
\stab_cntr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[15]_i_1_n_0\,
      Q => stab_cntr(15),
      R => \^sr\(0)
    );
\stab_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[1]_i_1_n_0\,
      Q => stab_cntr(1),
      R => \^sr\(0)
    );
\stab_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[2]_i_1_n_0\,
      Q => stab_cntr(2),
      R => \^sr\(0)
    );
\stab_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[3]_i_1_n_0\,
      Q => stab_cntr(3),
      R => \^sr\(0)
    );
\stab_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[4]_i_1_n_0\,
      Q => stab_cntr(4),
      R => \^sr\(0)
    );
\stab_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[5]_i_1_n_0\,
      Q => stab_cntr(5),
      R => \^sr\(0)
    );
\stab_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[6]_i_1_n_0\,
      Q => stab_cntr(6),
      R => \^sr\(0)
    );
\stab_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[7]_i_1_n_0\,
      Q => stab_cntr(7),
      R => \^sr\(0)
    );
\stab_cntr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[8]_i_1_n_0\,
      Q => stab_cntr(8),
      R => \^sr\(0)
    );
\stab_cntr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => E(0),
      D => \stab_cntr[9]_i_1_n_0\,
      Q => stab_cntr(9),
      R => \^sr\(0)
    );
tag_int0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tag_int0_carry_n_0,
      CO(2) => tag_int0_carry_n_1,
      CO(1) => tag_int0_carry_n_2,
      CO(0) => tag_int0_carry_n_3,
      CYINIT => \tag_int_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => tag_int0_carry_n_4,
      O(2) => tag_int0_carry_n_5,
      O(1) => tag_int0_carry_n_6,
      O(0) => tag_int0_carry_n_7,
      S(3) => \tag_int_reg_n_0_[4]\,
      S(2) => \tag_int_reg_n_0_[3]\,
      S(1) => \tag_int_reg_n_0_[2]\,
      S(0) => \tag_int_reg_n_0_[1]\
    );
\tag_int0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tag_int0_carry_n_0,
      CO(3) => \tag_int0_carry__0_n_0\,
      CO(2) => \tag_int0_carry__0_n_1\,
      CO(1) => \tag_int0_carry__0_n_2\,
      CO(0) => \tag_int0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tag_int0_carry__0_n_4\,
      O(2) => \tag_int0_carry__0_n_5\,
      O(1) => \tag_int0_carry__0_n_6\,
      O(0) => \tag_int0_carry__0_n_7\,
      S(3) => \tag_int_reg_n_0_[8]\,
      S(2) => \tag_int_reg_n_0_[7]\,
      S(1) => \tag_int_reg_n_0_[6]\,
      S(0) => \tag_int_reg_n_0_[5]\
    );
\tag_int0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tag_int0_carry__0_n_0\,
      CO(3) => \tag_int0_carry__1_n_0\,
      CO(2) => \tag_int0_carry__1_n_1\,
      CO(1) => \tag_int0_carry__1_n_2\,
      CO(0) => \tag_int0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tag_int0_carry__1_n_4\,
      O(2) => \tag_int0_carry__1_n_5\,
      O(1) => \tag_int0_carry__1_n_6\,
      O(0) => \tag_int0_carry__1_n_7\,
      S(3) => \tag_int_reg_n_0_[12]\,
      S(2) => \tag_int_reg_n_0_[11]\,
      S(1) => \tag_int_reg_n_0_[10]\,
      S(0) => \tag_int_reg_n_0_[9]\
    );
\tag_int0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tag_int0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_tag_int0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \tag_int0_carry__2_n_2\,
      CO(0) => \tag_int0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_tag_int0_carry__2_O_UNCONNECTED\(3),
      O(2) => \tag_int0_carry__2_n_5\,
      O(1) => \tag_int0_carry__2_n_6\,
      O(0) => \tag_int0_carry__2_n_7\,
      S(3) => '0',
      S(2) => \tag_int_reg_n_0_[15]\,
      S(1) => \tag_int_reg_n_0_[14]\,
      S(0) => \tag_int_reg_n_0_[13]\
    );
\tag_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int_reg_n_0_[0]\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(0),
      O => \tag_int[0]_i_1_n_0\
    );
\tag_int[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__1_n_6\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(10),
      O => \tag_int[10]_i_1_n_0\
    );
\tag_int[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__1_n_5\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(11),
      O => \tag_int[11]_i_1_n_0\
    );
\tag_int[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__1_n_4\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(12),
      O => \tag_int[12]_i_1_n_0\
    );
\tag_int[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__2_n_7\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(13),
      O => \tag_int[13]_i_1_n_0\
    );
\tag_int[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__2_n_6\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(14),
      O => \tag_int[14]_i_1_n_0\
    );
\tag_int[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__2_n_5\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(15),
      O => \tag_int[15]_i_2_n_0\
    );
\tag_int[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => tag_int0_carry_n_7,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(1),
      O => \tag_int[1]_i_1_n_0\
    );
\tag_int[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => tag_int0_carry_n_6,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(2),
      O => \tag_int[2]_i_1_n_0\
    );
\tag_int[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => tag_int0_carry_n_5,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(3),
      O => \tag_int[3]_i_1_n_0\
    );
\tag_int[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => tag_int0_carry_n_4,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(4),
      O => \tag_int[4]_i_1_n_0\
    );
\tag_int[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__0_n_7\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(5),
      O => \tag_int[5]_i_1_n_0\
    );
\tag_int[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__0_n_6\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(6),
      O => \tag_int[6]_i_1_n_0\
    );
\tag_int[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__0_n_5\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(7),
      O => \tag_int[7]_i_1_n_0\
    );
\tag_int[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__0_n_4\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(8),
      O => \tag_int[8]_i_1_n_0\
    );
\tag_int[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__1_n_7\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^free_cntr_reg\(9),
      O => \tag_int[9]_i_1_n_0\
    );
\tag_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[0]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\tag_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[10]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\tag_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[11]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\tag_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[12]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\tag_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[13]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\tag_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[14]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\tag_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[15]_i_2_n_0\,
      Q => \tag_int_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\tag_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[1]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\tag_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[2]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\tag_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[3]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\tag_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[4]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\tag_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[5]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\tag_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[6]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\tag_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[7]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\tag_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[8]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\tag_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_2,
      D => \tag_int[9]_i_1_n_0\,
      Q => \tag_int_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\tag_o[15]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[2]_0\,
      I1 => data0,
      O => \tag_o[15]_i_1__0_n_0\
    );
\tag_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[0]\,
      Q => \^q\(0),
      R => \^sr\(0)
    );
\tag_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[10]\,
      Q => \^q\(10),
      R => \^sr\(0)
    );
\tag_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[11]\,
      Q => \^q\(11),
      R => \^sr\(0)
    );
\tag_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[12]\,
      Q => \^q\(12),
      R => \^sr\(0)
    );
\tag_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[13]\,
      Q => \^q\(13),
      R => \^sr\(0)
    );
\tag_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[14]\,
      Q => \^q\(14),
      R => \^sr\(0)
    );
\tag_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[15]\,
      Q => \^q\(15),
      R => \^sr\(0)
    );
\tag_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[1]\,
      Q => \^q\(1),
      R => \^sr\(0)
    );
\tag_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[2]\,
      Q => \^q\(2),
      R => \^sr\(0)
    );
\tag_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[3]\,
      Q => \^q\(3),
      R => \^sr\(0)
    );
\tag_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[4]\,
      Q => \^q\(4),
      R => \^sr\(0)
    );
\tag_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[5]\,
      Q => \^q\(5),
      R => \^sr\(0)
    );
\tag_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[6]\,
      Q => \^q\(6),
      R => \^sr\(0)
    );
\tag_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[7]\,
      Q => \^q\(7),
      R => \^sr\(0)
    );
\tag_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[8]\,
      Q => \^q\(8),
      R => \^sr\(0)
    );
\tag_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1__0_n_0\,
      D => \tag_int_reg_n_0_[9]\,
      Q => \^q\(9),
      R => \^sr\(0)
    );
\tag_p_o_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0D5C0C0"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => data0,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^tag_p_o\,
      O => \tag_p_o_i_1__0_n_0\
    );
tag_p_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => \tag_p_o_i_1__0_n_0\,
      Q => \^tag_p_o\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ddmtd_system_bd_ddmtd_0_0_deglitcher_0 is
  port (
    clk_sampled_o_reg : out STD_LOGIC;
    tag_p_o_reg_0 : out STD_LOGIC;
    tag_p_o_reg_1 : out STD_LOGIC;
    tag_p_o_reg_2 : out STD_LOGIC;
    \temp0__0\ : out STD_LOGIC_VECTOR ( 14 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_b_i : in STD_LOGIC;
    clk_ddmtd_i : in STD_LOGIC;
    deglitch_threshold_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pd_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    tag_p_o : in STD_LOGIC;
    in7 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst_n_ddmtdclk_i : in STD_LOGIC;
    \stab_cntr_reg[15]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    free_cntr_reg : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ddmtd_system_bd_ddmtd_0_0_deglitcher_0 : entity is "deglitcher";
end ddmtd_system_bd_ddmtd_0_0_deglitcher_0;

architecture STRUCTURE of ddmtd_system_bd_ddmtd_0_0_deglitcher_0 is
  signal \^fsm_onehot_state_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[2]_0\ : STD_LOGIC;
  signal \^clk_sampled_o_reg\ : STD_LOGIC;
  signal sampler_inst_n_1 : STD_LOGIC;
  signal sampler_inst_n_2 : STD_LOGIC;
  signal sampler_inst_n_3 : STD_LOGIC;
  signal sampler_inst_n_4 : STD_LOGIC;
  signal \stab_cntr0_carry__0_n_0\ : STD_LOGIC;
  signal \stab_cntr0_carry__0_n_1\ : STD_LOGIC;
  signal \stab_cntr0_carry__0_n_2\ : STD_LOGIC;
  signal \stab_cntr0_carry__0_n_3\ : STD_LOGIC;
  signal \stab_cntr0_carry__0_n_4\ : STD_LOGIC;
  signal \stab_cntr0_carry__0_n_5\ : STD_LOGIC;
  signal \stab_cntr0_carry__0_n_6\ : STD_LOGIC;
  signal \stab_cntr0_carry__0_n_7\ : STD_LOGIC;
  signal \stab_cntr0_carry__1_n_0\ : STD_LOGIC;
  signal \stab_cntr0_carry__1_n_1\ : STD_LOGIC;
  signal \stab_cntr0_carry__1_n_2\ : STD_LOGIC;
  signal \stab_cntr0_carry__1_n_3\ : STD_LOGIC;
  signal \stab_cntr0_carry__1_n_4\ : STD_LOGIC;
  signal \stab_cntr0_carry__1_n_5\ : STD_LOGIC;
  signal \stab_cntr0_carry__1_n_6\ : STD_LOGIC;
  signal \stab_cntr0_carry__1_n_7\ : STD_LOGIC;
  signal \stab_cntr0_carry__2_n_2\ : STD_LOGIC;
  signal \stab_cntr0_carry__2_n_3\ : STD_LOGIC;
  signal \stab_cntr0_carry__2_n_5\ : STD_LOGIC;
  signal \stab_cntr0_carry__2_n_6\ : STD_LOGIC;
  signal \stab_cntr0_carry__2_n_7\ : STD_LOGIC;
  signal stab_cntr0_carry_n_0 : STD_LOGIC;
  signal stab_cntr0_carry_n_1 : STD_LOGIC;
  signal stab_cntr0_carry_n_2 : STD_LOGIC;
  signal stab_cntr0_carry_n_3 : STD_LOGIC;
  signal stab_cntr0_carry_n_4 : STD_LOGIC;
  signal stab_cntr0_carry_n_5 : STD_LOGIC;
  signal stab_cntr0_carry_n_6 : STD_LOGIC;
  signal stab_cntr0_carry_n_7 : STD_LOGIC;
  signal \stab_cntr1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr1_carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \stab_cntr1_carry__0_n_2\ : STD_LOGIC;
  signal \stab_cntr1_carry__0_n_3\ : STD_LOGIC;
  signal \stab_cntr1_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \stab_cntr1_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \stab_cntr1_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \stab_cntr1_carry_i_4__0_n_0\ : STD_LOGIC;
  signal stab_cntr1_carry_n_0 : STD_LOGIC;
  signal stab_cntr1_carry_n_1 : STD_LOGIC;
  signal stab_cntr1_carry_n_2 : STD_LOGIC;
  signal stab_cntr1_carry_n_3 : STD_LOGIC;
  signal \stab_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[10]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[11]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[12]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[13]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[14]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[15]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[3]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[4]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[5]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[6]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[8]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr[9]_i_1_n_0\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[0]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[10]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[11]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[12]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[13]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[14]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[15]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[1]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[2]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[3]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[4]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[5]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[6]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[7]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[8]\ : STD_LOGIC;
  signal \stab_cntr_reg_n_0_[9]\ : STD_LOGIC;
  signal tag_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \tag_int0_carry__0_n_0\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_1\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_2\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_3\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_4\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_5\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_6\ : STD_LOGIC;
  signal \tag_int0_carry__0_n_7\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_0\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_1\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_2\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_3\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_4\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_5\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_6\ : STD_LOGIC;
  signal \tag_int0_carry__1_n_7\ : STD_LOGIC;
  signal \tag_int0_carry__2_n_2\ : STD_LOGIC;
  signal \tag_int0_carry__2_n_3\ : STD_LOGIC;
  signal \tag_int0_carry__2_n_5\ : STD_LOGIC;
  signal \tag_int0_carry__2_n_6\ : STD_LOGIC;
  signal \tag_int0_carry__2_n_7\ : STD_LOGIC;
  signal tag_int0_carry_n_0 : STD_LOGIC;
  signal tag_int0_carry_n_1 : STD_LOGIC;
  signal tag_int0_carry_n_2 : STD_LOGIC;
  signal tag_int0_carry_n_3 : STD_LOGIC;
  signal tag_int0_carry_n_4 : STD_LOGIC;
  signal tag_int0_carry_n_5 : STD_LOGIC;
  signal tag_int0_carry_n_6 : STD_LOGIC;
  signal tag_int0_carry_n_7 : STD_LOGIC;
  signal \tag_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[10]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[11]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[12]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[13]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[14]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[15]_i_2_n_0\ : STD_LOGIC;
  signal \tag_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[8]_i_1_n_0\ : STD_LOGIC;
  signal \tag_int[9]_i_1_n_0\ : STD_LOGIC;
  signal \tag_o[15]_i_1_n_0\ : STD_LOGIC;
  signal tag_p_o_i_1_n_0 : STD_LOGIC;
  signal \^tag_p_o_reg_0\ : STD_LOGIC;
  signal \temp_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \temp_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \temp_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \temp_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \temp_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \temp_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \temp_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \temp_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \temp_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \temp_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \temp_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \NLW_stab_cntr0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_stab_cntr0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_stab_cntr1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_stab_cntr1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_stab_cntr1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tag_int0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tag_int0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_temp_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_temp_reg[15]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "WAIT_STABLE_0:001,WAIT_EDGE:010,GOT_EDGE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "WAIT_STABLE_0:001,WAIT_EDGE:010,GOT_EDGE:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "WAIT_STABLE_0:001,WAIT_EDGE:010,GOT_EDGE:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_pd_state[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_pd_state[1]_i_1\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of stab_cntr0_carry : label is 35;
  attribute ADDER_THRESHOLD of \stab_cntr0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \stab_cntr0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \stab_cntr0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of tag_int0_carry : label is 35;
  attribute ADDER_THRESHOLD of \tag_int0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \tag_int0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \tag_int0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \temp_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \temp_reg[15]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \temp_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \temp_reg[8]_i_2\ : label is 35;
begin
  \FSM_onehot_state_reg[0]_0\ <= \^fsm_onehot_state_reg[0]_0\;
  \FSM_onehot_state_reg[1]_0\ <= \^fsm_onehot_state_reg[1]_0\;
  \FSM_onehot_state_reg[2]_0\ <= \^fsm_onehot_state_reg[2]_0\;
  clk_sampled_o_reg <= \^clk_sampled_o_reg\;
  tag_p_o_reg_0 <= \^tag_p_o_reg_0\;
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => sampler_inst_n_4,
      Q => \^fsm_onehot_state_reg[0]_0\,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => sampler_inst_n_3,
      Q => \^fsm_onehot_state_reg[1]_0\,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => sampler_inst_n_2,
      Q => \^fsm_onehot_state_reg[2]_0\,
      R => SR(0)
    );
\FSM_sequential_pd_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1D0"
    )
        port map (
      I0 => \^tag_p_o_reg_0\,
      I1 => pd_state(1),
      I2 => pd_state(0),
      I3 => tag_p_o,
      O => tag_p_o_reg_2
    );
\FSM_sequential_pd_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0CE"
    )
        port map (
      I0 => \^tag_p_o_reg_0\,
      I1 => pd_state(1),
      I2 => pd_state(0),
      I3 => tag_p_o,
      O => tag_p_o_reg_1
    );
\phase_diff_o[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E20"
    )
        port map (
      I0 => \^tag_p_o_reg_0\,
      I1 => pd_state(1),
      I2 => pd_state(0),
      I3 => tag_p_o,
      O => E(0)
    );
sampler_inst: entity work.ddmtd_system_bd_ddmtd_0_0_sampler
     port map (
      CO(0) => \stab_cntr1_carry__0_n_2\,
      E(0) => sampler_inst_n_1,
      \FSM_onehot_state_reg[0]\ => sampler_inst_n_2,
      \FSM_onehot_state_reg[0]_0\ => sampler_inst_n_3,
      \FSM_onehot_state_reg[0]_1\ => sampler_inst_n_4,
      \FSM_onehot_state_reg[0]_2\ => \^fsm_onehot_state_reg[0]_0\,
      SR(0) => SR(0),
      clk_b_i => clk_b_i,
      clk_ddmtd_i => clk_ddmtd_i,
      clk_sampled_o_reg_0 => \^clk_sampled_o_reg\,
      rst_n_ddmtdclk_i => rst_n_ddmtdclk_i,
      \tag_int_reg[0]\ => \^fsm_onehot_state_reg[1]_0\,
      \tag_int_reg[0]_0\ => \^fsm_onehot_state_reg[2]_0\
    );
stab_cntr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => stab_cntr0_carry_n_0,
      CO(2) => stab_cntr0_carry_n_1,
      CO(1) => stab_cntr0_carry_n_2,
      CO(0) => stab_cntr0_carry_n_3,
      CYINIT => \stab_cntr_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => stab_cntr0_carry_n_4,
      O(2) => stab_cntr0_carry_n_5,
      O(1) => stab_cntr0_carry_n_6,
      O(0) => stab_cntr0_carry_n_7,
      S(3) => \stab_cntr_reg_n_0_[4]\,
      S(2) => \stab_cntr_reg_n_0_[3]\,
      S(1) => \stab_cntr_reg_n_0_[2]\,
      S(0) => \stab_cntr_reg_n_0_[1]\
    );
\stab_cntr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => stab_cntr0_carry_n_0,
      CO(3) => \stab_cntr0_carry__0_n_0\,
      CO(2) => \stab_cntr0_carry__0_n_1\,
      CO(1) => \stab_cntr0_carry__0_n_2\,
      CO(0) => \stab_cntr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \stab_cntr0_carry__0_n_4\,
      O(2) => \stab_cntr0_carry__0_n_5\,
      O(1) => \stab_cntr0_carry__0_n_6\,
      O(0) => \stab_cntr0_carry__0_n_7\,
      S(3) => \stab_cntr_reg_n_0_[8]\,
      S(2) => \stab_cntr_reg_n_0_[7]\,
      S(1) => \stab_cntr_reg_n_0_[6]\,
      S(0) => \stab_cntr_reg_n_0_[5]\
    );
\stab_cntr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \stab_cntr0_carry__0_n_0\,
      CO(3) => \stab_cntr0_carry__1_n_0\,
      CO(2) => \stab_cntr0_carry__1_n_1\,
      CO(1) => \stab_cntr0_carry__1_n_2\,
      CO(0) => \stab_cntr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \stab_cntr0_carry__1_n_4\,
      O(2) => \stab_cntr0_carry__1_n_5\,
      O(1) => \stab_cntr0_carry__1_n_6\,
      O(0) => \stab_cntr0_carry__1_n_7\,
      S(3) => \stab_cntr_reg_n_0_[12]\,
      S(2) => \stab_cntr_reg_n_0_[11]\,
      S(1) => \stab_cntr_reg_n_0_[10]\,
      S(0) => \stab_cntr_reg_n_0_[9]\
    );
\stab_cntr0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \stab_cntr0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_stab_cntr0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \stab_cntr0_carry__2_n_2\,
      CO(0) => \stab_cntr0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_stab_cntr0_carry__2_O_UNCONNECTED\(3),
      O(2) => \stab_cntr0_carry__2_n_5\,
      O(1) => \stab_cntr0_carry__2_n_6\,
      O(0) => \stab_cntr0_carry__2_n_7\,
      S(3) => '0',
      S(2) => \stab_cntr_reg_n_0_[15]\,
      S(1) => \stab_cntr_reg_n_0_[14]\,
      S(0) => \stab_cntr_reg_n_0_[13]\
    );
stab_cntr1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => stab_cntr1_carry_n_0,
      CO(2) => stab_cntr1_carry_n_1,
      CO(1) => stab_cntr1_carry_n_2,
      CO(0) => stab_cntr1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_stab_cntr1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \stab_cntr1_carry_i_1__0_n_0\,
      S(2) => \stab_cntr1_carry_i_2__0_n_0\,
      S(1) => \stab_cntr1_carry_i_3__0_n_0\,
      S(0) => \stab_cntr1_carry_i_4__0_n_0\
    );
\stab_cntr1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => stab_cntr1_carry_n_0,
      CO(3 downto 2) => \NLW_stab_cntr1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \stab_cntr1_carry__0_n_2\,
      CO(0) => \stab_cntr1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_stab_cntr1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \stab_cntr1_carry__0_i_1_n_0\,
      S(0) => \stab_cntr1_carry__0_i_2__0_n_0\
    );
\stab_cntr1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => deglitch_threshold_i(15),
      I1 => \stab_cntr_reg_n_0_[15]\,
      O => \stab_cntr1_carry__0_i_1_n_0\
    );
\stab_cntr1_carry__0_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \stab_cntr_reg_n_0_[12]\,
      I1 => deglitch_threshold_i(12),
      I2 => deglitch_threshold_i(14),
      I3 => \stab_cntr_reg_n_0_[14]\,
      I4 => deglitch_threshold_i(13),
      I5 => \stab_cntr_reg_n_0_[13]\,
      O => \stab_cntr1_carry__0_i_2__0_n_0\
    );
\stab_cntr1_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \stab_cntr_reg_n_0_[9]\,
      I1 => deglitch_threshold_i(9),
      I2 => deglitch_threshold_i(11),
      I3 => \stab_cntr_reg_n_0_[11]\,
      I4 => deglitch_threshold_i(10),
      I5 => \stab_cntr_reg_n_0_[10]\,
      O => \stab_cntr1_carry_i_1__0_n_0\
    );
\stab_cntr1_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \stab_cntr_reg_n_0_[6]\,
      I1 => deglitch_threshold_i(6),
      I2 => deglitch_threshold_i(8),
      I3 => \stab_cntr_reg_n_0_[8]\,
      I4 => deglitch_threshold_i(7),
      I5 => \stab_cntr_reg_n_0_[7]\,
      O => \stab_cntr1_carry_i_2__0_n_0\
    );
\stab_cntr1_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \stab_cntr_reg_n_0_[3]\,
      I1 => deglitch_threshold_i(3),
      I2 => deglitch_threshold_i(5),
      I3 => \stab_cntr_reg_n_0_[5]\,
      I4 => deglitch_threshold_i(4),
      I5 => \stab_cntr_reg_n_0_[4]\,
      O => \stab_cntr1_carry_i_3__0_n_0\
    );
\stab_cntr1_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \stab_cntr_reg_n_0_[0]\,
      I1 => deglitch_threshold_i(0),
      I2 => deglitch_threshold_i(2),
      I3 => \stab_cntr_reg_n_0_[2]\,
      I4 => deglitch_threshold_i(1),
      I5 => \stab_cntr_reg_n_0_[1]\,
      O => \stab_cntr1_carry_i_4__0_n_0\
    );
\stab_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02320202"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \stab_cntr_reg_n_0_[0]\,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[0]_i_1_n_0\
    );
\stab_cntr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \stab_cntr0_carry__1_n_6\,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[10]_i_1_n_0\
    );
\stab_cntr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \stab_cntr0_carry__1_n_5\,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[11]_i_1_n_0\
    );
\stab_cntr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \stab_cntr0_carry__1_n_4\,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[12]_i_1_n_0\
    );
\stab_cntr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \stab_cntr0_carry__2_n_7\,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[13]_i_1_n_0\
    );
\stab_cntr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \stab_cntr0_carry__2_n_6\,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[14]_i_1_n_0\
    );
\stab_cntr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \stab_cntr0_carry__2_n_5\,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[15]_i_1_n_0\
    );
\stab_cntr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => stab_cntr0_carry_n_7,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[1]_i_1_n_0\
    );
\stab_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => stab_cntr0_carry_n_6,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[2]_i_1_n_0\
    );
\stab_cntr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => stab_cntr0_carry_n_5,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[3]_i_1_n_0\
    );
\stab_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => stab_cntr0_carry_n_4,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[4]_i_1_n_0\
    );
\stab_cntr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \stab_cntr0_carry__0_n_7\,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[5]_i_1_n_0\
    );
\stab_cntr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \stab_cntr0_carry__0_n_6\,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[6]_i_1_n_0\
    );
\stab_cntr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \stab_cntr0_carry__0_n_5\,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[7]_i_1_n_0\
    );
\stab_cntr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \stab_cntr0_carry__0_n_4\,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[8]_i_1_n_0\
    );
\stab_cntr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08C80808"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \stab_cntr0_carry__1_n_7\,
      I2 => \^clk_sampled_o_reg\,
      I3 => \stab_cntr1_carry__0_n_2\,
      I4 => \^fsm_onehot_state_reg[2]_0\,
      O => \stab_cntr[9]_i_1_n_0\
    );
\stab_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[0]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[0]\,
      R => SR(0)
    );
\stab_cntr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[10]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[10]\,
      R => SR(0)
    );
\stab_cntr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[11]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[11]\,
      R => SR(0)
    );
\stab_cntr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[12]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[12]\,
      R => SR(0)
    );
\stab_cntr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[13]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[13]\,
      R => SR(0)
    );
\stab_cntr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[14]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[14]\,
      R => SR(0)
    );
\stab_cntr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[15]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[15]\,
      R => SR(0)
    );
\stab_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[1]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[1]\,
      R => SR(0)
    );
\stab_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[2]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[2]\,
      R => SR(0)
    );
\stab_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[3]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[3]\,
      R => SR(0)
    );
\stab_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[4]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[4]\,
      R => SR(0)
    );
\stab_cntr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[5]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[5]\,
      R => SR(0)
    );
\stab_cntr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[6]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[6]\,
      R => SR(0)
    );
\stab_cntr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[7]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[7]\,
      R => SR(0)
    );
\stab_cntr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[8]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[8]\,
      R => SR(0)
    );
\stab_cntr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \stab_cntr_reg[15]_0\(0),
      D => \stab_cntr[9]_i_1_n_0\,
      Q => \stab_cntr_reg_n_0_[9]\,
      R => SR(0)
    );
tag_int0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tag_int0_carry_n_0,
      CO(2) => tag_int0_carry_n_1,
      CO(1) => tag_int0_carry_n_2,
      CO(0) => tag_int0_carry_n_3,
      CYINIT => tag_int(0),
      DI(3 downto 0) => B"0000",
      O(3) => tag_int0_carry_n_4,
      O(2) => tag_int0_carry_n_5,
      O(1) => tag_int0_carry_n_6,
      O(0) => tag_int0_carry_n_7,
      S(3 downto 0) => tag_int(4 downto 1)
    );
\tag_int0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tag_int0_carry_n_0,
      CO(3) => \tag_int0_carry__0_n_0\,
      CO(2) => \tag_int0_carry__0_n_1\,
      CO(1) => \tag_int0_carry__0_n_2\,
      CO(0) => \tag_int0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tag_int0_carry__0_n_4\,
      O(2) => \tag_int0_carry__0_n_5\,
      O(1) => \tag_int0_carry__0_n_6\,
      O(0) => \tag_int0_carry__0_n_7\,
      S(3 downto 0) => tag_int(8 downto 5)
    );
\tag_int0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tag_int0_carry__0_n_0\,
      CO(3) => \tag_int0_carry__1_n_0\,
      CO(2) => \tag_int0_carry__1_n_1\,
      CO(1) => \tag_int0_carry__1_n_2\,
      CO(0) => \tag_int0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \tag_int0_carry__1_n_4\,
      O(2) => \tag_int0_carry__1_n_5\,
      O(1) => \tag_int0_carry__1_n_6\,
      O(0) => \tag_int0_carry__1_n_7\,
      S(3 downto 0) => tag_int(12 downto 9)
    );
\tag_int0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tag_int0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_tag_int0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \tag_int0_carry__2_n_2\,
      CO(0) => \tag_int0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_tag_int0_carry__2_O_UNCONNECTED\(3),
      O(2) => \tag_int0_carry__2_n_5\,
      O(1) => \tag_int0_carry__2_n_6\,
      O(0) => \tag_int0_carry__2_n_7\,
      S(3) => '0',
      S(2 downto 0) => tag_int(15 downto 13)
    );
\tag_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => tag_int(0),
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(0),
      O => \tag_int[0]_i_1_n_0\
    );
\tag_int[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__1_n_6\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(10),
      O => \tag_int[10]_i_1_n_0\
    );
\tag_int[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__1_n_5\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(11),
      O => \tag_int[11]_i_1_n_0\
    );
\tag_int[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__1_n_4\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(12),
      O => \tag_int[12]_i_1_n_0\
    );
\tag_int[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__2_n_7\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(13),
      O => \tag_int[13]_i_1_n_0\
    );
\tag_int[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__2_n_6\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(14),
      O => \tag_int[14]_i_1_n_0\
    );
\tag_int[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__2_n_5\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(15),
      O => \tag_int[15]_i_2_n_0\
    );
\tag_int[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => tag_int0_carry_n_7,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(1),
      O => \tag_int[1]_i_1_n_0\
    );
\tag_int[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => tag_int0_carry_n_6,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(2),
      O => \tag_int[2]_i_1_n_0\
    );
\tag_int[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => tag_int0_carry_n_5,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(3),
      O => \tag_int[3]_i_1_n_0\
    );
\tag_int[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => tag_int0_carry_n_4,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(4),
      O => \tag_int[4]_i_1_n_0\
    );
\tag_int[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__0_n_7\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(5),
      O => \tag_int[5]_i_1_n_0\
    );
\tag_int[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__0_n_6\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(6),
      O => \tag_int[6]_i_1_n_0\
    );
\tag_int[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__0_n_5\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(7),
      O => \tag_int[7]_i_1_n_0\
    );
\tag_int[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__0_n_4\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(8),
      O => \tag_int[8]_i_1_n_0\
    );
\tag_int[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \tag_int0_carry__1_n_7\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => free_cntr_reg(9),
      O => \tag_int[9]_i_1_n_0\
    );
\tag_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[0]_i_1_n_0\,
      Q => tag_int(0),
      R => SR(0)
    );
\tag_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[10]_i_1_n_0\,
      Q => tag_int(10),
      R => SR(0)
    );
\tag_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[11]_i_1_n_0\,
      Q => tag_int(11),
      R => SR(0)
    );
\tag_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[12]_i_1_n_0\,
      Q => tag_int(12),
      R => SR(0)
    );
\tag_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[13]_i_1_n_0\,
      Q => tag_int(13),
      R => SR(0)
    );
\tag_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[14]_i_1_n_0\,
      Q => tag_int(14),
      R => SR(0)
    );
\tag_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[15]_i_2_n_0\,
      Q => tag_int(15),
      R => SR(0)
    );
\tag_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[1]_i_1_n_0\,
      Q => tag_int(1),
      R => SR(0)
    );
\tag_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[2]_i_1_n_0\,
      Q => tag_int(2),
      R => SR(0)
    );
\tag_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[3]_i_1_n_0\,
      Q => tag_int(3),
      R => SR(0)
    );
\tag_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[4]_i_1_n_0\,
      Q => tag_int(4),
      R => SR(0)
    );
\tag_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[5]_i_1_n_0\,
      Q => tag_int(5),
      R => SR(0)
    );
\tag_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[6]_i_1_n_0\,
      Q => tag_int(6),
      R => SR(0)
    );
\tag_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[7]_i_1_n_0\,
      Q => tag_int(7),
      R => SR(0)
    );
\tag_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[8]_i_1_n_0\,
      Q => tag_int(8),
      R => SR(0)
    );
\tag_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => sampler_inst_n_1,
      D => \tag_int[9]_i_1_n_0\,
      Q => tag_int(9),
      R => SR(0)
    );
\tag_o[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[2]_0\,
      I1 => \stab_cntr1_carry__0_n_2\,
      O => \tag_o[15]_i_1_n_0\
    );
\tag_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(0),
      Q => Q(0),
      R => SR(0)
    );
\tag_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(10),
      Q => Q(10),
      R => SR(0)
    );
\tag_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(11),
      Q => Q(11),
      R => SR(0)
    );
\tag_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(12),
      Q => Q(12),
      R => SR(0)
    );
\tag_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(13),
      Q => Q(13),
      R => SR(0)
    );
\tag_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(14),
      Q => Q(14),
      R => SR(0)
    );
\tag_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(15),
      Q => Q(15),
      R => SR(0)
    );
\tag_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(1),
      Q => Q(1),
      R => SR(0)
    );
\tag_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(2),
      Q => Q(2),
      R => SR(0)
    );
\tag_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(3),
      Q => Q(3),
      R => SR(0)
    );
\tag_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(4),
      Q => Q(4),
      R => SR(0)
    );
\tag_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(5),
      Q => Q(5),
      R => SR(0)
    );
\tag_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(6),
      Q => Q(6),
      R => SR(0)
    );
\tag_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(7),
      Q => Q(7),
      R => SR(0)
    );
\tag_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(8),
      Q => Q(8),
      R => SR(0)
    );
\tag_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => \tag_o[15]_i_1_n_0\,
      D => tag_int(9),
      Q => Q(9),
      R => SR(0)
    );
tag_p_o_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0D5C0C0"
    )
        port map (
      I0 => \^fsm_onehot_state_reg[0]_0\,
      I1 => \^fsm_onehot_state_reg[2]_0\,
      I2 => \stab_cntr1_carry__0_n_2\,
      I3 => \^fsm_onehot_state_reg[1]_0\,
      I4 => \^tag_p_o_reg_0\,
      O => tag_p_o_i_1_n_0
    );
tag_p_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => tag_p_o_i_1_n_0,
      Q => \^tag_p_o_reg_0\,
      R => SR(0)
    );
\temp_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[8]_i_2_n_0\,
      CO(3) => \temp_reg[12]_i_2_n_0\,
      CO(2) => \temp_reg[12]_i_2_n_1\,
      CO(1) => \temp_reg[12]_i_2_n_2\,
      CO(0) => \temp_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \temp0__0\(11 downto 8),
      S(3 downto 0) => in7(12 downto 9)
    );
\temp_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_temp_reg[15]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \temp_reg[15]_i_2_n_2\,
      CO(0) => \temp_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_temp_reg[15]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => \temp0__0\(14 downto 12),
      S(3) => '0',
      S(2 downto 0) => in7(15 downto 13)
    );
\temp_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temp_reg[4]_i_2_n_0\,
      CO(2) => \temp_reg[4]_i_2_n_1\,
      CO(1) => \temp_reg[4]_i_2_n_2\,
      CO(0) => \temp_reg[4]_i_2_n_3\,
      CYINIT => in7(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \temp0__0\(3 downto 0),
      S(3 downto 0) => in7(4 downto 1)
    );
\temp_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[4]_i_2_n_0\,
      CO(3) => \temp_reg[8]_i_2_n_0\,
      CO(2) => \temp_reg[8]_i_2_n_1\,
      CO(1) => \temp_reg[8]_i_2_n_2\,
      CO(0) => \temp_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \temp0__0\(7 downto 4),
      S(3 downto 0) => in7(8 downto 5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ddmtd_system_bd_ddmtd_0_0_ddmtd is
  port (
    phase_diff_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_diff_p_o : out STD_LOGIC;
    deglitch_threshold_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_ddmtd_i : in STD_LOGIC;
    clk_a_i : in STD_LOGIC;
    clk_b_i : in STD_LOGIC;
    rst_n_ddmtdclk_i : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ddmtd_system_bd_ddmtd_0_0_ddmtd : entity is "ddmtd";
end ddmtd_system_bd_ddmtd_0_0_ddmtd;

architecture STRUCTURE of ddmtd_system_bd_ddmtd_0_0_ddmtd is
  signal \__0\ : STD_LOGIC;
  signal \__0_0\ : STD_LOGIC;
  signal clk_sampled_o : STD_LOGIC;
  signal deglitcher_inst_a_n_0 : STD_LOGIC;
  signal deglitcher_inst_a_n_19 : STD_LOGIC;
  signal deglitcher_inst_a_n_20 : STD_LOGIC;
  signal deglitcher_inst_a_n_21 : STD_LOGIC;
  signal deglitcher_inst_a_n_22 : STD_LOGIC;
  signal deglitcher_inst_a_n_23 : STD_LOGIC;
  signal deglitcher_inst_a_n_24 : STD_LOGIC;
  signal deglitcher_inst_a_n_25 : STD_LOGIC;
  signal deglitcher_inst_a_n_26 : STD_LOGIC;
  signal deglitcher_inst_a_n_27 : STD_LOGIC;
  signal deglitcher_inst_a_n_28 : STD_LOGIC;
  signal deglitcher_inst_a_n_29 : STD_LOGIC;
  signal deglitcher_inst_a_n_30 : STD_LOGIC;
  signal deglitcher_inst_a_n_31 : STD_LOGIC;
  signal deglitcher_inst_a_n_32 : STD_LOGIC;
  signal deglitcher_inst_a_n_33 : STD_LOGIC;
  signal deglitcher_inst_a_n_34 : STD_LOGIC;
  signal deglitcher_inst_a_n_35 : STD_LOGIC;
  signal deglitcher_inst_a_n_36 : STD_LOGIC;
  signal deglitcher_inst_a_n_37 : STD_LOGIC;
  signal deglitcher_inst_a_n_38 : STD_LOGIC;
  signal deglitcher_inst_a_n_39 : STD_LOGIC;
  signal deglitcher_inst_a_n_40 : STD_LOGIC;
  signal deglitcher_inst_a_n_41 : STD_LOGIC;
  signal deglitcher_inst_a_n_42 : STD_LOGIC;
  signal deglitcher_inst_a_n_43 : STD_LOGIC;
  signal deglitcher_inst_a_n_44 : STD_LOGIC;
  signal deglitcher_inst_a_n_45 : STD_LOGIC;
  signal deglitcher_inst_a_n_46 : STD_LOGIC;
  signal deglitcher_inst_a_n_47 : STD_LOGIC;
  signal deglitcher_inst_a_n_48 : STD_LOGIC;
  signal deglitcher_inst_a_n_49 : STD_LOGIC;
  signal deglitcher_inst_a_n_50 : STD_LOGIC;
  signal deglitcher_inst_a_n_51 : STD_LOGIC;
  signal deglitcher_inst_a_n_52 : STD_LOGIC;
  signal deglitcher_inst_a_n_53 : STD_LOGIC;
  signal deglitcher_inst_b_n_0 : STD_LOGIC;
  signal deglitcher_inst_b_n_1 : STD_LOGIC;
  signal deglitcher_inst_b_n_19 : STD_LOGIC;
  signal deglitcher_inst_b_n_2 : STD_LOGIC;
  signal deglitcher_inst_b_n_20 : STD_LOGIC;
  signal deglitcher_inst_b_n_21 : STD_LOGIC;
  signal deglitcher_inst_b_n_22 : STD_LOGIC;
  signal deglitcher_inst_b_n_3 : STD_LOGIC;
  signal free_cntr_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_2_in : STD_LOGIC;
  signal pd_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \phase_diff_o0_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \phase_diff_o0_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \phase_diff_o0_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \phase_diff_o0_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \phase_diff_o0_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \phase_diff_o0_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \phase_diff_o0_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \phase_diff_o0_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \phase_diff_o0_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \phase_diff_o0_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \phase_diff_o0_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \phase_diff_o0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \phase_diff_o0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \phase_diff_o0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \phase_diff_o0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal phase_diff_o1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal phase_diff_o1_n_0 : STD_LOGIC;
  signal tag_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal tag_p_o : STD_LOGIC;
  signal temp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \temp0__0\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \temp[10]_i_1_n_0\ : STD_LOGIC;
  signal \temp[11]_i_1_n_0\ : STD_LOGIC;
  signal \temp[12]_i_1_n_0\ : STD_LOGIC;
  signal \temp[13]_i_1_n_0\ : STD_LOGIC;
  signal \temp[14]_i_1_n_0\ : STD_LOGIC;
  signal \temp[15]_i_1_n_0\ : STD_LOGIC;
  signal \temp[1]_i_1_n_0\ : STD_LOGIC;
  signal \temp[2]_i_1_n_0\ : STD_LOGIC;
  signal \temp[3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[4]_i_1_n_0\ : STD_LOGIC;
  signal \temp[5]_i_1_n_0\ : STD_LOGIC;
  signal \temp[6]_i_1_n_0\ : STD_LOGIC;
  signal \temp[7]_i_1_n_0\ : STD_LOGIC;
  signal \temp[8]_i_1_n_0\ : STD_LOGIC;
  signal \temp[9]_i_1_n_0\ : STD_LOGIC;
  signal temp_0 : STD_LOGIC;
  signal \NLW_phase_diff_o0_inferred__1/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_pd_state_reg[0]\ : label is "PD_WAIT_TAG:00,PD_WAIT_A:10,PD_WAIT_B:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_pd_state_reg[1]\ : label is "PD_WAIT_TAG:00,PD_WAIT_A:10,PD_WAIT_B:01";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \phase_diff_o0_inferred__1/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \phase_diff_o0_inferred__1/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \phase_diff_o0_inferred__1/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \phase_diff_o0_inferred__1/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \phase_diff_o0_inferred__1/i__carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \phase_diff_o0_inferred__1/i__carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \phase_diff_o0_inferred__1/i__carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \phase_diff_o0_inferred__1/i__carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \temp[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \temp[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \temp[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \temp[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \temp[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \temp[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \temp[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \temp[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \temp[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \temp[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \temp[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \temp[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \temp[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \temp[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \temp[9]_i_1\ : label is "soft_lutpair9";
begin
\FSM_sequential_pd_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => deglitcher_inst_b_n_3,
      Q => pd_state(0),
      R => deglitcher_inst_a_n_0
    );
\FSM_sequential_pd_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => deglitcher_inst_b_n_2,
      Q => pd_state(1),
      R => deglitcher_inst_a_n_0
    );
deglitcher_inst_a: entity work.ddmtd_system_bd_ddmtd_0_0_deglitcher
     port map (
      E(0) => \__0\,
      \FSM_onehot_state_reg[0]_0\ => deglitcher_inst_a_n_53,
      \FSM_onehot_state_reg[1]_0\ => deglitcher_inst_a_n_52,
      \FSM_onehot_state_reg[2]_0\ => deglitcher_inst_a_n_51,
      Q(15) => deglitcher_inst_a_n_23,
      Q(14) => deglitcher_inst_a_n_24,
      Q(13) => deglitcher_inst_a_n_25,
      Q(12) => deglitcher_inst_a_n_26,
      Q(11) => deglitcher_inst_a_n_27,
      Q(10) => deglitcher_inst_a_n_28,
      Q(9) => deglitcher_inst_a_n_29,
      Q(8) => deglitcher_inst_a_n_30,
      Q(7) => deglitcher_inst_a_n_31,
      Q(6) => deglitcher_inst_a_n_32,
      Q(5) => deglitcher_inst_a_n_33,
      Q(4) => deglitcher_inst_a_n_34,
      Q(3) => deglitcher_inst_a_n_35,
      Q(2) => deglitcher_inst_a_n_36,
      Q(1) => deglitcher_inst_a_n_37,
      Q(0) => deglitcher_inst_a_n_38,
      S(3) => deglitcher_inst_a_n_19,
      S(2) => deglitcher_inst_a_n_20,
      S(1) => deglitcher_inst_a_n_21,
      S(0) => deglitcher_inst_a_n_22,
      SR(0) => deglitcher_inst_a_n_0,
      clk_a_i => clk_a_i,
      clk_ddmtd_i => clk_ddmtd_i,
      clk_sampled_o => clk_sampled_o,
      deglitch_threshold_i(15 downto 0) => deglitch_threshold_i(15 downto 0),
      free_cntr_reg(15 downto 0) => free_cntr_reg(15 downto 0),
      pd_state(1 downto 0) => pd_state(1 downto 0),
      \phase_diff_o_reg[15]\(15 downto 0) => tag_o(15 downto 0),
      \phase_diff_o_reg[15]_0\(14 downto 0) => temp(15 downto 1),
      rst_n_ddmtdclk_i => rst_n_ddmtdclk_i,
      \tag_o_reg[11]_0\(3) => deglitcher_inst_a_n_43,
      \tag_o_reg[11]_0\(2) => deglitcher_inst_a_n_44,
      \tag_o_reg[11]_0\(1) => deglitcher_inst_a_n_45,
      \tag_o_reg[11]_0\(0) => deglitcher_inst_a_n_46,
      \tag_o_reg[15]_0\(3) => deglitcher_inst_a_n_47,
      \tag_o_reg[15]_0\(2) => deglitcher_inst_a_n_48,
      \tag_o_reg[15]_0\(1) => deglitcher_inst_a_n_49,
      \tag_o_reg[15]_0\(0) => deglitcher_inst_a_n_50,
      \tag_o_reg[7]_0\(3) => deglitcher_inst_a_n_39,
      \tag_o_reg[7]_0\(2) => deglitcher_inst_a_n_40,
      \tag_o_reg[7]_0\(1) => deglitcher_inst_a_n_41,
      \tag_o_reg[7]_0\(0) => deglitcher_inst_a_n_42,
      tag_p_o => tag_p_o
    );
\deglitcher_inst_a/\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => deglitcher_inst_a_n_53,
      I1 => deglitcher_inst_a_n_52,
      I2 => clk_sampled_o,
      I3 => deglitcher_inst_a_n_51,
      O => \__0\
    );
deglitcher_inst_b: entity work.ddmtd_system_bd_ddmtd_0_0_deglitcher_0
     port map (
      E(0) => deglitcher_inst_b_n_19,
      \FSM_onehot_state_reg[0]_0\ => deglitcher_inst_b_n_22,
      \FSM_onehot_state_reg[1]_0\ => deglitcher_inst_b_n_21,
      \FSM_onehot_state_reg[2]_0\ => deglitcher_inst_b_n_20,
      Q(15 downto 0) => tag_o(15 downto 0),
      SR(0) => deglitcher_inst_a_n_0,
      clk_b_i => clk_b_i,
      clk_ddmtd_i => clk_ddmtd_i,
      clk_sampled_o_reg => deglitcher_inst_b_n_0,
      deglitch_threshold_i(15 downto 0) => deglitch_threshold_i(15 downto 0),
      free_cntr_reg(15 downto 0) => free_cntr_reg(15 downto 0),
      in7(15 downto 0) => in7(15 downto 0),
      pd_state(1 downto 0) => pd_state(1 downto 0),
      rst_n_ddmtdclk_i => rst_n_ddmtdclk_i,
      \stab_cntr_reg[15]_0\(0) => \__0_0\,
      tag_p_o => tag_p_o,
      tag_p_o_reg_0 => deglitcher_inst_b_n_1,
      tag_p_o_reg_1 => deglitcher_inst_b_n_2,
      tag_p_o_reg_2 => deglitcher_inst_b_n_3,
      \temp0__0\(14 downto 0) => \temp0__0\(15 downto 1)
    );
\deglitcher_inst_b/\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => deglitcher_inst_b_n_22,
      I1 => deglitcher_inst_b_n_21,
      I2 => deglitcher_inst_b_n_0,
      I3 => deglitcher_inst_b_n_20,
      O => \__0_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3704"
    )
        port map (
      I0 => pd_state(1),
      I1 => pd_state(0),
      I2 => tag_o(7),
      I3 => deglitcher_inst_a_n_31,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3704"
    )
        port map (
      I0 => pd_state(1),
      I1 => pd_state(0),
      I2 => tag_o(6),
      I3 => deglitcher_inst_a_n_32,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3704"
    )
        port map (
      I0 => pd_state(1),
      I1 => pd_state(0),
      I2 => tag_o(5),
      I3 => deglitcher_inst_a_n_33,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3704"
    )
        port map (
      I0 => pd_state(1),
      I1 => pd_state(0),
      I2 => tag_o(4),
      I3 => deglitcher_inst_a_n_34,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3704"
    )
        port map (
      I0 => pd_state(1),
      I1 => pd_state(0),
      I2 => tag_o(11),
      I3 => deglitcher_inst_a_n_27,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3704"
    )
        port map (
      I0 => pd_state(1),
      I1 => pd_state(0),
      I2 => tag_o(10),
      I3 => deglitcher_inst_a_n_28,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3704"
    )
        port map (
      I0 => pd_state(1),
      I1 => pd_state(0),
      I2 => tag_o(9),
      I3 => deglitcher_inst_a_n_29,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3704"
    )
        port map (
      I0 => pd_state(1),
      I1 => pd_state(0),
      I2 => tag_o(8),
      I3 => deglitcher_inst_a_n_30,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3704"
    )
        port map (
      I0 => pd_state(1),
      I1 => pd_state(0),
      I2 => tag_o(14),
      I3 => deglitcher_inst_a_n_24,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3704"
    )
        port map (
      I0 => pd_state(1),
      I1 => pd_state(0),
      I2 => tag_o(13),
      I3 => deglitcher_inst_a_n_25,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3704"
    )
        port map (
      I0 => pd_state(1),
      I1 => pd_state(0),
      I2 => tag_o(12),
      I3 => deglitcher_inst_a_n_26,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3704"
    )
        port map (
      I0 => pd_state(1),
      I1 => pd_state(0),
      I2 => tag_o(3),
      I3 => deglitcher_inst_a_n_35,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3704"
    )
        port map (
      I0 => pd_state(1),
      I1 => pd_state(0),
      I2 => tag_o(2),
      I3 => deglitcher_inst_a_n_36,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3704"
    )
        port map (
      I0 => pd_state(1),
      I1 => pd_state(0),
      I2 => tag_o(1),
      I3 => deglitcher_inst_a_n_37,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pd_state(1),
      O => p_2_in
    );
\phase_diff_o0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \phase_diff_o0_inferred__1/i__carry_n_0\,
      CO(2) => \phase_diff_o0_inferred__1/i__carry_n_1\,
      CO(1) => \phase_diff_o0_inferred__1/i__carry_n_2\,
      CO(0) => \phase_diff_o0_inferred__1/i__carry_n_3\,
      CYINIT => phase_diff_o1_n_0,
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => p_2_in,
      O(3 downto 0) => phase_diff_o1_in(3 downto 0),
      S(3) => deglitcher_inst_a_n_19,
      S(2) => deglitcher_inst_a_n_20,
      S(1) => deglitcher_inst_a_n_21,
      S(0) => deglitcher_inst_a_n_22
    );
\phase_diff_o0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_diff_o0_inferred__1/i__carry_n_0\,
      CO(3) => \phase_diff_o0_inferred__1/i__carry__0_n_0\,
      CO(2) => \phase_diff_o0_inferred__1/i__carry__0_n_1\,
      CO(1) => \phase_diff_o0_inferred__1/i__carry__0_n_2\,
      CO(0) => \phase_diff_o0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => phase_diff_o1_in(7 downto 4),
      S(3) => deglitcher_inst_a_n_39,
      S(2) => deglitcher_inst_a_n_40,
      S(1) => deglitcher_inst_a_n_41,
      S(0) => deglitcher_inst_a_n_42
    );
\phase_diff_o0_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_diff_o0_inferred__1/i__carry__0_n_0\,
      CO(3) => \phase_diff_o0_inferred__1/i__carry__1_n_0\,
      CO(2) => \phase_diff_o0_inferred__1/i__carry__1_n_1\,
      CO(1) => \phase_diff_o0_inferred__1/i__carry__1_n_2\,
      CO(0) => \phase_diff_o0_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => phase_diff_o1_in(11 downto 8),
      S(3) => deglitcher_inst_a_n_43,
      S(2) => deglitcher_inst_a_n_44,
      S(1) => deglitcher_inst_a_n_45,
      S(0) => deglitcher_inst_a_n_46
    );
\phase_diff_o0_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \phase_diff_o0_inferred__1/i__carry__1_n_0\,
      CO(3) => \NLW_phase_diff_o0_inferred__1/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \phase_diff_o0_inferred__1/i__carry__2_n_1\,
      CO(1) => \phase_diff_o0_inferred__1/i__carry__2_n_2\,
      CO(0) => \phase_diff_o0_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__2_i_1_n_0\,
      DI(1) => \i__carry__2_i_2_n_0\,
      DI(0) => \i__carry__2_i_3_n_0\,
      O(3 downto 0) => phase_diff_o1_in(15 downto 12),
      S(3) => deglitcher_inst_a_n_47,
      S(2) => deglitcher_inst_a_n_48,
      S(1) => deglitcher_inst_a_n_49,
      S(0) => deglitcher_inst_a_n_50
    );
phase_diff_o1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CC5"
    )
        port map (
      I0 => tag_o(0),
      I1 => temp(0),
      I2 => pd_state(1),
      I3 => pd_state(0),
      O => phase_diff_o1_n_0
    );
\phase_diff_o_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(0),
      Q => phase_diff_o(0),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(10),
      Q => phase_diff_o(10),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(11),
      Q => phase_diff_o(11),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(12),
      Q => phase_diff_o(12),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(13),
      Q => phase_diff_o(13),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(14),
      Q => phase_diff_o(14),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(15),
      Q => phase_diff_o(15),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(1),
      Q => phase_diff_o(1),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(2),
      Q => phase_diff_o(2),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(3),
      Q => phase_diff_o(3),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(4),
      Q => phase_diff_o(4),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(5),
      Q => phase_diff_o(5),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(6),
      Q => phase_diff_o(6),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(7),
      Q => phase_diff_o(7),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(8),
      Q => phase_diff_o(8),
      R => deglitcher_inst_a_n_0
    );
\phase_diff_o_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => deglitcher_inst_b_n_19,
      D => phase_diff_o1_in(9),
      Q => phase_diff_o(9),
      R => deglitcher_inst_a_n_0
    );
phase_diff_p_o_reg: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => '1',
      D => deglitcher_inst_b_n_19,
      Q => phase_diff_p_o,
      R => deglitcher_inst_a_n_0
    );
temp0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0014"
    )
        port map (
      I0 => pd_state(0),
      I1 => deglitcher_inst_b_n_1,
      I2 => tag_p_o,
      I3 => pd_state(1),
      O => temp_0
    );
\temp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_38,
      I1 => tag_o(0),
      I2 => tag_p_o,
      O => \temp[0]_i_1_n_0\
    );
\temp[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_28,
      I1 => \temp0__0\(10),
      I2 => tag_p_o,
      O => \temp[10]_i_1_n_0\
    );
\temp[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_27,
      I1 => \temp0__0\(11),
      I2 => tag_p_o,
      O => \temp[11]_i_1_n_0\
    );
\temp[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_26,
      I1 => \temp0__0\(12),
      I2 => tag_p_o,
      O => \temp[12]_i_1_n_0\
    );
\temp[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(12),
      O => in7(12)
    );
\temp[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(11),
      O => in7(11)
    );
\temp[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(10),
      O => in7(10)
    );
\temp[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(9),
      O => in7(9)
    );
\temp[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_25,
      I1 => \temp0__0\(13),
      I2 => tag_p_o,
      O => \temp[13]_i_1_n_0\
    );
\temp[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_24,
      I1 => \temp0__0\(14),
      I2 => tag_p_o,
      O => \temp[14]_i_1_n_0\
    );
\temp[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_23,
      I1 => \temp0__0\(15),
      I2 => tag_p_o,
      O => \temp[15]_i_1_n_0\
    );
\temp[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(15),
      O => in7(15)
    );
\temp[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(14),
      O => in7(14)
    );
\temp[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(13),
      O => in7(13)
    );
\temp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_37,
      I1 => \temp0__0\(1),
      I2 => tag_p_o,
      O => \temp[1]_i_1_n_0\
    );
\temp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_36,
      I1 => \temp0__0\(2),
      I2 => tag_p_o,
      O => \temp[2]_i_1_n_0\
    );
\temp[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_35,
      I1 => \temp0__0\(3),
      I2 => tag_p_o,
      O => \temp[3]_i_1_n_0\
    );
\temp[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_34,
      I1 => \temp0__0\(4),
      I2 => tag_p_o,
      O => \temp[4]_i_1_n_0\
    );
\temp[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(0),
      O => in7(0)
    );
\temp[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(4),
      O => in7(4)
    );
\temp[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(3),
      O => in7(3)
    );
\temp[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(2),
      O => in7(2)
    );
\temp[4]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(1),
      O => in7(1)
    );
\temp[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_33,
      I1 => \temp0__0\(5),
      I2 => tag_p_o,
      O => \temp[5]_i_1_n_0\
    );
\temp[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_32,
      I1 => \temp0__0\(6),
      I2 => tag_p_o,
      O => \temp[6]_i_1_n_0\
    );
\temp[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_31,
      I1 => \temp0__0\(7),
      I2 => tag_p_o,
      O => \temp[7]_i_1_n_0\
    );
\temp[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_30,
      I1 => \temp0__0\(8),
      I2 => tag_p_o,
      O => \temp[8]_i_1_n_0\
    );
\temp[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(8),
      O => in7(8)
    );
\temp[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(7),
      O => in7(7)
    );
\temp[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(6),
      O => in7(6)
    );
\temp[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tag_o(5),
      O => in7(5)
    );
\temp[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => deglitcher_inst_a_n_29,
      I1 => \temp0__0\(9),
      I2 => tag_p_o,
      O => \temp[9]_i_1_n_0\
    );
\temp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[0]_i_1_n_0\,
      Q => temp(0),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[10]_i_1_n_0\,
      Q => temp(10),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[11]_i_1_n_0\,
      Q => temp(11),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[12]_i_1_n_0\,
      Q => temp(12),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[13]_i_1_n_0\,
      Q => temp(13),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[14]_i_1_n_0\,
      Q => temp(14),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[15]_i_1_n_0\,
      Q => temp(15),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[1]_i_1_n_0\,
      Q => temp(1),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[2]_i_1_n_0\,
      Q => temp(2),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[3]_i_1_n_0\,
      Q => temp(3),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[4]_i_1_n_0\,
      Q => temp(4),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[5]_i_1_n_0\,
      Q => temp(5),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[6]_i_1_n_0\,
      Q => temp(6),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[7]_i_1_n_0\,
      Q => temp(7),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[8]_i_1_n_0\,
      Q => temp(8),
      R => deglitcher_inst_a_n_0
    );
\temp_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_ddmtd_i,
      CE => temp_0,
      D => \temp[9]_i_1_n_0\,
      Q => temp(9),
      R => deglitcher_inst_a_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ddmtd_system_bd_ddmtd_0_0 is
  port (
    rst_n_ddmtdclk_i : in STD_LOGIC;
    clk_a_i : in STD_LOGIC;
    clk_b_i : in STD_LOGIC;
    clk_ddmtd_i : in STD_LOGIC;
    deglitch_threshold_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_diff_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_diff_p_o : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ddmtd_system_bd_ddmtd_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ddmtd_system_bd_ddmtd_0_0 : entity is "ddmtd_system_bd_ddmtd_0_0,ddmtd,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ddmtd_system_bd_ddmtd_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ddmtd_system_bd_ddmtd_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ddmtd_system_bd_ddmtd_0_0 : entity is "ddmtd,Vivado 2025.1";
end ddmtd_system_bd_ddmtd_0_0;

architecture STRUCTURE of ddmtd_system_bd_ddmtd_0_0 is
begin
inst: entity work.ddmtd_system_bd_ddmtd_0_0_ddmtd
     port map (
      clk_a_i => clk_a_i,
      clk_b_i => clk_b_i,
      clk_ddmtd_i => clk_ddmtd_i,
      deglitch_threshold_i(15 downto 0) => deglitch_threshold_i(15 downto 0),
      phase_diff_o(15 downto 0) => phase_diff_o(15 downto 0),
      phase_diff_p_o => phase_diff_p_o,
      rst_n_ddmtdclk_i => rst_n_ddmtdclk_i
    );
end STRUCTURE;
