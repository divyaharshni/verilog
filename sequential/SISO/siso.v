module siso(q,d,clk,rst);
output q;
input d,clk,rst;
reg [3:0]temp;
always @(posedge clk or posedge rst)
begin
if(rst)
temp<=4'b0000;
else
temp<={temp[2:0],d};
end
assign q=temp[3];
endmodule
