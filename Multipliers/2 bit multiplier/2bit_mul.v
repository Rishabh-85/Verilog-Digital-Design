module Twobit_mul(
input a0,a1,b0,b1,
output c1,c2,p0,p1,p2,p3
);

wire [2:0]x;

assign x[0] = a1 & b0;
assign x[1] = a0 & b1;
assign x[2] = a1 & b1;
assign p0 = a0 & b0;
assign p1 = x[0] ^ x[1];
assign c1 = x[0] & x[1];
assign p2 = x[2] ^ c1;
assign c2 = x[2] & c1;
assign p3 = c2;

endmodule