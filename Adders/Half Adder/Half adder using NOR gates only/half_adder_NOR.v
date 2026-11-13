module half_adder_NOR(
input a,b,
output s,co
);

wire [2:0]no;

assign no[0] = ~(a|b);
assign no[1] = ~(a|a);
assign no[2] = ~(b|b);
assign co = ~(no[1]|no[2]);
assign s = ~(no[0]|co);

endmodule