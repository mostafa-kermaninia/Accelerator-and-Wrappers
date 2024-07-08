module ui_Reg (
    input clk,
    rst,
    ldu,
    input [1:0] ui,
    output reg [1:0] ui_out
);

  always @(posedge clk, posedge rst) begin
    if (rst) ui_out <= 0;
    else if (ldu) ui_out <= ui;
  end

endmodule

