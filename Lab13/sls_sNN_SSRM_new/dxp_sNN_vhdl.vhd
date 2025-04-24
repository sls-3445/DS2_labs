------------------------------------------------------------------------------
-- This is the custom implementation of a simple NN. It recognizes 
-- the + - / x signs in a 3x3 pixel image. The weights have been 
-- "syntetically" generated, i.e. not trained. The goal is to illustrate 
-- the kind of data processing that would occur in a real DNN.
-- (C) April 2021 by Dorin Patru
------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE work.dxp_package.all;
------------------------------------------------------------------------------
entity dxp_sNN_vhdl is
	generic (hlnmax : integer := 4; olnmax : integer := 4);
-- Above: Total number of hidden and output layers neurons; Below: I/O-Ps
 	port (Reset, Fast_Clock 	: in 		std_logic;
			signis			: out		std_logic_vector(7 downto 0));
end dxp_sNN_vhdl;
------------------------------------------------------------------------------
architecture mixed of dxp_sNN_vhdl is
------------------------------------------------------------------------------
	signal hlac_clk_en, hlsclr, hlReset, hlLDmulin, hlLDmacin, hlLDz, oldwren, 
		olac_clk_en, olsclr, olReset, olLDmulin, olLDmacin, olLDz, Slow_Clock, mul_start, mul_done: std_logic;
------------------------------------------------------------------------------
	signal hlAddrs : std_logic_vector(7 downto 0);
------------------------------------------------------------------------------
	signal olAddrs : std_logic_vector(3 downto 0);
------------------------------------------------------------------------------
	signal mstate : std_logic_vector(3 downto 0);
------------------------------------------------------------------------------
begin
------------------------------------------------------------------------------
-- Data Path instance
------------------------------------------------------------------------------
slow_clk : slow_clock_generator port map (Reset => '0', Fast_Clock => Fast_Clock, Slow_Clock => Slow_Clock);

data_path : dxp_sNN_DP_vhdl
	generic map (hlnmax => 4, olnmax => 4)
-- Above: Total number of hidden and output layers neurons; Below: I/O-Ps
 	port map (Reset, Slow_Clock, Fast_Clock, mstate, 
			hlac_clk_en, hlsclr, hlReset, hlLDmulin, hlLDmacin, hlLDz, 
			oldwren, olac_clk_en, olsclr, olReset, olLDmulin, olLDmacin, 
			olLDz, mul_start, hlAddrs, olAddrs, signis, mul_done);
------------------------------------------------------------------------------
-- Control Unit instance
------------------------------------------------------------------------------
control_unit : dxp_sNN_CU_vhdl
 	port map (Reset, Slow_Clock, mul_done, hlAddrs, olAddrs,
			hlac_clk_en, hlsclr, hlReset, hlLDmulin, hlLDmacin, hlLDz, 
			oldwren, olac_clk_en, olsclr, olReset, olLDmulin, olLDmacin, 
			olLDz, mul_start, mstate);
------------------------------------------------------------------------------
end mixed;
