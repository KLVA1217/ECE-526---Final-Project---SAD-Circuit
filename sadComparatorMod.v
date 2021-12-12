module sadComparatorMod(// Defining Ports
						input clk,
						input [23:0] sad,
						input [3:0] selROMa, selROMb,
						output [23:0] smallSAD, largeSAD,
						output [3:0] smallSADIndexA, smallSADIndexB, largeSADIndexA, largeSADIndexB
						);
	
	// Registers for finding the smallest SAD
	reg [23:0] smallSAD_reg = 8388607;
	reg [3:0] smallSADIndexA_reg;
	reg [3:0] smallSADIndexB_reg;
	
	// Smallest SAD Logic
	always@(posedge clk)
		begin
			if(sad < smallSAD_reg)
				begin
					smallSAD_reg = sad;
					smallSADIndexA_reg = selROMa + 1;
					smallSADIndexB_reg = selROMb + 1;
				end
		end
		
	// Register for finding the largest SAD
	reg [23:0] largeSAD_reg = 0;
	reg [3:0] largeSADIndexA_reg;
	reg [3:0] largeSADIndexB_reg;
	
// Smallest SAD Logic	
	always@(posedge clk)
		begin
			if(sad > largeSAD_reg)
				begin
					largeSAD_reg = sad;
					largeSADIndexA_reg = selROMa + 1;
					largeSADIndexB_reg = selROMb + 1;
				end
		end
		
	// Connecting appropriate registers to outputs
	assign smallSAD = smallSAD_reg;
	assign largeSAD = largeSAD_reg;
	assign smallSADIndexA = smallSADIndexA_reg;
	assign smallSADIndexB = smallSADIndexB_reg;
	assign largeSADIndexA = largeSADIndexA_reg ; 
	assign largeSADIndexB = largeSADIndexB_reg; 
		
endmodule