module romLoaderMod (// Defining Ports
						input [3:0] selROMa, selROMb,
						output [7:0] romAdata01,romAdata02,romAdata03,romAdata04,romAdata05,romAdata06,romAdata07,romAdata08,romAdata09,romAdata10,romAdata11,romAdata12,romAdata13,romAdata14,romAdata15,romAdata16,
						output [7:0] romBdata01,romBdata02,romBdata03,romBdata04,romBdata05,romBdata06,romBdata07,romBdata08,romBdata09,romBdata10,romBdata11,romBdata12,romBdata13,romBdata14,romBdata15,romBdata16
					);
		
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	// Similar to opcodes but for selecting certain roms
	localparam selROM01 = 0; // 0
	localparam selROM02 = 1; // 1
	localparam selROM03 = 2; // 2
	localparam selROM04 = 3; // 3
	localparam selROM05 = 4; // 4
	localparam selROM06 = 5; // 5
	localparam selROM07 = 6; // 6
	localparam selROM08 = 7; // 7
	localparam selROM09 = 8; // 8
	localparam selROM10 = 9; // 9
	localparam selROM11 = 10; // 10
	localparam selROM12 = 11; // 11
	localparam selROM13 = 12; // 12
	localparam selROM14 = 13; // 13
	localparam selROM15 = 14; // 14
	localparam selROM16 = 15; // 15
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	// Wires to obtain ROM data
	wire [7:0] rom01data01,rom01data02,rom01data03,rom01data04,rom01data05,rom01data06,rom01data07,rom01data08,rom01data09,rom01data10,rom01data11,rom01data12,rom01data13,rom01data14,rom01data15,rom01data16;
	wire [7:0] rom02data01,rom02data02,rom02data03,rom02data04,rom02data05,rom02data06,rom02data07,rom02data08,rom02data09,rom02data10,rom02data11,rom02data12,rom02data13,rom02data14,rom02data15,rom02data16;
	wire [7:0] rom03data01,rom03data02,rom03data03,rom03data04,rom03data05,rom03data06,rom03data07,rom03data08,rom03data09,rom03data10,rom03data11,rom03data12,rom03data13,rom03data14,rom03data15,rom03data16;
	wire [7:0] rom04data01,rom04data02,rom04data03,rom04data04,rom04data05,rom04data06,rom04data07,rom04data08,rom04data09,rom04data10,rom04data11,rom04data12,rom04data13,rom04data14,rom04data15,rom04data16;
	wire [7:0] rom05data01,rom05data02,rom05data03,rom05data04,rom05data05,rom05data06,rom05data07,rom05data08,rom05data09,rom05data10,rom05data11,rom05data12,rom05data13,rom05data14,rom05data15,rom05data16;
	wire [7:0] rom06data01,rom06data02,rom06data03,rom06data04,rom06data05,rom06data06,rom06data07,rom06data08,rom06data09,rom06data10,rom06data11,rom06data12,rom06data13,rom06data14,rom06data15,rom06data16;
	wire [7:0] rom07data01,rom07data02,rom07data03,rom07data04,rom07data05,rom07data06,rom07data07,rom07data08,rom07data09,rom07data10,rom07data11,rom07data12,rom07data13,rom07data14,rom07data15,rom07data16;
	wire [7:0] rom08data01,rom08data02,rom08data03,rom08data04,rom08data05,rom08data06,rom08data07,rom08data08,rom08data09,rom08data10,rom08data11,rom08data12,rom08data13,rom08data14,rom08data15,rom08data16;
	wire [7:0] rom09data01,rom09data02,rom09data03,rom09data04,rom09data05,rom09data06,rom09data07,rom09data08,rom09data09,rom09data10,rom09data11,rom09data12,rom09data13,rom09data14,rom09data15,rom09data16;
	wire [7:0] rom10data01,rom10data02,rom10data03,rom10data04,rom10data05,rom10data06,rom10data07,rom10data08,rom10data09,rom10data10,rom10data11,rom10data12,rom10data13,rom10data14,rom10data15,rom10data16;
	wire [7:0] rom11data01,rom11data02,rom11data03,rom11data04,rom11data05,rom11data06,rom11data07,rom11data08,rom11data09,rom11data10,rom11data11,rom11data12,rom11data13,rom11data14,rom11data15,rom11data16;
	wire [7:0] rom12data01,rom12data02,rom12data03,rom12data04,rom12data05,rom12data06,rom12data07,rom12data08,rom12data09,rom12data10,rom12data11,rom12data12,rom12data13,rom12data14,rom12data15,rom12data16;
	wire [7:0] rom13data01,rom13data02,rom13data03,rom13data04,rom13data05,rom13data06,rom13data07,rom13data08,rom13data09,rom13data10,rom13data11,rom13data12,rom13data13,rom13data14,rom13data15,rom13data16;
	wire [7:0] rom14data01,rom14data02,rom14data03,rom14data04,rom14data05,rom14data06,rom14data07,rom14data08,rom14data09,rom14data10,rom14data11,rom14data12,rom14data13,rom14data14,rom14data15,rom14data16;
	wire [7:0] rom15data01,rom15data02,rom15data03,rom15data04,rom15data05,rom15data06,rom15data07,rom15data08,rom15data09,rom15data10,rom15data11,rom15data12,rom15data13,rom15data14,rom15data15,rom15data16;
	wire [7:0] rom16data01,rom16data02,rom16data03,rom16data04,rom16data05,rom16data06,rom16data07,rom16data08,rom16data09,rom16data10,rom16data11,rom16data12,rom16data13,rom16data14,rom16data15,rom16data16;
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	// Instantiate ROMs
	rom #("mem01.txt") rom01(rom01data01,rom01data02,rom01data03,rom01data04,rom01data05,rom01data06,rom01data07,rom01data08,rom01data09,rom01data10,rom01data11,rom01data12,rom01data13,rom01data14,rom01data15,rom01data16);
	rom #("mem02.txt") rom02(rom02data01,rom02data02,rom02data03,rom02data04,rom02data05,rom02data06,rom02data07,rom02data08,rom02data09,rom02data10,rom02data11,rom02data12,rom02data13,rom02data14,rom02data15,rom02data16);
	rom #("mem03.txt") rom03(rom03data01,rom03data02,rom03data03,rom03data04,rom03data05,rom03data06,rom03data07,rom03data08,rom03data09,rom03data10,rom03data11,rom03data12,rom03data13,rom03data14,rom03data15,rom03data16);
	rom #("mem04.txt") rom04(rom04data01,rom04data02,rom04data03,rom04data04,rom04data05,rom04data06,rom04data07,rom04data08,rom04data09,rom04data10,rom04data11,rom04data12,rom04data13,rom04data14,rom04data15,rom04data16);
	rom #("mem05.txt") rom05(rom05data01,rom05data02,rom05data03,rom05data04,rom05data05,rom05data06,rom05data07,rom05data08,rom05data09,rom05data10,rom05data11,rom05data12,rom05data13,rom05data14,rom05data15,rom05data16);
	rom #("mem06.txt") rom06(rom06data01,rom06data02,rom06data03,rom06data04,rom06data05,rom06data06,rom06data07,rom06data08,rom06data09,rom06data10,rom06data11,rom06data12,rom06data13,rom06data14,rom06data15,rom06data16);
	rom #("mem07.txt") rom07(rom07data01,rom07data02,rom07data03,rom07data04,rom07data05,rom07data06,rom07data07,rom07data08,rom07data09,rom07data10,rom07data11,rom07data12,rom07data13,rom07data14,rom07data15,rom07data16);
	rom #("mem08.txt") rom08(rom08data01,rom08data02,rom08data03,rom08data04,rom08data05,rom08data06,rom08data07,rom08data08,rom08data09,rom08data10,rom08data11,rom08data12,rom08data13,rom08data14,rom08data15,rom08data16);
	rom #("mem09.txt") rom09(rom09data01,rom09data02,rom09data03,rom09data04,rom09data05,rom09data06,rom09data07,rom09data08,rom09data09,rom09data10,rom09data11,rom09data12,rom09data13,rom09data14,rom09data15,rom09data16);
	rom #("mem10.txt") rom10(rom10data01,rom10data02,rom10data03,rom10data04,rom10data05,rom10data06,rom10data07,rom10data08,rom10data09,rom10data10,rom10data11,rom10data12,rom10data13,rom10data14,rom10data15,rom10data16);
	rom #("mem11.txt") rom11(rom11data01,rom11data02,rom11data03,rom11data04,rom11data05,rom11data06,rom11data07,rom11data08,rom11data09,rom11data10,rom11data11,rom11data12,rom11data13,rom11data14,rom11data15,rom11data16);
	rom #("mem12.txt") rom12(rom12data01,rom12data02,rom12data03,rom12data04,rom12data05,rom12data06,rom12data07,rom12data08,rom12data09,rom12data10,rom12data11,rom12data12,rom12data13,rom12data14,rom12data15,rom12data16);
	rom #("mem13.txt") rom13(rom13data01,rom13data02,rom13data03,rom13data04,rom13data05,rom13data06,rom13data07,rom13data08,rom13data09,rom13data10,rom13data11,rom13data12,rom13data13,rom13data14,rom13data15,rom13data16);
	rom #("mem14.txt") rom14(rom14data01,rom14data02,rom14data03,rom14data04,rom14data05,rom14data06,rom14data07,rom14data08,rom14data09,rom14data10,rom14data11,rom14data12,rom14data13,rom14data14,rom14data15,rom14data16);
	rom #("mem15.txt") rom15(rom15data01,rom15data02,rom15data03,rom15data04,rom15data05,rom15data06,rom15data07,rom15data08,rom15data09,rom15data10,rom15data11,rom15data12,rom15data13,rom15data14,rom15data15,rom15data16);
	rom #("mem16.txt") rom16(rom16data01,rom16data02,rom16data03,rom16data04,rom16data05,rom16data06,rom16data07,rom16data08,rom16data09,rom16data10,rom16data11,rom16data12,rom16data13,rom16data14,rom16data15,rom16data16);
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Selected ROM registers
	reg [7:0] romAdata01_reg,romAdata02_reg,romAdata03_reg,romAdata04_reg,romAdata05_reg,romAdata06_reg,romAdata07_reg,romAdata08_reg,romAdata09_reg,romAdata10_reg,romAdata11_reg,romAdata12_reg,romAdata13_reg,romAdata14_reg,romAdata15_reg,romAdata16_reg;
	reg [7:0] romBdata01_reg,romBdata02_reg,romBdata03_reg,romBdata04_reg,romBdata05_reg,romBdata06_reg,romBdata07_reg,romBdata08_reg,romBdata09_reg,romBdata10_reg,romBdata11_reg,romBdata12_reg,romBdata13_reg,romBdata14_reg,romBdata15_reg,romBdata16_reg;
		
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////		
	// Multiplexer for ROMa
	always @ (selROMa)
		begin
			case(selROMa)
				selROM01:
					begin
						romAdata01_reg = rom01data01;
						romAdata02_reg = rom01data02;
						romAdata03_reg = rom01data03;
						romAdata04_reg = rom01data04;
						romAdata05_reg = rom01data05;
						romAdata06_reg = rom01data06;
						romAdata07_reg = rom01data07;
						romAdata08_reg = rom01data08;
						romAdata09_reg = rom01data09;
						romAdata10_reg = rom01data10;
						romAdata11_reg = rom01data11;
						romAdata12_reg = rom01data12;
						romAdata13_reg = rom01data13;
						romAdata14_reg = rom01data14;
						romAdata15_reg = rom01data15;
						romAdata16_reg = rom01data16;
					end
				selROM02:
					begin
						romAdata01_reg = rom02data01;
						romAdata02_reg = rom02data02;
						romAdata03_reg = rom02data03;
						romAdata04_reg = rom02data04;
						romAdata05_reg = rom02data05;
						romAdata06_reg = rom02data06;
						romAdata07_reg = rom02data07;
						romAdata08_reg = rom02data08;
						romAdata09_reg = rom02data09;
						romAdata10_reg = rom02data10;
						romAdata11_reg = rom02data11;
						romAdata12_reg = rom02data12;
						romAdata13_reg = rom02data13;
						romAdata14_reg = rom02data14;
						romAdata15_reg = rom02data15;
						romAdata16_reg = rom02data16;
					end
				selROM03:
					begin
						romAdata01_reg = rom03data01;
						romAdata02_reg = rom03data02;
						romAdata03_reg = rom03data03;
						romAdata04_reg = rom03data04;
						romAdata05_reg = rom03data05;
						romAdata06_reg = rom03data06;
						romAdata07_reg = rom03data07;
						romAdata08_reg = rom03data08;
						romAdata09_reg = rom03data09;
						romAdata10_reg = rom03data10;
						romAdata11_reg = rom03data11;
						romAdata12_reg = rom03data12;
						romAdata13_reg = rom03data13;
						romAdata14_reg = rom03data14;
						romAdata15_reg = rom03data15;
						romAdata16_reg = rom03data16;
					end
				selROM04:
					begin
						romAdata01_reg = rom04data01;
						romAdata02_reg = rom04data02;
						romAdata03_reg = rom04data03;
						romAdata04_reg = rom04data04;
						romAdata05_reg = rom04data05;
						romAdata06_reg = rom04data06;
						romAdata07_reg = rom04data07;
						romAdata08_reg = rom04data08;
						romAdata09_reg = rom04data09;
						romAdata10_reg = rom04data10;
						romAdata11_reg = rom04data11;
						romAdata12_reg = rom04data12;
						romAdata13_reg = rom04data13;
						romAdata14_reg = rom04data14;
						romAdata15_reg = rom04data15;
						romAdata16_reg = rom04data16;
					end
				selROM05:
					begin
						romAdata01_reg = rom05data01;
						romAdata02_reg = rom05data02;
						romAdata03_reg = rom05data03;
						romAdata04_reg = rom05data04;
						romAdata05_reg = rom05data05;
						romAdata06_reg = rom05data06;
						romAdata07_reg = rom05data07;
						romAdata08_reg = rom05data08;
						romAdata09_reg = rom05data09;
						romAdata10_reg = rom05data10;
						romAdata11_reg = rom05data11;
						romAdata12_reg = rom05data12;
						romAdata13_reg = rom05data13;
						romAdata14_reg = rom05data14;
						romAdata15_reg = rom05data15;
						romAdata16_reg = rom05data16;
					end
				selROM06:
					begin
						romAdata01_reg = rom06data01;
						romAdata02_reg = rom06data02;
						romAdata03_reg = rom06data03;
						romAdata04_reg = rom06data04;
						romAdata05_reg = rom06data05;
						romAdata06_reg = rom06data06;
						romAdata07_reg = rom06data07;
						romAdata08_reg = rom06data08;
						romAdata09_reg = rom06data09;
						romAdata10_reg = rom06data10;
						romAdata11_reg = rom06data11;
						romAdata12_reg = rom06data12;
						romAdata13_reg = rom06data13;
						romAdata14_reg = rom06data14;
						romAdata15_reg = rom06data15;
						romAdata16_reg = rom06data16;
					end
				selROM07:
					begin
						romAdata01_reg = rom07data01;
						romAdata02_reg = rom07data02;
						romAdata03_reg = rom07data03;
						romAdata04_reg = rom07data04;
						romAdata05_reg = rom07data05;
						romAdata06_reg = rom07data06;
						romAdata07_reg = rom07data07;
						romAdata08_reg = rom07data08;
						romAdata09_reg = rom07data09;
						romAdata10_reg = rom07data10;
						romAdata11_reg = rom07data11;
						romAdata12_reg = rom07data12;
						romAdata13_reg = rom07data13;
						romAdata14_reg = rom07data14;
						romAdata15_reg = rom07data15;
						romAdata16_reg = rom07data16;
					end
				selROM08:
					begin
						romAdata01_reg = rom08data01;
						romAdata02_reg = rom08data02;
						romAdata03_reg = rom08data03;
						romAdata04_reg = rom08data04;
						romAdata05_reg = rom08data05;
						romAdata06_reg = rom08data06;
						romAdata07_reg = rom08data07;
						romAdata08_reg = rom08data08;
						romAdata09_reg = rom08data09;
						romAdata10_reg = rom08data10;
						romAdata11_reg = rom08data11;
						romAdata12_reg = rom08data12;
						romAdata13_reg = rom08data13;
						romAdata14_reg = rom08data14;
						romAdata15_reg = rom08data15;
						romAdata16_reg = rom08data16;
					end
				selROM09:
					begin
						romAdata01_reg = rom09data01;
						romAdata02_reg = rom09data02;
						romAdata03_reg = rom09data03;
						romAdata04_reg = rom09data04;
						romAdata05_reg = rom09data05;
						romAdata06_reg = rom09data06;
						romAdata07_reg = rom09data07;
						romAdata08_reg = rom09data08;
						romAdata09_reg = rom09data09;
						romAdata10_reg = rom09data10;
						romAdata11_reg = rom09data11;
						romAdata12_reg = rom09data12;
						romAdata13_reg = rom09data13;
						romAdata14_reg = rom09data14;
						romAdata15_reg = rom09data15;
						romAdata16_reg = rom09data16;
					end
				selROM10:
					begin
						romAdata01_reg = rom10data01;
						romAdata02_reg = rom10data02;
						romAdata03_reg = rom10data03;
						romAdata04_reg = rom10data04;
						romAdata05_reg = rom10data05;
						romAdata06_reg = rom10data06;
						romAdata07_reg = rom10data07;
						romAdata08_reg = rom10data08;
						romAdata09_reg = rom10data09;
						romAdata10_reg = rom10data10;
						romAdata11_reg = rom10data11;
						romAdata12_reg = rom10data12;
						romAdata13_reg = rom10data13;
						romAdata14_reg = rom10data14;
						romAdata15_reg = rom10data15;
						romAdata16_reg = rom10data16;
					end
				selROM11:
					begin
						romAdata01_reg = rom11data01;
						romAdata02_reg = rom11data02;
						romAdata03_reg = rom11data03;
						romAdata04_reg = rom11data04;
						romAdata05_reg = rom11data05;
						romAdata06_reg = rom11data06;
						romAdata07_reg = rom11data07;
						romAdata08_reg = rom11data08;
						romAdata09_reg = rom11data09;
						romAdata10_reg = rom11data10;
						romAdata11_reg = rom11data11;
						romAdata12_reg = rom11data12;
						romAdata13_reg = rom11data13;
						romAdata14_reg = rom11data14;
						romAdata15_reg = rom11data15;
						romAdata16_reg = rom11data16;
					end
				selROM12:
					begin
						romAdata01_reg = rom12data01;
						romAdata02_reg = rom12data02;
						romAdata03_reg = rom12data03;
						romAdata04_reg = rom12data04;
						romAdata05_reg = rom12data05;
						romAdata06_reg = rom12data06;
						romAdata07_reg = rom12data07;
						romAdata08_reg = rom12data08;
						romAdata09_reg = rom12data09;
						romAdata10_reg = rom12data10;
						romAdata11_reg = rom12data11;
						romAdata12_reg = rom12data12;
						romAdata13_reg = rom12data13;
						romAdata14_reg = rom12data14;
						romAdata15_reg = rom12data15;
						romAdata16_reg = rom12data16;
					end
				selROM13:
					begin
						romAdata01_reg = rom13data01;
						romAdata02_reg = rom13data02;
						romAdata03_reg = rom13data03;
						romAdata04_reg = rom13data04;
						romAdata05_reg = rom13data05;
						romAdata06_reg = rom13data06;
						romAdata07_reg = rom13data07;
						romAdata08_reg = rom13data08;
						romAdata09_reg = rom13data09;
						romAdata10_reg = rom13data10;
						romAdata11_reg = rom13data11;
						romAdata12_reg = rom13data12;
						romAdata13_reg = rom13data13;
						romAdata14_reg = rom13data14;
						romAdata15_reg = rom13data15;
						romAdata16_reg = rom13data16;
					end
				selROM14:
					begin
						romAdata01_reg = rom14data01;
						romAdata02_reg = rom14data02;
						romAdata03_reg = rom14data03;
						romAdata04_reg = rom14data04;
						romAdata05_reg = rom14data05;
						romAdata06_reg = rom14data06;
						romAdata07_reg = rom14data07;
						romAdata08_reg = rom14data08;
						romAdata09_reg = rom14data09;
						romAdata10_reg = rom14data10;
						romAdata11_reg = rom14data11;
						romAdata12_reg = rom14data12;
						romAdata13_reg = rom14data13;
						romAdata14_reg = rom14data14;
						romAdata15_reg = rom14data15;
						romAdata16_reg = rom14data16;
					end
				selROM15:
					begin
						romAdata01_reg = rom15data01;
						romAdata02_reg = rom15data02;
						romAdata03_reg = rom15data03;
						romAdata04_reg = rom15data04;
						romAdata05_reg = rom15data05;
						romAdata06_reg = rom15data06;
						romAdata07_reg = rom15data07;
						romAdata08_reg = rom15data08;
						romAdata09_reg = rom15data09;
						romAdata10_reg = rom15data10;
						romAdata11_reg = rom15data11;
						romAdata12_reg = rom15data12;
						romAdata13_reg = rom15data13;
						romAdata14_reg = rom15data14;
						romAdata15_reg = rom15data15;
						romAdata16_reg = rom15data16;
					end
				selROM16:
					begin
						romAdata01_reg = rom16data01;
						romAdata02_reg = rom16data02;
						romAdata03_reg = rom16data03;
						romAdata04_reg = rom16data04;
						romAdata05_reg = rom16data05;
						romAdata06_reg = rom16data06;
						romAdata07_reg = rom16data07;
						romAdata08_reg = rom16data08;
						romAdata09_reg = rom16data09;
						romAdata10_reg = rom16data10;
						romAdata11_reg = rom16data11;
						romAdata12_reg = rom16data12;
						romAdata13_reg = rom16data13;
						romAdata14_reg = rom16data14;
						romAdata15_reg = rom16data15;
						romAdata16_reg = rom16data16;
					end
			endcase
		end
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Multiplexer for ROMa	
	always @ (selROMb)
		begin
			case(selROMb)
				selROM01:
					begin
						romBdata01_reg = rom01data01;
						romBdata02_reg = rom01data02;
						romBdata03_reg = rom01data03;
						romBdata04_reg = rom01data04;
						romBdata05_reg = rom01data05;
						romBdata06_reg = rom01data06;
						romBdata07_reg = rom01data07;
						romBdata08_reg = rom01data08;
						romBdata09_reg = rom01data09;
						romBdata10_reg = rom01data10;
						romBdata11_reg = rom01data11;
						romBdata12_reg = rom01data12;
						romBdata13_reg = rom01data13;
						romBdata14_reg = rom01data14;
						romBdata15_reg = rom01data15;
						romBdata16_reg = rom01data16;
					end
				selROM02:
					begin
						romBdata01_reg = rom02data01;
						romBdata02_reg = rom02data02;
						romBdata03_reg = rom02data03;
						romBdata04_reg = rom02data04;
						romBdata05_reg = rom02data05;
						romBdata06_reg = rom02data06;
						romBdata07_reg = rom02data07;
						romBdata08_reg = rom02data08;
						romBdata09_reg = rom02data09;
						romBdata10_reg = rom02data10;
						romBdata11_reg = rom02data11;
						romBdata12_reg = rom02data12;
						romBdata13_reg = rom02data13;
						romBdata14_reg = rom02data14;
						romBdata15_reg = rom02data15;
						romBdata16_reg = rom02data16;
					end
				selROM03:
					begin
						romBdata01_reg = rom03data01;
						romBdata02_reg = rom03data02;
						romBdata03_reg = rom03data03;
						romBdata04_reg = rom03data04;
						romBdata05_reg = rom03data05;
						romBdata06_reg = rom03data06;
						romBdata07_reg = rom03data07;
						romBdata08_reg = rom03data08;
						romBdata09_reg = rom03data09;
						romBdata10_reg = rom03data10;
						romBdata11_reg = rom03data11;
						romBdata12_reg = rom03data12;
						romBdata13_reg = rom03data13;
						romBdata14_reg = rom03data14;
						romBdata15_reg = rom03data15;
						romBdata16_reg = rom03data16;
					end
				selROM04:
					begin
						romBdata01_reg = rom04data01;
						romBdata02_reg = rom04data02;
						romBdata03_reg = rom04data03;
						romBdata04_reg = rom04data04;
						romBdata05_reg = rom04data05;
						romBdata06_reg = rom04data06;
						romBdata07_reg = rom04data07;
						romBdata08_reg = rom04data08;
						romBdata09_reg = rom04data09;
						romBdata10_reg = rom04data10;
						romBdata11_reg = rom04data11;
						romBdata12_reg = rom04data12;
						romBdata13_reg = rom04data13;
						romBdata14_reg = rom04data14;
						romBdata15_reg = rom04data15;
						romBdata16_reg = rom04data16;
					end
				selROM05:
					begin
						romBdata01_reg = rom05data01;
						romBdata02_reg = rom05data02;
						romBdata03_reg = rom05data03;
						romBdata04_reg = rom05data04;
						romBdata05_reg = rom05data05;
						romBdata06_reg = rom05data06;
						romBdata07_reg = rom05data07;
						romBdata08_reg = rom05data08;
						romBdata09_reg = rom05data09;
						romBdata10_reg = rom05data10;
						romBdata11_reg = rom05data11;
						romBdata12_reg = rom05data12;
						romBdata13_reg = rom05data13;
						romBdata14_reg = rom05data14;
						romBdata15_reg = rom05data15;
						romBdata16_reg = rom05data16;
					end
				selROM06:
					begin
						romBdata01_reg = rom06data01;
						romBdata02_reg = rom06data02;
						romBdata03_reg = rom06data03;
						romBdata04_reg = rom06data04;
						romBdata05_reg = rom06data05;
						romBdata06_reg = rom06data06;
						romBdata07_reg = rom06data07;
						romBdata08_reg = rom06data08;
						romBdata09_reg = rom06data09;
						romBdata10_reg = rom06data10;
						romBdata11_reg = rom06data11;
						romBdata12_reg = rom06data12;
						romBdata13_reg = rom06data13;
						romBdata14_reg = rom06data14;
						romBdata15_reg = rom06data15;
						romBdata16_reg = rom06data16;
					end
				selROM07:
					begin
						romBdata01_reg = rom07data01;
						romBdata02_reg = rom07data02;
						romBdata03_reg = rom07data03;
						romBdata04_reg = rom07data04;
						romBdata05_reg = rom07data05;
						romBdata06_reg = rom07data06;
						romBdata07_reg = rom07data07;
						romBdata08_reg = rom07data08;
						romBdata09_reg = rom07data09;
						romBdata10_reg = rom07data10;
						romBdata11_reg = rom07data11;
						romBdata12_reg = rom07data12;
						romBdata13_reg = rom07data13;
						romBdata14_reg = rom07data14;
						romBdata15_reg = rom07data15;
						romBdata16_reg = rom07data16;
					end
				selROM08:
					begin
						romBdata01_reg = rom08data01;
						romBdata02_reg = rom08data02;
						romBdata03_reg = rom08data03;
						romBdata04_reg = rom08data04;
						romBdata05_reg = rom08data05;
						romBdata06_reg = rom08data06;
						romBdata07_reg = rom08data07;
						romBdata08_reg = rom08data08;
						romBdata09_reg = rom08data09;
						romBdata10_reg = rom08data10;
						romBdata11_reg = rom08data11;
						romBdata12_reg = rom08data12;
						romBdata13_reg = rom08data13;
						romBdata14_reg = rom08data14;
						romBdata15_reg = rom08data15;
						romBdata16_reg = rom08data16;
					end
				selROM09:
					begin
						romBdata01_reg = rom09data01;
						romBdata02_reg = rom09data02;
						romBdata03_reg = rom09data03;
						romBdata04_reg = rom09data04;
						romBdata05_reg = rom09data05;
						romBdata06_reg = rom09data06;
						romBdata07_reg = rom09data07;
						romBdata08_reg = rom09data08;
						romBdata09_reg = rom09data09;
						romBdata10_reg = rom09data10;
						romBdata11_reg = rom09data11;
						romBdata12_reg = rom09data12;
						romBdata13_reg = rom09data13;
						romBdata14_reg = rom09data14;
						romBdata15_reg = rom09data15;
						romBdata16_reg = rom09data16;
					end
				selROM10:
					begin
						romBdata01_reg = rom10data01;
						romBdata02_reg = rom10data02;
						romBdata03_reg = rom10data03;
						romBdata04_reg = rom10data04;
						romBdata05_reg = rom10data05;
						romBdata06_reg = rom10data06;
						romBdata07_reg = rom10data07;
						romBdata08_reg = rom10data08;
						romBdata09_reg = rom10data09;
						romBdata10_reg = rom10data10;
						romBdata11_reg = rom10data11;
						romBdata12_reg = rom10data12;
						romBdata13_reg = rom10data13;
						romBdata14_reg = rom10data14;
						romBdata15_reg = rom10data15;
						romBdata16_reg = rom10data16;
					end
				selROM11:
					begin
						romBdata01_reg = rom11data01;
						romBdata02_reg = rom11data02;
						romBdata03_reg = rom11data03;
						romBdata04_reg = rom11data04;
						romBdata05_reg = rom11data05;
						romBdata06_reg = rom11data06;
						romBdata07_reg = rom11data07;
						romBdata08_reg = rom11data08;
						romBdata09_reg = rom11data09;
						romBdata10_reg = rom11data10;
						romBdata11_reg = rom11data11;
						romBdata12_reg = rom11data12;
						romBdata13_reg = rom11data13;
						romBdata14_reg = rom11data14;
						romBdata15_reg = rom11data15;
						romBdata16_reg = rom11data16;
					end
				selROM12:
					begin
						romBdata01_reg = rom12data01;
						romBdata02_reg = rom12data02;
						romBdata03_reg = rom12data03;
						romBdata04_reg = rom12data04;
						romBdata05_reg = rom12data05;
						romBdata06_reg = rom12data06;
						romBdata07_reg = rom12data07;
						romBdata08_reg = rom12data08;
						romBdata09_reg = rom12data09;
						romBdata10_reg = rom12data10;
						romBdata11_reg = rom12data11;
						romBdata12_reg = rom12data12;
						romBdata13_reg = rom12data13;
						romBdata14_reg = rom12data14;
						romBdata15_reg = rom12data15;
						romBdata16_reg = rom12data16;
					end
				selROM13:
					begin
						romBdata01_reg = rom13data01;
						romBdata02_reg = rom13data02;
						romBdata03_reg = rom13data03;
						romBdata04_reg = rom13data04;
						romBdata05_reg = rom13data05;
						romBdata06_reg = rom13data06;
						romBdata07_reg = rom13data07;
						romBdata08_reg = rom13data08;
						romBdata09_reg = rom13data09;
						romBdata10_reg = rom13data10;
						romBdata11_reg = rom13data11;
						romBdata12_reg = rom13data12;
						romBdata13_reg = rom13data13;
						romBdata14_reg = rom13data14;
						romBdata15_reg = rom13data15;
						romBdata16_reg = rom13data16;
					end
				selROM14:
					begin
						romBdata01_reg = rom14data01;
						romBdata02_reg = rom14data02;
						romBdata03_reg = rom14data03;
						romBdata04_reg = rom14data04;
						romBdata05_reg = rom14data05;
						romBdata06_reg = rom14data06;
						romBdata07_reg = rom14data07;
						romBdata08_reg = rom14data08;
						romBdata09_reg = rom14data09;
						romBdata10_reg = rom14data10;
						romBdata11_reg = rom14data11;
						romBdata12_reg = rom14data12;
						romBdata13_reg = rom14data13;
						romBdata14_reg = rom14data14;
						romBdata15_reg = rom14data15;
						romBdata16_reg = rom14data16;
					end
				selROM15:
					begin
						romBdata01_reg = rom15data01;
						romBdata02_reg = rom15data02;
						romBdata03_reg = rom15data03;
						romBdata04_reg = rom15data04;
						romBdata05_reg = rom15data05;
						romBdata06_reg = rom15data06;
						romBdata07_reg = rom15data07;
						romBdata08_reg = rom15data08;
						romBdata09_reg = rom15data09;
						romBdata10_reg = rom15data10;
						romBdata11_reg = rom15data11;
						romBdata12_reg = rom15data12;
						romBdata13_reg = rom15data13;
						romBdata14_reg = rom15data14;
						romBdata15_reg = rom15data15;
						romBdata16_reg = rom15data16;
					end
				selROM16:
					begin
						romBdata01_reg = rom16data01;
						romBdata02_reg = rom16data02;
						romBdata03_reg = rom16data03;
						romBdata04_reg = rom16data04;
						romBdata05_reg = rom16data05;
						romBdata06_reg = rom16data06;
						romBdata07_reg = rom16data07;
						romBdata08_reg = rom16data08;
						romBdata09_reg = rom16data09;
						romBdata10_reg = rom16data10;
						romBdata11_reg = rom16data11;
						romBdata12_reg = rom16data12;
						romBdata13_reg = rom16data13;
						romBdata14_reg = rom16data14;
						romBdata15_reg = rom16data15;
						romBdata16_reg = rom16data16;
					end
			endcase
		end
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
	// Connect registers from case to the sadMod
	// Connects to a
	assign romAdata01 = romAdata01_reg;
	assign romAdata02 = romAdata02_reg;
	assign romAdata03 = romAdata03_reg;
	assign romAdata04 = romAdata04_reg;
	assign romAdata05 = romAdata05_reg;
	assign romAdata06 = romAdata06_reg;
	assign romAdata07 = romAdata07_reg;
	assign romAdata08 = romAdata08_reg;
	assign romAdata09 = romAdata09_reg;
	assign romAdata10 = romAdata10_reg;
	assign romAdata11 = romAdata11_reg;
	assign romAdata12 = romAdata12_reg;
	assign romAdata13 = romAdata13_reg;
	assign romAdata14 = romAdata14_reg;
	assign romAdata15 = romAdata15_reg;
	assign romAdata16 = romAdata16_reg;
	//Connects to b
	assign romBdata01 = romBdata01_reg;
	assign romBdata02 = romBdata02_reg;
	assign romBdata03 = romBdata03_reg;
	assign romBdata04 = romBdata04_reg;
	assign romBdata05 = romBdata05_reg;
	assign romBdata06 = romBdata06_reg;
	assign romBdata07 = romBdata07_reg;
	assign romBdata08 = romBdata08_reg;
	assign romBdata09 = romBdata09_reg;
	assign romBdata10 = romBdata10_reg;
	assign romBdata11 = romBdata11_reg;
	assign romBdata12 = romBdata12_reg;
	assign romBdata13 = romBdata13_reg;
	assign romBdata14 = romBdata14_reg;
	assign romBdata15 = romBdata15_reg;
	assign romBdata16 = romBdata16_reg;
					
endmodule