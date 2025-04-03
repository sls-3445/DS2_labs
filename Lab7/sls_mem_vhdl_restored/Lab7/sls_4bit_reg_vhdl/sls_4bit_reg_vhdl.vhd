LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sls_4bit_reg_vhdl IS
	PORT( D		:	IN		STD_LOGIC_VECTOR(3 DOWNTO 0);
			Reset, Clock, LD_EN	:	IN STD_LOGIC;
			Q		:	OUT	STD_LOGIC_VECTOR(3 DOWNTO 0));
END sls_4bit_reg_vhdl;

ARCHITECTURE Behavior OF sls_4bit_reg_vhdl IS
	SIGNAL int_val	:	STD_LOGIC_VECTOR(3 DOWNTO 0);
	BEGIN
PROCESS(Clock)
	BEGIN
-- Check if rising edge of Clock ...
		IF (Clock'EVENT AND Clock = '1') THEN
			IF Reset = '1' THEN int_val <= "0000";
			ELSIF LD_EN = '1' THEN int_val <= D;
			ELSE int_val <= int_val;
			END IF;
		END IF;
	END PROCESS;
	Q <= int_val;
END Behavior;