`timescale 1ns/1ns
module testBench_structual_ALU_notSynth ();
	reg [15:0] aa, bb;
	reg cc;
	reg [2:0] func;
	wire [15:0] ww;
	wire zerr, negg;
	structual_ALU s_ALU(aa, bb, cc, func, ww, zerr, negg);
	initial begin
		#100 aa = 16'd0; bb = 16'd0; cc = 1'd0; func = 3'd0;
		repeat (100000) #200 {aa, bb, cc, func} = $random;
		#100 $stop;
	end
endmodule