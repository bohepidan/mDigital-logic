`timescale 1ns/1ps
module tb_fulladder2p2;
reg x1_test;
reg x0_test;
reg y1_test;
reg y0_test;
wire c_test;
wire s1_test;
wire s0_test;

initial begin
  x1_test = 0;
  x0_test = 0;
  y1_test = 0;
  y0_test = 0;
  #40 
  x1_test = 0;
  x0_test = 1;
  y1_test = 0;
  y0_test = 1;
  #40 
  x1_test = 0;
  x0_test = 1;
  y1_test = 1;
  y0_test = 1;
  #40 
  x1_test = 1;
  x0_test = 1;
  y1_test = 1;
  y0_test = 1;
  #40;
end
fulladder2p2 UUT_fulladder2p2(x1_test, x0_test, y1_test, y0_test,
               c_test, s1_test, s0_test);
endmodule