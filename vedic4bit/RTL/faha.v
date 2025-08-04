`timescale 1 ns/1 ns
`include "fa.v"
`include "ha.v"
module faha(s,c0,c1,a,b,c,d);
input a,b,c,d;
output s,c0,c1;
wire w;
fag a1(w,c0,a,b,c);
hag a2(s,c1,w,d);
endmodule
/*
module faha_tb;
reg a,b,c,d;
wire s,c0,c1;
faha a3(s,c0,c1,a,b,c,d);
initial
repeat(100)
begin
a=$random;
b=$random;
c=$random;
d=$random;
#100;
end
endmodule
*/
