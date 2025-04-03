library ieee;
use ieee.std_logic_1164.all;

entity sls_and2 is
	port (x1, x0 : in 	std_logic;
				f	 : out 	std_logic);
end sls_and2;

architecture sls_functional of sls_and2 is
begin
	f <= x1 AND x0;
end sls_functional;