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

-- DATE "02/21/2025 15:57:46"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sls_fpga_emulation IS
    PORT (
	pb : IN std_logic_vector(1 DOWNTO 0);
	sw : IN std_logic_vector(3 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0)
	);
END sls_fpga_emulation;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sls_fpga_emulation IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pb : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \cut|ALU_Result[0]~13_combout\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \cut|ALU_Result[0]~12_combout\ : std_logic;
SIGNAL \cut|ALU_Result[0]~14_combout\ : std_logic;
SIGNAL \cut|Add4~0_combout\ : std_logic;
SIGNAL \cut|ALU_Result[1]~18_combout\ : std_logic;
SIGNAL \cut|Equal4~1_combout\ : std_logic;
SIGNAL \cut|ALU_Result[1]~19_combout\ : std_logic;
SIGNAL \cut|ALU_Result[1]~20_combout\ : std_logic;
SIGNAL \cut|ALU_Result[1]~21_combout\ : std_logic;
SIGNAL \cut|ALU_Result~16_combout\ : std_logic;
SIGNAL \cut|ALU_Result~15_combout\ : std_logic;
SIGNAL \cut|ALU_Result~17_combout\ : std_logic;
SIGNAL \cut|ALU_Result[1]~25_combout\ : std_logic;
SIGNAL \cut|ALU_Result[2]~10_combout\ : std_logic;
SIGNAL \cut|ALU_Result[2]~7_combout\ : std_logic;
SIGNAL \cut|ALU_Result[2]~8_combout\ : std_logic;
SIGNAL \cut|ALU_Result[2]~6_combout\ : std_logic;
SIGNAL \cut|ALU_Result[3]~22_combout\ : std_logic;
SIGNAL \cut|ALU_Result[3]~23_combout\ : std_logic;
SIGNAL \cut|ALU_Result[3]~24_combout\ : std_logic;
SIGNAL \cut|ALU_CNVZ[0]~7_combout\ : std_logic;
SIGNAL \cut|ALU_CNVZ[0]~8_combout\ : std_logic;
SIGNAL \cut|ALU_CNVZ[0]~6_combout\ : std_logic;
SIGNAL \cut|ALU_CNVZ[0]~9_combout\ : std_logic;
SIGNAL \cut|ALU_CNVZ[1]~10_combout\ : std_logic;
SIGNAL \cut|Equal4~0_combout\ : std_logic;
SIGNAL \cut|Int_Result[7]~0_combout\ : std_logic;
SIGNAL \cut|Int_Result[7]~1_combout\ : std_logic;
SIGNAL \cut|Int_Result[7]~2_combout\ : std_logic;
SIGNAL \cut|carryout~0_combout\ : std_logic;
SIGNAL \cut|carryout~1_combout\ : std_logic;
SIGNAL \cut|carryout~2_combout\ : std_logic;
SIGNAL \cut|ALU_Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cut|ALU_CNVZ\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cut|ALU_Result[0]~14_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cut|ALU_Result\(1),
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cut|ALU_Result\(2),
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cut|ALU_Result[3]~24_combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\leds[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cut|ALU_CNVZ[0]~9_combout\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\leds[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cut|ALU_CNVZ[1]~10_combout\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\leds[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cut|ALU_CNVZ\(2),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\leds[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cut|carryout~2_combout\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOIBUF_X0_Y16_N22
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X53_Y14_N1
\pb[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\sw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X53_Y17_N15
\sw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LCCOMB_X31_Y22_N2
\cut|ALU_Result[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[0]~13_combout\ = (\sw[1]~input_o\ & (!\sw[3]~input_o\ & (\pb[0]~input_o\ $ (!\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & (((!\sw[2]~input_o\ & \sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \cut|ALU_Result[0]~13_combout\);

-- Location: IOIBUF_X0_Y16_N8
\pb[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

-- Location: LCCOMB_X31_Y22_N16
\cut|ALU_Result[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[0]~12_combout\ = (\sw[1]~input_o\ & (\sw[3]~input_o\ & ((\pb[0]~input_o\) # (\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[3]~input_o\) # ((\pb[0]~input_o\ & \sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \cut|ALU_Result[0]~12_combout\);

-- Location: LCCOMB_X31_Y22_N20
\cut|ALU_Result[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[0]~14_combout\ = (\cut|ALU_Result[0]~13_combout\ & (((\pb[1]~input_o\) # (!\cut|ALU_Result[0]~12_combout\)))) # (!\cut|ALU_Result[0]~13_combout\ & (\sw[0]~input_o\ & ((\cut|ALU_Result[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \cut|ALU_Result[0]~13_combout\,
	datac => \pb[1]~input_o\,
	datad => \cut|ALU_Result[0]~12_combout\,
	combout => \cut|ALU_Result[0]~14_combout\);

-- Location: LCCOMB_X31_Y22_N6
\cut|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|Add4~0_combout\ = \pb[1]~input_o\ $ (\pb[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|Add4~0_combout\);

-- Location: LCCOMB_X31_Y22_N0
\cut|ALU_Result[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[1]~18_combout\ = (!\sw[2]~input_o\ & (!\sw[3]~input_o\ & (\sw[1]~input_o\ $ (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \cut|ALU_Result[1]~18_combout\);

-- Location: LCCOMB_X31_Y22_N10
\cut|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|Equal4~1_combout\ = (!\sw[2]~input_o\ & !\sw[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[2]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \cut|Equal4~1_combout\);

-- Location: LCCOMB_X31_Y22_N28
\cut|ALU_Result[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[1]~19_combout\ = (\cut|Equal4~1_combout\ & ((\sw[1]~input_o\ & (!\cut|ALU_Result[1]~18_combout\ & \sw[0]~input_o\)) # (!\sw[1]~input_o\ & ((!\sw[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \cut|ALU_Result[1]~18_combout\,
	datac => \sw[0]~input_o\,
	datad => \cut|Equal4~1_combout\,
	combout => \cut|ALU_Result[1]~19_combout\);

-- Location: LCCOMB_X31_Y22_N22
\cut|ALU_Result[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[1]~20_combout\ = (\sw[1]~input_o\ & (\cut|ALU_Result[1]~18_combout\)) # (!\sw[1]~input_o\ & ((\cut|Equal4~1_combout\ & ((!\sw[0]~input_o\))) # (!\cut|Equal4~1_combout\ & (\cut|ALU_Result[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \cut|ALU_Result[1]~18_combout\,
	datac => \sw[0]~input_o\,
	datad => \cut|Equal4~1_combout\,
	combout => \cut|ALU_Result[1]~20_combout\);

-- Location: LCCOMB_X31_Y22_N24
\cut|ALU_Result[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[1]~21_combout\ = (\cut|ALU_Result[1]~20_combout\ & (\pb[0]~input_o\ $ (((\pb[1]~input_o\ & !\cut|ALU_Result[1]~19_combout\))))) # (!\cut|ALU_Result[1]~20_combout\ & (((\cut|ALU_Result[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \cut|ALU_Result[1]~19_combout\,
	datac => \cut|ALU_Result[1]~20_combout\,
	datad => \pb[0]~input_o\,
	combout => \cut|ALU_Result[1]~21_combout\);

-- Location: LCCOMB_X32_Y22_N26
\cut|ALU_Result~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result~16_combout\ = (\sw[0]~input_o\ & ((\sw[1]~input_o\ & (\pb[1]~input_o\)) # (!\sw[1]~input_o\ & ((\pb[0]~input_o\))))) # (!\sw[0]~input_o\ & (((\pb[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|ALU_Result~16_combout\);

-- Location: LCCOMB_X32_Y22_N24
\cut|ALU_Result~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result~15_combout\ = (\sw[3]~input_o\ & (((\sw[1]~input_o\)))) # (!\sw[3]~input_o\ & (\pb[1]~input_o\ & ((\sw[0]~input_o\) # (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \cut|ALU_Result~15_combout\);

-- Location: LCCOMB_X32_Y22_N12
\cut|ALU_Result~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result~17_combout\ = (\sw[2]~input_o\ & (((\cut|ALU_Result~15_combout\)))) # (!\sw[2]~input_o\ & (\cut|ALU_Result~16_combout\ & ((\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|ALU_Result~16_combout\,
	datab => \cut|ALU_Result~15_combout\,
	datac => \sw[2]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \cut|ALU_Result~17_combout\);

-- Location: LCCOMB_X31_Y22_N12
\cut|ALU_Result[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[1]~25_combout\ = (\cut|ALU_Result[1]~18_combout\) # ((!\sw[1]~input_o\ & (!\sw[0]~input_o\ & \cut|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \cut|ALU_Result[1]~18_combout\,
	datac => \sw[0]~input_o\,
	datad => \cut|Equal4~1_combout\,
	combout => \cut|ALU_Result[1]~25_combout\);

-- Location: LCCOMB_X34_Y22_N0
\cut|ALU_Result[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result\(1) = (\cut|ALU_Result[1]~21_combout\ & (((\cut|ALU_Result[1]~25_combout\)) # (!\cut|Add4~0_combout\))) # (!\cut|ALU_Result[1]~21_combout\ & (((\cut|ALU_Result~17_combout\ & !\cut|ALU_Result[1]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|Add4~0_combout\,
	datab => \cut|ALU_Result[1]~21_combout\,
	datac => \cut|ALU_Result~17_combout\,
	datad => \cut|ALU_Result[1]~25_combout\,
	combout => \cut|ALU_Result\(1));

-- Location: LCCOMB_X32_Y22_N28
\cut|ALU_Result[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[2]~10_combout\ = (\sw[3]~input_o\ & (\sw[0]~input_o\)) # (!\sw[3]~input_o\ & (\pb[0]~input_o\ & ((\sw[0]~input_o\) # (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \cut|ALU_Result[2]~10_combout\);

-- Location: LCCOMB_X32_Y22_N30
\cut|ALU_Result[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[2]~7_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\pb[0]~input_o\) # (!\sw[3]~input_o\))) # (!\sw[0]~input_o\ & (\pb[0]~input_o\ & !\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \cut|ALU_Result[2]~7_combout\);

-- Location: LCCOMB_X32_Y22_N0
\cut|ALU_Result[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[2]~8_combout\ = (\sw[0]~input_o\ & ((\sw[1]~input_o\ & (\pb[0]~input_o\)) # (!\sw[1]~input_o\ & ((\sw[3]~input_o\))))) # (!\sw[0]~input_o\ & (((\sw[3]~input_o\) # (!\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \cut|ALU_Result[2]~8_combout\);

-- Location: LCCOMB_X32_Y22_N2
\cut|ALU_Result[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[2]~6_combout\ = (\pb[1]~input_o\ & ((\cut|ALU_Result[2]~8_combout\))) # (!\pb[1]~input_o\ & (\cut|ALU_Result[2]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|ALU_Result[2]~7_combout\,
	datab => \cut|ALU_Result[2]~8_combout\,
	datac => \pb[1]~input_o\,
	combout => \cut|ALU_Result[2]~6_combout\);

-- Location: LCCOMB_X32_Y22_N6
\cut|ALU_Result[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result\(2) = (\sw[2]~input_o\ & (\cut|ALU_Result[2]~10_combout\)) # (!\sw[2]~input_o\ & ((\cut|ALU_Result[2]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cut|ALU_Result[2]~10_combout\,
	datac => \sw[2]~input_o\,
	datad => \cut|ALU_Result[2]~6_combout\,
	combout => \cut|ALU_Result\(2));

-- Location: LCCOMB_X31_Y22_N26
\cut|ALU_Result[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[3]~22_combout\ = (\cut|ALU_Result[1]~19_combout\ & (((\pb[0]~input_o\) # (!\cut|ALU_Result[1]~20_combout\)))) # (!\cut|ALU_Result[1]~19_combout\ & (\pb[1]~input_o\ & (\cut|ALU_Result[1]~20_combout\ & !\pb[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \cut|ALU_Result[1]~19_combout\,
	datac => \cut|ALU_Result[1]~20_combout\,
	datad => \pb[0]~input_o\,
	combout => \cut|ALU_Result[3]~22_combout\);

-- Location: LCCOMB_X32_Y22_N16
\cut|ALU_Result[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[3]~23_combout\ = (\pb[1]~input_o\) # (!\pb[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|ALU_Result[3]~23_combout\);

-- Location: LCCOMB_X34_Y22_N18
\cut|ALU_Result[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_Result[3]~24_combout\ = (\cut|ALU_Result[1]~25_combout\ & (\cut|ALU_Result[3]~22_combout\)) # (!\cut|ALU_Result[1]~25_combout\ & ((\cut|ALU_Result[3]~22_combout\ & ((\cut|ALU_Result[3]~23_combout\))) # (!\cut|ALU_Result[3]~22_combout\ & 
-- (\cut|ALU_Result~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|ALU_Result[1]~25_combout\,
	datab => \cut|ALU_Result[3]~22_combout\,
	datac => \cut|ALU_Result~17_combout\,
	datad => \cut|ALU_Result[3]~23_combout\,
	combout => \cut|ALU_Result[3]~24_combout\);

-- Location: LCCOMB_X31_Y22_N30
\cut|ALU_CNVZ[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_CNVZ[0]~7_combout\ = (\sw[2]~input_o\ & (!\pb[1]~input_o\ & (!\pb[0]~input_o\ & !\sw[3]~input_o\))) # (!\sw[2]~input_o\ & (((!\pb[1]~input_o\ & !\pb[0]~input_o\)) # (!\sw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \cut|ALU_CNVZ[0]~7_combout\);

-- Location: LCCOMB_X31_Y22_N8
\cut|ALU_CNVZ[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_CNVZ[0]~8_combout\ = (!\sw[1]~input_o\ & (\sw[2]~input_o\ & !\sw[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \cut|ALU_CNVZ[0]~8_combout\);

-- Location: LCCOMB_X31_Y22_N4
\cut|ALU_CNVZ[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_CNVZ[0]~6_combout\ = (\cut|ALU_Result[1]~19_combout\ & (!\pb[1]~input_o\ & (\cut|ALU_Result[1]~20_combout\ & !\pb[0]~input_o\))) # (!\cut|ALU_Result[1]~19_combout\ & (((\pb[1]~input_o\ & \pb[0]~input_o\)) # (!\cut|ALU_Result[1]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \cut|ALU_Result[1]~19_combout\,
	datac => \cut|ALU_Result[1]~20_combout\,
	datad => \pb[0]~input_o\,
	combout => \cut|ALU_CNVZ[0]~6_combout\);

-- Location: LCCOMB_X31_Y22_N18
\cut|ALU_CNVZ[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_CNVZ[0]~9_combout\ = (\cut|ALU_CNVZ[0]~6_combout\ & ((\cut|ALU_CNVZ[0]~7_combout\) # ((\cut|ALU_CNVZ[0]~8_combout\) # (\cut|ALU_Result[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|ALU_CNVZ[0]~7_combout\,
	datab => \cut|ALU_CNVZ[0]~8_combout\,
	datac => \cut|ALU_CNVZ[0]~6_combout\,
	datad => \cut|ALU_Result[1]~18_combout\,
	combout => \cut|ALU_CNVZ[0]~9_combout\);

-- Location: LCCOMB_X31_Y22_N14
\cut|ALU_CNVZ[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_CNVZ[1]~10_combout\ = (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & (\cut|Add4~0_combout\ & \cut|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \cut|Add4~0_combout\,
	datad => \cut|Equal4~1_combout\,
	combout => \cut|ALU_CNVZ[1]~10_combout\);

-- Location: LCCOMB_X32_Y22_N22
\cut|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|Equal4~0_combout\ = (!\sw[0]~input_o\ & !\sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datac => \sw[1]~input_o\,
	combout => \cut|Equal4~0_combout\);

-- Location: LCCOMB_X32_Y22_N10
\cut|Int_Result[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|Int_Result[7]~0_combout\ = (!\sw[2]~input_o\ & (\sw[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[2]~input_o\,
	combout => \cut|Int_Result[7]~0_combout\);

-- Location: LCCOMB_X32_Y22_N20
\cut|Int_Result[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|Int_Result[7]~1_combout\ = (\cut|Int_Result[7]~0_combout\ & (((!\sw[0]~input_o\ & \pb[0]~input_o\)))) # (!\cut|Int_Result[7]~0_combout\ & (\pb[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|Int_Result[7]~0_combout\,
	datab => \pb[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|Int_Result[7]~1_combout\);

-- Location: LCCOMB_X32_Y22_N14
\cut|Int_Result[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|Int_Result[7]~2_combout\ = (\cut|Int_Result[7]~1_combout\ & ((\sw[2]~input_o\ & (!\cut|Equal4~0_combout\ & !\sw[3]~input_o\)) # (!\sw[2]~input_o\ & ((\sw[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|Equal4~0_combout\,
	datab => \cut|Int_Result[7]~1_combout\,
	datac => \sw[2]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \cut|Int_Result[7]~2_combout\);

-- Location: LCCOMB_X34_Y22_N20
\cut|ALU_CNVZ[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|ALU_CNVZ\(2) = (\cut|ALU_Result[1]~25_combout\ & (\cut|ALU_Result[3]~22_combout\)) # (!\cut|ALU_Result[1]~25_combout\ & ((\cut|ALU_Result[3]~22_combout\ & ((\cut|ALU_Result[3]~23_combout\))) # (!\cut|ALU_Result[3]~22_combout\ & 
-- (\cut|Int_Result[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|ALU_Result[1]~25_combout\,
	datab => \cut|ALU_Result[3]~22_combout\,
	datac => \cut|Int_Result[7]~2_combout\,
	datad => \cut|ALU_Result[3]~23_combout\,
	combout => \cut|ALU_CNVZ\(2));

-- Location: LCCOMB_X32_Y22_N8
\cut|carryout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|carryout~0_combout\ = (!\sw[0]~input_o\ & (\pb[1]~input_o\ & (\sw[1]~input_o\ & \sw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \cut|carryout~0_combout\);

-- Location: LCCOMB_X32_Y22_N18
\cut|carryout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|carryout~1_combout\ = (\sw[0]~input_o\ & ((\pb[1]~input_o\) # ((\pb[0]~input_o\) # (!\sw[1]~input_o\)))) # (!\sw[0]~input_o\ & (\pb[1]~input_o\ & ((\pb[0]~input_o\) # (!\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|carryout~1_combout\);

-- Location: LCCOMB_X32_Y22_N4
\cut|carryout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|carryout~2_combout\ = (!\sw[2]~input_o\ & ((\cut|carryout~0_combout\) # ((!\sw[3]~input_o\ & \cut|carryout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \cut|carryout~0_combout\,
	datad => \cut|carryout~1_combout\,
	combout => \cut|carryout~2_combout\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;
END structure;


