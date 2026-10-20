module mux_tb;
reg [3:0]i;
reg [1:0]s;
wire y;
mux uut(y,i,s);
initial
begin
$monitor("time=%0t i=%b s=%b y=%b",$time,i,s,y);
i=4'b1010;
s=2'b00;
#10;
s=2'b01;
#10;
s=2'b10;
#10;
s=2'b11;
#10;
i=4'b1101;
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
