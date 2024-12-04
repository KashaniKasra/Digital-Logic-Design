`timescale 1ns/1ns

module prePost_detector_testBench();
	reg clock = 0, reset = 0, jj = 1;
	wire wPre, wPost;

	sequenceDetector pre(clock, reset, jj, wPre);
	sequenceDetectorPost post(clock, reset, jj, wPost);

	always #100 clock <= ~clock;
	initial begin
		#150 jj = 0;
		#160 jj = 1;
		#1000 jj = 0;
		#450 jj = 1;
		#200 $stop;
	end
endmodule