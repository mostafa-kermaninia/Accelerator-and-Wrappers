module concat (
    input [ 4:0] inp,
    input [15:0] out
);

  assign out = {3'b0, inp, 8'b0};
endmodule

