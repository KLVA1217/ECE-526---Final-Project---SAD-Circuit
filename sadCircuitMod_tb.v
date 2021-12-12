`define clkPeriod 10
`define numOfSets 16

module rom_tb();

	// Counter
	reg clk = 0;
    reg rst;
	
	// SAD Circuit Wires
    wire outputValid;
	wire [23:0] smallSAD, largeSAD;
	wire [3:0] smallSADIndexA, smallSADIndexB, largeSADIndexA, largeSADIndexB;

	// Instantiate SAD Circuit Module
	sadCircuitMod sadCircuitModInst(clk, rst, outputValid,smallSAD, largeSAD,smallSADIndexA, smallSADIndexB, largeSADIndexA, largeSADIndexB);

	// Clock Generator
    initial begin
            forever begin
                #(`clkPeriod/2) clk = ~clk;
            end
    end
	
	initial
		begin
			$vcdpluson;
			
			$monitor("%0d: Output Valid: %b, smallSAD: %0d, smallSADIndexA: %0d, smallSADIndexB: %0d, largeSAD: %0d, largeSADIndexA: %0d, largeSADIndexB: %0d", $time, outputValid, smallSAD, smallSADIndexA, smallSADIndexB, largeSAD, largeSADIndexA, largeSADIndexB);
						
			rst = 1;
      
			#(`clkPeriod*1)
      
			rst = 0;
      
			#(`clkPeriod*120)
			
			$finish;
	end

endmodule
