module muxfour(
input I0,I1,I2,I3,
input [1:0]sel,
output reg y
);

always @(*)
	begin
		case (sel[1:0])
		
			2'b00:y = I0;
			2'b01:y = I1;
			2'b10:y = I2;
			2'b11:y = I3;

		endcase
	end

endmodule