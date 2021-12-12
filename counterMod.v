module counterMod
				#(	// defining parameters
					parameter stopCount = 16
				)
				( 	// defining ports
					input clk,
					input rst,
					output [3:0] countA, countB,
					output outputValid
				 );
    
	// for counting a and b
    reg [3:0] countB_reg;
    reg [3:0] countA_reg;

	// to hold the count start
    reg [3:0] countStart;
	
	// to hold the impulse that connects from counter b to clk of counter a
    reg impulse_reg;

	// impedance value to output
    reg [3:0] highImpedance_reg = 4'bzzzz;

    reg outputValid_reg;
    
	// used to self turn off counters once the count is complete
    reg en_reg;

    // Counter B
    always @ (posedge clk)
        begin
            if (rst) 
                begin
                    countB_reg = 1;
                    countStart = countB_reg;
                    impulse_reg = 0;
                    outputValid_reg = 0;
                    en_reg = 1;
                end
            else if (countB_reg == stopCount) // If counter b reaches the end
                begin
                    if (countStart == stopCount) // If counter b's count start is the same as the stop count
                        begin
                            // Send the output valid signal
							// Stop the counters
                            en_reg = 0;
                            impulse_reg = 0;
                            outputValid_reg = 1;
                            countB_reg = highImpedance_reg;
                            countA_reg = highImpedance_reg;
                        end
                    else // assumes that counter b has reached the end but will need to be ready for a new counter a
                        begin
                            countStart = countStart + 1; // set up new count start
                            countB_reg = countStart; // have counter b start at the new count start
                            impulse_reg = 1; // send an impulse to counter a.
                        end
                end
            else if(en_reg) // assumes that on the posedge clk, en_reg is high, and that counter b has not reached the stop count.
                begin
                    countB_reg = countB_reg +1;
                    impulse_reg = 0;
                end
        end

    // Counter A
	// counter a works very similarly to a regular counter
	// main differrences is that it is driven by counter b, not a clk.
    always @ (posedge impulse_reg, rst)
        begin
            if(rst)
                begin
                    countA_reg = 0;
                end
            else if (impulse_reg)
                begin
                    countA_reg = countA_reg + 1; 
                end
        end
		
	// Connect outputs
	assign countA = countA_reg;
	assign countB = countB_reg;
	assign outputValid = outputValid_reg;
		
endmodule