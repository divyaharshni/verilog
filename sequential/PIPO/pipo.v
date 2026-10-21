module pipo(q,d,clk,rst);
output reg [3:0]q;
input [3:0]d;
input clk,rst;
always @(posedge clk or posedge rst)
begin
if(rst)
q<=4'b0000;
else
q<=d;
end
endmodule
