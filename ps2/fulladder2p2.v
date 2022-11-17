module fulladder2p2(
  input x1, x0, y1, y0,
  output c, s1, s0
);
wire c1;
  fulladder a0(x0, y0, 0, s0, c1);
  fulladder a1(x1, y1, c1, s1, c);
endmodule

module fulladder(
  input x, y, cin,
  output s, cout
);

assign s = x ^ y ^ cin;
assign cout = x&y | x&cin | y&cin;

endmodule