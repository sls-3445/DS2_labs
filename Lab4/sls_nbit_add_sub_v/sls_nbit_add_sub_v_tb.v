module sls_nbit_add_sub_v_tb;

//	parameter n = 8;
	reg [7:0] x_tb, y_tb;
	reg cin_tb;
	wire [7:0] sum_tb;
	wire cout_tb;
	
sls_nbit_add_sub_v muv (cin_tb, x_tb, y_tb, sum_tb, cout_tb);

initial begin

	x_tb = 8'b0000_0000; y_tb = 8'b0000_0000; cin_tb = 0; #20000
	if ((sum_tb != 8'b0000_0000) | (cout_tb != 0)) begin $display ("Wrong for test 1"); $finish; end

	x_tb = 8'b1111_1111; y_tb = 8'b1111_1111; cin_tb = 0; #20000
	if ((sum_tb != 8'b1111_1110) | (cout_tb != 1)) begin $display ("Wrong for test 2"); $finish; end
	else $display ("Test 2: sum: %0b, cout: %0d", sum_tb, cout_tb);
	
	x_tb = 8'b0101_0101; y_tb = 8'b0101_0101; cin_tb = 0; #20000
	if ((sum_tb != 8'b1010_1010) | (cout_tb != 0)) begin $display ("Wrong for test 3"); $finish; end
	
	x_tb = 8'b1010_1010; y_tb = 8'b1010_1010; cin_tb = 0; #20000
	if ((sum_tb != 8'b0101_0100) | (cout_tb != 1)) begin $display ("Wrong for test 4"); $finish; end
	
	x_tb = 8'b0101_0101; y_tb = 8'b1010_1010; cin_tb = 0; #20000
	if ((sum_tb != 8'b1111_1111) | (cout_tb != 0)) begin $display ("Wrong for test 5"); $finish; end
	
	x_tb = 8'b0000_0000; y_tb = 8'b0000_0000; cin_tb = 1; #20000
	if ((sum_tb != 8'b0000_0000) | (cout_tb != 1)) begin $display ("Wrong for test 6"); $finish; end
	
	x_tb = 8'b1111_1111; y_tb = 8'b1111_1111; cin_tb = 1; #20000
	if ((sum_tb != 8'b0000_0000) | (cout_tb != 1)) begin $display ("Wrong for test 7"); $finish; end
	
	x_tb = 8'b0101_0101; y_tb = 8'b0101_0101; cin_tb = 1; #20000
	if ((sum_tb != 8'b0000_0000) | (cout_tb != 1)) begin $display ("Wrong for test 8"); $finish; end
	
	x_tb = 8'b1010_1010; y_tb = 8'b1010_1010; cin_tb = 1; #20000
	if ((sum_tb != 8'b0000_0000) | (cout_tb != 1)) begin $display ("Wrong for test 9"); $finish; end
	
	x_tb = 8'b0101_0101; y_tb = 8'b1010_1010; cin_tb = 1; #20000
	if ((sum_tb != 8'b1010_1011) | (cout_tb != 0)) begin $display ("Wrong for test 10"); $finish; end
	
	end
endmodule