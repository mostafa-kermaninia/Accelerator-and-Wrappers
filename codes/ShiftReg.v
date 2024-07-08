module ShiftReg (
    input clk,
    rst,
    ShiftL,
    Ldx,
    input [15:0] ParIn,
    output reg [15:0] engx
);

  always @(posedge clk, posedge rst) begin
    if (rst) engx <= 0;
    else if (Ldx) engx <= ParIn;
    else if (ShiftL) engx <= {engx[14:0], 1'b0};
  end

endmodule

