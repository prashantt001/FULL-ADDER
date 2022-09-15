module ha(s,c,a,b);
input a,b;
output s,c;

assign s=a^b;
assign c=a&b;
endmodule

module FULL_ADDER (s,c,a,b,cin);
input a,b,cin;
output s,c;

wire w1,w2,w3;

ha g1(w1,w2,a,b);
ha g2(s,w3,w1,cin);
assign c=w2|w3;
endmodule
