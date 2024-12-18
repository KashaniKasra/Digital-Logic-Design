`timescale 1ns/1ns

module serial_transmitter_circuit_testBench();
	reg strt = 0, clk = 0, rst = 0, serIn = 0;
	wire rdy, serOut, serOutValid;
	
	serial_transmitter_circuit circ(serOut, serIn, strt, clk, rst, rdy, serOutValid);

	always #100 clk <= ~clk;
	initial begin
		#130 strt = 1;
		#210 strt = 0;
		#210 serIn = 1;
		#210 serIn = 0;
		#210 serIn = 1;
		#1000 serIn = 0;
		#400 serIn = 1;
		#400 serIn = 0;
		#5000 $stop;
	end
endmodule