module wrapperTB ();
  reg clk = 0, rst = 0, w_start = 0;
  reg [1:0] ui = 2'b00;
  reg [4:0] vi =5'b11111;
  wire w_done, wr_req;
  wire [20:0] wr_data;

  wire [15:0] vi_concat;

  concat CUT1 (
      vi,
      vi_concat
  );

  wrapper CUT2 (
      clk,
      rst,
      w_start,
      vi_concat,
      ui,
      wr_req,
      w_done,
      wr_data
  );

  always #30 clk = ~clk;
  initial begin
    #200 rst = 1;
    #200 rst = 0;

    #300 w_start = 1;
    #300 w_start = 0;


    #33333 $stop;

  end

endmodule


