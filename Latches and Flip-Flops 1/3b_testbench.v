`timescale 1ns/1ns

module DFF_CLR_PRE_testbench();
	reg DD, clock = 0, clear = 1, preset = 1;
	wire Q1, Qbar1;
	DFF_CLR_PRE dff(DD, clock, clear, preset, Q1, Qbar1);
	always #100 clock <= ~clock;
	initial begin
		#50 DD = 1;
		#100 DD = 0;
		#100 DD = 1;
		#200 clear = 0;
		#100 DD = 1;
		#100 DD = 0;
		#200 clear = 1;
		#100 DD = 1;
		#100 DD = 0;
		#200 preset = 0;
		#100 DD = 1;
		#100 DD = 0;
		#200 preset = 1;
		#100 DD = 1;
		#200 preset = 0; clear = 0;
		#100 $stop; 
	end
endmodule