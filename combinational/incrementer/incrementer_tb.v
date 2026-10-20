module incrementer_tb;
reg [3:0] a;
wire [3:0] s;
wire cout;
incrementer uut(s, cout, a);
initial
begin
$monitor("Time = %0t | a = %b | s = %b | cout = %b",$time, a, s, cout);
a = 4'b0000;
#10 a = 4'b0001;
#10 a = 4'b0010;
#10 a = 4'b0101;
#10 a = 4'b1001;
#10 a = 4'b1110;
#10 a = 4'b1111;
#10 $finish;
end
endmodule
