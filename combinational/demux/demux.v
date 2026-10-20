module demux(y,i,s);
output [3:0]y;
input i;
input [1:0]s;
wire [1:0]w;
assign w[0]=~s[0];
assign w[1]=~s[1];
assign y[0]=w[0]&w[1]&i;
assign y[1]=w[0]&s[1]&i;
assign y[2]=s[0]&w[1]&i;
assign y[3]=s[0]&s[1]&i;
endmodule
