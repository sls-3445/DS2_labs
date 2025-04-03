library ieee;
use ieee.std_logic_1164.all;

entity sls_mux2to1_functional_vhdl is
	port (x1, x0, s : in 	std_logic ;
				f 		 : out 	std_logic );
end sls_mux2to1_functional_vhdl;

architecture sls_functional of sls_mux2to1_functional_vhdl is
begin
	f <= (x1 AND s) OR (NOT s AND x0);
end sls_functional;