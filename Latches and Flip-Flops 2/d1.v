`timescale 1ns/1ns

module controller(input start, clk, rst, w, uc_co, dc_co, output reg ready, det_en, uc_en, uc_set0, dc_en, dc_ld);
	reg [2:0] ps, ns;
	parameter [2:0] Idle = 0, init = 1, detect = 2, upcnt = 3, load = 4, downcnt = 5;

	always @(ps, start, w, uc_co, dc_co) begin
		ns = Idle;
		{ready, det_en, uc_en, uc_set0, dc_en, dc_ld} = 6'b0;
		case(ps)
			Idle: begin ns = start ? init : Idle; ready = 1; end
			init: begin ns = start ? init : detect; uc_set0 = 1; det_en = 1;  end
			detect: begin ns = w ? upcnt : detect; det_en = w ? 0 : 1; uc_set0 = 0; uc_en = w ? 1 : 0; end
			upcnt: begin ns = uc_co ? load : upcnt; uc_en = 1; end
			load: begin ns = downcnt; dc_ld = 1; uc_en = 0; dc_en = 1; end
			downcnt: begin ns = dc_co ? Idle : downcnt; dc_en = dc_co ? 0 : 1; dc_ld = 0; end
			default: ns = Idle;
		endcase
	end

	always @(posedge clk, posedge rst) begin
		if (rst)
			ps <= Idle;
		else
			ps <= ns;
	end
endmodule