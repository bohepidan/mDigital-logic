`timescale 1ns/1ps
module tb_MUX2to1;
reg x0_test;
reg x1_test;
reg sel_test;
wire f_test;

initial begin
x0_test = 0;
x1_test = 0;
sel_test = 0;
#80 $finish;
end
always #10 x0_test = ~x0_test;
always #20 x1_test = ~x1_test;
always #40 sel_test = ~sel_test;

MUX2to1 UUT_MUX2to1(x0_test, x1_test, sel_test, f_test);
endmodule