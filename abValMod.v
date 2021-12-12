module abValMod
				(
				input  signed [23:0] i,
				output signed [23:0] o
				);

	// absolute value logic
	// Conditional where if the msb of the subtraction result is a one then obtain the absolute value by multiplying that value by -1. Otherwise don't do anything.
  assign o = i[23] ? -i : i;
  
endmodule