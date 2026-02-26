// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Feb 26 14:11:50 2026
// Host        : RAINFALLBOOK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/DDMTD_Project/ddmtd_fpga/srcs/bd/ddmtd_system_bd/ip/ddmtd_system_bd_dps_controller_0_0/ddmtd_system_bd_dps_controller_0_0_sim_netlist.v
// Design      : ddmtd_system_bd_dps_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ddmtd_system_bd_dps_controller_0_0,dps_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "dps_controller,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ddmtd_system_bd_dps_controller_0_0
   (psclk_i,
    rstn_i,
    toggle_i,
    dir_i,
    steps_per_toggle_i,
    locked_i,
    psdone_i,
    psen_o,
    psincdec_o,
    total_steps_o);
  input psclk_i;
  input rstn_i;
  input toggle_i;
  input dir_i;
  input [7:0]steps_per_toggle_i;
  input locked_i;
  input psdone_i;
  output psen_o;
  output psincdec_o;
  output [15:0]total_steps_o;

  wire dir_i;
  wire psclk_i;
  wire psdone_i;
  wire psen_o;
  wire psincdec_o;
  wire rstn_i;
  wire [7:0]steps_per_toggle_i;
  wire toggle_i;
  wire [15:0]total_steps_o;

  ddmtd_system_bd_dps_controller_0_0_dps_controller inst
       (.dir_i(dir_i),
        .psclk_i(psclk_i),
        .psdone_i(psdone_i),
        .psen_o(psen_o),
        .psincdec_o(psincdec_o),
        .rstn_i(rstn_i),
        .steps_per_toggle_i(steps_per_toggle_i),
        .toggle_i(toggle_i),
        .total_steps_o(total_steps_o));
endmodule

