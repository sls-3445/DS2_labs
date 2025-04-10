module sls_nbit_mux2to1_v (d1, d0, s, f);

parameter n = 8;
input [n-1:0] d1, d0;
input s;
output [n-1:0] f;
genvar k;

generate for (k = 0; k < n; k = k+ 1) begin : muxes
	assign f[k] = (s & d1[k]) | (~s & d0[k]); end
endgenerate

endmodule