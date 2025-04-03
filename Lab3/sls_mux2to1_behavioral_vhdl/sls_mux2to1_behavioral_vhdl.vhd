library ieee;
use ieee.std_logic_1164.all;

entity sls_mux2to1_behavioral_vhdl is
	port (x1, x0, s : in 	std_logic;
					f	 : out 	std_logic);
end sls_mux2to1_behavioral_vhdl;

architecture sls_behavioral of sls_mux2to1_behavioral_vhdl is
	begin
	process (x1, x0, s)
		begin
			if s = '1' then
				f <= x1;
			else
				f <= x0;
			end if;
		end process;
end sls_behavioral;