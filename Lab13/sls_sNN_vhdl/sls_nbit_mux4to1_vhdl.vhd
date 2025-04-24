library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.sls_package.all;

entity sls_nbit_mux4to1_vhdl is 
	generic (n : integer := 8);
	port (d3, d2, d1, d0 : in std_logic_vector(n-1 downto 0);
	s : in std_logic_vector(1 downto 0);
	f : out std_logic_vector(n-1 downto 0));
end sls_nbit_mux4to1_vhdl;

architecture sls_nbit_mux4to1 of sls_nbit_mux4to1_vhdl is 
begin
	mux: for k in 0 to n-1 generate
		f(k) <= ((not s(1)) and (not s(0)) and d0(k)) or 
				((not s(1)) and s(0) and d1(k)) or
				(s(1) and (not s(0)) and d2(k)) or
				(s(1) and s(0) and d3(k));
	end generate;
end sls_nbit_mux4to1;
