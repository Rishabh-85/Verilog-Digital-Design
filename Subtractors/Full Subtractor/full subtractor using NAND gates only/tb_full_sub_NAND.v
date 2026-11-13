module tb_full_sub_NAND;

reg a,b,c;
wire d,bo;
integer i;
reg [1:0]expected;

full_sub_NAND utt(.a(a), .b(b), .c(c), .d(d), .bo(bo));

initial


	begin
	$dumpfile("waveform.vcd");
	$dumpvars(1,tb_full_sub_NAND);
	
		for (i=0;i<8;i++)
			begin
			
			{a,b,c} = i;
			expected = a-b-c;
			#10;
			
			if({bo,d} !== expected)
			$display("FAIL: a=%b b=%b c=%b -> d=%b bo=%b",a,b,c,d,bo);
			
			end	
	$finish;
	
	end

endmodule