library ieee;
use ieee.std_logic_1164.all;

entity sls_fa_behavioral_vhdl is
	port (cin, x, y : in 	std_logic;
			sum, cout : out 	std_logic);
end sls_fa_behavioral_vhdl;

architecture sls_fa_behavioral of sls_fa_behavioral_vhdl is
begin
	process (cin, x, y)
		begin
	if 	((cin = '0') and (x = '0') and (y = '0')) then sum <= '0'; cout <= '0';
	elsif ((cin = '0') and (x = '0') and (y = '1')) then sum <= '1'; cout <= '0';
	elsif ((cin = '0') and (x = '1') and (y = '0')) then sum <= '1'; cout <= '0';
	elsif ((cin = '0') and (x = '1') and (y = '1')) then sum <= '0'; cout <= '1';
	elsif ((cin = '1') and (x = '0') and (y = '0')) then sum <= '1'; cout <= '0';
	elsif ((cin = '1') and (x = '0') and (y = '1')) then sum <= '0'; cout <= '1';
	elsif ((cin = '1') and (x = '1') and (y = '0')) then sum <= '0'; cout <= '1';
	elsif ((cin = '1') and (x = '1') and (y = '1')) then sum <= '1'; cout <= '1';
	else sum <= '0'; cout <= '0'; end if;
	end process;
end sls_fa_behavioral;