LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY sls_SSRM_vhdl_tb IS
END sls_SSRM_vhdl_tb;
-- ----------------------------------------------------------------------
-- This is the behavioral architecture.
-- ----------------------------------------------------------------------
ARCHITECTURE behavior OF sls_SSRM_vhdl_tb IS
	COMPONENT sls_SSRM_vhdl IS
	PORT (M_val, mp_val : in 		std_logic_vector(7 downto 0);
			START, Clock 	: in 		std_logic;
			FP 				: out 	std_logic_vector(15 downto 0);
			DONE 				: buffer std_logic);
END COMPONENT;
-- ----------------------------------------------------------------------
-- These are the declarations of signals to assign values to stimuli and 
-- to observe:
-- ----------------------------------------------------------------------
	SIGNAL START_tb, Clock_tb :	STD_LOGIC;
	SIGNAL Md_val_tb, mr_val_tb	:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL FP_tb			:	STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL DONE_tb		:	STD_LOGIC;
-- ----------------------------------------------------------------------
-- Create an instance of the component to be verified
-- ----------------------------------------------------------------------
BEGIN
cuv : sls_SSRM_vhdl PORT MAP (M_val => Md_val_tb, mp_val => mr_val_tb, 
	START => START_tb, Clock => Clock_tb, FP => FP_tb, DONE => DONE_tb);
-------------------------------------------------------------------------
-- Test for Md_val = "1100" and mr_val = "1010"
-------------------------------------------------------------------------
-- ----------------------------------------------------------------------
-- Define a process that applies input stimulus and test outputs
-- ----------------------------------------------------------------------
tb : PROCESS
	CONSTANT period : time := 20 ns;
	CONSTANT n	:	integer	:= 4;
	BEGIN
	Md_val_tb <= "01010101"; mr_val_tb <= "01010101"; START_tb <= '0';
		FOR i IN 0 TO (3) loop
			Clock_tb <= '0'; WAIT FOR period; 
			Clock_tb <= '1'; WAIT FOR period; END LOOP;
	Md_val_tb <= "01010101"; mr_val_tb <= "01010101"; START_tb <= '1';
		FOR i IN 0 TO (30) loop
			Clock_tb <= '0'; WAIT FOR period; 
			Clock_tb <= '1'; WAIT FOR period; END LOOP;
-------------------------------------------------------------------------
--Test for other values in the same way as above ...
-------------------------------------------------------------------------
		WAIT; -- indefinitely suspend the process
	END PROCESS;
END behavior;
