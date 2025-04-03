library ieee;
use ieee.std_logic_1164.all;

entity sls_or3 is
	port (x2, x1, x0 : in 	std_logic;
				f 		  : out 	std_logic);
end sls_or3;

architecture sls_functional of sls_or3 is
begin
	f <= x2 OR (x1 OR x0);
end sls_functional;