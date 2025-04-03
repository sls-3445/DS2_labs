-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/03/2025 19:39:33"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	slsRISC_vhdl IS
    PORT (
	Reset : IN std_logic;
	Clock : IN std_logic;
	PB1 : IN std_logic;
	SW : IN std_logic_vector(3 DOWNTO 0);
	LEDs : BUFFER std_logic_vector(7 DOWNTO 0);
	ICis : BUFFER std_logic_vector(95 DOWNTO 0);
	crtMCis : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END slsRISC_vhdl;

-- Design Ports Information
-- PB1	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[1]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[7]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[8]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[9]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[10]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[11]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[12]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[13]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[14]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[15]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[16]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[17]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[18]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[19]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[20]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[21]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[22]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[23]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[24]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[25]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[26]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[27]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[28]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[29]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[30]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[31]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[32]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[33]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[34]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[35]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[36]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[37]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[38]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[39]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[40]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[41]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[42]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[43]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[44]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[45]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[46]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[47]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[48]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[49]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[50]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[51]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[52]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[53]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[54]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[55]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[56]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[57]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[58]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[59]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[60]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[61]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[62]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[63]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[64]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[65]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[66]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[67]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[68]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[69]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[70]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[71]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[72]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[73]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[74]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[75]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[76]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[77]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[78]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[79]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[80]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[81]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[82]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[83]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[84]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[85]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[86]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[87]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[88]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[89]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[90]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[91]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[92]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[93]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[94]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ICis[95]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crtMCis[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crtMCis[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- crtMCis[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF slsRISC_vhdl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_PB1 : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDs : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ICis : std_logic_vector(95 DOWNTO 0);
SIGNAL ww_crtMCis : std_logic_vector(2 DOWNTO 0);
SIGNAL \DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PB1~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \LEDs[0]~output_o\ : std_logic;
SIGNAL \LEDs[1]~output_o\ : std_logic;
SIGNAL \LEDs[2]~output_o\ : std_logic;
SIGNAL \LEDs[3]~output_o\ : std_logic;
SIGNAL \LEDs[4]~output_o\ : std_logic;
SIGNAL \LEDs[5]~output_o\ : std_logic;
SIGNAL \LEDs[6]~output_o\ : std_logic;
SIGNAL \LEDs[7]~output_o\ : std_logic;
SIGNAL \ICis[0]~output_o\ : std_logic;
SIGNAL \ICis[1]~output_o\ : std_logic;
SIGNAL \ICis[2]~output_o\ : std_logic;
SIGNAL \ICis[3]~output_o\ : std_logic;
SIGNAL \ICis[4]~output_o\ : std_logic;
SIGNAL \ICis[5]~output_o\ : std_logic;
SIGNAL \ICis[6]~output_o\ : std_logic;
SIGNAL \ICis[7]~output_o\ : std_logic;
SIGNAL \ICis[8]~output_o\ : std_logic;
SIGNAL \ICis[9]~output_o\ : std_logic;
SIGNAL \ICis[10]~output_o\ : std_logic;
SIGNAL \ICis[11]~output_o\ : std_logic;
SIGNAL \ICis[12]~output_o\ : std_logic;
SIGNAL \ICis[13]~output_o\ : std_logic;
SIGNAL \ICis[14]~output_o\ : std_logic;
SIGNAL \ICis[15]~output_o\ : std_logic;
SIGNAL \ICis[16]~output_o\ : std_logic;
SIGNAL \ICis[17]~output_o\ : std_logic;
SIGNAL \ICis[18]~output_o\ : std_logic;
SIGNAL \ICis[19]~output_o\ : std_logic;
SIGNAL \ICis[20]~output_o\ : std_logic;
SIGNAL \ICis[21]~output_o\ : std_logic;
SIGNAL \ICis[22]~output_o\ : std_logic;
SIGNAL \ICis[23]~output_o\ : std_logic;
SIGNAL \ICis[24]~output_o\ : std_logic;
SIGNAL \ICis[25]~output_o\ : std_logic;
SIGNAL \ICis[26]~output_o\ : std_logic;
SIGNAL \ICis[27]~output_o\ : std_logic;
SIGNAL \ICis[28]~output_o\ : std_logic;
SIGNAL \ICis[29]~output_o\ : std_logic;
SIGNAL \ICis[30]~output_o\ : std_logic;
SIGNAL \ICis[31]~output_o\ : std_logic;
SIGNAL \ICis[32]~output_o\ : std_logic;
SIGNAL \ICis[33]~output_o\ : std_logic;
SIGNAL \ICis[34]~output_o\ : std_logic;
SIGNAL \ICis[35]~output_o\ : std_logic;
SIGNAL \ICis[36]~output_o\ : std_logic;
SIGNAL \ICis[37]~output_o\ : std_logic;
SIGNAL \ICis[38]~output_o\ : std_logic;
SIGNAL \ICis[39]~output_o\ : std_logic;
SIGNAL \ICis[40]~output_o\ : std_logic;
SIGNAL \ICis[41]~output_o\ : std_logic;
SIGNAL \ICis[42]~output_o\ : std_logic;
SIGNAL \ICis[43]~output_o\ : std_logic;
SIGNAL \ICis[44]~output_o\ : std_logic;
SIGNAL \ICis[45]~output_o\ : std_logic;
SIGNAL \ICis[46]~output_o\ : std_logic;
SIGNAL \ICis[47]~output_o\ : std_logic;
SIGNAL \ICis[48]~output_o\ : std_logic;
SIGNAL \ICis[49]~output_o\ : std_logic;
SIGNAL \ICis[50]~output_o\ : std_logic;
SIGNAL \ICis[51]~output_o\ : std_logic;
SIGNAL \ICis[52]~output_o\ : std_logic;
SIGNAL \ICis[53]~output_o\ : std_logic;
SIGNAL \ICis[54]~output_o\ : std_logic;
SIGNAL \ICis[55]~output_o\ : std_logic;
SIGNAL \ICis[56]~output_o\ : std_logic;
SIGNAL \ICis[57]~output_o\ : std_logic;
SIGNAL \ICis[58]~output_o\ : std_logic;
SIGNAL \ICis[59]~output_o\ : std_logic;
SIGNAL \ICis[60]~output_o\ : std_logic;
SIGNAL \ICis[61]~output_o\ : std_logic;
SIGNAL \ICis[62]~output_o\ : std_logic;
SIGNAL \ICis[63]~output_o\ : std_logic;
SIGNAL \ICis[64]~output_o\ : std_logic;
SIGNAL \ICis[65]~output_o\ : std_logic;
SIGNAL \ICis[66]~output_o\ : std_logic;
SIGNAL \ICis[67]~output_o\ : std_logic;
SIGNAL \ICis[68]~output_o\ : std_logic;
SIGNAL \ICis[69]~output_o\ : std_logic;
SIGNAL \ICis[70]~output_o\ : std_logic;
SIGNAL \ICis[71]~output_o\ : std_logic;
SIGNAL \ICis[72]~output_o\ : std_logic;
SIGNAL \ICis[73]~output_o\ : std_logic;
SIGNAL \ICis[74]~output_o\ : std_logic;
SIGNAL \ICis[75]~output_o\ : std_logic;
SIGNAL \ICis[76]~output_o\ : std_logic;
SIGNAL \ICis[77]~output_o\ : std_logic;
SIGNAL \ICis[78]~output_o\ : std_logic;
SIGNAL \ICis[79]~output_o\ : std_logic;
SIGNAL \ICis[80]~output_o\ : std_logic;
SIGNAL \ICis[81]~output_o\ : std_logic;
SIGNAL \ICis[82]~output_o\ : std_logic;
SIGNAL \ICis[83]~output_o\ : std_logic;
SIGNAL \ICis[84]~output_o\ : std_logic;
SIGNAL \ICis[85]~output_o\ : std_logic;
SIGNAL \ICis[86]~output_o\ : std_logic;
SIGNAL \ICis[87]~output_o\ : std_logic;
SIGNAL \ICis[88]~output_o\ : std_logic;
SIGNAL \ICis[89]~output_o\ : std_logic;
SIGNAL \ICis[90]~output_o\ : std_logic;
SIGNAL \ICis[91]~output_o\ : std_logic;
SIGNAL \ICis[92]~output_o\ : std_logic;
SIGNAL \ICis[93]~output_o\ : std_logic;
SIGNAL \ICis[94]~output_o\ : std_logic;
SIGNAL \ICis[95]~output_o\ : std_logic;
SIGNAL \crtMCis[0]~output_o\ : std_logic;
SIGNAL \crtMCis[1]~output_o\ : std_logic;
SIGNAL \crtMCis[2]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \DP|PC|Count[0]~11\ : std_logic;
SIGNAL \DP|PC|Count[1]~12_combout\ : std_logic;
SIGNAL \DP|PC|Count[1]~13\ : std_logic;
SIGNAL \DP|PC|Count[2]~14_combout\ : std_logic;
SIGNAL \DP|PC|Count[2]~15\ : std_logic;
SIGNAL \DP|PC|Count[3]~16_combout\ : std_logic;
SIGNAL \DP|PC|Count[3]~17\ : std_logic;
SIGNAL \DP|PC|Count[4]~18_combout\ : std_logic;
SIGNAL \DP|PC|Count[4]~19\ : std_logic;
SIGNAL \DP|PC|Count[5]~20_combout\ : std_logic;
SIGNAL \DP|PC|Count[5]~21\ : std_logic;
SIGNAL \DP|PC|Count[6]~22_combout\ : std_logic;
SIGNAL \DP|PC|Count[6]~23\ : std_logic;
SIGNAL \DP|PC|Count[7]~24_combout\ : std_logic;
SIGNAL \DP|PC|Count[7]~25\ : std_logic;
SIGNAL \DP|PC|Count[8]~26_combout\ : std_logic;
SIGNAL \DP|PC|Count[8]~27\ : std_logic;
SIGNAL \DP|PC|Count[9]~28_combout\ : std_logic;
SIGNAL \CU|WB_SEL[0]~5_combout\ : std_logic;
SIGNAL \CU|MC~11_combout\ : std_logic;
SIGNAL \CU|Equal0~1_combout\ : std_logic;
SIGNAL \CU|push~6_combout\ : std_logic;
SIGNAL \CU|push~3_combout\ : std_logic;
SIGNAL \CU|push~17_combout\ : std_logic;
SIGNAL \CU|push~16_combout\ : std_logic;
SIGNAL \CU|push~q\ : std_logic;
SIGNAL \DP|stack|tos3~3_combout\ : std_logic;
SIGNAL \CU|pop~6_combout\ : std_logic;
SIGNAL \CU|pop~3_combout\ : std_logic;
SIGNAL \CU|pop~17_combout\ : std_logic;
SIGNAL \CU|pop~16_combout\ : std_logic;
SIGNAL \CU|pop~q\ : std_logic;
SIGNAL \DP|stack|tos2[1]~0_combout\ : std_logic;
SIGNAL \DP|stack|tos2~4_combout\ : std_logic;
SIGNAL \DP|stack|tos1~3_combout\ : std_logic;
SIGNAL \DP|stack|tos~3_combout\ : std_logic;
SIGNAL \CU|ALU_FS~4_combout\ : std_logic;
SIGNAL \CU|ALU_FS[1]~1_combout\ : std_logic;
SIGNAL \CU|ALU_FS~2_combout\ : std_logic;
SIGNAL \CU|LD_R0~0_combout\ : std_logic;
SIGNAL \CU|LD_R0~1_combout\ : std_logic;
SIGNAL \CU|LD_R0~q\ : std_logic;
SIGNAL \DP|r0|q[0]~3_combout\ : std_logic;
SIGNAL \CU|ALU_FS~0_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[4]~23_combout\ : std_logic;
SIGNAL \CU|ALU_FS~3_combout\ : std_logic;
SIGNAL \DP|r0|q~1_combout\ : std_logic;
SIGNAL \DP|ALU|logic_unit|logic_mux|combined|f[5]~0_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|adder|c~0_combout\ : std_logic;
SIGNAL \CU|LD_R2~0_combout\ : std_logic;
SIGNAL \CU|LD_R2~1_combout\ : std_logic;
SIGNAL \CU|LD_R2~q\ : std_logic;
SIGNAL \DP|r2|q[6]~0_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|combined|f~5_combout\ : std_logic;
SIGNAL \CU|LD_R1~0_combout\ : std_logic;
SIGNAL \CU|LD_R1~q\ : std_logic;
SIGNAL \DP|r1|q[7]~0_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|combined|f~4_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|adder|c~8_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|adder|c~6_combout\ : std_logic;
SIGNAL \CU|LD_R3~0_combout\ : std_logic;
SIGNAL \CU|LD_R3~q\ : std_logic;
SIGNAL \DP|r3|q[3]~0_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|combined|f~7_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|combined|f~6_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|combined|f~8_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|combined|f~9_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|adder|c~4_combout\ : std_logic;
SIGNAL \ICdecode|Equal0~0_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[6]~9_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[6]~6_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[6]~7_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[6]~8_combout\ : std_logic;
SIGNAL \DP|ALU|logic_unit|logic_mux|combined|f[7]~1_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[7]~11_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[7]~6_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[7]~10_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[7]~11_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[7]~8_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[7]~9_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|adder|c~11_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|combined|f~12_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|combined|f~13_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|adder|c[6]~10_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[7]~12_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[7]~12_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[7]~13_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[7]~7_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[7]~13_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[7]~14_combout\ : std_logic;
SIGNAL \DP|r0|q~4_combout\ : std_logic;
SIGNAL \DP|stack|tos3~2_combout\ : std_logic;
SIGNAL \DP|stack|tos2~3_combout\ : std_logic;
SIGNAL \DP|stack|tos1~2_combout\ : std_logic;
SIGNAL \DP|stack|tos~2_combout\ : std_logic;
SIGNAL \DP|stack|dout~6_combout\ : std_logic;
SIGNAL \DP|r0|q~7_combout\ : std_logic;
SIGNAL \DP|r0|q~8_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|combined|f[7]~0_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|combined|f[7]~1_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[5]~2_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[6]~10_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[6]~2_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[6]~3_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[6]~4_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[6]~5_combout\ : std_logic;
SIGNAL \DP|stack|dout[6]~feeder_combout\ : std_logic;
SIGNAL \DP|stack|tos3~1_combout\ : std_logic;
SIGNAL \DP|stack|tos2~2_combout\ : std_logic;
SIGNAL \DP|stack|tos1~1_combout\ : std_logic;
SIGNAL \DP|stack|tos~1_combout\ : std_logic;
SIGNAL \DP|r0|q~5_combout\ : std_logic;
SIGNAL \DP|r0|q~6_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|upper_bits|f[6]~1_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|lower_bits|f[6]~1_combout\ : std_logic;
SIGNAL \DP|stack|dout[6]~1_combout\ : std_logic;
SIGNAL \DP|IR|q~6_combout\ : std_logic;
SIGNAL \CU|LD_IR~0_combout\ : std_logic;
SIGNAL \CU|LD_IR~q\ : std_logic;
SIGNAL \DP|IR|q[4]~1_combout\ : std_logic;
SIGNAL \DP|stack|tos3~5_combout\ : std_logic;
SIGNAL \DP|stack|tos2~6_combout\ : std_logic;
SIGNAL \DP|stack|tos1~5_combout\ : std_logic;
SIGNAL \DP|stack|tos~5_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[1]~30_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[4]~16_combout\ : std_logic;
SIGNAL \DP|ALU|logic_unit|logic_mux|combined|f[0]~2_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|adder|sum[0]~3_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[0]~24_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[0]~17_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[0]~16_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|Mux14~4_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[0]~14_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[0]~15_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[0]~18_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[0]~25_combout\ : std_logic;
SIGNAL \DP|stack|tos3~4_combout\ : std_logic;
SIGNAL \DP|stack|tos2~5_combout\ : std_logic;
SIGNAL \DP|stack|tos1~4_combout\ : std_logic;
SIGNAL \DP|stack|tos~4_combout\ : std_logic;
SIGNAL \DP|stack|dout~7_combout\ : std_logic;
SIGNAL \DP|r0|q~13_combout\ : std_logic;
SIGNAL \DP|r0|q~14_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|yselect_mux|f[0]~0_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|adder|c[1]~1_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|adder|sum[1]~2_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|Mux14~5_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[4]~18_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|Mux14~6_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[4]~17_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|Mux14~7_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[1]~26_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[1]~27_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[1]~28_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[1]~29_combout\ : std_logic;
SIGNAL \DP|r0|q~15_combout\ : std_logic;
SIGNAL \DP|r0|q~16_combout\ : std_logic;
SIGNAL \DP|r0|q~17_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|adder|c~2_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|combined|f~10_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|combined|f~11_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|adder|c[2]~3_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|adder|c[3]~5_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|adder|c[4]~7_combout\ : std_logic;
SIGNAL \DP|ALU|arith_unit|adder|c[5]~9_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[5]~3_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[5]~4_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|Mux14~0_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[5]~0_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[5]~1_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|sr_mux|combined|f[5]~5_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[5]~0_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[5]~1_combout\ : std_logic;
SIGNAL \DP|stack|dout[5]~feeder_combout\ : std_logic;
SIGNAL \DP|stack|tos3~0_combout\ : std_logic;
SIGNAL \DP|stack|tos2~1_combout\ : std_logic;
SIGNAL \DP|stack|tos1~0_combout\ : std_logic;
SIGNAL \DP|stack|tos~0_combout\ : std_logic;
SIGNAL \DP|r0|q~0_combout\ : std_logic;
SIGNAL \DP|r0|q~2_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|upper_bits|f[5]~0_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|lower_bits|f[5]~0_combout\ : std_logic;
SIGNAL \DP|stack|dout[5]~0_combout\ : std_logic;
SIGNAL \DP|IR|q~5_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[4]~15_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|Mux14~1_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|Mux14~3_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[4]~19_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|Mux14~2_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[4]~20_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[4]~21_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[4]~22_combout\ : std_logic;
SIGNAL \DP|r0|q~9_combout\ : std_logic;
SIGNAL \DP|r0|q~10_combout\ : std_logic;
SIGNAL \DP|r0|q~12_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|upper_bits|f[4]~2_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|lower_bits|f[4]~2_combout\ : std_logic;
SIGNAL \DP|stack|dout[4]~2_combout\ : std_logic;
SIGNAL \DP|IR|q~4_combout\ : std_logic;
SIGNAL \CU|opCode[0]~feeder_combout\ : std_logic;
SIGNAL \CU|process_0~0_combout\ : std_logic;
SIGNAL \CU|WB_SEL~2_combout\ : std_logic;
SIGNAL \DP|stack|tos3~6_combout\ : std_logic;
SIGNAL \DP|stack|tos2~7_combout\ : std_logic;
SIGNAL \DP|stack|tos1~6_combout\ : std_logic;
SIGNAL \DP|stack|tos~6_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[3]~35_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|Mux14~8_combout\ : std_logic;
SIGNAL \DP|ALU|sr_unit|Mux14~9_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[3]~31_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[3]~32_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[3]~33_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[3]~34_combout\ : std_logic;
SIGNAL \DP|r0|q~18_combout\ : std_logic;
SIGNAL \DP|r0|q~19_combout\ : std_logic;
SIGNAL \DP|r0|q~20_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|upper_bits|f[3]~4_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|lower_bits|f[3]~4_combout\ : std_logic;
SIGNAL \DP|stack|dout[3]~5_combout\ : std_logic;
SIGNAL \DP|IR|q~0_combout\ : std_logic;
SIGNAL \CU|WB_SEL[1]~4_combout\ : std_logic;
SIGNAL \CU|WB_SEL[1]~3_combout\ : std_logic;
SIGNAL \DP|r0|q~11_combout\ : std_logic;
SIGNAL \DP|stack|dout[2]~feeder_combout\ : std_logic;
SIGNAL \DP|stack|tos3~7_combout\ : std_logic;
SIGNAL \DP|stack|tos2~8_combout\ : std_logic;
SIGNAL \DP|stack|tos1~7_combout\ : std_logic;
SIGNAL \DP|stack|tos~7_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[2]~40_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[2]~36_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[2]~37_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[2]~38_combout\ : std_logic;
SIGNAL \DP|ALU|result_mux|combined|f[2]~39_combout\ : std_logic;
SIGNAL \DP|r0|q~21_combout\ : std_logic;
SIGNAL \DP|r0|q~22_combout\ : std_logic;
SIGNAL \DP|r0|q~23_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|upper_bits|f[2]~5_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|lower_bits|f[2]~5_combout\ : std_logic;
SIGNAL \DP|stack|dout[2]~4_combout\ : std_logic;
SIGNAL \DP|IR|q~7_combout\ : std_logic;
SIGNAL \CU|RF_SD_OS~16_combout\ : std_logic;
SIGNAL \CU|RF_SD_OS[1]~8_combout\ : std_logic;
SIGNAL \CU|RF_SD_OS[1]~5_combout\ : std_logic;
SIGNAL \CU|RF_SD_OS[1]~17_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|upper_bits|f[1]~3_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|lower_bits|f[1]~3_combout\ : std_logic;
SIGNAL \DP|stack|dout[1]~3_combout\ : std_logic;
SIGNAL \DP|IR|q~2_combout\ : std_logic;
SIGNAL \CU|opCode[2]~feeder_combout\ : std_logic;
SIGNAL \CU|Equal3~0_combout\ : std_logic;
SIGNAL \CU|process_0~1_combout\ : std_logic;
SIGNAL \CU|MC~5_combout\ : std_logic;
SIGNAL \CU|MC[1]~9_combout\ : std_logic;
SIGNAL \CU|MC[1]~10_combout\ : std_logic;
SIGNAL \CU|Equal0~0_combout\ : std_logic;
SIGNAL \CU|Equal3~2_combout\ : std_logic;
SIGNAL \CU|Equal3~1_combout\ : std_logic;
SIGNAL \CU|MC~12_combout\ : std_logic;
SIGNAL \CU|crtMCis~0_combout\ : std_logic;
SIGNAL \CU|MC[1]~7_combout\ : std_logic;
SIGNAL \CU|MC[0]~6_combout\ : std_logic;
SIGNAL \CU|MC[0]~8_combout\ : std_logic;
SIGNAL \CU|CNT_PC~0_combout\ : std_logic;
SIGNAL \CU|CNT_PC~1_combout\ : std_logic;
SIGNAL \CU|CNT_PC~2_combout\ : std_logic;
SIGNAL \CU|CNT_PC~q\ : std_logic;
SIGNAL \DP|PC|Count[0]~10_combout\ : std_logic;
SIGNAL \DP|IR|q~8_combout\ : std_logic;
SIGNAL \CU|Rsd[0]~feeder_combout\ : std_logic;
SIGNAL \CU|RF_SD_OS~15_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|combined|f[0]~2_combout\ : std_logic;
SIGNAL \DP|rfout_sd_mux|combined|f[0]~3_combout\ : std_logic;
SIGNAL \DP|IR|q~3_combout\ : std_logic;
SIGNAL \ICdecode|ICis~2_combout\ : std_logic;
SIGNAL \ICdecode|ICis[0]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|ICis[1]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|ICis[3]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|ICis[4]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|ICis[9]~4_combout\ : std_logic;
SIGNAL \ICdecode|ICis~3_combout\ : std_logic;
SIGNAL \ICdecode|ICis~5_combout\ : std_logic;
SIGNAL \ICdecode|ICis~6_combout\ : std_logic;
SIGNAL \ICdecode|Mux48~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux47~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis~7_combout\ : std_logic;
SIGNAL \ICdecode|ICis[14]~28_combout\ : std_logic;
SIGNAL \ICdecode|Mux45~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux44~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux43~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis~8_combout\ : std_logic;
SIGNAL \ICdecode|ICis[18]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|Mux42~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux41~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis~9_combout\ : std_logic;
SIGNAL \ICdecode|ICis[22]~29_combout\ : std_logic;
SIGNAL \ICdecode|ICis~10_combout\ : std_logic;
SIGNAL \ICdecode|Mux21~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis~11_combout\ : std_logic;
SIGNAL \ICdecode|ICis~12_combout\ : std_logic;
SIGNAL \ICdecode|ICis~13_combout\ : std_logic;
SIGNAL \ICdecode|Mux37~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux37~1_combout\ : std_logic;
SIGNAL \ICdecode|Mux37~2_combout\ : std_logic;
SIGNAL \ICdecode|Mux36~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux36~1_combout\ : std_logic;
SIGNAL \ICdecode|ICis~14_combout\ : std_logic;
SIGNAL \ICdecode|sbit~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux34~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis[29]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|ICis~15_combout\ : std_logic;
SIGNAL \ICdecode|Mux32~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis~16_combout\ : std_logic;
SIGNAL \ICdecode|ICis[34]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|ICis~17_combout\ : std_logic;
SIGNAL \ICdecode|ICis~18_combout\ : std_logic;
SIGNAL \ICdecode|ICis[42]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|Mux29~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis~19_combout\ : std_logic;
SIGNAL \ICdecode|ICis[44]~33_combout\ : std_logic;
SIGNAL \ICdecode|ICis[46]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|ICis~20_combout\ : std_logic;
SIGNAL \ICdecode|ICis~27_combout\ : std_logic;
SIGNAL \ICdecode|ICis~21_combout\ : std_logic;
SIGNAL \ICdecode|ICis~22_combout\ : std_logic;
SIGNAL \ICdecode|ICis[51]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|ICis~23_combout\ : std_logic;
SIGNAL \ICdecode|ICis~24_combout\ : std_logic;
SIGNAL \ICdecode|ICis~25_combout\ : std_logic;
SIGNAL \ICdecode|ICis[57]~34_combout\ : std_logic;
SIGNAL \ICdecode|ICis[60]~35_combout\ : std_logic;
SIGNAL \ICdecode|ICis[61]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|ICis[62]~36_combout\ : std_logic;
SIGNAL \ICdecode|Mux22~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux21~1_combout\ : std_logic;
SIGNAL \ICdecode|ICis[68]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|Mux19~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis~26_combout\ : std_logic;
SIGNAL \ICdecode|ICis[70]~37_combout\ : std_logic;
SIGNAL \ICdecode|Mux17~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux16~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux15~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis[74]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|Mux14~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux13~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis[76]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|Mux12~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux11~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis[78]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|Mux10~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis[80]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|Mux9~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis[81]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|Mux8~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux7~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux6~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis[84]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|Mux5~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux4~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux3~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis[89]~feeder_combout\ : std_logic;
SIGNAL \ICdecode|Mux2~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux1~0_combout\ : std_logic;
SIGNAL \ICdecode|Mux0~0_combout\ : std_logic;
SIGNAL \ICdecode|ICis[92]~feeder_combout\ : std_logic;
SIGNAL \CU|crtMCis~1_combout\ : std_logic;
SIGNAL \CU|crtMCis~2_combout\ : std_logic;
SIGNAL \CU|crtMCis~3_combout\ : std_logic;
SIGNAL \DP|stack|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CU|crtMCis\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ICdecode|ICis\ : std_logic_vector(95 DOWNTO 0);
SIGNAL \CU|MC\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DP|MM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|PC|Count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DP|stack|tos\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|stack|tos1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|stack|tos2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|r1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|IR|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CU|opCode\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DP|r2|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|r0|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CU|RF_SD_OS\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DP|r3|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CU|WB_SEL\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CU|ALU_FS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DP|ALU|arith_unit|adder|sum\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CU|Rsd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DP|stack|tos3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL \CU|ALT_INV_push~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Reset <= Reset;
ww_Clock <= Clock;
ww_PB1 <= PB1;
ww_SW <= SW;
LEDs <= ww_LEDs;
ICis <= ww_ICis;
crtMCis <= ww_crtMCis;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & \DP|rfout_sd_mux|combined|f[7]~1_combout\ & \DP|stack|dout[6]~1_combout\ & \DP|stack|dout[5]~0_combout\ & \DP|stack|dout[4]~2_combout\ & \DP|stack|dout[3]~5_combout\ & 
\DP|stack|dout[2]~4_combout\ & \DP|stack|dout[1]~3_combout\ & \DP|rfout_sd_mux|combined|f[0]~3_combout\);

\DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\DP|PC|Count\(9) & \DP|PC|Count\(8) & \DP|PC|Count\(7) & \DP|PC|Count\(6) & \DP|PC|Count\(5) & \DP|PC|Count\(4) & \DP|PC|Count\(3) & \DP|PC|Count\(2) & 
\DP|PC|Count\(1) & \DP|PC|Count\(0));

\DP|MM|altsyncram_component|auto_generated|q_a\(0) <= \DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\DP|MM|altsyncram_component|auto_generated|q_a\(1) <= \DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\DP|MM|altsyncram_component|auto_generated|q_a\(2) <= \DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\DP|MM|altsyncram_component|auto_generated|q_a\(3) <= \DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\DP|MM|altsyncram_component|auto_generated|q_a\(4) <= \DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\DP|MM|altsyncram_component|auto_generated|q_a\(5) <= \DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\DP|MM|altsyncram_component|auto_generated|q_a\(6) <= \DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\DP|MM|altsyncram_component|auto_generated|q_a\(7) <= \DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\ALT_INV_Clock~inputclkctrl_outclk\ <= NOT \Clock~inputclkctrl_outclk\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
\CU|ALT_INV_push~q\ <= NOT \CU|push~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y34_N2
\LEDs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDs[0]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\LEDs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDs[1]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\LEDs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDs[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\LEDs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDs[3]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\LEDs[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDs[4]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\LEDs[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDs[5]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\LEDs[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDs[6]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\LEDs[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDs[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\ICis[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(0),
	devoe => ww_devoe,
	o => \ICis[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\ICis[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(1),
	devoe => ww_devoe,
	o => \ICis[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\ICis[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\ICis[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(3),
	devoe => ww_devoe,
	o => \ICis[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\ICis[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(4),
	devoe => ww_devoe,
	o => \ICis[4]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\ICis[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ICis[5]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\ICis[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[6]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\ICis[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\ICis[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(8),
	devoe => ww_devoe,
	o => \ICis[8]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\ICis[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(9),
	devoe => ww_devoe,
	o => \ICis[9]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\ICis[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[10]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\ICis[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[11]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\ICis[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(12),
	devoe => ww_devoe,
	o => \ICis[12]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\ICis[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(13),
	devoe => ww_devoe,
	o => \ICis[13]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\ICis[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(14),
	devoe => ww_devoe,
	o => \ICis[14]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\ICis[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[15]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\ICis[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(16),
	devoe => ww_devoe,
	o => \ICis[16]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\ICis[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(17),
	devoe => ww_devoe,
	o => \ICis[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\ICis[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(18),
	devoe => ww_devoe,
	o => \ICis[18]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\ICis[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(19),
	devoe => ww_devoe,
	o => \ICis[19]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\ICis[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(20),
	devoe => ww_devoe,
	o => \ICis[20]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\ICis[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(21),
	devoe => ww_devoe,
	o => \ICis[21]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\ICis[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(22),
	devoe => ww_devoe,
	o => \ICis[22]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\ICis[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[23]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\ICis[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(24),
	devoe => ww_devoe,
	o => \ICis[24]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\ICis[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(25),
	devoe => ww_devoe,
	o => \ICis[25]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\ICis[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(26),
	devoe => ww_devoe,
	o => \ICis[26]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\ICis[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(27),
	devoe => ww_devoe,
	o => \ICis[27]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\ICis[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(28),
	devoe => ww_devoe,
	o => \ICis[28]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\ICis[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(29),
	devoe => ww_devoe,
	o => \ICis[29]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\ICis[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(30),
	devoe => ww_devoe,
	o => \ICis[30]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\ICis[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[31]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\ICis[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[32]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\ICis[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[33]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\ICis[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(34),
	devoe => ww_devoe,
	o => \ICis[34]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\ICis[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(35),
	devoe => ww_devoe,
	o => \ICis[35]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\ICis[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[36]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\ICis[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ICis[37]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\ICis[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[38]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\ICis[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[39]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\ICis[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(40),
	devoe => ww_devoe,
	o => \ICis[40]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\ICis[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(41),
	devoe => ww_devoe,
	o => \ICis[41]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\ICis[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(42),
	devoe => ww_devoe,
	o => \ICis[42]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\ICis[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[43]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\ICis[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(44),
	devoe => ww_devoe,
	o => \ICis[44]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\ICis[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ICis[45]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\ICis[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(46),
	devoe => ww_devoe,
	o => \ICis[46]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\ICis[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[47]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\ICis[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(48),
	devoe => ww_devoe,
	o => \ICis[48]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\ICis[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(49),
	devoe => ww_devoe,
	o => \ICis[49]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\ICis[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[50]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\ICis[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(51),
	devoe => ww_devoe,
	o => \ICis[51]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\ICis[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(52),
	devoe => ww_devoe,
	o => \ICis[52]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\ICis[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(53),
	devoe => ww_devoe,
	o => \ICis[53]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\ICis[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(54),
	devoe => ww_devoe,
	o => \ICis[54]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\ICis[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[55]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\ICis[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[56]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\ICis[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(57),
	devoe => ww_devoe,
	o => \ICis[57]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\ICis[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[58]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\ICis[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[59]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\ICis[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(60),
	devoe => ww_devoe,
	o => \ICis[60]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\ICis[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(61),
	devoe => ww_devoe,
	o => \ICis[61]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\ICis[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(62),
	devoe => ww_devoe,
	o => \ICis[62]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\ICis[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[63]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\ICis[64]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(64),
	devoe => ww_devoe,
	o => \ICis[64]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\ICis[65]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[65]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\ICis[66]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[66]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\ICis[67]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(67),
	devoe => ww_devoe,
	o => \ICis[67]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\ICis[68]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(68),
	devoe => ww_devoe,
	o => \ICis[68]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\ICis[69]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(69),
	devoe => ww_devoe,
	o => \ICis[69]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\ICis[70]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(70),
	devoe => ww_devoe,
	o => \ICis[70]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\ICis[71]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[71]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\ICis[72]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(72),
	devoe => ww_devoe,
	o => \ICis[72]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\ICis[73]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(73),
	devoe => ww_devoe,
	o => \ICis[73]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\ICis[74]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(74),
	devoe => ww_devoe,
	o => \ICis[74]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\ICis[75]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(75),
	devoe => ww_devoe,
	o => \ICis[75]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\ICis[76]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(76),
	devoe => ww_devoe,
	o => \ICis[76]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\ICis[77]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(77),
	devoe => ww_devoe,
	o => \ICis[77]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\ICis[78]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(78),
	devoe => ww_devoe,
	o => \ICis[78]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\ICis[79]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[79]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\ICis[80]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(80),
	devoe => ww_devoe,
	o => \ICis[80]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\ICis[81]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(81),
	devoe => ww_devoe,
	o => \ICis[81]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\ICis[82]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(82),
	devoe => ww_devoe,
	o => \ICis[82]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\ICis[83]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(83),
	devoe => ww_devoe,
	o => \ICis[83]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\ICis[84]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(84),
	devoe => ww_devoe,
	o => \ICis[84]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\ICis[85]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(85),
	devoe => ww_devoe,
	o => \ICis[85]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\ICis[86]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ICis[86]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\ICis[87]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[87]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\ICis[88]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(88),
	devoe => ww_devoe,
	o => \ICis[88]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\ICis[89]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(89),
	devoe => ww_devoe,
	o => \ICis[89]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\ICis[90]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(90),
	devoe => ww_devoe,
	o => \ICis[90]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\ICis[91]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(91),
	devoe => ww_devoe,
	o => \ICis[91]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\ICis[92]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ICdecode|ICis\(92),
	devoe => ww_devoe,
	o => \ICis[92]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\ICis[93]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[93]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\ICis[94]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ICis[94]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\ICis[95]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ICis[95]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\crtMCis[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|crtMCis\(0),
	devoe => ww_devoe,
	o => \crtMCis[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\crtMCis[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|crtMCis\(1),
	devoe => ww_devoe,
	o => \crtMCis[1]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\crtMCis[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \crtMCis[2]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y10_N22
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: LCCOMB_X16_Y7_N6
\DP|PC|Count[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PC|Count[0]~10_combout\ = (\DP|PC|Count\(0) & (\CU|CNT_PC~q\ $ (VCC))) # (!\DP|PC|Count\(0) & (\CU|CNT_PC~q\ & VCC))
-- \DP|PC|Count[0]~11\ = CARRY((\DP|PC|Count\(0) & \CU|CNT_PC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PC|Count\(0),
	datab => \CU|CNT_PC~q\,
	datad => VCC,
	combout => \DP|PC|Count[0]~10_combout\,
	cout => \DP|PC|Count[0]~11\);

-- Location: LCCOMB_X16_Y7_N8
\DP|PC|Count[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PC|Count[1]~12_combout\ = (\DP|PC|Count\(1) & (!\DP|PC|Count[0]~11\)) # (!\DP|PC|Count\(1) & ((\DP|PC|Count[0]~11\) # (GND)))
-- \DP|PC|Count[1]~13\ = CARRY((!\DP|PC|Count[0]~11\) # (!\DP|PC|Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DP|PC|Count\(1),
	datad => VCC,
	cin => \DP|PC|Count[0]~11\,
	combout => \DP|PC|Count[1]~12_combout\,
	cout => \DP|PC|Count[1]~13\);

-- Location: FF_X16_Y7_N9
\DP|PC|Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|PC|Count[1]~12_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PC|Count\(1));

-- Location: LCCOMB_X16_Y7_N10
\DP|PC|Count[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PC|Count[2]~14_combout\ = (\DP|PC|Count\(2) & (\DP|PC|Count[1]~13\ $ (GND))) # (!\DP|PC|Count\(2) & (!\DP|PC|Count[1]~13\ & VCC))
-- \DP|PC|Count[2]~15\ = CARRY((\DP|PC|Count\(2) & !\DP|PC|Count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PC|Count\(2),
	datad => VCC,
	cin => \DP|PC|Count[1]~13\,
	combout => \DP|PC|Count[2]~14_combout\,
	cout => \DP|PC|Count[2]~15\);

-- Location: FF_X16_Y7_N11
\DP|PC|Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|PC|Count[2]~14_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PC|Count\(2));

-- Location: LCCOMB_X16_Y7_N12
\DP|PC|Count[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PC|Count[3]~16_combout\ = (\DP|PC|Count\(3) & (!\DP|PC|Count[2]~15\)) # (!\DP|PC|Count\(3) & ((\DP|PC|Count[2]~15\) # (GND)))
-- \DP|PC|Count[3]~17\ = CARRY((!\DP|PC|Count[2]~15\) # (!\DP|PC|Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PC|Count\(3),
	datad => VCC,
	cin => \DP|PC|Count[2]~15\,
	combout => \DP|PC|Count[3]~16_combout\,
	cout => \DP|PC|Count[3]~17\);

-- Location: FF_X16_Y7_N13
\DP|PC|Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|PC|Count[3]~16_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PC|Count\(3));

-- Location: LCCOMB_X16_Y7_N14
\DP|PC|Count[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PC|Count[4]~18_combout\ = (\DP|PC|Count\(4) & (\DP|PC|Count[3]~17\ $ (GND))) # (!\DP|PC|Count\(4) & (!\DP|PC|Count[3]~17\ & VCC))
-- \DP|PC|Count[4]~19\ = CARRY((\DP|PC|Count\(4) & !\DP|PC|Count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DP|PC|Count\(4),
	datad => VCC,
	cin => \DP|PC|Count[3]~17\,
	combout => \DP|PC|Count[4]~18_combout\,
	cout => \DP|PC|Count[4]~19\);

-- Location: FF_X16_Y7_N15
\DP|PC|Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|PC|Count[4]~18_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PC|Count\(4));

-- Location: LCCOMB_X16_Y7_N16
\DP|PC|Count[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PC|Count[5]~20_combout\ = (\DP|PC|Count\(5) & (!\DP|PC|Count[4]~19\)) # (!\DP|PC|Count\(5) & ((\DP|PC|Count[4]~19\) # (GND)))
-- \DP|PC|Count[5]~21\ = CARRY((!\DP|PC|Count[4]~19\) # (!\DP|PC|Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DP|PC|Count\(5),
	datad => VCC,
	cin => \DP|PC|Count[4]~19\,
	combout => \DP|PC|Count[5]~20_combout\,
	cout => \DP|PC|Count[5]~21\);

-- Location: FF_X16_Y7_N17
\DP|PC|Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|PC|Count[5]~20_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PC|Count\(5));

-- Location: LCCOMB_X16_Y7_N18
\DP|PC|Count[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PC|Count[6]~22_combout\ = (\DP|PC|Count\(6) & (\DP|PC|Count[5]~21\ $ (GND))) # (!\DP|PC|Count\(6) & (!\DP|PC|Count[5]~21\ & VCC))
-- \DP|PC|Count[6]~23\ = CARRY((\DP|PC|Count\(6) & !\DP|PC|Count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DP|PC|Count\(6),
	datad => VCC,
	cin => \DP|PC|Count[5]~21\,
	combout => \DP|PC|Count[6]~22_combout\,
	cout => \DP|PC|Count[6]~23\);

-- Location: FF_X16_Y7_N19
\DP|PC|Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|PC|Count[6]~22_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PC|Count\(6));

-- Location: LCCOMB_X16_Y7_N20
\DP|PC|Count[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PC|Count[7]~24_combout\ = (\DP|PC|Count\(7) & (!\DP|PC|Count[6]~23\)) # (!\DP|PC|Count\(7) & ((\DP|PC|Count[6]~23\) # (GND)))
-- \DP|PC|Count[7]~25\ = CARRY((!\DP|PC|Count[6]~23\) # (!\DP|PC|Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DP|PC|Count\(7),
	datad => VCC,
	cin => \DP|PC|Count[6]~23\,
	combout => \DP|PC|Count[7]~24_combout\,
	cout => \DP|PC|Count[7]~25\);

-- Location: FF_X16_Y7_N21
\DP|PC|Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|PC|Count[7]~24_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PC|Count\(7));

-- Location: LCCOMB_X16_Y7_N22
\DP|PC|Count[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PC|Count[8]~26_combout\ = (\DP|PC|Count\(8) & (\DP|PC|Count[7]~25\ $ (GND))) # (!\DP|PC|Count\(8) & (!\DP|PC|Count[7]~25\ & VCC))
-- \DP|PC|Count[8]~27\ = CARRY((\DP|PC|Count\(8) & !\DP|PC|Count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PC|Count\(8),
	datad => VCC,
	cin => \DP|PC|Count[7]~25\,
	combout => \DP|PC|Count[8]~26_combout\,
	cout => \DP|PC|Count[8]~27\);

-- Location: FF_X16_Y7_N23
\DP|PC|Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|PC|Count[8]~26_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PC|Count\(8));

-- Location: LCCOMB_X16_Y7_N24
\DP|PC|Count[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PC|Count[9]~28_combout\ = \DP|PC|Count[8]~27\ $ (\DP|PC|Count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DP|PC|Count\(9),
	cin => \DP|PC|Count[8]~27\,
	combout => \DP|PC|Count[9]~28_combout\);

-- Location: FF_X16_Y7_N25
\DP|PC|Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|PC|Count[9]~28_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PC|Count\(9));

-- Location: LCCOMB_X19_Y5_N30
\CU|WB_SEL[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|WB_SEL[0]~5_combout\ = !\Reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Reset~input_o\,
	combout => \CU|WB_SEL[0]~5_combout\);

-- Location: LCCOMB_X18_Y5_N24
\CU|MC~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|MC~11_combout\ = (\CU|MC\(2)) # ((\CU|MC\(0) & \CU|MC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|MC\(0),
	datab => \CU|MC\(1),
	datac => \CU|MC\(2),
	combout => \CU|MC~11_combout\);

-- Location: FF_X18_Y5_N25
\CU|MC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|MC~11_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|MC\(2));

-- Location: LCCOMB_X16_Y5_N28
\CU|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|Equal0~1_combout\ = (!\CU|MC\(0) & (\CU|MC\(1) & !\CU|MC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|MC\(0),
	datac => \CU|MC\(1),
	datad => \CU|MC\(2),
	combout => \CU|Equal0~1_combout\);

-- Location: FF_X17_Y5_N1
\CU|opCode[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|IR|q\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|opCode\(3));

-- Location: LCCOMB_X18_Y5_N2
\CU|push~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|push~6_combout\ = (\CU|opCode\(1) & !\CU|opCode\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|opCode\(1),
	datad => \CU|opCode\(0),
	combout => \CU|push~6_combout\);

-- Location: LCCOMB_X18_Y5_N30
\CU|push~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|push~3_combout\ = (\CU|MC\(0)) # ((\CU|opCode\(3) & (\CU|opCode\(2) & \CU|push~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|opCode\(3),
	datab => \CU|opCode\(2),
	datac => \CU|MC\(0),
	datad => \CU|push~6_combout\,
	combout => \CU|push~3_combout\);

-- Location: LCCOMB_X18_Y5_N20
\CU|push~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|push~17_combout\ = (\CU|push~3_combout\ & (\CU|MC\(1) & (!\Reset~input_o\ & !\CU|MC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|push~3_combout\,
	datab => \CU|MC\(1),
	datac => \Reset~input_o\,
	datad => \CU|MC\(2),
	combout => \CU|push~17_combout\);

-- Location: LCCOMB_X18_Y5_N0
\CU|push~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|push~16_combout\ = (\CU|push~17_combout\ & (\CU|Equal0~1_combout\)) # (!\CU|push~17_combout\ & ((\CU|push~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Equal0~1_combout\,
	datac => \CU|push~q\,
	datad => \CU|push~17_combout\,
	combout => \CU|push~16_combout\);

-- Location: FF_X18_Y5_N1
\CU|push\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|push~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|push~q\);

-- Location: LCCOMB_X21_Y6_N24
\DP|stack|tos3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos3~3_combout\ = (!\Reset~input_o\ & (\CU|push~q\ & \DP|stack|tos2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datac => \CU|push~q\,
	datad => \DP|stack|tos2\(4),
	combout => \DP|stack|tos3~3_combout\);

-- Location: LCCOMB_X17_Y5_N20
\CU|pop~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|pop~6_combout\ = (\CU|opCode\(1) & \CU|opCode\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|opCode\(1),
	datad => \CU|opCode\(0),
	combout => \CU|pop~6_combout\);

-- Location: LCCOMB_X17_Y5_N30
\CU|pop~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|pop~3_combout\ = (\CU|MC\(0)) # ((\CU|pop~6_combout\ & (\CU|opCode\(2) & \CU|opCode\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|MC\(0),
	datab => \CU|pop~6_combout\,
	datac => \CU|opCode\(2),
	datad => \CU|opCode\(3),
	combout => \CU|pop~3_combout\);

-- Location: LCCOMB_X16_Y5_N6
\CU|pop~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|pop~17_combout\ = (\CU|pop~3_combout\ & (\CU|MC\(1) & (!\Reset~input_o\ & !\CU|MC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|pop~3_combout\,
	datab => \CU|MC\(1),
	datac => \Reset~input_o\,
	datad => \CU|MC\(2),
	combout => \CU|pop~17_combout\);

-- Location: LCCOMB_X16_Y5_N4
\CU|pop~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|pop~16_combout\ = (\CU|pop~17_combout\ & ((\CU|Equal0~1_combout\))) # (!\CU|pop~17_combout\ & (\CU|pop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|pop~17_combout\,
	datac => \CU|pop~q\,
	datad => \CU|Equal0~1_combout\,
	combout => \CU|pop~16_combout\);

-- Location: FF_X16_Y5_N5
\CU|pop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|pop~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|pop~q\);

-- Location: LCCOMB_X20_Y6_N28
\DP|stack|tos2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos2[1]~0_combout\ = (\CU|pop~q\) # ((\Reset~input_o\) # (\CU|push~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|pop~q\,
	datab => \Reset~input_o\,
	datad => \CU|push~q\,
	combout => \DP|stack|tos2[1]~0_combout\);

-- Location: FF_X21_Y6_N25
\DP|stack|tos3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos3~3_combout\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos3\(4));

-- Location: LCCOMB_X21_Y6_N0
\DP|stack|tos2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos2~4_combout\ = (\CU|push~q\ & ((\DP|stack|tos1\(4)))) # (!\CU|push~q\ & (\DP|stack|tos3\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|push~q\,
	datab => \DP|stack|tos3\(4),
	datac => \DP|stack|tos1\(4),
	combout => \DP|stack|tos2~4_combout\);

-- Location: FF_X21_Y6_N1
\DP|stack|tos2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos2~4_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos2\(4));

-- Location: LCCOMB_X21_Y6_N8
\DP|stack|tos1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos1~3_combout\ = (\CU|push~q\ & ((\DP|stack|tos\(4)))) # (!\CU|push~q\ & (\DP|stack|tos2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|stack|tos2\(4),
	datac => \CU|push~q\,
	datad => \DP|stack|tos\(4),
	combout => \DP|stack|tos1~3_combout\);

-- Location: FF_X21_Y6_N9
\DP|stack|tos1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos1~3_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos1\(4));

-- Location: LCCOMB_X21_Y6_N28
\DP|stack|tos~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos~3_combout\ = (\CU|push~q\ & ((\DP|stack|dout[4]~2_combout\))) # (!\CU|push~q\ & (\DP|stack|tos1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|stack|tos1\(4),
	datac => \CU|push~q\,
	datad => \DP|stack|dout[4]~2_combout\,
	combout => \DP|stack|tos~3_combout\);

-- Location: FF_X21_Y6_N29
\DP|stack|tos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos~3_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos\(4));

-- Location: FF_X23_Y6_N25
\DP|stack|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|dout[4]~2_combout\,
	asdata => \DP|stack|tos\(4),
	sload => \CU|ALT_INV_push~q\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|dout\(4));

-- Location: LCCOMB_X18_Y5_N28
\CU|ALU_FS~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|ALU_FS~4_combout\ = (\CU|Equal0~1_combout\ & (\CU|opCode\(3) & !\Reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Equal0~1_combout\,
	datac => \CU|opCode\(3),
	datad => \Reset~input_o\,
	combout => \CU|ALU_FS~4_combout\);

-- Location: LCCOMB_X16_Y5_N2
\CU|ALU_FS[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|ALU_FS[1]~1_combout\ = (\Reset~input_o\) # ((\CU|Equal0~0_combout\ & ((\CU|MC\(0)) # (!\CU|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Equal0~0_combout\,
	datab => \CU|MC\(0),
	datac => \Reset~input_o\,
	datad => \CU|process_0~0_combout\,
	combout => \CU|ALU_FS[1]~1_combout\);

-- Location: FF_X18_Y5_N29
\CU|ALU_FS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|ALU_FS~4_combout\,
	ena => \CU|ALU_FS[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|ALU_FS\(3));

-- Location: LCCOMB_X18_Y5_N12
\CU|ALU_FS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|ALU_FS~2_combout\ = (\CU|Equal0~1_combout\ & (!\Reset~input_o\ & \CU|opCode\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Equal0~1_combout\,
	datac => \Reset~input_o\,
	datad => \CU|opCode\(0),
	combout => \CU|ALU_FS~2_combout\);

-- Location: FF_X18_Y5_N13
\CU|ALU_FS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|ALU_FS~2_combout\,
	ena => \CU|ALU_FS[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|ALU_FS\(0));

-- Location: LCCOMB_X19_Y5_N14
\CU|LD_R0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|LD_R0~0_combout\ = (!\CU|Rsd\(0) & !\CU|Rsd\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Rsd\(0),
	datad => \CU|Rsd\(1),
	combout => \CU|LD_R0~0_combout\);

-- Location: LCCOMB_X18_Y5_N14
\CU|LD_R0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|LD_R0~1_combout\ = (\CU|Equal0~1_combout\ & ((\CU|WB_SEL[1]~4_combout\ & ((\CU|LD_R0~q\))) # (!\CU|WB_SEL[1]~4_combout\ & (\CU|LD_R0~0_combout\)))) # (!\CU|Equal0~1_combout\ & (((\CU|LD_R0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Equal0~1_combout\,
	datab => \CU|LD_R0~0_combout\,
	datac => \CU|LD_R0~q\,
	datad => \CU|WB_SEL[1]~4_combout\,
	combout => \CU|LD_R0~1_combout\);

-- Location: FF_X18_Y5_N15
\CU|LD_R0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|LD_R0~1_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|LD_R0~q\);

-- Location: LCCOMB_X18_Y5_N18
\DP|r0|q[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q[0]~3_combout\ = (\CU|LD_R0~q\) # (\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|LD_R0~q\,
	datac => \Reset~input_o\,
	combout => \DP|r0|q[0]~3_combout\);

-- Location: FF_X23_Y7_N9
\DP|r0|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~12_combout\,
	sload => VCC,
	ena => \DP|r0|q[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r0|q\(4));

-- Location: LCCOMB_X18_Y5_N10
\CU|ALU_FS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|ALU_FS~0_combout\ = (\CU|Equal0~1_combout\ & (!\Reset~input_o\ & \CU|opCode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Equal0~1_combout\,
	datac => \Reset~input_o\,
	datad => \CU|opCode\(1),
	combout => \CU|ALU_FS~0_combout\);

-- Location: FF_X18_Y5_N11
\CU|ALU_FS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|ALU_FS~0_combout\,
	ena => \CU|ALU_FS[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|ALU_FS\(1));

-- Location: LCCOMB_X23_Y8_N24
\DP|ALU|result_mux|combined|f[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[4]~23_combout\ = (\DP|stack|dout[4]~2_combout\ & ((\CU|ALU_FS\(1)) # (\CU|ALU_FS\(0) $ (!\DP|r0|q\(4))))) # (!\DP|stack|dout[4]~2_combout\ & (!\CU|ALU_FS\(0) & (\DP|r0|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(0),
	datab => \DP|r0|q\(4),
	datac => \CU|ALU_FS\(1),
	datad => \DP|stack|dout[4]~2_combout\,
	combout => \DP|ALU|result_mux|combined|f[4]~23_combout\);

-- Location: LCCOMB_X18_Y5_N22
\CU|ALU_FS~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|ALU_FS~3_combout\ = (\CU|Equal0~1_combout\ & (!\Reset~input_o\ & \CU|opCode\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Equal0~1_combout\,
	datac => \Reset~input_o\,
	datad => \CU|opCode\(2),
	combout => \CU|ALU_FS~3_combout\);

-- Location: FF_X18_Y5_N23
\CU|ALU_FS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|ALU_FS~3_combout\,
	ena => \CU|ALU_FS[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|ALU_FS\(2));

-- Location: LCCOMB_X19_Y7_N20
\DP|r0|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~1_combout\ = (\CU|WB_SEL\(0) & !\CU|WB_SEL\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|WB_SEL\(0),
	datad => \CU|WB_SEL\(1),
	combout => \DP|r0|q~1_combout\);

-- Location: FF_X18_Y7_N17
\DP|r0|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~2_combout\,
	sload => VCC,
	ena => \DP|r0|q[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r0|q\(5));

-- Location: LCCOMB_X19_Y7_N26
\DP|ALU|logic_unit|logic_mux|combined|f[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|logic_unit|logic_mux|combined|f[5]~0_combout\ = (\DP|stack|dout[5]~0_combout\ & ((\CU|ALU_FS\(1)) # (\CU|ALU_FS\(0) $ (!\DP|r0|q\(5))))) # (!\DP|stack|dout[5]~0_combout\ & (!\CU|ALU_FS\(0) & ((\DP|r0|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(0),
	datab => \CU|ALU_FS\(1),
	datac => \DP|r0|q\(5),
	datad => \DP|stack|dout[5]~0_combout\,
	combout => \DP|ALU|logic_unit|logic_mux|combined|f[5]~0_combout\);

-- Location: LCCOMB_X19_Y7_N8
\DP|ALU|arith_unit|adder|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|c~0_combout\ = \CU|ALU_FS\(0) $ (((!\CU|ALU_FS\(1) & \DP|r0|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|ALU_FS\(1),
	datac => \DP|r0|q\(5),
	datad => \CU|ALU_FS\(0),
	combout => \DP|ALU|arith_unit|adder|c~0_combout\);

-- Location: LCCOMB_X19_Y5_N16
\CU|LD_R2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|LD_R2~0_combout\ = (\CU|WB_SEL[1]~4_combout\ & (((\CU|process_0~0_combout\)))) # (!\CU|WB_SEL[1]~4_combout\ & (!\CU|Rsd\(0) & ((\CU|Rsd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Rsd\(0),
	datab => \CU|process_0~0_combout\,
	datac => \CU|WB_SEL[1]~4_combout\,
	datad => \CU|Rsd\(1),
	combout => \CU|LD_R2~0_combout\);

-- Location: LCCOMB_X18_Y5_N8
\CU|LD_R2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|LD_R2~1_combout\ = (\CU|Equal0~1_combout\ & ((\CU|LD_R2~0_combout\ & ((\CU|LD_R2~q\) # (!\CU|WB_SEL[1]~4_combout\))) # (!\CU|LD_R2~0_combout\ & ((\CU|WB_SEL[1]~4_combout\))))) # (!\CU|Equal0~1_combout\ & (((\CU|LD_R2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Equal0~1_combout\,
	datab => \CU|LD_R2~0_combout\,
	datac => \CU|LD_R2~q\,
	datad => \CU|WB_SEL[1]~4_combout\,
	combout => \CU|LD_R2~1_combout\);

-- Location: FF_X18_Y5_N9
\CU|LD_R2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|LD_R2~1_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|LD_R2~q\);

-- Location: LCCOMB_X19_Y7_N6
\DP|r2|q[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r2|q[6]~0_combout\ = (\Reset~input_o\) # (\CU|LD_R2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datac => \CU|LD_R2~q\,
	combout => \DP|r2|q[6]~0_combout\);

-- Location: FF_X23_Y7_N7
\DP|r2|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|r0|q~12_combout\,
	ena => \DP|r2|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r2|q\(4));

-- Location: LCCOMB_X24_Y7_N8
\DP|rfout_sd_mux|combined|f~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|combined|f~5_combout\ = (\CU|RF_SD_OS\(1) & ((\CU|RF_SD_OS\(0) & (\DP|r3|q\(4))) # (!\CU|RF_SD_OS\(0) & ((\DP|r2|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(1),
	datab => \CU|RF_SD_OS\(0),
	datac => \DP|r3|q\(4),
	datad => \DP|r2|q\(4),
	combout => \DP|rfout_sd_mux|combined|f~5_combout\);

-- Location: LCCOMB_X19_Y5_N28
\CU|LD_R1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|LD_R1~0_combout\ = (\CU|Rsd\(0) & !\CU|Rsd\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Rsd\(0),
	datad => \CU|Rsd\(1),
	combout => \CU|LD_R1~0_combout\);

-- Location: FF_X19_Y5_N29
\CU|LD_R1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|LD_R1~0_combout\,
	sclr => \Reset~input_o\,
	ena => \CU|WB_SEL[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|LD_R1~q\);

-- Location: LCCOMB_X18_Y7_N16
\DP|r1|q[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r1|q[7]~0_combout\ = (\Reset~input_o\) # (\CU|LD_R1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datad => \CU|LD_R1~q\,
	combout => \DP|r1|q[7]~0_combout\);

-- Location: FF_X24_Y7_N23
\DP|r1|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~12_combout\,
	sload => VCC,
	ena => \DP|r1|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r1|q\(4));

-- Location: LCCOMB_X20_Y7_N4
\DP|rfout_sd_mux|combined|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|combined|f~4_combout\ = (!\CU|RF_SD_OS\(1) & ((\CU|RF_SD_OS\(0) & (\DP|r1|q\(4))) # (!\CU|RF_SD_OS\(0) & ((\DP|r0|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(0),
	datab => \DP|r1|q\(4),
	datac => \CU|RF_SD_OS\(1),
	datad => \DP|r0|q\(4),
	combout => \DP|rfout_sd_mux|combined|f~4_combout\);

-- Location: LCCOMB_X20_Y7_N8
\DP|ALU|arith_unit|adder|c~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|c~8_combout\ = \CU|ALU_FS\(0) $ (((!\CU|ALU_FS\(1) & \DP|r0|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(0),
	datab => \CU|ALU_FS\(1),
	datad => \DP|r0|q\(4),
	combout => \DP|ALU|arith_unit|adder|c~8_combout\);

-- Location: FF_X23_Y7_N21
\DP|r0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~20_combout\,
	sload => VCC,
	ena => \DP|r0|q[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r0|q\(3));

-- Location: LCCOMB_X24_Y7_N12
\DP|ALU|arith_unit|adder|c~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|c~6_combout\ = \CU|ALU_FS\(0) $ (((!\CU|ALU_FS\(1) & \DP|r0|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(1),
	datab => \CU|ALU_FS\(0),
	datad => \DP|r0|q\(3),
	combout => \DP|ALU|arith_unit|adder|c~6_combout\);

-- Location: LCCOMB_X19_Y5_N22
\CU|LD_R3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|LD_R3~0_combout\ = (\CU|Rsd\(0) & \CU|Rsd\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Rsd\(0),
	datad => \CU|Rsd\(1),
	combout => \CU|LD_R3~0_combout\);

-- Location: FF_X19_Y5_N23
\CU|LD_R3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|LD_R3~0_combout\,
	sclr => \Reset~input_o\,
	ena => \CU|WB_SEL[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|LD_R3~q\);

-- Location: LCCOMB_X20_Y7_N0
\DP|r3|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r3|q[3]~0_combout\ = (\Reset~input_o\) # (\CU|LD_R3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \CU|LD_R3~q\,
	combout => \DP|r3|q[3]~0_combout\);

-- Location: FF_X24_Y7_N31
\DP|r3|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~20_combout\,
	sload => VCC,
	ena => \DP|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r3|q\(3));

-- Location: LCCOMB_X24_Y7_N14
\DP|rfout_sd_mux|combined|f~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|combined|f~7_combout\ = (\CU|RF_SD_OS\(1) & ((\CU|RF_SD_OS\(0) & ((\DP|r3|q\(3)))) # (!\CU|RF_SD_OS\(0) & (\DP|r2|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(1),
	datab => \DP|r2|q\(3),
	datac => \DP|r3|q\(3),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|combined|f~7_combout\);

-- Location: FF_X24_Y7_N13
\DP|r1|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~20_combout\,
	sload => VCC,
	ena => \DP|r1|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r1|q\(3));

-- Location: LCCOMB_X23_Y7_N16
\DP|rfout_sd_mux|combined|f~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|combined|f~6_combout\ = (!\CU|RF_SD_OS\(1) & ((\CU|RF_SD_OS\(0) & (\DP|r1|q\(3))) # (!\CU|RF_SD_OS\(0) & ((\DP|r0|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r1|q\(3),
	datab => \DP|r0|q\(3),
	datac => \CU|RF_SD_OS\(1),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|combined|f~6_combout\);

-- Location: FF_X23_Y7_N29
\DP|r0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~23_combout\,
	sload => VCC,
	ena => \DP|r0|q[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r0|q\(2));

-- Location: FF_X24_Y7_N27
\DP|r1|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~23_combout\,
	sload => VCC,
	ena => \DP|r1|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r1|q\(2));

-- Location: LCCOMB_X24_Y7_N26
\DP|rfout_sd_mux|combined|f~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|combined|f~8_combout\ = (!\CU|RF_SD_OS\(1) & ((\CU|RF_SD_OS\(0) & ((\DP|r1|q\(2)))) # (!\CU|RF_SD_OS\(0) & (\DP|r0|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(1),
	datab => \DP|r0|q\(2),
	datac => \DP|r1|q\(2),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|combined|f~8_combout\);

-- Location: FF_X24_Y7_N11
\DP|r3|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~23_combout\,
	sload => VCC,
	ena => \DP|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r3|q\(2));

-- Location: LCCOMB_X24_Y7_N28
\DP|rfout_sd_mux|combined|f~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|combined|f~9_combout\ = (\CU|RF_SD_OS\(1) & ((\CU|RF_SD_OS\(0) & ((\DP|r3|q\(2)))) # (!\CU|RF_SD_OS\(0) & (\DP|r2|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(1),
	datab => \DP|r2|q\(2),
	datac => \DP|r3|q\(2),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|combined|f~9_combout\);

-- Location: LCCOMB_X24_Y7_N22
\DP|ALU|arith_unit|adder|c~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|c~4_combout\ = \CU|ALU_FS\(0) $ (((!\CU|ALU_FS\(1) & \DP|r0|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(1),
	datab => \CU|ALU_FS\(0),
	datad => \DP|r0|q\(2),
	combout => \DP|ALU|arith_unit|adder|c~4_combout\);

-- Location: LCCOMB_X17_Y4_N24
\ICdecode|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Equal0~0_combout\ = (!\DP|IR|q\(1) & !\DP|IR|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(1),
	datad => \DP|IR|q\(0),
	combout => \ICdecode|Equal0~0_combout\);

-- Location: LCCOMB_X18_Y7_N0
\DP|ALU|sr_unit|sr_mux|combined|f[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[6]~9_combout\ = (\ICdecode|Equal0~0_combout\ & (\DP|stack|dout[6]~1_combout\ & ((!\CU|ALU_FS\(1)) # (!\CU|ALU_FS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ICdecode|Equal0~0_combout\,
	datab => \CU|ALU_FS\(0),
	datac => \DP|stack|dout[6]~1_combout\,
	datad => \CU|ALU_FS\(1),
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[6]~9_combout\);

-- Location: FF_X23_Y7_N5
\DP|r0|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~6_combout\,
	sload => VCC,
	ena => \DP|r0|q[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r0|q\(6));

-- Location: LCCOMB_X18_Y7_N26
\DP|ALU|sr_unit|sr_mux|combined|f[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[6]~6_combout\ = (\DP|IR|q\(0) & ((\DP|IR|q\(1) & ((\DP|stack|dout[3]~5_combout\))) # (!\DP|IR|q\(1) & (\DP|stack|dout[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(0),
	datab => \DP|IR|q\(1),
	datac => \DP|stack|dout[5]~0_combout\,
	datad => \DP|stack|dout[3]~5_combout\,
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[6]~6_combout\);

-- Location: LCCOMB_X18_Y7_N12
\DP|ALU|sr_unit|sr_mux|combined|f[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[6]~7_combout\ = (\DP|ALU|sr_unit|sr_mux|combined|f[6]~6_combout\) # ((!\DP|IR|q\(0) & (\DP|IR|q\(1) & \DP|stack|dout[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(0),
	datab => \DP|IR|q\(1),
	datac => \DP|ALU|sr_unit|sr_mux|combined|f[6]~6_combout\,
	datad => \DP|stack|dout[4]~2_combout\,
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[6]~7_combout\);

-- Location: LCCOMB_X18_Y7_N22
\DP|ALU|sr_unit|sr_mux|combined|f[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[6]~8_combout\ = (\CU|ALU_FS\(1) & ((\CU|ALU_FS\(0) & (\DP|r0|q\(6))) # (!\CU|ALU_FS\(0) & ((\DP|ALU|sr_unit|sr_mux|combined|f[6]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(1),
	datab => \DP|r0|q\(6),
	datac => \CU|ALU_FS\(0),
	datad => \DP|ALU|sr_unit|sr_mux|combined|f[6]~7_combout\,
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[6]~8_combout\);

-- Location: FF_X23_Y7_N15
\DP|r0|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~8_combout\,
	sload => VCC,
	ena => \DP|r0|q[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r0|q\(7));

-- Location: LCCOMB_X21_Y7_N24
\DP|ALU|logic_unit|logic_mux|combined|f[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|logic_unit|logic_mux|combined|f[7]~1_combout\ = (\DP|rfout_sd_mux|combined|f[7]~1_combout\ & ((\CU|ALU_FS\(1)) # (\CU|ALU_FS\(0) $ (!\DP|r0|q\(7))))) # (!\DP|rfout_sd_mux|combined|f[7]~1_combout\ & (!\CU|ALU_FS\(0) & ((\DP|r0|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(0),
	datab => \DP|rfout_sd_mux|combined|f[7]~1_combout\,
	datac => \CU|ALU_FS\(1),
	datad => \DP|r0|q\(7),
	combout => \DP|ALU|logic_unit|logic_mux|combined|f[7]~1_combout\);

-- Location: LCCOMB_X18_Y7_N18
\DP|ALU|sr_unit|sr_mux|combined|f[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[7]~11_combout\ = ((!\DP|IR|q\(0) & (!\DP|IR|q\(1) & !\CU|ALU_FS\(0)))) # (!\CU|ALU_FS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(0),
	datab => \DP|IR|q\(1),
	datac => \CU|ALU_FS\(0),
	datad => \CU|ALU_FS\(1),
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[7]~11_combout\);

-- Location: LCCOMB_X21_Y7_N22
\DP|ALU|result_mux|combined|f[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[7]~6_combout\ = (\CU|ALU_FS\(2) & (((\CU|ALU_FS\(3))))) # (!\CU|ALU_FS\(2) & (((\DP|ALU|sr_unit|sr_mux|combined|f[7]~11_combout\ & \DP|rfout_sd_mux|combined|f[7]~1_combout\)) # (!\CU|ALU_FS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(2),
	datab => \DP|ALU|sr_unit|sr_mux|combined|f[7]~11_combout\,
	datac => \CU|ALU_FS\(3),
	datad => \DP|rfout_sd_mux|combined|f[7]~1_combout\,
	combout => \DP|ALU|result_mux|combined|f[7]~6_combout\);

-- Location: LCCOMB_X21_Y7_N18
\DP|ALU|result_mux|combined|f[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[7]~10_combout\ = \CU|ALU_FS\(0) $ (((\DP|r0|q\(7) & !\CU|ALU_FS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(0),
	datab => \DP|r0|q\(7),
	datad => \CU|ALU_FS\(1),
	combout => \DP|ALU|result_mux|combined|f[7]~10_combout\);

-- Location: LCCOMB_X21_Y7_N28
\DP|ALU|result_mux|combined|f[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[7]~11_combout\ = (\CU|ALU_FS\(3)) # (\DP|rfout_sd_mux|combined|f[7]~1_combout\ $ (\DP|ALU|result_mux|combined|f[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|rfout_sd_mux|combined|f[7]~1_combout\,
	datac => \CU|ALU_FS\(3),
	datad => \DP|ALU|result_mux|combined|f[7]~10_combout\,
	combout => \DP|ALU|result_mux|combined|f[7]~11_combout\);

-- Location: FF_X20_Y7_N21
\DP|r1|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~6_combout\,
	sload => VCC,
	ena => \DP|r1|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r1|q\(6));

-- Location: FF_X21_Y7_N21
\DP|r2|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|r0|q~6_combout\,
	ena => \DP|r2|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r2|q\(6));

-- Location: LCCOMB_X20_Y7_N12
\DP|ALU|result_mux|combined|f[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[7]~8_combout\ = (\CU|RF_SD_OS\(1) & ((\CU|RF_SD_OS\(0) & (\DP|r3|q\(6))) # (!\CU|RF_SD_OS\(0) & ((\DP|r2|q\(6)))))) # (!\CU|RF_SD_OS\(1) & (((\CU|RF_SD_OS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(1),
	datab => \DP|r3|q\(6),
	datac => \CU|RF_SD_OS\(0),
	datad => \DP|r2|q\(6),
	combout => \DP|ALU|result_mux|combined|f[7]~8_combout\);

-- Location: LCCOMB_X20_Y7_N20
\DP|ALU|result_mux|combined|f[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[7]~9_combout\ = (\CU|RF_SD_OS\(1) & (((\DP|ALU|result_mux|combined|f[7]~8_combout\)))) # (!\CU|RF_SD_OS\(1) & ((\DP|ALU|result_mux|combined|f[7]~8_combout\ & ((\DP|r1|q\(6)))) # (!\DP|ALU|result_mux|combined|f[7]~8_combout\ & 
-- (\DP|r0|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(1),
	datab => \DP|r0|q\(6),
	datac => \DP|r1|q\(6),
	datad => \DP|ALU|result_mux|combined|f[7]~8_combout\,
	combout => \DP|ALU|result_mux|combined|f[7]~9_combout\);

-- Location: LCCOMB_X20_Y7_N18
\DP|ALU|arith_unit|adder|c~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|c~11_combout\ = \CU|ALU_FS\(0) $ (((\DP|r0|q\(6) & !\CU|ALU_FS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(0),
	datab => \DP|r0|q\(6),
	datad => \CU|ALU_FS\(1),
	combout => \DP|ALU|arith_unit|adder|c~11_combout\);

-- Location: FF_X19_Y7_N1
\DP|r1|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~2_combout\,
	sload => VCC,
	ena => \DP|r1|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r1|q\(5));

-- Location: LCCOMB_X19_Y7_N0
\DP|rfout_sd_mux|combined|f~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|combined|f~12_combout\ = (!\CU|RF_SD_OS\(1) & ((\CU|RF_SD_OS\(0) & ((\DP|r1|q\(5)))) # (!\CU|RF_SD_OS\(0) & (\DP|r0|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r0|q\(5),
	datab => \CU|RF_SD_OS\(1),
	datac => \DP|r1|q\(5),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|combined|f~12_combout\);

-- Location: FF_X20_Y7_N3
\DP|r3|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~2_combout\,
	sload => VCC,
	ena => \DP|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r3|q\(5));

-- Location: LCCOMB_X20_Y7_N26
\DP|rfout_sd_mux|combined|f~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|combined|f~13_combout\ = (\CU|RF_SD_OS\(1) & ((\CU|RF_SD_OS\(0) & (\DP|r3|q\(5))) # (!\CU|RF_SD_OS\(0) & ((\DP|r2|q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(0),
	datab => \DP|r3|q\(5),
	datac => \CU|RF_SD_OS\(1),
	datad => \DP|r2|q\(5),
	combout => \DP|rfout_sd_mux|combined|f~13_combout\);

-- Location: LCCOMB_X19_Y7_N28
\DP|ALU|arith_unit|adder|c[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|c[6]~10_combout\ = (\DP|ALU|arith_unit|adder|c~0_combout\ & ((\DP|rfout_sd_mux|combined|f~12_combout\) # ((\DP|rfout_sd_mux|combined|f~13_combout\) # (\DP|ALU|arith_unit|adder|c[5]~9_combout\)))) # 
-- (!\DP|ALU|arith_unit|adder|c~0_combout\ & (\DP|ALU|arith_unit|adder|c[5]~9_combout\ & ((\DP|rfout_sd_mux|combined|f~12_combout\) # (\DP|rfout_sd_mux|combined|f~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|rfout_sd_mux|combined|f~12_combout\,
	datab => \DP|rfout_sd_mux|combined|f~13_combout\,
	datac => \DP|ALU|arith_unit|adder|c~0_combout\,
	datad => \DP|ALU|arith_unit|adder|c[5]~9_combout\,
	combout => \DP|ALU|arith_unit|adder|c[6]~10_combout\);

-- Location: LCCOMB_X20_Y7_N6
\DP|ALU|result_mux|combined|f[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[7]~12_combout\ = \DP|ALU|result_mux|combined|f[7]~11_combout\ $ (((\DP|ALU|result_mux|combined|f[7]~9_combout\ & ((\DP|ALU|arith_unit|adder|c~11_combout\) # (\DP|ALU|arith_unit|adder|c[6]~10_combout\))) # 
-- (!\DP|ALU|result_mux|combined|f[7]~9_combout\ & (\DP|ALU|arith_unit|adder|c~11_combout\ & \DP|ALU|arith_unit|adder|c[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[7]~11_combout\,
	datab => \DP|ALU|result_mux|combined|f[7]~9_combout\,
	datac => \DP|ALU|arith_unit|adder|c~11_combout\,
	datad => \DP|ALU|arith_unit|adder|c[6]~10_combout\,
	combout => \DP|ALU|result_mux|combined|f[7]~12_combout\);

-- Location: LCCOMB_X18_Y7_N20
\DP|ALU|sr_unit|sr_mux|combined|f[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[7]~12_combout\ = (\DP|IR|q\(0) & ((\DP|IR|q\(1) & ((\DP|stack|dout[4]~2_combout\))) # (!\DP|IR|q\(1) & (\DP|stack|dout[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(0),
	datab => \DP|IR|q\(1),
	datac => \DP|stack|dout[6]~1_combout\,
	datad => \DP|stack|dout[4]~2_combout\,
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[7]~12_combout\);

-- Location: LCCOMB_X18_Y7_N10
\DP|ALU|sr_unit|sr_mux|combined|f[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[7]~13_combout\ = (\DP|ALU|sr_unit|sr_mux|combined|f[7]~12_combout\) # ((\DP|stack|dout[5]~0_combout\ & (\DP|IR|q\(1) & !\DP|IR|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|dout[5]~0_combout\,
	datab => \DP|IR|q\(1),
	datac => \DP|IR|q\(0),
	datad => \DP|ALU|sr_unit|sr_mux|combined|f[7]~12_combout\,
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[7]~13_combout\);

-- Location: LCCOMB_X21_Y7_N12
\DP|ALU|result_mux|combined|f[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[7]~7_combout\ = (\CU|ALU_FS\(1) & ((\CU|ALU_FS\(0) & ((\DP|r0|q\(7)))) # (!\CU|ALU_FS\(0) & (\DP|ALU|sr_unit|sr_mux|combined|f[7]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(0),
	datab => \CU|ALU_FS\(1),
	datac => \DP|ALU|sr_unit|sr_mux|combined|f[7]~13_combout\,
	datad => \DP|r0|q\(7),
	combout => \DP|ALU|result_mux|combined|f[7]~7_combout\);

-- Location: LCCOMB_X21_Y7_N2
\DP|ALU|result_mux|combined|f[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[7]~13_combout\ = (\DP|ALU|result_mux|combined|f[7]~6_combout\ & ((\CU|ALU_FS\(3)) # ((\DP|ALU|result_mux|combined|f[7]~12_combout\)))) # (!\DP|ALU|result_mux|combined|f[7]~6_combout\ & (\CU|ALU_FS\(3) & 
-- ((\DP|ALU|result_mux|combined|f[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[7]~6_combout\,
	datab => \CU|ALU_FS\(3),
	datac => \DP|ALU|result_mux|combined|f[7]~12_combout\,
	datad => \DP|ALU|result_mux|combined|f[7]~7_combout\,
	combout => \DP|ALU|result_mux|combined|f[7]~13_combout\);

-- Location: LCCOMB_X21_Y7_N4
\DP|ALU|result_mux|combined|f[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[7]~14_combout\ = (\CU|ALU_FS\(2) & ((\DP|ALU|result_mux|combined|f[7]~13_combout\ & (\CU|ALU_FS\(1))) # (!\DP|ALU|result_mux|combined|f[7]~13_combout\ & ((\DP|ALU|logic_unit|logic_mux|combined|f[7]~1_combout\))))) # 
-- (!\CU|ALU_FS\(2) & (((\DP|ALU|result_mux|combined|f[7]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(1),
	datab => \DP|ALU|logic_unit|logic_mux|combined|f[7]~1_combout\,
	datac => \CU|ALU_FS\(2),
	datad => \DP|ALU|result_mux|combined|f[7]~13_combout\,
	combout => \DP|ALU|result_mux|combined|f[7]~14_combout\);

-- Location: LCCOMB_X21_Y7_N30
\DP|r0|q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~4_combout\ = (!\Reset~input_o\ & \CU|WB_SEL\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datad => \CU|WB_SEL\(1),
	combout => \DP|r0|q~4_combout\);

-- Location: LCCOMB_X19_Y6_N12
\DP|stack|tos3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos3~2_combout\ = (!\Reset~input_o\ & (\CU|push~q\ & \DP|stack|tos2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \CU|push~q\,
	datad => \DP|stack|tos2\(7),
	combout => \DP|stack|tos3~2_combout\);

-- Location: FF_X19_Y6_N13
\DP|stack|tos3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos3~2_combout\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos3\(7));

-- Location: LCCOMB_X19_Y6_N0
\DP|stack|tos2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos2~3_combout\ = (\CU|push~q\ & ((\DP|stack|tos1\(7)))) # (!\CU|push~q\ & (\DP|stack|tos3\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|tos3\(7),
	datab => \DP|stack|tos1\(7),
	datac => \CU|push~q\,
	combout => \DP|stack|tos2~3_combout\);

-- Location: FF_X19_Y6_N1
\DP|stack|tos2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos2~3_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos2\(7));

-- Location: LCCOMB_X19_Y6_N4
\DP|stack|tos1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos1~2_combout\ = (\CU|push~q\ & ((\DP|stack|tos\(7)))) # (!\CU|push~q\ & (\DP|stack|tos2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|stack|tos2\(7),
	datac => \CU|push~q\,
	datad => \DP|stack|tos\(7),
	combout => \DP|stack|tos1~2_combout\);

-- Location: FF_X19_Y6_N5
\DP|stack|tos1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos1~2_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos1\(7));

-- Location: LCCOMB_X19_Y6_N28
\DP|stack|tos~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos~2_combout\ = (\CU|push~q\ & ((\DP|rfout_sd_mux|combined|f[7]~1_combout\))) # (!\CU|push~q\ & (\DP|stack|tos1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|stack|tos1\(7),
	datac => \CU|push~q\,
	datad => \DP|rfout_sd_mux|combined|f[7]~1_combout\,
	combout => \DP|stack|tos~2_combout\);

-- Location: FF_X19_Y6_N29
\DP|stack|tos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos~2_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos\(7));

-- Location: LCCOMB_X20_Y6_N10
\DP|stack|dout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|dout~6_combout\ = (\CU|push~q\ & (\DP|rfout_sd_mux|combined|f[7]~1_combout\)) # (!\CU|push~q\ & ((\DP|stack|tos\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|push~q\,
	datac => \DP|rfout_sd_mux|combined|f[7]~1_combout\,
	datad => \DP|stack|tos\(7),
	combout => \DP|stack|dout~6_combout\);

-- Location: FF_X20_Y6_N11
\DP|stack|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|dout~6_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|dout\(7));

-- Location: LCCOMB_X21_Y7_N10
\DP|r0|q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~7_combout\ = (\DP|r0|q~4_combout\ & ((\CU|WB_SEL\(0) & ((\DP|stack|dout\(7)))) # (!\CU|WB_SEL\(0) & (\DP|MM|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r0|q~4_combout\,
	datab => \CU|WB_SEL\(0),
	datac => \DP|MM|altsyncram_component|auto_generated|q_a\(7),
	datad => \DP|stack|dout\(7),
	combout => \DP|r0|q~7_combout\);

-- Location: LCCOMB_X21_Y7_N8
\DP|r0|q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~8_combout\ = (\DP|r0|q~7_combout\) # ((\DP|r0|q~1_combout\ & (!\Reset~input_o\ & \DP|ALU|result_mux|combined|f[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r0|q~1_combout\,
	datab => \Reset~input_o\,
	datac => \DP|ALU|result_mux|combined|f[7]~14_combout\,
	datad => \DP|r0|q~7_combout\,
	combout => \DP|r0|q~8_combout\);

-- Location: FF_X21_Y7_N9
\DP|r3|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|r0|q~8_combout\,
	ena => \DP|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r3|q\(7));

-- Location: FF_X20_Y7_N31
\DP|r1|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~8_combout\,
	sload => VCC,
	ena => \DP|r1|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r1|q\(7));

-- Location: FF_X21_Y7_N7
\DP|r2|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~8_combout\,
	sload => VCC,
	ena => \DP|r2|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r2|q\(7));

-- Location: LCCOMB_X21_Y7_N6
\DP|rfout_sd_mux|combined|f[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|combined|f[7]~0_combout\ = (\CU|RF_SD_OS\(0) & (((\CU|RF_SD_OS\(1))))) # (!\CU|RF_SD_OS\(0) & ((\CU|RF_SD_OS\(1) & ((\DP|r2|q\(7)))) # (!\CU|RF_SD_OS\(1) & (\DP|r0|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(0),
	datab => \DP|r0|q\(7),
	datac => \DP|r2|q\(7),
	datad => \CU|RF_SD_OS\(1),
	combout => \DP|rfout_sd_mux|combined|f[7]~0_combout\);

-- Location: LCCOMB_X20_Y7_N30
\DP|rfout_sd_mux|combined|f[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|combined|f[7]~1_combout\ = (\CU|RF_SD_OS\(0) & ((\DP|rfout_sd_mux|combined|f[7]~0_combout\ & (\DP|r3|q\(7))) # (!\DP|rfout_sd_mux|combined|f[7]~0_combout\ & ((\DP|r1|q\(7)))))) # (!\CU|RF_SD_OS\(0) & 
-- (((\DP|rfout_sd_mux|combined|f[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(0),
	datab => \DP|r3|q\(7),
	datac => \DP|r1|q\(7),
	datad => \DP|rfout_sd_mux|combined|f[7]~0_combout\,
	combout => \DP|rfout_sd_mux|combined|f[7]~1_combout\);

-- Location: LCCOMB_X18_Y7_N2
\DP|ALU|sr_unit|sr_mux|combined|f[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[5]~2_combout\ = (!\CU|ALU_FS\(1) & \DP|rfout_sd_mux|combined|f[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(1),
	datad => \DP|rfout_sd_mux|combined|f[7]~1_combout\,
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[5]~2_combout\);

-- Location: LCCOMB_X18_Y7_N6
\DP|ALU|sr_unit|sr_mux|combined|f[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[6]~10_combout\ = (\DP|ALU|sr_unit|sr_mux|combined|f[6]~9_combout\) # ((\DP|ALU|sr_unit|sr_mux|combined|f[6]~8_combout\) # ((!\ICdecode|Equal0~0_combout\ & \DP|ALU|sr_unit|sr_mux|combined|f[5]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ICdecode|Equal0~0_combout\,
	datab => \DP|ALU|sr_unit|sr_mux|combined|f[6]~9_combout\,
	datac => \DP|ALU|sr_unit|sr_mux|combined|f[6]~8_combout\,
	datad => \DP|ALU|sr_unit|sr_mux|combined|f[5]~2_combout\,
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[6]~10_combout\);

-- Location: LCCOMB_X18_Y7_N24
\DP|ALU|result_mux|combined|f[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[6]~2_combout\ = (\DP|stack|dout[6]~1_combout\ & (!\CU|ALU_FS\(1) & (\CU|ALU_FS\(0) $ (\DP|r0|q\(6))))) # (!\DP|stack|dout[6]~1_combout\ & (((!\CU|ALU_FS\(0) & \DP|r0|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(1),
	datab => \CU|ALU_FS\(0),
	datac => \DP|stack|dout[6]~1_combout\,
	datad => \DP|r0|q\(6),
	combout => \DP|ALU|result_mux|combined|f[6]~2_combout\);

-- Location: LCCOMB_X19_Y7_N2
\DP|ALU|result_mux|combined|f[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[6]~3_combout\ = \DP|stack|dout[6]~1_combout\ $ (((\CU|ALU_FS\(2) & ((\DP|ALU|result_mux|combined|f[6]~2_combout\))) # (!\CU|ALU_FS\(2) & (\DP|ALU|arith_unit|adder|c~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(2),
	datab => \DP|ALU|arith_unit|adder|c~11_combout\,
	datac => \DP|ALU|result_mux|combined|f[6]~2_combout\,
	datad => \DP|stack|dout[6]~1_combout\,
	combout => \DP|ALU|result_mux|combined|f[6]~3_combout\);

-- Location: LCCOMB_X19_Y7_N24
\DP|ALU|result_mux|combined|f[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[6]~4_combout\ = (\CU|ALU_FS\(3) & (\CU|ALU_FS\(2))) # (!\CU|ALU_FS\(3) & (\DP|ALU|result_mux|combined|f[6]~3_combout\ $ (((!\CU|ALU_FS\(2) & \DP|ALU|arith_unit|adder|c[6]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(2),
	datab => \CU|ALU_FS\(3),
	datac => \DP|ALU|result_mux|combined|f[6]~3_combout\,
	datad => \DP|ALU|arith_unit|adder|c[6]~10_combout\,
	combout => \DP|ALU|result_mux|combined|f[6]~4_combout\);

-- Location: LCCOMB_X19_Y7_N22
\DP|ALU|result_mux|combined|f[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[6]~5_combout\ = (\CU|ALU_FS\(3) & ((\DP|ALU|result_mux|combined|f[6]~4_combout\ & (\CU|ALU_FS\(0))) # (!\DP|ALU|result_mux|combined|f[6]~4_combout\ & ((\DP|ALU|sr_unit|sr_mux|combined|f[6]~10_combout\))))) # (!\CU|ALU_FS\(3) 
-- & (((\DP|ALU|result_mux|combined|f[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(0),
	datab => \CU|ALU_FS\(3),
	datac => \DP|ALU|sr_unit|sr_mux|combined|f[6]~10_combout\,
	datad => \DP|ALU|result_mux|combined|f[6]~4_combout\,
	combout => \DP|ALU|result_mux|combined|f[6]~5_combout\);

-- Location: LCCOMB_X20_Y6_N18
\DP|stack|dout[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|dout[6]~feeder_combout\ = \DP|stack|dout[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DP|stack|dout[6]~1_combout\,
	combout => \DP|stack|dout[6]~feeder_combout\);

-- Location: LCCOMB_X19_Y6_N18
\DP|stack|tos3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos3~1_combout\ = (!\Reset~input_o\ & (\CU|push~q\ & \DP|stack|tos2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \CU|push~q\,
	datad => \DP|stack|tos2\(6),
	combout => \DP|stack|tos3~1_combout\);

-- Location: FF_X19_Y6_N19
\DP|stack|tos3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos3~1_combout\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos3\(6));

-- Location: LCCOMB_X19_Y6_N10
\DP|stack|tos2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos2~2_combout\ = (\CU|push~q\ & (\DP|stack|tos1\(6))) # (!\CU|push~q\ & ((\DP|stack|tos3\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|push~q\,
	datac => \DP|stack|tos1\(6),
	datad => \DP|stack|tos3\(6),
	combout => \DP|stack|tos2~2_combout\);

-- Location: FF_X19_Y6_N11
\DP|stack|tos2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos2~2_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos2\(6));

-- Location: LCCOMB_X19_Y6_N30
\DP|stack|tos1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos1~1_combout\ = (\CU|push~q\ & ((\DP|stack|tos\(6)))) # (!\CU|push~q\ & (\DP|stack|tos2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|tos2\(6),
	datac => \CU|push~q\,
	datad => \DP|stack|tos\(6),
	combout => \DP|stack|tos1~1_combout\);

-- Location: FF_X19_Y6_N31
\DP|stack|tos1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos1~1_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos1\(6));

-- Location: LCCOMB_X19_Y6_N6
\DP|stack|tos~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos~1_combout\ = (\CU|push~q\ & ((\DP|stack|dout[6]~1_combout\))) # (!\CU|push~q\ & (\DP|stack|tos1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|tos1\(6),
	datac => \CU|push~q\,
	datad => \DP|stack|dout[6]~1_combout\,
	combout => \DP|stack|tos~1_combout\);

-- Location: FF_X19_Y6_N7
\DP|stack|tos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos~1_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos\(6));

-- Location: FF_X20_Y6_N19
\DP|stack|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|dout[6]~feeder_combout\,
	asdata => \DP|stack|tos\(6),
	sload => \CU|ALT_INV_push~q\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|dout\(6));

-- Location: LCCOMB_X21_Y7_N0
\DP|r0|q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~5_combout\ = (\DP|r0|q~4_combout\ & ((\CU|WB_SEL\(0) & ((\DP|stack|dout\(6)))) # (!\CU|WB_SEL\(0) & (\DP|MM|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r0|q~4_combout\,
	datab => \CU|WB_SEL\(0),
	datac => \DP|MM|altsyncram_component|auto_generated|q_a\(6),
	datad => \DP|stack|dout\(6),
	combout => \DP|r0|q~5_combout\);

-- Location: LCCOMB_X21_Y7_N20
\DP|r0|q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~6_combout\ = (\DP|r0|q~5_combout\) # ((\DP|r0|q~1_combout\ & (!\Reset~input_o\ & \DP|ALU|result_mux|combined|f[6]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r0|q~1_combout\,
	datab => \Reset~input_o\,
	datac => \DP|ALU|result_mux|combined|f[6]~5_combout\,
	datad => \DP|r0|q~5_combout\,
	combout => \DP|r0|q~6_combout\);

-- Location: FF_X21_Y7_N15
\DP|r3|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~6_combout\,
	sload => VCC,
	ena => \DP|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r3|q\(6));

-- Location: LCCOMB_X21_Y7_N14
\DP|rfout_sd_mux|upper_bits|f[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|upper_bits|f[6]~1_combout\ = (\CU|RF_SD_OS\(0) & (\DP|r3|q\(6))) # (!\CU|RF_SD_OS\(0) & ((\DP|r2|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(0),
	datac => \DP|r3|q\(6),
	datad => \DP|r2|q\(6),
	combout => \DP|rfout_sd_mux|upper_bits|f[6]~1_combout\);

-- Location: LCCOMB_X23_Y7_N4
\DP|rfout_sd_mux|lower_bits|f[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|lower_bits|f[6]~1_combout\ = (\CU|RF_SD_OS\(0) & (\DP|r1|q\(6))) # (!\CU|RF_SD_OS\(0) & ((\DP|r0|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r1|q\(6),
	datac => \DP|r0|q\(6),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|lower_bits|f[6]~1_combout\);

-- Location: LCCOMB_X21_Y7_N16
\DP|stack|dout[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|dout[6]~1_combout\ = (\CU|RF_SD_OS\(1) & (\DP|rfout_sd_mux|upper_bits|f[6]~1_combout\)) # (!\CU|RF_SD_OS\(1) & ((\DP|rfout_sd_mux|lower_bits|f[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|rfout_sd_mux|upper_bits|f[6]~1_combout\,
	datac => \CU|RF_SD_OS\(1),
	datad => \DP|rfout_sd_mux|lower_bits|f[6]~1_combout\,
	combout => \DP|stack|dout[6]~1_combout\);

-- Location: M9K_X22_Y7_N0
\DP|MM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000783449EEC7FAC8AAB2173FD9CFC2AB38AE3D269B8FA06151D8521A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sls_MM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "slsRISC_DP_vhdl:DP|sls_MM_vhdl:MM|altsyncram:altsyncram_component|altsyncram_s3s3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \ALT_INV_Clock~inputclkctrl_outclk\,
	portadatain => \DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DP|MM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y7_N6
\DP|IR|q~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|IR|q~6_combout\ = (!\Reset~input_o\ & \DP|MM|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \DP|MM|altsyncram_component|auto_generated|q_a\(1),
	combout => \DP|IR|q~6_combout\);

-- Location: LCCOMB_X16_Y5_N8
\CU|LD_IR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|LD_IR~0_combout\ = (\CU|MC\(2) & (((\CU|LD_IR~q\)))) # (!\CU|MC\(2) & ((\CU|MC\(1) & (\CU|LD_IR~q\)) # (!\CU|MC\(1) & ((!\CU|MC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|MC\(2),
	datab => \CU|MC\(1),
	datac => \CU|LD_IR~q\,
	datad => \CU|MC\(0),
	combout => \CU|LD_IR~0_combout\);

-- Location: FF_X16_Y5_N9
\CU|LD_IR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|LD_IR~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|LD_IR~q\);

-- Location: LCCOMB_X17_Y7_N10
\DP|IR|q[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|IR|q[4]~1_combout\ = (\Reset~input_o\) # (\CU|LD_IR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \CU|LD_IR~q\,
	combout => \DP|IR|q[4]~1_combout\);

-- Location: FF_X17_Y7_N7
\DP|IR|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|IR|q~6_combout\,
	ena => \DP|IR|q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IR|q\(1));

-- Location: LCCOMB_X21_Y6_N10
\DP|stack|tos3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos3~5_combout\ = (!\Reset~input_o\ & (\DP|stack|tos2\(1) & \CU|push~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \DP|stack|tos2\(1),
	datac => \CU|push~q\,
	combout => \DP|stack|tos3~5_combout\);

-- Location: FF_X21_Y6_N11
\DP|stack|tos3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos3~5_combout\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos3\(1));

-- Location: LCCOMB_X21_Y6_N14
\DP|stack|tos2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos2~6_combout\ = (\CU|push~q\ & (\DP|stack|tos1\(1))) # (!\CU|push~q\ & ((\DP|stack|tos3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|push~q\,
	datac => \DP|stack|tos1\(1),
	datad => \DP|stack|tos3\(1),
	combout => \DP|stack|tos2~6_combout\);

-- Location: FF_X21_Y6_N15
\DP|stack|tos2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos2~6_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos2\(1));

-- Location: LCCOMB_X21_Y6_N22
\DP|stack|tos1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos1~5_combout\ = (\CU|push~q\ & ((\DP|stack|tos\(1)))) # (!\CU|push~q\ & (\DP|stack|tos2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|stack|tos2\(1),
	datac => \CU|push~q\,
	datad => \DP|stack|tos\(1),
	combout => \DP|stack|tos1~5_combout\);

-- Location: FF_X21_Y6_N23
\DP|stack|tos1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos1~5_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos1\(1));

-- Location: LCCOMB_X21_Y6_N6
\DP|stack|tos~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos~5_combout\ = (\CU|push~q\ & ((\DP|stack|dout[1]~3_combout\))) # (!\CU|push~q\ & (\DP|stack|tos1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|tos1\(1),
	datac => \CU|push~q\,
	datad => \DP|stack|dout[1]~3_combout\,
	combout => \DP|stack|tos~5_combout\);

-- Location: FF_X21_Y6_N7
\DP|stack|tos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos~5_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos\(1));

-- Location: FF_X23_Y6_N23
\DP|stack|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|dout[1]~3_combout\,
	asdata => \DP|stack|tos\(1),
	sload => \CU|ALT_INV_push~q\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|dout\(1));

-- Location: LCCOMB_X23_Y6_N30
\DP|ALU|result_mux|combined|f[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[1]~30_combout\ = (\DP|stack|dout[1]~3_combout\ & ((\CU|ALU_FS\(1)) # (\CU|ALU_FS\(0) $ (!\DP|r0|q\(1))))) # (!\DP|stack|dout[1]~3_combout\ & (!\CU|ALU_FS\(0) & (\DP|r0|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|dout[1]~3_combout\,
	datab => \CU|ALU_FS\(0),
	datac => \DP|r0|q\(1),
	datad => \CU|ALU_FS\(1),
	combout => \DP|ALU|result_mux|combined|f[1]~30_combout\);

-- Location: LCCOMB_X23_Y6_N2
\DP|ALU|result_mux|combined|f[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[4]~16_combout\ = (\CU|ALU_FS\(2)) # (!\CU|ALU_FS\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|ALU_FS\(3),
	datad => \CU|ALU_FS\(2),
	combout => \DP|ALU|result_mux|combined|f[4]~16_combout\);

-- Location: LCCOMB_X20_Y8_N12
\DP|ALU|logic_unit|logic_mux|combined|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|logic_unit|logic_mux|combined|f[0]~2_combout\ = (\DP|rfout_sd_mux|combined|f[0]~3_combout\ & ((\CU|ALU_FS\(1)) # (\CU|ALU_FS\(0) $ (!\DP|r0|q\(0))))) # (!\DP|rfout_sd_mux|combined|f[0]~3_combout\ & (((!\CU|ALU_FS\(0) & \DP|r0|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|rfout_sd_mux|combined|f[0]~3_combout\,
	datab => \CU|ALU_FS\(1),
	datac => \CU|ALU_FS\(0),
	datad => \DP|r0|q\(0),
	combout => \DP|ALU|logic_unit|logic_mux|combined|f[0]~2_combout\);

-- Location: LCCOMB_X20_Y8_N28
\DP|ALU|arith_unit|adder|sum[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|sum[0]~3_combout\ = \DP|rfout_sd_mux|combined|f[0]~3_combout\ $ (((\CU|ALU_FS\(1) & (\DP|IR|q\(0))) # (!\CU|ALU_FS\(1) & ((\DP|r0|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(1),
	datab => \DP|IR|q\(0),
	datac => \DP|r0|q\(0),
	datad => \DP|rfout_sd_mux|combined|f[0]~3_combout\,
	combout => \DP|ALU|arith_unit|adder|sum[0]~3_combout\);

-- Location: LCCOMB_X20_Y8_N10
\DP|ALU|result_mux|combined|f[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[0]~24_combout\ = (\CU|ALU_FS\(2) & ((\DP|ALU|logic_unit|logic_mux|combined|f[0]~2_combout\) # ((\CU|ALU_FS\(3))))) # (!\CU|ALU_FS\(2) & (((\DP|ALU|arith_unit|adder|sum[0]~3_combout\ & !\CU|ALU_FS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(2),
	datab => \DP|ALU|logic_unit|logic_mux|combined|f[0]~2_combout\,
	datac => \DP|ALU|arith_unit|adder|sum[0]~3_combout\,
	datad => \CU|ALU_FS\(3),
	combout => \DP|ALU|result_mux|combined|f[0]~24_combout\);

-- Location: LCCOMB_X20_Y8_N16
\DP|ALU|sr_unit|sr_mux|combined|f[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[0]~17_combout\ = (!\DP|IR|q\(0) & ((\DP|IR|q\(1) & ((\DP|stack|dout[2]~4_combout\))) # (!\DP|IR|q\(1) & (\DP|rfout_sd_mux|combined|f[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|rfout_sd_mux|combined|f[0]~3_combout\,
	datab => \DP|IR|q\(0),
	datac => \DP|IR|q\(1),
	datad => \DP|stack|dout[2]~4_combout\,
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[0]~17_combout\);

-- Location: LCCOMB_X20_Y8_N14
\DP|ALU|sr_unit|sr_mux|combined|f[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[0]~16_combout\ = (\DP|IR|q\(0) & ((\DP|IR|q\(1) & (\DP|stack|dout[3]~5_combout\)) # (!\DP|IR|q\(1) & ((\DP|stack|dout[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(0),
	datab => \DP|IR|q\(1),
	datac => \DP|stack|dout[3]~5_combout\,
	datad => \DP|stack|dout[1]~3_combout\,
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[0]~16_combout\);

-- Location: LCCOMB_X20_Y6_N14
\DP|ALU|sr_unit|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|Mux14~4_combout\ = (\DP|IR|q\(1) & (\DP|rfout_sd_mux|combined|f[7]~1_combout\)) # (!\DP|IR|q\(1) & ((\DP|rfout_sd_mux|combined|f[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(1),
	datac => \DP|rfout_sd_mux|combined|f[7]~1_combout\,
	datad => \DP|rfout_sd_mux|combined|f[0]~3_combout\,
	combout => \DP|ALU|sr_unit|Mux14~4_combout\);

-- Location: LCCOMB_X20_Y6_N8
\DP|ALU|sr_unit|sr_mux|combined|f[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[0]~14_combout\ = (\DP|IR|q\(0) & (((\DP|IR|q\(1) & \DP|stack|dout[6]~1_combout\)))) # (!\DP|IR|q\(0) & (\DP|ALU|sr_unit|Mux14~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(0),
	datab => \DP|ALU|sr_unit|Mux14~4_combout\,
	datac => \DP|IR|q\(1),
	datad => \DP|stack|dout[6]~1_combout\,
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[0]~14_combout\);

-- Location: LCCOMB_X20_Y8_N24
\DP|ALU|sr_unit|sr_mux|combined|f[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[0]~15_combout\ = (\CU|ALU_FS\(1) & ((\CU|ALU_FS\(0) & (\DP|r0|q\(0))) # (!\CU|ALU_FS\(0) & ((\DP|ALU|sr_unit|sr_mux|combined|f[0]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(1),
	datab => \DP|r0|q\(0),
	datac => \CU|ALU_FS\(0),
	datad => \DP|ALU|sr_unit|sr_mux|combined|f[0]~14_combout\,
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[0]~15_combout\);

-- Location: LCCOMB_X20_Y8_N18
\DP|ALU|sr_unit|sr_mux|combined|f[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[0]~18_combout\ = (\DP|ALU|sr_unit|sr_mux|combined|f[0]~15_combout\) # ((!\CU|ALU_FS\(1) & ((\DP|ALU|sr_unit|sr_mux|combined|f[0]~17_combout\) # (\DP|ALU|sr_unit|sr_mux|combined|f[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(1),
	datab => \DP|ALU|sr_unit|sr_mux|combined|f[0]~17_combout\,
	datac => \DP|ALU|sr_unit|sr_mux|combined|f[0]~16_combout\,
	datad => \DP|ALU|sr_unit|sr_mux|combined|f[0]~15_combout\,
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[0]~18_combout\);

-- Location: LCCOMB_X20_Y8_N20
\DP|ALU|result_mux|combined|f[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[0]~25_combout\ = (\DP|ALU|result_mux|combined|f[0]~24_combout\ & ((\CU|ALU_FS\(0)) # ((!\CU|ALU_FS\(3))))) # (!\DP|ALU|result_mux|combined|f[0]~24_combout\ & (((\CU|ALU_FS\(3) & 
-- \DP|ALU|sr_unit|sr_mux|combined|f[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[0]~24_combout\,
	datab => \CU|ALU_FS\(0),
	datac => \CU|ALU_FS\(3),
	datad => \DP|ALU|sr_unit|sr_mux|combined|f[0]~18_combout\,
	combout => \DP|ALU|result_mux|combined|f[0]~25_combout\);

-- Location: LCCOMB_X19_Y6_N22
\DP|stack|tos3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos3~4_combout\ = (!\Reset~input_o\ & (\CU|push~q\ & \DP|stack|tos2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \CU|push~q\,
	datad => \DP|stack|tos2\(0),
	combout => \DP|stack|tos3~4_combout\);

-- Location: FF_X19_Y6_N23
\DP|stack|tos3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos3~4_combout\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos3\(0));

-- Location: LCCOMB_X19_Y6_N2
\DP|stack|tos2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos2~5_combout\ = (\CU|push~q\ & (\DP|stack|tos1\(0))) # (!\CU|push~q\ & ((\DP|stack|tos3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|push~q\,
	datac => \DP|stack|tos1\(0),
	datad => \DP|stack|tos3\(0),
	combout => \DP|stack|tos2~5_combout\);

-- Location: FF_X19_Y6_N3
\DP|stack|tos2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos2~5_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos2\(0));

-- Location: LCCOMB_X19_Y6_N26
\DP|stack|tos1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos1~4_combout\ = (\CU|push~q\ & ((\DP|stack|tos\(0)))) # (!\CU|push~q\ & (\DP|stack|tos2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|push~q\,
	datab => \DP|stack|tos2\(0),
	datac => \DP|stack|tos\(0),
	combout => \DP|stack|tos1~4_combout\);

-- Location: FF_X19_Y6_N27
\DP|stack|tos1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos1~4_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos1\(0));

-- Location: LCCOMB_X19_Y6_N14
\DP|stack|tos~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos~4_combout\ = (\CU|push~q\ & ((\DP|rfout_sd_mux|combined|f[0]~3_combout\))) # (!\CU|push~q\ & (\DP|stack|tos1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|tos1\(0),
	datac => \CU|push~q\,
	datad => \DP|rfout_sd_mux|combined|f[0]~3_combout\,
	combout => \DP|stack|tos~4_combout\);

-- Location: FF_X19_Y6_N15
\DP|stack|tos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos~4_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos\(0));

-- Location: LCCOMB_X20_Y6_N0
\DP|stack|dout~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|dout~7_combout\ = (\CU|push~q\ & ((\DP|rfout_sd_mux|combined|f[0]~3_combout\))) # (!\CU|push~q\ & (\DP|stack|tos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|tos\(0),
	datab => \CU|push~q\,
	datad => \DP|rfout_sd_mux|combined|f[0]~3_combout\,
	combout => \DP|stack|dout~7_combout\);

-- Location: FF_X20_Y6_N1
\DP|stack|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|dout~7_combout\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|dout\(0));

-- Location: LCCOMB_X21_Y7_N26
\DP|r0|q~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~13_combout\ = (\CU|WB_SEL\(1) & ((\CU|WB_SEL\(0) & (\DP|stack|dout\(0))) # (!\CU|WB_SEL\(0) & ((\DP|MM|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WB_SEL\(1),
	datab => \CU|WB_SEL\(0),
	datac => \DP|stack|dout\(0),
	datad => \DP|MM|altsyncram_component|auto_generated|q_a\(0),
	combout => \DP|r0|q~13_combout\);

-- Location: LCCOMB_X20_Y7_N14
\DP|r0|q~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~14_combout\ = (!\Reset~input_o\ & ((\DP|r0|q~13_combout\) # ((\DP|ALU|result_mux|combined|f[0]~25_combout\ & \DP|r0|q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[0]~25_combout\,
	datab => \DP|r0|q~1_combout\,
	datac => \Reset~input_o\,
	datad => \DP|r0|q~13_combout\,
	combout => \DP|r0|q~14_combout\);

-- Location: FF_X20_Y8_N29
\DP|r0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~14_combout\,
	sload => VCC,
	ena => \DP|r0|q[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r0|q\(0));

-- Location: LCCOMB_X20_Y8_N30
\DP|ALU|arith_unit|yselect_mux|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|yselect_mux|f[0]~0_combout\ = (\CU|ALU_FS\(1) & ((\DP|IR|q\(0)))) # (!\CU|ALU_FS\(1) & (\DP|r0|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|r0|q\(0),
	datac => \DP|IR|q\(0),
	datad => \CU|ALU_FS\(1),
	combout => \DP|ALU|arith_unit|yselect_mux|f[0]~0_combout\);

-- Location: LCCOMB_X20_Y7_N10
\DP|ALU|arith_unit|adder|c[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|c[1]~1_combout\ = (\DP|ALU|arith_unit|yselect_mux|f[0]~0_combout\ & ((\DP|rfout_sd_mux|combined|f[0]~3_combout\))) # (!\DP|ALU|arith_unit|yselect_mux|f[0]~0_combout\ & (\CU|ALU_FS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(0),
	datac => \DP|ALU|arith_unit|yselect_mux|f[0]~0_combout\,
	datad => \DP|rfout_sd_mux|combined|f[0]~3_combout\,
	combout => \DP|ALU|arith_unit|adder|c[1]~1_combout\);

-- Location: LCCOMB_X24_Y7_N4
\DP|ALU|arith_unit|adder|sum[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|sum[1]~2_combout\ = \DP|ALU|arith_unit|adder|c~2_combout\ $ (\DP|stack|dout[1]~3_combout\ $ (\DP|ALU|arith_unit|adder|c[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|arith_unit|adder|c~2_combout\,
	datab => \DP|stack|dout[1]~3_combout\,
	datad => \DP|ALU|arith_unit|adder|c[1]~1_combout\,
	combout => \DP|ALU|arith_unit|adder|sum[1]~2_combout\);

-- Location: LCCOMB_X23_Y8_N30
\DP|ALU|sr_unit|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|Mux14~5_combout\ = (\DP|IR|q\(1) & ((\DP|stack|dout[4]~2_combout\))) # (!\DP|IR|q\(1) & (\DP|stack|dout[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|IR|q\(1),
	datac => \DP|stack|dout[2]~4_combout\,
	datad => \DP|stack|dout[4]~2_combout\,
	combout => \DP|ALU|sr_unit|Mux14~5_combout\);

-- Location: LCCOMB_X23_Y8_N6
\DP|ALU|result_mux|combined|f[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[4]~18_combout\ = (\CU|ALU_FS\(0)) # (!\CU|ALU_FS\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|ALU_FS\(1),
	datad => \CU|ALU_FS\(0),
	combout => \DP|ALU|result_mux|combined|f[4]~18_combout\);

-- Location: LCCOMB_X23_Y6_N20
\DP|ALU|sr_unit|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|Mux14~6_combout\ = (\DP|IR|q\(1) & ((\DP|stack|dout[3]~5_combout\))) # (!\DP|IR|q\(1) & (\DP|stack|dout[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(1),
	datac => \DP|stack|dout[1]~3_combout\,
	datad => \DP|stack|dout[3]~5_combout\,
	combout => \DP|ALU|sr_unit|Mux14~6_combout\);

-- Location: LCCOMB_X20_Y6_N22
\DP|ALU|result_mux|combined|f[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[4]~17_combout\ = (\CU|ALU_FS\(1) & ((\CU|ALU_FS\(0)) # (\DP|IR|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(0),
	datac => \DP|IR|q\(0),
	datad => \CU|ALU_FS\(1),
	combout => \DP|ALU|result_mux|combined|f[4]~17_combout\);

-- Location: LCCOMB_X20_Y6_N26
\DP|ALU|sr_unit|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|Mux14~7_combout\ = (!\DP|IR|q\(1) & \DP|stack|dout[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DP|IR|q\(1),
	datad => \DP|stack|dout[1]~3_combout\,
	combout => \DP|ALU|sr_unit|Mux14~7_combout\);

-- Location: LCCOMB_X24_Y6_N12
\DP|ALU|result_mux|combined|f[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[1]~26_combout\ = (\DP|ALU|result_mux|combined|f[4]~18_combout\ & (\DP|ALU|result_mux|combined|f[4]~17_combout\)) # (!\DP|ALU|result_mux|combined|f[4]~18_combout\ & ((\DP|ALU|result_mux|combined|f[4]~17_combout\ & 
-- (\DP|ALU|sr_unit|Mux14~4_combout\)) # (!\DP|ALU|result_mux|combined|f[4]~17_combout\ & ((\DP|ALU|sr_unit|Mux14~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[4]~18_combout\,
	datab => \DP|ALU|result_mux|combined|f[4]~17_combout\,
	datac => \DP|ALU|sr_unit|Mux14~4_combout\,
	datad => \DP|ALU|sr_unit|Mux14~7_combout\,
	combout => \DP|ALU|result_mux|combined|f[1]~26_combout\);

-- Location: LCCOMB_X24_Y6_N14
\DP|ALU|result_mux|combined|f[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[1]~27_combout\ = (\DP|ALU|result_mux|combined|f[4]~18_combout\ & ((\DP|ALU|result_mux|combined|f[1]~26_combout\ & ((\DP|r0|q\(1)))) # (!\DP|ALU|result_mux|combined|f[1]~26_combout\ & (\DP|ALU|sr_unit|Mux14~6_combout\)))) # 
-- (!\DP|ALU|result_mux|combined|f[4]~18_combout\ & (((\DP|ALU|result_mux|combined|f[1]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[4]~18_combout\,
	datab => \DP|ALU|sr_unit|Mux14~6_combout\,
	datac => \DP|r0|q\(1),
	datad => \DP|ALU|result_mux|combined|f[1]~26_combout\,
	combout => \DP|ALU|result_mux|combined|f[1]~27_combout\);

-- Location: LCCOMB_X24_Y6_N0
\DP|ALU|result_mux|combined|f[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[1]~28_combout\ = (\DP|ALU|result_mux|combined|f[4]~15_combout\ & ((\DP|ALU|sr_unit|Mux14~5_combout\) # ((\DP|ALU|result_mux|combined|f[4]~16_combout\)))) # (!\DP|ALU|result_mux|combined|f[4]~15_combout\ & 
-- (((\DP|ALU|result_mux|combined|f[1]~27_combout\ & !\DP|ALU|result_mux|combined|f[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[4]~15_combout\,
	datab => \DP|ALU|sr_unit|Mux14~5_combout\,
	datac => \DP|ALU|result_mux|combined|f[1]~27_combout\,
	datad => \DP|ALU|result_mux|combined|f[4]~16_combout\,
	combout => \DP|ALU|result_mux|combined|f[1]~28_combout\);

-- Location: LCCOMB_X24_Y6_N22
\DP|ALU|result_mux|combined|f[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[1]~29_combout\ = (\DP|ALU|result_mux|combined|f[4]~16_combout\ & ((\DP|ALU|result_mux|combined|f[1]~28_combout\ & (\CU|ALU_FS\(1))) # (!\DP|ALU|result_mux|combined|f[1]~28_combout\ & 
-- ((\DP|ALU|arith_unit|adder|sum[1]~2_combout\))))) # (!\DP|ALU|result_mux|combined|f[4]~16_combout\ & (((\DP|ALU|result_mux|combined|f[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[4]~16_combout\,
	datab => \CU|ALU_FS\(1),
	datac => \DP|ALU|arith_unit|adder|sum[1]~2_combout\,
	datad => \DP|ALU|result_mux|combined|f[1]~28_combout\,
	combout => \DP|ALU|result_mux|combined|f[1]~29_combout\);

-- Location: LCCOMB_X23_Y6_N0
\DP|r0|q~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~15_combout\ = (\CU|ALU_FS\(3) & (((\DP|ALU|result_mux|combined|f[1]~29_combout\)))) # (!\CU|ALU_FS\(3) & ((\CU|ALU_FS\(2) & (\DP|ALU|result_mux|combined|f[1]~30_combout\)) # (!\CU|ALU_FS\(2) & ((\DP|ALU|result_mux|combined|f[1]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(3),
	datab => \CU|ALU_FS\(2),
	datac => \DP|ALU|result_mux|combined|f[1]~30_combout\,
	datad => \DP|ALU|result_mux|combined|f[1]~29_combout\,
	combout => \DP|r0|q~15_combout\);

-- Location: LCCOMB_X23_Y6_N10
\DP|r0|q~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~16_combout\ = (\CU|WB_SEL\(0) & ((\CU|WB_SEL\(1) & (\DP|stack|dout\(1))) # (!\CU|WB_SEL\(1) & ((\DP|r0|q~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|dout\(1),
	datab => \CU|WB_SEL\(1),
	datac => \CU|WB_SEL\(0),
	datad => \DP|r0|q~15_combout\,
	combout => \DP|r0|q~16_combout\);

-- Location: LCCOMB_X23_Y7_N2
\DP|r0|q~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~17_combout\ = (!\Reset~input_o\ & ((\DP|r0|q~16_combout\) # ((\DP|r0|q~11_combout\ & \DP|MM|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r0|q~11_combout\,
	datab => \Reset~input_o\,
	datac => \DP|r0|q~16_combout\,
	datad => \DP|MM|altsyncram_component|auto_generated|q_a\(1),
	combout => \DP|r0|q~17_combout\);

-- Location: FF_X23_Y7_N25
\DP|r0|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~17_combout\,
	sload => VCC,
	ena => \DP|r0|q[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r0|q\(1));

-- Location: LCCOMB_X23_Y7_N10
\DP|ALU|arith_unit|adder|c~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|c~2_combout\ = \CU|ALU_FS\(0) $ (((\CU|ALU_FS\(1) & (\DP|IR|q\(1))) # (!\CU|ALU_FS\(1) & ((\DP|r0|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(1),
	datab => \DP|r0|q\(1),
	datac => \CU|ALU_FS\(0),
	datad => \CU|ALU_FS\(1),
	combout => \DP|ALU|arith_unit|adder|c~2_combout\);

-- Location: FF_X24_Y7_N3
\DP|r1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~17_combout\,
	sload => VCC,
	ena => \DP|r1|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r1|q\(1));

-- Location: LCCOMB_X24_Y7_N2
\DP|rfout_sd_mux|combined|f~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|combined|f~10_combout\ = (!\CU|RF_SD_OS\(1) & ((\CU|RF_SD_OS\(0) & ((\DP|r1|q\(1)))) # (!\CU|RF_SD_OS\(0) & (\DP|r0|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(1),
	datab => \DP|r0|q\(1),
	datac => \DP|r1|q\(1),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|combined|f~10_combout\);

-- Location: FF_X23_Y7_N3
\DP|r2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|r0|q~17_combout\,
	ena => \DP|r2|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r2|q\(1));

-- Location: FF_X24_Y7_N17
\DP|r3|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~17_combout\,
	sload => VCC,
	ena => \DP|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r3|q\(1));

-- Location: LCCOMB_X24_Y7_N16
\DP|rfout_sd_mux|combined|f~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|combined|f~11_combout\ = (\CU|RF_SD_OS\(1) & ((\CU|RF_SD_OS\(0) & ((\DP|r3|q\(1)))) # (!\CU|RF_SD_OS\(0) & (\DP|r2|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(1),
	datab => \DP|r2|q\(1),
	datac => \DP|r3|q\(1),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|combined|f~11_combout\);

-- Location: LCCOMB_X24_Y7_N18
\DP|ALU|arith_unit|adder|c[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|c[2]~3_combout\ = (\DP|ALU|arith_unit|adder|c~2_combout\ & ((\DP|rfout_sd_mux|combined|f~10_combout\) # ((\DP|rfout_sd_mux|combined|f~11_combout\) # (\DP|ALU|arith_unit|adder|c[1]~1_combout\)))) # 
-- (!\DP|ALU|arith_unit|adder|c~2_combout\ & (\DP|ALU|arith_unit|adder|c[1]~1_combout\ & ((\DP|rfout_sd_mux|combined|f~10_combout\) # (\DP|rfout_sd_mux|combined|f~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|arith_unit|adder|c~2_combout\,
	datab => \DP|rfout_sd_mux|combined|f~10_combout\,
	datac => \DP|rfout_sd_mux|combined|f~11_combout\,
	datad => \DP|ALU|arith_unit|adder|c[1]~1_combout\,
	combout => \DP|ALU|arith_unit|adder|c[2]~3_combout\);

-- Location: LCCOMB_X24_Y7_N24
\DP|ALU|arith_unit|adder|c[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|c[3]~5_combout\ = (\DP|ALU|arith_unit|adder|c~4_combout\ & ((\DP|rfout_sd_mux|combined|f~8_combout\) # ((\DP|rfout_sd_mux|combined|f~9_combout\) # (\DP|ALU|arith_unit|adder|c[2]~3_combout\)))) # 
-- (!\DP|ALU|arith_unit|adder|c~4_combout\ & (\DP|ALU|arith_unit|adder|c[2]~3_combout\ & ((\DP|rfout_sd_mux|combined|f~8_combout\) # (\DP|rfout_sd_mux|combined|f~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|rfout_sd_mux|combined|f~8_combout\,
	datab => \DP|rfout_sd_mux|combined|f~9_combout\,
	datac => \DP|ALU|arith_unit|adder|c~4_combout\,
	datad => \DP|ALU|arith_unit|adder|c[2]~3_combout\,
	combout => \DP|ALU|arith_unit|adder|c[3]~5_combout\);

-- Location: LCCOMB_X24_Y7_N6
\DP|ALU|arith_unit|adder|c[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|c[4]~7_combout\ = (\DP|ALU|arith_unit|adder|c~6_combout\ & ((\DP|rfout_sd_mux|combined|f~7_combout\) # ((\DP|rfout_sd_mux|combined|f~6_combout\) # (\DP|ALU|arith_unit|adder|c[3]~5_combout\)))) # 
-- (!\DP|ALU|arith_unit|adder|c~6_combout\ & (\DP|ALU|arith_unit|adder|c[3]~5_combout\ & ((\DP|rfout_sd_mux|combined|f~7_combout\) # (\DP|rfout_sd_mux|combined|f~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|arith_unit|adder|c~6_combout\,
	datab => \DP|rfout_sd_mux|combined|f~7_combout\,
	datac => \DP|rfout_sd_mux|combined|f~6_combout\,
	datad => \DP|ALU|arith_unit|adder|c[3]~5_combout\,
	combout => \DP|ALU|arith_unit|adder|c[4]~7_combout\);

-- Location: LCCOMB_X20_Y7_N22
\DP|ALU|arith_unit|adder|c[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|c[5]~9_combout\ = (\DP|ALU|arith_unit|adder|c~8_combout\ & ((\DP|rfout_sd_mux|combined|f~5_combout\) # ((\DP|rfout_sd_mux|combined|f~4_combout\) # (\DP|ALU|arith_unit|adder|c[4]~7_combout\)))) # 
-- (!\DP|ALU|arith_unit|adder|c~8_combout\ & (\DP|ALU|arith_unit|adder|c[4]~7_combout\ & ((\DP|rfout_sd_mux|combined|f~5_combout\) # (\DP|rfout_sd_mux|combined|f~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|rfout_sd_mux|combined|f~5_combout\,
	datab => \DP|rfout_sd_mux|combined|f~4_combout\,
	datac => \DP|ALU|arith_unit|adder|c~8_combout\,
	datad => \DP|ALU|arith_unit|adder|c[4]~7_combout\,
	combout => \DP|ALU|arith_unit|adder|c[5]~9_combout\);

-- Location: LCCOMB_X19_Y7_N10
\DP|ALU|arith_unit|adder|sum[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|sum\(5) = \DP|stack|dout[5]~0_combout\ $ (\DP|ALU|arith_unit|adder|c~0_combout\ $ (\DP|ALU|arith_unit|adder|c[5]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|stack|dout[5]~0_combout\,
	datac => \DP|ALU|arith_unit|adder|c~0_combout\,
	datad => \DP|ALU|arith_unit|adder|c[5]~9_combout\,
	combout => \DP|ALU|arith_unit|adder|sum\(5));

-- Location: LCCOMB_X18_Y7_N4
\DP|ALU|sr_unit|sr_mux|combined|f[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[5]~3_combout\ = (\DP|stack|dout[5]~0_combout\ & (!\DP|IR|q\(0) & ((!\CU|ALU_FS\(1)) # (!\CU|ALU_FS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|dout[5]~0_combout\,
	datab => \CU|ALU_FS\(0),
	datac => \DP|IR|q\(0),
	datad => \CU|ALU_FS\(1),
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[5]~3_combout\);

-- Location: LCCOMB_X18_Y7_N30
\DP|ALU|sr_unit|sr_mux|combined|f[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[5]~4_combout\ = (\DP|ALU|sr_unit|sr_mux|combined|f[5]~3_combout\) # ((\DP|IR|q\(0) & (\DP|stack|dout[6]~1_combout\ & !\CU|ALU_FS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(0),
	datab => \DP|ALU|sr_unit|sr_mux|combined|f[5]~3_combout\,
	datac => \DP|stack|dout[6]~1_combout\,
	datad => \CU|ALU_FS\(1),
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[5]~4_combout\);

-- Location: LCCOMB_X23_Y8_N8
\DP|ALU|sr_unit|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|Mux14~0_combout\ = (\DP|IR|q\(1) & (\DP|stack|dout[2]~4_combout\)) # (!\DP|IR|q\(1) & ((\DP|stack|dout[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|IR|q\(1),
	datac => \DP|stack|dout[2]~4_combout\,
	datad => \DP|stack|dout[4]~2_combout\,
	combout => \DP|ALU|sr_unit|Mux14~0_combout\);

-- Location: LCCOMB_X18_Y7_N14
\DP|ALU|sr_unit|sr_mux|combined|f[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[5]~0_combout\ = (\DP|IR|q\(0) & (((\DP|ALU|sr_unit|Mux14~0_combout\)))) # (!\DP|IR|q\(0) & (\DP|stack|dout[3]~5_combout\ & (\DP|IR|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(0),
	datab => \DP|stack|dout[3]~5_combout\,
	datac => \DP|IR|q\(1),
	datad => \DP|ALU|sr_unit|Mux14~0_combout\,
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[5]~0_combout\);

-- Location: LCCOMB_X18_Y7_N28
\DP|ALU|sr_unit|sr_mux|combined|f[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[5]~1_combout\ = (\CU|ALU_FS\(1) & ((\CU|ALU_FS\(0) & (\DP|r0|q\(5))) # (!\CU|ALU_FS\(0) & ((\DP|ALU|sr_unit|sr_mux|combined|f[5]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(1),
	datab => \DP|r0|q\(5),
	datac => \DP|ALU|sr_unit|sr_mux|combined|f[5]~0_combout\,
	datad => \CU|ALU_FS\(0),
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[5]~1_combout\);

-- Location: LCCOMB_X18_Y7_N8
\DP|ALU|sr_unit|sr_mux|combined|f[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|sr_mux|combined|f[5]~5_combout\ = (\DP|ALU|sr_unit|sr_mux|combined|f[5]~1_combout\) # ((\DP|IR|q\(1) & ((\DP|ALU|sr_unit|sr_mux|combined|f[5]~2_combout\))) # (!\DP|IR|q\(1) & (\DP|ALU|sr_unit|sr_mux|combined|f[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|sr_unit|sr_mux|combined|f[5]~4_combout\,
	datab => \DP|ALU|sr_unit|sr_mux|combined|f[5]~2_combout\,
	datac => \DP|IR|q\(1),
	datad => \DP|ALU|sr_unit|sr_mux|combined|f[5]~1_combout\,
	combout => \DP|ALU|sr_unit|sr_mux|combined|f[5]~5_combout\);

-- Location: LCCOMB_X19_Y7_N16
\DP|ALU|result_mux|combined|f[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[5]~0_combout\ = (\CU|ALU_FS\(2) & (\CU|ALU_FS\(3))) # (!\CU|ALU_FS\(2) & ((\CU|ALU_FS\(3) & ((\DP|ALU|sr_unit|sr_mux|combined|f[5]~5_combout\))) # (!\CU|ALU_FS\(3) & (\DP|ALU|arith_unit|adder|sum\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(2),
	datab => \CU|ALU_FS\(3),
	datac => \DP|ALU|arith_unit|adder|sum\(5),
	datad => \DP|ALU|sr_unit|sr_mux|combined|f[5]~5_combout\,
	combout => \DP|ALU|result_mux|combined|f[5]~0_combout\);

-- Location: LCCOMB_X19_Y7_N14
\DP|ALU|result_mux|combined|f[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[5]~1_combout\ = (\CU|ALU_FS\(2) & ((\DP|ALU|result_mux|combined|f[5]~0_combout\ & (\CU|ALU_FS\(1))) # (!\DP|ALU|result_mux|combined|f[5]~0_combout\ & ((\DP|ALU|logic_unit|logic_mux|combined|f[5]~0_combout\))))) # 
-- (!\CU|ALU_FS\(2) & (((\DP|ALU|result_mux|combined|f[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(2),
	datab => \CU|ALU_FS\(1),
	datac => \DP|ALU|logic_unit|logic_mux|combined|f[5]~0_combout\,
	datad => \DP|ALU|result_mux|combined|f[5]~0_combout\,
	combout => \DP|ALU|result_mux|combined|f[5]~1_combout\);

-- Location: LCCOMB_X20_Y6_N12
\DP|stack|dout[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|dout[5]~feeder_combout\ = \DP|stack|dout[5]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|stack|dout[5]~0_combout\,
	combout => \DP|stack|dout[5]~feeder_combout\);

-- Location: LCCOMB_X19_Y6_N20
\DP|stack|tos3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos3~0_combout\ = (\CU|push~q\ & (!\Reset~input_o\ & \DP|stack|tos2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|push~q\,
	datab => \Reset~input_o\,
	datac => \DP|stack|tos2\(5),
	combout => \DP|stack|tos3~0_combout\);

-- Location: FF_X19_Y6_N21
\DP|stack|tos3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos3~0_combout\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos3\(5));

-- Location: LCCOMB_X19_Y6_N8
\DP|stack|tos2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos2~1_combout\ = (\CU|push~q\ & ((\DP|stack|tos1\(5)))) # (!\CU|push~q\ & (\DP|stack|tos3\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|stack|tos3\(5),
	datac => \CU|push~q\,
	datad => \DP|stack|tos1\(5),
	combout => \DP|stack|tos2~1_combout\);

-- Location: FF_X19_Y6_N9
\DP|stack|tos2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos2~1_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos2\(5));

-- Location: LCCOMB_X19_Y6_N24
\DP|stack|tos1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos1~0_combout\ = (\CU|push~q\ & ((\DP|stack|tos\(5)))) # (!\CU|push~q\ & (\DP|stack|tos2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|stack|tos2\(5),
	datac => \CU|push~q\,
	datad => \DP|stack|tos\(5),
	combout => \DP|stack|tos1~0_combout\);

-- Location: FF_X19_Y6_N25
\DP|stack|tos1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos1~0_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos1\(5));

-- Location: LCCOMB_X19_Y6_N16
\DP|stack|tos~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos~0_combout\ = (\CU|push~q\ & ((\DP|stack|dout[5]~0_combout\))) # (!\CU|push~q\ & (\DP|stack|tos1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|stack|tos1\(5),
	datac => \CU|push~q\,
	datad => \DP|stack|dout[5]~0_combout\,
	combout => \DP|stack|tos~0_combout\);

-- Location: FF_X19_Y6_N17
\DP|stack|tos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos~0_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos\(5));

-- Location: FF_X20_Y6_N13
\DP|stack|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|dout[5]~feeder_combout\,
	asdata => \DP|stack|tos\(5),
	sload => \CU|ALT_INV_push~q\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|dout\(5));

-- Location: LCCOMB_X19_Y7_N12
\DP|r0|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~0_combout\ = (\CU|WB_SEL\(1) & ((\CU|WB_SEL\(0) & (\DP|stack|dout\(5))) # (!\CU|WB_SEL\(0) & ((\DP|MM|altsyncram_component|auto_generated|q_a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WB_SEL\(1),
	datab => \DP|stack|dout\(5),
	datac => \CU|WB_SEL\(0),
	datad => \DP|MM|altsyncram_component|auto_generated|q_a\(5),
	combout => \DP|r0|q~0_combout\);

-- Location: LCCOMB_X19_Y7_N4
\DP|r0|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~2_combout\ = (!\Reset~input_o\ & ((\DP|r0|q~0_combout\) # ((\DP|r0|q~1_combout\ & \DP|ALU|result_mux|combined|f[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \DP|r0|q~1_combout\,
	datac => \DP|ALU|result_mux|combined|f[5]~1_combout\,
	datad => \DP|r0|q~0_combout\,
	combout => \DP|r0|q~2_combout\);

-- Location: FF_X19_Y7_N5
\DP|r2|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|r0|q~2_combout\,
	ena => \DP|r2|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r2|q\(5));

-- Location: LCCOMB_X20_Y7_N2
\DP|rfout_sd_mux|upper_bits|f[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|upper_bits|f[5]~0_combout\ = (\CU|RF_SD_OS\(0) & ((\DP|r3|q\(5)))) # (!\CU|RF_SD_OS\(0) & (\DP|r2|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r2|q\(5),
	datac => \DP|r3|q\(5),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|upper_bits|f[5]~0_combout\);

-- Location: LCCOMB_X19_Y7_N18
\DP|rfout_sd_mux|lower_bits|f[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|lower_bits|f[5]~0_combout\ = (\CU|RF_SD_OS\(0) & (\DP|r1|q\(5))) # (!\CU|RF_SD_OS\(0) & ((\DP|r0|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|r1|q\(5),
	datac => \DP|r0|q\(5),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|lower_bits|f[5]~0_combout\);

-- Location: LCCOMB_X20_Y7_N24
\DP|stack|dout[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|dout[5]~0_combout\ = (\CU|RF_SD_OS\(1) & (\DP|rfout_sd_mux|upper_bits|f[5]~0_combout\)) # (!\CU|RF_SD_OS\(1) & ((\DP|rfout_sd_mux|lower_bits|f[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|rfout_sd_mux|upper_bits|f[5]~0_combout\,
	datac => \CU|RF_SD_OS\(1),
	datad => \DP|rfout_sd_mux|lower_bits|f[5]~0_combout\,
	combout => \DP|stack|dout[5]~0_combout\);

-- Location: LCCOMB_X17_Y7_N0
\DP|IR|q~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|IR|q~5_combout\ = (!\Reset~input_o\ & \DP|MM|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \DP|MM|altsyncram_component|auto_generated|q_a\(0),
	combout => \DP|IR|q~5_combout\);

-- Location: FF_X17_Y7_N1
\DP|IR|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|IR|q~5_combout\,
	ena => \DP|IR|q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IR|q\(0));

-- Location: LCCOMB_X23_Y6_N16
\DP|ALU|result_mux|combined|f[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[4]~15_combout\ = (\CU|ALU_FS\(3) & ((\CU|ALU_FS\(2)) # ((\DP|IR|q\(0) & !\CU|ALU_FS\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(2),
	datab => \DP|IR|q\(0),
	datac => \CU|ALU_FS\(3),
	datad => \CU|ALU_FS\(1),
	combout => \DP|ALU|result_mux|combined|f[4]~15_combout\);

-- Location: LCCOMB_X20_Y6_N20
\DP|ALU|sr_unit|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|Mux14~1_combout\ = (\DP|IR|q\(1) & (\DP|rfout_sd_mux|combined|f[7]~1_combout\)) # (!\DP|IR|q\(1) & ((\DP|stack|dout[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|rfout_sd_mux|combined|f[7]~1_combout\,
	datab => \DP|stack|dout[5]~0_combout\,
	datac => \DP|IR|q\(1),
	combout => \DP|ALU|sr_unit|Mux14~1_combout\);

-- Location: LCCOMB_X23_Y6_N26
\DP|ALU|sr_unit|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|Mux14~3_combout\ = (\DP|IR|q\(1) & (\DP|stack|dout[6]~1_combout\)) # (!\DP|IR|q\(1) & ((\DP|stack|dout[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(1),
	datac => \DP|stack|dout[6]~1_combout\,
	datad => \DP|stack|dout[4]~2_combout\,
	combout => \DP|ALU|sr_unit|Mux14~3_combout\);

-- Location: LCCOMB_X24_Y6_N8
\DP|ALU|result_mux|combined|f[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[4]~19_combout\ = (\DP|ALU|result_mux|combined|f[4]~18_combout\ & ((\DP|ALU|result_mux|combined|f[4]~17_combout\) # ((\DP|ALU|sr_unit|Mux14~3_combout\)))) # (!\DP|ALU|result_mux|combined|f[4]~18_combout\ & 
-- (!\DP|ALU|result_mux|combined|f[4]~17_combout\ & ((\DP|ALU|sr_unit|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[4]~18_combout\,
	datab => \DP|ALU|result_mux|combined|f[4]~17_combout\,
	datac => \DP|ALU|sr_unit|Mux14~3_combout\,
	datad => \DP|ALU|sr_unit|Mux14~0_combout\,
	combout => \DP|ALU|result_mux|combined|f[4]~19_combout\);

-- Location: LCCOMB_X23_Y6_N12
\DP|ALU|sr_unit|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|Mux14~2_combout\ = (\DP|IR|q\(1) & (\DP|stack|dout[1]~3_combout\)) # (!\DP|IR|q\(1) & ((\DP|stack|dout[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(1),
	datac => \DP|stack|dout[1]~3_combout\,
	datad => \DP|stack|dout[3]~5_combout\,
	combout => \DP|ALU|sr_unit|Mux14~2_combout\);

-- Location: LCCOMB_X24_Y6_N30
\DP|ALU|result_mux|combined|f[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[4]~20_combout\ = (\DP|ALU|result_mux|combined|f[4]~17_combout\ & ((\DP|ALU|result_mux|combined|f[4]~19_combout\ & (\DP|r0|q\(4))) # (!\DP|ALU|result_mux|combined|f[4]~19_combout\ & ((\DP|ALU|sr_unit|Mux14~2_combout\))))) # 
-- (!\DP|ALU|result_mux|combined|f[4]~17_combout\ & (((\DP|ALU|result_mux|combined|f[4]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r0|q\(4),
	datab => \DP|ALU|result_mux|combined|f[4]~17_combout\,
	datac => \DP|ALU|result_mux|combined|f[4]~19_combout\,
	datad => \DP|ALU|sr_unit|Mux14~2_combout\,
	combout => \DP|ALU|result_mux|combined|f[4]~20_combout\);

-- Location: LCCOMB_X20_Y7_N28
\DP|ALU|arith_unit|adder|sum[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|sum\(4) = \DP|ALU|arith_unit|adder|c~8_combout\ $ (\DP|stack|dout[4]~2_combout\ $ (\DP|ALU|arith_unit|adder|c[4]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|ALU|arith_unit|adder|c~8_combout\,
	datac => \DP|stack|dout[4]~2_combout\,
	datad => \DP|ALU|arith_unit|adder|c[4]~7_combout\,
	combout => \DP|ALU|arith_unit|adder|sum\(4));

-- Location: LCCOMB_X24_Y6_N24
\DP|ALU|result_mux|combined|f[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[4]~21_combout\ = (\DP|ALU|result_mux|combined|f[4]~16_combout\ & ((\DP|ALU|result_mux|combined|f[4]~15_combout\) # ((\DP|ALU|arith_unit|adder|sum\(4))))) # (!\DP|ALU|result_mux|combined|f[4]~16_combout\ & 
-- (!\DP|ALU|result_mux|combined|f[4]~15_combout\ & (\DP|ALU|result_mux|combined|f[4]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[4]~16_combout\,
	datab => \DP|ALU|result_mux|combined|f[4]~15_combout\,
	datac => \DP|ALU|result_mux|combined|f[4]~20_combout\,
	datad => \DP|ALU|arith_unit|adder|sum\(4),
	combout => \DP|ALU|result_mux|combined|f[4]~21_combout\);

-- Location: LCCOMB_X24_Y6_N6
\DP|ALU|result_mux|combined|f[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[4]~22_combout\ = (\DP|ALU|result_mux|combined|f[4]~15_combout\ & ((\DP|ALU|result_mux|combined|f[4]~21_combout\ & (\CU|ALU_FS\(0))) # (!\DP|ALU|result_mux|combined|f[4]~21_combout\ & ((\DP|ALU|sr_unit|Mux14~1_combout\))))) # 
-- (!\DP|ALU|result_mux|combined|f[4]~15_combout\ & (((\DP|ALU|result_mux|combined|f[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[4]~15_combout\,
	datab => \CU|ALU_FS\(0),
	datac => \DP|ALU|sr_unit|Mux14~1_combout\,
	datad => \DP|ALU|result_mux|combined|f[4]~21_combout\,
	combout => \DP|ALU|result_mux|combined|f[4]~22_combout\);

-- Location: LCCOMB_X23_Y7_N0
\DP|r0|q~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~9_combout\ = (\CU|ALU_FS\(3) & (((\DP|ALU|result_mux|combined|f[4]~22_combout\)))) # (!\CU|ALU_FS\(3) & ((\CU|ALU_FS\(2) & (\DP|ALU|result_mux|combined|f[4]~23_combout\)) # (!\CU|ALU_FS\(2) & ((\DP|ALU|result_mux|combined|f[4]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(3),
	datab => \DP|ALU|result_mux|combined|f[4]~23_combout\,
	datac => \CU|ALU_FS\(2),
	datad => \DP|ALU|result_mux|combined|f[4]~22_combout\,
	combout => \DP|r0|q~9_combout\);

-- Location: LCCOMB_X23_Y7_N18
\DP|r0|q~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~10_combout\ = (\CU|WB_SEL\(0) & ((\CU|WB_SEL\(1) & (\DP|stack|dout\(4))) # (!\CU|WB_SEL\(1) & ((\DP|r0|q~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|dout\(4),
	datab => \CU|WB_SEL\(0),
	datac => \CU|WB_SEL\(1),
	datad => \DP|r0|q~9_combout\,
	combout => \DP|r0|q~10_combout\);

-- Location: LCCOMB_X23_Y7_N6
\DP|r0|q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~12_combout\ = (!\Reset~input_o\ & ((\DP|r0|q~10_combout\) # ((\DP|r0|q~11_combout\ & \DP|MM|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r0|q~11_combout\,
	datab => \Reset~input_o\,
	datac => \DP|MM|altsyncram_component|auto_generated|q_a\(4),
	datad => \DP|r0|q~10_combout\,
	combout => \DP|r0|q~12_combout\);

-- Location: FF_X24_Y7_N5
\DP|r3|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~12_combout\,
	sload => VCC,
	ena => \DP|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r3|q\(4));

-- Location: LCCOMB_X23_Y7_N14
\DP|rfout_sd_mux|upper_bits|f[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|upper_bits|f[4]~2_combout\ = (\CU|RF_SD_OS\(0) & (\DP|r3|q\(4))) # (!\CU|RF_SD_OS\(0) & ((\DP|r2|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r3|q\(4),
	datab => \CU|RF_SD_OS\(0),
	datad => \DP|r2|q\(4),
	combout => \DP|rfout_sd_mux|upper_bits|f[4]~2_combout\);

-- Location: LCCOMB_X23_Y7_N8
\DP|rfout_sd_mux|lower_bits|f[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|lower_bits|f[4]~2_combout\ = (\CU|RF_SD_OS\(0) & (\DP|r1|q\(4))) # (!\CU|RF_SD_OS\(0) & ((\DP|r0|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|r1|q\(4),
	datac => \DP|r0|q\(4),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|lower_bits|f[4]~2_combout\);

-- Location: LCCOMB_X23_Y6_N24
\DP|stack|dout[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|dout[4]~2_combout\ = (\CU|RF_SD_OS\(1) & (\DP|rfout_sd_mux|upper_bits|f[4]~2_combout\)) # (!\CU|RF_SD_OS\(1) & ((\DP|rfout_sd_mux|lower_bits|f[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|rfout_sd_mux|upper_bits|f[4]~2_combout\,
	datab => \CU|RF_SD_OS\(1),
	datad => \DP|rfout_sd_mux|lower_bits|f[4]~2_combout\,
	combout => \DP|stack|dout[4]~2_combout\);

-- Location: LCCOMB_X17_Y7_N18
\DP|IR|q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|IR|q~4_combout\ = (!\Reset~input_o\ & \DP|MM|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \DP|MM|altsyncram_component|auto_generated|q_a\(4),
	combout => \DP|IR|q~4_combout\);

-- Location: FF_X17_Y7_N19
\DP|IR|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|IR|q~4_combout\,
	ena => \DP|IR|q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IR|q\(4));

-- Location: LCCOMB_X17_Y5_N24
\CU|opCode[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|opCode[0]~feeder_combout\ = \DP|IR|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DP|IR|q\(4),
	combout => \CU|opCode[0]~feeder_combout\);

-- Location: FF_X17_Y5_N25
\CU|opCode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|opCode[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|opCode\(0));

-- Location: LCCOMB_X17_Y5_N26
\CU|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|process_0~0_combout\ = (\CU|opCode\(3) & ((\CU|opCode\(2)) # ((\CU|opCode\(1) & \CU|opCode\(0))))) # (!\CU|opCode\(3) & (((\CU|opCode\(1) & !\CU|opCode\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|opCode\(2),
	datab => \CU|opCode\(3),
	datac => \CU|opCode\(1),
	datad => \CU|opCode\(0),
	combout => \CU|process_0~0_combout\);

-- Location: LCCOMB_X19_Y5_N24
\CU|WB_SEL~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|WB_SEL~2_combout\ = (!\Reset~input_o\ & \CU|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datad => \CU|process_0~0_combout\,
	combout => \CU|WB_SEL~2_combout\);

-- Location: FF_X19_Y5_N25
\CU|WB_SEL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|WB_SEL~2_combout\,
	ena => \CU|WB_SEL[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|WB_SEL\(1));

-- Location: LCCOMB_X21_Y6_N12
\DP|stack|tos3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos3~6_combout\ = (!\Reset~input_o\ & (\CU|push~q\ & \DP|stack|tos2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datac => \CU|push~q\,
	datad => \DP|stack|tos2\(3),
	combout => \DP|stack|tos3~6_combout\);

-- Location: FF_X21_Y6_N13
\DP|stack|tos3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos3~6_combout\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos3\(3));

-- Location: LCCOMB_X21_Y6_N20
\DP|stack|tos2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos2~7_combout\ = (\CU|push~q\ & ((\DP|stack|tos1\(3)))) # (!\CU|push~q\ & (\DP|stack|tos3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|tos3\(3),
	datac => \CU|push~q\,
	datad => \DP|stack|tos1\(3),
	combout => \DP|stack|tos2~7_combout\);

-- Location: FF_X21_Y6_N21
\DP|stack|tos2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos2~7_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos2\(3));

-- Location: LCCOMB_X21_Y6_N16
\DP|stack|tos1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos1~6_combout\ = (\CU|push~q\ & ((\DP|stack|tos\(3)))) # (!\CU|push~q\ & (\DP|stack|tos2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|stack|tos2\(3),
	datac => \CU|push~q\,
	datad => \DP|stack|tos\(3),
	combout => \DP|stack|tos1~6_combout\);

-- Location: FF_X21_Y6_N17
\DP|stack|tos1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos1~6_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos1\(3));

-- Location: LCCOMB_X21_Y6_N4
\DP|stack|tos~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos~6_combout\ = (\CU|push~q\ & ((\DP|stack|dout[3]~5_combout\))) # (!\CU|push~q\ & (\DP|stack|tos1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|push~q\,
	datab => \DP|stack|tos1\(3),
	datad => \DP|stack|dout[3]~5_combout\,
	combout => \DP|stack|tos~6_combout\);

-- Location: FF_X21_Y6_N5
\DP|stack|tos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos~6_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos\(3));

-- Location: FF_X23_Y6_N9
\DP|stack|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|dout[3]~5_combout\,
	asdata => \DP|stack|tos\(3),
	sload => \CU|ALT_INV_push~q\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|dout\(3));

-- Location: LCCOMB_X23_Y8_N0
\DP|ALU|result_mux|combined|f[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[3]~35_combout\ = (\DP|stack|dout[3]~5_combout\ & ((\CU|ALU_FS\(1)) # (\CU|ALU_FS\(0) $ (!\DP|r0|q\(3))))) # (!\DP|stack|dout[3]~5_combout\ & (!\CU|ALU_FS\(0) & ((\DP|r0|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(0),
	datab => \CU|ALU_FS\(1),
	datac => \DP|r0|q\(3),
	datad => \DP|stack|dout[3]~5_combout\,
	combout => \DP|ALU|result_mux|combined|f[3]~35_combout\);

-- Location: LCCOMB_X23_Y6_N4
\DP|ALU|arith_unit|adder|sum[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|sum\(3) = \DP|stack|dout[3]~5_combout\ $ (\DP|ALU|arith_unit|adder|c~6_combout\ $ (\DP|ALU|arith_unit|adder|c[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|dout[3]~5_combout\,
	datac => \DP|ALU|arith_unit|adder|c~6_combout\,
	datad => \DP|ALU|arith_unit|adder|c[3]~5_combout\,
	combout => \DP|ALU|arith_unit|adder|sum\(3));

-- Location: LCCOMB_X20_Y6_N16
\DP|ALU|sr_unit|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|Mux14~8_combout\ = (\DP|IR|q\(1) & (\DP|stack|dout[5]~0_combout\)) # (!\DP|IR|q\(1) & ((\DP|stack|dout[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(1),
	datab => \DP|stack|dout[5]~0_combout\,
	datad => \DP|stack|dout[3]~5_combout\,
	combout => \DP|ALU|sr_unit|Mux14~8_combout\);

-- Location: LCCOMB_X20_Y6_N6
\DP|ALU|sr_unit|Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|sr_unit|Mux14~9_combout\ = (\DP|IR|q\(1) & ((\DP|rfout_sd_mux|combined|f[0]~3_combout\))) # (!\DP|IR|q\(1) & (\DP|stack|dout[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(1),
	datac => \DP|stack|dout[2]~4_combout\,
	datad => \DP|rfout_sd_mux|combined|f[0]~3_combout\,
	combout => \DP|ALU|sr_unit|Mux14~9_combout\);

-- Location: LCCOMB_X24_Y6_N28
\DP|ALU|result_mux|combined|f[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[3]~31_combout\ = (\DP|ALU|result_mux|combined|f[4]~18_combout\ & (\DP|ALU|result_mux|combined|f[4]~17_combout\)) # (!\DP|ALU|result_mux|combined|f[4]~18_combout\ & ((\DP|ALU|result_mux|combined|f[4]~17_combout\ & 
-- (\DP|ALU|sr_unit|Mux14~9_combout\)) # (!\DP|ALU|result_mux|combined|f[4]~17_combout\ & ((\DP|ALU|sr_unit|Mux14~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[4]~18_combout\,
	datab => \DP|ALU|result_mux|combined|f[4]~17_combout\,
	datac => \DP|ALU|sr_unit|Mux14~9_combout\,
	datad => \DP|ALU|sr_unit|Mux14~2_combout\,
	combout => \DP|ALU|result_mux|combined|f[3]~31_combout\);

-- Location: LCCOMB_X24_Y6_N2
\DP|ALU|result_mux|combined|f[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[3]~32_combout\ = (\DP|ALU|result_mux|combined|f[4]~18_combout\ & ((\DP|ALU|result_mux|combined|f[3]~31_combout\ & (\DP|r0|q\(3))) # (!\DP|ALU|result_mux|combined|f[3]~31_combout\ & ((\DP|ALU|sr_unit|Mux14~8_combout\))))) # 
-- (!\DP|ALU|result_mux|combined|f[4]~18_combout\ & (((\DP|ALU|result_mux|combined|f[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[4]~18_combout\,
	datab => \DP|r0|q\(3),
	datac => \DP|ALU|sr_unit|Mux14~8_combout\,
	datad => \DP|ALU|result_mux|combined|f[3]~31_combout\,
	combout => \DP|ALU|result_mux|combined|f[3]~32_combout\);

-- Location: LCCOMB_X24_Y6_N16
\DP|ALU|result_mux|combined|f[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[3]~33_combout\ = (\DP|ALU|result_mux|combined|f[4]~16_combout\ & (\DP|ALU|result_mux|combined|f[4]~15_combout\)) # (!\DP|ALU|result_mux|combined|f[4]~16_combout\ & ((\DP|ALU|result_mux|combined|f[4]~15_combout\ & 
-- (\DP|ALU|sr_unit|Mux14~3_combout\)) # (!\DP|ALU|result_mux|combined|f[4]~15_combout\ & ((\DP|ALU|result_mux|combined|f[3]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[4]~16_combout\,
	datab => \DP|ALU|result_mux|combined|f[4]~15_combout\,
	datac => \DP|ALU|sr_unit|Mux14~3_combout\,
	datad => \DP|ALU|result_mux|combined|f[3]~32_combout\,
	combout => \DP|ALU|result_mux|combined|f[3]~33_combout\);

-- Location: LCCOMB_X23_Y6_N6
\DP|ALU|result_mux|combined|f[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[3]~34_combout\ = (\DP|ALU|result_mux|combined|f[4]~16_combout\ & ((\DP|ALU|result_mux|combined|f[3]~33_combout\ & (\CU|ALU_FS\(1))) # (!\DP|ALU|result_mux|combined|f[3]~33_combout\ & ((\DP|ALU|arith_unit|adder|sum\(3)))))) # 
-- (!\DP|ALU|result_mux|combined|f[4]~16_combout\ & (((\DP|ALU|result_mux|combined|f[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(1),
	datab => \DP|ALU|result_mux|combined|f[4]~16_combout\,
	datac => \DP|ALU|arith_unit|adder|sum\(3),
	datad => \DP|ALU|result_mux|combined|f[3]~33_combout\,
	combout => \DP|ALU|result_mux|combined|f[3]~34_combout\);

-- Location: LCCOMB_X23_Y6_N28
\DP|r0|q~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~18_combout\ = (\CU|ALU_FS\(2) & ((\CU|ALU_FS\(3) & ((\DP|ALU|result_mux|combined|f[3]~34_combout\))) # (!\CU|ALU_FS\(3) & (\DP|ALU|result_mux|combined|f[3]~35_combout\)))) # (!\CU|ALU_FS\(2) & (((\DP|ALU|result_mux|combined|f[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(2),
	datab => \DP|ALU|result_mux|combined|f[3]~35_combout\,
	datac => \CU|ALU_FS\(3),
	datad => \DP|ALU|result_mux|combined|f[3]~34_combout\,
	combout => \DP|r0|q~18_combout\);

-- Location: LCCOMB_X23_Y6_N14
\DP|r0|q~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~19_combout\ = (\CU|WB_SEL\(0) & ((\CU|WB_SEL\(1) & (\DP|stack|dout\(3))) # (!\CU|WB_SEL\(1) & ((\DP|r0|q~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WB_SEL\(0),
	datab => \CU|WB_SEL\(1),
	datac => \DP|stack|dout\(3),
	datad => \DP|r0|q~18_combout\,
	combout => \DP|r0|q~19_combout\);

-- Location: LCCOMB_X23_Y7_N26
\DP|r0|q~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~20_combout\ = (!\Reset~input_o\ & ((\DP|r0|q~19_combout\) # ((\DP|r0|q~11_combout\ & \DP|MM|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r0|q~11_combout\,
	datab => \Reset~input_o\,
	datac => \DP|r0|q~19_combout\,
	datad => \DP|MM|altsyncram_component|auto_generated|q_a\(3),
	combout => \DP|r0|q~20_combout\);

-- Location: FF_X23_Y7_N27
\DP|r2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|r0|q~20_combout\,
	ena => \DP|r2|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r2|q\(3));

-- Location: LCCOMB_X23_Y7_N24
\DP|rfout_sd_mux|upper_bits|f[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|upper_bits|f[3]~4_combout\ = (\CU|RF_SD_OS\(0) & ((\DP|r3|q\(3)))) # (!\CU|RF_SD_OS\(0) & (\DP|r2|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r2|q\(3),
	datab => \DP|r3|q\(3),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|upper_bits|f[3]~4_combout\);

-- Location: LCCOMB_X23_Y7_N20
\DP|rfout_sd_mux|lower_bits|f[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|lower_bits|f[3]~4_combout\ = (\CU|RF_SD_OS\(0) & (\DP|r1|q\(3))) # (!\CU|RF_SD_OS\(0) & ((\DP|r0|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r1|q\(3),
	datac => \DP|r0|q\(3),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|lower_bits|f[3]~4_combout\);

-- Location: LCCOMB_X23_Y6_N8
\DP|stack|dout[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|dout[3]~5_combout\ = (\CU|RF_SD_OS\(1) & (\DP|rfout_sd_mux|upper_bits|f[3]~4_combout\)) # (!\CU|RF_SD_OS\(1) & ((\DP|rfout_sd_mux|lower_bits|f[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(1),
	datab => \DP|rfout_sd_mux|upper_bits|f[3]~4_combout\,
	datad => \DP|rfout_sd_mux|lower_bits|f[3]~4_combout\,
	combout => \DP|stack|dout[3]~5_combout\);

-- Location: LCCOMB_X17_Y7_N12
\DP|IR|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|IR|q~0_combout\ = (!\Reset~input_o\ & \DP|MM|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \DP|MM|altsyncram_component|auto_generated|q_a\(5),
	combout => \DP|IR|q~0_combout\);

-- Location: FF_X17_Y7_N13
\DP|IR|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|IR|q~0_combout\,
	ena => \DP|IR|q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IR|q\(5));

-- Location: FF_X17_Y5_N15
\CU|opCode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|IR|q\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|opCode\(1));

-- Location: LCCOMB_X18_Y5_N6
\CU|WB_SEL[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|WB_SEL[1]~4_combout\ = (\CU|opCode\(1) & ((\CU|opCode\(3) $ (!\CU|opCode\(0))))) # (!\CU|opCode\(1) & (\CU|opCode\(2) & (\CU|opCode\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|opCode\(1),
	datab => \CU|opCode\(2),
	datac => \CU|opCode\(3),
	datad => \CU|opCode\(0),
	combout => \CU|WB_SEL[1]~4_combout\);

-- Location: LCCOMB_X18_Y5_N26
\CU|WB_SEL[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|WB_SEL[1]~3_combout\ = (\Reset~input_o\) # ((\CU|Equal0~1_combout\ & !\CU|WB_SEL[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Equal0~1_combout\,
	datac => \Reset~input_o\,
	datad => \CU|WB_SEL[1]~4_combout\,
	combout => \CU|WB_SEL[1]~3_combout\);

-- Location: FF_X19_Y5_N31
\CU|WB_SEL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|WB_SEL[0]~5_combout\,
	ena => \CU|WB_SEL[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|WB_SEL\(0));

-- Location: LCCOMB_X19_Y5_N20
\DP|r0|q~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~11_combout\ = (!\CU|WB_SEL\(0) & \CU|WB_SEL\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|WB_SEL\(0),
	datad => \CU|WB_SEL\(1),
	combout => \DP|r0|q~11_combout\);

-- Location: LCCOMB_X23_Y6_N18
\DP|stack|dout[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|dout[2]~feeder_combout\ = \DP|stack|dout[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|dout[2]~4_combout\,
	combout => \DP|stack|dout[2]~feeder_combout\);

-- Location: LCCOMB_X21_Y6_N26
\DP|stack|tos3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos3~7_combout\ = (!\Reset~input_o\ & (\CU|push~q\ & \DP|stack|tos2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datac => \CU|push~q\,
	datad => \DP|stack|tos2\(2),
	combout => \DP|stack|tos3~7_combout\);

-- Location: FF_X21_Y6_N27
\DP|stack|tos3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos3~7_combout\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos3\(2));

-- Location: LCCOMB_X21_Y6_N2
\DP|stack|tos2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos2~8_combout\ = (\CU|push~q\ & (\DP|stack|tos1\(2))) # (!\CU|push~q\ & ((\DP|stack|tos3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|push~q\,
	datac => \DP|stack|tos1\(2),
	datad => \DP|stack|tos3\(2),
	combout => \DP|stack|tos2~8_combout\);

-- Location: FF_X21_Y6_N3
\DP|stack|tos2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos2~8_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos2\(2));

-- Location: LCCOMB_X21_Y6_N30
\DP|stack|tos1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos1~7_combout\ = (\CU|push~q\ & ((\DP|stack|tos\(2)))) # (!\CU|push~q\ & (\DP|stack|tos2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|stack|tos2\(2),
	datac => \CU|push~q\,
	datad => \DP|stack|tos\(2),
	combout => \DP|stack|tos1~7_combout\);

-- Location: FF_X21_Y6_N31
\DP|stack|tos1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos1~7_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos1\(2));

-- Location: LCCOMB_X21_Y6_N18
\DP|stack|tos~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|tos~7_combout\ = (\CU|push~q\ & ((\DP|stack|dout[2]~4_combout\))) # (!\CU|push~q\ & (\DP|stack|tos1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|tos1\(2),
	datac => \CU|push~q\,
	datad => \DP|stack|dout[2]~4_combout\,
	combout => \DP|stack|tos~7_combout\);

-- Location: FF_X21_Y6_N19
\DP|stack|tos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|tos~7_combout\,
	sclr => \Reset~input_o\,
	ena => \DP|stack|tos2[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|tos\(2));

-- Location: FF_X23_Y6_N19
\DP|stack|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|stack|dout[2]~feeder_combout\,
	asdata => \DP|stack|tos\(2),
	sload => \CU|ALT_INV_push~q\,
	ena => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|stack|dout\(2));

-- Location: LCCOMB_X23_Y7_N28
\DP|ALU|result_mux|combined|f[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[2]~40_combout\ = (\DP|stack|dout[2]~4_combout\ & ((\CU|ALU_FS\(1)) # (\CU|ALU_FS\(0) $ (!\DP|r0|q\(2))))) # (!\DP|stack|dout[2]~4_combout\ & (!\CU|ALU_FS\(0) & (\DP|r0|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|stack|dout[2]~4_combout\,
	datab => \CU|ALU_FS\(0),
	datac => \DP|r0|q\(2),
	datad => \CU|ALU_FS\(1),
	combout => \DP|ALU|result_mux|combined|f[2]~40_combout\);

-- Location: LCCOMB_X24_Y6_N26
\DP|ALU|arith_unit|adder|sum[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|arith_unit|adder|sum\(2) = \DP|ALU|arith_unit|adder|c[2]~3_combout\ $ (\DP|stack|dout[2]~4_combout\ $ (\DP|ALU|arith_unit|adder|c~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|arith_unit|adder|c[2]~3_combout\,
	datab => \DP|stack|dout[2]~4_combout\,
	datad => \DP|ALU|arith_unit|adder|c~4_combout\,
	combout => \DP|ALU|arith_unit|adder|sum\(2));

-- Location: LCCOMB_X24_Y6_N4
\DP|ALU|result_mux|combined|f[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[2]~36_combout\ = (\DP|ALU|result_mux|combined|f[4]~18_combout\ & ((\DP|ALU|result_mux|combined|f[4]~17_combout\ & (\DP|r0|q\(2))) # (!\DP|ALU|result_mux|combined|f[4]~17_combout\ & ((\DP|ALU|sr_unit|Mux14~5_combout\))))) # 
-- (!\DP|ALU|result_mux|combined|f[4]~18_combout\ & (\DP|ALU|result_mux|combined|f[4]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[4]~18_combout\,
	datab => \DP|ALU|result_mux|combined|f[4]~17_combout\,
	datac => \DP|r0|q\(2),
	datad => \DP|ALU|sr_unit|Mux14~5_combout\,
	combout => \DP|ALU|result_mux|combined|f[2]~36_combout\);

-- Location: LCCOMB_X24_Y6_N10
\DP|ALU|result_mux|combined|f[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[2]~37_combout\ = (\DP|ALU|result_mux|combined|f[4]~18_combout\ & (((\DP|ALU|result_mux|combined|f[2]~36_combout\)))) # (!\DP|ALU|result_mux|combined|f[4]~18_combout\ & ((\DP|ALU|result_mux|combined|f[2]~36_combout\ & 
-- ((\DP|ALU|sr_unit|Mux14~7_combout\))) # (!\DP|ALU|result_mux|combined|f[2]~36_combout\ & (\DP|ALU|sr_unit|Mux14~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[4]~18_combout\,
	datab => \DP|ALU|sr_unit|Mux14~9_combout\,
	datac => \DP|ALU|result_mux|combined|f[2]~36_combout\,
	datad => \DP|ALU|sr_unit|Mux14~7_combout\,
	combout => \DP|ALU|result_mux|combined|f[2]~37_combout\);

-- Location: LCCOMB_X24_Y6_N20
\DP|ALU|result_mux|combined|f[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[2]~38_combout\ = (\DP|ALU|result_mux|combined|f[4]~16_combout\ & ((\DP|ALU|arith_unit|adder|sum\(2)) # ((\DP|ALU|result_mux|combined|f[4]~15_combout\)))) # (!\DP|ALU|result_mux|combined|f[4]~16_combout\ & 
-- (((!\DP|ALU|result_mux|combined|f[4]~15_combout\ & \DP|ALU|result_mux|combined|f[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[4]~16_combout\,
	datab => \DP|ALU|arith_unit|adder|sum\(2),
	datac => \DP|ALU|result_mux|combined|f[4]~15_combout\,
	datad => \DP|ALU|result_mux|combined|f[2]~37_combout\,
	combout => \DP|ALU|result_mux|combined|f[2]~38_combout\);

-- Location: LCCOMB_X24_Y6_N18
\DP|ALU|result_mux|combined|f[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ALU|result_mux|combined|f[2]~39_combout\ = (\DP|ALU|result_mux|combined|f[4]~15_combout\ & ((\DP|ALU|result_mux|combined|f[2]~38_combout\ & (\CU|ALU_FS\(0))) # (!\DP|ALU|result_mux|combined|f[2]~38_combout\ & ((\DP|ALU|sr_unit|Mux14~8_combout\))))) # 
-- (!\DP|ALU|result_mux|combined|f[4]~15_combout\ & (((\DP|ALU|result_mux|combined|f[2]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ALU|result_mux|combined|f[4]~15_combout\,
	datab => \CU|ALU_FS\(0),
	datac => \DP|ALU|sr_unit|Mux14~8_combout\,
	datad => \DP|ALU|result_mux|combined|f[2]~38_combout\,
	combout => \DP|ALU|result_mux|combined|f[2]~39_combout\);

-- Location: LCCOMB_X23_Y7_N12
\DP|r0|q~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~21_combout\ = (\CU|ALU_FS\(3) & (((\DP|ALU|result_mux|combined|f[2]~39_combout\)))) # (!\CU|ALU_FS\(3) & ((\CU|ALU_FS\(2) & (\DP|ALU|result_mux|combined|f[2]~40_combout\)) # (!\CU|ALU_FS\(2) & ((\DP|ALU|result_mux|combined|f[2]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALU_FS\(3),
	datab => \DP|ALU|result_mux|combined|f[2]~40_combout\,
	datac => \CU|ALU_FS\(2),
	datad => \DP|ALU|result_mux|combined|f[2]~39_combout\,
	combout => \DP|r0|q~21_combout\);

-- Location: LCCOMB_X23_Y7_N30
\DP|r0|q~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~22_combout\ = (\CU|WB_SEL\(0) & ((\CU|WB_SEL\(1) & (\DP|stack|dout\(2))) # (!\CU|WB_SEL\(1) & ((\DP|r0|q~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WB_SEL\(0),
	datab => \DP|stack|dout\(2),
	datac => \CU|WB_SEL\(1),
	datad => \DP|r0|q~21_combout\,
	combout => \DP|r0|q~22_combout\);

-- Location: LCCOMB_X23_Y7_N22
\DP|r0|q~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|r0|q~23_combout\ = (!\Reset~input_o\ & ((\DP|r0|q~22_combout\) # ((\DP|r0|q~11_combout\ & \DP|MM|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r0|q~11_combout\,
	datab => \Reset~input_o\,
	datac => \DP|r0|q~22_combout\,
	datad => \DP|MM|altsyncram_component|auto_generated|q_a\(2),
	combout => \DP|r0|q~23_combout\);

-- Location: FF_X23_Y7_N23
\DP|r2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|r0|q~23_combout\,
	ena => \DP|r2|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r2|q\(2));

-- Location: LCCOMB_X24_Y7_N10
\DP|rfout_sd_mux|upper_bits|f[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|upper_bits|f[2]~5_combout\ = (\CU|RF_SD_OS\(0) & ((\DP|r3|q\(2)))) # (!\CU|RF_SD_OS\(0) & (\DP|r2|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|r2|q\(2),
	datac => \DP|r3|q\(2),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|upper_bits|f[2]~5_combout\);

-- Location: LCCOMB_X24_Y7_N20
\DP|rfout_sd_mux|lower_bits|f[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|lower_bits|f[2]~5_combout\ = (\CU|RF_SD_OS\(0) & ((\DP|r1|q\(2)))) # (!\CU|RF_SD_OS\(0) & (\DP|r0|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|r0|q\(2),
	datac => \DP|r1|q\(2),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|lower_bits|f[2]~5_combout\);

-- Location: LCCOMB_X24_Y7_N0
\DP|stack|dout[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|dout[2]~4_combout\ = (\CU|RF_SD_OS\(1) & (\DP|rfout_sd_mux|upper_bits|f[2]~5_combout\)) # (!\CU|RF_SD_OS\(1) & ((\DP|rfout_sd_mux|lower_bits|f[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|rfout_sd_mux|upper_bits|f[2]~5_combout\,
	datac => \CU|RF_SD_OS\(1),
	datad => \DP|rfout_sd_mux|lower_bits|f[2]~5_combout\,
	combout => \DP|stack|dout[2]~4_combout\);

-- Location: LCCOMB_X17_Y7_N8
\DP|IR|q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|IR|q~7_combout\ = (!\Reset~input_o\ & \DP|MM|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \DP|MM|altsyncram_component|auto_generated|q_a\(3),
	combout => \DP|IR|q~7_combout\);

-- Location: FF_X17_Y7_N9
\DP|IR|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|IR|q~7_combout\,
	ena => \DP|IR|q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IR|q\(3));

-- Location: FF_X17_Y5_N3
\CU|Rsd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|IR|q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|Rsd\(1));

-- Location: LCCOMB_X19_Y5_N26
\CU|RF_SD_OS~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|RF_SD_OS~16_combout\ = (!\Reset~input_o\ & \CU|Rsd\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datad => \CU|Rsd\(1),
	combout => \CU|RF_SD_OS~16_combout\);

-- Location: LCCOMB_X17_Y5_N18
\CU|RF_SD_OS[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|RF_SD_OS[1]~8_combout\ = (\CU|MC\(0) & ((\CU|opCode\(1)) # (\CU|opCode\(0)))) # (!\CU|MC\(0) & ((!\CU|opCode\(0)) # (!\CU|opCode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|MC\(0),
	datac => \CU|opCode\(1),
	datad => \CU|opCode\(0),
	combout => \CU|RF_SD_OS[1]~8_combout\);

-- Location: LCCOMB_X17_Y5_N2
\CU|RF_SD_OS[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|RF_SD_OS[1]~5_combout\ = ((\CU|RF_SD_OS[1]~8_combout\) # (\CU|MC\(2))) # (!\CU|MC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|MC\(1),
	datab => \CU|RF_SD_OS[1]~8_combout\,
	datad => \CU|MC\(2),
	combout => \CU|RF_SD_OS[1]~5_combout\);

-- Location: LCCOMB_X18_Y5_N4
\CU|RF_SD_OS[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|RF_SD_OS[1]~17_combout\ = (\Reset~input_o\) # ((\CU|opCode\(3) & (\CU|opCode\(2) & !\CU|RF_SD_OS[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|opCode\(3),
	datab => \CU|opCode\(2),
	datac => \Reset~input_o\,
	datad => \CU|RF_SD_OS[1]~5_combout\,
	combout => \CU|RF_SD_OS[1]~17_combout\);

-- Location: FF_X19_Y5_N27
\CU|RF_SD_OS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|RF_SD_OS~16_combout\,
	ena => \CU|RF_SD_OS[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|RF_SD_OS\(1));

-- Location: LCCOMB_X24_Y7_N30
\DP|rfout_sd_mux|upper_bits|f[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|upper_bits|f[1]~3_combout\ = (\CU|RF_SD_OS\(0) & ((\DP|r3|q\(1)))) # (!\CU|RF_SD_OS\(0) & (\DP|r2|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|r2|q\(1),
	datab => \DP|r3|q\(1),
	datad => \CU|RF_SD_OS\(0),
	combout => \DP|rfout_sd_mux|upper_bits|f[1]~3_combout\);

-- Location: LCCOMB_X20_Y6_N24
\DP|rfout_sd_mux|lower_bits|f[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|lower_bits|f[1]~3_combout\ = (\CU|RF_SD_OS\(0) & ((\DP|r1|q\(1)))) # (!\CU|RF_SD_OS\(0) & (\DP|r0|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(0),
	datac => \DP|r0|q\(1),
	datad => \DP|r1|q\(1),
	combout => \DP|rfout_sd_mux|lower_bits|f[1]~3_combout\);

-- Location: LCCOMB_X23_Y6_N22
\DP|stack|dout[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|stack|dout[1]~3_combout\ = (\CU|RF_SD_OS\(1) & (\DP|rfout_sd_mux|upper_bits|f[1]~3_combout\)) # (!\CU|RF_SD_OS\(1) & ((\DP|rfout_sd_mux|lower_bits|f[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(1),
	datab => \DP|rfout_sd_mux|upper_bits|f[1]~3_combout\,
	datad => \DP|rfout_sd_mux|lower_bits|f[1]~3_combout\,
	combout => \DP|stack|dout[1]~3_combout\);

-- Location: LCCOMB_X17_Y7_N2
\DP|IR|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|IR|q~2_combout\ = (!\Reset~input_o\ & \DP|MM|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \DP|MM|altsyncram_component|auto_generated|q_a\(6),
	combout => \DP|IR|q~2_combout\);

-- Location: FF_X17_Y7_N3
\DP|IR|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|IR|q~2_combout\,
	ena => \DP|IR|q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IR|q\(6));

-- Location: LCCOMB_X17_Y5_N22
\CU|opCode[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|opCode[2]~feeder_combout\ = \DP|IR|q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DP|IR|q\(6),
	combout => \CU|opCode[2]~feeder_combout\);

-- Location: FF_X17_Y5_N23
\CU|opCode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|opCode[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|opCode\(2));

-- Location: LCCOMB_X17_Y5_N12
\CU|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|Equal3~0_combout\ = (\CU|opCode\(2) & (\CU|opCode\(3) & (!\CU|opCode\(1) & \CU|opCode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|opCode\(2),
	datab => \CU|opCode\(3),
	datac => \CU|opCode\(1),
	datad => \CU|opCode\(0),
	combout => \CU|Equal3~0_combout\);

-- Location: LCCOMB_X17_Y5_N16
\CU|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|process_0~1_combout\ = (\CU|opCode\(3) & ((\CU|opCode\(2) & (!\CU|opCode\(1) & !\CU|opCode\(0))) # (!\CU|opCode\(2) & (\CU|opCode\(1) & \CU|opCode\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|opCode\(2),
	datab => \CU|opCode\(3),
	datac => \CU|opCode\(1),
	datad => \CU|opCode\(0),
	combout => \CU|process_0~1_combout\);

-- Location: LCCOMB_X17_Y5_N6
\CU|MC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|MC~5_combout\ = (!\CU|MC\(0) & (\CU|process_0~0_combout\ & ((\CU|Equal3~0_combout\) # (\CU|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Equal3~0_combout\,
	datab => \CU|MC\(0),
	datac => \CU|process_0~0_combout\,
	datad => \CU|process_0~1_combout\,
	combout => \CU|MC~5_combout\);

-- Location: LCCOMB_X16_Y5_N10
\CU|MC[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|MC[1]~9_combout\ = (\CU|MC\(2) & (((\CU|MC\(1))))) # (!\CU|MC\(2) & ((\CU|MC\(1) & (\CU|MC~5_combout\)) # (!\CU|MC\(1) & ((\CU|MC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|MC~5_combout\,
	datab => \CU|MC\(2),
	datac => \CU|MC\(1),
	datad => \CU|MC\(0),
	combout => \CU|MC[1]~9_combout\);

-- Location: LCCOMB_X16_Y5_N14
\CU|MC[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|MC[1]~10_combout\ = (\CU|MC[1]~7_combout\) # ((!\Reset~input_o\ & \CU|MC[1]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|MC[1]~7_combout\,
	datac => \Reset~input_o\,
	datad => \CU|MC[1]~9_combout\,
	combout => \CU|MC[1]~10_combout\);

-- Location: FF_X16_Y5_N15
\CU|MC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|MC[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|MC\(1));

-- Location: LCCOMB_X16_Y5_N30
\CU|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|Equal0~0_combout\ = (\CU|MC\(1) & !\CU|MC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|MC\(1),
	datad => \CU|MC\(2),
	combout => \CU|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y5_N10
\CU|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|Equal3~2_combout\ = (\CU|opCode\(2) & (\CU|opCode\(3) & (\CU|opCode\(1) & \CU|opCode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|opCode\(2),
	datab => \CU|opCode\(3),
	datac => \CU|opCode\(1),
	datad => \CU|opCode\(0),
	combout => \CU|Equal3~2_combout\);

-- Location: LCCOMB_X17_Y5_N8
\CU|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|Equal3~1_combout\ = (\CU|opCode\(2) & (\CU|opCode\(3) & (\CU|opCode\(1) & !\CU|opCode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|opCode\(2),
	datab => \CU|opCode\(3),
	datac => \CU|opCode\(1),
	datad => \CU|opCode\(0),
	combout => \CU|Equal3~1_combout\);

-- Location: LCCOMB_X17_Y5_N14
\CU|MC~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|MC~12_combout\ = ((\CU|opCode\(2) & (\CU|opCode\(1))) # (!\CU|opCode\(2) & ((!\CU|opCode\(0)) # (!\CU|opCode\(1))))) # (!\CU|opCode\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|opCode\(2),
	datab => \CU|opCode\(3),
	datac => \CU|opCode\(1),
	datad => \CU|opCode\(0),
	combout => \CU|MC~12_combout\);

-- Location: LCCOMB_X17_Y5_N28
\CU|crtMCis~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|crtMCis~0_combout\ = (!\CU|Equal3~2_combout\ & (!\CU|Equal3~1_combout\ & (\CU|process_0~0_combout\ & \CU|MC~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Equal3~2_combout\,
	datab => \CU|Equal3~1_combout\,
	datac => \CU|process_0~0_combout\,
	datad => \CU|MC~12_combout\,
	combout => \CU|crtMCis~0_combout\);

-- Location: LCCOMB_X16_Y5_N24
\CU|MC[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|MC[1]~7_combout\ = (\CU|Equal0~0_combout\ & (!\CU|MC\(0) & (!\Reset~input_o\ & \CU|crtMCis~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Equal0~0_combout\,
	datab => \CU|MC\(0),
	datac => \Reset~input_o\,
	datad => \CU|crtMCis~0_combout\,
	combout => \CU|MC[1]~7_combout\);

-- Location: LCCOMB_X17_Y5_N4
\CU|MC[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|MC[0]~6_combout\ = (\CU|MC\(2) & (((\CU|MC\(0))))) # (!\CU|MC\(2) & ((\CU|MC\(1) & ((\CU|MC~5_combout\))) # (!\CU|MC\(1) & (!\CU|MC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|MC\(1),
	datab => \CU|MC\(0),
	datac => \CU|MC~5_combout\,
	datad => \CU|MC\(2),
	combout => \CU|MC[0]~6_combout\);

-- Location: LCCOMB_X16_Y5_N20
\CU|MC[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|MC[0]~8_combout\ = (!\CU|MC[1]~7_combout\ & (!\Reset~input_o\ & \CU|MC[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|MC[1]~7_combout\,
	datac => \Reset~input_o\,
	datad => \CU|MC[0]~6_combout\,
	combout => \CU|MC[0]~8_combout\);

-- Location: FF_X16_Y5_N21
\CU|MC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|MC[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|MC\(0));

-- Location: LCCOMB_X16_Y5_N12
\CU|CNT_PC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|CNT_PC~0_combout\ = (\CU|CNT_PC~q\ & (((\CU|MC\(2)) # (!\CU|MC\(1))) # (!\CU|MC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|CNT_PC~q\,
	datab => \CU|MC\(0),
	datac => \CU|MC\(1),
	datad => \CU|MC\(2),
	combout => \CU|CNT_PC~0_combout\);

-- Location: LCCOMB_X16_Y5_N26
\CU|CNT_PC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|CNT_PC~1_combout\ = (\CU|CNT_PC~0_combout\) # ((\CU|Equal0~1_combout\ & (!\CU|MC~12_combout\ & \CU|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|CNT_PC~0_combout\,
	datab => \CU|Equal0~1_combout\,
	datac => \CU|MC~12_combout\,
	datad => \CU|process_0~0_combout\,
	combout => \CU|CNT_PC~1_combout\);

-- Location: LCCOMB_X16_Y5_N18
\CU|CNT_PC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|CNT_PC~2_combout\ = (\CU|MC\(1) & (\CU|CNT_PC~1_combout\)) # (!\CU|MC\(1) & ((\CU|MC\(2) & (\CU|CNT_PC~1_combout\)) # (!\CU|MC\(2) & ((!\CU|MC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|CNT_PC~1_combout\,
	datab => \CU|MC\(0),
	datac => \CU|MC\(1),
	datad => \CU|MC\(2),
	combout => \CU|CNT_PC~2_combout\);

-- Location: FF_X16_Y5_N19
\CU|CNT_PC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|CNT_PC~2_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|CNT_PC~q\);

-- Location: FF_X16_Y7_N7
\DP|PC|Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|PC|Count[0]~10_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PC|Count\(0));

-- Location: LCCOMB_X17_Y7_N14
\DP|IR|q~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|IR|q~8_combout\ = (!\Reset~input_o\ & \DP|MM|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \DP|MM|altsyncram_component|auto_generated|q_a\(2),
	combout => \DP|IR|q~8_combout\);

-- Location: FF_X17_Y7_N15
\DP|IR|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|IR|q~8_combout\,
	ena => \DP|IR|q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IR|q\(2));

-- Location: LCCOMB_X18_Y5_N16
\CU|Rsd[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|Rsd[0]~feeder_combout\ = \DP|IR|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DP|IR|q\(2),
	combout => \CU|Rsd[0]~feeder_combout\);

-- Location: FF_X18_Y5_N17
\CU|Rsd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|Rsd[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|Rsd\(0));

-- Location: LCCOMB_X19_Y5_N0
\CU|RF_SD_OS~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|RF_SD_OS~15_combout\ = (!\Reset~input_o\ & \CU|Rsd\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \CU|Rsd\(0),
	combout => \CU|RF_SD_OS~15_combout\);

-- Location: FF_X19_Y5_N1
\CU|RF_SD_OS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|RF_SD_OS~15_combout\,
	ena => \CU|RF_SD_OS[1]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|RF_SD_OS\(0));

-- Location: FF_X20_Y7_N19
\DP|r3|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~14_combout\,
	sload => VCC,
	ena => \DP|r3|q[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r3|q\(0));

-- Location: FF_X20_Y7_N17
\DP|r1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~14_combout\,
	sload => VCC,
	ena => \DP|r1|q[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r1|q\(0));

-- Location: FF_X19_Y7_N31
\DP|r2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DP|r0|q~14_combout\,
	sload => VCC,
	ena => \DP|r2|q[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|r2|q\(0));

-- Location: LCCOMB_X19_Y7_N30
\DP|rfout_sd_mux|combined|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|combined|f[0]~2_combout\ = (\CU|RF_SD_OS\(1) & ((\CU|RF_SD_OS\(0)) # ((\DP|r2|q\(0))))) # (!\CU|RF_SD_OS\(1) & (!\CU|RF_SD_OS\(0) & ((\DP|r0|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(1),
	datab => \CU|RF_SD_OS\(0),
	datac => \DP|r2|q\(0),
	datad => \DP|r0|q\(0),
	combout => \DP|rfout_sd_mux|combined|f[0]~2_combout\);

-- Location: LCCOMB_X20_Y7_N16
\DP|rfout_sd_mux|combined|f[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|rfout_sd_mux|combined|f[0]~3_combout\ = (\CU|RF_SD_OS\(0) & ((\DP|rfout_sd_mux|combined|f[0]~2_combout\ & (\DP|r3|q\(0))) # (!\DP|rfout_sd_mux|combined|f[0]~2_combout\ & ((\DP|r1|q\(0)))))) # (!\CU|RF_SD_OS\(0) & 
-- (((\DP|rfout_sd_mux|combined|f[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|RF_SD_OS\(0),
	datab => \DP|r3|q\(0),
	datac => \DP|r1|q\(0),
	datad => \DP|rfout_sd_mux|combined|f[0]~2_combout\,
	combout => \DP|rfout_sd_mux|combined|f[0]~3_combout\);

-- Location: LCCOMB_X17_Y7_N28
\DP|IR|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|IR|q~3_combout\ = (!\Reset~input_o\ & \DP|MM|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \DP|MM|altsyncram_component|auto_generated|q_a\(7),
	combout => \DP|IR|q~3_combout\);

-- Location: FF_X17_Y7_N29
\DP|IR|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DP|IR|q~3_combout\,
	ena => \DP|IR|q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IR|q\(7));

-- Location: LCCOMB_X18_Y4_N24
\ICdecode|ICis~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~2_combout\ = (!\Reset~input_o\ & (((!\DP|IR|q\(5)) # (!\DP|IR|q\(6))) # (!\DP|IR|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(7),
	datab => \DP|IR|q\(6),
	datac => \DP|IR|q\(5),
	datad => \Reset~input_o\,
	combout => \ICdecode|ICis~2_combout\);

-- Location: LCCOMB_X19_Y4_N20
\ICdecode|ICis[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[0]~feeder_combout\ = \ICdecode|ICis~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~2_combout\,
	combout => \ICdecode|ICis[0]~feeder_combout\);

-- Location: FF_X19_Y4_N21
\ICdecode|ICis[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(0));

-- Location: LCCOMB_X19_Y4_N18
\ICdecode|ICis[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[1]~feeder_combout\ = \ICdecode|ICis~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~2_combout\,
	combout => \ICdecode|ICis[1]~feeder_combout\);

-- Location: FF_X19_Y4_N19
\ICdecode|ICis[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(1));

-- Location: LCCOMB_X19_Y4_N0
\ICdecode|ICis[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[3]~feeder_combout\ = \ICdecode|ICis~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~2_combout\,
	combout => \ICdecode|ICis[3]~feeder_combout\);

-- Location: FF_X19_Y4_N1
\ICdecode|ICis[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(3));

-- Location: LCCOMB_X19_Y4_N14
\ICdecode|ICis[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[4]~feeder_combout\ = \ICdecode|ICis~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~2_combout\,
	combout => \ICdecode|ICis[4]~feeder_combout\);

-- Location: FF_X19_Y4_N15
\ICdecode|ICis[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(4));

-- Location: LCCOMB_X5_Y4_N12
\ICdecode|ICis[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[9]~4_combout\ = ((!\DP|IR|q\(6) & ((!\DP|IR|q\(4)) # (!\DP|IR|q\(5))))) # (!\DP|IR|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(7),
	datab => \DP|IR|q\(5),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|ICis[9]~4_combout\);

-- Location: LCCOMB_X5_Y4_N10
\ICdecode|ICis~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~3_combout\ = (\DP|IR|q\(7) & ((\DP|IR|q\(5) & (!\DP|IR|q\(6) & \DP|IR|q\(4))) # (!\DP|IR|q\(5) & (\DP|IR|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(7),
	datab => \DP|IR|q\(5),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|ICis~3_combout\);

-- Location: LCCOMB_X5_Y4_N18
\ICdecode|ICis~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~5_combout\ = (!\Reset~input_o\ & ((\ICdecode|ICis~3_combout\) # ((\ICdecode|ICis[9]~4_combout\ & \DP|IR|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ICdecode|ICis[9]~4_combout\,
	datab => \Reset~input_o\,
	datac => \DP|IR|q\(0),
	datad => \ICdecode|ICis~3_combout\,
	combout => \ICdecode|ICis~5_combout\);

-- Location: FF_X5_Y4_N19
\ICdecode|ICis[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(8));

-- Location: LCCOMB_X5_Y4_N20
\ICdecode|ICis~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~6_combout\ = (\ICdecode|ICis[9]~4_combout\ & (!\Reset~input_o\ & \DP|IR|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ICdecode|ICis[9]~4_combout\,
	datab => \Reset~input_o\,
	datac => \DP|IR|q\(1),
	combout => \ICdecode|ICis~6_combout\);

-- Location: FF_X5_Y4_N21
\ICdecode|ICis[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(9));

-- Location: LCCOMB_X1_Y12_N16
\ICdecode|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux48~0_combout\ = ((\DP|IR|q\(4) & ((!\DP|IR|q\(5)))) # (!\DP|IR|q\(4) & (!\DP|IR|q\(6)))) # (!\DP|IR|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux48~0_combout\);

-- Location: FF_X1_Y12_N17
\ICdecode|ICis[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux48~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(12));

-- Location: LCCOMB_X5_Y4_N26
\ICdecode|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux47~0_combout\ = (\DP|IR|q\(7) & ((\DP|IR|q\(5) & (!\DP|IR|q\(6) & \DP|IR|q\(4))) # (!\DP|IR|q\(5) & (\DP|IR|q\(6) & !\DP|IR|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(7),
	datab => \DP|IR|q\(5),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux47~0_combout\);

-- Location: LCCOMB_X5_Y4_N14
\ICdecode|ICis~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~7_combout\ = (\Reset~input_o\) # (!\ICdecode|Mux47~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datac => \ICdecode|Mux47~0_combout\,
	combout => \ICdecode|ICis~7_combout\);

-- Location: FF_X5_Y4_N15
\ICdecode|ICis[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(13));

-- Location: LCCOMB_X5_Y4_N28
\ICdecode|ICis[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[14]~28_combout\ = !\ICdecode|ICis~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ICdecode|ICis~7_combout\,
	combout => \ICdecode|ICis[14]~28_combout\);

-- Location: FF_X5_Y4_N29
\ICdecode|ICis[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[14]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(14));

-- Location: LCCOMB_X1_Y12_N18
\ICdecode|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux45~0_combout\ = (\DP|IR|q\(5) & ((!\DP|IR|q\(6)))) # (!\DP|IR|q\(5) & (\DP|IR|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux45~0_combout\);

-- Location: FF_X1_Y12_N19
\ICdecode|ICis[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux45~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(16));

-- Location: LCCOMB_X1_Y12_N28
\ICdecode|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux44~0_combout\ = ((!\DP|IR|q\(6) & ((!\DP|IR|q\(5)) # (!\DP|IR|q\(4))))) # (!\DP|IR|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux44~0_combout\);

-- Location: FF_X1_Y12_N29
\ICdecode|ICis[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux44~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(17));

-- Location: LCCOMB_X11_Y4_N4
\ICdecode|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux43~0_combout\ = (\DP|IR|q\(7) & ((\DP|IR|q\(6) & (!\DP|IR|q\(5))) # (!\DP|IR|q\(6) & (\DP|IR|q\(5) & \DP|IR|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(6),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(5),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux43~0_combout\);

-- Location: LCCOMB_X11_Y4_N26
\ICdecode|ICis~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~8_combout\ = (\ICdecode|Mux43~0_combout\ & !\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ICdecode|Mux43~0_combout\,
	datac => \Reset~input_o\,
	combout => \ICdecode|ICis~8_combout\);

-- Location: LCCOMB_X11_Y4_N28
\ICdecode|ICis[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[18]~feeder_combout\ = \ICdecode|ICis~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ICdecode|ICis~8_combout\,
	combout => \ICdecode|ICis[18]~feeder_combout\);

-- Location: FF_X11_Y4_N29
\ICdecode|ICis[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(18));

-- Location: FF_X11_Y4_N27
\ICdecode|ICis[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(19));

-- Location: LCCOMB_X1_Y12_N14
\ICdecode|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux42~0_combout\ = (\DP|IR|q\(7) & (\DP|IR|q\(4) & (\DP|IR|q\(6) & !\DP|IR|q\(5)))) # (!\DP|IR|q\(7) & (((\DP|IR|q\(6)) # (!\DP|IR|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux42~0_combout\);

-- Location: FF_X1_Y12_N15
\ICdecode|ICis[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux42~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(20));

-- Location: LCCOMB_X18_Y4_N22
\ICdecode|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux41~0_combout\ = (\DP|IR|q\(7) & ((\DP|IR|q\(5) & ((\DP|IR|q\(6)) # (!\DP|IR|q\(4)))) # (!\DP|IR|q\(5) & ((\DP|IR|q\(4)) # (!\DP|IR|q\(6)))))) # (!\DP|IR|q\(7) & (\DP|IR|q\(5) & (!\DP|IR|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(7),
	datab => \DP|IR|q\(5),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux41~0_combout\);

-- Location: LCCOMB_X18_Y4_N28
\ICdecode|ICis~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~9_combout\ = (\ICdecode|Mux41~0_combout\) # (\Reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ICdecode|Mux41~0_combout\,
	datac => \Reset~input_o\,
	combout => \ICdecode|ICis~9_combout\);

-- Location: FF_X18_Y4_N29
\ICdecode|ICis[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(21));

-- Location: LCCOMB_X19_Y4_N28
\ICdecode|ICis[22]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[22]~29_combout\ = !\ICdecode|ICis~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~9_combout\,
	combout => \ICdecode|ICis[22]~29_combout\);

-- Location: FF_X19_Y4_N29
\ICdecode|ICis[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[22]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(22));

-- Location: LCCOMB_X17_Y4_N4
\ICdecode|ICis~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~10_combout\ = (\DP|IR|q\(3)) # ((\DP|IR|q\(1) & ((\DP|IR|q\(2)) # (\DP|IR|q\(0)))) # (!\DP|IR|q\(1) & (\DP|IR|q\(2) $ (!\DP|IR|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(1),
	datab => \DP|IR|q\(2),
	datac => \DP|IR|q\(3),
	datad => \DP|IR|q\(0),
	combout => \ICdecode|ICis~10_combout\);

-- Location: LCCOMB_X17_Y7_N24
\ICdecode|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux21~0_combout\ = (\DP|IR|q\(6) & \DP|IR|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|IR|q\(6),
	datad => \DP|IR|q\(7),
	combout => \ICdecode|Mux21~0_combout\);

-- Location: LCCOMB_X17_Y4_N18
\ICdecode|ICis~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~11_combout\ = (\ICdecode|Mux21~0_combout\ & (!\Reset~input_o\ & (\DP|IR|q\(4) & !\DP|IR|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ICdecode|Mux21~0_combout\,
	datab => \Reset~input_o\,
	datac => \DP|IR|q\(4),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|ICis~11_combout\);

-- Location: LCCOMB_X17_Y4_N8
\ICdecode|ICis~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~12_combout\ = (\ICdecode|ICis~10_combout\ & \ICdecode|ICis~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ICdecode|ICis~10_combout\,
	datad => \ICdecode|ICis~11_combout\,
	combout => \ICdecode|ICis~12_combout\);

-- Location: FF_X17_Y4_N9
\ICdecode|ICis[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(24));

-- Location: LCCOMB_X17_Y4_N30
\ICdecode|ICis~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~13_combout\ = (\ICdecode|ICis~11_combout\ & ((\DP|IR|q\(3)) # ((\DP|IR|q\(2)) # (!\ICdecode|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(3),
	datab => \ICdecode|Equal0~0_combout\,
	datac => \DP|IR|q\(2),
	datad => \ICdecode|ICis~11_combout\,
	combout => \ICdecode|ICis~13_combout\);

-- Location: FF_X17_Y4_N31
\ICdecode|ICis[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(25));

-- Location: LCCOMB_X17_Y4_N2
\ICdecode|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux37~0_combout\ = (\DP|IR|q\(1)) # ((\DP|IR|q\(2)) # ((\DP|IR|q\(3)) # (!\DP|IR|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(1),
	datab => \DP|IR|q\(2),
	datac => \DP|IR|q\(3),
	datad => \DP|IR|q\(0),
	combout => \ICdecode|Mux37~0_combout\);

-- Location: LCCOMB_X17_Y4_N20
\ICdecode|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux37~1_combout\ = (\ICdecode|Mux21~0_combout\ & (\ICdecode|Mux37~0_combout\ & (\DP|IR|q\(4) & !\DP|IR|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ICdecode|Mux21~0_combout\,
	datab => \ICdecode|Mux37~0_combout\,
	datac => \DP|IR|q\(4),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux37~1_combout\);

-- Location: LCCOMB_X17_Y4_N12
\ICdecode|Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux37~2_combout\ = (\ICdecode|Mux37~1_combout\ & (((\DP|IR|q\(2)) # (!\ICdecode|Equal0~0_combout\)) # (!\DP|IR|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(3),
	datab => \ICdecode|Equal0~0_combout\,
	datac => \DP|IR|q\(2),
	datad => \ICdecode|Mux37~1_combout\,
	combout => \ICdecode|Mux37~2_combout\);

-- Location: FF_X17_Y4_N13
\ICdecode|ICis[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux37~2_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(26));

-- Location: LCCOMB_X17_Y4_N14
\ICdecode|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux36~0_combout\ = (\DP|IR|q\(2)) # ((\DP|IR|q\(0)) # ((\DP|IR|q\(1) & \DP|IR|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(1),
	datab => \DP|IR|q\(2),
	datac => \DP|IR|q\(3),
	datad => \DP|IR|q\(0),
	combout => \ICdecode|Mux36~0_combout\);

-- Location: LCCOMB_X17_Y4_N6
\ICdecode|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux36~1_combout\ = (\ICdecode|Mux21~0_combout\ & (\ICdecode|Mux36~0_combout\ & (\DP|IR|q\(4) & !\DP|IR|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ICdecode|Mux21~0_combout\,
	datab => \ICdecode|Mux36~0_combout\,
	datac => \DP|IR|q\(4),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux36~1_combout\);

-- Location: FF_X17_Y4_N7
\ICdecode|ICis[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux36~1_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(27));

-- Location: LCCOMB_X17_Y4_N16
\ICdecode|ICis~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~14_combout\ = (\ICdecode|ICis~11_combout\ & ((\DP|IR|q\(3) $ (!\DP|IR|q\(2))) # (!\ICdecode|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(3),
	datab => \ICdecode|Equal0~0_combout\,
	datac => \DP|IR|q\(2),
	datad => \ICdecode|ICis~11_combout\,
	combout => \ICdecode|ICis~14_combout\);

-- Location: FF_X17_Y4_N17
\ICdecode|ICis[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(28));

-- Location: LCCOMB_X17_Y4_N0
\ICdecode|sbit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|sbit~0_combout\ = (\DP|IR|q\(1) & ((\DP|IR|q\(2)) # ((\DP|IR|q\(3)) # (\DP|IR|q\(0))))) # (!\DP|IR|q\(1) & ((\DP|IR|q\(2) & ((\DP|IR|q\(3)) # (\DP|IR|q\(0)))) # (!\DP|IR|q\(2) & (\DP|IR|q\(3) & \DP|IR|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(1),
	datab => \DP|IR|q\(2),
	datac => \DP|IR|q\(3),
	datad => \DP|IR|q\(0),
	combout => \ICdecode|sbit~0_combout\);

-- Location: LCCOMB_X11_Y4_N2
\ICdecode|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux34~0_combout\ = ((\DP|IR|q\(5)) # ((\ICdecode|sbit~0_combout\) # (!\DP|IR|q\(4)))) # (!\ICdecode|Mux21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ICdecode|Mux21~0_combout\,
	datab => \DP|IR|q\(5),
	datac => \ICdecode|sbit~0_combout\,
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux34~0_combout\);

-- Location: LCCOMB_X11_Y4_N12
\ICdecode|ICis[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[29]~feeder_combout\ = \ICdecode|Mux34~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|Mux34~0_combout\,
	combout => \ICdecode|ICis[29]~feeder_combout\);

-- Location: FF_X11_Y4_N13
\ICdecode|ICis[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[29]~feeder_combout\,
	asdata => VCC,
	sload => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(29));

-- Location: LCCOMB_X17_Y4_N22
\ICdecode|ICis~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~15_combout\ = (\ICdecode|ICis~11_combout\ & !\ICdecode|sbit~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ICdecode|ICis~11_combout\,
	datac => \ICdecode|sbit~0_combout\,
	combout => \ICdecode|ICis~15_combout\);

-- Location: FF_X17_Y4_N23
\ICdecode|ICis[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(30));

-- Location: LCCOMB_X17_Y7_N26
\ICdecode|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux32~0_combout\ = (\DP|IR|q\(7) & (\DP|IR|q\(6) & ((\DP|IR|q\(5)) # (\DP|IR|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(5),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux32~0_combout\);

-- Location: LCCOMB_X16_Y7_N30
\ICdecode|ICis~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~16_combout\ = (!\Reset~input_o\ & !\ICdecode|Mux32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \ICdecode|Mux32~0_combout\,
	combout => \ICdecode|ICis~16_combout\);

-- Location: LCCOMB_X16_Y7_N0
\ICdecode|ICis[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[34]~feeder_combout\ = \ICdecode|ICis~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ICdecode|ICis~16_combout\,
	combout => \ICdecode|ICis[34]~feeder_combout\);

-- Location: FF_X16_Y7_N1
\ICdecode|ICis[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(34));

-- Location: FF_X16_Y7_N31
\ICdecode|ICis[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(35));

-- Location: LCCOMB_X17_Y4_N28
\ICdecode|ICis~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~17_combout\ = (\DP|IR|q\(2) & ((\DP|IR|q\(4) $ (!\DP|IR|q\(5))) # (!\ICdecode|Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ICdecode|Mux21~0_combout\,
	datab => \DP|IR|q\(2),
	datac => \DP|IR|q\(4),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|ICis~17_combout\);

-- Location: FF_X17_Y4_N29
\ICdecode|ICis[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~17_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(40));

-- Location: LCCOMB_X17_Y4_N26
\ICdecode|ICis~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~18_combout\ = (\ICdecode|Mux21~0_combout\ & ((\DP|IR|q\(3) & ((\DP|IR|q\(4)) # (!\DP|IR|q\(5)))) # (!\DP|IR|q\(3) & (\DP|IR|q\(4) & !\DP|IR|q\(5))))) # (!\ICdecode|Mux21~0_combout\ & (\DP|IR|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ICdecode|Mux21~0_combout\,
	datab => \DP|IR|q\(3),
	datac => \DP|IR|q\(4),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|ICis~18_combout\);

-- Location: FF_X17_Y4_N27
\ICdecode|ICis[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~18_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(41));

-- Location: LCCOMB_X16_Y4_N4
\ICdecode|ICis[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[42]~feeder_combout\ = \ICdecode|ICis~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~11_combout\,
	combout => \ICdecode|ICis[42]~feeder_combout\);

-- Location: FF_X16_Y4_N5
\ICdecode|ICis[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(42));

-- Location: LCCOMB_X5_Y4_N4
\ICdecode|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux29~0_combout\ = (\DP|IR|q\(7) & (\DP|IR|q\(6) & (\DP|IR|q\(5) $ (\DP|IR|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(7),
	datab => \DP|IR|q\(5),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux29~0_combout\);

-- Location: LCCOMB_X1_Y4_N18
\ICdecode|ICis~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~19_combout\ = (\Reset~input_o\) # (\ICdecode|Mux29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reset~input_o\,
	datad => \ICdecode|Mux29~0_combout\,
	combout => \ICdecode|ICis~19_combout\);

-- Location: LCCOMB_X1_Y4_N16
\ICdecode|ICis[44]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[44]~33_combout\ = !\ICdecode|ICis~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~19_combout\,
	combout => \ICdecode|ICis[44]~33_combout\);

-- Location: FF_X1_Y4_N17
\ICdecode|ICis[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[44]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(44));

-- Location: LCCOMB_X16_Y4_N10
\ICdecode|ICis[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[46]~feeder_combout\ = \ICdecode|ICis~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~11_combout\,
	combout => \ICdecode|ICis[46]~feeder_combout\);

-- Location: FF_X16_Y4_N11
\ICdecode|ICis[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(46));

-- Location: LCCOMB_X17_Y4_N10
\ICdecode|ICis~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~20_combout\ = (\DP|IR|q\(5) & (\DP|IR|q\(2) & !\DP|IR|q\(4))) # (!\DP|IR|q\(5) & ((\DP|IR|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(5),
	datab => \DP|IR|q\(2),
	datac => \DP|IR|q\(4),
	combout => \ICdecode|ICis~20_combout\);

-- Location: LCCOMB_X18_Y4_N14
\ICdecode|ICis~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~27_combout\ = (!\Reset~input_o\ & (\DP|IR|q\(6) & (\DP|IR|q\(7) & \ICdecode|ICis~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \DP|IR|q\(6),
	datac => \DP|IR|q\(7),
	datad => \ICdecode|ICis~20_combout\,
	combout => \ICdecode|ICis~27_combout\);

-- Location: FF_X18_Y4_N15
\ICdecode|ICis[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(48));

-- Location: LCCOMB_X17_Y7_N4
\ICdecode|ICis~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~21_combout\ = ((\DP|IR|q\(5) & ((\DP|IR|q\(3)) # (\DP|IR|q\(4)))) # (!\DP|IR|q\(5) & ((!\DP|IR|q\(4))))) # (!\ICdecode|Mux21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(5),
	datab => \ICdecode|Mux21~0_combout\,
	datac => \DP|IR|q\(3),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|ICis~21_combout\);

-- Location: LCCOMB_X16_Y7_N28
\ICdecode|ICis~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~22_combout\ = (!\Reset~input_o\ & \ICdecode|ICis~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \ICdecode|ICis~21_combout\,
	combout => \ICdecode|ICis~22_combout\);

-- Location: FF_X16_Y7_N29
\ICdecode|ICis[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(49));

-- Location: LCCOMB_X16_Y4_N24
\ICdecode|ICis[51]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[51]~feeder_combout\ = \ICdecode|ICis~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~11_combout\,
	combout => \ICdecode|ICis[51]~feeder_combout\);

-- Location: FF_X16_Y4_N25
\ICdecode|ICis[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[51]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(51));

-- Location: LCCOMB_X17_Y7_N20
\ICdecode|ICis~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~23_combout\ = (!\Reset~input_o\ & ((\DP|IR|q\(5)) # ((!\DP|IR|q\(4)) # (!\ICdecode|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(5),
	datab => \ICdecode|Mux21~0_combout\,
	datac => \Reset~input_o\,
	datad => \DP|IR|q\(4),
	combout => \ICdecode|ICis~23_combout\);

-- Location: FF_X17_Y7_N21
\ICdecode|ICis[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(52));

-- Location: FF_X1_Y4_N19
\ICdecode|ICis[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(53));

-- Location: LCCOMB_X17_Y7_N30
\ICdecode|ICis~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~24_combout\ = (!\Reset~input_o\ & (((\DP|IR|q\(4)) # (!\ICdecode|Mux21~0_combout\)) # (!\DP|IR|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(5),
	datab => \ICdecode|Mux21~0_combout\,
	datac => \Reset~input_o\,
	datad => \DP|IR|q\(4),
	combout => \ICdecode|ICis~24_combout\);

-- Location: FF_X17_Y7_N31
\ICdecode|ICis[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(54));

-- Location: LCCOMB_X11_Y4_N20
\ICdecode|ICis~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~25_combout\ = (((\Reset~input_o\) # (\DP|IR|q\(4))) # (!\DP|IR|q\(5))) # (!\ICdecode|Mux21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ICdecode|Mux21~0_combout\,
	datab => \DP|IR|q\(5),
	datac => \Reset~input_o\,
	datad => \DP|IR|q\(4),
	combout => \ICdecode|ICis~25_combout\);

-- Location: LCCOMB_X6_Y4_N28
\ICdecode|ICis[57]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[57]~34_combout\ = !\ICdecode|ICis~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~25_combout\,
	combout => \ICdecode|ICis[57]~34_combout\);

-- Location: FF_X6_Y4_N29
\ICdecode|ICis[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[57]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(57));

-- Location: LCCOMB_X6_Y4_N30
\ICdecode|ICis[60]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[60]~35_combout\ = !\ICdecode|ICis~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~25_combout\,
	combout => \ICdecode|ICis[60]~35_combout\);

-- Location: FF_X6_Y4_N31
\ICdecode|ICis[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[60]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(60));

-- Location: LCCOMB_X6_Y4_N24
\ICdecode|ICis[61]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[61]~feeder_combout\ = \ICdecode|ICis~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~25_combout\,
	combout => \ICdecode|ICis[61]~feeder_combout\);

-- Location: FF_X6_Y4_N25
\ICdecode|ICis[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[61]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(61));

-- Location: LCCOMB_X8_Y4_N8
\ICdecode|ICis[62]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[62]~36_combout\ = !\ICdecode|ICis~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~25_combout\,
	combout => \ICdecode|ICis[62]~36_combout\);

-- Location: FF_X8_Y4_N9
\ICdecode|ICis[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[62]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(62));

-- Location: LCCOMB_X1_Y12_N12
\ICdecode|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux22~0_combout\ = (!\DP|IR|q\(4) & (\DP|IR|q\(7) & (!\DP|IR|q\(6) & !\DP|IR|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux22~0_combout\);

-- Location: FF_X1_Y12_N13
\ICdecode|ICis[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux22~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(64));

-- Location: LCCOMB_X1_Y12_N30
\ICdecode|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux21~1_combout\ = (\DP|IR|q\(4) & (\DP|IR|q\(7) & (\DP|IR|q\(6) & \DP|IR|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux21~1_combout\);

-- Location: FF_X1_Y12_N31
\ICdecode|ICis[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux21~1_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(67));

-- Location: LCCOMB_X16_Y4_N22
\ICdecode|ICis[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[68]~feeder_combout\ = \ICdecode|ICis~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~11_combout\,
	combout => \ICdecode|ICis[68]~feeder_combout\);

-- Location: FF_X16_Y4_N23
\ICdecode|ICis[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(68));

-- Location: LCCOMB_X18_Y4_N16
\ICdecode|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux19~0_combout\ = (\DP|IR|q\(7) & ((\DP|IR|q\(6) & ((\DP|IR|q\(4)))) # (!\DP|IR|q\(6) & (!\DP|IR|q\(5) & !\DP|IR|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(7),
	datab => \DP|IR|q\(5),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux19~0_combout\);

-- Location: LCCOMB_X18_Y4_N12
\ICdecode|ICis~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis~26_combout\ = (\Reset~input_o\) # (!\ICdecode|Mux19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \ICdecode|Mux19~0_combout\,
	combout => \ICdecode|ICis~26_combout\);

-- Location: FF_X18_Y4_N13
\ICdecode|ICis[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(69));

-- Location: LCCOMB_X18_Y4_N10
\ICdecode|ICis[70]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[70]~37_combout\ = !\ICdecode|ICis~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|ICis~26_combout\,
	combout => \ICdecode|ICis[70]~37_combout\);

-- Location: FF_X18_Y4_N11
\ICdecode|ICis[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[70]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(70));

-- Location: LCCOMB_X1_Y12_N4
\ICdecode|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux17~0_combout\ = (\DP|IR|q\(4) & ((\DP|IR|q\(7) & (\DP|IR|q\(6))) # (!\DP|IR|q\(7) & ((\DP|IR|q\(5)))))) # (!\DP|IR|q\(4) & (((!\DP|IR|q\(6) & \DP|IR|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux17~0_combout\);

-- Location: FF_X1_Y12_N5
\ICdecode|ICis[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux17~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(72));

-- Location: LCCOMB_X1_Y12_N22
\ICdecode|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux16~0_combout\ = (\DP|IR|q\(4) & ((\DP|IR|q\(7) & (\DP|IR|q\(6) & \DP|IR|q\(5))) # (!\DP|IR|q\(7) & (!\DP|IR|q\(6))))) # (!\DP|IR|q\(4) & (\DP|IR|q\(6) $ (((\DP|IR|q\(7)) # (\DP|IR|q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux16~0_combout\);

-- Location: FF_X1_Y12_N23
\ICdecode|ICis[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux16~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(73));

-- Location: LCCOMB_X11_Y4_N6
\ICdecode|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux15~0_combout\ = (!\DP|IR|q\(5) & ((\DP|IR|q\(6) & ((\DP|IR|q\(4)))) # (!\DP|IR|q\(6) & (!\DP|IR|q\(7) & !\DP|IR|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(6),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(5),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux15~0_combout\);

-- Location: LCCOMB_X11_Y4_N18
\ICdecode|ICis[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[74]~feeder_combout\ = \ICdecode|Mux15~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|Mux15~0_combout\,
	combout => \ICdecode|ICis[74]~feeder_combout\);

-- Location: FF_X11_Y4_N19
\ICdecode|ICis[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[74]~feeder_combout\,
	asdata => VCC,
	sload => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(74));

-- Location: LCCOMB_X1_Y12_N20
\ICdecode|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux14~0_combout\ = (\DP|IR|q\(4) & ((\DP|IR|q\(7) & ((!\DP|IR|q\(5)))) # (!\DP|IR|q\(7) & (\DP|IR|q\(6) & \DP|IR|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux14~0_combout\);

-- Location: FF_X1_Y12_N21
\ICdecode|ICis[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux14~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(75));

-- Location: LCCOMB_X11_Y4_N0
\ICdecode|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux13~0_combout\ = (\DP|IR|q\(6) & (\DP|IR|q\(5) $ (((!\DP|IR|q\(7) & !\DP|IR|q\(4)))))) # (!\DP|IR|q\(6) & (\DP|IR|q\(7) & (!\DP|IR|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(6),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(5),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux13~0_combout\);

-- Location: LCCOMB_X11_Y4_N8
\ICdecode|ICis[76]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[76]~feeder_combout\ = \ICdecode|Mux13~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|Mux13~0_combout\,
	combout => \ICdecode|ICis[76]~feeder_combout\);

-- Location: FF_X11_Y4_N9
\ICdecode|ICis[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[76]~feeder_combout\,
	asdata => VCC,
	sload => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(76));

-- Location: LCCOMB_X1_Y12_N2
\ICdecode|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux12~0_combout\ = (\DP|IR|q\(4) & (\DP|IR|q\(7) & (!\DP|IR|q\(6)))) # (!\DP|IR|q\(4) & (\DP|IR|q\(6) & (\DP|IR|q\(7) $ (\DP|IR|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux12~0_combout\);

-- Location: FF_X1_Y12_N3
\ICdecode|ICis[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux12~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(77));

-- Location: LCCOMB_X5_Y4_N30
\ICdecode|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux11~0_combout\ = (\DP|IR|q\(6) & ((\DP|IR|q\(4)) # (\DP|IR|q\(7) $ (!\DP|IR|q\(5))))) # (!\DP|IR|q\(6) & (((!\DP|IR|q\(4)) # (!\DP|IR|q\(5))) # (!\DP|IR|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(7),
	datab => \DP|IR|q\(5),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux11~0_combout\);

-- Location: LCCOMB_X5_Y4_N8
\ICdecode|ICis[78]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[78]~feeder_combout\ = \ICdecode|Mux11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ICdecode|Mux11~0_combout\,
	combout => \ICdecode|ICis[78]~feeder_combout\);

-- Location: FF_X5_Y4_N9
\ICdecode|ICis[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[78]~feeder_combout\,
	asdata => VCC,
	sload => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(78));

-- Location: LCCOMB_X11_Y4_N10
\ICdecode|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux10~0_combout\ = (\DP|IR|q\(6) & (\DP|IR|q\(7) $ (((!\DP|IR|q\(5) & !\DP|IR|q\(4)))))) # (!\DP|IR|q\(6) & (!\DP|IR|q\(7) & ((\DP|IR|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(6),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(5),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux10~0_combout\);

-- Location: LCCOMB_X11_Y4_N30
\ICdecode|ICis[80]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[80]~feeder_combout\ = \ICdecode|Mux10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|Mux10~0_combout\,
	combout => \ICdecode|ICis[80]~feeder_combout\);

-- Location: FF_X11_Y4_N31
\ICdecode|ICis[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[80]~feeder_combout\,
	asdata => VCC,
	sload => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(80));

-- Location: LCCOMB_X5_Y4_N16
\ICdecode|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux9~0_combout\ = (\DP|IR|q\(5) & (!\DP|IR|q\(4) & ((\DP|IR|q\(6)) # (!\DP|IR|q\(7))))) # (!\DP|IR|q\(5) & (!\DP|IR|q\(7) & (\DP|IR|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(7),
	datab => \DP|IR|q\(5),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux9~0_combout\);

-- Location: LCCOMB_X5_Y4_N22
\ICdecode|ICis[81]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[81]~feeder_combout\ = \ICdecode|Mux9~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|Mux9~0_combout\,
	combout => \ICdecode|ICis[81]~feeder_combout\);

-- Location: FF_X5_Y4_N23
\ICdecode|ICis[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[81]~feeder_combout\,
	asdata => VCC,
	sload => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(81));

-- Location: LCCOMB_X1_Y12_N8
\ICdecode|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux8~0_combout\ = (\DP|IR|q\(7) & ((\DP|IR|q\(6)) # ((\DP|IR|q\(4) & \DP|IR|q\(5))))) # (!\DP|IR|q\(7) & (((!\DP|IR|q\(5)) # (!\DP|IR|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux8~0_combout\);

-- Location: FF_X1_Y12_N9
\ICdecode|ICis[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux8~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(82));

-- Location: LCCOMB_X1_Y12_N6
\ICdecode|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux7~0_combout\ = (\DP|IR|q\(5) & (!\DP|IR|q\(4) & ((\DP|IR|q\(7)) # (!\DP|IR|q\(6))))) # (!\DP|IR|q\(5) & ((\DP|IR|q\(7) $ (\DP|IR|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux7~0_combout\);

-- Location: FF_X1_Y12_N7
\ICdecode|ICis[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux7~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(83));

-- Location: LCCOMB_X5_Y4_N6
\ICdecode|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux6~0_combout\ = (\DP|IR|q\(7) & (\DP|IR|q\(6) $ (((\DP|IR|q\(5) & !\DP|IR|q\(4)))))) # (!\DP|IR|q\(7) & ((\DP|IR|q\(5) & (\DP|IR|q\(6))) # (!\DP|IR|q\(5) & (!\DP|IR|q\(6) & \DP|IR|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(7),
	datab => \DP|IR|q\(5),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux6~0_combout\);

-- Location: LCCOMB_X5_Y4_N24
\ICdecode|ICis[84]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[84]~feeder_combout\ = \ICdecode|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|Mux6~0_combout\,
	combout => \ICdecode|ICis[84]~feeder_combout\);

-- Location: FF_X5_Y4_N25
\ICdecode|ICis[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[84]~feeder_combout\,
	asdata => VCC,
	sload => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(84));

-- Location: LCCOMB_X1_Y12_N0
\ICdecode|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux5~0_combout\ = (!\DP|IR|q\(4) & (\DP|IR|q\(7) & (!\DP|IR|q\(6) & \DP|IR|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux5~0_combout\);

-- Location: FF_X1_Y12_N1
\ICdecode|ICis[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux5~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(85));

-- Location: LCCOMB_X1_Y12_N10
\ICdecode|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux4~0_combout\ = (\DP|IR|q\(6) & (\DP|IR|q\(7) $ (((\DP|IR|q\(4)) # (\DP|IR|q\(5)))))) # (!\DP|IR|q\(6) & (((!\DP|IR|q\(4) & !\DP|IR|q\(7))) # (!\DP|IR|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux4~0_combout\);

-- Location: FF_X1_Y12_N11
\ICdecode|ICis[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux4~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(88));

-- Location: LCCOMB_X11_Y4_N16
\ICdecode|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux3~0_combout\ = (\DP|IR|q\(6) & (\DP|IR|q\(7) $ ((\DP|IR|q\(5))))) # (!\DP|IR|q\(6) & ((\DP|IR|q\(4) & ((!\DP|IR|q\(5)))) # (!\DP|IR|q\(4) & (\DP|IR|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(6),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(5),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y4_N24
\ICdecode|ICis[89]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[89]~feeder_combout\ = \ICdecode|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ICdecode|Mux3~0_combout\,
	combout => \ICdecode|ICis[89]~feeder_combout\);

-- Location: FF_X11_Y4_N25
\ICdecode|ICis[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[89]~feeder_combout\,
	asdata => VCC,
	sload => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(89));

-- Location: LCCOMB_X1_Y12_N24
\ICdecode|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux2~0_combout\ = (\DP|IR|q\(5) & ((\DP|IR|q\(4) & ((!\DP|IR|q\(6)))) # (!\DP|IR|q\(4) & (!\DP|IR|q\(7) & \DP|IR|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux2~0_combout\);

-- Location: FF_X1_Y12_N25
\ICdecode|ICis[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux2~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(90));

-- Location: LCCOMB_X1_Y12_N26
\ICdecode|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux1~0_combout\ = (\DP|IR|q\(4) & (\DP|IR|q\(7) & (\DP|IR|q\(6) $ (\DP|IR|q\(5))))) # (!\DP|IR|q\(4) & (!\DP|IR|q\(7) & ((\DP|IR|q\(6)) # (\DP|IR|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(4),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(6),
	datad => \DP|IR|q\(5),
	combout => \ICdecode|Mux1~0_combout\);

-- Location: FF_X1_Y12_N27
\ICdecode|ICis[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|Mux1~0_combout\,
	sclr => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(91));

-- Location: LCCOMB_X11_Y4_N22
\ICdecode|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|Mux0~0_combout\ = (\DP|IR|q\(6) & ((\DP|IR|q\(5) & (\DP|IR|q\(7))) # (!\DP|IR|q\(5) & ((!\DP|IR|q\(4)))))) # (!\DP|IR|q\(6) & ((\DP|IR|q\(4) & ((!\DP|IR|q\(5)))) # (!\DP|IR|q\(4) & (\DP|IR|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IR|q\(6),
	datab => \DP|IR|q\(7),
	datac => \DP|IR|q\(5),
	datad => \DP|IR|q\(4),
	combout => \ICdecode|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y4_N14
\ICdecode|ICis[92]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ICdecode|ICis[92]~feeder_combout\ = \ICdecode|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ICdecode|Mux0~0_combout\,
	combout => \ICdecode|ICis[92]~feeder_combout\);

-- Location: FF_X11_Y4_N15
\ICdecode|ICis[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \ICdecode|ICis[92]~feeder_combout\,
	asdata => VCC,
	sload => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ICdecode|ICis\(92));

-- Location: LCCOMB_X16_Y5_N0
\CU|crtMCis~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|crtMCis~1_combout\ = (\CU|MC\(0)) # ((\CU|MC\(1) & (\CU|crtMCis\(0) & \CU|crtMCis~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|MC\(0),
	datab => \CU|MC\(1),
	datac => \CU|crtMCis\(0),
	datad => \CU|crtMCis~0_combout\,
	combout => \CU|crtMCis~1_combout\);

-- Location: LCCOMB_X16_Y5_N16
\CU|crtMCis~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|crtMCis~2_combout\ = (\Reset~input_o\) # (!\CU|MC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reset~input_o\,
	datad => \CU|MC\(2),
	combout => \CU|crtMCis~2_combout\);

-- Location: FF_X16_Y5_N1
\CU|crtMCis[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|crtMCis~1_combout\,
	sclr => \Reset~input_o\,
	ena => \CU|crtMCis~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|crtMCis\(0));

-- Location: LCCOMB_X16_Y5_N22
\CU|crtMCis~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|crtMCis~3_combout\ = (\CU|MC\(1) & ((\CU|MC\(0)) # ((\CU|crtMCis\(1)) # (!\CU|crtMCis~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|MC\(0),
	datab => \CU|MC\(1),
	datac => \CU|crtMCis\(1),
	datad => \CU|crtMCis~0_combout\,
	combout => \CU|crtMCis~3_combout\);

-- Location: FF_X16_Y5_N23
\CU|crtMCis[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CU|crtMCis~3_combout\,
	sclr => \Reset~input_o\,
	ena => \CU|crtMCis~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|crtMCis\(1));

-- Location: IOIBUF_X53_Y10_N15
\PB1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB1,
	o => \PB1~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X43_Y34_N15
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X45_Y34_N1
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

ww_LEDs(0) <= \LEDs[0]~output_o\;

ww_LEDs(1) <= \LEDs[1]~output_o\;

ww_LEDs(2) <= \LEDs[2]~output_o\;

ww_LEDs(3) <= \LEDs[3]~output_o\;

ww_LEDs(4) <= \LEDs[4]~output_o\;

ww_LEDs(5) <= \LEDs[5]~output_o\;

ww_LEDs(6) <= \LEDs[6]~output_o\;

ww_LEDs(7) <= \LEDs[7]~output_o\;

ww_ICis(0) <= \ICis[0]~output_o\;

ww_ICis(1) <= \ICis[1]~output_o\;

ww_ICis(2) <= \ICis[2]~output_o\;

ww_ICis(3) <= \ICis[3]~output_o\;

ww_ICis(4) <= \ICis[4]~output_o\;

ww_ICis(5) <= \ICis[5]~output_o\;

ww_ICis(6) <= \ICis[6]~output_o\;

ww_ICis(7) <= \ICis[7]~output_o\;

ww_ICis(8) <= \ICis[8]~output_o\;

ww_ICis(9) <= \ICis[9]~output_o\;

ww_ICis(10) <= \ICis[10]~output_o\;

ww_ICis(11) <= \ICis[11]~output_o\;

ww_ICis(12) <= \ICis[12]~output_o\;

ww_ICis(13) <= \ICis[13]~output_o\;

ww_ICis(14) <= \ICis[14]~output_o\;

ww_ICis(15) <= \ICis[15]~output_o\;

ww_ICis(16) <= \ICis[16]~output_o\;

ww_ICis(17) <= \ICis[17]~output_o\;

ww_ICis(18) <= \ICis[18]~output_o\;

ww_ICis(19) <= \ICis[19]~output_o\;

ww_ICis(20) <= \ICis[20]~output_o\;

ww_ICis(21) <= \ICis[21]~output_o\;

ww_ICis(22) <= \ICis[22]~output_o\;

ww_ICis(23) <= \ICis[23]~output_o\;

ww_ICis(24) <= \ICis[24]~output_o\;

ww_ICis(25) <= \ICis[25]~output_o\;

ww_ICis(26) <= \ICis[26]~output_o\;

ww_ICis(27) <= \ICis[27]~output_o\;

ww_ICis(28) <= \ICis[28]~output_o\;

ww_ICis(29) <= \ICis[29]~output_o\;

ww_ICis(30) <= \ICis[30]~output_o\;

ww_ICis(31) <= \ICis[31]~output_o\;

ww_ICis(32) <= \ICis[32]~output_o\;

ww_ICis(33) <= \ICis[33]~output_o\;

ww_ICis(34) <= \ICis[34]~output_o\;

ww_ICis(35) <= \ICis[35]~output_o\;

ww_ICis(36) <= \ICis[36]~output_o\;

ww_ICis(37) <= \ICis[37]~output_o\;

ww_ICis(38) <= \ICis[38]~output_o\;

ww_ICis(39) <= \ICis[39]~output_o\;

ww_ICis(40) <= \ICis[40]~output_o\;

ww_ICis(41) <= \ICis[41]~output_o\;

ww_ICis(42) <= \ICis[42]~output_o\;

ww_ICis(43) <= \ICis[43]~output_o\;

ww_ICis(44) <= \ICis[44]~output_o\;

ww_ICis(45) <= \ICis[45]~output_o\;

ww_ICis(46) <= \ICis[46]~output_o\;

ww_ICis(47) <= \ICis[47]~output_o\;

ww_ICis(48) <= \ICis[48]~output_o\;

ww_ICis(49) <= \ICis[49]~output_o\;

ww_ICis(50) <= \ICis[50]~output_o\;

ww_ICis(51) <= \ICis[51]~output_o\;

ww_ICis(52) <= \ICis[52]~output_o\;

ww_ICis(53) <= \ICis[53]~output_o\;

ww_ICis(54) <= \ICis[54]~output_o\;

ww_ICis(55) <= \ICis[55]~output_o\;

ww_ICis(56) <= \ICis[56]~output_o\;

ww_ICis(57) <= \ICis[57]~output_o\;

ww_ICis(58) <= \ICis[58]~output_o\;

ww_ICis(59) <= \ICis[59]~output_o\;

ww_ICis(60) <= \ICis[60]~output_o\;

ww_ICis(61) <= \ICis[61]~output_o\;

ww_ICis(62) <= \ICis[62]~output_o\;

ww_ICis(63) <= \ICis[63]~output_o\;

ww_ICis(64) <= \ICis[64]~output_o\;

ww_ICis(65) <= \ICis[65]~output_o\;

ww_ICis(66) <= \ICis[66]~output_o\;

ww_ICis(67) <= \ICis[67]~output_o\;

ww_ICis(68) <= \ICis[68]~output_o\;

ww_ICis(69) <= \ICis[69]~output_o\;

ww_ICis(70) <= \ICis[70]~output_o\;

ww_ICis(71) <= \ICis[71]~output_o\;

ww_ICis(72) <= \ICis[72]~output_o\;

ww_ICis(73) <= \ICis[73]~output_o\;

ww_ICis(74) <= \ICis[74]~output_o\;

ww_ICis(75) <= \ICis[75]~output_o\;

ww_ICis(76) <= \ICis[76]~output_o\;

ww_ICis(77) <= \ICis[77]~output_o\;

ww_ICis(78) <= \ICis[78]~output_o\;

ww_ICis(79) <= \ICis[79]~output_o\;

ww_ICis(80) <= \ICis[80]~output_o\;

ww_ICis(81) <= \ICis[81]~output_o\;

ww_ICis(82) <= \ICis[82]~output_o\;

ww_ICis(83) <= \ICis[83]~output_o\;

ww_ICis(84) <= \ICis[84]~output_o\;

ww_ICis(85) <= \ICis[85]~output_o\;

ww_ICis(86) <= \ICis[86]~output_o\;

ww_ICis(87) <= \ICis[87]~output_o\;

ww_ICis(88) <= \ICis[88]~output_o\;

ww_ICis(89) <= \ICis[89]~output_o\;

ww_ICis(90) <= \ICis[90]~output_o\;

ww_ICis(91) <= \ICis[91]~output_o\;

ww_ICis(92) <= \ICis[92]~output_o\;

ww_ICis(93) <= \ICis[93]~output_o\;

ww_ICis(94) <= \ICis[94]~output_o\;

ww_ICis(95) <= \ICis[95]~output_o\;

ww_crtMCis(0) <= \crtMCis[0]~output_o\;

ww_crtMCis(1) <= \crtMCis[1]~output_o\;

ww_crtMCis(2) <= \crtMCis[2]~output_o\;
END structure;


