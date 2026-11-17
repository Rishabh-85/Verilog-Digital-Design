module tb_muxtwo;

reg I0,I1,en,sel;
wire y;
integer i;

muxtwo utt(.I0(I0), .I1(I1), .en(en), .sel(sel), .y(y));

initial
	begin
	$dumpfile("waveform.vcd");
	$dumpvars(1,tb_muxtwo);
	$monitor("t=%0t en=%b sel=%b I0=%b I1=%b -> y=%b",$time,en,sel,I0,I1,y);
	
	for (i=0;i<16;i++)
	begin
	{en,sel,I0,I1} = i;
	#10;
	end
	
	$finish;
	end
	
endmodule