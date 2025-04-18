library ieee;
use ieee.std_logic_1164.all;

entity sls_xor2 is
port (x1, x2 : in  std_logic;
		f  	 : out std_logic);
end sls_xor2;

architecture func of sls_xor2 is
begin
	f <= x1 xor x2;
end func;