LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;
USE work.sls_package.all;

ENTITY sls_mem_fpga_emulation_vhdl IS
	PORT( CLOCK_50, pb : IN STD_LOGIC;
			leds : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END sls_mem_fpga_emulation_vhdl;

ARCHITECTURE emulation OF sls_mem_fpga_emulation_vhdl IS
-- Declare internal signals
	SIGNAL Reset, Cnt_EN, LD_EN_upcnt, LD_EN_H, LD_EN_L, 
	LD_EN_M, WR_EN, intClock : STD_LOGIC;
	signal Q_out : std_logic_vector(7 downto 0);
	signal intclockcnt : std_logic_vector(25 downto 0);
	BEGIN
-- Instantiate the fml_mem_v and fml_mem_cu_v modules.
-- Adjust the mem_cu_v parameter n to the lenght of your 
-- character string.
	leds <= Q_out;
	cut	:	sls_mem_vhdl	PORT MAP(
				Din_upcnt => "11111111", Reset => not pb, 
				Clock => intClock, Cnt_EN => Cnt_EN, 
				LD_EN_upcnt => LD_EN_upcnt, LD_EN_H	=> LD_EN_H,
				LD_EN_L => LD_EN_L, LD_EN_M => LD_EN_M, 
				WR_EN => WR_EN, Q_out => Q_out);
	mem_cu	:	sls_mem_cu_vhdl generic map (34)
		port map (Reset => not pb, Clock => intClock, 
			Cnt_EN => Cnt_EN, LD_EN_upcnt => LD_EN_upcnt, 
			LD_EN_H => LD_EN_H, LD_EN_L => LD_EN_L, 
			LD_EN_M => LD_EN_M, WR_EN => WR_EN);
-- Divide the onboard 50 MHz CLOCK_50 so that the 
-- period of intClock is 1 second; in this way the 
-- displayed ASCII characters will stay on for a second;
-- you can divide more to display each character longer.
process begin 
	wait until (CLOCK_50'EVENT AND CLOCK_50 = '1');
	if (intclockcnt < std_logic_vector(to_unsigned(25000000, 26))) then
		intclockcnt <= intclockcnt + '1'; intClock <= intClock;
	else intclockcnt <= std_logic_vector(to_unsigned(0, 26)); 
		intClock <= not(intClock); end if;
end process;
END emulation;