`timescale 1ns/1ns
module OC_7in_assign (input a, b, c, d, e, f, g, output w2, w1, w0);
	wire y1, y0, x1, x0, t1;
	OC_assign oc1(a, b, c, y1, y0);
	OC_assign oc2(d, e, f, x1, x0);
	OC_assign oc3(g, y0, x0, t1, w0);
	OC_assign oc4(t1, y1, x1, w2, w1);
endmodule