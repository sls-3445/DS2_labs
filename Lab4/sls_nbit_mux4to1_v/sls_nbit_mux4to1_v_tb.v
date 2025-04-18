module sls_nbit_mux4to1_v_tb;
	
	reg [7:0] d3_tb, d2_tb, d1_tb, d0_tb;
	reg s1_tb, s0_tb;
	wire [7:0] f_tb;
	
sls_nbit_mux4to1_v muv (d3_tb, d2_tb, d1_tb, d0_tb, s1_tb, s0_tb, f_tb);

initial begin
	
	d3_tb = 8'b0000_0000; d2_tb = 8'b1111_1111; d1_tb = 8'b0000_0000; d0_tb = 8'b1111_1111; s1_tb = 0; s0_tb = 0; #20000
	if (f_tb != 8'b1111_1111) begin $display("Wrong value for condition 1"); $finish; end
	
	d3_tb = 8'b0000_0000; d2_tb = 8'b1111_1111; d1_tb = 8'b0000_0000; d0_tb = 8'b1111_1111; s1_tb = 0; s0_tb = 1; #20000
	if (f_tb != 8'b0000_0000) begin $display("Wrong value for condition 2"); $finish; end
	
	d3_tb = 8'b0101_0101; d2_tb = 8'b1010_1010; d1_tb = 8'b0101_0101; d0_tb = 8'b1010_1010; s1_tb = 1; s0_tb = 0; #20000
	if (f_tb != 8'b1010_1010) begin $display("Wrong value for condition 3"); $finish; end
	
	d3_tb = 8'b0101_0101; d2_tb = 8'b1010_1010; d1_tb = 8'b0101_0101; d0_tb = 8'b1010_1010; s1_tb = 1; s0_tb = 1; #20000
	if (f_tb != 8'b0101_0101) begin $display("Wrong value for condition 3"); $finish; end
	
	d3_tb = 8'b0000_0000; d2_tb = 8'b1111_1111; d1_tb = 8'b0101_0101; d0_tb = 8'b1010_1010; s1_tb = 0; s0_tb = 0; #20000
	if (f_tb != 8'b1010_1010) begin $display("Wrong value for condition 1"); $finish; end
	
	d3_tb = 8'b0000_0000; d2_tb = 8'b1111_1111; d1_tb = 8'b0101_0101; d0_tb = 8'b1010_1010; s1_tb = 1; s0_tb = 1; #20000
	if (f_tb != 8'b0000_0000) begin $display("Wrong value for condition 2"); $finish; end
	
	
	
	end
endmodule
	