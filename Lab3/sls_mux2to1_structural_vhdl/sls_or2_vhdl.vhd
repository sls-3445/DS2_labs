library ieee;
use ieee.std_logic_1164.all;

entity sls_or2 is
	port (x1, x0 : in 	std_logic;
				f	 : out 	std_logic);
end sls_or2;

architecture sls_functional of sls_or2 is
begin
	f <= x1 OR x0;
end sls_functional;