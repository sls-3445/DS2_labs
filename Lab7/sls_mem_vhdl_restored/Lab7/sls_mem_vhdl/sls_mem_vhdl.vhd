library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use work.sls_package.all;

entity sls_mem_vhdl is
	port (Clock, Cnt_EN, LD_EN_upcnt, Reset : in  std_logic;
			LD_EN_L, LD_EN_H, LD_EN_M, WR_EN  : in  std_logic;
			Din_upcnt								 : in  std_logic_vector (7 downto 0);
			Q_out 									 : out std_logic_vector (7 downto 0));
end sls_mem_vhdl;

architecture struc of sls_mem_vhdl is
	signal q1 			 : std_logic_vector (7 downto 0);
	signal q2, q3, q4  : std_logic_vector (3 downto 0);
	begin
		mycnt  	: sls_8bit_upcnt_vhdl port map (Clock => Clock, Cnt_EN => Cnt_EN, D => Din_upcnt,
										LD_EN => LD_EN_upcnt, Reset => Reset, Q => q1);
		myrom 	: sls_rom_vhdl port map (address => q1, Clock => Clock, q => q2);
		my_m	   : sls_4bit_reg_vhdl port map (Clock => Clock, D => q2, LD_EN => LD_EN_M, 
										Reset => Reset, Q => q3);
		my_ram   : sls_ram_vhdl port map (address => q1, Clock => Clock, data => q3,
										wren => WR_EN, q => q4);
		my_l		: sls_4bit_reg_vhdl port map (Clock => Clock, D => q4, LD_EN => LD_EN_L, 
										Reset => Reset, Q => Q_out(3 downto 0));
		my_h 		: sls_4bit_reg_vhdl port map (Clock => Clock, D => q4, LD_EN => LD_EN_H, 
										Reset => Reset, Q => Q_out(7 downto 4));
end struc;