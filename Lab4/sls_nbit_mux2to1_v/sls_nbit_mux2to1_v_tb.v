module sls_nbit_mux2to1_v_tb;

	reg [7:0] d1_tb, d0_tb;
	reg s_tb;
	wire [7:0] f_tb;
	
sls_nbit_mux2to1_v muv (d1_tb, d0_tb, s_tb, f_tb);

initial begin
	
	d1_tb = 8'b0000_0000; d0_tb = 8'b1111_1111; s_tb = 0; #20000
	if (f_tb != 8'b1111_1111) begin $display("Wrong value for condition 1"); $finish; end
	
	d1_tb = 8'b0000_0000; d0_tb = 8'b1111_1111; s_tb = 1; #20000
	if (f_tb != 8'b0000_0000) begin $display("Wrong value for condition 2"); $finish; end
	
	d1_tb = 8'b0101_0101; d0_tb = 8'b1010_1010; s_tb = 0; #20000
	if (f_tb != 8'b1010_1010) begin $display("Wrong value for condition 3"); $finish; end
	
	d1_tb = 8'b0101_0101; d0_tb = 8'b1010_1010; s_tb = 1; #20000
	if (f_tb != 8'b0101_0101) begin $display("Wrong value for condition 3"); $finish; end
	
	end
endmodule