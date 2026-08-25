module dflipflop(q,qbar,d,clk,rst);
output reg q,qbar;
input d,clk,rst;
always @(posedge clk or negedge rst)
begin
if(!rst)begin
q<=0;
qbar<=1;
end
else
begin
q<=d;
qbar<=~d;
end
end
endmodule
