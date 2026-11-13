module full_sub(
input a,b,c,
output d,bo
);

assign d = a ^ b ^ c;
assign bo = (~a & c) | (~a & b) | (b & c);

endmodule