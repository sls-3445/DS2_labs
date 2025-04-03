module sls_8bit_const_unit_v (sel, Result, CNVZ);
	input [1:0] sel;
	output [7:0] Result;
	output [3:0] CNVZ;
	
	sls_nbit_mux4to1_v const_mux (.d3(8'b11111111), .d2(8'b10101010), .d1(8'b01010101), .d0(8'b00000000), .s(sel), .f(Result));
	
	assign CNVZ = {1'b0, Result[7], 1'b0, ~| Result};
endmodule