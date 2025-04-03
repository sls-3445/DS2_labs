module sls_8bit_upcnt_v (D, Reset, Cnt_EN, LD_EN, Clock, Q);
	input [7:0] D;
	input Reset, Cnt_EN, LD_EN, Clock;
	output reg [7:0] Q;
// Remember: This always block is executed when a rising edge 
// is detected on Clock i.e., all control signals are clock
// synchronous.
	always @(posedge Clock)
	 	if (Reset) Q = 0;
		else if (LD_EN) Q = D;
		else if (Cnt_EN) Q = Q + 1'b1;
		else Q = Q;
endmodule

