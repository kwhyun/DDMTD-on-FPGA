// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:dps_controller:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ddmtd_system_bd_dps_controller_0_0 (
  psclk_i,
  rstn_i,
  toggle_i,
  dir_i,
  steps_per_toggle_i,
  locked_i,
  psdone_i,
  psen_o,
  psincdec_o,
  total_steps_o
);

input wire psclk_i;
input wire rstn_i;
input wire toggle_i;
input wire dir_i;
input wire [7 : 0] steps_per_toggle_i;
input wire locked_i;
input wire psdone_i;
output wire psen_o;
output wire psincdec_o;
output wire [15 : 0] total_steps_o;

  dps_controller #(
    .SYNC_STAGES(2),
    .REQUIRE_LOCKED(0)
  ) inst (
    .psclk_i(psclk_i),
    .rstn_i(rstn_i),
    .toggle_i(toggle_i),
    .dir_i(dir_i),
    .steps_per_toggle_i(steps_per_toggle_i),
    .locked_i(locked_i),
    .psdone_i(psdone_i),
    .psen_o(psen_o),
    .psincdec_o(psincdec_o),
    .total_steps_o(total_steps_o)
  );
endmodule
