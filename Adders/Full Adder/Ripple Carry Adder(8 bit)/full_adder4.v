module full_adder(
input a,b,cin,
output s,co
);

assign s = a ^ b ^ cin;
assign co = (a & b) | cin & (a ^ b);

endmodule

module full_adder4(
input [7:0]x,y,
input c_in,
output [7:0]sum,
output c_out
);

wire [6:0]c;

full_adder inst1(.a(x[0]), .b(y[0]), .cin(c_in), .s(sum[0]), .co(c[0]));
full_adder inst2(.a(x[1]), .b(y[1]), .cin(c[0]), .s(sum[1]), .co(c[1]));
full_adder inst3(.a(x[2]), .b(y[2]), .cin(c[1]), .s(sum[2]), .co(c[2]));
full_adder inst4(.a(x[3]), .b(y[3]), .cin(c[2]), .s(sum[3]), .co(c[3]));
full_adder inst5(.a(x[4]), .b(y[4]), .cin(c[3]), .s(sum[4]), .co(c[4]));
full_adder inst6(.a(x[5]), .b(y[5]), .cin(c[4]), .s(sum[5]), .co(c[5]));
full_adder inst7(.a(x[6]), .b(y[6]), .cin(c[5]), .s(sum[6]), .co(c[6]));
full_adder inst8(.a(x[7]), .b(y[7]), .cin(c[6]), .s(sum[7]), .co(c_out));

endmodule