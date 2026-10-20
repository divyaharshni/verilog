module adder_tb;
reg [3:0] a,b;
reg cin;
wire [3:0] s;
wire cout;
add_sub uut(s,cout,a,b,cin);
initial 
begin
$monitor("Time=%0t | A=%b | B=%b | CIN=%b | S=%b | COUT=%b", $time,a,b,cin,s,cout);
a = 4'b0101; b = 4'b0011; cin = 0;
#10;
a = 4'b0111; b = 4'b0010; cin = 0;
#10;
a = 4'b1001; b = 4'b0101; cin = 0;
#10;
a = 4'b0101; b = 4'b0011; cin = 1;
#10;
a = 4'b1001; b = 4'b0011; cin = 1;
#10;
a = 4'b0110; b = 4'b0010; cin = 1;
#10;
$finish;
end
endmodule
