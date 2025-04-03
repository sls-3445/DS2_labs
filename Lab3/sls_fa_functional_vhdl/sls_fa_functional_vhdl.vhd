library ieee;
use ieee.std_logic_1164.all;

entity sls_fa_functional_vhdl is
	port (cin, x, y : in 	std_logic;
			sum, cout : out 	std_logic);
end sls_fa_functional_vhdl;

architecture sls_fa_functional of sls_fa_functional_vhdl is
begin
	sum <= x XOR y XOR cin;
	cout <= (x AND y) OR (cin AND x) or (cin AND y);
end sls_fa_functional;