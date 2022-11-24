module Dlatch_tb;
reg d_test;
reg clk_test;
wire q_test;
initial
  clk_test = 0;
always #10 clk_test = ~clk_test;

initial begin
d_test = 0;
#40
d_test = 1;
#20
$stop;
end

Dlatch UUT_Dlatch(d_test, clk_test, q_test);
endmodule