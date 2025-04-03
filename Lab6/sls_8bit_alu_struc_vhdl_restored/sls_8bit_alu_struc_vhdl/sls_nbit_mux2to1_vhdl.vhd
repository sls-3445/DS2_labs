library ieee;
use ieee.std_logic_1164.all;

entity sls_nbit_mux2to1_vhdl is
	generic (n : integer := 8);
	port ( d1, d0 	: in 	std_logic_vector(n-1 downto 0);
					s 	: in 	std_logic;
					f 	: out std_logic_vector(n-1 downto 0));
end sls_nbit_mux2to1_vhdl;

architecture mux2to1_func of sls_nbit_mux2to1_vhdl is

begin
	mux : for i in 0 to n-1 generate
		f(i) <= (d1(i) AND s) OR (d0(i) AND NOT S);
	end generate;
end mux2to1_func;