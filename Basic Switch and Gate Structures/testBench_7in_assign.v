`timescale 1ns/1ns
module testBench_7in_assign();
	reg aa, bb, cc, dd, ee, ff, gg;
	wire ww2, ww1, ww0, ww22, ww11, ww00;
	OC_7in oc7(aa, bb, cc, dd, ee, ff, gg, ww2, ww1, ww0);
	OC_7in_assign oc7_assign(aa, bb, cc, dd, ee, ff, gg, ww22, ww11, ww00);
	initial begin
		aa = 0; bb = 0; cc = 0; dd = 0; ee = 0; ff = 0; gg = 0;
		#100 aa = 1;
		#100 cc = 1;
		#100 ff = 1;
		#100 dd = 1;
		#100 aa = 0;
		#100 bb = 1;
		#100 cc = 0;
		#100 $stop;
	end
endmodule