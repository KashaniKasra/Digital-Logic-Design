`timescale 1ns/1ns

module DFF_testbench();
	reg DD = 0, clock = 0;
	wire Q1, Qbar1;
	DFF dff(DD, clock, Q1, Qbar1);
	always #100 clock <= ~clock;
	initial begin
		#50 DD = 1;
		#100 DD = 0;
		#250 DD = 1;
		#250 DD = 0;
		#400 DD = 1;
		#50 DD = 0;
		#100 $stop; 
	end
endmodule