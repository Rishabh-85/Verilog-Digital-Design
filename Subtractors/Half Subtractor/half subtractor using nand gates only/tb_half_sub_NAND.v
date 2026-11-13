module tb_half_sub_NAND;

reg a,b;
wire d,bo;
integer i;

half_sub_NAND utt(.a(a), .b(b), .d(d), .bo(bo));

initial
	begin
	$dumpfile("waveform.vcd");
	$dumpvars(1,tb_half_sub_NAND);
	$monitor("t=%0t a=%b b=%b -> d=%b bo=%b",$time,a,b,d,bo);
	
	for(i=0;i<4;i=i+1)
	begin
	{a,b} = i;
	#10;
	end
	
	$finish;
	end
	
endmodule	