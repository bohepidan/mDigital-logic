module MUX2to1 (
  x0, x1, sel, f
);
input x0, x1, sel;
output f;

assign f = sel ? x1 : x0;  

endmodule