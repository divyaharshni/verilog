module tflipflop_tb;
reg t,clk,rst;
wire q,qbar;
tflipflop uut(.q(q),.qbar(qbar),.t(t),.clk(clk),.rst(rst));
always #5 clk =~clk;
initial begin
clk=0;
rst=0;
t=0;
#10;
rst=1;
#10;
t=0;
#10;
t=1;
#10;
t=1;
#10;
t=0;
#10;
t=1;
#10;
rst=0;
#10;
rst=1;
#10;
$finish;
end
initial begin
$monitor("Time=%0t|rst=%b|clk=%b|t=%b|q=%b|qbar=%b",
$time,rst,clk,t,q,qbar);
end
endmodule
