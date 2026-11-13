module full_adder(
	input a,b,cin,
	output s,co
	);
	
	assign s = a ^ b ^ cin;
	assign co = (a & b) | (cin & (a ^ b));
	
endmodule	

module full_adder3(
	input [3:0]x,y,
	input c_in,
	output [3:0]sum,
	output c_out
	);

wire [2:0]c;

full_adder fa1(.a(x[0]), .b(y[0]), .cin(c_in), .s(sum[0]), .co(c[0]));
full_adder fa2(.a(x[1]), .b(y[1]), .cin(c[0]), .s(sum[1]), .co(c[1]));
full_adder fa3(.a(x[2]), .b(y[2]), .cin(c[1]), .s(sum[2]), .co(c[2]));
full_adder fa4(.a(x[3]), .b(y[3]), .cin(c[2]), .s(sum[3]), .co(c_out));

endmodule