module figure2_45 (
  a, b, s1, s0
);
input a, b;
output s1, s0;

assign s1 = a&b;
assign s0 = a^b;
  
endmodule