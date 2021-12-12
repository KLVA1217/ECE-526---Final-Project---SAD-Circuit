module sadMod
			(// defining ports
				input  [7:0] romAdata01,romAdata02,romAdata03,romAdata04,romAdata05,romAdata06,romAdata07,romAdata08,romAdata09,romAdata10,romAdata11,romAdata12,romAdata13,romAdata14,romAdata15,romAdata16,
				input  [7:0] romBdata01,romBdata02,romBdata03,romBdata04,romBdata05,romBdata06,romBdata07,romBdata08,romBdata09,romBdata10,romBdata11,romBdata12,romBdata13,romBdata14,romBdata15,romBdata16,
				output [23:0] sad
			);

	// signed wires to take subtraction results and absolute values
	wire signed [23:0] diff01,diff02,diff03,diff04,diff05,diff06,diff07,diff08,diff09,diff10,diff11,diff12,diff13,diff14,diff15,diff16;
	wire signed [23:0] abVal01,abVal02,abVal03,abVal04,abVal05,abVal06,abVal07,abVal08,abVal09,abVal10,abVal11,abVal12,abVal13,abVal14,abVal15,abVal16;

	// absolute value module instances for each subtraction
	abValMod abValMod01 (diff01,abVal01);
	abValMod abValMod02 (diff02,abVal02);
	abValMod abValMod03 (diff03,abVal03);
	abValMod abValMod04 (diff04,abVal04);
	abValMod abValMod05 (diff05,abVal05);
	abValMod abValMod06 (diff06,abVal06);
	abValMod abValMod07 (diff07,abVal07);
	abValMod abValMod08 (diff08,abVal08);
	abValMod abValMod09 (diff09,abVal09);
	abValMod abValMod10 (diff10,abVal10);
	abValMod abValMod11 (diff11,abVal11);
	abValMod abValMod12 (diff12,abVal12);
	abValMod abValMod13 (diff13,abVal13);
	abValMod abValMod14 (diff14,abVal14);
	abValMod abValMod15 (diff15,abVal15);
	abValMod abValMod16 (diff16,abVal16);

	// combinational/dataflow way to obtain subtraction results
	assign diff01 = romAdata01 - romBdata01;
	assign diff02 = romAdata02 - romBdata02;
	assign diff03 = romAdata03 - romBdata03;
	assign diff04 = romAdata04 - romBdata04;
	assign diff05 = romAdata05 - romBdata05;
	assign diff06 = romAdata06 - romBdata06;
	assign diff07 = romAdata07 - romBdata07;
	assign diff08 = romAdata08 - romBdata08;
	assign diff09 = romAdata09 - romBdata09;
	assign diff10 = romAdata10 - romBdata10;
	assign diff11 = romAdata11 - romBdata11;
	assign diff12 = romAdata12 - romBdata12;
	assign diff13 = romAdata13 - romBdata13;
	assign diff14 = romAdata14 - romBdata14;
	assign diff15 = romAdata15 - romBdata15;
	assign diff16 = romAdata16 - romBdata16;

	// combinational/dataflwo way to take the sum of the absolute differrences but also connecting the result to output.
	assign sad = (abVal01 + abVal02 + abVal03 + abVal04 + abVal05 + abVal06 + abVal07 + abVal08 + abVal09 + abVal10 + abVal11 + abVal12 + abVal13 + abVal14 + abVal15 + abVal16);

endmodule