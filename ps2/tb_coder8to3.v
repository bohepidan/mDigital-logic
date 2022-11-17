`timescale 1ns/1ps
module tb_coder8to3;
reg test_m0;
reg test_m1;
reg test_m2;
reg test_m3;
reg test_m4;
reg test_m5;
reg test_m6;
reg test_m7;
wire test_s2;
wire test_s1;
wire test_s0;
initial begin
  test_m0 = 0;
  test_m1 = 0;
  test_m2 = 0;
  test_m3 = 0;
  test_m4 = 0;
  test_m5 = 0;
  test_m6 = 0;
  test_m7 = 0;
  test_m0 = 1;
  #20
  test_m0 = 0;

  test_m1 = 1;
  #20
  test_m1 = 0;

  test_m2 = 1;
  #20
  test_m2 = 0;

  test_m3 = 1;
  #20
  test_m3 = 0;

  test_m4 = 1;
  #20
  test_m4 = 0;

  test_m5 = 1;
  #20
  test_m5 = 0;

  test_m6 = 1;
  #20
  test_m6 = 0;

  test_m7 = 1;
  #20
  test_m7 = 0;
end

coder8to3 UUT_coder8to3(test_m0, test_m1, test_m2, test_m3, test_m4, test_m5
                         ,test_m6, test_m7, test_s2, test_s1, test_s0);
endmodule