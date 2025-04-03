module sls_8bit_sr_unit_v (sel, X, Y, K, Cin, Result, CNVZ);

	input [1:0] sel, K;
	input [7:0] X, Y;
	output [7:0] Result;
	output [3:0] CNVZ;
	input Cin;
	
	wire [7:0] shra, shra1, shra2, shra3;
	wire [7:0] shrl, shrl1, shrl2, shrl3;
	wire [7:0] rlc, rlc0, rlc1, rlc2, rlc3l;
	
	sls_nbit_mux4to1_v	shra_mux (.d3(shra3), .d2(shra2), .d1(shra1), .d0(X), .s(K), .f(shra));
	assign shra3 = {X[7], X[7], X[7], X[7:3]};
	assign shra2 = {X[7], X[7], X[7:2]};
	assign shra1 = {X[7], X[7:1]};
	
	sls_nbit_mux4to1_v	shrl_mux (.d3(shrl3), .d2(shrl2), .d1(shrl1), .d0(X), .s(K), .f(shrl));
	assign shrl3 = {3'b000, X[7:3]};
	assign shrl2 = {3'b000, X[7:2]};
	assign shrl1 = {3'b000, X[7:1]};
	
	
	sls_nbit_mux4to1_v	rlc_mux (.d3(rlc3), .d2(rlc2), .d1(rlc1), .d0(X), .s(K), .f(rlc));
	assign rlc3 = {X[4:0], Cin, X[7:6]};
	assign rlc2 = {X[5:0], Cin, X[7]};
	assign rlc1 = {X[6:0], Cin};

	assign CNVZ[3] = (sel[1] & ~sel[0]) ? (K[1] ? (K[0] ? X[5] : X[6]) : (K[0] ? X[7] : Cin)) : 1'b0;
	
	sls_nbit_mux4to1_v	result_mux (.d3(Y), .d2(rlc), .d1(shrl), .d0(shra), .s(sel[1:0]), .f(Result));
	assign CNVZ[2:0] = {Result[7], 1'b0, ~| Result};
	
endmodule
