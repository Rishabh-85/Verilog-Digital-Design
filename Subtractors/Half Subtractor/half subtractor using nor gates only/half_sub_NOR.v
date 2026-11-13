module half_sub_NOR(
input a,b,
output d,bo
);

wire [3:0]c;

assign c[0] = ~(a|b);
assign c[1] = ~(c[0]|a);
assign c[2] = ~(c[0]|b);
assign c[3] = ~(c[1]|c[2]);
assign d = ~(c[3]|c[3]);
assign bo = c[1];

endmodule