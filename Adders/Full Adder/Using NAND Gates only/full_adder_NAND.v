module full_adder_NAND(
input a,b,c,
output s,co
);

wire [6:0]n;

assign n[0] = ~(a&b);
assign n[1] = ~(n[0]&a);
assign n[2] = ~(n[0]&b);
assign n[3] = ~(n[1]&n[2]);
assign n[4] = ~(n[3]&c);
assign n[5] = ~(n[3]&n[4]);
assign n[6] = ~(n[4]&c);
assign s = ~(n[5]&n[6]);
assign co = ~(n[4]&n[0]);

endmodule