module sync_down_counter(q,clk,rst);
output reg [3:0]q;
input clk,rst;
always @(posedge clk or posedge rst)
begin
if(rst)
q<=4'b1111;
else
q<=q-1'b1;
end
endmodule
