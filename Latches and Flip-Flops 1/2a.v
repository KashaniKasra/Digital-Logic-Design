`timescale 1ns/1ns

module DFF(input D, clk, output Q, Qbar);
	wire w, wbar, t, tbar;
	SRlatch3_2 S1(tbar, clk, 1'b1, w, wbar);
	SRlatch3_2 S2(wbar, D, clk, t, tbar);
	SRlatch3_2 S3(wbar, t, 1'b1, Q, Qbar);
endmodule