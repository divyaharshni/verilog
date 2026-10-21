module sipo_tb;
reg d,clk,rst;
wire [3:0]q;
sipo uut(q,d,clk,rst);
always #5 clk=~clk;
initial
begin
$monitor("time=%0t d=%b clk=%b rst=%b q=%b",$time,d,clk,rst,q);
clk=0;
rst=1;
d=0;
#10;
rst=0;
d=1;
#10;
d=0;
#10;
d=1;
#10;
d=1;
#10;
d=0;
#10;
d=1;
#10;
$finish;
end
endmodule
