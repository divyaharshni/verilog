module mux(y,i,s);
output y;
input [3:0]i;
input [1:0]s;
wire [5:0]w;
assign w[0]=~s[0];
assign w[1]=~s[1];
assign w[2]=w[0]&w[1]&i[0];
assign w[3]=w[0]&s[1]&i[1];
assign w[4]=s[0]&w[1]&i[2];
assign w[5]=s[0]&s[1]&i[3];
assign y=w[2]|w[3]|w[4]|w[5];
endmodule
