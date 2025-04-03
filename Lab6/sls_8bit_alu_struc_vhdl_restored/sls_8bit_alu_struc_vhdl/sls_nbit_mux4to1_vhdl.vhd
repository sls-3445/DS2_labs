library ieee ;
use ieee.std_logic_1164.all;
library sls_package;
use sls_package.sls_package.all;

entity  sls_nbit_mux4to1_vhdl is 	
	generic (n: integer := 8);
	port ( d3, d2, d1, d0 : std_logic_vector(n-1 downto 0);
			s : in std_logic_vector(1 downto 0); 	
			f : out std_logic_vector(n-1 downto 0));
end sls_nbit_mux4to1_vhdl ; 	

architecture sls_nbit_mux4to1_struc of sls_nbit_mux4to1_vhdl is
signal out0, out1 : std_logic_vector(n-1 downto 0);

begin
upper_bits : sls_nbit_mux2to1_vhdl generic map (n => n) port map (d1 => d3, d0 => d2, s => s(0), f => out1);
lower_bits : sls_nbit_mux2to1_vhdl generic map (n => n) port map (d1 => d1, d0 => d0, s => s(0), f => out0);
combined	  : sls_nbit_mux2to1_vhdl generic map (n => n) port map (d1 => out1, d0 => out0, s => s(1), f => f);

end sls_nbit_mux4to1_struc;