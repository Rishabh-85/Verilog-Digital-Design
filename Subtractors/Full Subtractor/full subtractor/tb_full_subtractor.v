module tb_full_sub;

reg a,b,c;
wire d,bo;

full_sub utt(.a(a), .b(b), .c(c), .d(d), .bo(bo));

initial 
	begin
		$dumpfile("waveform.vcd");
		$dumpvars(1,tb_full_sub);
		$monitor("t=%0t a=%b b=%b c=%b -> d=%b bo=%b",$time,a,b,c,d,bo);
		a=0; b=0; c=0; #10;
		a=0; b=0; c=1; #10;
		a=0; b=1; c=0; #10;
		a=0; b=1; c=1; #10;
		a=1; b=0; c=0; #10;
		a=1; b=0; c=1; #10;
		a=1; b=1; c=0; #10;
		a=1; b=1; c=1; #10;
		
		$finish;a=0; b=0; c=0; #10;
	end

endmodule	