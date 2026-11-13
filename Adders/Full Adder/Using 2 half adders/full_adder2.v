module half_adder(
	input a,b,
	output s,co1
	);
	assign s = a ^ b;
	assign co1 = a & b;
endmodule

module full_adder2(
	input a,b,cin,
	output sum,c_out
	);

	wire s1,c1,c2;

	assign c_out = c1 | c2;

half_adder ha1(
	.a(a),
	.b(b),
	.s(s1),
	.co1(c1)
	);

half_adder ha2(
	.a(s1),
	.b(cin),
	.s(sum),
	.co1(c2)
	);

endmodule