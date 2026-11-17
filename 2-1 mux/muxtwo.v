module muxtwo(
input I0,I1,en,sel,
output reg y
);

always @(*)
begin

y = (sel ? I1 : I0) & en;

end  

endmodule