module sls_nbit_mux4to1_v (d3, d2, d1, d0, s, f);
	parameter n = 8;
	input [n-1:0] d3, d2, d1, d0;
	input [1:0] s;
	output [n-1:0] f;
	wire [n-1:0] f1, f0;

	sls_nbit_mux2to1_v	lower_bits_mux (d1, d0, s[0], f0);
	sls_nbit_mux2to1_v	upper_bits_mux (d3, d2, s[0], f1);
	sls_nbit_mux2to1_v	final_mux (f1, f0, s[1], f);

endmodule