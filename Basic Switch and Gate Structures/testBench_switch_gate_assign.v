`timescale 1ns/1ns
module testBench_switch_gate_assign();
	reg aa, bb, cc;
	wire yy1, yy0, yy11, yy00, yy111, yy000;
	OC_switch switch(aa, bb, cc, yy1, yy0);
	OC_gate gate(aa, bb, cc, yy11, yy00);
	OC_assign asign(aa, bb, cc, yy111, yy000);
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