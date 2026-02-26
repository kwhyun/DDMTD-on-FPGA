// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Feb 26 14:11:50 2026
// Host        : RAINFALLBOOK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/DDMTD_Project/ddmtd_fpga/srcs/bd/ddmtd_system_bd/ip/ddmtd_system_bd_ddmtd_0_0/ddmtd_system_bd_ddmtd_0_0_sim_netlist.v
// Design      : ddmtd_system_bd_ddmtd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ddmtd_system_bd_ddmtd_0_0,ddmtd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ddmtd,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ddmtd_system_bd_ddmtd_0_0
   (rst_n_ddmtdclk_i,
    clk_a_i,
    clk_b_i,
    clk_ddmtd_i,
    deglitch_threshold_i,
    phase_diff_o,
    phase_diff_p_o);
  input rst_n_ddmtdclk_i;
  input clk_a_i;
  input clk_b_i;
  input clk_ddmtd_i;
  input [15:0]deglitch_threshold_i;
  output [15:0]phase_diff_o;
  output phase_diff_p_o;

  wire clk_a_i;
  wire clk_b_i;
  wire clk_ddmtd_i;
  wire [15:0]deglitch_threshold_i;
  wire [15:0]phase_diff_o;
  wire phase_diff_p_o;
  wire rst_n_ddmtdclk_i;

  ddmtd_system_bd_ddmtd_0_0_ddmtd inst
       (.clk_a_i(clk_a_i),
        .clk_b_i(clk_b_i),
        .clk_ddmtd_i(clk_ddmtd_i),
        .deglitch_threshold_i(deglitch_threshold_i),
        .phase_diff_o(phase_diff_o),
        .phase_diff_p_o(phase_diff_p_o),
        .rst_n_ddmtdclk_i(rst_n_ddmtdclk_i));
endmodule

