`timescale 1ns/1ps 
module tb_figure2_40_and_2_42;
reg x1_test;
reg x2_test;
reg s_test;
wire f2_40_test;
wire f2_42_test;

initial
s_test = 0;

always # 40 s_test = ~s_test;

initial 
begin
  x1_test = 0;
  x2_test = 0;
  #40
  x1_test = 0;
  x2_test = 0;
  #40
  x1_test = 0;
  x2_test = 1;
  #40
  x1_test = 0;
  x2_test = 1;
  #40
  x1_test = 1;
  x2_test = 0;
  #40
  x1_test = 1;
  x2_test = 0;
  #40
  x1_test = 1;
  x2_test = 1;
  #40
  x1_test = 1;
  x2_test = 1;
end
figure2_40 UUT_figure2_40(x1_test, x2_test, s_test, f2_40_test);
figure2_42 UUT_figure2_42(x1_test, x2_test, s_test, f2_42_test);
endmodule