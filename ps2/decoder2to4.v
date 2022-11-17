module decoder2to4(
  input x1, x0,
  output m0, m1, m2, m3
);


assign m0 = ~x1 & ~x0;
assign m1 = ~x1 & x0;
assign m2 = x1 & ~x0;
assign m3 = x1 & x0;
endmodule