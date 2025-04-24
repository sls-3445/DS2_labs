library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sls_nbit_2sc_out_vhdl is
	generic (n : integer := 8);
	port (twosc_in : in  std_logic;
		  Din 			: in 	std_logic_vector(n-1 downto 0);
		  Dout 			: out std_logic_vector(n-1 downto 0));
end sls_nbit_2sc_out_vhdl;

architecture beh of sls_nbit_2sc_out_vhdl is
begin
process (Din, twosc_in)
begin
	if (twosc_in = '0') then Dout <= Din;
	else
		Dout <= (not Din) + 1;
	end if;
end process;
end beh;
