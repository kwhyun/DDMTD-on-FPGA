module deglitcher
#(
  parameter integer COUNTER_BIT_WIDTH = 16
)
(
  input  wire                         rst_n_ddmtdclk_i,
  input  wire                         clk_in_i,
  input  wire                         clk_ddmtd_i,
  input  wire [15:0]                  deglitch_threshold_i,

  output reg  [COUNTER_BIT_WIDTH-1:0] tag_o,
  output reg                          tag_p_o
);

  // FSM states:
  localparam [1:0] WAIT_STABLE_0 = 2'd0;          // WAIT_STABLE_0: require clk_sampled to stay low for threshold cycles
  localparam [1:0] WAIT_EDGE     = 2'd1;          // WAIT_EDGE    : wait for a rising event (clk_sampled becomes high)
  localparam [1:0] GOT_EDGE      = 2'd2;          // GOT_EDGE : wait for stable high and adjust tag accordingly

  reg [1:0] state;
  reg [15:0] stab_cntr;                           // stability counter for deglitch qualification
  reg [COUNTER_BIT_WIDTH-1:0] free_cntr;             // free-running counter
  reg [COUNTER_BIT_WIDTH-1:0] tag_int;              // internal tag

  wire clk_sampled;                               // output of sampler
  // Sample input clock into clk_ddmtd_i domain (sampler includes pipelining)
  sampler sampler_inst (
    .clk_in_i                   (clk_in_i),
    .rst_n_ddmtdclk_i           (rst_n_ddmtdclk_i),
    .clk_ddmtd_i                (clk_ddmtd_i),
    .clk_sampled_o              (clk_sampled)
  );

  // Free-running counter in clk_ddmtd_i domain (timestamp base)
  always @(posedge clk_ddmtd_i) begin
    if (!rst_n_ddmtdclk_i) begin
      free_cntr <= {COUNTER_BIT_WIDTH{1'b0}};
    end else begin
      free_cntr <= free_cntr + {{(COUNTER_BIT_WIDTH-1){1'b0}},1'b1};
    end
  end

  // Deglitch & Qualification FSM in clk_ddmtd_i domain:
  always @(posedge clk_ddmtd_i) begin
    if (!rst_n_ddmtdclk_i) begin
      stab_cntr         <= 16'd0;
      state             <= WAIT_STABLE_0;
      tag_p_o           <= 1'b0;
      tag_int           <= {COUNTER_BIT_WIDTH{1'b0}};
      tag_o             <= {COUNTER_BIT_WIDTH{1'b0}};
    end
    else begin
      case (state)
        WAIT_STABLE_0: begin
          tag_p_o <= 1'b0;

          // count consecutive low cycles; reset counter if high is observed
          if (clk_sampled != 1'b0)
            stab_cntr   <= 16'd0;
          else
            stab_cntr   <= stab_cntr + 16'd1;

          // low has been stable long enough -> arm for edge detect
          if (stab_cntr == deglitch_threshold_i)
            state       <= WAIT_EDGE;
        end

        WAIT_EDGE: begin
          tag_p_o <= 1'b0;

          // upon high detection, capture coarse timestamp and move to qualification
          if (clk_sampled != 1'b0) begin
            state       <= GOT_EDGE;
            tag_int     <= free_cntr;
            stab_cntr   <= 16'd0;
          end
        end

        GOT_EDGE: begin
          // while input returns low, increment tag_int (extends measurement window)
          if (clk_sampled == 1'b0)
            tag_int     <= tag_int + {{(COUNTER_BIT_WIDTH-1){1'b0}},1'b1};

          // require stable high for threshold cycles before declaring valid edge
          if (stab_cntr == deglitch_threshold_i) begin
            state       <= WAIT_STABLE_0;
            tag_p_o     <= 1'b1;     // 1-cycle pulse: valid event
            tag_o       <= tag_int;  // latch tag
            stab_cntr   <= 16'd0;
          end else if (clk_sampled == 1'b0) begin
            // any low breaks the stability window -> restart stability counter
            stab_cntr   <= 16'd0;
          end else begin
            stab_cntr   <= stab_cntr + 16'd1;
          end
        end

        default: begin
          state <= WAIT_STABLE_0;
        end
      endcase
    end
  end

endmodule
