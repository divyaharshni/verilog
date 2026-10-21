module ring_counter_tb;
reg clk,rst;
wire [3:0]q;
ring_counter uut(q,clk,rst);
always #5 clk=~clk;
initial
begin
$monitor("time=%0t clk=%b rst=%b q=%b",$time,clk,rst,q);
clk=0;
rst=1;
#10;
rst=0;
#80;
$finish;
end
endmodule
