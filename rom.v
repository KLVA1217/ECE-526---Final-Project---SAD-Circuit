module rom
        #
        (// Parameter to define which text file to initialize ROMs from
            parameter file = "mem.txt"
        )
        (
			output [7:0] data01,
			output [7:0] data02,
			output [7:0] data03,
			output [7:0] data04,
			output [7:0] data05,
			output [7:0] data06,
			output [7:0] data07,
			output [7:0] data08,
			output [7:0] data09,
			output [7:0] data10,
			output [7:0] data11,
			output [7:0] data12,
			output [7:0] data13,
			output [7:0] data14,
			output [7:0] data15,
			output [7:0] data16
		);
				  
	// Instantiating Memory
	reg [7:0] memory [0:15];
	
	//Initialing Memory
	initial
		begin
			$readmemb(file,memory);
		end
	
	// Have every element of the ROM be outputted.
	assign data01 = memory[0];
	assign data02 = memory[1];
	assign data03 = memory[2];
	assign data04 = memory[3];
	assign data05 = memory[4];
	assign data06 = memory[5];
	assign data07 = memory[6];
	assign data08 = memory[7];
	assign data09 = memory[8];
	assign data10 = memory[9];
	assign data11 = memory[10];
	assign data12 = memory[11];
	assign data13 = memory[12];
	assign data14 = memory[13];
	assign data15 = memory[14];
	assign data16 = memory[15];
	
endmodule