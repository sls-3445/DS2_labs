-- ----------------------------------------------------------------------
-- This is a testbench to test the PSLM. It generates stimuli using a 
-- task,but does not automatically verify the output values. These will 
-- have to be verified visually on the timing diagram.
-- Dorin Patru February 2020.
-- ----------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
-- ----------------------------------------------------------------------
-- The entity of a testbench has no input or output ports!
-- ----------------------------------------------------------------------
ENTITY sls_PSRM_vhdl_tb IS
END sls_PSRM_vhdl_tb;
-- ----------------------------------------------------------------------
-- This is the behaviroal architecture.
-- ----------------------------------------------------------------------
ARCHITECTURE behavior OF sls_PSRM_vhdl_tb IS
	COMPONENT sls_PSRM_vhdl IS
	PORT (Md_val, mr_val : in 		std_logic_vector(3 downto 0);
			Reset, Clock 	: in 		std_logic;
			FP 				: out 	std_logic_vector(7 downto 0));
END COMPONENT;
-- ----------------------------------------------------------------------
-- These are the declarations of signals to assign values to stimuli and 
-- to observe:
-- ----------------------------------------------------------------------
	SIGNAL Reset_tb, Clock_tb :	STD_LOGIC;
	SIGNAL Md_val_tb, mr_val_tb	:	STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL FP_tb			:	STD_LOGIC_VECTOR(7 DOWNTO 0);
-- ----------------------------------------------------------------------
-- Create an instance of the component to be verified
-- ----------------------------------------------------------------------
BEGIN
cuv : sls_PSRM_vhdl PORT MAP (Md_val => Md_val_tb, mr_val => mr_val_tb, 
	Reset => Reset_tb, Clock => Clock_tb, FP => FP_tb);
-- ----------------------------------------------------------------------
-- Define a process that applies input stimulus and test outputs
-- ----------------------------------------------------------------------
tb : PROCESS
	CONSTANT period : time := 20 ns;
	CONSTANT n	:	integer	:= 4;
	BEGIN
-------------------------------------------------------------------------
-- Reset for a few cycles
-------------------------------------------------------------------------
	Md_val_tb <= "1100"; mr_val_tb <= "1010"; Reset_tb <= '1';
		FOR i IN 0 TO (3) loop
			Clock_tb <= '0'; WAIT FOR period; 
			Clock_tb <= '1'; WAIT FOR period; END LOOP;
-------------------------------------------------------------------------
---Load first data set M_val = 4'b1100 and m_val = 4'b1010
-------------------------------------------------------------------------
	Md_val_tb <= "1100"; mr_val_tb <= "1010"; Reset_tb <= '0';
			Clock_tb <= '0'; WAIT FOR period; 
			Clock_tb <= '1'; WAIT FOR period;
-------------------------------------------------------------------------
---Load second data set M_val = 4'b1010 and m_val = 4'b0101
-------------------------------------------------------------------------
	Md_val_tb <= "1010"; mr_val_tb <= "0101"; Reset_tb <= '0';
			Clock_tb <= '0'; WAIT FOR period; 
			Clock_tb <= '1'; WAIT FOR period;
-------------------------------------------------------------------------
---Load third data set M_val = 4'b0101 and m_val = 4'b1111
-------------------------------------------------------------------------
	Md_val_tb <= "0101"; mr_val_tb <= "1111"; Reset_tb <= '0';
			Clock_tb <= '0'; WAIT FOR period; 
			Clock_tb <= '1'; WAIT FOR period;
-------------------------------------------------------------------------
---Load fourth data set M_val = 4'b0101 and m_val = 4'b1010
-------------------------------------------------------------------------
	Md_val_tb <= "0101"; mr_val_tb <= "1010"; Reset_tb <= '0';
			Clock_tb <= '0'; WAIT FOR period; 
			Clock_tb <= '1'; WAIT FOR period;
-------------------------------------------------------------------------
---Load fifth data set M_val = 4'b1100 and m_val = 4'b1010
-------------------------------------------------------------------------
	Md_val_tb <= "1111"; mr_val_tb <= "1111"; Reset_tb <= '0';
			Clock_tb <= '0'; WAIT FOR period; 
			Clock_tb <= '1'; WAIT FOR period;
-------------------------------------------------------------------------
---Allow for the last data set to complete ...
-------------------------------------------------------------------------
	FOR i IN 0 TO (5) loop
			Clock_tb <= '0'; WAIT FOR period; 
			Clock_tb <= '1'; WAIT FOR period; END LOOP;
-------------------------------------------------------------------------
---Test for other values in the same way as above ...
-------------------------------------------------------------------------
		WAIT; -- indefinitely suspend the process
	END PROCESS;
END behavior;
