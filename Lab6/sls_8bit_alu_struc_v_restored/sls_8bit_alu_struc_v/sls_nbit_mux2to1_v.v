module sls_nbit_mux2to1_v (d1, d0, s, f);

parameter n = 8;
input [n-1:0] d1, d0;
input s;
output [n-1:0] f;

assign f = s ? d1 : d0;

endmodule