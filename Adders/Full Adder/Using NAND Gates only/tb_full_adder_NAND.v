module tb_full_adder_NAND;

reg a,b,c;
wire s,co;
integer i;

full_adder_NAND utt(.a(a), .b(b), .c(c), .s(s), .co(co));

initial
	begin
	
	$dumpfile("waveform.vcd");
	$dumpvars(1,tb_full_adder_NAND);
	$monitor("t=%0t a=%b b=%b c=%b -> s=%b co=%b",$time,a,b,c,s,co);
	
	for(i=0;i<8;i=i+1)
	begin
	{a,b,c}=i;
	#10;
	end 
	
	$finish;
	
	end
	
endmodule