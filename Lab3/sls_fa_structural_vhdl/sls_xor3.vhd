library ieee;
use ieee.std_logic_1164.all;

entity sls_xor3 is
	port (x2, x1, x0 : in 	std_logic;
				f	 : out 	std_logic);
end sls_xor3;

architecture sls_functional of sls_xor3 is
begin
	f <= x2 XOR (x1 XOR x0);
end sls_functional;