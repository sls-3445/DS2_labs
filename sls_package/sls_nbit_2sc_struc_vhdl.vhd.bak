library ieee;
use ieee.std_logic_1164.all;

entity sls_nbit2sc_vhdl is
	generic (n : integer := 8)
	port(Din 	: in 	std_logic_vector(n-1 downto 0);
		  Dout 	: out std_logic_vector(n-1 downto 0));
end sls_nbit2sc_vhdl;

architecture func of sls_nbit2sc_vhdl is
signal add_num : std_logic_vector(n-1 downto 0) := (0 => '1', other => '0');
begin
--	add_num <= (0 => '1', other => '0');
	dout <= not(din) + add_num;
end func;
