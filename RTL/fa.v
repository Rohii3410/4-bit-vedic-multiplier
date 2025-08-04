`timescale 1 ns/1 ns
module fag(s,c,a,b,cin);
input a,b,cin;
output s,c;
wire [3:1]w;
xor x1(w[1],a,b);
and x2(w[2],a,b);
xor x3(s,w[1],cin);
and x4(w[3],cin,w[1]);
or x5(c,w[2],w[3]);
endmodule
