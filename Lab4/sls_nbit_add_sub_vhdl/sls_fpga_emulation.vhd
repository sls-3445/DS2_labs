library ieee;
use ieee.std_logic_1164.all;

entity sls_fpga_emulation is
port (pb : in std_logic_vector (1 downto 0);
		sw : in std_logic_vector (3 downto 0);
		leds : out std_logic_vector (7 downto 0));
end sls_fpga_emulation;

architecture sls_struc of sls_fpga_emulation is

component sls_nbit_add_sub_vhdl is
generic (n : integer := 32);
	port ( cin : in std_logic;
			x, y : in std_logic_vector(n-1 downto 0);
			sum : out std_logic_vector(n-1 downto 0);
			cout : out std_logic);
end component;


signal x_int, y_int : std_logic_vector(7 downto 0);
signal cout_int : std_logic;

begin
	x_int <= (sw(3 downto 2) & sw(3 downto 2) &
					sw(3 downto 2) & sw(3 downto 2));
	y_int <= (sw(1 downto 0) & sw(1 downto 0) &
					sw(1 downto 0) & sw(1 downto 0));
					
	cut : sls_nbit_add_sub_vhdl generic map (8)
	port map (cin => pb(0), x => x_int, y => y_int,
	sum => leds, cout => cout_int);
end sls_struc;