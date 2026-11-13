module tb_full_adder2;

reg a,b,cin;
wire sum, c_out;
reg exp_sum,exp_cout;
integer i;

full_adder2 uut(
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.c_out(c_out)
);

initial 
	begin
		$dumpfile("waveform.vcd");
		$dumpvars(1,tb_full_adder2);
		$monitor ("t=%0t a=%b b=%b cin=%b -> sum=%b c_out=%b",$time,a,b,cin,sum,c_out);
		
		for(i=0;i<8;i=i+1)
			begin
				{a,b,cin} = i;
				exp_sum = a^b^cin;
				exp_cout= (a&b) | (cin & (a ^ b));
				#10;
				if(sum !== exp_sum || c_out !== exp_cout)
				$display("Fail! a=%b b=%b sum=%b c_out=%b",a,b,sum,c_out);
			end
		$finish;	
	end
	
endmodule
		