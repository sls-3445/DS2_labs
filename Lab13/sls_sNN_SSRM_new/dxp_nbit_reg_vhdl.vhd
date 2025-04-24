LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dxp_nbit_reg_vhdl IS
	generic (n : integer := 4);
	PORT( Reset, Clock, LD_EN	:	IN STD_LOGIC;
			D		:	IN		STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			Q		:	OUT	STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END dxp_nbit_reg_vhdl;

ARCHITECTURE Behavior OF dxp_nbit_reg_vhdl IS
	SIGNAL Count	:	STD_LOGIC_VECTOR(n-1 DOWNTO 0);
	BEGIN
		PROCESS(Clock)
			BEGIN
			IF (Clock'EVENT AND Clock = '1') THEN
				if Reset = '1' then Count <= (others => '0');
				elsif LD_EN = '1' THEN Count <= D;
				ELSE Count <= Count; END IF;
			END IF;
		END PROCESS;
			Q <= Count;
END Behavior;