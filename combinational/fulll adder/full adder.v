module fa(sum, carry, a,b,cin );
output sum,carry;
input a,b,cin;
assign sum=a^b^cin;
assign carry=(a&b)|(a&cin)|(cin&b);
endmodule
module adder (s,cout,a,b,cin);
output [3:0]s;
output cout;
input [3:0]a,b;
input cin;
wire [3:0] c;
fa FA1(s[0],c[0],a[0],b[0],cin);
fa FA2(s[1],c[1],a[1],b[1],c[0]);
fa FA3(s[2],c[2],a[2],b[2],c[1]);
fa FA4(s[3],c[3],a[3],b[3],c[2]);
assign cout=c[3];
endmodule
