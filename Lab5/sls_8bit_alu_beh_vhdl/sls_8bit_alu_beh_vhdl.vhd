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

entity sls_8bit_alu_beh_vhdl is
	port (	
			Func_Sel					:	in	std_logic_vector(3 downto 0);
			Operand_X, Operand_Y	:	in	std_logic_vector(7 downto 0);
			Const_K					:	in	std_logic_vector(1 downto 0);
			ALU_Result				:	out std_logic_vector(7 downto 0);
			ALU_CNVZ					: 	out std_logic_vector(3 downto 0);
			C_in						: 	in std_logic);
			
end sls_8bit_alu_beh_vhdl ;
-- ----------------------------------------------------------------------------
-- Above: The four status bit outputs, i.e. Carryout (C), Negative (N), 
-- Overflow (V), and Zero (Z), are combined into a 4-bit bus.
-- ALU_CNVZ = {Carryout, Negative, Overflow, Zero}
-- ----------------------------------------------------------------------------
architecture sls_beh of sls_8bit_alu_beh_vhdl is	
-- ----------------------------------------------------------------------------
-- These are internal signals which compute various functions:
-- ----------------------------------------------------------------------------
signal 	sum, incr, diff, decr, Y2sC, K2sC 	: std_logic_vector(8 downto 0);
											-- above: 5-bit wide to capture the carryout
signal 	shra 	: std_logic_vector(7 downto 0);
signal 	shrl 	: std_logic_vector(7 downto 0);
signal 	rlc 	: std_logic_vector(7 downto 0);
signal 	carryout, negative, overflow, zero : std_logic;
signal	Int_Result	: std_logic_vector(7 downto 0);
-- ----------------------------------------------------------------------------
-- This is the procedural process block in which the entire operation of the 
-- ALU is described using functional and behavioral descriptions. Notice that
-- there is no "hint" on how to physically implement any of these functions.
-- This is left to the algorithms of the compiler/synthesis tools!
-- ----------------------------------------------------------------------------
begin
	process (Operand_X, Operand_Y, Func_Sel, Const_K, C_in, 
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
		Y2sC <= ('0' & (not Operand_Y)) + "000000001"; 
		K2sC <= ('0' & (not ("000000" & Const_K))) + "000000001";
		sum  <= ('0' & Operand_X) + ('0' & Operand_Y);
		diff <= ('0' & Operand_X) + Y2sC;
		incr <= ('0' & Operand_X) + ('0' & "00" & Const_K);
		decr <= ('0' & Operand_X) + K2sC;
-- ----------------------------------------------------------------------------
-- This is the shra operation. You will need to add your own shll or shrl and
-- rlc or rrc.
-- ----------------------------------------------------------------------------
		if 	(Const_K = "00") then 
			shra <= (Operand_X);
		elsif (Const_K = "01") then 
			shra <= (Operand_X(7) & Operand_X(7 downto 1));
			shrl <= ('0' & Operand_X(7 downto 1));
			rlc <= (Operand_X(6 downto 0) & C_in);
			carryout <= Operand_X(7);
		elsif (Const_K = "10") then 
			shra <= (Operand_X(7) & Operand_X(7) & Operand_X(7 downto 2));
			shrl <= ("00" & Operand_X(7 downto 2));
			rlc <= (Operand_X(5 downto 0) & C_in & Operand_X(7));
			carryout <= Operand_X(6);
		elsif (Const_K = "11") then 
			shra <= (Operand_X(7) & Operand_X(7) & Operand_X(7) & Operand_X(7 downto 3));
			shrl <= ("000" & Operand_X(7 downto 3));
			rlc <= (Operand_X(4 downto 0) & C_in & Operand_X(7 downto 6));
			carryout <= Operand_X(5);
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
			overflow <= (Operand_X(7) xor sum(7)) and (Operand_Y(7) xor sum(7));
			zero <= not(sum(7) or sum(6) or sum(5) or sum(4) or sum(3) or sum(2) or sum(1) or sum(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero);
------------------------SUB----------------------------------------------------
		elsif (Func_Sel = "0001") then
			ALU_Result <= diff (7 downto 0);
			carryout <= diff(8); negative <= diff(7); 
			overflow <= (Operand_X(7) xor diff(7)) and (Y2sC(7) xor diff(7));
			zero <= not(diff(7) or diff(6) or diff(5) or diff(4) or diff(3) or diff(2) or diff(1) or diff(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
------------------------INC----------------------------------------------------
		elsif (Func_Sel = "0010") then
			ALU_Result <= incr (7 downto 0);
			carryout <= incr(8); negative <= incr(7); 
			overflow <= (Operand_X(7) xor incr(7)) and ('0' xor incr(7));
			zero <= not(incr(7) or incr(6) or incr(5) or incr(4) or incr(3) or incr(2) or incr(1) or incr(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
------------------------DEC----------------------------------------------------
		elsif (Func_Sel = "0011") then
			ALU_Result <= decr (7 downto 0);
			carryout <= decr(8); negative <= decr(7); 
			overflow <= (Operand_X(7) xor decr(7)) and (K2sC(7) xor decr(7));
			zero <= not(decr(7) or decr(6) or decr(5) or decr(4) or decr(3) or decr(2) or decr(1) or decr(0));
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
------------------------SHRL-------------------------------------------
		elsif (Func_Sel = "1001") then 
			ALU_Result <= shrl; Int_Result <= shrl;
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
------------------------RLC---------------------------------------------
		elsif (Func_Sel = "1010") then 
			ALU_Result <= rlc; Int_Result <= rlc;
			negative <= Int_Result(7); overflow <= '0';
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
			ALU_Result  <= "00000101"; Int_Result <= "00000101";
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
		elsif (Func_Sel = "1110") then 
			ALU_Result  <= "00001010"; Int_Result <= "00001010";
			carryout <= '0'; negative <= Int_Result(7); overflow <= '0'; 
			zero <= not(Int_Result(7) or Int_Result(6) or Int_Result(5) or Int_Result(4) or Int_Result(3) or Int_Result(2) or Int_Result(1) or Int_Result(0));
			ALU_CNVZ <= (carryout & negative & overflow & zero); 
		elsif (Func_Sel = "1111") then 
			ALU_Result  <= "00001111"; Int_Result <= "00001111";
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
end sls_beh ;