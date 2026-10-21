module bidirectional_counter(q,clk,rst,dir);
output reg [3:0]q;
input clk,rst,dir;
always @(posedge clk or posedge rst)
begin
if(rst)
q<=4'b0000;
else if(dir)
q<=q+1'b1;
else
q<=q-1'b1;
end
endmodule
