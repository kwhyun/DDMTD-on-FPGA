module ddmtd
#(
  parameter integer COUNTER_BIT_WIDTH = 16                // must be more than log2(T_clk_a/T_clk_sampled) (zoom ratio)
)
(
  input  wire rst_n_ddmtdclk_i,
  input  wire clk_a_i,                                    // input clock A
  input  wire clk_b_i,                                    // input clock B
  input  wire clk_ddmtd_i,                                // DDMTD sampling clock

  input  wire [15:0]  deglitch_threshold_i,               // deglitch qualification threshold

  output reg signed [COUNTER_BIT_WIDTH-1:0] phase_diff_o,
  output reg                                phase_diff_p_o  // 1-cycle pulse when phase_diff_p_o updates
);

  // Phase-difference FSM (modular difference): phase_diff_o = tag_a - tag_b (mod 2^N)
  localparam [1:0] PD_WAIT_TAG = 2'd0;
  localparam [1:0] PD_WAIT_A   = 2'd1;
  localparam [1:0] PD_WAIT_B   = 2'd2;
  reg [1:0] pd_state;

  wire [COUNTER_BIT_WIDTH-1:0] tag_a;
  wire [COUNTER_BIT_WIDTH-1:0] tag_b;
  wire tag_a_p;
  wire tag_b_p;

  reg  [COUNTER_BIT_WIDTH-1:0] temp;

  deglitcher #(
    .COUNTER_BIT_WIDTH(COUNTER_BIT_WIDTH)
  ) deglitcher_inst_a (
    .rst_n_ddmtdclk_i        (rst_n_ddmtdclk_i),
    .clk_in_i                (clk_a_i),
    .clk_ddmtd_i             (clk_ddmtd_i),
    .deglitch_threshold_i    (deglitch_threshold_i),
    .tag_o                   (tag_a),
    .tag_p_o                 (tag_a_p)
  );

  deglitcher #(
    .COUNTER_BIT_WIDTH(COUNTER_BIT_WIDTH)
  ) deglitcher_inst_b (
    .rst_n_ddmtdclk_i        (rst_n_ddmtdclk_i),
    .clk_in_i                (clk_b_i),
    .clk_ddmtd_i             (clk_ddmtd_i),
    .deglitch_threshold_i    (deglitch_threshold_i),
    .tag_o                   (tag_b),
    .tag_p_o                 (tag_b_p)
  );

// Prevent wrap-around artifacts by pairing tags
// : avoiding phase_diff toggling across the 0/2π boundary when the true offset is near zero.
always @(posedge clk_ddmtd_i) begin
    if (!rst_n_ddmtdclk_i) begin
      phase_diff_o    <= {COUNTER_BIT_WIDTH{1'b0}};
      temp            <= {COUNTER_BIT_WIDTH{1'b0}};
      phase_diff_p_o  <= 1'b0;
      pd_state        <= PD_WAIT_TAG;
    end else begin
      case (pd_state)
        PD_WAIT_TAG: begin
          if (tag_a_p && tag_b_p) begin
            phase_diff_o    <= (tag_a - tag_b);
            phase_diff_p_o  <= 1'b1;
          end else if (tag_a_p) begin
            temp            <= tag_a;
            phase_diff_p_o  <= 1'b0;
            pd_state        <= PD_WAIT_B;
          end else if (tag_b_p) begin
            temp            <= (~tag_b) + {{(COUNTER_BIT_WIDTH-1){1'b0}},1'b1};
            phase_diff_p_o  <= 1'b0;
            pd_state        <= PD_WAIT_A;
          end else begin
            phase_diff_p_o  <= 1'b0;
          end
        end

        PD_WAIT_A: begin
          if (tag_a_p) begin
            phase_diff_o    <= temp + tag_a;
            phase_diff_p_o  <= 1'b1;
            pd_state        <= PD_WAIT_TAG;
          end else begin
            phase_diff_p_o  <= 1'b0;
          end
        end

        PD_WAIT_B: begin
          if (tag_b_p) begin
            phase_diff_o    <= temp - tag_b;
            phase_diff_p_o  <= 1'b1;
            pd_state        <= PD_WAIT_TAG;
          end else begin
            phase_diff_p_o  <= 1'b0;
          end
        end

        default: begin
          pd_state          <= PD_WAIT_TAG;
          phase_diff_p_o    <= 1'b0;
        end
      endcase
    end
  end

endmodule