(* ORIG_REF_NAME = "dps_controller" *) 
module ddmtd_system_bd_dps_controller_0_0_dps_controller
   (total_steps_o,
    psen_o,
    psincdec_o,
    steps_per_toggle_i,
    psclk_i,
    toggle_i,
    dir_i,
    psdone_i,
    rstn_i);
  output [15:0]total_steps_o;
  output psen_o;
  output psincdec_o;
  input [7:0]steps_per_toggle_i;
  input psclk_i;
  input toggle_i;
  input dir_i;
  input psdone_i;
  input rstn_i;

  wire FSM_sequential_state_i_1_n_0;
  wire dir_i;
  wire dir_latched_i_1_n_0;
  wire dir_latched_reg_n_0;
  wire dir_s;
  wire [1:1]p_1_in;
  wire [1:1]p_1_in__0;
  wire psclk_i;
  wire psdone_i;
  wire psen_o;
  wire psen_o_i_1_n_0;
  wire psen_o_i_2_n_0;
  wire psen_o_i_3_n_0;
  wire psen_o_i_4_n_0;
  wire psen_o_i_5_n_0;
  wire psen_o_i_6_n_0;
  wire psen_o_i_7_n_0;
  wire psincdec_o;
  wire psincdec_o_i_1_n_0;
  wire rstn_i;
  wire state;
  wire step_s;
  wire step_s_d;
  wire [7:0]steps_left;
  wire \steps_left[4]_i_2_n_0 ;
  wire \steps_left[7]_i_1_n_0 ;
  wire \steps_left[7]_i_3_n_0 ;
  wire \steps_left[7]_i_4_n_0 ;
  wire \steps_left_reg_n_0_[0] ;
  wire \steps_left_reg_n_0_[1] ;
  wire \steps_left_reg_n_0_[2] ;
  wire \steps_left_reg_n_0_[3] ;
  wire \steps_left_reg_n_0_[4] ;
  wire \steps_left_reg_n_0_[5] ;
  wire \steps_left_reg_n_0_[6] ;
  wire \steps_left_reg_n_0_[7] ;
  wire [7:0]steps_per_toggle_i;
  wire [7:0]steps_s;
  wire [7:0]\steps_sync_reg[0] ;
  wire toggle_i;
  wire [15:0]total_steps_o;
  wire \total_steps_o[11]_i_2_n_0 ;
  wire \total_steps_o[11]_i_3_n_0 ;
  wire \total_steps_o[11]_i_4_n_0 ;
  wire \total_steps_o[11]_i_5_n_0 ;
  wire \total_steps_o[11]_i_6_n_0 ;
  wire \total_steps_o[11]_i_7_n_0 ;
  wire \total_steps_o[11]_i_8_n_0 ;
  wire \total_steps_o[11]_i_9_n_0 ;
  wire \total_steps_o[15]_i_1_n_0 ;
  wire \total_steps_o[15]_i_3_n_0 ;
  wire \total_steps_o[15]_i_4_n_0 ;
  wire \total_steps_o[15]_i_5_n_0 ;
  wire \total_steps_o[15]_i_6_n_0 ;
  wire \total_steps_o[15]_i_7_n_0 ;
  wire \total_steps_o[15]_i_8_n_0 ;
  wire \total_steps_o[15]_i_9_n_0 ;
  wire \total_steps_o[3]_i_2_n_0 ;
  wire \total_steps_o[3]_i_3_n_0 ;
  wire \total_steps_o[3]_i_4_n_0 ;
  wire \total_steps_o[3]_i_5_n_0 ;
  wire \total_steps_o[3]_i_6_n_0 ;
  wire \total_steps_o[3]_i_7_n_0 ;
  wire \total_steps_o[3]_i_8_n_0 ;
  wire \total_steps_o[3]_i_9_n_0 ;
  wire \total_steps_o[7]_i_2_n_0 ;
  wire \total_steps_o[7]_i_3_n_0 ;
  wire \total_steps_o[7]_i_4_n_0 ;
  wire \total_steps_o[7]_i_5_n_0 ;
  wire \total_steps_o[7]_i_6_n_0 ;
  wire \total_steps_o[7]_i_7_n_0 ;
  wire \total_steps_o[7]_i_8_n_0 ;
  wire \total_steps_o[7]_i_9_n_0 ;
  wire \total_steps_o_reg[11]_i_1_n_0 ;
  wire \total_steps_o_reg[11]_i_1_n_1 ;
  wire \total_steps_o_reg[11]_i_1_n_2 ;
  wire \total_steps_o_reg[11]_i_1_n_3 ;
  wire \total_steps_o_reg[11]_i_1_n_4 ;
  wire \total_steps_o_reg[11]_i_1_n_5 ;
  wire \total_steps_o_reg[11]_i_1_n_6 ;
  wire \total_steps_o_reg[11]_i_1_n_7 ;
  wire \total_steps_o_reg[15]_i_2_n_1 ;
  wire \total_steps_o_reg[15]_i_2_n_2 ;
  wire \total_steps_o_reg[15]_i_2_n_3 ;
  wire \total_steps_o_reg[15]_i_2_n_4 ;
  wire \total_steps_o_reg[15]_i_2_n_5 ;
  wire \total_steps_o_reg[15]_i_2_n_6 ;
  wire \total_steps_o_reg[15]_i_2_n_7 ;
  wire \total_steps_o_reg[3]_i_1_n_0 ;
  wire \total_steps_o_reg[3]_i_1_n_1 ;
  wire \total_steps_o_reg[3]_i_1_n_2 ;
  wire \total_steps_o_reg[3]_i_1_n_3 ;
  wire \total_steps_o_reg[3]_i_1_n_4 ;
  wire \total_steps_o_reg[3]_i_1_n_5 ;
  wire \total_steps_o_reg[3]_i_1_n_6 ;
  wire \total_steps_o_reg[3]_i_1_n_7 ;
  wire \total_steps_o_reg[7]_i_1_n_0 ;
  wire \total_steps_o_reg[7]_i_1_n_1 ;
  wire \total_steps_o_reg[7]_i_1_n_2 ;
  wire \total_steps_o_reg[7]_i_1_n_3 ;
  wire \total_steps_o_reg[7]_i_1_n_4 ;
  wire \total_steps_o_reg[7]_i_1_n_5 ;
  wire \total_steps_o_reg[7]_i_1_n_6 ;
  wire \total_steps_o_reg[7]_i_1_n_7 ;
  wire [3:3]\NLW_total_steps_o_reg[15]_i_2_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    FSM_sequential_state_i_1
       (.I0(psen_o_i_7_n_0),
        .I1(\steps_left_reg_n_0_[4] ),
        .I2(\steps_left_reg_n_0_[3] ),
        .I3(\steps_left_reg_n_0_[6] ),
        .I4(\steps_left_reg_n_0_[5] ),
        .I5(state),
        .O(FSM_sequential_state_i_1_n_0));
  (* FSM_ENCODED_STATES = "S_WAIT:1,S_IDLE:0" *) 
  FDRE FSM_sequential_state_reg
       (.C(psclk_i),
        .CE(\steps_left[7]_i_1_n_0 ),
        .D(FSM_sequential_state_i_1_n_0),
        .Q(state),
        .R(psen_o_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    dir_latched_i_1
       (.I0(dir_latched_reg_n_0),
        .I1(state),
        .I2(step_s_d),
        .I3(step_s),
        .I4(dir_s),
        .O(dir_latched_i_1_n_0));
  FDRE dir_latched_reg
       (.C(psclk_i),
        .CE(1'b1),
        .D(dir_latched_i_1_n_0),
        .Q(dir_latched_reg_n_0),
        .R(psen_o_i_1_n_0));
  FDRE \dir_sync_reg[0] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(dir_i),
        .Q(p_1_in__0),
        .R(psen_o_i_1_n_0));
  FDRE \dir_sync_reg[1] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(p_1_in__0),
        .Q(dir_s),
        .R(psen_o_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    psen_o_i_1
       (.I0(rstn_i),
        .O(psen_o_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF54FFFF54545454)) 
    psen_o_i_2
       (.I0(psen_o_i_3_n_0),
        .I1(psen_o_i_4_n_0),
        .I2(psen_o_i_5_n_0),
        .I3(psen_o_i_6_n_0),
        .I4(psen_o_i_7_n_0),
        .I5(\total_steps_o[15]_i_1_n_0 ),
        .O(psen_o_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    psen_o_i_3
       (.I0(state),
        .I1(step_s_d),
        .I2(step_s),
        .O(psen_o_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    psen_o_i_4
       (.I0(steps_s[7]),
        .I1(steps_s[5]),
        .I2(steps_s[6]),
        .I3(steps_s[4]),
        .O(psen_o_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    psen_o_i_5
       (.I0(steps_s[2]),
        .I1(steps_s[1]),
        .I2(steps_s[3]),
        .I3(steps_s[0]),
        .O(psen_o_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    psen_o_i_6
       (.I0(\steps_left_reg_n_0_[4] ),
        .I1(\steps_left_reg_n_0_[3] ),
        .I2(\steps_left_reg_n_0_[6] ),
        .I3(\steps_left_reg_n_0_[5] ),
        .O(psen_o_i_6_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    psen_o_i_7
       (.I0(\steps_left_reg_n_0_[1] ),
        .I1(\steps_left_reg_n_0_[7] ),
        .I2(\steps_left_reg_n_0_[0] ),
        .I3(\steps_left_reg_n_0_[2] ),
        .O(psen_o_i_7_n_0));
  FDRE psen_o_reg
       (.C(psclk_i),
        .CE(1'b1),
        .D(psen_o_i_2_n_0),
        .Q(psen_o),
        .R(psen_o_i_1_n_0));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    psincdec_o_i_1
       (.I0(dir_latched_reg_n_0),
        .I1(state),
        .I2(dir_s),
        .I3(psen_o_i_2_n_0),
        .I4(psincdec_o),
        .O(psincdec_o_i_1_n_0));
  FDRE psincdec_o_reg
       (.C(psclk_i),
        .CE(1'b1),
        .D(psincdec_o_i_1_n_0),
        .Q(psincdec_o),
        .R(psen_o_i_1_n_0));
  FDRE step_s_d_reg
       (.C(psclk_i),
        .CE(1'b1),
        .D(step_s),
        .Q(step_s_d),
        .R(psen_o_i_1_n_0));
  FDRE \step_sync_reg[0] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(toggle_i),
        .Q(p_1_in),
        .R(psen_o_i_1_n_0));
  FDRE \step_sync_reg[1] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(p_1_in),
        .Q(step_s),
        .R(psen_o_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \steps_left[0]_i_1 
       (.I0(\steps_left_reg_n_0_[0] ),
        .I1(state),
        .I2(steps_s[0]),
        .O(steps_left[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \steps_left[1]_i_1 
       (.I0(\steps_left_reg_n_0_[1] ),
        .I1(\steps_left_reg_n_0_[0] ),
        .I2(state),
        .I3(steps_s[1]),
        .O(steps_left[1]));
  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \steps_left[2]_i_1 
       (.I0(\steps_left_reg_n_0_[2] ),
        .I1(\steps_left_reg_n_0_[0] ),
        .I2(\steps_left_reg_n_0_[1] ),
        .I3(state),
        .I4(steps_s[2]),
        .O(steps_left[2]));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \steps_left[3]_i_1 
       (.I0(\steps_left_reg_n_0_[3] ),
        .I1(\steps_left_reg_n_0_[2] ),
        .I2(\steps_left_reg_n_0_[1] ),
        .I3(\steps_left_reg_n_0_[0] ),
        .I4(state),
        .I5(steps_s[3]),
        .O(steps_left[3]));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \steps_left[4]_i_1 
       (.I0(\steps_left_reg_n_0_[4] ),
        .I1(\steps_left_reg_n_0_[3] ),
        .I2(\steps_left[4]_i_2_n_0 ),
        .I3(state),
        .I4(steps_s[4]),
        .O(steps_left[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \steps_left[4]_i_2 
       (.I0(\steps_left_reg_n_0_[0] ),
        .I1(\steps_left_reg_n_0_[1] ),
        .I2(\steps_left_reg_n_0_[2] ),
        .O(\steps_left[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \steps_left[5]_i_1 
       (.I0(\steps_left_reg_n_0_[5] ),
        .I1(\steps_left[7]_i_4_n_0 ),
        .I2(state),
        .I3(steps_s[5]),
        .O(steps_left[5]));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \steps_left[6]_i_1 
       (.I0(\steps_left_reg_n_0_[6] ),
        .I1(\steps_left_reg_n_0_[5] ),
        .I2(\steps_left[7]_i_4_n_0 ),
        .I3(state),
        .I4(steps_s[6]),
        .O(steps_left[6]));
  LUT3 #(
    .INIT(8'hEA)) 
    \steps_left[7]_i_1 
       (.I0(\steps_left[7]_i_3_n_0 ),
        .I1(state),
        .I2(psdone_i),
        .O(\steps_left[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA6FFFFAAA60000)) 
    \steps_left[7]_i_2 
       (.I0(\steps_left_reg_n_0_[7] ),
        .I1(\steps_left[7]_i_4_n_0 ),
        .I2(\steps_left_reg_n_0_[5] ),
        .I3(\steps_left_reg_n_0_[6] ),
        .I4(state),
        .I5(steps_s[7]),
        .O(steps_left[7]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \steps_left[7]_i_3 
       (.I0(psen_o_i_5_n_0),
        .I1(steps_s[7]),
        .I2(steps_s[5]),
        .I3(steps_s[6]),
        .I4(steps_s[4]),
        .I5(psen_o_i_3_n_0),
        .O(\steps_left[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \steps_left[7]_i_4 
       (.I0(\steps_left_reg_n_0_[2] ),
        .I1(\steps_left_reg_n_0_[1] ),
        .I2(\steps_left_reg_n_0_[0] ),
        .I3(\steps_left_reg_n_0_[4] ),
        .I4(\steps_left_reg_n_0_[3] ),
        .O(\steps_left[7]_i_4_n_0 ));
  FDRE \steps_left_reg[0] 
       (.C(psclk_i),
        .CE(\steps_left[7]_i_1_n_0 ),
        .D(steps_left[0]),
        .Q(\steps_left_reg_n_0_[0] ),
        .R(psen_o_i_1_n_0));
  FDRE \steps_left_reg[1] 
       (.C(psclk_i),
        .CE(\steps_left[7]_i_1_n_0 ),
        .D(steps_left[1]),
        .Q(\steps_left_reg_n_0_[1] ),
        .R(psen_o_i_1_n_0));
  FDRE \steps_left_reg[2] 
       (.C(psclk_i),
        .CE(\steps_left[7]_i_1_n_0 ),
        .D(steps_left[2]),
        .Q(\steps_left_reg_n_0_[2] ),
        .R(psen_o_i_1_n_0));
  FDRE \steps_left_reg[3] 
       (.C(psclk_i),
        .CE(\steps_left[7]_i_1_n_0 ),
        .D(steps_left[3]),
        .Q(\steps_left_reg_n_0_[3] ),
        .R(psen_o_i_1_n_0));
  FDRE \steps_left_reg[4] 
       (.C(psclk_i),
        .CE(\steps_left[7]_i_1_n_0 ),
        .D(steps_left[4]),
        .Q(\steps_left_reg_n_0_[4] ),
        .R(psen_o_i_1_n_0));
  FDRE \steps_left_reg[5] 
       (.C(psclk_i),
        .CE(\steps_left[7]_i_1_n_0 ),
        .D(steps_left[5]),
        .Q(\steps_left_reg_n_0_[5] ),
        .R(psen_o_i_1_n_0));
  FDRE \steps_left_reg[6] 
       (.C(psclk_i),
        .CE(\steps_left[7]_i_1_n_0 ),
        .D(steps_left[6]),
        .Q(\steps_left_reg_n_0_[6] ),
        .R(psen_o_i_1_n_0));
  FDRE \steps_left_reg[7] 
       (.C(psclk_i),
        .CE(\steps_left[7]_i_1_n_0 ),
        .D(steps_left[7]),
        .Q(\steps_left_reg_n_0_[7] ),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[0][0] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(steps_per_toggle_i[0]),
        .Q(\steps_sync_reg[0] [0]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[0][1] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(steps_per_toggle_i[1]),
        .Q(\steps_sync_reg[0] [1]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[0][2] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(steps_per_toggle_i[2]),
        .Q(\steps_sync_reg[0] [2]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[0][3] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(steps_per_toggle_i[3]),
        .Q(\steps_sync_reg[0] [3]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[0][4] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(steps_per_toggle_i[4]),
        .Q(\steps_sync_reg[0] [4]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[0][5] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(steps_per_toggle_i[5]),
        .Q(\steps_sync_reg[0] [5]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[0][6] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(steps_per_toggle_i[6]),
        .Q(\steps_sync_reg[0] [6]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[0][7] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(steps_per_toggle_i[7]),
        .Q(\steps_sync_reg[0] [7]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[1][0] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(\steps_sync_reg[0] [0]),
        .Q(steps_s[0]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[1][1] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(\steps_sync_reg[0] [1]),
        .Q(steps_s[1]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[1][2] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(\steps_sync_reg[0] [2]),
        .Q(steps_s[2]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[1][3] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(\steps_sync_reg[0] [3]),
        .Q(steps_s[3]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[1][4] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(\steps_sync_reg[0] [4]),
        .Q(steps_s[4]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[1][5] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(\steps_sync_reg[0] [5]),
        .Q(steps_s[5]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[1][6] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(\steps_sync_reg[0] [6]),
        .Q(steps_s[6]),
        .R(psen_o_i_1_n_0));
  FDRE \steps_sync_reg[1][7] 
       (.C(psclk_i),
        .CE(1'b1),
        .D(\steps_sync_reg[0] [7]),
        .Q(steps_s[7]),
        .R(psen_o_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[11]_i_2 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[11]_i_3 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[11]_i_4 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[11]_i_5 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[11]_i_6 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[11]),
        .O(\total_steps_o[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[11]_i_7 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[10]),
        .O(\total_steps_o[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[11]_i_8 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[9]),
        .O(\total_steps_o[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[11]_i_9 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[8]),
        .O(\total_steps_o[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \total_steps_o[15]_i_1 
       (.I0(psdone_i),
        .I1(state),
        .O(\total_steps_o[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[15]_i_3 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[15]_i_4 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[15]_i_5 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[15]_i_6 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[15]),
        .O(\total_steps_o[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[15]_i_7 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[14]),
        .O(\total_steps_o[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[15]_i_8 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[13]),
        .O(\total_steps_o[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[15]_i_9 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[12]),
        .O(\total_steps_o[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[3]_i_2 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[3]_i_3 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[3]_i_4 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[3]_i_5 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[3]_i_6 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[3]),
        .O(\total_steps_o[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[3]_i_7 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[2]),
        .O(\total_steps_o[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[3]_i_8 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[1]),
        .O(\total_steps_o[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \total_steps_o[3]_i_9 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[0]),
        .O(\total_steps_o[3]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[7]_i_2 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[7]_i_3 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[7]_i_4 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_steps_o[7]_i_5 
       (.I0(dir_latched_reg_n_0),
        .O(\total_steps_o[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[7]_i_6 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[7]),
        .O(\total_steps_o[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[7]_i_7 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[6]),
        .O(\total_steps_o[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[7]_i_8 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[5]),
        .O(\total_steps_o[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \total_steps_o[7]_i_9 
       (.I0(dir_latched_reg_n_0),
        .I1(total_steps_o[4]),
        .O(\total_steps_o[7]_i_9_n_0 ));
  FDRE \total_steps_o_reg[0] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[3]_i_1_n_7 ),
        .Q(total_steps_o[0]),
        .R(psen_o_i_1_n_0));
  FDRE \total_steps_o_reg[10] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[11]_i_1_n_5 ),
        .Q(total_steps_o[10]),
        .R(psen_o_i_1_n_0));
  FDRE \total_steps_o_reg[11] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[11]_i_1_n_4 ),
        .Q(total_steps_o[11]),
        .R(psen_o_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \total_steps_o_reg[11]_i_1 
       (.CI(\total_steps_o_reg[7]_i_1_n_0 ),
        .CO({\total_steps_o_reg[11]_i_1_n_0 ,\total_steps_o_reg[11]_i_1_n_1 ,\total_steps_o_reg[11]_i_1_n_2 ,\total_steps_o_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\total_steps_o[11]_i_2_n_0 ,\total_steps_o[11]_i_3_n_0 ,\total_steps_o[11]_i_4_n_0 ,\total_steps_o[11]_i_5_n_0 }),
        .O({\total_steps_o_reg[11]_i_1_n_4 ,\total_steps_o_reg[11]_i_1_n_5 ,\total_steps_o_reg[11]_i_1_n_6 ,\total_steps_o_reg[11]_i_1_n_7 }),
        .S({\total_steps_o[11]_i_6_n_0 ,\total_steps_o[11]_i_7_n_0 ,\total_steps_o[11]_i_8_n_0 ,\total_steps_o[11]_i_9_n_0 }));
  FDRE \total_steps_o_reg[12] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[15]_i_2_n_7 ),
        .Q(total_steps_o[12]),
        .R(psen_o_i_1_n_0));
  FDRE \total_steps_o_reg[13] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[15]_i_2_n_6 ),
        .Q(total_steps_o[13]),
        .R(psen_o_i_1_n_0));
  FDRE \total_steps_o_reg[14] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[15]_i_2_n_5 ),
        .Q(total_steps_o[14]),
        .R(psen_o_i_1_n_0));
  FDRE \total_steps_o_reg[15] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[15]_i_2_n_4 ),
        .Q(total_steps_o[15]),
        .R(psen_o_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \total_steps_o_reg[15]_i_2 
       (.CI(\total_steps_o_reg[11]_i_1_n_0 ),
        .CO({\NLW_total_steps_o_reg[15]_i_2_CO_UNCONNECTED [3],\total_steps_o_reg[15]_i_2_n_1 ,\total_steps_o_reg[15]_i_2_n_2 ,\total_steps_o_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\total_steps_o[15]_i_3_n_0 ,\total_steps_o[15]_i_4_n_0 ,\total_steps_o[15]_i_5_n_0 }),
        .O({\total_steps_o_reg[15]_i_2_n_4 ,\total_steps_o_reg[15]_i_2_n_5 ,\total_steps_o_reg[15]_i_2_n_6 ,\total_steps_o_reg[15]_i_2_n_7 }),
        .S({\total_steps_o[15]_i_6_n_0 ,\total_steps_o[15]_i_7_n_0 ,\total_steps_o[15]_i_8_n_0 ,\total_steps_o[15]_i_9_n_0 }));
  FDRE \total_steps_o_reg[1] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[3]_i_1_n_6 ),
        .Q(total_steps_o[1]),
        .R(psen_o_i_1_n_0));
  FDRE \total_steps_o_reg[2] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[3]_i_1_n_5 ),
        .Q(total_steps_o[2]),
        .R(psen_o_i_1_n_0));
  FDRE \total_steps_o_reg[3] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[3]_i_1_n_4 ),
        .Q(total_steps_o[3]),
        .R(psen_o_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \total_steps_o_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\total_steps_o_reg[3]_i_1_n_0 ,\total_steps_o_reg[3]_i_1_n_1 ,\total_steps_o_reg[3]_i_1_n_2 ,\total_steps_o_reg[3]_i_1_n_3 }),
        .CYINIT(\total_steps_o[3]_i_2_n_0 ),
        .DI({\total_steps_o[3]_i_3_n_0 ,\total_steps_o[3]_i_4_n_0 ,\total_steps_o[3]_i_5_n_0 ,dir_latched_reg_n_0}),
        .O({\total_steps_o_reg[3]_i_1_n_4 ,\total_steps_o_reg[3]_i_1_n_5 ,\total_steps_o_reg[3]_i_1_n_6 ,\total_steps_o_reg[3]_i_1_n_7 }),
        .S({\total_steps_o[3]_i_6_n_0 ,\total_steps_o[3]_i_7_n_0 ,\total_steps_o[3]_i_8_n_0 ,\total_steps_o[3]_i_9_n_0 }));
  FDRE \total_steps_o_reg[4] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[7]_i_1_n_7 ),
        .Q(total_steps_o[4]),
        .R(psen_o_i_1_n_0));
  FDRE \total_steps_o_reg[5] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[7]_i_1_n_6 ),
        .Q(total_steps_o[5]),
        .R(psen_o_i_1_n_0));
  FDRE \total_steps_o_reg[6] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[7]_i_1_n_5 ),
        .Q(total_steps_o[6]),
        .R(psen_o_i_1_n_0));
  FDRE \total_steps_o_reg[7] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[7]_i_1_n_4 ),
        .Q(total_steps_o[7]),
        .R(psen_o_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \total_steps_o_reg[7]_i_1 
       (.CI(\total_steps_o_reg[3]_i_1_n_0 ),
        .CO({\total_steps_o_reg[7]_i_1_n_0 ,\total_steps_o_reg[7]_i_1_n_1 ,\total_steps_o_reg[7]_i_1_n_2 ,\total_steps_o_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\total_steps_o[7]_i_2_n_0 ,\total_steps_o[7]_i_3_n_0 ,\total_steps_o[7]_i_4_n_0 ,\total_steps_o[7]_i_5_n_0 }),
        .O({\total_steps_o_reg[7]_i_1_n_4 ,\total_steps_o_reg[7]_i_1_n_5 ,\total_steps_o_reg[7]_i_1_n_6 ,\total_steps_o_reg[7]_i_1_n_7 }),
        .S({\total_steps_o[7]_i_6_n_0 ,\total_steps_o[7]_i_7_n_0 ,\total_steps_o[7]_i_8_n_0 ,\total_steps_o[7]_i_9_n_0 }));
  FDRE \total_steps_o_reg[8] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[11]_i_1_n_7 ),
        .Q(total_steps_o[8]),
        .R(psen_o_i_1_n_0));
  FDRE \total_steps_o_reg[9] 
       (.C(psclk_i),
        .CE(\total_steps_o[15]_i_1_n_0 ),
        .D(\total_steps_o_reg[11]_i_1_n_6 ),
        .Q(total_steps_o[9]),
        .R(psen_o_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
