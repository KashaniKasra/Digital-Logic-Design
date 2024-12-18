`timescale 1ns/1ns

module transmitter_testBench();
	reg clk = 0, rst = 0, ld = 1, en = 0, serIn = 0; 
	reg [7:0] parIn;
	wire co, serOut;
	wire [7:0] parOut;
	
	transmitter post(co, ld, clk, en, rst, parIn, serOut, serIn, parOut);
	
	always #100 clk <= ~clk;
	initial begin
		parIn = 8'b11010001;
		repeat (20) #200 serIn = $urandom%2;
		#130 en = 1;
		#210 parIn = 8'b00001011;
		#220 ld = 0;
		repeat (20) #210 serIn = $urandom%2;
		#200 rst = 1;
		#500 $stop;
	end
endmodule