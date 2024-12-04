module behavioral_ALU (input signed [15:0] inA, inB, input inC, input [2:0] opc, output reg [15:0] outW, output zer, neg);
	always @(inA, inB, inC, opc) begin
		outW = 16'b0;
		case(opc)
			3'd0: outW = ~inA + 1'b1;
			3'd1: outW = inA + 1'b1;
			3'd2: outW = inA + inB + inC;
			3'd3: outW = inA + (inB >>> 1);
			3'd4: outW = inA & inB;
			3'd5: outW = inA | inB;
			3'd6: outW = {inA[7:0], inB[7:0]};
			default: outW = 16'b0;
		endcase
	end
	assign zer = ~|outW;
	assign neg = outW[15];
endmodule