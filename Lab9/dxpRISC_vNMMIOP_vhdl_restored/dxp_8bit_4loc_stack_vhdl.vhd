--=============================================================================
-- This is the behavioral description of an 8-bit x4 location deep hardware
-- stack - LIFO.
-- (C) Dorin Patru March 2021.
--=============================================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use work.dxp_package.all;
--=============================================================================
-- Entity, and input and output ports declarations
--=============================================================================
entity dxp_8bit_4loc_stack_vhdl is 
	port(push, pop, Reset, Clock : in std_logic;
	din : in std_logic_vector(7 downto 0);
	dout : out std_logic_vector(7 downto 0));
end dxp_8bit_4loc_stack_vhdl;
--=============================================================================
-- Architecture and internal signals declarations
--=============================================================================
architecture dxp_stack of dxp_8bit_4loc_stack_vhdl is
signal tos, tos1, tos2, tos3 : std_logic_vector(7 downto 0);
--=============================================================================
-- Behavioral description:
--=============================================================================
begin
process begin
------------------------------------------------------------------------------
-- The WAIT UNTIL statement excludes/replaces the sensitivity list.  The 
-- 	process is not entered until a clock rising edge is detected.
------------------------------------------------------------------------------
	WAIT UNTIL Clock'EVENT AND Clock ='1';
------------------------------------------------------------------------------
	if (Reset = '1') then tos <= x"00"; tos1 <= x"00"; tos2 <= x"00"; tos3 <= x"00"; 
	elsif (push = '1') then tos3 <= tos2; tos2 <= tos1; tos1 <= tos; tos <= din; dout <= din;
	elsif (pop = '1') then dout <= tos; tos <= tos1; tos1 <= tos2; tos2 <= tos3; tos3 <= x"00";
	else  tos <= tos; tos1 <= tos1; tos2 <= tos2; tos3 <= tos3; dout <= tos; end if;
end process;
end dxp_stack;
