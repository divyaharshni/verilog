module adder(sum,carry,a,b,cin);
output sum,carry;
input a,b,cin;
assign sum = a ^ b ^ cin;
assign carry = (a & b) | (a & cin) | (b & cin);
endmodule
module add_sub(s,cout,a,b,cin);
output [3:0] s;
output cout;
input [3:0] a,b;
input cin;
wire [3:0] c;
wire [3:0] x;
assign x[0] = b[0] ^ cin;
assign x[1] = b[1] ^ cin;
assign x[2] = b[2] ^ cin;
assign x[3] = b[3] ^ cin;
adder fa1(s[0],c[0],a[0],x[0],cin);
adder fa2(s[1],c[1],a[1],x[1],c[0]);
adder fa3(s[2],c[2],a[2],x[2],c[1]);
adder fa4(s[3],c[3],a[3],x[3],c[2]);
assign cout = c[3];
endmodule
