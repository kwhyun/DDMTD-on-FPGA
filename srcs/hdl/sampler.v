module sampler
(
  input  wire       clk_in_i,           // target input clock to be sampled
  input  wire       rst_n_ddmtdclk_i,   // sampling reset
  input  wire       clk_ddmtd_i,        // DMTD sampling clock

  output reg       clk_sampled_o        // sampled and pipelined output
);

  reg  clk_i_d0;
  reg  clk_i_d1;
  reg  clk_i_d2;

  always @(posedge clk_ddmtd_i) begin
    if (!rst_n_ddmtdclk_i) begin
    clk_i_d0 <= 1'b0;
    clk_i_d1 <= 1'b1;
    clk_i_d2 <= 1'b1;
    end
    else begin
    clk_i_d0      <= clk_in_i;
    clk_i_d1      <= ~clk_i_d0; // prevent posedge caused by reset (deglitcher catches posedge)
    clk_i_d2      <= clk_i_d1;
    clk_sampled_o <= clk_i_d2;
    end
  end

endmodule
