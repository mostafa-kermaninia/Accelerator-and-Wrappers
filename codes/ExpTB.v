module exponentialTB ();
  reg clk = 0, rst = 0, start = 0;
  reg [15:0] x = 0;
  wire done;
  wire [1:0] intpart;
  wire [15:0] fracpart;

  exponential CUT (
      clk,
      rst,
      start,
      x,
      done,
      intpart,
      fracpart
  );

  always #30 clk = ~clk;
  initial begin
    #200 rst = 1;
    #200 rst = 0;

    #3500 x = 16'b0100000000000000;

    #300 start = 1;
    #300 start = 0;

    #3500 x = 16'b1000000000000000;

    #300 start = 1;
    #300 start = 0;

    #3500 x = 16'b1100000000000000;

    #300 start = 1;
    #300 start = 0;

    #33333 $stop;

  end

endmodule


