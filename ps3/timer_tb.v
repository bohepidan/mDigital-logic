`timescale 1ns/1ps
module timer_tb;
reg reset_test;
reg En_test;
reg clk;
wire [1:0] R_test;
wire  timeover_test;
initial begin
reset_test = 1;
#40
reset_test = 0;
En_test = 1;
end
initial clk = 0;
always #10 clk = ~clk;

timer UUT_timer(reset_test, En_test, R_test, clk, timeover_test);

endmodule