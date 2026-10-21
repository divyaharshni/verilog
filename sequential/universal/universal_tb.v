module universal_register_tb;
reg [3:0]d;
reg clk,rst;
reg [1:0]s;
wire [3:0]q;
universal_register uut(q,d,clk,rst,s);
always #5 clk=~clk;
initial
begin
$monitor("time=%0t clk=%b rst=%b s=%b d=%b q=%b",$time,clk,rst,s,d,q);
clk=0;
rst=1;
s=2'b00;
d=4'b0000;
#10;
rst=0;
s=2'b11;
d=4'b1010;
#10;
s=2'b01;
#10;
s=2'b01;
#10;
s=2'b10;
#10;
s=2'b00;
#10;
$finish;
end
endmodule
