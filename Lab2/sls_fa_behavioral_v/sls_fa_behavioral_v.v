module sls_fa_behavioral_v (cin, x, y, sum, cout);

	input cin, x, y;
	output reg sum, cout;
	
	always @(cin, x, y)
		case ({cin, x, y})
			3'b000 : {sum, cout} = 2'b00;
			3'b001 : {sum, cout} = 2'b10;
			3'b010 : {sum, cout} = 2'b10;
			3'b011 : {sum, cout} = 2'b01;
			3'b100 : {sum, cout} = 2'b10;
			3'b101 : {sum, cout} = 2'b01;
			3'b110 : {sum, cout} = 2'b01;
			3'b111 : {sum, cout} = 2'b11;
			default : {sum, cout} = 2'b00;
		endcase
endmodule
