`timescale 1ns/1ns

module DFF_CLR_PRE(input D, clk, clr, pre, output Q, Qbar);
	wire w, wbar, t, tbar;
	SRlatch3_3 S1(pre, clr, tbar, clk, w, wbar);
	SRlatch3_3 S2(clk, D, wbar, clr, t, tbar);
	SRlatch3_3 S3(pre, clr, wbar, t, Q, Qbar);
endmodule