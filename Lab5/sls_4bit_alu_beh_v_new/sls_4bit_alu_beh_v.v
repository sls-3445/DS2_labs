module sls_4bit_alu_beh_v (Func_Sel, Operand_X, Operand_Y, Const_K, C_in, 
				ALU_Result, ALU_CNVZ);
	input [3:0] Func_Sel;
	input [7:0] Operand_X, Operand_Y;
	input [1:0] Const_K;
	input C_in;
	output reg [7:0] ALU_Result, ALU_CNVZ;
	reg [8:0] Arith_Result;
	reg	[7:0]	Y2sC, Y1sC;
	reg 	overflow;
always @ (Func_Sel, Operand_X, Operand_Y, Const_K,
			Arith_Result, Y1sC, overflow)
// Include Y2sC and overflow in the sensitivity list above
// because these can change inside the always block
	begin
	// Performing arithmetic operations using arithmetic operators:
//---------------------------ADD----------------------------------------------------
		if 		(Func_Sel == 4'b0000) begin
			Arith_Result = {1'b0, Operand_X} + {1'b0, Operand_Y};
			ALU_Result = Arith_Result[7:0];
			overflow = (Operand_X[7] & Operand_Y[7] & ~ALU_Result[7]) |
						(~Operand_X[7] & ~Operand_Y[7] & ALU_Result[7]);
			ALU_CNVZ = {Arith_Result[8], ALU_Result[7], overflow, ~| ALU_Result}; end
//---------------------------SUB----------------------------------------------------
		else if	(Func_Sel == 4'b0001) begin 
			Y1sC = ~Operand_Y; Y2sC = ~Operand_Y + Func_Sel[0];
			Arith_Result = {1'b0, Operand_X} + {1'b0, Y1sC} + Func_Sel[0];
			ALU_Result = Arith_Result[7:0];
			overflow = (Operand_X[7] & Y2sC[7] & ~ALU_Result[7]) |
						(~Operand_X[7] & ~Y2sC[7] & ALU_Result[7]);
			ALU_CNVZ = {Arith_Result[8], ALU_Result[7], overflow, ~| ALU_Result}; end
//---------------------------INC----------------------------------------------------
		else if	(Func_Sel == 4'b0010) begin
			Arith_Result = {1'b0, Operand_X} + {1'b0, 2'b00, Const_K};
			ALU_Result = Arith_Result[7:0];
			overflow = (Operand_X[7] & 1'b0 & ~ALU_Result[7]) |
						(~Operand_X[7] & 1'b1 & ALU_Result[7]);
			ALU_CNVZ = {Arith_Result[8], ALU_Result[7], overflow, ~| ALU_Result}; end
//---------------------------DEC----------------------------------------------------
		else if	(Func_Sel == 4'b0011) begin 
			Y1sC = ~{2'b00, Const_K}; Y2sC = ~{2'b00, Const_K} + Func_Sel[0];
			Arith_Result = {1'b0, Operand_X} + {1'b0, Y1sC} + Func_Sel[0];
			ALU_Result = Arith_Result[7:0];
			overflow = (Operand_X[7] & Y2sC[7] & ~ALU_Result[7]) |
						(~Operand_X[7] & ~Y2sC[7] & ALU_Result[7]);
			ALU_CNVZ = {Arith_Result[8], ALU_Result[7], overflow, ~| ALU_Result}; end
	// Performing logic operations:
//---------------------------XOR----------------------------------------------------
		else if	(Func_Sel == 4'b0100) begin  
			ALU_Result = (Operand_X ^ Operand_Y);
			ALU_CNVZ = {1'b0, ALU_Result[7], 1'b0, ~| ALU_Result}; end
//---------------------------AND----------------------------------------------------
		else if	(Func_Sel == 4'b0101) begin  
			ALU_Result = (Operand_X & Operand_Y);
			ALU_CNVZ = {1'b0, ALU_Result[7], 1'b0, ~| ALU_Result}; end
//---------------------------OR-----------------------------------------------------
		else if	(Func_Sel == 4'b0110) begin  
			ALU_Result = (Operand_X | Operand_Y);
			ALU_CNVZ = {1'b0, ALU_Result[7], 1'b0, ~| ALU_Result}; end
//---------------------------TrX----------------------------------------------------
		else if	(Func_Sel == 4'b0111) begin  
			ALU_Result = (Operand_X);
			ALU_CNVZ = {1'b0, ALU_Result[7], 1'b0, ~| ALU_Result}; end
	// Performing shift and rotate operations using concatenation:
//---------------------------SHRA---------------------------------------------------
		else if	(Func_Sel == 4'b1000) begin
			if 		(Const_K == 2'b00) ALU_Result = Operand_X;
			else if 	(Const_K == 2'b01) ALU_Result = 
								{Operand_X[7], Operand_X[7:1]};
			else if 	(Const_K == 2'b10) ALU_Result = 
								{Operand_X[7], Operand_X[7], Operand_X[7:2]};
			else if 	(Const_K == 2'b11) ALU_Result = 
								{Operand_X[7], Operand_X[7], Operand_X[7], Operand_X[7:3]};
			else ALU_Result = 8'b00000000;
			ALU_CNVZ = {1'b0, ALU_Result[7], 1'b0, ~| ALU_Result}; end
//======================SHRL================================================
		else if	(Func_Sel == 4'b1001) begin
			if 		(Const_K == 2'b00) ALU_Result = Operand_X;
			else if 	(Const_K == 2'b01) ALU_Result = {1'b0, Operand_X[7:1]};
			else if 	(Const_K == 2'b10) ALU_Result = {2'b00, Operand_X[7:2]};
			else if 	(Const_K == 2'b11) ALU_Result = {3'b000, Operand_X[7:3]};
			else ALU_Result = 8'b00000000;
			ALU_CNVZ = {1'b0, ALU_Result[7], 1'b0, ~| ALU_Result}; end
//----------------------RLC--------------------------------------------------
		else if	(Func_Sel == 4'b1010) begin
			if 		(Const_K == 2'b00) ALU_Result = Operand_X;
			else if 	(Const_K == 2'b01) begin
				ALU_Result = {Operand_X[6:0], C_in};
				ALU_CNVZ[3] = Operand_X[7]; end
			else if 	(Const_K == 2'b10) begin
				ALU_Result = {Operand_X[5:0], C_in, Operand_X[7]};
				ALU_CNVZ[3] = Operand_X[6]; end
			else if 	(Const_K == 2'b11) begin
				ALU_Result = {Operand_X[4:0], C_in, Operand_X[7:6]};
				ALU_CNVZ[3] = Operand_X[5];end
			else ALU_Result = 8'b00000000;
			ALU_CNVZ[2:0] = {ALU_Result[7], 1'b0, ~| ALU_Result}; end
//===========================TrY====================================================
		else if	(Func_Sel == 4'b1011) begin  
			ALU_Result = (Operand_Y);
			ALU_CNVZ = {1'b0, ALU_Result[7], 1'b0, ~| ALU_Result}; end
	// Performing constant output assignments:
//----------------------------------------------------------------------------------
		else if	(Func_Sel == 4'b1100) begin  
			ALU_Result = 4'b0000;
			ALU_CNVZ = {1'b0, ALU_Result[7], 1'b0, ~| ALU_Result}; end
//----------------------------------------------------------------------------------
		else if	(Func_Sel == 4'b1101) begin  
			ALU_Result = 4'b0101;
			ALU_CNVZ = {1'b0, ALU_Result[7], 1'b0, ~| ALU_Result}; end
//----------------------------------------------------------------------------------
		else if	(Func_Sel == 4'b1110) begin  
			ALU_Result = 4'b1010;
			ALU_CNVZ = {1'b0, ALU_Result[7], 1'b0, ~| ALU_Result}; end
//----------------------------------------------------------------------------------
		else if	(Func_Sel == 4'b1111) begin  
			ALU_Result = 4'b1111;
			ALU_CNVZ = {1'b0, ALU_Result[7], 1'b0, ~| ALU_Result}; end
		// And the default option:
//----------------------------------------------------------------------------------
		else	begin ALU_Result  = 4'b00000000; ALU_CNVZ = 4'b0000; end
	end
endmodule
