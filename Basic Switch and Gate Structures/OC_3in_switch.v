`timescale 1ns/1ns
module OC_switch (input a, b, c, output y1, y0);
	wire d, e, f, g, h, i, j, k, l, m, n, o, p;
	supply1 vdd;
	supply0 gnd;
	pmos #(5, 6, 7) T1(d, vdd, ~b), T2(y1, d, ~c), T3(e, vdd, ~c), T4(e, vdd, ~b), T5(y1, e, ~a);
	nmos #(3, 4, 5) T6(y1, f, ~c), T7(y1, f, ~b), T8(f, g, ~b), T9(g, gnd, ~c), T10(f, gnd, ~a);
	pmos #(5, 6, 7) T11(h, vdd, ~a), T12(k, vdd, a), T13(i, h, ~b), T14(y0, i, ~c), T15(j, h, b), T16(y0, j, c), T17(l, k, b), T18(y0, l, ~c), T19(m, k, ~b), T20(y0, m, c);
	nmos #(3, 4, 5) T21(y0, o,~a), T22(y0, n, ~b), T23(y0, n, ~c), T24(n, o, c), T25(n, o, b), T26(o, gnd, a), T27(o, p, ~c), T28(o, p, b), T29(p, gnd, ~b), T30(p, gnd, c);
endmodule