library ieee;
use ieee.std_logic_1164.all;

entity sls_nbit_mux4to1_vhdl is
	generic (n : integer := 4);
	port (d3, d2, d1, d0 : in 	std_logic_vector(n-1 downto 0);
					s1, s0 	: in 	std_logic;
							f 	: out std_logic_vector(n-1 downto 0));
end sls_nbit_mux4to1_vhdl;

architecture sls_nbit_mux4to1_func of sls_nbit_mux4to1_vhdl is
begin
level1gen : for k in 0 to n-1 generate
	f(k) <= ((s1 AND s0) AND d3(k)) OR ((s1 AND NOT s0) AND d2(k)) OR ((NOT s1 AND s0) AND d1(k)) OR ((NOT s1 AND NOT s0) AND d0(k));
end generate;
end sls_nbit_mux4to1_func;