-- ----------------------------------------------------------------------
-- This is a testbench to test a 4-bit ALU. It generates stimuli using a 
-- task,but does not automatically verify the output values. These will 
-- have to be verified visually on the timing diagram.
-- Dorin Patru February 2020. Updated February 2021.
-- ----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; --Need this package to use arithmetic operators
-- ----------------------------------------------------------------------
-- The entity of a testbench has no input or output ports!
-- ----------------------------------------------------------------------
entity sls_8bit_alu_beh_vhdl_tb is
end sls_8bit_alu_beh_vhdl_tb;
-- ----------------------------------------------------------------------
-- This is the behaviroal architecture.
-- ----------------------------------------------------------------------
architecture sls_verify of sls_8bit_alu_beh_vhdl_tb is
	component sls_8bit_alu_beh_vhdl
	port (	
			Func_Sel					:	in	std_logic_vector(3 downto 0);
			Operand_X, Operand_Y	:	in	std_logic_vector(3 downto 0);
			Const_K					:	in	std_logic_vector(1 downto 0);
			ALU_Result				:	out std_logic_vector(3 downto 0);
			ALU_CNVZ					: 	out std_logic_vector(3 downto 0);
			C_in						: 	in std_logic);
	end component ;
-- ----------------------------------------------------------------------
-- These are the declarations of signals to assign values to stimuli and 
-- to observe:
-- ----------------------------------------------------------------------
	signal Func_Sel_tb			:	std_logic_vector(3 downto 0);
	signal Operand_X_tb, Operand_Y_tb	:	std_logic_vector(3 downto 0);
	signal Const_K_tb				:	std_logic_vector(1 downto 0);
	signal ALU_Result_tb			:	std_logic_vector(3 downto 0);
	signal ALU_CNVZ_tb			:	std_logic_vector(3 downto 0);
	signal C_in_tb					: 	std_logic;
begin
-- ----------------------------------------------------------------------
-- Create an instance of the component to be verified
-- ----------------------------------------------------------------------
cuv: sls_8bit_alu_beh_vhdl port map (Func_Sel => Func_Sel_tb, 
	Operand_X => Operand_X_tb, Operand_Y => Operand_Y_tb,
	Const_K => Const_K_tb, C_in => C_in_tb,
	ALU_Result => ALU_Result_tb, ALU_CNVZ => ALU_CNVZ_tb);
-- ----------------------------------------------------------------------
-- Define a process that applies input stimulus and test outputs
-- ----------------------------------------------------------------------
tb : process
	constant period : time := 20 ns;
	constant n	:	integer	:= 4;
	begin
-- ----------------------------------------------------------------------
-- A STD_LOGIC_VECTOR value 0 of n-bits wide is assigned to each of the 
-- LHS signals. This initializes all stimulus signals.	
-- ----------------------------------------------------------------------
		Func_Sel_tb <= std_logic_vector(to_unsigned(0, n));
		Operand_X_tb <= std_logic_vector(to_unsigned(0, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(0, n));
		Const_K_tb <= std_logic_vector(to_unsigned(0, 2));
		wait for period;
-- ----------------------------------------------------------------------
-- A STD_LOGIC_VECTOR value 0, or 5 (0101b), or 10 (1010b), or 15 (1111b),
-- or 4 (0100b)
-- of n-bits wide is assigned to each of the LHS signals.  The simulation
-- is using the loop index i to loop through all possible Func_Sel values.
-- The VHDL to_unsigned function converts the first integer number into a
-- std_logic vector of the width given by the second number.
-- ----------------------------------------------------------------------
		
		-- First Tests --
		Operand_X_tb <= std_logic_vector(to_unsigned(0, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(0, n));
		Const_K_tb <= std_logic_vector(to_unsigned(1, 2));
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
		
		Operand_X_tb <= std_logic_vector(to_unsigned(42, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(42, n));
		Const_K_tb <= std_logic_vector(to_unsigned(1, 2));
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
		
--		Operand_X_tb <= std_logic_vector(to_unsigned(85, n));
--		Operand_Y_tb <= std_logic_vector(to_unsigned(85, n));
--		Const_K_tb <= std_logic_vector(to_unsigned(1, 2));
--		FOR i IN 0 TO (2**4 - 1) loop
--			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
--			WAIT FOR period;
--		END LOOP;
--		
--		Operand_X_tb <= std_logic_vector(to_unsigned(127, n));
--		Operand_Y_tb <= std_logic_vector(to_unsigned(127, n));
--		Const_K_tb <= std_logic_vector(to_unsigned(1, 2));
--		FOR i IN 0 TO (2**4 - 1) loop
--			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
--			WAIT FOR period;
--		END LOOP;
--		
		------------------------------------------------------
		
		-- Second Tests --
		Operand_X_tb <= std_logic_vector(to_unsigned(85, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(85, n));
		Const_K_tb <= std_logic_vector(to_unsigned(1, 2));
		C_in_tb <= '0';
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
		
		Operand_X_tb <= std_logic_vector(to_unsigned(85, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(85, n));
		Const_K_tb <= std_logic_vector(to_unsigned(1, 2));
		C_in_tb <= '1';
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
		
		Operand_X_tb <= std_logic_vector(to_unsigned(85, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(85, n));
		Const_K_tb <= std_logic_vector(to_unsigned(2, 2));
		C_in_tb <= '0';
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
		
		Operand_X_tb <= std_logic_vector(to_unsigned(85, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(85, n));
		Const_K_tb <= std_logic_vector(to_unsigned(2, 2));
		C_in_tb <= '1';
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
		
		-- Standard Tests --
		Operand_X_tb <= std_logic_vector(to_unsigned(0, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(0, n));
		Const_K_tb <= std_logic_vector(to_unsigned(1, 2));
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
		Operand_X_tb <= std_logic_vector(to_unsigned(5, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(5, n));
		Const_K_tb <= std_logic_vector(to_unsigned(1, 2));
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
		Operand_X_tb <= std_logic_vector(to_unsigned(10, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(10, n));
		Const_K_tb <= std_logic_vector(to_unsigned(1, 2));
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
		Operand_X_tb <= std_logic_vector(to_unsigned(15, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(15, n));
		Const_K_tb <= std_logic_vector(to_unsigned(1, 2));
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
		Operand_X_tb <= std_logic_vector(to_unsigned(5, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(4, n));
		Const_K_tb <= std_logic_vector(to_unsigned(1, 2));
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
-- ----------------------------------------------------------------------
		Operand_X_tb <= std_logic_vector(to_unsigned(0, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(0, n));
		Const_K_tb <= std_logic_vector(to_unsigned(2, 2));
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
		Operand_X_tb <= std_logic_vector(to_unsigned(5, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(5, n));
		Const_K_tb <= std_logic_vector(to_unsigned(2, 2));
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
		Operand_X_tb <= std_logic_vector(to_unsigned(10, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(10, n));
		Const_K_tb <= std_logic_vector(to_unsigned(2, 2));
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
		Operand_X_tb <= std_logic_vector(to_unsigned(15, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(15, n));
		Const_K_tb <= std_logic_vector(to_unsigned(2, 2));
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;
		Operand_X_tb <= std_logic_vector(to_unsigned(5, n));
		Operand_Y_tb <= std_logic_vector(to_unsigned(4, n));
		Const_K_tb <= std_logic_vector(to_unsigned(2, 2));
		FOR i IN 0 TO (2**4 - 1) loop
			Func_Sel_tb <= std_logic_vector(to_unsigned(i,4));
			WAIT FOR period;
		END LOOP;		wait; -- indefinitely suspend the process
	end process;
end sls_verify;
