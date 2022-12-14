`timescale 1ns/1ps
module counter4_tb;
reg reset_test;
reg clk;
reg En_test;
wire [3:0]Q_test;

initial begin
  clk = 0;
  En_test = 0;
  reset_test = 0;

  #30
  En_test = 1;

  #200
  reset_test = 1;

  #30
  reset_test = 0;

  #30
  $stop;
end
always #10 clk = ~clk;

counter4 UUT_counter4(.reset(reset_test), .clk(clk), .En(En_test), .Q(Q_test));

endmodule