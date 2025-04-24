library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity slow_clock_generator is
	port (Reset, Fast_Clock : in  std_logic;
			Slow_Clock 			: out std_logic);
end slow_clock_generator;

architecture beh of slow_clock_generator is
signal cnt : std_logic_vector(2 downto 0) := "011";
signal clk_out : std_logic := '0';
begin
	process begin wait until Fast_Clock'event and Fast_Clock = '1';
		if (Reset = '1') then
			cnt <= "011";
			clk_out <= '0';
		elsif (cnt = "000") then
			clk_out <= not clk_out;
			Slow_Clock <= not clk_out;
			cnt <= "011";
		else
			cnt <= cnt - 1;
		end if;
	end process;
end beh;