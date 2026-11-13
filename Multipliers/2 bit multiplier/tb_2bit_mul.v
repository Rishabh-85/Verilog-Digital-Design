module tb_Twobit_mul;

  reg a0, a1, b0, b1;
  wire c1, c2, p0, p1, p2, p3;
  integer i;
  integer errors;
  reg [1:0] a, b;
  reg [3:0] expected;

  Twobit_mul uut (
    .a0(a0), .a1(a1),
    .b0(b0), .b1(b1),
    .c1(c1), .c2(c2),
    .p0(p0), .p1(p1), .p2(p2), .p3(p3)
  );

  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_Twobit_mul);

    errors = 0;

    for (i = 0; i < 16; i = i + 1) begin
      {a, b} = i;                 // upper 2 bits go to a, lower 2 bits to b
      {a1, a0} = a;
      {b1, b0} = b;
      expected = a * b;
      #10;
      if ({p3, p2, p1, p0} !== expected) begin
        $display("FAIL: %0d x %0d -> got %0d, expected %0d",
                 a, b, {p3, p2, p1, p0}, expected);
        errors = errors + 1;
      end
    end

    if (errors == 0) $display("PASS: all 16 cases passed");
    else             $display("FAILED: %0d errors", errors);

    $finish;
  end

endmodule