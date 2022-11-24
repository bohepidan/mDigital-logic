module counter4(
  reset, clk, En, Q
);
input reset, clk, En;
output reg [3:0] Q;

always @(posedge reset, posedge clk) begin
  if(reset)
    Q <= 0;
  else if(En)
    Q <= Q+1;
  else
    Q<= Q;
end

endmodule