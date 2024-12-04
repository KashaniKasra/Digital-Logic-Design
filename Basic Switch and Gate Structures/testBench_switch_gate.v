`timescale 1ns/1ns
module testBench_switch_gate();
	reg aa, bb, cc;
	wire yy1, yy0, yy00, yy11;
	OC_switch switch(aa, bb, cc, yy1, yy0);
	OC_gate gate(aa, bb, cc, yy11, yy00);
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