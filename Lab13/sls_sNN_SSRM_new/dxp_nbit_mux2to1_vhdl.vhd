library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.dxp_package.all;

entity dxp_nbit_mux2to1_vhdl is 
	generic (n : integer := 8);
	port (d1, d0 : in std_logic_vector(n-1 downto 0);
	s : in std_logic;
	f : out std_logic_vector(n-1 downto 0));
end dxp_nbit_mux2to1_vhdl;

architecture dxp_nbit_mux2to1 of dxp_nbit_mux2to1_vhdl is 
begin
	mux: for k in 0 to n-1 generate
		f(k) <= (s and d1(k)) or ((not s) and d0(k));
	end generate;
end dxp_nbit_mux2to1;
