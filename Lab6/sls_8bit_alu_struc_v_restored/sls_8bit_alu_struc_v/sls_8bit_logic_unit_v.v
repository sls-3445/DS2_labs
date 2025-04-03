module sls_8bit_logic_unit_v (sel, X, Y, K, Result, CNVZ);

	input [1:0] sel;
	input [7:0] X, Y;
	input [1:0] K;
	output [3:0] CNVZ;
	output [7:0] Result;

	sls_nbit_mux4to1_v	logic_mux (.d3(X), .d2(X|Y), .d1(X&Y), .d0(X^Y), .s(sel[1:0]), .f(Result));
	assign CNVZ = {1'b0, Result[7], 1'b0, ~| Result};
endmodule