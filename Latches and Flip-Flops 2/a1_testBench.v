`timescale 1ns/1ns

module sequenceDetector_testBench();
	reg clock = 0, reset = 0, jj = 1;
	wire ww;

	sequenceDetector detector(clock, reset, jj, ww);

	always #100 clock <= ~clock;
	initial begin
		#150 jj = 0;
		#160 jj = 1;
		#1000 jj = 0;
		#450 jj = 1;
		#200 $stop;
	end
endmodule