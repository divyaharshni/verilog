module bcd_counter(q,clk,rst);
output reg [3:0]q;
input clk,rst;
always @(posedge clk or posedge rst)
begin
if(rst)
q<=4'b0000;
else if(q==4'b1001)
q<=4'b0000;
else
q<=q+1'b1;
end
endmodule
