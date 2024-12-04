`timescale 1ns/1ns
module OC_gate (input a, b, c, output y1, y0);
	wire d, e, f, g, h, i, j, k, l, m, n;
	or #(5, 3.5) O1(d, b, c), O2(y1, e, f), O3(k, g, h), O4(l, i, j), O5(y0, m, n);
	and #(5, 7) A1(e, d, a), A2(f, b, c), A3(g, ~b, c), A4(h, b, ~c), A5(i, b, c), A6(j, ~b, ~c), A7(m, ~a, k), A8(n, a, l);
endmodule