module timer(
  reset, En, R, clk, timeover
);
input reset, En, clk;
output reg[1:0] R;
output reg timeover;
reg [32:0] Q;

always @(posedge reset, posedge clk)begin
  if(reset) begin
    timeover = 0;
    R = 0;
    Q = 0;
  end
  else if(En)begin
    Q <= Q+1;
    if(Q >= 100)begin
      R <= R+1;
      Q <= 0;
    end
  end
  if(R == 1)begin
    timeover = 1;
  end

end
endmodule