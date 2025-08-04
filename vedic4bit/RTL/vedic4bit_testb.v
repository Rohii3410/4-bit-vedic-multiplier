`timescale 1 ns/1 ns
`include "vedic4bit.v"

module vedic4bitest_tb;
reg [3:0]a,b;
wire [7:0]t;
integer i;

vedic4bit n32(t,a,b);

initial
begin
$monitor ("a-%d,b-%d --> t-%d",a,b,t);
for(i=0;i<256;i=i+1)
begin
	{a,b}=i;#5;
end
end
endmodule
