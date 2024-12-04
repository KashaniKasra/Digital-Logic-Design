`timescale 1ns/1ns

module cosx_TB();
	reg start = 0, clock = 0, reset = 0;
	reg [15:0] x = 16'b0000001000000000; //pi/3
   	reg [15:0] y = 16'b0;
   	wire [15:0] cosx;
   	wire ready;

   	cosx cos(ready, clock, reset, start, x, y, cosx);

        always #100 clock = ~clock;
   	initial begin
       		#10 y = 16'b0000000000000110; //2 times
      		#240 start = 1;
        	#200 start = 0;
        	@(posedge ready) #2000 $stop;
    	end
endmodule