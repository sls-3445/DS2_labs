LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dxpRISC_vNMMIOP_vhdl_tb IS
END dxpRISC_vNMMIOP_vhdl_tb;

ARCHITECTURE run_free OF dxpRISC_vNMMIOP_vhdl_tb IS
------------------------------------------------------------------------------
-- Declare the cuv component
------------------------------------------------------------------------------
	COMPONENT dxpRISC_vNMMIOP_vhdl -- my dxpRISC
	PORT (Reset, Clock, PB1 : in std_logic;
			SW : in std_logic_vector(3 downto 0);
			LEDs : out std_logic_vector(7 downto 0);
			ICis : out std_logic_vector(95 downto 0);
			crtMCis : out std_logic_vector(2 downto 0));
	END component ;
------------------------------------------------------------------------------
-- Stimulus signals
------------------------------------------------------------------------------
	SIGNAL		Reset_tb, Clock_tb, PB1_tb	:	STD_LOGIC;
	SIGNAL		SW_tb	:	STD_LOGIC_VECTOR(3 DOWNTO 0);
------------------------------------------------------------------------------
-- Observed and output signals
------------------------------------------------------------------------------
	SIGNAL		LEDs_tb	:	STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL		ICis_tb	:	STD_LOGIC_VECTOR(95 DOWNTO 0);
	SIGNAL		crtMCis_tb	:	STD_LOGIC_VECTOR(2 DOWNTO 0);
------------------------------------------------------------------------------
-- The port mapping of the CUV.
------------------------------------------------------------------------------
BEGIN
	CUV	:	dxpRISC_vNMMIOP_vhdl
		PORT MAP( Reset => Reset_tb, Clock => Clock_tb, PB1 => PB1_tb,
			SW => SW_tb, LEDs => LEDs_tb, ICis => ICis_tb, crtMCis => crtMCis_tb);
------------------------------------------------------------------------------
-- The testbench process assigns new input stimulus values in the first 
--		half-period of the clock.
-- In this case, the assertion of the outputs is done "manually" in the
-- 	timing diagram.
------------------------------------------------------------------------------
	tb	:	PROCESS
	CONSTANT period : time := 20 ns;
	BEGIN
------------------------------------------------------------------------------
-- The RESET cycle
------------------------------------------------------------------------------
		FOR i	IN 0 TO 5 LOOP
	Reset_tb <= '1'; Clock_tb <= '0'; PB1_tb <= '1'; SW_tb <= "0000";
	WAIT FOR period; Clock_tb <= '1'; WAIT FOR period; END LOOP;
------------------------------------------------------------------------------
-- All other cycles.  Their number depends on how long the program is.
------------------------------------------------------------------------------	
		FOR i	IN 0 TO 30 LOOP
	Reset_tb <= '0'; Clock_tb <= '0'; PB1_tb <= '1'; SW_tb <= "0000";
	WAIT FOR period; Clock_tb <= '1'; WAIT FOR period; END LOOP;
------------------------------------------------------------------------------	
		FOR i	IN 0 TO 90 LOOP
	Reset_tb <= '0'; Clock_tb <= '0'; PB1_tb <= '1'; SW_tb <= "1111";
	WAIT FOR period; Clock_tb <= '1'; WAIT FOR period; END LOOP;
------------------------------------------------------------------------------	
	WAIT;
	END PROCESS;
END run_free;