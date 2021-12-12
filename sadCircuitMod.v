module sadCircuitMod
					(// Defining Ports
					input clk, rst,
					output outputValid,
					output [23:0] smallSAD, largeSAD,
					output [3:0] smallSADIndexA, smallSADIndexB, largeSADIndexA, largeSADIndexB
					);
	
	
	
	
	// ROM Loader Wires
	wire [7:0] romAdata01,romAdata02,romAdata03,romAdata04,romAdata05,romAdata06,romAdata07,romAdata08,romAdata09,romAdata10,romAdata11,romAdata12,romAdata13,romAdata14,romAdata15,romAdata16;
	wire [7:0] romBdata01,romBdata02,romBdata03,romBdata04,romBdata05,romBdata06,romBdata07,romBdata08,romBdata09,romBdata10,romBdata11,romBdata12,romBdata13,romBdata14,romBdata15,romBdata16;
	
	// Counter selROM Wires
	wire [3:0] selROMa,selROMb;
	
	// SAD Module Wires
	wire [23:0] sad;
	
	// Instantiate Counter Module
	counterMod #(15) counterMod01(clk,rst,selROMa,selROMb,outputValid);

	// Instantiate ROM Loader Module
	romLoaderMod romLoaderModInst (selROMa,selROMb,romAdata01,romAdata02,romAdata03,romAdata04,romAdata05,romAdata06,romAdata07,romAdata08,romAdata09,romAdata10,romAdata11,romAdata12,romAdata13,romAdata14,romAdata15,romAdata16,romBdata01,romBdata02,romBdata03,romBdata04,romBdata05,romBdata06,romBdata07,romBdata08,romBdata09,romBdata10,romBdata11,romBdata12,romBdata13,romBdata14,romBdata15,romBdata16);

	// Instantiate SAD Module
	sadMod sadModInst(romAdata01,romAdata02,romAdata03,romAdata04,romAdata05,romAdata06,romAdata07,romAdata08,romAdata09,romAdata10,romAdata11,romAdata12,romAdata13,romAdata14,romAdata15,romAdata16,romBdata01,romBdata02,romBdata03,romBdata04,romBdata05,romBdata06,romBdata07,romBdata08,romBdata09,romBdata10,romBdata11,romBdata12,romBdata13,romBdata14,romBdata15,romBdata16,sad);

	// Instantiate sadComparatorMod
	sadComparatorMod sadComparatorModInst (clk, sad, selROMa, selROMb, smallSAD, largeSAD, smallSADIndexA, smallSADIndexB, largeSADIndexA, largeSADIndexB);
					
endmodule