`timescale 1 ns/1 ns
//`include "faha.v"
`include "andg.v"
`include "ha.v"
`include "fa.v"
module vedic4bit(p,a,b);
input [3:0]a,b;
output [7:0]p;
wire [32:1]w;

andg z1(p[0],a[0],b[0]);// and block
andg z2(w[1],a[1],b[0]);
andg z3(w[2],a[0],b[1]);
hag z4(p[1],w[3],w[1],w[2]);  //1-1st ha adder
andg z5(w[4],a[2],b[0]);
andg z6(w[5],a[1],b[1]);
andg z7(w[6],a[0],b[2]);
fag z8(w[7],w[8],w[4],w[5],w[6]);  //1-1 full adder
hag z9(p[2],w[9],w[3],w[7]); //3-1 half addr
andg z10(w[10],a[3],b[0]); 
andg z11(w[11],a[2],b[1]);
andg z12(w[12],a[1],b[2]);
fag z13(w[13],w[14],w[10],w[11],w[12]); //1-2 full addr
andg z14(w[15],a[0],b[3]);
hag z15(w[16],w[17],w[13],w[15]); //2-1 ha
fag z16(p[3],w[18],w[16],w[8],w[9]);//3-1 fa
andg z17(w[19],a[3],b[1]); 
andg z19(w[20],a[2],b[2]);
andg z20(w[21],a[1],b[3]);
fag z21(w[22],w[23],w[20],w[21],w[19]);//1-3 full addr
hag z22(w[24],w[25],w[22],w[14]); //2-2 full addr
fag z23(p[4],w[26],w[18],w[17],w[24]);//3-2 full addr
andg z24(w[27],a[2],b[3]);
andg z25(w[28],a[3],b[2]);
fag z26(w[29],w[30],w[23],w[27],w[28]);  // 1-3 full adder
fag z27(p[5],w[31],w[26],w[25],w[29]); //3-3 full adder
andg z28(w[32],a[3],b[3]);
fag z29(p[6],p[7],w[31],w[30],w[32]);
endmodule


module vedic4bit_tb;
reg [3:0]a,b;
wire [7:0]p;
vedic4bit aa1(p,a,b);
initial
repeat(100)
begin
a=$random;
b=$random;
#100;
end
endmodule



