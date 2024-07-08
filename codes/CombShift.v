module CombShift (
    input  [ 1:0] ui_out,
    input  [17:0] inp,
    output [20:0] wr_data
);

  assign wr_data = inp << ui_out;

endmodule

