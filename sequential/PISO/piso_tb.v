module piso_tb;
reg [3:0]d;
reg clk,rst,load;
wire q;
piso uut(q,d,clk,rst,load);
always #5 clk=~clk;
initial
begin
$monitor("time=%0t d=%b clk=%b rst=%b load=%b q=%b",$time,d,clk,rst,load,q);
clk=0;
rst=1;
load=0;
d=4'b0000;
#10;
rst=0;
load=1;
d=4'b1011;
#10;
load=0;
#10;
#10;
#10;
