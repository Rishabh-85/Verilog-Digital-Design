module full_sub_NAND(
input a,b,c,
output d,bo
);

wire [6:0]z;

assign z[0] = ~(a&b);
assign z[1] = ~(z[0]&a);
assign z[2] = ~(z[0]&b);
assign z[3] = ~(z[1]&z[2]);
assign z[4] = ~(z[3]&c);
assign z[5] = ~(z[3]&z[4]);
assign z[6] = ~(z[4]&c);
assign d = ~(z[5]&z[6]);
assign bo = ~(z[2]&z[6]);

endmodule