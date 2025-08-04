`timescale 1 ns/1 ns

module hag(s,c,a,b);
input a,b;
output s,c;
xor a1(s,a,b);
and a2(c,a,b);
endmodule

/*
module hag_tb;
reg a,b;
wire s,c;
hag a3(s,c,a,b);
initial
repeat(100)
begin
a=$random;
b=$random;
#100;
end 
endmodule*/
