`timescale 1ns/1ns
module testBench_switch();
	reg aa, bb, cc;
	wire yy1, yy0;
	OC_switch oc(aa, bb, cc, yy1, yy0);
	initial begin
		aa = 0; bb = 0; cc = 0;
		#100 aa = 1;
		#100 bb = 1;
		#100 cc = 1;
		#100 bb = 0;
		#100 aa = 0;
		#100 bb = 1;
		#100 cc = 0;
		#100 $stop;
	end
endmodule