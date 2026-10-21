module bidirectional_counter_tb;
reg clk,rst,dir;
wire [3:0]q;
bidirectional_counter uut(q,clk,rst,dir);
always #5 clk=~clk;
initial
begin
$monitor("time=%0t clk=%b rst=%b dir=%b q=%b",$time,clk,rst,dir,q);
clk=0;
rst=1;
dir=1;
#10;
rst=0;
#80;
dir=0;
#80;
$finish;
end
endmodule
