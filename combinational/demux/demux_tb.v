module demux_tb;
reg i;
reg [1:0]s;
wire [3:0]y;
demux uut(y,i,s);
initial
begin
$monitor("time=%0t i=%b s=%b y=%b",$time,i,s,y);
i=1'b1;
s=2'b00;
#10;
s=2'b01;
#10;
s=2'b10;
#10;
s=2'b11;
#10;
i=1'b0;
s=2'b00;
#10;
s=2'b01;
#10;
s=2'b10;
#10;
s=2'b11;
#10;
$finish;
end
endmodule
