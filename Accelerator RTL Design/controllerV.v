module controllerV(input clock, reset, start, compared, output reg load_x, init1_t, load_t, init1_r, load_r, init0_cnt, en_cnt, sel, ci, ready);
	reg [3:0] ps, ns;
	parameter [3:0] Idle = 0, init = 1, load = 2, mult1 = 3, mult2 = 4, mult3 = 5, mult4 = 6, compare = 7, subAdd = 8;

	always @(ps, start, compared) begin
		ns = Idle;
		{load_x, init1_t, load_t, init1_r, load_r, init0_cnt, en_cnt, sel, ready} = 9'b0;
		case(ps)
			Idle: begin ns = start ? init : Idle; ready = 1; end
			init: begin ns = start ? init : load; init1_t = 1; init1_r = 1; init0_cnt = 1; en_cnt = 0; ci = 1; ready = 0; end
			load: begin ns = mult1; load_x = 1; end
			mult1: begin ns = mult2; load_t = 1; sel = 0; ci = ~ci; end
			mult2: begin ns = mult3; load_t = 1; sel = 0; end
			mult3: begin ns = mult4; load_t = 1; en_cnt = 1; sel = 1; end
			mult4: begin ns = compare; load_t = 1; en_cnt = 1; sel = 1; end
			compare: begin ns = compared ? subAdd : Idle; en_cnt = 0; load_t = 0; end
			subAdd: begin ns = mult1; load_r = 1; end
			default: ns = Idle;
		endcase
	end

	always @(posedge clock, posedge reset) begin
		if (reset)
			ps <= Idle;
		else
			ps <= ns;
	end
endmodule