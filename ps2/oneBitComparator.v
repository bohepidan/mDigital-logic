module oneBitComparator(
  input x, y,
  output larger, equal, smaller
);
assign equal = x == y ? 1 : 0;
assign larger = x > y ? 1 : 0;
assign smaller = x < y ? 1 : 0;

endmodule 