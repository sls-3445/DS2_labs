library ieee;
use ieee.std_logic_1164.all;

entity sls_nbit_mux2to1_vhdl is
	generic (n : integer := 4);
	port (d1, d0 : in 	std_logic_vector(n-1 downto 0);
				s 	 : in 	std_logic;
				f 	 : out 	std_logic_vector(n-1 downto 0));
end sls_nbit_mux2to1_vhdl;

architecture sls_nbit_mux2to1_func of sls_nbit_mux2to1_vhdl is
begin
level1gen : for k in 0 to n-1 generate
	f(k) <= (d1(k) AND s) OR (NOT s AND d0(k));
end generate;
end sls_nbit_mux2to1_func;