(* ORIG_REF_NAME = "ddmtd" *) 
module ddmtd_system_bd_ddmtd_0_0_ddmtd
   (phase_diff_o,
    phase_diff_p_o,
    deglitch_threshold_i,
    clk_ddmtd_i,
    clk_a_i,
    clk_b_i,
    rst_n_ddmtdclk_i);
  output [15:0]phase_diff_o;
  output phase_diff_p_o;
  input [15:0]deglitch_threshold_i;
  input clk_ddmtd_i;
  input clk_a_i;
  input clk_b_i;
  input rst_n_ddmtdclk_i;

  wire __0;
  wire __0_0;
  wire clk_a_i;
  wire clk_b_i;
  wire clk_ddmtd_i;
  wire clk_sampled_o;
  wire [15:0]deglitch_threshold_i;
  wire deglitcher_inst_a_n_0;
  wire deglitcher_inst_a_n_19;
  wire deglitcher_inst_a_n_20;
  wire deglitcher_inst_a_n_21;
  wire deglitcher_inst_a_n_22;
  wire deglitcher_inst_a_n_23;
  wire deglitcher_inst_a_n_24;
  wire deglitcher_inst_a_n_25;
  wire deglitcher_inst_a_n_26;
  wire deglitcher_inst_a_n_27;
  wire deglitcher_inst_a_n_28;
  wire deglitcher_inst_a_n_29;
  wire deglitcher_inst_a_n_30;
  wire deglitcher_inst_a_n_31;
  wire deglitcher_inst_a_n_32;
  wire deglitcher_inst_a_n_33;
  wire deglitcher_inst_a_n_34;
  wire deglitcher_inst_a_n_35;
  wire deglitcher_inst_a_n_36;
  wire deglitcher_inst_a_n_37;
  wire deglitcher_inst_a_n_38;
  wire deglitcher_inst_a_n_39;
  wire deglitcher_inst_a_n_40;
  wire deglitcher_inst_a_n_41;
  wire deglitcher_inst_a_n_42;
  wire deglitcher_inst_a_n_43;
  wire deglitcher_inst_a_n_44;
  wire deglitcher_inst_a_n_45;
  wire deglitcher_inst_a_n_46;
  wire deglitcher_inst_a_n_47;
  wire deglitcher_inst_a_n_48;
  wire deglitcher_inst_a_n_49;
  wire deglitcher_inst_a_n_50;
  wire deglitcher_inst_a_n_51;
  wire deglitcher_inst_a_n_52;
  wire deglitcher_inst_a_n_53;
  wire deglitcher_inst_b_n_0;
  wire deglitcher_inst_b_n_1;
  wire deglitcher_inst_b_n_19;
  wire deglitcher_inst_b_n_2;
  wire deglitcher_inst_b_n_20;
  wire deglitcher_inst_b_n_21;
  wire deglitcher_inst_b_n_22;
  wire deglitcher_inst_b_n_3;
  wire [15:0]free_cntr_reg;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire [15:0]in7;
  wire p_2_in;
  wire [1:0]pd_state;
  wire [15:0]phase_diff_o;
  wire \phase_diff_o0_inferred__1/i__carry__0_n_0 ;
  wire \phase_diff_o0_inferred__1/i__carry__0_n_1 ;
  wire \phase_diff_o0_inferred__1/i__carry__0_n_2 ;
  wire \phase_diff_o0_inferred__1/i__carry__0_n_3 ;
  wire \phase_diff_o0_inferred__1/i__carry__1_n_0 ;
  wire \phase_diff_o0_inferred__1/i__carry__1_n_1 ;
  wire \phase_diff_o0_inferred__1/i__carry__1_n_2 ;
  wire \phase_diff_o0_inferred__1/i__carry__1_n_3 ;
  wire \phase_diff_o0_inferred__1/i__carry__2_n_1 ;
  wire \phase_diff_o0_inferred__1/i__carry__2_n_2 ;
  wire \phase_diff_o0_inferred__1/i__carry__2_n_3 ;
  wire \phase_diff_o0_inferred__1/i__carry_n_0 ;
  wire \phase_diff_o0_inferred__1/i__carry_n_1 ;
  wire \phase_diff_o0_inferred__1/i__carry_n_2 ;
  wire \phase_diff_o0_inferred__1/i__carry_n_3 ;
  wire [15:0]phase_diff_o1_in;
  wire phase_diff_o1_n_0;
  wire phase_diff_p_o;
  wire rst_n_ddmtdclk_i;
  wire [15:0]tag_o;
  wire tag_p_o;
  wire [15:0]temp;
  wire [15:1]temp0__0;
  wire \temp[0]_i_1_n_0 ;
  wire \temp[10]_i_1_n_0 ;
  wire \temp[11]_i_1_n_0 ;
  wire \temp[12]_i_1_n_0 ;
  wire \temp[13]_i_1_n_0 ;
  wire \temp[14]_i_1_n_0 ;
  wire \temp[15]_i_1_n_0 ;
  wire \temp[1]_i_1_n_0 ;
  wire \temp[2]_i_1_n_0 ;
  wire \temp[3]_i_1_n_0 ;
  wire \temp[4]_i_1_n_0 ;
  wire \temp[5]_i_1_n_0 ;
  wire \temp[6]_i_1_n_0 ;
  wire \temp[7]_i_1_n_0 ;
  wire \temp[8]_i_1_n_0 ;
  wire \temp[9]_i_1_n_0 ;
  wire temp_0;
  wire [3:3]\NLW_phase_diff_o0_inferred__1/i__carry__2_CO_UNCONNECTED ;

  (* FSM_ENCODED_STATES = "PD_WAIT_TAG:00,PD_WAIT_A:10,PD_WAIT_B:01" *) 
  FDRE \FSM_sequential_pd_state_reg[0] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(deglitcher_inst_b_n_3),
        .Q(pd_state[0]),
        .R(deglitcher_inst_a_n_0));
  (* FSM_ENCODED_STATES = "PD_WAIT_TAG:00,PD_WAIT_A:10,PD_WAIT_B:01" *) 
  FDRE \FSM_sequential_pd_state_reg[1] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(deglitcher_inst_b_n_2),
        .Q(pd_state[1]),
        .R(deglitcher_inst_a_n_0));
  ddmtd_system_bd_ddmtd_0_0_deglitcher deglitcher_inst_a
       (.E(__0),
        .\FSM_onehot_state_reg[0]_0 (deglitcher_inst_a_n_53),
        .\FSM_onehot_state_reg[1]_0 (deglitcher_inst_a_n_52),
        .\FSM_onehot_state_reg[2]_0 (deglitcher_inst_a_n_51),
        .Q({deglitcher_inst_a_n_23,deglitcher_inst_a_n_24,deglitcher_inst_a_n_25,deglitcher_inst_a_n_26,deglitcher_inst_a_n_27,deglitcher_inst_a_n_28,deglitcher_inst_a_n_29,deglitcher_inst_a_n_30,deglitcher_inst_a_n_31,deglitcher_inst_a_n_32,deglitcher_inst_a_n_33,deglitcher_inst_a_n_34,deglitcher_inst_a_n_35,deglitcher_inst_a_n_36,deglitcher_inst_a_n_37,deglitcher_inst_a_n_38}),
        .S({deglitcher_inst_a_n_19,deglitcher_inst_a_n_20,deglitcher_inst_a_n_21,deglitcher_inst_a_n_22}),
        .SR(deglitcher_inst_a_n_0),
        .clk_a_i(clk_a_i),
        .clk_ddmtd_i(clk_ddmtd_i),
        .clk_sampled_o(clk_sampled_o),
        .deglitch_threshold_i(deglitch_threshold_i),
        .free_cntr_reg(free_cntr_reg),
        .pd_state(pd_state),
        .\phase_diff_o_reg[15] (tag_o),
        .\phase_diff_o_reg[15]_0 (temp[15:1]),
        .rst_n_ddmtdclk_i(rst_n_ddmtdclk_i),
        .\tag_o_reg[11]_0 ({deglitcher_inst_a_n_43,deglitcher_inst_a_n_44,deglitcher_inst_a_n_45,deglitcher_inst_a_n_46}),
        .\tag_o_reg[15]_0 ({deglitcher_inst_a_n_47,deglitcher_inst_a_n_48,deglitcher_inst_a_n_49,deglitcher_inst_a_n_50}),
        .\tag_o_reg[7]_0 ({deglitcher_inst_a_n_39,deglitcher_inst_a_n_40,deglitcher_inst_a_n_41,deglitcher_inst_a_n_42}),
        .tag_p_o(tag_p_o));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \deglitcher_inst_a/ 
       (.I0(deglitcher_inst_a_n_53),
        .I1(deglitcher_inst_a_n_52),
        .I2(clk_sampled_o),
        .I3(deglitcher_inst_a_n_51),
        .O(__0));
  ddmtd_system_bd_ddmtd_0_0_deglitcher_0 deglitcher_inst_b
       (.E(deglitcher_inst_b_n_19),
        .\FSM_onehot_state_reg[0]_0 (deglitcher_inst_b_n_22),
        .\FSM_onehot_state_reg[1]_0 (deglitcher_inst_b_n_21),
        .\FSM_onehot_state_reg[2]_0 (deglitcher_inst_b_n_20),
        .Q(tag_o),
        .SR(deglitcher_inst_a_n_0),
        .clk_b_i(clk_b_i),
        .clk_ddmtd_i(clk_ddmtd_i),
        .clk_sampled_o_reg(deglitcher_inst_b_n_0),
        .deglitch_threshold_i(deglitch_threshold_i),
        .free_cntr_reg(free_cntr_reg),
        .in7(in7),
        .pd_state(pd_state),
        .rst_n_ddmtdclk_i(rst_n_ddmtdclk_i),
        .\stab_cntr_reg[15]_0 (__0_0),
        .tag_p_o(tag_p_o),
        .tag_p_o_reg_0(deglitcher_inst_b_n_1),
        .tag_p_o_reg_1(deglitcher_inst_b_n_2),
        .tag_p_o_reg_2(deglitcher_inst_b_n_3),
        .temp0__0(temp0__0));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \deglitcher_inst_b/ 
       (.I0(deglitcher_inst_b_n_22),
        .I1(deglitcher_inst_b_n_21),
        .I2(deglitcher_inst_b_n_0),
        .I3(deglitcher_inst_b_n_20),
        .O(__0_0));
  LUT4 #(
    .INIT(16'h3704)) 
    i__carry__0_i_1
       (.I0(pd_state[1]),
        .I1(pd_state[0]),
        .I2(tag_o[7]),
        .I3(deglitcher_inst_a_n_31),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h3704)) 
    i__carry__0_i_2
       (.I0(pd_state[1]),
        .I1(pd_state[0]),
        .I2(tag_o[6]),
        .I3(deglitcher_inst_a_n_32),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h3704)) 
    i__carry__0_i_3
       (.I0(pd_state[1]),
        .I1(pd_state[0]),
        .I2(tag_o[5]),
        .I3(deglitcher_inst_a_n_33),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h3704)) 
    i__carry__0_i_4
       (.I0(pd_state[1]),
        .I1(pd_state[0]),
        .I2(tag_o[4]),
        .I3(deglitcher_inst_a_n_34),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h3704)) 
    i__carry__1_i_1
       (.I0(pd_state[1]),
        .I1(pd_state[0]),
        .I2(tag_o[11]),
        .I3(deglitcher_inst_a_n_27),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h3704)) 
    i__carry__1_i_2
       (.I0(pd_state[1]),
        .I1(pd_state[0]),
        .I2(tag_o[10]),
        .I3(deglitcher_inst_a_n_28),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h3704)) 
    i__carry__1_i_3
       (.I0(pd_state[1]),
        .I1(pd_state[0]),
        .I2(tag_o[9]),
        .I3(deglitcher_inst_a_n_29),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h3704)) 
    i__carry__1_i_4
       (.I0(pd_state[1]),
        .I1(pd_state[0]),
        .I2(tag_o[8]),
        .I3(deglitcher_inst_a_n_30),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h3704)) 
    i__carry__2_i_1
       (.I0(pd_state[1]),
        .I1(pd_state[0]),
        .I2(tag_o[14]),
        .I3(deglitcher_inst_a_n_24),
        .O(i__carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h3704)) 
    i__carry__2_i_2
       (.I0(pd_state[1]),
        .I1(pd_state[0]),
        .I2(tag_o[13]),
        .I3(deglitcher_inst_a_n_25),
        .O(i__carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h3704)) 
    i__carry__2_i_3
       (.I0(pd_state[1]),
        .I1(pd_state[0]),
        .I2(tag_o[12]),
        .I3(deglitcher_inst_a_n_26),
        .O(i__carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h3704)) 
    i__carry_i_1
       (.I0(pd_state[1]),
        .I1(pd_state[0]),
        .I2(tag_o[3]),
        .I3(deglitcher_inst_a_n_35),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h3704)) 
    i__carry_i_2
       (.I0(pd_state[1]),
        .I1(pd_state[0]),
        .I2(tag_o[2]),
        .I3(deglitcher_inst_a_n_36),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h3704)) 
    i__carry_i_3
       (.I0(pd_state[1]),
        .I1(pd_state[0]),
        .I2(tag_o[1]),
        .I3(deglitcher_inst_a_n_37),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_4
       (.I0(pd_state[1]),
        .O(p_2_in));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \phase_diff_o0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\phase_diff_o0_inferred__1/i__carry_n_0 ,\phase_diff_o0_inferred__1/i__carry_n_1 ,\phase_diff_o0_inferred__1/i__carry_n_2 ,\phase_diff_o0_inferred__1/i__carry_n_3 }),
        .CYINIT(phase_diff_o1_n_0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,p_2_in}),
        .O(phase_diff_o1_in[3:0]),
        .S({deglitcher_inst_a_n_19,deglitcher_inst_a_n_20,deglitcher_inst_a_n_21,deglitcher_inst_a_n_22}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \phase_diff_o0_inferred__1/i__carry__0 
       (.CI(\phase_diff_o0_inferred__1/i__carry_n_0 ),
        .CO({\phase_diff_o0_inferred__1/i__carry__0_n_0 ,\phase_diff_o0_inferred__1/i__carry__0_n_1 ,\phase_diff_o0_inferred__1/i__carry__0_n_2 ,\phase_diff_o0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(phase_diff_o1_in[7:4]),
        .S({deglitcher_inst_a_n_39,deglitcher_inst_a_n_40,deglitcher_inst_a_n_41,deglitcher_inst_a_n_42}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \phase_diff_o0_inferred__1/i__carry__1 
       (.CI(\phase_diff_o0_inferred__1/i__carry__0_n_0 ),
        .CO({\phase_diff_o0_inferred__1/i__carry__1_n_0 ,\phase_diff_o0_inferred__1/i__carry__1_n_1 ,\phase_diff_o0_inferred__1/i__carry__1_n_2 ,\phase_diff_o0_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(phase_diff_o1_in[11:8]),
        .S({deglitcher_inst_a_n_43,deglitcher_inst_a_n_44,deglitcher_inst_a_n_45,deglitcher_inst_a_n_46}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \phase_diff_o0_inferred__1/i__carry__2 
       (.CI(\phase_diff_o0_inferred__1/i__carry__1_n_0 ),
        .CO({\NLW_phase_diff_o0_inferred__1/i__carry__2_CO_UNCONNECTED [3],\phase_diff_o0_inferred__1/i__carry__2_n_1 ,\phase_diff_o0_inferred__1/i__carry__2_n_2 ,\phase_diff_o0_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0}),
        .O(phase_diff_o1_in[15:12]),
        .S({deglitcher_inst_a_n_47,deglitcher_inst_a_n_48,deglitcher_inst_a_n_49,deglitcher_inst_a_n_50}));
  LUT4 #(
    .INIT(16'h0CC5)) 
    phase_diff_o1
       (.I0(tag_o[0]),
        .I1(temp[0]),
        .I2(pd_state[1]),
        .I3(pd_state[0]),
        .O(phase_diff_o1_n_0));
  FDRE \phase_diff_o_reg[0] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[0]),
        .Q(phase_diff_o[0]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[10] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[10]),
        .Q(phase_diff_o[10]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[11] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[11]),
        .Q(phase_diff_o[11]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[12] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[12]),
        .Q(phase_diff_o[12]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[13] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[13]),
        .Q(phase_diff_o[13]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[14] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[14]),
        .Q(phase_diff_o[14]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[15] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[15]),
        .Q(phase_diff_o[15]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[1] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[1]),
        .Q(phase_diff_o[1]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[2] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[2]),
        .Q(phase_diff_o[2]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[3] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[3]),
        .Q(phase_diff_o[3]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[4] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[4]),
        .Q(phase_diff_o[4]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[5] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[5]),
        .Q(phase_diff_o[5]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[6] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[6]),
        .Q(phase_diff_o[6]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[7] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[7]),
        .Q(phase_diff_o[7]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[8] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[8]),
        .Q(phase_diff_o[8]),
        .R(deglitcher_inst_a_n_0));
  FDRE \phase_diff_o_reg[9] 
       (.C(clk_ddmtd_i),
        .CE(deglitcher_inst_b_n_19),
        .D(phase_diff_o1_in[9]),
        .Q(phase_diff_o[9]),
        .R(deglitcher_inst_a_n_0));
  FDRE phase_diff_p_o_reg
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(deglitcher_inst_b_n_19),
        .Q(phase_diff_p_o),
        .R(deglitcher_inst_a_n_0));
  LUT4 #(
    .INIT(16'h0014)) 
    temp0
       (.I0(pd_state[0]),
        .I1(deglitcher_inst_b_n_1),
        .I2(tag_p_o),
        .I3(pd_state[1]),
        .O(temp_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[0]_i_1 
       (.I0(deglitcher_inst_a_n_38),
        .I1(tag_o[0]),
        .I2(tag_p_o),
        .O(\temp[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[10]_i_1 
       (.I0(deglitcher_inst_a_n_28),
        .I1(temp0__0[10]),
        .I2(tag_p_o),
        .O(\temp[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[11]_i_1 
       (.I0(deglitcher_inst_a_n_27),
        .I1(temp0__0[11]),
        .I2(tag_p_o),
        .O(\temp[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[12]_i_1 
       (.I0(deglitcher_inst_a_n_26),
        .I1(temp0__0[12]),
        .I2(tag_p_o),
        .O(\temp[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[12]_i_3 
       (.I0(tag_o[12]),
        .O(in7[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[12]_i_4 
       (.I0(tag_o[11]),
        .O(in7[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[12]_i_5 
       (.I0(tag_o[10]),
        .O(in7[10]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[12]_i_6 
       (.I0(tag_o[9]),
        .O(in7[9]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[13]_i_1 
       (.I0(deglitcher_inst_a_n_25),
        .I1(temp0__0[13]),
        .I2(tag_p_o),
        .O(\temp[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[14]_i_1 
       (.I0(deglitcher_inst_a_n_24),
        .I1(temp0__0[14]),
        .I2(tag_p_o),
        .O(\temp[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[15]_i_1 
       (.I0(deglitcher_inst_a_n_23),
        .I1(temp0__0[15]),
        .I2(tag_p_o),
        .O(\temp[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[15]_i_3 
       (.I0(tag_o[15]),
        .O(in7[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[15]_i_4 
       (.I0(tag_o[14]),
        .O(in7[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[15]_i_5 
       (.I0(tag_o[13]),
        .O(in7[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[1]_i_1 
       (.I0(deglitcher_inst_a_n_37),
        .I1(temp0__0[1]),
        .I2(tag_p_o),
        .O(\temp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[2]_i_1 
       (.I0(deglitcher_inst_a_n_36),
        .I1(temp0__0[2]),
        .I2(tag_p_o),
        .O(\temp[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[3]_i_1 
       (.I0(deglitcher_inst_a_n_35),
        .I1(temp0__0[3]),
        .I2(tag_p_o),
        .O(\temp[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[4]_i_1 
       (.I0(deglitcher_inst_a_n_34),
        .I1(temp0__0[4]),
        .I2(tag_p_o),
        .O(\temp[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[4]_i_3 
       (.I0(tag_o[0]),
        .O(in7[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[4]_i_4 
       (.I0(tag_o[4]),
        .O(in7[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[4]_i_5 
       (.I0(tag_o[3]),
        .O(in7[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[4]_i_6 
       (.I0(tag_o[2]),
        .O(in7[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[4]_i_7 
       (.I0(tag_o[1]),
        .O(in7[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[5]_i_1 
       (.I0(deglitcher_inst_a_n_33),
        .I1(temp0__0[5]),
        .I2(tag_p_o),
        .O(\temp[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[6]_i_1 
       (.I0(deglitcher_inst_a_n_32),
        .I1(temp0__0[6]),
        .I2(tag_p_o),
        .O(\temp[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[7]_i_1 
       (.I0(deglitcher_inst_a_n_31),
        .I1(temp0__0[7]),
        .I2(tag_p_o),
        .O(\temp[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[8]_i_1 
       (.I0(deglitcher_inst_a_n_30),
        .I1(temp0__0[8]),
        .I2(tag_p_o),
        .O(\temp[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[8]_i_3 
       (.I0(tag_o[8]),
        .O(in7[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[8]_i_4 
       (.I0(tag_o[7]),
        .O(in7[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[8]_i_5 
       (.I0(tag_o[6]),
        .O(in7[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \temp[8]_i_6 
       (.I0(tag_o[5]),
        .O(in7[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \temp[9]_i_1 
       (.I0(deglitcher_inst_a_n_29),
        .I1(temp0__0[9]),
        .I2(tag_p_o),
        .O(\temp[9]_i_1_n_0 ));
  FDRE \temp_reg[0] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[0]_i_1_n_0 ),
        .Q(temp[0]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[10] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[10]_i_1_n_0 ),
        .Q(temp[10]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[11] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[11]_i_1_n_0 ),
        .Q(temp[11]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[12] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[12]_i_1_n_0 ),
        .Q(temp[12]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[13] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[13]_i_1_n_0 ),
        .Q(temp[13]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[14] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[14]_i_1_n_0 ),
        .Q(temp[14]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[15] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[15]_i_1_n_0 ),
        .Q(temp[15]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[1] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[1]_i_1_n_0 ),
        .Q(temp[1]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[2] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[2]_i_1_n_0 ),
        .Q(temp[2]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[3] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[3]_i_1_n_0 ),
        .Q(temp[3]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[4] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[4]_i_1_n_0 ),
        .Q(temp[4]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[5] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[5]_i_1_n_0 ),
        .Q(temp[5]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[6] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[6]_i_1_n_0 ),
        .Q(temp[6]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[7] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[7]_i_1_n_0 ),
        .Q(temp[7]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[8] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[8]_i_1_n_0 ),
        .Q(temp[8]),
        .R(deglitcher_inst_a_n_0));
  FDRE \temp_reg[9] 
       (.C(clk_ddmtd_i),
        .CE(temp_0),
        .D(\temp[9]_i_1_n_0 ),
        .Q(temp[9]),
        .R(deglitcher_inst_a_n_0));
endmodule

(* ORIG_REF_NAME = "deglitcher" *) 
module ddmtd_system_bd_ddmtd_0_0_deglitcher
   (SR,
    free_cntr_reg,
    clk_sampled_o,
    tag_p_o,
    S,
    Q,
    \tag_o_reg[7]_0 ,
    \tag_o_reg[11]_0 ,
    \tag_o_reg[15]_0 ,
    \FSM_onehot_state_reg[2]_0 ,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[0]_0 ,
    clk_a_i,
    clk_ddmtd_i,
    \phase_diff_o_reg[15] ,
    pd_state,
    deglitch_threshold_i,
    \phase_diff_o_reg[15]_0 ,
    rst_n_ddmtdclk_i,
    E);
  output [0:0]SR;
  output [15:0]free_cntr_reg;
  output clk_sampled_o;
  output tag_p_o;
  output [3:0]S;
  output [15:0]Q;
  output [3:0]\tag_o_reg[7]_0 ;
  output [3:0]\tag_o_reg[11]_0 ;
  output [3:0]\tag_o_reg[15]_0 ;
  output \FSM_onehot_state_reg[2]_0 ;
  output \FSM_onehot_state_reg[1]_0 ;
  output \FSM_onehot_state_reg[0]_0 ;
  input clk_a_i;
  input clk_ddmtd_i;
  input [15:0]\phase_diff_o_reg[15] ;
  input [1:0]pd_state;
  input [15:0]deglitch_threshold_i;
  input [14:0]\phase_diff_o_reg[15]_0 ;
  input rst_n_ddmtdclk_i;
  input [0:0]E;

  wire [0:0]E;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire [15:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire clk_a_i;
  wire clk_ddmtd_i;
  wire clk_sampled_o;
  wire data0;
  wire [15:0]deglitch_threshold_i;
  wire \free_cntr[0]_i_2_n_0 ;
  wire [15:0]free_cntr_reg;
  wire \free_cntr_reg[0]_i_1_n_0 ;
  wire \free_cntr_reg[0]_i_1_n_1 ;
  wire \free_cntr_reg[0]_i_1_n_2 ;
  wire \free_cntr_reg[0]_i_1_n_3 ;
  wire \free_cntr_reg[0]_i_1_n_4 ;
  wire \free_cntr_reg[0]_i_1_n_5 ;
  wire \free_cntr_reg[0]_i_1_n_6 ;
  wire \free_cntr_reg[0]_i_1_n_7 ;
  wire \free_cntr_reg[12]_i_1_n_1 ;
  wire \free_cntr_reg[12]_i_1_n_2 ;
  wire \free_cntr_reg[12]_i_1_n_3 ;
  wire \free_cntr_reg[12]_i_1_n_4 ;
  wire \free_cntr_reg[12]_i_1_n_5 ;
  wire \free_cntr_reg[12]_i_1_n_6 ;
  wire \free_cntr_reg[12]_i_1_n_7 ;
  wire \free_cntr_reg[4]_i_1_n_0 ;
  wire \free_cntr_reg[4]_i_1_n_1 ;
  wire \free_cntr_reg[4]_i_1_n_2 ;
  wire \free_cntr_reg[4]_i_1_n_3 ;
  wire \free_cntr_reg[4]_i_1_n_4 ;
  wire \free_cntr_reg[4]_i_1_n_5 ;
  wire \free_cntr_reg[4]_i_1_n_6 ;
  wire \free_cntr_reg[4]_i_1_n_7 ;
  wire \free_cntr_reg[8]_i_1_n_0 ;
  wire \free_cntr_reg[8]_i_1_n_1 ;
  wire \free_cntr_reg[8]_i_1_n_2 ;
  wire \free_cntr_reg[8]_i_1_n_3 ;
  wire \free_cntr_reg[8]_i_1_n_4 ;
  wire \free_cntr_reg[8]_i_1_n_5 ;
  wire \free_cntr_reg[8]_i_1_n_6 ;
  wire \free_cntr_reg[8]_i_1_n_7 ;
  wire [15:1]p_0_in;
  wire [1:0]pd_state;
  wire [15:0]\phase_diff_o_reg[15] ;
  wire [14:0]\phase_diff_o_reg[15]_0 ;
  wire rst_n_ddmtdclk_i;
  wire sampler_inst_n_2;
  wire sampler_inst_n_3;
  wire sampler_inst_n_4;
  wire sampler_inst_n_5;
  wire [15:0]stab_cntr;
  wire stab_cntr0_carry__0_n_0;
  wire stab_cntr0_carry__0_n_1;
  wire stab_cntr0_carry__0_n_2;
  wire stab_cntr0_carry__0_n_3;
  wire stab_cntr0_carry__1_n_0;
  wire stab_cntr0_carry__1_n_1;
  wire stab_cntr0_carry__1_n_2;
  wire stab_cntr0_carry__1_n_3;
  wire stab_cntr0_carry__2_n_2;
  wire stab_cntr0_carry__2_n_3;
  wire stab_cntr0_carry_n_0;
  wire stab_cntr0_carry_n_1;
  wire stab_cntr0_carry_n_2;
  wire stab_cntr0_carry_n_3;
  wire stab_cntr1_carry__0_i_1__0_n_0;
  wire stab_cntr1_carry__0_i_2_n_0;
  wire stab_cntr1_carry__0_n_3;
  wire stab_cntr1_carry_i_1_n_0;
  wire stab_cntr1_carry_i_2_n_0;
  wire stab_cntr1_carry_i_3_n_0;
  wire stab_cntr1_carry_i_4_n_0;
  wire stab_cntr1_carry_n_0;
  wire stab_cntr1_carry_n_1;
  wire stab_cntr1_carry_n_2;
  wire stab_cntr1_carry_n_3;
  wire \stab_cntr[0]_i_1_n_0 ;
  wire \stab_cntr[10]_i_1_n_0 ;
  wire \stab_cntr[11]_i_1_n_0 ;
  wire \stab_cntr[12]_i_1_n_0 ;
  wire \stab_cntr[13]_i_1_n_0 ;
  wire \stab_cntr[14]_i_1_n_0 ;
  wire \stab_cntr[15]_i_1_n_0 ;
  wire \stab_cntr[1]_i_1_n_0 ;
  wire \stab_cntr[2]_i_1_n_0 ;
  wire \stab_cntr[3]_i_1_n_0 ;
  wire \stab_cntr[4]_i_1_n_0 ;
  wire \stab_cntr[5]_i_1_n_0 ;
  wire \stab_cntr[6]_i_1_n_0 ;
  wire \stab_cntr[7]_i_1_n_0 ;
  wire \stab_cntr[8]_i_1_n_0 ;
  wire \stab_cntr[9]_i_1_n_0 ;
  wire tag_int0_carry__0_n_0;
  wire tag_int0_carry__0_n_1;
  wire tag_int0_carry__0_n_2;
  wire tag_int0_carry__0_n_3;
  wire tag_int0_carry__0_n_4;
  wire tag_int0_carry__0_n_5;
  wire tag_int0_carry__0_n_6;
  wire tag_int0_carry__0_n_7;
  wire tag_int0_carry__1_n_0;
  wire tag_int0_carry__1_n_1;
  wire tag_int0_carry__1_n_2;
  wire tag_int0_carry__1_n_3;
  wire tag_int0_carry__1_n_4;
  wire tag_int0_carry__1_n_5;
  wire tag_int0_carry__1_n_6;
  wire tag_int0_carry__1_n_7;
  wire tag_int0_carry__2_n_2;
  wire tag_int0_carry__2_n_3;
  wire tag_int0_carry__2_n_5;
  wire tag_int0_carry__2_n_6;
  wire tag_int0_carry__2_n_7;
  wire tag_int0_carry_n_0;
  wire tag_int0_carry_n_1;
  wire tag_int0_carry_n_2;
  wire tag_int0_carry_n_3;
  wire tag_int0_carry_n_4;
  wire tag_int0_carry_n_5;
  wire tag_int0_carry_n_6;
  wire tag_int0_carry_n_7;
  wire \tag_int[0]_i_1_n_0 ;
  wire \tag_int[10]_i_1_n_0 ;
  wire \tag_int[11]_i_1_n_0 ;
  wire \tag_int[12]_i_1_n_0 ;
  wire \tag_int[13]_i_1_n_0 ;
  wire \tag_int[14]_i_1_n_0 ;
  wire \tag_int[15]_i_2_n_0 ;
  wire \tag_int[1]_i_1_n_0 ;
  wire \tag_int[2]_i_1_n_0 ;
  wire \tag_int[3]_i_1_n_0 ;
  wire \tag_int[4]_i_1_n_0 ;
  wire \tag_int[5]_i_1_n_0 ;
  wire \tag_int[6]_i_1_n_0 ;
  wire \tag_int[7]_i_1_n_0 ;
  wire \tag_int[8]_i_1_n_0 ;
  wire \tag_int[9]_i_1_n_0 ;
  wire \tag_int_reg_n_0_[0] ;
  wire \tag_int_reg_n_0_[10] ;
  wire \tag_int_reg_n_0_[11] ;
  wire \tag_int_reg_n_0_[12] ;
  wire \tag_int_reg_n_0_[13] ;
  wire \tag_int_reg_n_0_[14] ;
  wire \tag_int_reg_n_0_[15] ;
  wire \tag_int_reg_n_0_[1] ;
  wire \tag_int_reg_n_0_[2] ;
  wire \tag_int_reg_n_0_[3] ;
  wire \tag_int_reg_n_0_[4] ;
  wire \tag_int_reg_n_0_[5] ;
  wire \tag_int_reg_n_0_[6] ;
  wire \tag_int_reg_n_0_[7] ;
  wire \tag_int_reg_n_0_[8] ;
  wire \tag_int_reg_n_0_[9] ;
  wire \tag_o[15]_i_1__0_n_0 ;
  wire [3:0]\tag_o_reg[11]_0 ;
  wire [3:0]\tag_o_reg[15]_0 ;
  wire [3:0]\tag_o_reg[7]_0 ;
  wire tag_p_o;
  wire tag_p_o_i_1__0_n_0;
  wire [3:3]\NLW_free_cntr_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]NLW_stab_cntr0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_stab_cntr0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_stab_cntr1_carry_O_UNCONNECTED;
  wire [3:2]NLW_stab_cntr1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_stab_cntr1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_tag_int0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_tag_int0_carry__2_O_UNCONNECTED;

  (* FSM_ENCODED_STATES = "WAIT_STABLE_0:001,WAIT_EDGE:010,GOT_EDGE:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(sampler_inst_n_5),
        .Q(\FSM_onehot_state_reg[0]_0 ),
        .S(SR));
  (* FSM_ENCODED_STATES = "WAIT_STABLE_0:001,WAIT_EDGE:010,GOT_EDGE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(sampler_inst_n_4),
        .Q(\FSM_onehot_state_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WAIT_STABLE_0:001,WAIT_EDGE:010,GOT_EDGE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(sampler_inst_n_3),
        .Q(\FSM_onehot_state_reg[2]_0 ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \free_cntr[0]_i_2 
       (.I0(free_cntr_reg[0]),
        .O(\free_cntr[0]_i_2_n_0 ));
  FDRE \free_cntr_reg[0] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[0]_i_1_n_7 ),
        .Q(free_cntr_reg[0]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \free_cntr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\free_cntr_reg[0]_i_1_n_0 ,\free_cntr_reg[0]_i_1_n_1 ,\free_cntr_reg[0]_i_1_n_2 ,\free_cntr_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\free_cntr_reg[0]_i_1_n_4 ,\free_cntr_reg[0]_i_1_n_5 ,\free_cntr_reg[0]_i_1_n_6 ,\free_cntr_reg[0]_i_1_n_7 }),
        .S({free_cntr_reg[3:1],\free_cntr[0]_i_2_n_0 }));
  FDRE \free_cntr_reg[10] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[8]_i_1_n_5 ),
        .Q(free_cntr_reg[10]),
        .R(SR));
  FDRE \free_cntr_reg[11] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[8]_i_1_n_4 ),
        .Q(free_cntr_reg[11]),
        .R(SR));
  FDRE \free_cntr_reg[12] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[12]_i_1_n_7 ),
        .Q(free_cntr_reg[12]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \free_cntr_reg[12]_i_1 
       (.CI(\free_cntr_reg[8]_i_1_n_0 ),
        .CO({\NLW_free_cntr_reg[12]_i_1_CO_UNCONNECTED [3],\free_cntr_reg[12]_i_1_n_1 ,\free_cntr_reg[12]_i_1_n_2 ,\free_cntr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\free_cntr_reg[12]_i_1_n_4 ,\free_cntr_reg[12]_i_1_n_5 ,\free_cntr_reg[12]_i_1_n_6 ,\free_cntr_reg[12]_i_1_n_7 }),
        .S(free_cntr_reg[15:12]));
  FDRE \free_cntr_reg[13] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[12]_i_1_n_6 ),
        .Q(free_cntr_reg[13]),
        .R(SR));
  FDRE \free_cntr_reg[14] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[12]_i_1_n_5 ),
        .Q(free_cntr_reg[14]),
        .R(SR));
  FDRE \free_cntr_reg[15] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[12]_i_1_n_4 ),
        .Q(free_cntr_reg[15]),
        .R(SR));
  FDRE \free_cntr_reg[1] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[0]_i_1_n_6 ),
        .Q(free_cntr_reg[1]),
        .R(SR));
  FDRE \free_cntr_reg[2] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[0]_i_1_n_5 ),
        .Q(free_cntr_reg[2]),
        .R(SR));
  FDRE \free_cntr_reg[3] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[0]_i_1_n_4 ),
        .Q(free_cntr_reg[3]),
        .R(SR));
  FDRE \free_cntr_reg[4] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[4]_i_1_n_7 ),
        .Q(free_cntr_reg[4]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \free_cntr_reg[4]_i_1 
       (.CI(\free_cntr_reg[0]_i_1_n_0 ),
        .CO({\free_cntr_reg[4]_i_1_n_0 ,\free_cntr_reg[4]_i_1_n_1 ,\free_cntr_reg[4]_i_1_n_2 ,\free_cntr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\free_cntr_reg[4]_i_1_n_4 ,\free_cntr_reg[4]_i_1_n_5 ,\free_cntr_reg[4]_i_1_n_6 ,\free_cntr_reg[4]_i_1_n_7 }),
        .S(free_cntr_reg[7:4]));
  FDRE \free_cntr_reg[5] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[4]_i_1_n_6 ),
        .Q(free_cntr_reg[5]),
        .R(SR));
  FDRE \free_cntr_reg[6] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[4]_i_1_n_5 ),
        .Q(free_cntr_reg[6]),
        .R(SR));
  FDRE \free_cntr_reg[7] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[4]_i_1_n_4 ),
        .Q(free_cntr_reg[7]),
        .R(SR));
  FDRE \free_cntr_reg[8] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[8]_i_1_n_7 ),
        .Q(free_cntr_reg[8]),
        .R(SR));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \free_cntr_reg[8]_i_1 
       (.CI(\free_cntr_reg[4]_i_1_n_0 ),
        .CO({\free_cntr_reg[8]_i_1_n_0 ,\free_cntr_reg[8]_i_1_n_1 ,\free_cntr_reg[8]_i_1_n_2 ,\free_cntr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\free_cntr_reg[8]_i_1_n_4 ,\free_cntr_reg[8]_i_1_n_5 ,\free_cntr_reg[8]_i_1_n_6 ,\free_cntr_reg[8]_i_1_n_7 }),
        .S(free_cntr_reg[11:8]));
  FDRE \free_cntr_reg[9] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(\free_cntr_reg[8]_i_1_n_6 ),
        .Q(free_cntr_reg[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry__0_i_5
       (.I0(Q[7]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [6]),
        .I4(\phase_diff_o_reg[15] [7]),
        .O(\tag_o_reg[7]_0 [3]));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry__0_i_6
       (.I0(Q[6]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [5]),
        .I4(\phase_diff_o_reg[15] [6]),
        .O(\tag_o_reg[7]_0 [2]));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry__0_i_7
       (.I0(Q[5]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [4]),
        .I4(\phase_diff_o_reg[15] [5]),
        .O(\tag_o_reg[7]_0 [1]));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry__0_i_8
       (.I0(Q[4]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [3]),
        .I4(\phase_diff_o_reg[15] [4]),
        .O(\tag_o_reg[7]_0 [0]));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry__1_i_5
       (.I0(Q[11]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [10]),
        .I4(\phase_diff_o_reg[15] [11]),
        .O(\tag_o_reg[11]_0 [3]));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry__1_i_6
       (.I0(Q[10]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [9]),
        .I4(\phase_diff_o_reg[15] [10]),
        .O(\tag_o_reg[11]_0 [2]));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry__1_i_7
       (.I0(Q[9]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [8]),
        .I4(\phase_diff_o_reg[15] [9]),
        .O(\tag_o_reg[11]_0 [1]));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry__1_i_8
       (.I0(Q[8]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [7]),
        .I4(\phase_diff_o_reg[15] [8]),
        .O(\tag_o_reg[11]_0 [0]));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry__2_i_4
       (.I0(Q[15]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [14]),
        .I4(\phase_diff_o_reg[15] [15]),
        .O(\tag_o_reg[15]_0 [3]));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry__2_i_5
       (.I0(Q[14]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [13]),
        .I4(\phase_diff_o_reg[15] [14]),
        .O(\tag_o_reg[15]_0 [2]));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry__2_i_6
       (.I0(Q[13]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [12]),
        .I4(\phase_diff_o_reg[15] [13]),
        .O(\tag_o_reg[15]_0 [1]));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry__2_i_7
       (.I0(Q[12]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [11]),
        .I4(\phase_diff_o_reg[15] [12]),
        .O(\tag_o_reg[15]_0 [0]));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry_i_5
       (.I0(Q[3]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [2]),
        .I4(\phase_diff_o_reg[15] [3]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry_i_6
       (.I0(Q[2]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [1]),
        .I4(\phase_diff_o_reg[15] [2]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h1E22112D)) 
    i__carry_i_7
       (.I0(Q[1]),
        .I1(pd_state[0]),
        .I2(pd_state[1]),
        .I3(\phase_diff_o_reg[15]_0 [0]),
        .I4(\phase_diff_o_reg[15] [1]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h0AC5)) 
    i__carry_i_8
       (.I0(Q[0]),
        .I1(\phase_diff_o_reg[15] [0]),
        .I2(pd_state[0]),
        .I3(pd_state[1]),
        .O(S[0]));
  ddmtd_system_bd_ddmtd_0_0_sampler_1 sampler_inst
       (.CO(data0),
        .E(sampler_inst_n_2),
        .\FSM_onehot_state_reg[0] (sampler_inst_n_3),
        .\FSM_onehot_state_reg[0]_0 (sampler_inst_n_4),
        .\FSM_onehot_state_reg[0]_1 (sampler_inst_n_5),
        .\FSM_onehot_state_reg[0]_2 (\FSM_onehot_state_reg[0]_0 ),
        .clk_a_i(clk_a_i),
        .clk_ddmtd_i(clk_ddmtd_i),
        .clk_sampled_o_reg_0(clk_sampled_o),
        .rst_n_ddmtdclk_i(rst_n_ddmtdclk_i),
        .rst_n_ddmtdclk_i_0(SR),
        .\tag_int_reg[0] (\FSM_onehot_state_reg[1]_0 ),
        .\tag_int_reg[0]_0 (\FSM_onehot_state_reg[2]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 stab_cntr0_carry
       (.CI(1'b0),
        .CO({stab_cntr0_carry_n_0,stab_cntr0_carry_n_1,stab_cntr0_carry_n_2,stab_cntr0_carry_n_3}),
        .CYINIT(stab_cntr[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[4:1]),
        .S(stab_cntr[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 stab_cntr0_carry__0
       (.CI(stab_cntr0_carry_n_0),
        .CO({stab_cntr0_carry__0_n_0,stab_cntr0_carry__0_n_1,stab_cntr0_carry__0_n_2,stab_cntr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:5]),
        .S(stab_cntr[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 stab_cntr0_carry__1
       (.CI(stab_cntr0_carry__0_n_0),
        .CO({stab_cntr0_carry__1_n_0,stab_cntr0_carry__1_n_1,stab_cntr0_carry__1_n_2,stab_cntr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[12:9]),
        .S(stab_cntr[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 stab_cntr0_carry__2
       (.CI(stab_cntr0_carry__1_n_0),
        .CO({NLW_stab_cntr0_carry__2_CO_UNCONNECTED[3:2],stab_cntr0_carry__2_n_2,stab_cntr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_stab_cntr0_carry__2_O_UNCONNECTED[3],p_0_in[15:13]}),
        .S({1'b0,stab_cntr[15:13]}));
  CARRY4 stab_cntr1_carry
       (.CI(1'b0),
        .CO({stab_cntr1_carry_n_0,stab_cntr1_carry_n_1,stab_cntr1_carry_n_2,stab_cntr1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_stab_cntr1_carry_O_UNCONNECTED[3:0]),
        .S({stab_cntr1_carry_i_1_n_0,stab_cntr1_carry_i_2_n_0,stab_cntr1_carry_i_3_n_0,stab_cntr1_carry_i_4_n_0}));
  CARRY4 stab_cntr1_carry__0
       (.CI(stab_cntr1_carry_n_0),
        .CO({NLW_stab_cntr1_carry__0_CO_UNCONNECTED[3:2],data0,stab_cntr1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_stab_cntr1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,stab_cntr1_carry__0_i_1__0_n_0,stab_cntr1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    stab_cntr1_carry__0_i_1__0
       (.I0(deglitch_threshold_i[15]),
        .I1(stab_cntr[15]),
        .O(stab_cntr1_carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    stab_cntr1_carry__0_i_2
       (.I0(stab_cntr[12]),
        .I1(deglitch_threshold_i[12]),
        .I2(deglitch_threshold_i[14]),
        .I3(stab_cntr[14]),
        .I4(deglitch_threshold_i[13]),
        .I5(stab_cntr[13]),
        .O(stab_cntr1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    stab_cntr1_carry_i_1
       (.I0(stab_cntr[9]),
        .I1(deglitch_threshold_i[9]),
        .I2(deglitch_threshold_i[11]),
        .I3(stab_cntr[11]),
        .I4(deglitch_threshold_i[10]),
        .I5(stab_cntr[10]),
        .O(stab_cntr1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    stab_cntr1_carry_i_2
       (.I0(stab_cntr[6]),
        .I1(deglitch_threshold_i[6]),
        .I2(deglitch_threshold_i[8]),
        .I3(stab_cntr[8]),
        .I4(deglitch_threshold_i[7]),
        .I5(stab_cntr[7]),
        .O(stab_cntr1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    stab_cntr1_carry_i_3
       (.I0(stab_cntr[3]),
        .I1(deglitch_threshold_i[3]),
        .I2(deglitch_threshold_i[5]),
        .I3(stab_cntr[5]),
        .I4(deglitch_threshold_i[4]),
        .I5(stab_cntr[4]),
        .O(stab_cntr1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    stab_cntr1_carry_i_4
       (.I0(stab_cntr[0]),
        .I1(deglitch_threshold_i[0]),
        .I2(deglitch_threshold_i[2]),
        .I3(stab_cntr[2]),
        .I4(deglitch_threshold_i[1]),
        .I5(stab_cntr[1]),
        .O(stab_cntr1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h02320202)) 
    \stab_cntr[0]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr[0]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[10]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[10]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[11]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[11]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[12]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[12]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[13]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[13]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[14]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[14]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[15]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[15]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[1]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[1]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[2]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[2]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[3]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[3]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[4]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[4]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[5]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[5]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[6]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[6]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[7]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[7]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[8]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[8]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[9]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(p_0_in[9]),
        .I2(clk_sampled_o),
        .I3(data0),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[9]_i_1_n_0 ));
  FDRE \stab_cntr_reg[0] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[0]_i_1_n_0 ),
        .Q(stab_cntr[0]),
        .R(SR));
  FDRE \stab_cntr_reg[10] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[10]_i_1_n_0 ),
        .Q(stab_cntr[10]),
        .R(SR));
  FDRE \stab_cntr_reg[11] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[11]_i_1_n_0 ),
        .Q(stab_cntr[11]),
        .R(SR));
  FDRE \stab_cntr_reg[12] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[12]_i_1_n_0 ),
        .Q(stab_cntr[12]),
        .R(SR));
  FDRE \stab_cntr_reg[13] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[13]_i_1_n_0 ),
        .Q(stab_cntr[13]),
        .R(SR));
  FDRE \stab_cntr_reg[14] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[14]_i_1_n_0 ),
        .Q(stab_cntr[14]),
        .R(SR));
  FDRE \stab_cntr_reg[15] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[15]_i_1_n_0 ),
        .Q(stab_cntr[15]),
        .R(SR));
  FDRE \stab_cntr_reg[1] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[1]_i_1_n_0 ),
        .Q(stab_cntr[1]),
        .R(SR));
  FDRE \stab_cntr_reg[2] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[2]_i_1_n_0 ),
        .Q(stab_cntr[2]),
        .R(SR));
  FDRE \stab_cntr_reg[3] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[3]_i_1_n_0 ),
        .Q(stab_cntr[3]),
        .R(SR));
  FDRE \stab_cntr_reg[4] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[4]_i_1_n_0 ),
        .Q(stab_cntr[4]),
        .R(SR));
  FDRE \stab_cntr_reg[5] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[5]_i_1_n_0 ),
        .Q(stab_cntr[5]),
        .R(SR));
  FDRE \stab_cntr_reg[6] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[6]_i_1_n_0 ),
        .Q(stab_cntr[6]),
        .R(SR));
  FDRE \stab_cntr_reg[7] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[7]_i_1_n_0 ),
        .Q(stab_cntr[7]),
        .R(SR));
  FDRE \stab_cntr_reg[8] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[8]_i_1_n_0 ),
        .Q(stab_cntr[8]),
        .R(SR));
  FDRE \stab_cntr_reg[9] 
       (.C(clk_ddmtd_i),
        .CE(E),
        .D(\stab_cntr[9]_i_1_n_0 ),
        .Q(stab_cntr[9]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tag_int0_carry
       (.CI(1'b0),
        .CO({tag_int0_carry_n_0,tag_int0_carry_n_1,tag_int0_carry_n_2,tag_int0_carry_n_3}),
        .CYINIT(\tag_int_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({tag_int0_carry_n_4,tag_int0_carry_n_5,tag_int0_carry_n_6,tag_int0_carry_n_7}),
        .S({\tag_int_reg_n_0_[4] ,\tag_int_reg_n_0_[3] ,\tag_int_reg_n_0_[2] ,\tag_int_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tag_int0_carry__0
       (.CI(tag_int0_carry_n_0),
        .CO({tag_int0_carry__0_n_0,tag_int0_carry__0_n_1,tag_int0_carry__0_n_2,tag_int0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({tag_int0_carry__0_n_4,tag_int0_carry__0_n_5,tag_int0_carry__0_n_6,tag_int0_carry__0_n_7}),
        .S({\tag_int_reg_n_0_[8] ,\tag_int_reg_n_0_[7] ,\tag_int_reg_n_0_[6] ,\tag_int_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tag_int0_carry__1
       (.CI(tag_int0_carry__0_n_0),
        .CO({tag_int0_carry__1_n_0,tag_int0_carry__1_n_1,tag_int0_carry__1_n_2,tag_int0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({tag_int0_carry__1_n_4,tag_int0_carry__1_n_5,tag_int0_carry__1_n_6,tag_int0_carry__1_n_7}),
        .S({\tag_int_reg_n_0_[12] ,\tag_int_reg_n_0_[11] ,\tag_int_reg_n_0_[10] ,\tag_int_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tag_int0_carry__2
       (.CI(tag_int0_carry__1_n_0),
        .CO({NLW_tag_int0_carry__2_CO_UNCONNECTED[3:2],tag_int0_carry__2_n_2,tag_int0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tag_int0_carry__2_O_UNCONNECTED[3],tag_int0_carry__2_n_5,tag_int0_carry__2_n_6,tag_int0_carry__2_n_7}),
        .S({1'b0,\tag_int_reg_n_0_[15] ,\tag_int_reg_n_0_[14] ,\tag_int_reg_n_0_[13] }));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \tag_int[0]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(\tag_int_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[0]),
        .O(\tag_int[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[10]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__1_n_6),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[10]),
        .O(\tag_int[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[11]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__1_n_5),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[11]),
        .O(\tag_int[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[12]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__1_n_4),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[12]),
        .O(\tag_int[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[13]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__2_n_7),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[13]),
        .O(\tag_int[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[14]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__2_n_6),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[14]),
        .O(\tag_int[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[15]_i_2 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__2_n_5),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[15]),
        .O(\tag_int[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[1]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry_n_7),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[1]),
        .O(\tag_int[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[2]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry_n_6),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[2]),
        .O(\tag_int[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[3]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry_n_5),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[3]),
        .O(\tag_int[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[4]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry_n_4),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[4]),
        .O(\tag_int[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[5]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__0_n_7),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[5]),
        .O(\tag_int[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[6]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__0_n_6),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[6]),
        .O(\tag_int[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[7]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__0_n_5),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[7]),
        .O(\tag_int[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[8]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__0_n_4),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[8]),
        .O(\tag_int[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[9]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__1_n_7),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[9]),
        .O(\tag_int[9]_i_1_n_0 ));
  FDRE \tag_int_reg[0] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[0]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[0] ),
        .R(SR));
  FDRE \tag_int_reg[10] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[10]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[10] ),
        .R(SR));
  FDRE \tag_int_reg[11] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[11]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[11] ),
        .R(SR));
  FDRE \tag_int_reg[12] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[12]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[12] ),
        .R(SR));
  FDRE \tag_int_reg[13] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[13]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[13] ),
        .R(SR));
  FDRE \tag_int_reg[14] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[14]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[14] ),
        .R(SR));
  FDRE \tag_int_reg[15] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[15]_i_2_n_0 ),
        .Q(\tag_int_reg_n_0_[15] ),
        .R(SR));
  FDRE \tag_int_reg[1] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[1]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[1] ),
        .R(SR));
  FDRE \tag_int_reg[2] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[2]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[2] ),
        .R(SR));
  FDRE \tag_int_reg[3] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[3]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[3] ),
        .R(SR));
  FDRE \tag_int_reg[4] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[4]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[4] ),
        .R(SR));
  FDRE \tag_int_reg[5] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[5]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[5] ),
        .R(SR));
  FDRE \tag_int_reg[6] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[6]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[6] ),
        .R(SR));
  FDRE \tag_int_reg[7] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[7]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[7] ),
        .R(SR));
  FDRE \tag_int_reg[8] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[8]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[8] ),
        .R(SR));
  FDRE \tag_int_reg[9] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_2),
        .D(\tag_int[9]_i_1_n_0 ),
        .Q(\tag_int_reg_n_0_[9] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \tag_o[15]_i_1__0 
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(data0),
        .O(\tag_o[15]_i_1__0_n_0 ));
  FDRE \tag_o_reg[0] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(SR));
  FDRE \tag_o_reg[10] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[10] ),
        .Q(Q[10]),
        .R(SR));
  FDRE \tag_o_reg[11] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[11] ),
        .Q(Q[11]),
        .R(SR));
  FDRE \tag_o_reg[12] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[12] ),
        .Q(Q[12]),
        .R(SR));
  FDRE \tag_o_reg[13] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[13] ),
        .Q(Q[13]),
        .R(SR));
  FDRE \tag_o_reg[14] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[14] ),
        .Q(Q[14]),
        .R(SR));
  FDRE \tag_o_reg[15] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[15] ),
        .Q(Q[15]),
        .R(SR));
  FDRE \tag_o_reg[1] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[1] ),
        .Q(Q[1]),
        .R(SR));
  FDRE \tag_o_reg[2] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[2] ),
        .Q(Q[2]),
        .R(SR));
  FDRE \tag_o_reg[3] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[3] ),
        .Q(Q[3]),
        .R(SR));
  FDRE \tag_o_reg[4] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[4] ),
        .Q(Q[4]),
        .R(SR));
  FDRE \tag_o_reg[5] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[5] ),
        .Q(Q[5]),
        .R(SR));
  FDRE \tag_o_reg[6] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[6] ),
        .Q(Q[6]),
        .R(SR));
  FDRE \tag_o_reg[7] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[7] ),
        .Q(Q[7]),
        .R(SR));
  FDRE \tag_o_reg[8] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[8] ),
        .Q(Q[8]),
        .R(SR));
  FDRE \tag_o_reg[9] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1__0_n_0 ),
        .D(\tag_int_reg_n_0_[9] ),
        .Q(Q[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hC0D5C0C0)) 
    tag_p_o_i_1__0
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(data0),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(tag_p_o),
        .O(tag_p_o_i_1__0_n_0));
  FDRE tag_p_o_reg
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(tag_p_o_i_1__0_n_0),
        .Q(tag_p_o),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "deglitcher" *) 
module ddmtd_system_bd_ddmtd_0_0_deglitcher_0
   (clk_sampled_o_reg,
    tag_p_o_reg_0,
    tag_p_o_reg_1,
    tag_p_o_reg_2,
    temp0__0,
    E,
    \FSM_onehot_state_reg[2]_0 ,
    \FSM_onehot_state_reg[1]_0 ,
    \FSM_onehot_state_reg[0]_0 ,
    Q,
    SR,
    clk_b_i,
    clk_ddmtd_i,
    deglitch_threshold_i,
    pd_state,
    tag_p_o,
    in7,
    rst_n_ddmtdclk_i,
    \stab_cntr_reg[15]_0 ,
    free_cntr_reg);
  output clk_sampled_o_reg;
  output tag_p_o_reg_0;
  output tag_p_o_reg_1;
  output tag_p_o_reg_2;
  output [14:0]temp0__0;
  output [0:0]E;
  output \FSM_onehot_state_reg[2]_0 ;
  output \FSM_onehot_state_reg[1]_0 ;
  output \FSM_onehot_state_reg[0]_0 ;
  output [15:0]Q;
  input [0:0]SR;
  input clk_b_i;
  input clk_ddmtd_i;
  input [15:0]deglitch_threshold_i;
  input [1:0]pd_state;
  input tag_p_o;
  input [15:0]in7;
  input rst_n_ddmtdclk_i;
  input [0:0]\stab_cntr_reg[15]_0 ;
  input [15:0]free_cntr_reg;

  wire [0:0]E;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire [15:0]Q;
  wire [0:0]SR;
  wire clk_b_i;
  wire clk_ddmtd_i;
  wire clk_sampled_o_reg;
  wire [15:0]deglitch_threshold_i;
  wire [15:0]free_cntr_reg;
  wire [15:0]in7;
  wire [1:0]pd_state;
  wire rst_n_ddmtdclk_i;
  wire sampler_inst_n_1;
  wire sampler_inst_n_2;
  wire sampler_inst_n_3;
  wire sampler_inst_n_4;
  wire stab_cntr0_carry__0_n_0;
  wire stab_cntr0_carry__0_n_1;
  wire stab_cntr0_carry__0_n_2;
  wire stab_cntr0_carry__0_n_3;
  wire stab_cntr0_carry__0_n_4;
  wire stab_cntr0_carry__0_n_5;
  wire stab_cntr0_carry__0_n_6;
  wire stab_cntr0_carry__0_n_7;
  wire stab_cntr0_carry__1_n_0;
  wire stab_cntr0_carry__1_n_1;
  wire stab_cntr0_carry__1_n_2;
  wire stab_cntr0_carry__1_n_3;
  wire stab_cntr0_carry__1_n_4;
  wire stab_cntr0_carry__1_n_5;
  wire stab_cntr0_carry__1_n_6;
  wire stab_cntr0_carry__1_n_7;
  wire stab_cntr0_carry__2_n_2;
  wire stab_cntr0_carry__2_n_3;
  wire stab_cntr0_carry__2_n_5;
  wire stab_cntr0_carry__2_n_6;
  wire stab_cntr0_carry__2_n_7;
  wire stab_cntr0_carry_n_0;
  wire stab_cntr0_carry_n_1;
  wire stab_cntr0_carry_n_2;
  wire stab_cntr0_carry_n_3;
  wire stab_cntr0_carry_n_4;
  wire stab_cntr0_carry_n_5;
  wire stab_cntr0_carry_n_6;
  wire stab_cntr0_carry_n_7;
  wire stab_cntr1_carry__0_i_1_n_0;
  wire stab_cntr1_carry__0_i_2__0_n_0;
  wire stab_cntr1_carry__0_n_2;
  wire stab_cntr1_carry__0_n_3;
  wire stab_cntr1_carry_i_1__0_n_0;
  wire stab_cntr1_carry_i_2__0_n_0;
  wire stab_cntr1_carry_i_3__0_n_0;
  wire stab_cntr1_carry_i_4__0_n_0;
  wire stab_cntr1_carry_n_0;
  wire stab_cntr1_carry_n_1;
  wire stab_cntr1_carry_n_2;
  wire stab_cntr1_carry_n_3;
  wire \stab_cntr[0]_i_1_n_0 ;
  wire \stab_cntr[10]_i_1_n_0 ;
  wire \stab_cntr[11]_i_1_n_0 ;
  wire \stab_cntr[12]_i_1_n_0 ;
  wire \stab_cntr[13]_i_1_n_0 ;
  wire \stab_cntr[14]_i_1_n_0 ;
  wire \stab_cntr[15]_i_1_n_0 ;
  wire \stab_cntr[1]_i_1_n_0 ;
  wire \stab_cntr[2]_i_1_n_0 ;
  wire \stab_cntr[3]_i_1_n_0 ;
  wire \stab_cntr[4]_i_1_n_0 ;
  wire \stab_cntr[5]_i_1_n_0 ;
  wire \stab_cntr[6]_i_1_n_0 ;
  wire \stab_cntr[7]_i_1_n_0 ;
  wire \stab_cntr[8]_i_1_n_0 ;
  wire \stab_cntr[9]_i_1_n_0 ;
  wire [0:0]\stab_cntr_reg[15]_0 ;
  wire \stab_cntr_reg_n_0_[0] ;
  wire \stab_cntr_reg_n_0_[10] ;
  wire \stab_cntr_reg_n_0_[11] ;
  wire \stab_cntr_reg_n_0_[12] ;
  wire \stab_cntr_reg_n_0_[13] ;
  wire \stab_cntr_reg_n_0_[14] ;
  wire \stab_cntr_reg_n_0_[15] ;
  wire \stab_cntr_reg_n_0_[1] ;
  wire \stab_cntr_reg_n_0_[2] ;
  wire \stab_cntr_reg_n_0_[3] ;
  wire \stab_cntr_reg_n_0_[4] ;
  wire \stab_cntr_reg_n_0_[5] ;
  wire \stab_cntr_reg_n_0_[6] ;
  wire \stab_cntr_reg_n_0_[7] ;
  wire \stab_cntr_reg_n_0_[8] ;
  wire \stab_cntr_reg_n_0_[9] ;
  wire [15:0]tag_int;
  wire tag_int0_carry__0_n_0;
  wire tag_int0_carry__0_n_1;
  wire tag_int0_carry__0_n_2;
  wire tag_int0_carry__0_n_3;
  wire tag_int0_carry__0_n_4;
  wire tag_int0_carry__0_n_5;
  wire tag_int0_carry__0_n_6;
  wire tag_int0_carry__0_n_7;
  wire tag_int0_carry__1_n_0;
  wire tag_int0_carry__1_n_1;
  wire tag_int0_carry__1_n_2;
  wire tag_int0_carry__1_n_3;
  wire tag_int0_carry__1_n_4;
  wire tag_int0_carry__1_n_5;
  wire tag_int0_carry__1_n_6;
  wire tag_int0_carry__1_n_7;
  wire tag_int0_carry__2_n_2;
  wire tag_int0_carry__2_n_3;
  wire tag_int0_carry__2_n_5;
  wire tag_int0_carry__2_n_6;
  wire tag_int0_carry__2_n_7;
  wire tag_int0_carry_n_0;
  wire tag_int0_carry_n_1;
  wire tag_int0_carry_n_2;
  wire tag_int0_carry_n_3;
  wire tag_int0_carry_n_4;
  wire tag_int0_carry_n_5;
  wire tag_int0_carry_n_6;
  wire tag_int0_carry_n_7;
  wire \tag_int[0]_i_1_n_0 ;
  wire \tag_int[10]_i_1_n_0 ;
  wire \tag_int[11]_i_1_n_0 ;
  wire \tag_int[12]_i_1_n_0 ;
  wire \tag_int[13]_i_1_n_0 ;
  wire \tag_int[14]_i_1_n_0 ;
  wire \tag_int[15]_i_2_n_0 ;
  wire \tag_int[1]_i_1_n_0 ;
  wire \tag_int[2]_i_1_n_0 ;
  wire \tag_int[3]_i_1_n_0 ;
  wire \tag_int[4]_i_1_n_0 ;
  wire \tag_int[5]_i_1_n_0 ;
  wire \tag_int[6]_i_1_n_0 ;
  wire \tag_int[7]_i_1_n_0 ;
  wire \tag_int[8]_i_1_n_0 ;
  wire \tag_int[9]_i_1_n_0 ;
  wire \tag_o[15]_i_1_n_0 ;
  wire tag_p_o;
  wire tag_p_o_i_1_n_0;
  wire tag_p_o_reg_0;
  wire tag_p_o_reg_1;
  wire tag_p_o_reg_2;
  wire [14:0]temp0__0;
  wire \temp_reg[12]_i_2_n_0 ;
  wire \temp_reg[12]_i_2_n_1 ;
  wire \temp_reg[12]_i_2_n_2 ;
  wire \temp_reg[12]_i_2_n_3 ;
  wire \temp_reg[15]_i_2_n_2 ;
  wire \temp_reg[15]_i_2_n_3 ;
  wire \temp_reg[4]_i_2_n_0 ;
  wire \temp_reg[4]_i_2_n_1 ;
  wire \temp_reg[4]_i_2_n_2 ;
  wire \temp_reg[4]_i_2_n_3 ;
  wire \temp_reg[8]_i_2_n_0 ;
  wire \temp_reg[8]_i_2_n_1 ;
  wire \temp_reg[8]_i_2_n_2 ;
  wire \temp_reg[8]_i_2_n_3 ;
  wire [3:2]NLW_stab_cntr0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_stab_cntr0_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_stab_cntr1_carry_O_UNCONNECTED;
  wire [3:2]NLW_stab_cntr1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_stab_cntr1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_tag_int0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_tag_int0_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_temp_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_temp_reg[15]_i_2_O_UNCONNECTED ;

  (* FSM_ENCODED_STATES = "WAIT_STABLE_0:001,WAIT_EDGE:010,GOT_EDGE:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(sampler_inst_n_4),
        .Q(\FSM_onehot_state_reg[0]_0 ),
        .S(SR));
  (* FSM_ENCODED_STATES = "WAIT_STABLE_0:001,WAIT_EDGE:010,GOT_EDGE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(sampler_inst_n_3),
        .Q(\FSM_onehot_state_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WAIT_STABLE_0:001,WAIT_EDGE:010,GOT_EDGE:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(sampler_inst_n_2),
        .Q(\FSM_onehot_state_reg[2]_0 ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hD1D0)) 
    \FSM_sequential_pd_state[0]_i_1 
       (.I0(tag_p_o_reg_0),
        .I1(pd_state[1]),
        .I2(pd_state[0]),
        .I3(tag_p_o),
        .O(tag_p_o_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hC0CE)) 
    \FSM_sequential_pd_state[1]_i_1 
       (.I0(tag_p_o_reg_0),
        .I1(pd_state[1]),
        .I2(pd_state[0]),
        .I3(tag_p_o),
        .O(tag_p_o_reg_1));
  LUT4 #(
    .INIT(16'h2E20)) 
    \phase_diff_o[15]_i_2 
       (.I0(tag_p_o_reg_0),
        .I1(pd_state[1]),
        .I2(pd_state[0]),
        .I3(tag_p_o),
        .O(E));
  ddmtd_system_bd_ddmtd_0_0_sampler sampler_inst
       (.CO(stab_cntr1_carry__0_n_2),
        .E(sampler_inst_n_1),
        .\FSM_onehot_state_reg[0] (sampler_inst_n_2),
        .\FSM_onehot_state_reg[0]_0 (sampler_inst_n_3),
        .\FSM_onehot_state_reg[0]_1 (sampler_inst_n_4),
        .\FSM_onehot_state_reg[0]_2 (\FSM_onehot_state_reg[0]_0 ),
        .SR(SR),
        .clk_b_i(clk_b_i),
        .clk_ddmtd_i(clk_ddmtd_i),
        .clk_sampled_o_reg_0(clk_sampled_o_reg),
        .rst_n_ddmtdclk_i(rst_n_ddmtdclk_i),
        .\tag_int_reg[0] (\FSM_onehot_state_reg[1]_0 ),
        .\tag_int_reg[0]_0 (\FSM_onehot_state_reg[2]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 stab_cntr0_carry
       (.CI(1'b0),
        .CO({stab_cntr0_carry_n_0,stab_cntr0_carry_n_1,stab_cntr0_carry_n_2,stab_cntr0_carry_n_3}),
        .CYINIT(\stab_cntr_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({stab_cntr0_carry_n_4,stab_cntr0_carry_n_5,stab_cntr0_carry_n_6,stab_cntr0_carry_n_7}),
        .S({\stab_cntr_reg_n_0_[4] ,\stab_cntr_reg_n_0_[3] ,\stab_cntr_reg_n_0_[2] ,\stab_cntr_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 stab_cntr0_carry__0
       (.CI(stab_cntr0_carry_n_0),
        .CO({stab_cntr0_carry__0_n_0,stab_cntr0_carry__0_n_1,stab_cntr0_carry__0_n_2,stab_cntr0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({stab_cntr0_carry__0_n_4,stab_cntr0_carry__0_n_5,stab_cntr0_carry__0_n_6,stab_cntr0_carry__0_n_7}),
        .S({\stab_cntr_reg_n_0_[8] ,\stab_cntr_reg_n_0_[7] ,\stab_cntr_reg_n_0_[6] ,\stab_cntr_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 stab_cntr0_carry__1
       (.CI(stab_cntr0_carry__0_n_0),
        .CO({stab_cntr0_carry__1_n_0,stab_cntr0_carry__1_n_1,stab_cntr0_carry__1_n_2,stab_cntr0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({stab_cntr0_carry__1_n_4,stab_cntr0_carry__1_n_5,stab_cntr0_carry__1_n_6,stab_cntr0_carry__1_n_7}),
        .S({\stab_cntr_reg_n_0_[12] ,\stab_cntr_reg_n_0_[11] ,\stab_cntr_reg_n_0_[10] ,\stab_cntr_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 stab_cntr0_carry__2
       (.CI(stab_cntr0_carry__1_n_0),
        .CO({NLW_stab_cntr0_carry__2_CO_UNCONNECTED[3:2],stab_cntr0_carry__2_n_2,stab_cntr0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_stab_cntr0_carry__2_O_UNCONNECTED[3],stab_cntr0_carry__2_n_5,stab_cntr0_carry__2_n_6,stab_cntr0_carry__2_n_7}),
        .S({1'b0,\stab_cntr_reg_n_0_[15] ,\stab_cntr_reg_n_0_[14] ,\stab_cntr_reg_n_0_[13] }));
  CARRY4 stab_cntr1_carry
       (.CI(1'b0),
        .CO({stab_cntr1_carry_n_0,stab_cntr1_carry_n_1,stab_cntr1_carry_n_2,stab_cntr1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_stab_cntr1_carry_O_UNCONNECTED[3:0]),
        .S({stab_cntr1_carry_i_1__0_n_0,stab_cntr1_carry_i_2__0_n_0,stab_cntr1_carry_i_3__0_n_0,stab_cntr1_carry_i_4__0_n_0}));
  CARRY4 stab_cntr1_carry__0
       (.CI(stab_cntr1_carry_n_0),
        .CO({NLW_stab_cntr1_carry__0_CO_UNCONNECTED[3:2],stab_cntr1_carry__0_n_2,stab_cntr1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_stab_cntr1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,stab_cntr1_carry__0_i_1_n_0,stab_cntr1_carry__0_i_2__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    stab_cntr1_carry__0_i_1
       (.I0(deglitch_threshold_i[15]),
        .I1(\stab_cntr_reg_n_0_[15] ),
        .O(stab_cntr1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    stab_cntr1_carry__0_i_2__0
       (.I0(\stab_cntr_reg_n_0_[12] ),
        .I1(deglitch_threshold_i[12]),
        .I2(deglitch_threshold_i[14]),
        .I3(\stab_cntr_reg_n_0_[14] ),
        .I4(deglitch_threshold_i[13]),
        .I5(\stab_cntr_reg_n_0_[13] ),
        .O(stab_cntr1_carry__0_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    stab_cntr1_carry_i_1__0
       (.I0(\stab_cntr_reg_n_0_[9] ),
        .I1(deglitch_threshold_i[9]),
        .I2(deglitch_threshold_i[11]),
        .I3(\stab_cntr_reg_n_0_[11] ),
        .I4(deglitch_threshold_i[10]),
        .I5(\stab_cntr_reg_n_0_[10] ),
        .O(stab_cntr1_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    stab_cntr1_carry_i_2__0
       (.I0(\stab_cntr_reg_n_0_[6] ),
        .I1(deglitch_threshold_i[6]),
        .I2(deglitch_threshold_i[8]),
        .I3(\stab_cntr_reg_n_0_[8] ),
        .I4(deglitch_threshold_i[7]),
        .I5(\stab_cntr_reg_n_0_[7] ),
        .O(stab_cntr1_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    stab_cntr1_carry_i_3__0
       (.I0(\stab_cntr_reg_n_0_[3] ),
        .I1(deglitch_threshold_i[3]),
        .I2(deglitch_threshold_i[5]),
        .I3(\stab_cntr_reg_n_0_[5] ),
        .I4(deglitch_threshold_i[4]),
        .I5(\stab_cntr_reg_n_0_[4] ),
        .O(stab_cntr1_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    stab_cntr1_carry_i_4__0
       (.I0(\stab_cntr_reg_n_0_[0] ),
        .I1(deglitch_threshold_i[0]),
        .I2(deglitch_threshold_i[2]),
        .I3(\stab_cntr_reg_n_0_[2] ),
        .I4(deglitch_threshold_i[1]),
        .I5(\stab_cntr_reg_n_0_[1] ),
        .O(stab_cntr1_carry_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h02320202)) 
    \stab_cntr[0]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\stab_cntr_reg_n_0_[0] ),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[10]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry__1_n_6),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[11]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry__1_n_5),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[12]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry__1_n_4),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[13]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry__2_n_7),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[14]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry__2_n_6),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[15]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry__2_n_5),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[1]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry_n_7),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[2]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry_n_6),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[3]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry_n_5),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[4]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry_n_4),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[5]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry__0_n_7),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[6]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry__0_n_6),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[7]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry__0_n_5),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[8]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry__0_n_4),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08C80808)) 
    \stab_cntr[9]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(stab_cntr0_carry__1_n_7),
        .I2(clk_sampled_o_reg),
        .I3(stab_cntr1_carry__0_n_2),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .O(\stab_cntr[9]_i_1_n_0 ));
  FDRE \stab_cntr_reg[0] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[0]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[0] ),
        .R(SR));
  FDRE \stab_cntr_reg[10] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[10]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[10] ),
        .R(SR));
  FDRE \stab_cntr_reg[11] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[11]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[11] ),
        .R(SR));
  FDRE \stab_cntr_reg[12] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[12]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[12] ),
        .R(SR));
  FDRE \stab_cntr_reg[13] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[13]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[13] ),
        .R(SR));
  FDRE \stab_cntr_reg[14] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[14]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[14] ),
        .R(SR));
  FDRE \stab_cntr_reg[15] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[15]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[15] ),
        .R(SR));
  FDRE \stab_cntr_reg[1] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[1]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[1] ),
        .R(SR));
  FDRE \stab_cntr_reg[2] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[2]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[2] ),
        .R(SR));
  FDRE \stab_cntr_reg[3] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[3]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[3] ),
        .R(SR));
  FDRE \stab_cntr_reg[4] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[4]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[4] ),
        .R(SR));
  FDRE \stab_cntr_reg[5] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[5]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[5] ),
        .R(SR));
  FDRE \stab_cntr_reg[6] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[6]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[6] ),
        .R(SR));
  FDRE \stab_cntr_reg[7] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[7]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[7] ),
        .R(SR));
  FDRE \stab_cntr_reg[8] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[8]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[8] ),
        .R(SR));
  FDRE \stab_cntr_reg[9] 
       (.C(clk_ddmtd_i),
        .CE(\stab_cntr_reg[15]_0 ),
        .D(\stab_cntr[9]_i_1_n_0 ),
        .Q(\stab_cntr_reg_n_0_[9] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tag_int0_carry
       (.CI(1'b0),
        .CO({tag_int0_carry_n_0,tag_int0_carry_n_1,tag_int0_carry_n_2,tag_int0_carry_n_3}),
        .CYINIT(tag_int[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({tag_int0_carry_n_4,tag_int0_carry_n_5,tag_int0_carry_n_6,tag_int0_carry_n_7}),
        .S(tag_int[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tag_int0_carry__0
       (.CI(tag_int0_carry_n_0),
        .CO({tag_int0_carry__0_n_0,tag_int0_carry__0_n_1,tag_int0_carry__0_n_2,tag_int0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({tag_int0_carry__0_n_4,tag_int0_carry__0_n_5,tag_int0_carry__0_n_6,tag_int0_carry__0_n_7}),
        .S(tag_int[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tag_int0_carry__1
       (.CI(tag_int0_carry__0_n_0),
        .CO({tag_int0_carry__1_n_0,tag_int0_carry__1_n_1,tag_int0_carry__1_n_2,tag_int0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({tag_int0_carry__1_n_4,tag_int0_carry__1_n_5,tag_int0_carry__1_n_6,tag_int0_carry__1_n_7}),
        .S(tag_int[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 tag_int0_carry__2
       (.CI(tag_int0_carry__1_n_0),
        .CO({NLW_tag_int0_carry__2_CO_UNCONNECTED[3:2],tag_int0_carry__2_n_2,tag_int0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_tag_int0_carry__2_O_UNCONNECTED[3],tag_int0_carry__2_n_5,tag_int0_carry__2_n_6,tag_int0_carry__2_n_7}),
        .S({1'b0,tag_int[15:13]}));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \tag_int[0]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int[0]),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[0]),
        .O(\tag_int[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[10]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__1_n_6),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[10]),
        .O(\tag_int[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[11]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__1_n_5),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[11]),
        .O(\tag_int[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[12]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__1_n_4),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[12]),
        .O(\tag_int[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[13]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__2_n_7),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[13]),
        .O(\tag_int[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[14]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__2_n_6),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[14]),
        .O(\tag_int[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[15]_i_2 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__2_n_5),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[15]),
        .O(\tag_int[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[1]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry_n_7),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[1]),
        .O(\tag_int[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[2]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry_n_6),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[2]),
        .O(\tag_int[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[3]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry_n_5),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[3]),
        .O(\tag_int[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[4]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry_n_4),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[4]),
        .O(\tag_int[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[5]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__0_n_7),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[5]),
        .O(\tag_int[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[6]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__0_n_6),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[6]),
        .O(\tag_int[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[7]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__0_n_5),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[7]),
        .O(\tag_int[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[8]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__0_n_4),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[8]),
        .O(\tag_int[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \tag_int[9]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(tag_int0_carry__1_n_7),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(free_cntr_reg[9]),
        .O(\tag_int[9]_i_1_n_0 ));
  FDRE \tag_int_reg[0] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[0]_i_1_n_0 ),
        .Q(tag_int[0]),
        .R(SR));
  FDRE \tag_int_reg[10] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[10]_i_1_n_0 ),
        .Q(tag_int[10]),
        .R(SR));
  FDRE \tag_int_reg[11] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[11]_i_1_n_0 ),
        .Q(tag_int[11]),
        .R(SR));
  FDRE \tag_int_reg[12] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[12]_i_1_n_0 ),
        .Q(tag_int[12]),
        .R(SR));
  FDRE \tag_int_reg[13] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[13]_i_1_n_0 ),
        .Q(tag_int[13]),
        .R(SR));
  FDRE \tag_int_reg[14] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[14]_i_1_n_0 ),
        .Q(tag_int[14]),
        .R(SR));
  FDRE \tag_int_reg[15] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[15]_i_2_n_0 ),
        .Q(tag_int[15]),
        .R(SR));
  FDRE \tag_int_reg[1] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[1]_i_1_n_0 ),
        .Q(tag_int[1]),
        .R(SR));
  FDRE \tag_int_reg[2] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[2]_i_1_n_0 ),
        .Q(tag_int[2]),
        .R(SR));
  FDRE \tag_int_reg[3] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[3]_i_1_n_0 ),
        .Q(tag_int[3]),
        .R(SR));
  FDRE \tag_int_reg[4] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[4]_i_1_n_0 ),
        .Q(tag_int[4]),
        .R(SR));
  FDRE \tag_int_reg[5] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[5]_i_1_n_0 ),
        .Q(tag_int[5]),
        .R(SR));
  FDRE \tag_int_reg[6] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[6]_i_1_n_0 ),
        .Q(tag_int[6]),
        .R(SR));
  FDRE \tag_int_reg[7] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[7]_i_1_n_0 ),
        .Q(tag_int[7]),
        .R(SR));
  FDRE \tag_int_reg[8] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[8]_i_1_n_0 ),
        .Q(tag_int[8]),
        .R(SR));
  FDRE \tag_int_reg[9] 
       (.C(clk_ddmtd_i),
        .CE(sampler_inst_n_1),
        .D(\tag_int[9]_i_1_n_0 ),
        .Q(tag_int[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \tag_o[15]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(stab_cntr1_carry__0_n_2),
        .O(\tag_o[15]_i_1_n_0 ));
  FDRE \tag_o_reg[0] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \tag_o_reg[10] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \tag_o_reg[11] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \tag_o_reg[12] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \tag_o_reg[13] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \tag_o_reg[14] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \tag_o_reg[15] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \tag_o_reg[1] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \tag_o_reg[2] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \tag_o_reg[3] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \tag_o_reg[4] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \tag_o_reg[5] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \tag_o_reg[6] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \tag_o_reg[7] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \tag_o_reg[8] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \tag_o_reg[9] 
       (.C(clk_ddmtd_i),
        .CE(\tag_o[15]_i_1_n_0 ),
        .D(tag_int[9]),
        .Q(Q[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hC0D5C0C0)) 
    tag_p_o_i_1
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(stab_cntr1_carry__0_n_2),
        .I3(\FSM_onehot_state_reg[1]_0 ),
        .I4(tag_p_o_reg_0),
        .O(tag_p_o_i_1_n_0));
  FDRE tag_p_o_reg
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(tag_p_o_i_1_n_0),
        .Q(tag_p_o_reg_0),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_reg[12]_i_2 
       (.CI(\temp_reg[8]_i_2_n_0 ),
        .CO({\temp_reg[12]_i_2_n_0 ,\temp_reg[12]_i_2_n_1 ,\temp_reg[12]_i_2_n_2 ,\temp_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(temp0__0[11:8]),
        .S(in7[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_reg[15]_i_2 
       (.CI(\temp_reg[12]_i_2_n_0 ),
        .CO({\NLW_temp_reg[15]_i_2_CO_UNCONNECTED [3:2],\temp_reg[15]_i_2_n_2 ,\temp_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_temp_reg[15]_i_2_O_UNCONNECTED [3],temp0__0[14:12]}),
        .S({1'b0,in7[15:13]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\temp_reg[4]_i_2_n_0 ,\temp_reg[4]_i_2_n_1 ,\temp_reg[4]_i_2_n_2 ,\temp_reg[4]_i_2_n_3 }),
        .CYINIT(in7[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(temp0__0[3:0]),
        .S(in7[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \temp_reg[8]_i_2 
       (.CI(\temp_reg[4]_i_2_n_0 ),
        .CO({\temp_reg[8]_i_2_n_0 ,\temp_reg[8]_i_2_n_1 ,\temp_reg[8]_i_2_n_2 ,\temp_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(temp0__0[7:4]),
        .S(in7[8:5]));
endmodule

(* ORIG_REF_NAME = "sampler" *) 
module ddmtd_system_bd_ddmtd_0_0_sampler
   (clk_sampled_o_reg_0,
    E,
    \FSM_onehot_state_reg[0] ,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    SR,
    clk_b_i,
    clk_ddmtd_i,
    \tag_int_reg[0] ,
    \tag_int_reg[0]_0 ,
    rst_n_ddmtdclk_i,
    \FSM_onehot_state_reg[0]_2 ,
    CO);
  output clk_sampled_o_reg_0;
  output [0:0]E;
  output \FSM_onehot_state_reg[0] ;
  output \FSM_onehot_state_reg[0]_0 ;
  output \FSM_onehot_state_reg[0]_1 ;
  input [0:0]SR;
  input clk_b_i;
  input clk_ddmtd_i;
  input \tag_int_reg[0] ;
  input \tag_int_reg[0]_0 ;
  input rst_n_ddmtdclk_i;
  input \FSM_onehot_state_reg[0]_2 ;
  input [0:0]CO;

  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg[0]_2 ;
  wire [0:0]SR;
  wire clk_b_i;
  wire clk_ddmtd_i;
  wire clk_i_d0_reg_n_0;
  wire clk_i_d1_i_1__0_n_0;
  wire clk_i_d1_reg_n_0;
  wire clk_i_d2_reg_n_0;
  wire clk_sampled_o_i_1__0_n_0;
  wire clk_sampled_o_reg_0;
  wire rst_n_ddmtdclk_i;
  wire \tag_int_reg[0] ;
  wire \tag_int_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF0E2E2E2)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(\FSM_onehot_state_reg[0]_2 ),
        .I1(CO),
        .I2(\tag_int_reg[0]_0 ),
        .I3(clk_sampled_o_reg_0),
        .I4(\tag_int_reg[0] ),
        .O(\FSM_onehot_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAABF8888)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(\FSM_onehot_state_reg[0]_2 ),
        .I1(CO),
        .I2(\tag_int_reg[0]_0 ),
        .I3(clk_sampled_o_reg_0),
        .I4(\tag_int_reg[0] ),
        .O(\FSM_onehot_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFF83030)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(\FSM_onehot_state_reg[0]_2 ),
        .I1(CO),
        .I2(\tag_int_reg[0]_0 ),
        .I3(clk_sampled_o_reg_0),
        .I4(\tag_int_reg[0] ),
        .O(\FSM_onehot_state_reg[0] ));
  FDRE clk_i_d0_reg
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(clk_b_i),
        .Q(clk_i_d0_reg_n_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    clk_i_d1_i_1__0
       (.I0(clk_i_d0_reg_n_0),
        .O(clk_i_d1_i_1__0_n_0));
  FDSE clk_i_d1_reg
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(clk_i_d1_i_1__0_n_0),
        .Q(clk_i_d1_reg_n_0),
        .S(SR));
  FDSE clk_i_d2_reg
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(clk_i_d1_reg_n_0),
        .Q(clk_i_d2_reg_n_0),
        .S(SR));
  LUT3 #(
    .INIT(8'hB8)) 
    clk_sampled_o_i_1__0
       (.I0(clk_i_d2_reg_n_0),
        .I1(rst_n_ddmtdclk_i),
        .I2(clk_sampled_o_reg_0),
        .O(clk_sampled_o_i_1__0_n_0));
  FDRE clk_sampled_o_reg
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(clk_sampled_o_i_1__0_n_0),
        .Q(clk_sampled_o_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tag_int[15]_i_1 
       (.I0(\tag_int_reg[0] ),
        .I1(clk_sampled_o_reg_0),
        .I2(\tag_int_reg[0]_0 ),
        .O(E));
endmodule

(* ORIG_REF_NAME = "sampler" *) 
module ddmtd_system_bd_ddmtd_0_0_sampler_1
   (rst_n_ddmtdclk_i_0,
    clk_sampled_o_reg_0,
    E,
    \FSM_onehot_state_reg[0] ,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    clk_a_i,
    clk_ddmtd_i,
    rst_n_ddmtdclk_i,
    \tag_int_reg[0] ,
    \tag_int_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_2 ,
    CO);
  output rst_n_ddmtdclk_i_0;
  output clk_sampled_o_reg_0;
  output [0:0]E;
  output \FSM_onehot_state_reg[0] ;
  output \FSM_onehot_state_reg[0]_0 ;
  output \FSM_onehot_state_reg[0]_1 ;
  input clk_a_i;
  input clk_ddmtd_i;
  input rst_n_ddmtdclk_i;
  input \tag_int_reg[0] ;
  input \tag_int_reg[0]_0 ;
  input \FSM_onehot_state_reg[0]_2 ;
  input [0:0]CO;

  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg[0]_2 ;
  wire clk_a_i;
  wire clk_ddmtd_i;
  wire clk_i_d0;
  wire clk_i_d1;
  wire clk_i_d2;
  wire clk_sampled_o_i_1_n_0;
  wire clk_sampled_o_reg_0;
  wire p_1_in;
  wire rst_n_ddmtdclk_i;
  wire rst_n_ddmtdclk_i_0;
  wire \tag_int_reg[0] ;
  wire \tag_int_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF0E2E2E2)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_2 ),
        .I1(CO),
        .I2(\tag_int_reg[0]_0 ),
        .I3(clk_sampled_o_reg_0),
        .I4(\tag_int_reg[0] ),
        .O(\FSM_onehot_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAABF8888)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_2 ),
        .I1(CO),
        .I2(\tag_int_reg[0]_0 ),
        .I3(clk_sampled_o_reg_0),
        .I4(\tag_int_reg[0] ),
        .O(\FSM_onehot_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFF83030)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_2 ),
        .I1(CO),
        .I2(\tag_int_reg[0]_0 ),
        .I3(clk_sampled_o_reg_0),
        .I4(\tag_int_reg[0] ),
        .O(\FSM_onehot_state_reg[0] ));
  FDRE clk_i_d0_reg
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(clk_a_i),
        .Q(clk_i_d0),
        .R(rst_n_ddmtdclk_i_0));
  LUT1 #(
    .INIT(2'h1)) 
    clk_i_d1_i_1
       (.I0(clk_i_d0),
        .O(p_1_in));
  FDSE clk_i_d1_reg
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(p_1_in),
        .Q(clk_i_d1),
        .S(rst_n_ddmtdclk_i_0));
  FDSE clk_i_d2_reg
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(clk_i_d1),
        .Q(clk_i_d2),
        .S(rst_n_ddmtdclk_i_0));
  LUT3 #(
    .INIT(8'hB8)) 
    clk_sampled_o_i_1
       (.I0(clk_i_d2),
        .I1(rst_n_ddmtdclk_i),
        .I2(clk_sampled_o_reg_0),
        .O(clk_sampled_o_i_1_n_0));
  FDRE clk_sampled_o_reg
       (.C(clk_ddmtd_i),
        .CE(1'b1),
        .D(clk_sampled_o_i_1_n_0),
        .Q(clk_sampled_o_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \phase_diff_o[15]_i_1 
       (.I0(rst_n_ddmtdclk_i),
        .O(rst_n_ddmtdclk_i_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tag_int[15]_i_1__0 
       (.I0(\tag_int_reg[0] ),
        .I1(clk_sampled_o_reg_0),
        .I2(\tag_int_reg[0]_0 ),
        .O(E));
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
