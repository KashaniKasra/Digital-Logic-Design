`timescale 1ns/1ns

module sequenceDetector(input clk, rst, j, output w);
	reg [2:0] ps, ns;
	parameter [2:0] A = 0, B = 1, C = 2, D = 3, E = 4, F = 5, G = 6, H = 7;

	always @(ps, j) begin
		ns = A;
		case(ps)
			A: ns = j ? A : B;
			B: ns = j ? C : B;
			C: ns = j ? D : B;
			D: ns = j ? E : B;
			E: ns = j ? F : B;
			F: ns = j ? G : B;
			G: ns = j ? A : H;
			H: ns = j ? C : B;
			default: ns = A;
		endcase
	end

	always @(posedge clk, posedge rst) begin
		if (rst)
			ps <= A;
		else
			ps <= ns;
	end

	assign w = (ps == H) ? 1'b1 : 1'b0;
endmodule