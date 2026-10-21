module universal(q,d,clk,rst,s);
output reg [3:0]q;
input [3:0]d;
input clk,rst;
input [1:0]s;
always @(posedge clk or posedge rst)
begin
if(rst)
q<=4'b0000;
else
case(s)
2'b00:q<=q;
2'b01:q<={q[2:0],1'b0};
2'b10:q<={1'b0,q[3:1]};
2'b11:q<=d;
endcase
end
endmodule
