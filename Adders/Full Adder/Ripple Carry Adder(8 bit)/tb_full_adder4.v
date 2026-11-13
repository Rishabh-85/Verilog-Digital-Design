module tb_full_adder4;

reg [7:0]a,b;
reg cin;
wire [7:0]s;
wire co;
integer i;
reg [8:0]expected;

full_adder4 uut(.x(a), .y(b), .c_in(cin), .sum(s), .c_out(co));

initial
	begin
		$dumpfile("waveform.vcd");
		$dumpvars(1,tb_full_adder4);
		
		
		for(i=0;i<131072;i=i+1)begin
		{cin,a,b} = i;
		expected=a+b+cin;
		#10;
		if ({co,s} !== expected)
		$display("FAIL: a=%b b=%b cin=%b -> s=%b c_out=%b",a,b,cin,s,co);
		end
		$finish;
	end	
	
endmodule