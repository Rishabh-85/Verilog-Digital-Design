module tb_half_sub;

reg a,b;
wire d,bo;

half_sub utt(.a(a), .b(b), .d(d), .bo(bo));

initial
	begin
		$dumpfile("waveform.vcd");
		$dumpvars(1,tb_half_sub);
		$monitor("t=%0t a=%b b=%b -> d=%b bo=%b",$time,a,b,d,bo);
		
		a=0; b=0; #10;
		a=0; b=1; #10;
		a=1; b=0; #10;
		a=1; b=1; #10;
		
		$finish;
	end
	
endmodule