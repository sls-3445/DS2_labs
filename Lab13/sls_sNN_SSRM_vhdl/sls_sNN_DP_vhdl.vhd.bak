------------------------------------------------------------------------------
-- This is the custom implementation of a simple NN Data Path (DP).
-- (C) April 2021 by Dorin Patru
------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.sls_package.all;
------------------------------------------------------------------------------
entity sls_sNN_DP_vhdl is
	generic (hlnmax : integer := 4; olnmax : integer := 4);
-- Above: Total number of hidden and output layers neurons; Below: I/O-Ps
 	port (Reset, Clock 	: in 		std_logic;
			mstate : in std_logic_vector(3 downto 0);
			hlac_clk_en, hlsclr, hlReset, hlLDmulin, hlLDmacin, hlLDz, 
			oldwren, olac_clk_en, olsclr, olReset, olLDmulin, olLDmacin, 
			olLDz : in std_logic;
			hlAddrs : buffer std_logic_vector(7 downto 0);
			olAddrs : buffer std_logic_vector(3 downto 0);
			signis	: out	std_logic_vector(7 downto 0));
end sls_sNN_DP_vhdl;
------------------------------------------------------------------------------
architecture structural of sls_sNN_DP_vhdl is
------------------------------------------------------------------------------ 
	signal pixData : std_logic_vector(7 downto 0);
------------------------------------------------------------------------------
-- Signal (Memory) Array of 4x8-bits (locations)
	type	hlw_array is array (1 to 4)
			of std_logic_vector(7 downto 0);
	signal hlw, hlnout : hlw_array;
------------------------------------------------------------------------------
	signal oldin, olinA : std_logic_vector(7 downto 0);
------------------------------------------------------------------------------
-- Signal (Memory) Array of 4x8 bits (locations)
	type	olw_array is array (1 to 4)
			of std_logic_vector(7 downto 0);
	signal olw, olnout : olw_array;					
------------------------------------------------------------------------------
------------------------------------------------------------------------------
begin
------------------------------------------------------------------------------
-- Structural data path (DP)
------------------------------------------------------------------------------
-- Hidden layer address counter - used to read out image pixel values (784)
------------------------------------------------------------------------------
	hlAddrsCnt : hlAddrsCnt_vhdl port map (hlac_clk_en, Clock, hlsclr, hlAddrs);
------------------------------------------------------------------------------
-- Image data rom - 10 test images: +, -, /, x, -, x, +, /, \, |
------------------------------------------------------------------------------
	testimages : pixData_rom_vhdl port map (hlAddrs, Clock, pixData);
------------------------------------------------------------------------------
-- Hidden layer weight ROMs = 4 x 9 values and neurons = 4
------------------------------------------------------------------------------
	hlg1: for i in 1 to 4 generate 
		hlwrom : hlw_rom_vhdl 
			generic map (hlw_init_file => ("./w9_" & integer'image(i) & ".mif"))
			port map(hlAddrs(3 downto 0), Clock, hlw(i));
		hln : sls_simpleneuron_vhdl
			port map (hlReset, Clock, hlLDmulin, hlLDmacin, hlLDz, 
							pixData, hlw(i), "00000000", hlnout(i));
	end generate hlg1;
------------------------------------------------------------------------------
-- Hidden layer output values MUX - used to write these values into a RAM
------------------------------------------------------------------------------
	olmuxin : sls_nbit_mux4to1_vhdl port map 
		(hlnout(4), hlnout(3), hlnout(2), hlnout(1), olAddrs(1 downto 0), oldin);
------------------------------------------------------------------------------
-- Output layer RAM address counter
------------------------------------------------------------------------------
	olAddrsCnt : olAddrsCnt_vhdl port map (olac_clk_en, Clock, olsclr, olAddrs(3 downto 0));
------------------------------------------------------------------------------
-- Output layer input data RAM - used to store the results coming out of the
-- hidden layer; it is written by the hidden layer and read by the output layer
------------------------------------------------------------------------------
	oldatain : oldatain_ram_vhdl port map (olAddrs(1 downto 0), Clock, oldin, oldwren, olinA);
------------------------------------------------------------------------------
-- Output layer weight ROMs = 10x30 values and neurons = 10
------------------------------------------------------------------------------
	olg1: for i in 1 to 4 generate 
		olwrom : olw_rom_vhdl 
			generic map (olw_init_file => ("./w4_" & integer'image(i) & ".mif"))
			port map(olAddrs(1 downto 0), Clock, olw(i));
		oln : sls_simpleneuron_vhdl
			port map (olReset, Clock, olLDmulin, olLDmacin, olLDz, 
							olinA, olw(i), "00000000", olnout(i));
	end generate olg1;
------------------------------------------------------------------------------
-- Module that recognizes the sign and converts it to ASCII code.
-- Could have this function here as a small always block, but then the
-- auto-generated block diagram is not that nice.
------------------------------------------------------------------------------
	recognize : sls_signis_vhdl port map (mstate, Reset, Clock, 
			olnout(4), olnout(3), olnout(2), olnout(1), signis);
end structural;
