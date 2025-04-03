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

-- DATE "03/07/2025 15:33:30"

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
-- leds[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \cut|sr_unit|sr_mux|combined|f[0]~0_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \cut|logic_unit|logic_mux|combined|f[0]~0_combout\ : std_logic;
SIGNAL \cut|arith_unit|adder|sum[0]~4_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \cut|result_mux|combined|f[0]~0_combout\ : std_logic;
SIGNAL \cut|result_mux|combined|f[0]~1_combout\ : std_logic;
SIGNAL \cut|result_mux|combined|f[1]~2_combout\ : std_logic;
SIGNAL \cut|result_mux|combined|f[1]~3_combout\ : std_logic;
SIGNAL \cut|logic_unit|logic_mux|combined|f[1]~1_combout\ : std_logic;
SIGNAL \cut|result_mux|combined|f[1]~4_combout\ : std_logic;
SIGNAL \cut|result_mux|combined|f[1]~5_combout\ : std_logic;
SIGNAL \cut|result_mux|combined|f[2]~6_combout\ : std_logic;
SIGNAL \cut|sr_unit|sr_mux|combined|f[2]~1_combout\ : std_logic;
SIGNAL \cut|result_mux|combined|f[2]~7_combout\ : std_logic;
SIGNAL \cut|result_mux|combined|f[3]~8_combout\ : std_logic;
SIGNAL \cut|result_mux|combined|f[3]~9_combout\ : std_logic;
SIGNAL \cut|sr_unit|Mux24~0_combout\ : std_logic;
SIGNAL \cut|arith_unit|Mux0~0_combout\ : std_logic;
SIGNAL \cut|cnvz_mux|combined|f[0]~0_combout\ : std_logic;
SIGNAL \cut|logic_unit|Mux0~0_combout\ : std_logic;
SIGNAL \cut|cnvz_mux|combined|f[0]~1_combout\ : std_logic;
SIGNAL \cut|arith_unit|adder|c[2]~0_combout\ : std_logic;
SIGNAL \cut|arith_unit|adder|c[3]~1_combout\ : std_logic;
SIGNAL \cut|cnvz_mux|combined|f~2_combout\ : std_logic;
SIGNAL \cut|cnvz_mux|combined|f[2]~5_combout\ : std_logic;
SIGNAL \cut|cnvz_mux|combined|f[2]~3_combout\ : std_logic;
SIGNAL \cut|cnvz_mux|combined|f[2]~4_combout\ : std_logic;
SIGNAL \cut|cnvz_mux|combined|f[2]~6_combout\ : std_logic;
SIGNAL \cut|cnvz_mux|combined|f[3]~7_combout\ : std_logic;
SIGNAL \cut|cnvz_mux|combined|f[3]~8_combout\ : std_logic;
SIGNAL \cut|arith_unit|adder|sum\ : std_logic_vector(7 DOWNTO 0);

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
	i => \cut|result_mux|combined|f[0]~1_combout\,
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
	i => \cut|result_mux|combined|f[1]~5_combout\,
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
	i => \cut|result_mux|combined|f[2]~7_combout\,
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
	i => \cut|result_mux|combined|f[3]~9_combout\,
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
	i => \cut|cnvz_mux|combined|f[0]~1_combout\,
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
	i => \cut|cnvz_mux|combined|f~2_combout\,
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
	i => \cut|cnvz_mux|combined|f[2]~6_combout\,
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
	i => \cut|cnvz_mux|combined|f[3]~8_combout\,
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

-- Location: LCCOMB_X24_Y22_N16
\cut|sr_unit|sr_mux|combined|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|sr_unit|sr_mux|combined|f[0]~0_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & ((\pb[0]~input_o\)))) # (!\sw[1]~input_o\ & (((\pb[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|sr_unit|sr_mux|combined|f[0]~0_combout\);

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

