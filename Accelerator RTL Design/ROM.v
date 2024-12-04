module  ROM(
clk,
addr,
q     
);
//-----------Input Ports---------------
input [3:0] addr ;
input clk;
output reg [15:0] q ;

(* romstyle = "M9K" *)(* ram_init_file = "sin.mif" *)  reg  [7:0] rom [3:0];

	always @ (posedge clk)
	begin
		q <= rom[addr];
	end 

endmodule