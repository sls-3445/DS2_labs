module sls_4bit_reg_v (D, Reset, LD_EN, Clock, Q);
	input [3:0] D;
	input Reset, LD_EN, Clock;
	output reg [3:0] Q;
// Remember: This always block is executed when a rising edge 
// is detected on Clock i.e., all control signals are clock
// synchronous.
	always @(posedge Clock)
	 	if (Reset) Q = 0;
		else if (LD_EN) Q = D;
		else Q = Q;		
endmodule

