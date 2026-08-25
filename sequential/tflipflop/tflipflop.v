module tflipflop(q,qbar,t,clk,rst);
output reg q,qbar;
input t,clk,rst;
always @(posedge clk or negedge rst)
begin
if(!rst)begin
q<=0;
qbar<=1;
end
else
begin
case (t)
1'b0:begin
q<=q;
qbar<=qbar;
end
1'b1:begin
q<=qbar;
qbar<=q;
end
endcase
end
end
endmodule
