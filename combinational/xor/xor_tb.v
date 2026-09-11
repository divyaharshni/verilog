module xor_gate_tb;
reg a,b;
wire c;
xor_gate uut(a,b,c);
initial begin
a = 0;
b = 0;
#10;
a = 0;
b = 1;
#10;
a = 1;
b = 0;
#10;
a = 1;
b = 1;
#10;
$finish;
end
initial begin
$monitor("Time=%0t A=%b B=%b C=%b",$time,a,b,c);
end
endmodule
