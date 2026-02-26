`timescale 1ns/1ps

module ddmtd_tb;
  reg  rst_n_ddmtdclk_i;
  reg  clk_a_i;
  reg  clk_b_i;
  reg  clk_ddmtd_i;

  reg  [15:0] deglitch_threshold_i;

  wire signed [15:0]  phase_diff_o;
  wire                phase_diff_p_o;
  
  ddmtd #(
    .COUNTER_BIT_WIDTH(16)
  ) dut (
    .rst_n_ddmtdclk_i       (rst_n_ddmtdclk_i),
    .clk_a_i                (clk_a_i),
    .clk_b_i                (clk_b_i),
    .clk_ddmtd_i            (clk_ddmtd_i),
    .deglitch_threshold_i   (deglitch_threshold_i),
    .phase_diff_o           (phase_diff_o),
    .phase_diff_p_o         (phase_diff_p_o)
  );

  // Jitter config
  real    T_HALF_NOM_NS;
  integer JITTER_RMS_PS;
  integer seed_a, seed_b;

  integer j_a_ps, j_b_ps;
  real    j_a_ns, j_b_ns;
  real    dly_a, dly_b;

  initial begin
    T_HALF_NOM_NS  = 5.05;
    JITTER_RMS_PS  = 1;
    seed_a         = 32'h1234_abcd;
    seed_b         = 32'h5678_dcba;
  end

  // clk_dmtd: 100 MHz -> 10ns
  initial begin
    clk_ddmtd_i = 1'b0;
    forever #5 clk_ddmtd_i = ~clk_ddmtd_i;
  end

  // clk_a: jittered
  initial begin
    clk_a_i = 1'b0;
    forever begin
      j_a_ps = $dist_normal(seed_a, 0, JITTER_RMS_PS);
      j_a_ns = j_a_ps / 1000.0;
      dly_a  = T_HALF_NOM_NS + j_a_ns;
      if (dly_a < 0.0) dly_a = 0.0;
      #(dly_a) clk_a_i = ~clk_a_i;
    end
  end

  // clk_b: jittered + 1ns delayed
  initial begin
  #1
    clk_b_i = 1'b0;
    forever begin
      j_b_ps = $dist_normal(seed_b, 0, JITTER_RMS_PS);
      j_b_ns = j_b_ps / 1000.0;
      dly_b  = T_HALF_NOM_NS - j_b_ns;
      if (dly_b < 0.0) dly_b = 0.0;
      #(dly_b) clk_b_i = ~clk_b_i;
    end
  end

  // Stimulus
  initial begin
    rst_n_ddmtdclk_i = 1'b0;
    deglitch_threshold_i = 16'd16;

    #100;
    rst_n_ddmtdclk_i = 1'b1;

    #100_000;
    $finish;
  end

  always @(posedge clk_ddmtd_i) begin
    if (rst_n_ddmtdclk_i && phase_diff_p_o) begin
      $display("[%0t ns] phase_diff_o=0x%08sd", $time, phase_diff_o);
    end
  end

endmodule
