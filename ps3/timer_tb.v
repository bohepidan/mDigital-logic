`timescale 1ns/1ps
module timer_tb;
reg reset_test;
reg En_test;
reg clk;
reg [1:0] R_test;
reg  timeover_test;
wire [1:0] R_tt;
wire  timeover_tt;
assign R_tt = R_test;
assign timeover_tt = timeover_test;
initial begin
R_test = 0;
reset_test = 0;
En_test = 1;
timeover_test = 0;
end
initial clk = 0;
always #1 clk = ~clk;

timer UUT_timer(reset_test, En_test, R_tt, clk, timeover_tt);

endmodule