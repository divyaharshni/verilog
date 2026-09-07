module adder_tb;
reg [3:0] a,b;
reg cin;
wire [3:0] s;
wire cout;
adder uut(s,cout,a,b,cin);
initial
begin
$monitor("time=%0t a=%b b=%b cin=%b s=%b cout=%b",$time,a,b,cin,s,cout);
a=4'b0000;
b=4'b0000;
cin=0;
#10;
a=4'b0011;
b=4'b0010;
cin=0;
#10;
a=4'b0101;
b=4'b0011;
cin=0;
#10;
a=4'b1111;
b=4'b0001;
cin=0;
#10;
a=4'b1010;
b=4'b0101;
cin=1;
#10;
$finish;
end
endmodule
