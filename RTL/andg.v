`timescale 1 ns/1 ns

module andg(y,a,b);
input a,b;
output y;
and a1(y,a,b);
endmodule

/*
module andg_tb;
reg a,b;
wire y;
andg a2(y,a,b);
initial
repeat(100)
begin 
a=$random;
b=$random;
#100;
end 
endmodule
*/

