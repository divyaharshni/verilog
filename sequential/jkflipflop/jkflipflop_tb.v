module jkflipflop_tb;
reg j,k,clk,rst;
wire q,qbar;
jkflipflop uut(.q(q),.qbar(qbar),.j(j),.k(k),.clk(clk),.rst(rst));
always #5 clk =~clk;
initial begin
clk=0;
rst=0;
j=0;
k=0;
#10;
rst=1;
#10;
j=0;
k=0;
#10;
j=0;
k=1;
#10;
j=1;
k=0;
#10;
j=1;
k=1;
#10;
j=1;
k=1;
#10;
rst=0;
#10;
rst=1;
#10;
$finish;
end
initial begin
$monitor("Time=%0t | rst=%b | clk=%b | j=%b | k=%b | q=%b | qbar=%b",$time,rst,clk,j,k,q,qbar);
end
endmodule
