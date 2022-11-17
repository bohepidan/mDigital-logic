module coder8to3(
  input m0,m1,m2,m3,m4,m5,m6,m7,
  output s2, s1, s0
);
assign s0 = m1 | m3 | m5 | m7;
assign s1 = m2 | m3 | m6 | m7;
assign s2 = m4 | m5 | m6 | m7;

endmodule
