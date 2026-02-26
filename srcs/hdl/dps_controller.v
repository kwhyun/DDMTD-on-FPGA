module dps_controller #(
  parameter integer SYNC_STAGES    = 2,
  parameter integer REQUIRE_LOCKED = 0
)(
  input  wire psclk_i,
  input  wire rstn_i,

  input  wire toggle_i,
  input  wire dir_i,
  input  wire [7:0] steps_per_toggle_i,

  input  wire locked_i,
  input  wire psdone_i,

  output reg  psen_o,
  output reg  psincdec_o,

  output reg signed [15:0] total_steps_o
);

  reg [SYNC_STAGES-1:0] step_sync;
  reg [SYNC_STAGES-1:0] dir_sync;

  reg [7:0] steps_sync [0:SYNC_STAGES-1];

  integer i;
  always @(posedge psclk_i) begin
    if (!rstn_i) begin
      for (i=0; i<SYNC_STAGES; i=i+1) begin
        step_sync[i]   <= 1'b0;
        dir_sync[i]    <= 1'b0;
        steps_sync[i]  <= 8'd0;
      end
    end else begin
      step_sync <= {step_sync[SYNC_STAGES-2:0], toggle_i};
      dir_sync  <= {dir_sync[SYNC_STAGES-2:0],  dir_i};

      steps_sync[0] <= steps_per_toggle_i;
      for (i=1; i<SYNC_STAGES; i=i+1) begin
        steps_sync[i] <= steps_sync[i-1];
      end
    end
  end

  wire       step_s  = step_sync[SYNC_STAGES-1];
  wire       dir_s   = dir_sync[SYNC_STAGES-1];
  wire [7:0] steps_s = steps_sync[SYNC_STAGES-1];

  reg step_s_d;
  always @(posedge psclk_i) begin
    if (!rstn_i) step_s_d <= 1'b0;
    else      step_s_d <= step_s;
  end

  wire step_toggle = step_s ^ step_s_d;

  wire gate_ok = (REQUIRE_LOCKED == 0) ? 1'b1 : locked_i;

  // FSM
  localparam S_IDLE = 2'd0;
  localparam S_WAIT = 2'd2;

  reg [1:0] state;

  reg [7:0] steps_left;

  reg       dir_latched;
  reg [7:0] steps_latched;

  always @(posedge psclk_i) begin
    if (!rstn_i) begin
      state         <= S_IDLE;
      steps_left    <= 8'd0;
      dir_latched   <= 1'b0;
      steps_latched <= 8'd0;
      psen_o          <= 1'b0;
      psincdec_o      <= 1'b0;
      total_steps_o   <= 16'sd0;
    end else begin
      psen_o <= 1'b0;

      case (state)
        S_IDLE: begin
          if (gate_ok && step_toggle) begin
            dir_latched   <= dir_s;
            steps_latched <= steps_s;

            if (steps_s != 8'd0) begin
              psincdec_o   <= dir_s;
              steps_left <= steps_s;

              psen_o  <= 1'b1;
              state <= S_WAIT;
            end
          end
        end

        S_WAIT: begin
          if (psdone_i) begin
            if (dir_latched)
              total_steps_o <= total_steps_o + 16'sd1;
            else
              total_steps_o <= total_steps_o - 16'sd1;

            if (steps_left == 8'd1) begin
              steps_left <= 8'd0;
              state      <= S_IDLE;
            end else begin
              steps_left <= steps_left - 8'd1;
              psincdec_o   <= dir_latched;
              psen_o       <= 1'b1;
              state      <= S_WAIT;
            end
          end
        end

        default: state <= S_IDLE;
      endcase
    end
  end

endmodule
