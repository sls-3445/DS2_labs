-----------------------------------------------------------------------------
-- This is a 4-bit ALU described procedurally at the highest level of 
-- abstraction.
-- Dorin Patru February 2020. Updated February 2021.
-- ----------------------------------------------------------------------------
-- Signal/instance names should capture their usage, i.e. shouldn't be just 
-- a few letters. On the other hand, if these are too long, reading the code
-- becomes difficult. In some cases below I have chosen very long names to help
-- in understanding. The context of the design will dictate choices.
-- ----------------------------------------------------------------------------
library ieee ;
use ieee.std_logic_1164.all ;
use ieee.std_logic_signed.all ;

entity dxp_8bit_alu_beh_vhdl is
	port (	
			Func_Sel					:	in	std_logic_vector(3 downto 0) := "0000";
			Operand_X, Operand_Y	:	in	std_logic_vector(7 downto 0) := "00000000";
			Const_K					:	in	std_logic_vector(1 downto 0) := "00";
			ALU_Result				:	out std_logic_vector(7 downto 0);
			ALU_CNVZ					: 	out std_logic_vector(3 downto 0));
end dxp_8bit_alu_beh_vhdl ;
-- ----------------------------------------------------------------------------
-- Above: The four status bit outputs, i.e. Carryout (C), Negative (N), 
-- Overflow (V), and Zero (Z), are combined into a 4-bit bus.
-- ALU_CNVZ = Carryout & Negative & Overflow & Zero
-- ----------------------------------------------------------------------------
architecture dxp_beh of dxp_8bit_alu_beh_vhdl is	
-- ----------------------------------------------------------------------------
-- These are internal signals which compute various functions:
-- ----------------------------------------------------------------------------
signal 	sum, incr, diff, decr 	: std_logic_vector(8 downto 0) := "000000000";
											-- above: 9-bit wide to capture the carryout
signal 	shra 	: std_logic_vector(7 downto 0) := "00000000";
signal 	carryout, negative, overflow, zero : std_logic := '0';
signal	Int_Result, Y2sC, K2sC	: std_logic_vector(7 downto 0) := "00000000";
-- ----------------------------------------------------------------------------
-- This is the procedural process block in which the entire operation of the 
-- ALU is described using functional and behavioral descriptions. Notice that
-- there is no "hint" on how to physically implement any of these functions.
-- This is left to the algorithms of the compiler/synthesis tools!
-- ----------------------------------------------------------------------------
begin
	process (Operand_X, Operand_Y, Func_Sel, Const_K,
				sum, diff, incr, decr, shra,
				carryout, negative, overflow, zero, Int_Result, Y2sC, K2sC)
-- ----------------------------------------------------------------------------
-- Above: Although these depend on the three input ports, the internal signals 
-- should be included in the sensitivity list above, because these can change 
-- inside the process.
-- ----------------------------------------------------------------------------
	begin
-- ----------------------------------------------------------------------------
-- The internal signal Int_Result is used to avoid declaring the output
-- port ALU_Result of type buffer. It is initialized here to a default value to 
-- avoid unsafe behavior in the if-else construct further below.
-- ----------------------------------------------------------------------------
		Int_Result <= "00000000";
-- ----------------------------------------------------------------------------
-- These are the four possible arithmetic operations. Keep only the two you
-- need to implement!
-- ----------------------------------------------------------------------------
		Y2sC <= (not Operand_Y) + '1'; K2sC <= (not ("000000" & Const_K)) + '1';
		sum  <= ('0' & Operand_X) + ('0' & Operand_Y);
		diff <= ('0' & Operand_X) + ('0' & Y2sC);
		incr <= ('0' & Operand_X) + ('0' & "000000" & Const_K);
		decr <= ('0' & Operand_X) + ('0' & K2sC);
-- ----------------------------------------------------------------------------
-- This is the shra operation. You will need to add your own shll or shrl and
-- rlc or rrc.
-- ----------------------------------------------------------------------------
		if 	(Const_K = "00") then 
			shra <= (Operand_X(7) & Operand_X(6) & Operand_X(5) & Operand_X(4) & Operand_X(3) & Operand_X(2) & Operand_X(1) & Operand_X(0));
		elsif (Const_K = "01") then 
			shra <= (Operand_X(7) & Operand_X(7) & Operand_X(6) & Operand_X(5) & Operand_X(4) & Operand_X(3) & Operand_X(2) & Operand_X(1));
		elsif (Const_K = "10") then 
			shra <= (Operand_X(7) & Operand_X(7) & Operand_X(7) & Operand_X(6) & Operand_X(5) & Operand_X(4) & Operand_X(3) & Operand_X(2));
		elsif (Const_K = "11") then 
			shra <= (Operand_X(7) & Operand_X(7) & Operand_X(7) & Operand_X(7) & Operand_X(6) & Operand_X(5) & Operand_X(4) & Operand_X(3));
		else shra <= "00000000"; end if;
