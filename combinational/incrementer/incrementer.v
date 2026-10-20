module incrementer(s,cout,a);
output [3:0]s;
output cout;
input [3:0]a;
wire  [2:0]c;
fa FA1(s[0],c[0],a[0],1'b1,1'b0);
fa FA2(s[1],c[1],a[1],1'b0,c[0]);
fa FA3(s[2],c[2],a[2],1'b0,c[1]);
fa FA4(s[3],cout,a[3],1'b0,c[2]);
endmodule
module fa(sum,carry,a,b,c);
output sum,carry;
input a,b,c;
assign sum=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);
endmodule 
