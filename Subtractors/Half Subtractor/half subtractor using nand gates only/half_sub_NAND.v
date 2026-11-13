module half_sub_NAND(
input a,b,
output d,bo
);

wire [2:0]w;

assign w[0] = ~(a&b);
assign w[1] = ~(w[0]&a);
assign w[2] = ~(w[0]&b);
assign d = ~(w[1]&w[2]);
assign bo = ~(w[2]&w[2]);

endmodule