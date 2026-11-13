module full_adder1(
input a,b,cin,
output s,co 
);

wire xor1, and1,and2,and3;
assign xor1 = a ^ b;
assign s = xor1 ^ cin;
assign and1 = a & cin;
assign and2 = b & cin;
assign and3 = a & b;
assign co = and1 | and2 | and3;

endmodule