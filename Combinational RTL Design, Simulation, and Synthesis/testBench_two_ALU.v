`timescale 1ns/1ns
module testBench_two_ALU ();
	reg [15:0] aa, bb;
	reg cc;
	reg [2:0] func;
	wire [15:0] ww, ww_s;
	wire zerr, negg, zerr_s, negg_s;
	behavioral_ALU b_ALU(aa, bb, cc, func, ww, zerr, negg);
	structual_ALU s_ALU(aa, bb, cc, func, ww_s, zerr_s, negg_s);
	initial begin
		#100 aa = 16'd0; bb = 16'd0; cc = 1'd0; func = 3'd0;
		repeat (8) begin
			#200 func = func + 1'b1;
			repeat (10) #100 {aa, bb, cc} = $random;
		end
		#100 $stop;
	end
endmodule