module fulladder2p2(
  input x1, x0, y1, y0,
  output c, s1, s0
);
wire c1;
assign s0 = x0 ^ y0;
assign c1 = x0&y0;
assign s1 = x1 ^ y1 ^ c1;
assign c = x1&y1 | x1&c1 | y1&c1;

endmodule