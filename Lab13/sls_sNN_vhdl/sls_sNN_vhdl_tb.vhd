LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.sls_package.all;
------------------------------------------------------------------------------
entity sls_sNN_vhdl_tb is end sls_sNN_vhdl_tb;
------------------------------------------------------------------------------
architecture testbench of sls_sNN_vhdl_tb is
------------------------------------------------------------------------------
	signal Reset_tb, Clock_tb : std_logic;
	signal signis_tb : std_logic_vector(7 downto 0);
------------------------------------------------------------------------------
	begin
------------------------------------------------------------------------------
	cuv : sls_sNN_vhdl port map (Reset_tb, Clock_tb, signis_tb);
------------------------------------------------------------------------------	
tb: process 
		CONSTANT period : time := 20 ns;
		CONSTANT n	:	integer	:= 4;
	BEGIN
		Reset_tb <= '1';
			FOR i IN 0 TO (9) loop
				Clock_tb <= '0'; WAIT FOR period; 
				Clock_tb <= '1'; WAIT FOR period; END LOOP;
		Reset_tb <= '0';
			FOR i IN 0 TO (1000) loop
				Clock_tb <= '0'; WAIT FOR period; 
				Clock_tb <= '1'; WAIT FOR period; END LOOP;
		WAIT; -- indefinitely suspend the process
	END PROCESS;
END testbench;
