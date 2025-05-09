library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity sls_8bit_4loc_stack_vhdl is 
	port(push, pop, Reset, Clock : in std_logic;
	din : in std_logic_vector(7 downto 0);
	dout : out std_logic_vector(7 downto 0));
end sls_8bit_4loc_stack_vhdl;

architecture sls_stack of sls_8bit_4loc_stack_vhdl is
signal tos, tos1, tos2, tos3 : std_logic_vector(7 downto 0);

begin
process begin

	WAIT UNTIL Clock'EVENT AND Clock ='1';
------------------------------------------------------------------------------
	if (Reset = '1') then tos <= x"00"; tos1 <= x"00"; tos2 <= x"00"; tos3 <= x"00"; 
	elsif (push = '1') then tos3 <= tos2; tos2 <= tos1; tos1 <= tos; tos <= din; dout <= din;
	elsif (pop = '1') then dout <= tos; tos <= tos1; tos1 <= tos2; tos2 <= tos3; tos3 <= x"00";
	else  tos <= tos; tos1 <= tos1; tos2 <= tos2; tos3 <= tos3; dout <= tos; end if;
end process;
end sls_stack;
