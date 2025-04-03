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

-- DATE "02/14/2025 14:59:25"

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
	leds : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END sls_fpga_emulation;

-- Design Ports Information
-- pb[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \cut|sum[0]~6_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \cut|c[1]~0_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \cut|c[2]~1_combout\ : std_logic;
SIGNAL \cut|c[3]~2_combout\ : std_logic;
SIGNAL \cut|c[4]~3_combout\ : std_logic;
SIGNAL \cut|c[5]~4_combout\ : std_logic;
SIGNAL \cut|c[6]~5_combout\ : std_logic;
SIGNAL \cut|c[7]~6_combout\ : std_logic;
SIGNAL \cut|sum\ : std_logic_vector(7 DOWNTO 0);

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
	i => \cut|sum[0]~6_combout\,
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
	i => \cut|sum\(1),
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
	i => \cut|sum\(2),
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
	i => \cut|sum\(3),
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
	i => \cut|sum\(4),
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
	i => \cut|sum\(5),
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
	i => \cut|sum\(6),
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
	i => \cut|sum\(7),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

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

-- Location: LCCOMB_X31_Y26_N16
\cut|sum[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|sum[0]~6_combout\ = \sw[2]~input_o\ $ (\sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[2]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \cut|sum[0]~6_combout\);

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

-- Location: LCCOMB_X31_Y26_N2
\cut|c[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|c[1]~0_combout\ = (\sw[0]~input_o\ & ((\sw[2]~input_o\))) # (!\sw[0]~input_o\ & (\pb[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \sw[2]~input_o\,
	combout => \cut|c[1]~0_combout\);

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

-- Location: LCCOMB_X31_Y26_N20
\cut|sum[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|sum\(1) = \sw[3]~input_o\ $ (\cut|c[1]~0_combout\ $ (\pb[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \cut|c[1]~0_combout\,
	datac => \pb[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \cut|sum\(1));

-- Location: LCCOMB_X31_Y26_N6
\cut|c[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|c[2]~1_combout\ = (\sw[3]~input_o\ & ((\cut|c[1]~0_combout\) # (\pb[0]~input_o\ $ (\sw[1]~input_o\)))) # (!\sw[3]~input_o\ & (\cut|c[1]~0_combout\ & (\pb[0]~input_o\ $ (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \cut|c[1]~0_combout\,
	datac => \pb[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \cut|c[2]~1_combout\);

-- Location: LCCOMB_X31_Y26_N8
\cut|sum[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|sum\(2) = \sw[2]~input_o\ $ (\sw[0]~input_o\ $ (\pb[0]~input_o\ $ (\cut|c[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \pb[0]~input_o\,
	datad => \cut|c[2]~1_combout\,
	combout => \cut|sum\(2));

-- Location: LCCOMB_X31_Y26_N0
\cut|c[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|c[3]~2_combout\ = (\sw[2]~input_o\ & ((\cut|c[2]~1_combout\) # (\sw[0]~input_o\ $ (\pb[0]~input_o\)))) # (!\sw[2]~input_o\ & (\cut|c[2]~1_combout\ & (\sw[0]~input_o\ $ (\pb[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \pb[0]~input_o\,
	datad => \cut|c[2]~1_combout\,
	combout => \cut|c[3]~2_combout\);

-- Location: LCCOMB_X31_Y26_N18
\cut|sum[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|sum\(3) = \sw[3]~input_o\ $ (\cut|c[3]~2_combout\ $ (\pb[0]~input_o\ $ (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \cut|c[3]~2_combout\,
	datac => \pb[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \cut|sum\(3));

-- Location: LCCOMB_X31_Y26_N28
\cut|c[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|c[4]~3_combout\ = (\sw[3]~input_o\ & ((\cut|c[3]~2_combout\) # (\pb[0]~input_o\ $ (\sw[1]~input_o\)))) # (!\sw[3]~input_o\ & (\cut|c[3]~2_combout\ & (\pb[0]~input_o\ $ (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \cut|c[3]~2_combout\,
	datac => \pb[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \cut|c[4]~3_combout\);

-- Location: LCCOMB_X31_Y26_N10
\cut|sum[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|sum\(4) = \pb[0]~input_o\ $ (\sw[0]~input_o\ $ (\sw[2]~input_o\ $ (\cut|c[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \cut|c[4]~3_combout\,
	combout => \cut|sum\(4));

-- Location: LCCOMB_X31_Y26_N30
\cut|c[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|c[5]~4_combout\ = (\sw[2]~input_o\ & ((\cut|c[4]~3_combout\) # (\pb[0]~input_o\ $ (\sw[0]~input_o\)))) # (!\sw[2]~input_o\ & (\cut|c[4]~3_combout\ & (\pb[0]~input_o\ $ (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \cut|c[4]~3_combout\,
	combout => \cut|c[5]~4_combout\);

-- Location: LCCOMB_X31_Y26_N24
\cut|sum[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|sum\(5) = \pb[0]~input_o\ $ (\sw[1]~input_o\ $ (\cut|c[5]~4_combout\ $ (\sw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \cut|c[5]~4_combout\,
	datad => \sw[3]~input_o\,
	combout => \cut|sum\(5));

-- Location: LCCOMB_X31_Y26_N26
\cut|c[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|c[6]~5_combout\ = (\cut|c[5]~4_combout\ & ((\sw[3]~input_o\) # (\pb[0]~input_o\ $ (\sw[1]~input_o\)))) # (!\cut|c[5]~4_combout\ & (\sw[3]~input_o\ & (\pb[0]~input_o\ $ (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \cut|c[5]~4_combout\,
	datad => \sw[3]~input_o\,
	combout => \cut|c[6]~5_combout\);

-- Location: LCCOMB_X31_Y26_N12
\cut|sum[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|sum\(6) = \cut|c[6]~5_combout\ $ (\sw[0]~input_o\ $ (\pb[0]~input_o\ $ (\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|c[6]~5_combout\,
	datab => \sw[0]~input_o\,
	datac => \pb[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \cut|sum\(6));

-- Location: LCCOMB_X31_Y26_N4
\cut|c[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|c[7]~6_combout\ = (\cut|c[6]~5_combout\ & ((\sw[2]~input_o\) # (\sw[0]~input_o\ $ (\pb[0]~input_o\)))) # (!\cut|c[6]~5_combout\ & (\sw[2]~input_o\ & (\sw[0]~input_o\ $ (\pb[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|c[6]~5_combout\,
	datab => \sw[0]~input_o\,
	datac => \pb[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \cut|c[7]~6_combout\);

-- Location: LCCOMB_X31_Y26_N22
\cut|sum[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|sum\(7) = \pb[0]~input_o\ $ (\sw[1]~input_o\ $ (\cut|c[7]~6_combout\ $ (\sw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \cut|c[7]~6_combout\,
	datad => \sw[3]~input_o\,
	combout => \cut|sum\(7));

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

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;
END structure;


