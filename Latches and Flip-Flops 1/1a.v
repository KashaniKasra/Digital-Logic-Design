`timescale 1ns/1ns

module SRlatch3_2(input S, R, x, output Q, Qbar);
	nand #12 N1(Q, S, Qbar, x);
	nand #8 N2(Qbar, R, Q);
endmodule

module SRlatch3_3(input S, R, x, y, output Q, Qbar);
	nand #12 N1(Q, S, Qbar, x);
	nand #12 N2(Qbar, R, Q, y);
endmodule