`timescale 1ns/1ns

module SRlatch_testbench();
	reg SS, RR;
	wire Q1, Qbar1;
	SRlatch3_2 latch(SS, RR, 1'b1, Q1, Qbar1);
	initial begin
		#200 SS = 1; RR = 0;
		#200 SS = 0; RR = 1;
		#200 SS = 1; RR = 1;
		#200 SS = 0; RR = 0;
		#200 SS = 1; RR = 0;
		#200 SS = 0; RR = 1;
		#200 SS = 0; RR = 0;
		#100 $stop;
	end
endmodule