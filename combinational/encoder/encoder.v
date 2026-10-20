module encoder(y,i);
output [1:0]y;
input [3:0]i;
assign y[1]=i[2]|i[3];
assign y[0]=i[1]|i[3];
endmodule
