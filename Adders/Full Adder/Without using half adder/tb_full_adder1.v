module tb_full_adder1;

reg a,b,cin;
wire s,co;

full_adder1 uut(
.a(a),
.b(b),
.cin(cin),
.s(s),
.co(co)
);

initial
	begin
		$dumpfile("waveform.vcd");
		$dumpvars(1,tb_full_adder1);
		
		$monitor("t=%0t a=%b b=%b cin=%b -> s=%b co=%b", $time, a,b,cin,s,co);
		
		a=0;b=0;cin=0;#10;
		a=0;b=0;cin=1;#10;
		a=0;b=1;cin=0;#10;
		a=0;b=1;cin=1;#10;
		a=1;b=0;cin=0;#10;
		a=1;b=0;cin=1;#10;
		a=1;b=1;cin=0;#10;
		a=1;b=1;cin=1;#10;
		
		#10;$finish;
	
	end

endmodule	