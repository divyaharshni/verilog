module adder(sum,carry,a,b,cin);
output sum,carry;
input a,b,cin;
assign sum = a ^ b ^ cin;
assign carry = (a & b) | (a & cin) | (cin & b);
endmodule
module decrementor(s,cout,a);
output [3:0] s;
output cout;
input [3:0] a;
wire [3:0] c;
adder FA1(s[0],c[0],a[0],1'b1,1'b0);
adder FA2(s[1],c[1],a[1],1'b1,c[0]);
adder FA3(s[2],c[2],a[2],1'b1,c[1]);
adder FA4(s[3],cout,a[3],1'b1,c[2]);
endmodule
