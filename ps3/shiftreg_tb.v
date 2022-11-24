`timescale 1ns/1ps
module shift4_tb;
reg [3:0] R_test;
reg L_test, w_test, clk_test;
wire [3:0] Q_test;

always #10 clk_test = ~clk_test;

initial begin
clk_test = 0;
L_test = 0;
w_test = 0;
R_test = 0;

#10
w_test = 2;
#20
w_test = 1;
#20
w_test = 0;
#20
w_test = 1;
#20
L_test = 1;
R_test = 3;
#20
L_test = 0;
#20;
end
shift4 UUT_shift4(.R(R_test), .L(L_test), .w(w_test), .clk(clk_test), .Q(Q_test));
endmodule