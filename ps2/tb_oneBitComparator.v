`timescale 1ns/1ps
module tb_oneBitComparator;

reg x_test;
reg y_test;
wire larger_test;
wire equal_test;
wire smaller_test;

initial begin
x_test = 0;
y_test = 0;
#40 $stop;
end

always #10 x_test = ~x_test;
always #20 y_test = ~y_test;

oneBitComparator UUT_oneBitComparator(x_test, y_test, 
                        larger_test, equal_test, smaller_test);
endmodule