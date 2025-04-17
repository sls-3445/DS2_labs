library ieee;
use ieee.std_logic_1164.all;

entity dxp_nBitSFR_vhdl is
	generic (n : integer := 4);
	port (Din : in std_logic_vector (n-1 downto 0); -- This is the input parallel data bus
			SDinL, SDinR : in std_logic; -- This is the one-bit serial input data used during ShR
			Clock, Reset, Load, ShR, ShL : in std_logic; -- These are the control signals
			SDoutR, SDoutL : buffer std_logic; -- This is the one-bit serial output data used during ShR
			Dout : buffer std_logic_vector (n-1 downto 0)); -- This is the output parallel data bus
end dxp_nBitSFR_vhdl;

architecture dxp_Behavior of dxp_nBitSFR_vhdl is
begin
	process (clock)
	begin
		if clock'event and clock = '1' then
			if 	Reset = '1' then Dout <= (others => '0'); SDoutR <= '0'; 	SDoutL <= '0';
			elsif Load = '1' 	then Dout <= Din; 				SDoutR <= Din(0); SDoutL <= Din(n-1);
			elsif ShR = '1' 	then 									SDoutR <= Dout(1);
				Dout(n-2 downto 0) <= Dout (n-1 downto 1); Dout(n-1) <= SDinL; 	SDoutL <= SDinL;
			elsif ShL = '1' 	then 									SDoutR <= Dout(n-2);
					Dout(n-1 downto 1) <= Dout (n-2 downto 0); Dout(0) <= SDinR;	SDoutL <= SDinR;
			end if;
		else Dout <= Dout; SDoutR <= SDoutR; SDoutL <= SDoutL;
		end if;
	end process;
end dxp_Behavior;
