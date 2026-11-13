module tb_half_adder_NOR;

reg a,b;
wire s,co;

half_adder_NOR uut(.a(a), .b(b), .s(s), .co(co));

initial 
	begin
	
	$dumpfile("waveform.vcd");
	$dumpvars(1,tb_half_adder_NOR);
	$monitor("t=%0t a=%b b=%b s=%b co=%b", $time,a,b,s,co);
	
	a=0; b=0; #10;
	a=0; b=1; #10;
	a=1; b=0; #10;
	a=1; b=1; #10;
	
	$finish;
	
	end

endmodule