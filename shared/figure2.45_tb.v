`timescale 1ns/1ps 
module tb_figure2_45;

reg a_test;
reg b_test;
wire s1_test;
wire s0_test;

initial
begin
  a_test = 0;
  b_test = 0;
  #40
  a_test = 0;
  b_test = 1;
  #40
  a_test = 1;
  b_test = 0;
  #40
  a_test = 1;
  b_test = 1;
  #40
  a_test = 1;
  b_test = 1;
end
figure2_45 UUT_figure2_45(a_test, b_test, s1_test, s0_test);

endmodule