-- ----------------------------------------------------------------------------
-- This is the main if-else construct, which assigns a value to ALU_Result as a 
-- function of Func_Sel. My Func_Sel is 4-bit wide to cover up to 16 different 
-- functions.
-- ----------------------------------------------------------------------------
-- The four arithmetic functions:
-- ----------------------------------------------------------------------------
------------------------ADD----------------------------------------------------
		if 	(Func_Sel = "0000") then
			ALU_Result <= sum (7 downto 0);
			carryout <= sum(8); negative <= sum(7); 
			overflow <= ((Operand_X(7) xor Operand_Y(7)) xor sum(7)) xor sum(8);
			zero <= not(sum(7) or sum(6) or sum (5) or sum(4) or sum(3) or sum(2) or sum (1) or sum(0)); 
			ALU_CNVZ <= (carryout & negative & overflow & zero);
------------------------SUB----------------------------------------------------
		elsif (Func_Sel = "0001") then
			ALU_Result <= diff (7 downto 0);
			carryout <= diff(8); negative <= diff(7); 
			overflow <= ((Operand_X(7) xor Y2sC(7)) xor diff(7)) xor diff(8);
			zero <= not(diff(7) or diff(6) or diff (5) or diff(4) or diff(3) or diff(2) or diff (1) or diff(0)); 
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
------------------------INC----------------------------------------------------
		elsif (Func_Sel = "0010") then
			ALU_Result <= incr (7 downto 0);
			carryout <= incr(8); negative <= incr(7); 
			overflow <= ((Operand_X(7) xor '0') xor incr(7)) xor incr(8);
			zero <= not(incr(7) or incr(6) or incr (5) or incr(4) or incr(3) or incr(2) or incr (1) or incr(0)); 
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
------------------------DEC----------------------------------------------------
		elsif (Func_Sel = "0011") then
			ALU_Result <= decr (7 downto 0);
			carryout <= decr(8); negative <= decr(7); 
			overflow <= ((Operand_X(7) xor '1') xor decr(7)) xor decr(8);
			zero <= not(decr(7) or decr(6) or decr (5) or decr(4) or decr(3) or decr(2) or decr (1) or decr(0)); 
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
-- ----------------------------------------------------------------------------
-- The three logic and one transfer functions:
-- ----------------------------------------------------------------------------
------------------------XOR----------------------------------------------------
		elsif (Func_Sel = "0100") then 
			ALU_Result  <= (Operand_X xor Operand_Y);
			Int_Result  <= (Operand_X xor Operand_Y);
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
------------------------AND----------------------------------------------------
		elsif (Func_Sel = "0101") then 
			ALU_Result  <= (Operand_X and Operand_Y);
			Int_Result  <= (Operand_X and Operand_Y);
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero);
------------------------OR-----------------------------------------------------
		elsif (Func_Sel = "0110") then 
			ALU_Result  <= (Operand_X or Operand_Y);
			Int_Result  <= (Operand_X or Operand_Y);
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
------------------------TrX----------------------------------------------------
		elsif (Func_Sel = "0111") then 
			ALU_Result  <= (Operand_X); Int_Result  <= (Operand_X);
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
-- ----------------------------------------------------------------------------
-- The two shift, one rotate, and one transfer functions:
-- ----------------------------------------------------------------------------
------------------------SHRA---------------------------------------------------
		elsif (Func_Sel = "1000") then 
			ALU_Result <= shra; Int_Result <= shra;
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
------------------------SHLL-or-SHRL-------------------------------------------
		elsif (Func_Sel = "1001") then 
			ALU_Result <= "00110011"; Int_Result <= "00110011";
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
------------------------RLC-or-RRC---------------------------------------------
		elsif (Func_Sel = "1010") then 
			ALU_Result <= "11001100"; Int_Result <= "11001100";
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
------------------------TrY----------------------------------------------------
		elsif (Func_Sel = "1011") then 
			ALU_Result <= (Operand_Y); Int_Result <= (Operand_Y);
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
-- ----------------------------------------------------------------------------
-- The four constant output functions:
-- ----------------------------------------------------------------------------
		elsif (Func_Sel = "1100") then 
			ALU_Result  <= "00000000"; Int_Result <= "00000000";
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
		elsif (Func_Sel = "1101") then 
			ALU_Result  <= "01010101"; Int_Result <= "01010101";
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
		elsif (Func_Sel = "1110") then 
			ALU_Result  <= "10101010"; Int_Result <= "10101010";
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
		elsif (Func_Sel = "1111") then 
			ALU_Result  <= "11111111"; Int_Result <= "11111111";
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 	
-- ----------------------------------------------------------------------------
-- the final else below takes care of all other possible values of Func_Sel
-- remember: Func_Sel can take more values then the ones listed above, i.e. 
-- z, u, x, etc.
-- ----------------------------------------------------------------------------
		else
			ALU_Result  <= "00000000"; Int_Result   <= "00000000";
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
		end if;
	end process;
end dxp_beh ;
