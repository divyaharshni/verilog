module piso(q,d,clk,rst,load);
output reg q;
input [3:0]d;
input clk,rst,load;
reg [3:0]temp;
always @(posedge clk or posedge rst)
begin
if(rst)
temp<=4'b0000;
else if(load)
temp<=d;
else
temp<={1'b0,temp[3:1]};
end
assign q=temp[0];
endmodule
