module pipo_tb;
reg [3:0]d;
reg clk,rst;
wire [3:0]q;
pipo uut(q,d,clk,rst);
always #5 clk=~clk;
initial
begin
$monitor("time=%0t d=%b clk=%b rst=%b q=%b",$time,d,clk,rst,q);
clk=0;
rst=1;
d=4'b0000;
#10;
rst=0;
d=4'b1010;
#10;
d=4'b1100;
#10;
d=4'b0111;
#10;
d=4'b1111;
