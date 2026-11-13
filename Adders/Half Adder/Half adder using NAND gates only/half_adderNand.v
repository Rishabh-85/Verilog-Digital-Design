module half_adderNand(
input a,b,
output s,co
);

wire n[2:0];

assign n[0] = ~(a&b);
assign n[1] = ~(a&n[0]);
assign n[2] = ~(b&n[0]);
assign s = ~(n[1]&n[2]);
assign co = ~(n[0]&n[0]);

endmodule