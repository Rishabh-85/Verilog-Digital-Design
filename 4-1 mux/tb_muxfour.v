module tb_muxfour;

reg I0,I1,I2,I3;
reg [1:0]sel;
wire y;
integer i;

muxfour utt(.I0(I0), .I1(I1), .I2(I2), .I3(I3), .sel(sel), .y(y));

initial
	begin
	$dumpfile("waveform.vcd");
	$dumpvars(0,tb_muxfour);
	
	for(i=0;i<64;i=i+1)
	begin
		{sel,I3,I2,I1,I0} = i;
		#10;
	end
	
	$finish;
	end

endmodule