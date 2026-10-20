module encoder_tb;
reg [3:0]i;
wire [1:0]y;
encoder uut(y,i);
initial
begin
$monitor("time=%0t i=%b y=%b",$time,i,y);
i=4'b0001;
#10;
i=4'b0010;
#10;
i=4'b0100;
#10;
i=4'b1000;
#10;
$finish;
end
endmodule
