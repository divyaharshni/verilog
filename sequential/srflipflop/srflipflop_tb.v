module srflipflop_tb;
reg s,r,clk,rst;
wire q,qbar;
srflipflop uut (.q(q),.qbar(qbar),.s(s),.r(r),.clk(clk),.rst(rst));
always #5 clk = ~clk;
initial begin
clk=0;
rst=0;
s=0;
r=0;
#10;
rst=1;
#10;
s=0;
r=0;
#10;
s=1;
r=0;
#10;
s=0;
r=0;
#10;
s=0;
r=1;
#10;
s=0;
r=0;
#10;
s=1;
r=1;
#10;
rst=0;
#10;
$finish;
end
initial begin
$monitor("Time=%0t|rst=%b|clk=%b|s=%b|r=%b|q=%b|qbar=%b",$time,rst,clk,s,r,q,qbar);
end
endmodule
