module sls_alu_fpga_emulation (pb, sw, leds);
// These are the user I/O-Ps of the DE0-Nano board.
// Two push-buttons (pb), four switches (sw) and 
// eight LEDs. (C) Dorin Patru September 2021.
input [1:0] pb;
input [3:0] sw;
output [7:0] leds;
// wire [3:0] intwire;
// I am instantiating my 4-bit ALU, BUT you should
// instantiate your 8-bit ALU, as shwon below.
// These connections will allow you to test all
// combinations you verified through simulation.
// The port-mapping used here is the named or 
// explicit association. Cout is not connected to
// an output pin.
// OPERATION:
// 	sw - select the function
// 	pb - select the operand value patterns: 
//					00, 01, 10, or 10
// 	leds[3:0] - display the least significant 
// 					4 bits of the result
// 	leds[7:4] - display the CNVZ
sls_4bit_alu_beh_v mut	
			(.Func_Sel(sw), 
			.Operand_X({pb, pb, pb, pb}),
			.Operand_Y({pb, pb, pb, pb}), 
			.Const_K(2'b10), 
			.ALU_Result(leds[3:0]), 
			.ALU_CNVZ(leds[7:4]));
// Because you have an 8-bit result, uncomment the
// intwire declaration above and connect your result
// like this: 	.ALU_Result({intwire, leds[3:0]})		
endmodule
