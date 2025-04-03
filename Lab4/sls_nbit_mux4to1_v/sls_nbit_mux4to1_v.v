module sls_nbit_mux4to1_v (d3, d2, d1, d0, s1, s0, f);
	
	parameter n = 8;
	input [n-1:0] d3, d2, d1, d0;
	input s1, s0;
	output reg [n-1:0] f;
	genvar k;
	
	generate for (k = 0; k < n; k = k+1) begin : muxes
		always @(s1, s0)
			begin
				if 		(s1 & s0) 	f[k] = d3[k];
				else if	(s1 & ~s0) 	f[k] = d2[k];
				else if 	(~s1 & s0) 	f[k] = d1[k];
				else if 	(~s1 & ~s0) f[k] = d0[k];
			end
		end
	endgenerate

endmodule
