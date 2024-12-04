module registerV(input [15:0] regIn, input clock, reset, init1, load, output reg [15:0] regOut);
	always @(posedge clock, posedge reset) begin
		if (reset)
			regOut <= 16'b0;
		else
			if (init1)
				regOut <=  16'b0000000100000000;
			else
				regOut <= load ? regIn : regOut;
	end
endmodule