-- Location: LCCOMB_X24_Y22_N2
\cut|logic_unit|logic_mux|combined|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|logic_unit|logic_mux|combined|f[0]~0_combout\ = (\pb[0]~input_o\ & ((\sw[0]~input_o\) # (\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|logic_unit|logic_mux|combined|f[0]~0_combout\);

-- Location: LCCOMB_X24_Y22_N28
\cut|arith_unit|adder|sum[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|arith_unit|adder|sum[0]~4_combout\ = (\sw[1]~input_o\ & !\pb[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|arith_unit|adder|sum[0]~4_combout\);

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

-- Location: LCCOMB_X23_Y22_N8
\cut|result_mux|combined|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|result_mux|combined|f[0]~0_combout\ = (\sw[3]~input_o\ & (((\sw[2]~input_o\)))) # (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & (\cut|logic_unit|logic_mux|combined|f[0]~0_combout\)) # (!\sw[2]~input_o\ & ((\cut|arith_unit|adder|sum[0]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|logic_unit|logic_mux|combined|f[0]~0_combout\,
	datab => \cut|arith_unit|adder|sum[0]~4_combout\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \cut|result_mux|combined|f[0]~0_combout\);

-- Location: LCCOMB_X24_Y22_N14
\cut|result_mux|combined|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|result_mux|combined|f[0]~1_combout\ = (\sw[3]~input_o\ & ((\cut|result_mux|combined|f[0]~0_combout\ & (\sw[0]~input_o\)) # (!\cut|result_mux|combined|f[0]~0_combout\ & ((\cut|sr_unit|sr_mux|combined|f[0]~0_combout\))))) # (!\sw[3]~input_o\ & 
-- (((\cut|result_mux|combined|f[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \cut|sr_unit|sr_mux|combined|f[0]~0_combout\,
	datac => \sw[3]~input_o\,
	datad => \cut|result_mux|combined|f[0]~0_combout\,
	combout => \cut|result_mux|combined|f[0]~1_combout\);

-- Location: LCCOMB_X24_Y22_N24
\cut|result_mux|combined|f[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|result_mux|combined|f[1]~2_combout\ = (\sw[0]~input_o\ & ((\sw[1]~input_o\ & (\pb[1]~input_o\)) # (!\sw[1]~input_o\ & ((\pb[0]~input_o\))))) # (!\sw[0]~input_o\ & (((\pb[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|result_mux|combined|f[1]~2_combout\);

-- Location: LCCOMB_X23_Y22_N10
\cut|result_mux|combined|f[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|result_mux|combined|f[1]~3_combout\ = (\sw[3]~input_o\ & ((\sw[2]~input_o\ & (\sw[1]~input_o\)) # (!\sw[2]~input_o\ & ((\cut|result_mux|combined|f[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \cut|result_mux|combined|f[1]~2_combout\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \cut|result_mux|combined|f[1]~3_combout\);

-- Location: LCCOMB_X24_Y22_N18
\cut|arith_unit|adder|sum[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|arith_unit|adder|sum\(1) = (\sw[1]~input_o\ & (\sw[0]~input_o\ $ (\pb[1]~input_o\ $ (\pb[0]~input_o\)))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & ((\pb[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|arith_unit|adder|sum\(1));

-- Location: LCCOMB_X23_Y22_N28
\cut|logic_unit|logic_mux|combined|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|logic_unit|logic_mux|combined|f[1]~1_combout\ = (\sw[1]~input_o\) # (\sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	combout => \cut|logic_unit|logic_mux|combined|f[1]~1_combout\);

-- Location: LCCOMB_X23_Y22_N22
\cut|result_mux|combined|f[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|result_mux|combined|f[1]~4_combout\ = (\sw[2]~input_o\ & (\pb[1]~input_o\ & ((\cut|logic_unit|logic_mux|combined|f[1]~1_combout\)))) # (!\sw[2]~input_o\ & (((\cut|arith_unit|adder|sum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \cut|arith_unit|adder|sum\(1),
	datac => \cut|logic_unit|logic_mux|combined|f[1]~1_combout\,
	datad => \sw[2]~input_o\,
	combout => \cut|result_mux|combined|f[1]~4_combout\);

-- Location: LCCOMB_X23_Y22_N24
\cut|result_mux|combined|f[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|result_mux|combined|f[1]~5_combout\ = (\cut|result_mux|combined|f[1]~3_combout\) # ((!\sw[3]~input_o\ & \cut|result_mux|combined|f[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|result_mux|combined|f[1]~3_combout\,
	datab => \sw[3]~input_o\,
	datac => \cut|result_mux|combined|f[1]~4_combout\,
	combout => \cut|result_mux|combined|f[1]~5_combout\);

-- Location: LCCOMB_X24_Y22_N20
\cut|arith_unit|adder|sum[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|arith_unit|adder|sum\(2) = (\sw[0]~input_o\ & (\sw[1]~input_o\ & ((\pb[0]~input_o\) # (!\pb[1]~input_o\)))) # (!\sw[0]~input_o\ & ((\sw[1]~input_o\ & (!\pb[1]~input_o\ & \pb[0]~input_o\)) # (!\sw[1]~input_o\ & (\pb[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|arith_unit|adder|sum\(2));

-- Location: LCCOMB_X23_Y22_N18
\cut|result_mux|combined|f[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|result_mux|combined|f[2]~6_combout\ = (\sw[3]~input_o\ & (((\sw[2]~input_o\)))) # (!\sw[3]~input_o\ & ((\sw[2]~input_o\ & (\cut|logic_unit|logic_mux|combined|f[0]~0_combout\)) # (!\sw[2]~input_o\ & ((\cut|arith_unit|adder|sum\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|logic_unit|logic_mux|combined|f[0]~0_combout\,
	datab => \sw[3]~input_o\,
	datac => \cut|arith_unit|adder|sum\(2),
	datad => \sw[2]~input_o\,
	combout => \cut|result_mux|combined|f[2]~6_combout\);

-- Location: LCCOMB_X24_Y22_N12
\cut|sr_unit|sr_mux|combined|f[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|sr_unit|sr_mux|combined|f[2]~1_combout\ = (\sw[0]~input_o\ & ((\sw[1]~input_o\ & ((\pb[0]~input_o\))) # (!\sw[1]~input_o\ & (\pb[1]~input_o\)))) # (!\sw[0]~input_o\ & (((\pb[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|sr_unit|sr_mux|combined|f[2]~1_combout\);

-- Location: LCCOMB_X24_Y22_N0
\cut|result_mux|combined|f[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|result_mux|combined|f[2]~7_combout\ = (\cut|result_mux|combined|f[2]~6_combout\ & ((\sw[0]~input_o\) # ((!\sw[3]~input_o\)))) # (!\cut|result_mux|combined|f[2]~6_combout\ & (((\sw[3]~input_o\ & \cut|sr_unit|sr_mux|combined|f[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \cut|result_mux|combined|f[2]~6_combout\,
	datac => \sw[3]~input_o\,
	datad => \cut|sr_unit|sr_mux|combined|f[2]~1_combout\,
	combout => \cut|result_mux|combined|f[2]~7_combout\);

-- Location: LCCOMB_X24_Y22_N30
\cut|arith_unit|adder|sum[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|arith_unit|adder|sum\(3) = (\sw[0]~input_o\ & (\sw[1]~input_o\ & ((\pb[1]~input_o\) # (!\pb[0]~input_o\)))) # (!\sw[0]~input_o\ & ((\sw[1]~input_o\ & (\pb[1]~input_o\ & !\pb[0]~input_o\)) # (!\sw[1]~input_o\ & ((\pb[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|arith_unit|adder|sum\(3));

-- Location: LCCOMB_X23_Y22_N20
\cut|result_mux|combined|f[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|result_mux|combined|f[3]~8_combout\ = (\sw[2]~input_o\ & (\pb[1]~input_o\ & (\cut|logic_unit|logic_mux|combined|f[1]~1_combout\))) # (!\sw[2]~input_o\ & (((\cut|arith_unit|adder|sum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \cut|logic_unit|logic_mux|combined|f[1]~1_combout\,
	datac => \cut|arith_unit|adder|sum\(3),
	datad => \sw[2]~input_o\,
	combout => \cut|result_mux|combined|f[3]~8_combout\);

-- Location: LCCOMB_X23_Y22_N30
\cut|result_mux|combined|f[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|result_mux|combined|f[3]~9_combout\ = (\cut|result_mux|combined|f[1]~3_combout\) # ((\cut|result_mux|combined|f[3]~8_combout\ & !\sw[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|result_mux|combined|f[1]~3_combout\,
	datab => \cut|result_mux|combined|f[3]~8_combout\,
	datac => \sw[3]~input_o\,
	combout => \cut|result_mux|combined|f[3]~9_combout\);

-- Location: LCCOMB_X24_Y22_N6
\cut|sr_unit|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|sr_unit|Mux24~0_combout\ = (\pb[1]~input_o\) # (\pb[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|sr_unit|Mux24~0_combout\);

-- Location: LCCOMB_X24_Y22_N8
\cut|arith_unit|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|arith_unit|Mux0~0_combout\ = (!\cut|arith_unit|adder|sum[0]~4_combout\ & (!\cut|arith_unit|adder|sum\(2) & (!\cut|arith_unit|adder|sum\(3) & !\cut|arith_unit|adder|sum\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|arith_unit|adder|sum[0]~4_combout\,
	datab => \cut|arith_unit|adder|sum\(2),
	datac => \cut|arith_unit|adder|sum\(3),
	datad => \cut|arith_unit|adder|sum\(1),
	combout => \cut|arith_unit|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y22_N0
\cut|cnvz_mux|combined|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|cnvz_mux|combined|f[0]~0_combout\ = (\sw[3]~input_o\ & (((\sw[2]~input_o\)) # (!\cut|sr_unit|Mux24~0_combout\))) # (!\sw[3]~input_o\ & (((\cut|arith_unit|Mux0~0_combout\ & !\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|sr_unit|Mux24~0_combout\,
	datab => \sw[3]~input_o\,
	datac => \cut|arith_unit|Mux0~0_combout\,
	datad => \sw[2]~input_o\,
	combout => \cut|cnvz_mux|combined|f[0]~0_combout\);

-- Location: LCCOMB_X24_Y22_N4
\cut|logic_unit|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|logic_unit|Mux0~0_combout\ = (\sw[0]~input_o\ & (((\pb[1]~input_o\) # (\pb[0]~input_o\)))) # (!\sw[0]~input_o\ & (\sw[1]~input_o\ & ((\pb[1]~input_o\) # (\pb[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|logic_unit|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y22_N26
\cut|cnvz_mux|combined|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|cnvz_mux|combined|f[0]~1_combout\ = (\sw[2]~input_o\ & ((\cut|cnvz_mux|combined|f[0]~0_combout\ & ((!\cut|logic_unit|logic_mux|combined|f[1]~1_combout\))) # (!\cut|cnvz_mux|combined|f[0]~0_combout\ & (!\cut|logic_unit|Mux0~0_combout\)))) # 
-- (!\sw[2]~input_o\ & (\cut|cnvz_mux|combined|f[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \cut|cnvz_mux|combined|f[0]~0_combout\,
	datac => \cut|logic_unit|Mux0~0_combout\,
	datad => \cut|logic_unit|logic_mux|combined|f[1]~1_combout\,
	combout => \cut|cnvz_mux|combined|f[0]~1_combout\);

-- Location: LCCOMB_X24_Y22_N22
\cut|arith_unit|adder|c[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|arith_unit|adder|c[2]~0_combout\ = (\sw[0]~input_o\ & (((\pb[1]~input_o\) # (\pb[0]~input_o\)) # (!\sw[1]~input_o\))) # (!\sw[0]~input_o\ & (\pb[1]~input_o\ & ((\pb[0]~input_o\) # (!\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|arith_unit|adder|c[2]~0_combout\);

-- Location: LCCOMB_X24_Y22_N26
\cut|arith_unit|adder|c[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|arith_unit|adder|c[3]~1_combout\ = (\sw[0]~input_o\ & (((\pb[1]~input_o\) # (\pb[0]~input_o\)) # (!\sw[1]~input_o\))) # (!\sw[0]~input_o\ & (\pb[0]~input_o\ & ((\pb[1]~input_o\) # (!\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|arith_unit|adder|c[3]~1_combout\);

-- Location: LCCOMB_X23_Y22_N12
\cut|cnvz_mux|combined|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|cnvz_mux|combined|f~2_combout\ = (!\sw[2]~input_o\ & (!\sw[3]~input_o\ & (\cut|arith_unit|adder|c[2]~0_combout\ $ (\cut|arith_unit|adder|c[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \cut|arith_unit|adder|c[2]~0_combout\,
	datac => \sw[3]~input_o\,
	datad => \cut|arith_unit|adder|c[3]~1_combout\,
	combout => \cut|cnvz_mux|combined|f~2_combout\);

-- Location: LCCOMB_X23_Y22_N16
\cut|cnvz_mux|combined|f[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|cnvz_mux|combined|f[2]~5_combout\ = (\sw[3]~input_o\ & (((\sw[1]~input_o\)))) # (!\sw[3]~input_o\ & (\pb[1]~input_o\ & ((\sw[0]~input_o\) # (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \pb[1]~input_o\,
	combout => \cut|cnvz_mux|combined|f[2]~5_combout\);

-- Location: LCCOMB_X24_Y22_N10
\cut|cnvz_mux|combined|f[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|cnvz_mux|combined|f[2]~3_combout\ = (\sw[0]~input_o\ & (((\pb[1]~input_o\)))) # (!\sw[0]~input_o\ & ((\sw[1]~input_o\ & ((\pb[0]~input_o\))) # (!\sw[1]~input_o\ & (\pb[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \pb[0]~input_o\,
	combout => \cut|cnvz_mux|combined|f[2]~3_combout\);

-- Location: LCCOMB_X23_Y22_N14
\cut|cnvz_mux|combined|f[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|cnvz_mux|combined|f[2]~4_combout\ = (!\sw[2]~input_o\ & ((\sw[3]~input_o\ & ((\cut|cnvz_mux|combined|f[2]~3_combout\))) # (!\sw[3]~input_o\ & (\cut|arith_unit|adder|sum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|arith_unit|adder|sum\(3),
	datab => \cut|cnvz_mux|combined|f[2]~3_combout\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \cut|cnvz_mux|combined|f[2]~4_combout\);

-- Location: LCCOMB_X23_Y22_N2
\cut|cnvz_mux|combined|f[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|cnvz_mux|combined|f[2]~6_combout\ = (\cut|cnvz_mux|combined|f[2]~4_combout\) # ((\cut|cnvz_mux|combined|f[2]~5_combout\ & \sw[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cut|cnvz_mux|combined|f[2]~5_combout\,
	datac => \cut|cnvz_mux|combined|f[2]~4_combout\,
	datad => \sw[2]~input_o\,
	combout => \cut|cnvz_mux|combined|f[2]~6_combout\);

-- Location: LCCOMB_X23_Y22_N4
\cut|cnvz_mux|combined|f[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|cnvz_mux|combined|f[3]~7_combout\ = (!\sw[0]~input_o\ & (\sw[3]~input_o\ & (\sw[1]~input_o\ & \pb[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \pb[1]~input_o\,
	combout => \cut|cnvz_mux|combined|f[3]~7_combout\);

-- Location: LCCOMB_X23_Y22_N6
\cut|cnvz_mux|combined|f[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|cnvz_mux|combined|f[3]~8_combout\ = (!\sw[2]~input_o\ & ((\cut|cnvz_mux|combined|f[3]~7_combout\) # ((!\sw[3]~input_o\ & \cut|arith_unit|adder|c[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \cut|cnvz_mux|combined|f[3]~7_combout\,
	datac => \sw[3]~input_o\,
	datad => \cut|arith_unit|adder|c[2]~0_combout\,
	combout => \cut|cnvz_mux|combined|f[3]~8_combout\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;
END structure;


