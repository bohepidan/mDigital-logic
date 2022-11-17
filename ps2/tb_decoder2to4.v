`timescale 1ns/1ps
module tm_decoder2to4;
reg x1_test;
reg x0_test;
wire m0_test;
wire m1_test;
wire m2_test;
wire m3_test;

initial begin
  x1_test = 0;
  x0_test = 0;
  #40 $finish;
end
always #10 x0_test = ~x0_test;
always #20 x1_test = ~x1_test;

decoder2to4 UUT_decoder2to4(x1_test, x0_test, m0_test, m1_test, m2_test, m3_test);

endmodule