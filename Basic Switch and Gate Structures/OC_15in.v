`timescale 1ns/1ns
module OC_15in (input a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, output w3, w2 ,w1, w0);
	wire y2, y1, y0, x2, x1, x0, t2, t1;
	OC_7in oc1(a, b, c, d, e, f, g, y2, y1, y0);
	OC_7in oc2(h, i, j, k, l, m, n, x2, x1, x0);
	OC_switch oc3(o, y0, x0, t1, w0);
	OC_switch oc4(t1, y1, x1, t2, w1);
	OC_switch oc5(t2, y2, x2, w3, w2);
endmodule