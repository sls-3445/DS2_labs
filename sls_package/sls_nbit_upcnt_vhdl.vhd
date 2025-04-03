LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY sls_nbit_upcnt_vhdl IS
	generic (n: integer := 8);
	PORT( D		:	IN		STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			Reset, Clock	:	IN STD_LOGIC;
			Cnt_EN, LD_EN	:	IN STD_LOGIC;
			Q		:	OUT	STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END sls_nbit_upcnt_vhdl;

ARCHITECTURE Behavior OF sls_nbit_upcnt_vhdl IS
	SIGNAL Count : STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	BEGIN
PROCESS(Clock)
	BEGIN				
-- Check to see if rising edge => ...
	IF (Clock'EVENT AND Clock = '1') THEN
		IF Reset = '1' THEN Count <= (others => '0');
		ELSIF (Cnt_EN = '0' AND LD_EN = '1') THEN Count <= D;
		ELSIF (Cnt_EN = '1' AND LD_EN = '0') THEN Count <= Count + '1';
		ELSE Count <= Count;
		END IF;
	END IF;
	END PROCESS;
	Q <= Count;
END Behavior;