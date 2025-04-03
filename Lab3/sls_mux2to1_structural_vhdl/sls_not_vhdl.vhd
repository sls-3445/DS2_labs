library ieee;
use ieee.std_logic_1164.all;


entity sls_not is
	port (x	: in 	std_logic;
			f	: out 	std_logic);
end sls_not;

architecture sls_functional of sls_not is
begin
	f <= NOT x;
end sls_functional;