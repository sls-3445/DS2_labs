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

-- DATE "03/07/2025 15:16:06"

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

ENTITY 	sls_mem_fpga_emulation_vhdl IS
    PORT (
	CLOCK_50 : IN std_logic;
	pb : IN std_logic;
	leds : OUT std_logic_vector(7 DOWNTO 0)
	);
END sls_mem_fpga_emulation_vhdl;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sls_mem_fpga_emulation_vhdl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_pb : std_logic;
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL \cut|my_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cut|my_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cut|my_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cut|myrom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cut|myrom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \intClock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \intclockcnt[0]~26_combout\ : std_logic;
SIGNAL \intclockcnt[23]~73\ : std_logic;
SIGNAL \intclockcnt[24]~74_combout\ : std_logic;
SIGNAL \intclockcnt[24]~75\ : std_logic;
SIGNAL \intclockcnt[25]~76_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \intclockcnt[0]~27\ : std_logic;
SIGNAL \intclockcnt[1]~28_combout\ : std_logic;
SIGNAL \intclockcnt[1]~29\ : std_logic;
SIGNAL \intclockcnt[2]~30_combout\ : std_logic;
SIGNAL \intclockcnt[2]~31\ : std_logic;
SIGNAL \intclockcnt[3]~32_combout\ : std_logic;
SIGNAL \intclockcnt[3]~33\ : std_logic;
SIGNAL \intclockcnt[4]~34_combout\ : std_logic;
SIGNAL \intclockcnt[4]~35\ : std_logic;
SIGNAL \intclockcnt[5]~36_combout\ : std_logic;
SIGNAL \intclockcnt[5]~37\ : std_logic;
SIGNAL \intclockcnt[6]~38_combout\ : std_logic;
SIGNAL \intclockcnt[6]~39\ : std_logic;
SIGNAL \intclockcnt[7]~40_combout\ : std_logic;
SIGNAL \intclockcnt[7]~41\ : std_logic;
SIGNAL \intclockcnt[8]~42_combout\ : std_logic;
SIGNAL \intclockcnt[8]~43\ : std_logic;
SIGNAL \intclockcnt[9]~44_combout\ : std_logic;
SIGNAL \intclockcnt[9]~45\ : std_logic;
SIGNAL \intclockcnt[10]~46_combout\ : std_logic;
SIGNAL \intclockcnt[10]~47\ : std_logic;
SIGNAL \intclockcnt[11]~48_combout\ : std_logic;
SIGNAL \intclockcnt[11]~49\ : std_logic;
SIGNAL \intclockcnt[12]~50_combout\ : std_logic;
SIGNAL \intclockcnt[12]~51\ : std_logic;
SIGNAL \intclockcnt[13]~52_combout\ : std_logic;
SIGNAL \intclockcnt[13]~53\ : std_logic;
SIGNAL \intclockcnt[14]~54_combout\ : std_logic;
SIGNAL \intclockcnt[14]~55\ : std_logic;
SIGNAL \intclockcnt[15]~56_combout\ : std_logic;
SIGNAL \intclockcnt[15]~57\ : std_logic;
SIGNAL \intclockcnt[16]~58_combout\ : std_logic;
SIGNAL \intclockcnt[16]~59\ : std_logic;
SIGNAL \intclockcnt[17]~60_combout\ : std_logic;
SIGNAL \intclockcnt[17]~61\ : std_logic;
SIGNAL \intclockcnt[18]~62_combout\ : std_logic;
SIGNAL \intclockcnt[18]~63\ : std_logic;
SIGNAL \intclockcnt[19]~64_combout\ : std_logic;
SIGNAL \intclockcnt[19]~65\ : std_logic;
SIGNAL \intclockcnt[20]~66_combout\ : std_logic;
SIGNAL \intclockcnt[20]~67\ : std_logic;
SIGNAL \intclockcnt[21]~68_combout\ : std_logic;
SIGNAL \intclockcnt[21]~69\ : std_logic;
SIGNAL \intclockcnt[22]~70_combout\ : std_logic;
SIGNAL \intclockcnt[22]~71\ : std_logic;
SIGNAL \intclockcnt[23]~72_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \intClock~0_combout\ : std_logic;
SIGNAL \intClock~q\ : std_logic;
SIGNAL \intClock~clkctrl_outclk\ : std_logic;
SIGNAL \mem_cu|intcnt[0]~7_combout\ : std_logic;
SIGNAL \mem_cu|state~3_combout\ : std_logic;
SIGNAL \pb~input_o\ : std_logic;
SIGNAL \mem_cu|intcnt[5]~6_combout\ : std_logic;
SIGNAL \mem_cu|LessThan0~0_combout\ : std_logic;
SIGNAL \mem_cu|intcnt[5]~19_combout\ : std_logic;
SIGNAL \mem_cu|LessThan1~0_combout\ : std_logic;
SIGNAL \mem_cu|state~4_combout\ : std_logic;
SIGNAL \mem_cu|intcnt[5]~20_combout\ : std_logic;
SIGNAL \mem_cu|intcnt[5]~21_combout\ : std_logic;
SIGNAL \mem_cu|intcnt[0]~8\ : std_logic;
SIGNAL \mem_cu|intcnt[1]~9_combout\ : std_logic;
SIGNAL \mem_cu|intcnt[1]~10\ : std_logic;
SIGNAL \mem_cu|intcnt[2]~11_combout\ : std_logic;
SIGNAL \mem_cu|intcnt[2]~12\ : std_logic;
SIGNAL \mem_cu|intcnt[3]~13_combout\ : std_logic;
SIGNAL \mem_cu|intcnt[3]~14\ : std_logic;
SIGNAL \mem_cu|intcnt[4]~15_combout\ : std_logic;
SIGNAL \mem_cu|intcnt[4]~16\ : std_logic;
SIGNAL \mem_cu|intcnt[5]~17_combout\ : std_logic;
SIGNAL \mem_cu|state~1_combout\ : std_logic;
SIGNAL \mem_cu|state~2_combout\ : std_logic;
SIGNAL \mem_cu|LessThan0~1_combout\ : std_logic;
SIGNAL \mem_cu|state~0_combout\ : std_logic;
SIGNAL \mem_cu|LD_EN_M~0_combout\ : std_logic;
SIGNAL \mem_cu|LD_EN_M~q\ : std_logic;
SIGNAL \cut|mycnt|Count[0]~8_combout\ : std_logic;
SIGNAL \mem_cu|Cnt_EN~q\ : std_logic;
SIGNAL \mem_cu|Equal0~2_combout\ : std_logic;
SIGNAL \mem_cu|LD_EN_upcnt~q\ : std_logic;
SIGNAL \cut|mycnt|Count[6]~10_combout\ : std_logic;
SIGNAL \cut|mycnt|Count[6]~11_combout\ : std_logic;
SIGNAL \cut|mycnt|Count[0]~9\ : std_logic;
SIGNAL \cut|mycnt|Count[1]~12_combout\ : std_logic;
SIGNAL \cut|mycnt|Count[1]~13\ : std_logic;
SIGNAL \cut|mycnt|Count[2]~14_combout\ : std_logic;
SIGNAL \cut|mycnt|Count[2]~15\ : std_logic;
SIGNAL \cut|mycnt|Count[3]~16_combout\ : std_logic;
SIGNAL \cut|mycnt|Count[3]~17\ : std_logic;
SIGNAL \cut|mycnt|Count[4]~18_combout\ : std_logic;
SIGNAL \cut|mycnt|Count[4]~19\ : std_logic;
SIGNAL \cut|mycnt|Count[5]~20_combout\ : std_logic;
SIGNAL \cut|mycnt|Count[5]~21\ : std_logic;
SIGNAL \cut|mycnt|Count[6]~22_combout\ : std_logic;
SIGNAL \cut|mycnt|Count[6]~23\ : std_logic;
SIGNAL \cut|mycnt|Count[7]~24_combout\ : std_logic;
SIGNAL \cut|my_m|int_val~0_combout\ : std_logic;
SIGNAL \cut|my_m|int_val[0]~1_combout\ : std_logic;
SIGNAL \cut|my_m|int_val~2_combout\ : std_logic;
SIGNAL \cut|my_m|int_val~3_combout\ : std_logic;
SIGNAL \cut|my_m|int_val~4_combout\ : std_logic;
SIGNAL \cut|my_l|int_val~0_combout\ : std_logic;
SIGNAL \cut|my_l|int_val[0]~feeder_combout\ : std_logic;
SIGNAL \mem_cu|Equal0~0_combout\ : std_logic;
SIGNAL \mem_cu|LD_EN_L~q\ : std_logic;
SIGNAL \cut|my_l|int_val[0]~1_combout\ : std_logic;
SIGNAL \cut|my_l|int_val~2_combout\ : std_logic;
SIGNAL \cut|my_l|int_val[1]~feeder_combout\ : std_logic;
SIGNAL \cut|my_l|int_val~3_combout\ : std_logic;
SIGNAL \cut|my_l|int_val[2]~feeder_combout\ : std_logic;
SIGNAL \cut|my_l|int_val~4_combout\ : std_logic;
SIGNAL \mem_cu|Equal0~1_combout\ : std_logic;
SIGNAL \mem_cu|LD_EN_H~q\ : std_logic;
SIGNAL \cut|my_h|int_val[0]~0_combout\ : std_logic;
SIGNAL \cut|my_ram|altsyncram_component|auto_generated|q_a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cut|mycnt|Count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cut|my_m|int_val\ : std_logic_vector(3 DOWNTO 0);
SIGNAL intclockcnt : std_logic_vector(25 DOWNTO 0);
SIGNAL \mem_cu|state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cut|my_h|int_val\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cut|myrom|altsyncram_component|auto_generated|q_a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem_cu|intcnt\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \cut|my_l|int_val\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_pb~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_pb <= pb;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cut|my_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \cut|my_m|int_val\(3) & \cut|my_m|int_val\(2) & \cut|my_m|int_val\(1) & 
\cut|my_m|int_val\(0));

\cut|my_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\cut|mycnt|Count\(7) & \cut|mycnt|Count\(6) & \cut|mycnt|Count\(5) & \cut|mycnt|Count\(4) & \cut|mycnt|Count\(3) & \cut|mycnt|Count\(2) & \cut|mycnt|Count\(1) & 
\cut|mycnt|Count\(0));

\cut|my_ram|altsyncram_component|auto_generated|q_a\(0) <= \cut|my_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\cut|my_ram|altsyncram_component|auto_generated|q_a\(1) <= \cut|my_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\cut|my_ram|altsyncram_component|auto_generated|q_a\(2) <= \cut|my_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\cut|my_ram|altsyncram_component|auto_generated|q_a\(3) <= \cut|my_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\cut|myrom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\cut|mycnt|Count\(7) & \cut|mycnt|Count\(6) & \cut|mycnt|Count\(5) & \cut|mycnt|Count\(4) & \cut|mycnt|Count\(3) & \cut|mycnt|Count\(2) & \cut|mycnt|Count\(1) & 
\cut|mycnt|Count\(0));

\cut|myrom|altsyncram_component|auto_generated|q_a\(0) <= \cut|myrom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\cut|myrom|altsyncram_component|auto_generated|q_a\(1) <= \cut|myrom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\cut|myrom|altsyncram_component|auto_generated|q_a\(2) <= \cut|myrom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\cut|myrom|altsyncram_component|auto_generated|q_a\(3) <= \cut|myrom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\intClock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \intClock~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_pb~input_o\ <= NOT \pb~input_o\;
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
	i => \cut|my_l|int_val\(0),
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
	i => \cut|my_l|int_val\(1),
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
	i => \cut|my_l|int_val\(2),
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
	i => \cut|my_l|int_val\(3),
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
	i => \cut|my_h|int_val\(0),
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
	i => \cut|my_h|int_val\(1),
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
	i => \cut|my_h|int_val\(2),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cut|my_h|int_val\(3),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G18
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y32_N6
\intclockcnt[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[0]~26_combout\ = intclockcnt(0) $ (VCC)
-- \intclockcnt[0]~27\ = CARRY(intclockcnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => intclockcnt(0),
	datad => VCC,
	combout => \intclockcnt[0]~26_combout\,
	cout => \intclockcnt[0]~27\);

-- Location: LCCOMB_X25_Y31_N20
\intclockcnt[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[23]~72_combout\ = (intclockcnt(23) & (!\intclockcnt[22]~71\)) # (!intclockcnt(23) & ((\intclockcnt[22]~71\) # (GND)))
-- \intclockcnt[23]~73\ = CARRY((!\intclockcnt[22]~71\) # (!intclockcnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(23),
	datad => VCC,
	cin => \intclockcnt[22]~71\,
	combout => \intclockcnt[23]~72_combout\,
	cout => \intclockcnt[23]~73\);

-- Location: LCCOMB_X25_Y31_N22
\intclockcnt[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[24]~74_combout\ = (intclockcnt(24) & (\intclockcnt[23]~73\ $ (GND))) # (!intclockcnt(24) & (!\intclockcnt[23]~73\ & VCC))
-- \intclockcnt[24]~75\ = CARRY((intclockcnt(24) & !\intclockcnt[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => intclockcnt(24),
	datad => VCC,
	cin => \intclockcnt[23]~73\,
	combout => \intclockcnt[24]~74_combout\,
	cout => \intclockcnt[24]~75\);

-- Location: FF_X25_Y31_N23
\intclockcnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[24]~74_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(24));

-- Location: LCCOMB_X25_Y31_N24
\intclockcnt[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[25]~76_combout\ = \intclockcnt[24]~75\ $ (intclockcnt(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => intclockcnt(25),
	cin => \intclockcnt[24]~75\,
	combout => \intclockcnt[25]~76_combout\);

-- Location: FF_X25_Y31_N25
\intclockcnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[25]~76_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(25));

-- Location: LCCOMB_X25_Y31_N26
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!intclockcnt(17) & (!intclockcnt(15) & !intclockcnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(17),
	datac => intclockcnt(15),
	datad => intclockcnt(23),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y32_N2
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!intclockcnt(6) & (!intclockcnt(9) & (!intclockcnt(8) & !intclockcnt(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => intclockcnt(6),
	datab => intclockcnt(9),
	datac => intclockcnt(8),
	datad => intclockcnt(7),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y32_N0
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!intclockcnt(11)) # (!intclockcnt(12))) # (!intclockcnt(13))) # (!intclockcnt(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => intclockcnt(14),
	datab => intclockcnt(13),
	datac => intclockcnt(12),
	datad => intclockcnt(11),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y32_N4
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # ((\LessThan0~2_combout\ & !intclockcnt(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan0~2_combout\,
	datac => intclockcnt(10),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X25_Y33_N2
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (intclockcnt(25)) # ((!\LessThan0~6_combout\ & !\LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datac => intclockcnt(25),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~7_combout\);

-- Location: FF_X25_Y32_N7
\intclockcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[0]~26_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(0));

-- Location: LCCOMB_X25_Y32_N8
\intclockcnt[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[1]~28_combout\ = (intclockcnt(1) & (!\intclockcnt[0]~27\)) # (!intclockcnt(1) & ((\intclockcnt[0]~27\) # (GND)))
-- \intclockcnt[1]~29\ = CARRY((!\intclockcnt[0]~27\) # (!intclockcnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(1),
	datad => VCC,
	cin => \intclockcnt[0]~27\,
	combout => \intclockcnt[1]~28_combout\,
	cout => \intclockcnt[1]~29\);

-- Location: FF_X25_Y32_N9
\intclockcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[1]~28_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(1));

-- Location: LCCOMB_X25_Y32_N10
\intclockcnt[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[2]~30_combout\ = (intclockcnt(2) & (\intclockcnt[1]~29\ $ (GND))) # (!intclockcnt(2) & (!\intclockcnt[1]~29\ & VCC))
-- \intclockcnt[2]~31\ = CARRY((intclockcnt(2) & !\intclockcnt[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => intclockcnt(2),
	datad => VCC,
	cin => \intclockcnt[1]~29\,
	combout => \intclockcnt[2]~30_combout\,
	cout => \intclockcnt[2]~31\);

-- Location: FF_X25_Y32_N11
\intclockcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[2]~30_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(2));

-- Location: LCCOMB_X25_Y32_N12
\intclockcnt[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[3]~32_combout\ = (intclockcnt(3) & (!\intclockcnt[2]~31\)) # (!intclockcnt(3) & ((\intclockcnt[2]~31\) # (GND)))
-- \intclockcnt[3]~33\ = CARRY((!\intclockcnt[2]~31\) # (!intclockcnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => intclockcnt(3),
	datad => VCC,
	cin => \intclockcnt[2]~31\,
	combout => \intclockcnt[3]~32_combout\,
	cout => \intclockcnt[3]~33\);

-- Location: FF_X25_Y32_N13
\intclockcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[3]~32_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(3));

-- Location: LCCOMB_X25_Y32_N14
\intclockcnt[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[4]~34_combout\ = (intclockcnt(4) & (\intclockcnt[3]~33\ $ (GND))) # (!intclockcnt(4) & (!\intclockcnt[3]~33\ & VCC))
-- \intclockcnt[4]~35\ = CARRY((intclockcnt(4) & !\intclockcnt[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(4),
	datad => VCC,
	cin => \intclockcnt[3]~33\,
	combout => \intclockcnt[4]~34_combout\,
	cout => \intclockcnt[4]~35\);

-- Location: FF_X25_Y32_N15
\intclockcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[4]~34_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(4));

-- Location: LCCOMB_X25_Y32_N16
\intclockcnt[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[5]~36_combout\ = (intclockcnt(5) & (!\intclockcnt[4]~35\)) # (!intclockcnt(5) & ((\intclockcnt[4]~35\) # (GND)))
-- \intclockcnt[5]~37\ = CARRY((!\intclockcnt[4]~35\) # (!intclockcnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(5),
	datad => VCC,
	cin => \intclockcnt[4]~35\,
	combout => \intclockcnt[5]~36_combout\,
	cout => \intclockcnt[5]~37\);

-- Location: FF_X25_Y32_N17
\intclockcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[5]~36_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(5));

-- Location: LCCOMB_X25_Y32_N18
\intclockcnt[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[6]~38_combout\ = (intclockcnt(6) & (\intclockcnt[5]~37\ $ (GND))) # (!intclockcnt(6) & (!\intclockcnt[5]~37\ & VCC))
-- \intclockcnt[6]~39\ = CARRY((intclockcnt(6) & !\intclockcnt[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(6),
	datad => VCC,
	cin => \intclockcnt[5]~37\,
	combout => \intclockcnt[6]~38_combout\,
	cout => \intclockcnt[6]~39\);

-- Location: FF_X25_Y32_N19
\intclockcnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[6]~38_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(6));

-- Location: LCCOMB_X25_Y32_N20
\intclockcnt[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[7]~40_combout\ = (intclockcnt(7) & (!\intclockcnt[6]~39\)) # (!intclockcnt(7) & ((\intclockcnt[6]~39\) # (GND)))
-- \intclockcnt[7]~41\ = CARRY((!\intclockcnt[6]~39\) # (!intclockcnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(7),
	datad => VCC,
	cin => \intclockcnt[6]~39\,
	combout => \intclockcnt[7]~40_combout\,
	cout => \intclockcnt[7]~41\);

-- Location: FF_X25_Y32_N21
\intclockcnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[7]~40_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(7));

-- Location: LCCOMB_X25_Y32_N22
\intclockcnt[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[8]~42_combout\ = (intclockcnt(8) & (\intclockcnt[7]~41\ $ (GND))) # (!intclockcnt(8) & (!\intclockcnt[7]~41\ & VCC))
-- \intclockcnt[8]~43\ = CARRY((intclockcnt(8) & !\intclockcnt[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => intclockcnt(8),
	datad => VCC,
	cin => \intclockcnt[7]~41\,
	combout => \intclockcnt[8]~42_combout\,
	cout => \intclockcnt[8]~43\);

-- Location: FF_X25_Y32_N23
\intclockcnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[8]~42_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(8));

-- Location: LCCOMB_X25_Y32_N24
\intclockcnt[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[9]~44_combout\ = (intclockcnt(9) & (!\intclockcnt[8]~43\)) # (!intclockcnt(9) & ((\intclockcnt[8]~43\) # (GND)))
-- \intclockcnt[9]~45\ = CARRY((!\intclockcnt[8]~43\) # (!intclockcnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(9),
	datad => VCC,
	cin => \intclockcnt[8]~43\,
	combout => \intclockcnt[9]~44_combout\,
	cout => \intclockcnt[9]~45\);

-- Location: FF_X25_Y32_N25
\intclockcnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[9]~44_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(9));

-- Location: LCCOMB_X25_Y32_N26
\intclockcnt[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[10]~46_combout\ = (intclockcnt(10) & (\intclockcnt[9]~45\ $ (GND))) # (!intclockcnt(10) & (!\intclockcnt[9]~45\ & VCC))
-- \intclockcnt[10]~47\ = CARRY((intclockcnt(10) & !\intclockcnt[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => intclockcnt(10),
	datad => VCC,
	cin => \intclockcnt[9]~45\,
	combout => \intclockcnt[10]~46_combout\,
	cout => \intclockcnt[10]~47\);

-- Location: FF_X25_Y32_N27
\intclockcnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[10]~46_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(10));

-- Location: LCCOMB_X25_Y32_N28
\intclockcnt[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[11]~48_combout\ = (intclockcnt(11) & (!\intclockcnt[10]~47\)) # (!intclockcnt(11) & ((\intclockcnt[10]~47\) # (GND)))
-- \intclockcnt[11]~49\ = CARRY((!\intclockcnt[10]~47\) # (!intclockcnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(11),
	datad => VCC,
	cin => \intclockcnt[10]~47\,
	combout => \intclockcnt[11]~48_combout\,
	cout => \intclockcnt[11]~49\);

-- Location: FF_X25_Y32_N29
\intclockcnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[11]~48_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(11));

-- Location: LCCOMB_X25_Y32_N30
\intclockcnt[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[12]~50_combout\ = (intclockcnt(12) & (\intclockcnt[11]~49\ $ (GND))) # (!intclockcnt(12) & (!\intclockcnt[11]~49\ & VCC))
-- \intclockcnt[12]~51\ = CARRY((intclockcnt(12) & !\intclockcnt[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => intclockcnt(12),
	datad => VCC,
	cin => \intclockcnt[11]~49\,
	combout => \intclockcnt[12]~50_combout\,
	cout => \intclockcnt[12]~51\);

-- Location: FF_X25_Y32_N31
\intclockcnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[12]~50_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(12));

-- Location: LCCOMB_X25_Y31_N0
\intclockcnt[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[13]~52_combout\ = (intclockcnt(13) & (!\intclockcnt[12]~51\)) # (!intclockcnt(13) & ((\intclockcnt[12]~51\) # (GND)))
-- \intclockcnt[13]~53\ = CARRY((!\intclockcnt[12]~51\) # (!intclockcnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(13),
	datad => VCC,
	cin => \intclockcnt[12]~51\,
	combout => \intclockcnt[13]~52_combout\,
	cout => \intclockcnt[13]~53\);

-- Location: FF_X25_Y31_N1
\intclockcnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[13]~52_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(13));

-- Location: LCCOMB_X25_Y31_N2
\intclockcnt[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[14]~54_combout\ = (intclockcnt(14) & (\intclockcnt[13]~53\ $ (GND))) # (!intclockcnt(14) & (!\intclockcnt[13]~53\ & VCC))
-- \intclockcnt[14]~55\ = CARRY((intclockcnt(14) & !\intclockcnt[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(14),
	datad => VCC,
	cin => \intclockcnt[13]~53\,
	combout => \intclockcnt[14]~54_combout\,
	cout => \intclockcnt[14]~55\);

-- Location: FF_X25_Y31_N3
\intclockcnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[14]~54_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(14));

-- Location: LCCOMB_X25_Y31_N4
\intclockcnt[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[15]~56_combout\ = (intclockcnt(15) & (!\intclockcnt[14]~55\)) # (!intclockcnt(15) & ((\intclockcnt[14]~55\) # (GND)))
-- \intclockcnt[15]~57\ = CARRY((!\intclockcnt[14]~55\) # (!intclockcnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(15),
	datad => VCC,
	cin => \intclockcnt[14]~55\,
	combout => \intclockcnt[15]~56_combout\,
	cout => \intclockcnt[15]~57\);

-- Location: FF_X25_Y31_N5
\intclockcnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[15]~56_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(15));

-- Location: LCCOMB_X25_Y31_N6
\intclockcnt[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[16]~58_combout\ = (intclockcnt(16) & (\intclockcnt[15]~57\ $ (GND))) # (!intclockcnt(16) & (!\intclockcnt[15]~57\ & VCC))
-- \intclockcnt[16]~59\ = CARRY((intclockcnt(16) & !\intclockcnt[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => intclockcnt(16),
	datad => VCC,
	cin => \intclockcnt[15]~57\,
	combout => \intclockcnt[16]~58_combout\,
	cout => \intclockcnt[16]~59\);

-- Location: FF_X25_Y31_N7
\intclockcnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[16]~58_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(16));

-- Location: LCCOMB_X25_Y31_N8
\intclockcnt[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[17]~60_combout\ = (intclockcnt(17) & (!\intclockcnt[16]~59\)) # (!intclockcnt(17) & ((\intclockcnt[16]~59\) # (GND)))
-- \intclockcnt[17]~61\ = CARRY((!\intclockcnt[16]~59\) # (!intclockcnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(17),
	datad => VCC,
	cin => \intclockcnt[16]~59\,
	combout => \intclockcnt[17]~60_combout\,
	cout => \intclockcnt[17]~61\);

-- Location: FF_X25_Y31_N9
\intclockcnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[17]~60_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(17));

-- Location: LCCOMB_X25_Y31_N10
\intclockcnt[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[18]~62_combout\ = (intclockcnt(18) & (\intclockcnt[17]~61\ $ (GND))) # (!intclockcnt(18) & (!\intclockcnt[17]~61\ & VCC))
-- \intclockcnt[18]~63\ = CARRY((intclockcnt(18) & !\intclockcnt[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => intclockcnt(18),
	datad => VCC,
	cin => \intclockcnt[17]~61\,
	combout => \intclockcnt[18]~62_combout\,
	cout => \intclockcnt[18]~63\);

-- Location: FF_X25_Y31_N11
\intclockcnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[18]~62_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(18));

-- Location: LCCOMB_X25_Y31_N12
\intclockcnt[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[19]~64_combout\ = (intclockcnt(19) & (!\intclockcnt[18]~63\)) # (!intclockcnt(19) & ((\intclockcnt[18]~63\) # (GND)))
-- \intclockcnt[19]~65\ = CARRY((!\intclockcnt[18]~63\) # (!intclockcnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => intclockcnt(19),
	datad => VCC,
	cin => \intclockcnt[18]~63\,
	combout => \intclockcnt[19]~64_combout\,
	cout => \intclockcnt[19]~65\);

-- Location: FF_X25_Y31_N13
\intclockcnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[19]~64_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(19));

-- Location: LCCOMB_X25_Y31_N14
\intclockcnt[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[20]~66_combout\ = (intclockcnt(20) & (\intclockcnt[19]~65\ $ (GND))) # (!intclockcnt(20) & (!\intclockcnt[19]~65\ & VCC))
-- \intclockcnt[20]~67\ = CARRY((intclockcnt(20) & !\intclockcnt[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(20),
	datad => VCC,
	cin => \intclockcnt[19]~65\,
	combout => \intclockcnt[20]~66_combout\,
	cout => \intclockcnt[20]~67\);

-- Location: FF_X25_Y31_N15
\intclockcnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[20]~66_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(20));

-- Location: LCCOMB_X25_Y31_N16
\intclockcnt[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[21]~68_combout\ = (intclockcnt(21) & (!\intclockcnt[20]~67\)) # (!intclockcnt(21) & ((\intclockcnt[20]~67\) # (GND)))
-- \intclockcnt[21]~69\ = CARRY((!\intclockcnt[20]~67\) # (!intclockcnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(21),
	datad => VCC,
	cin => \intclockcnt[20]~67\,
	combout => \intclockcnt[21]~68_combout\,
	cout => \intclockcnt[21]~69\);

-- Location: FF_X25_Y31_N17
\intclockcnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[21]~68_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(21));

-- Location: LCCOMB_X25_Y31_N18
\intclockcnt[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \intclockcnt[22]~70_combout\ = (intclockcnt(22) & (\intclockcnt[21]~69\ $ (GND))) # (!intclockcnt(22) & (!\intclockcnt[21]~69\ & VCC))
-- \intclockcnt[22]~71\ = CARRY((intclockcnt(22) & !\intclockcnt[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(22),
	datad => VCC,
	cin => \intclockcnt[21]~69\,
	combout => \intclockcnt[22]~70_combout\,
	cout => \intclockcnt[22]~71\);

-- Location: FF_X25_Y31_N19
\intclockcnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[22]~70_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(22));

-- Location: FF_X25_Y31_N21
\intclockcnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intclockcnt[23]~72_combout\,
	sclr => \LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => intclockcnt(23));

-- Location: LCCOMB_X25_Y31_N28
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!intclockcnt(16) & !intclockcnt(17))) # (!intclockcnt(18))) # (!intclockcnt(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => intclockcnt(19),
	datab => intclockcnt(16),
	datac => intclockcnt(17),
	datad => intclockcnt(18),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X26_Y31_N24
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((!intclockcnt(20)) # (!intclockcnt(21))) # (!intclockcnt(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => intclockcnt(22),
	datac => intclockcnt(21),
	datad => intclockcnt(20),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X25_Y31_N30
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((!intclockcnt(23) & ((\LessThan0~4_combout\) # (\LessThan0~5_combout\)))) # (!intclockcnt(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => intclockcnt(23),
	datab => \LessThan0~4_combout\,
	datac => intclockcnt(24),
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X25_Y33_N0
\intClock~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \intClock~0_combout\ = \intClock~q\ $ (((intclockcnt(25)) # ((!\LessThan0~6_combout\ & !\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~6_combout\,
	datab => intclockcnt(25),
	datac => \intClock~q\,
	datad => \LessThan0~3_combout\,
	combout => \intClock~0_combout\);

-- Location: FF_X25_Y33_N1
intClock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \intClock~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \intClock~q\);

-- Location: CLKCTRL_G12
\intClock~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \intClock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \intClock~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y21_N6
\mem_cu|intcnt[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|intcnt[0]~7_combout\ = \mem_cu|intcnt\(0) $ (VCC)
-- \mem_cu|intcnt[0]~8\ = CARRY(\mem_cu|intcnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|intcnt\(0),
	datad => VCC,
	combout => \mem_cu|intcnt[0]~7_combout\,
	cout => \mem_cu|intcnt[0]~8\);

-- Location: LCCOMB_X34_Y21_N0
\mem_cu|state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|state~3_combout\ = (!\mem_cu|state\(2) & (\mem_cu|state\(1) $ (\mem_cu|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|state\(2),
	datac => \mem_cu|state\(1),
	datad => \mem_cu|state\(0),
	combout => \mem_cu|state~3_combout\);

-- Location: IOIBUF_X53_Y14_N1
\pb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb,
	o => \pb~input_o\);

-- Location: FF_X34_Y21_N1
\mem_cu|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \mem_cu|state~3_combout\,
	sclr => \ALT_INV_pb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_cu|state\(1));

-- Location: LCCOMB_X34_Y21_N2
\mem_cu|intcnt[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|intcnt[5]~6_combout\ = (\mem_cu|state\(1) & (!\mem_cu|state\(2) & !\mem_cu|state\(0))) # (!\mem_cu|state\(1) & (\mem_cu|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_cu|state\(1),
	datac => \mem_cu|state\(2),
	datad => \mem_cu|state\(0),
	combout => \mem_cu|intcnt[5]~6_combout\);

-- Location: LCCOMB_X36_Y21_N24
\mem_cu|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|LessThan0~0_combout\ = (\mem_cu|intcnt\(3)) # ((\mem_cu|intcnt\(2)) # ((\mem_cu|intcnt\(0) & \mem_cu|intcnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|intcnt\(0),
	datab => \mem_cu|intcnt\(3),
	datac => \mem_cu|intcnt\(1),
	datad => \mem_cu|intcnt\(2),
	combout => \mem_cu|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y21_N4
\mem_cu|intcnt[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|intcnt[5]~19_combout\ = (!\mem_cu|state\(0) & (\mem_cu|intcnt\(5) & ((\mem_cu|LessThan0~0_combout\) # (\mem_cu|intcnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|state\(0),
	datab => \mem_cu|LessThan0~0_combout\,
	datac => \mem_cu|intcnt\(4),
	datad => \mem_cu|intcnt\(5),
	combout => \mem_cu|intcnt[5]~19_combout\);

-- Location: LCCOMB_X36_Y21_N18
\mem_cu|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|LessThan1~0_combout\ = (\mem_cu|intcnt\(4) & ((\mem_cu|intcnt\(3)) # ((\mem_cu|intcnt\(1)) # (\mem_cu|intcnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|intcnt\(3),
	datab => \mem_cu|intcnt\(1),
	datac => \mem_cu|intcnt\(4),
	datad => \mem_cu|intcnt\(2),
	combout => \mem_cu|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y21_N26
\mem_cu|state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|state~4_combout\ = (\mem_cu|state\(0) & ((\mem_cu|LessThan1~0_combout\) # (\mem_cu|intcnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|state\(0),
	datab => \mem_cu|LessThan1~0_combout\,
	datad => \mem_cu|intcnt\(5),
	combout => \mem_cu|state~4_combout\);

-- Location: LCCOMB_X36_Y21_N28
\mem_cu|intcnt[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|intcnt[5]~20_combout\ = ((\mem_cu|intcnt[5]~19_combout\) # ((\mem_cu|state~4_combout\) # (!\pb~input_o\))) # (!\mem_cu|intcnt[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|intcnt[5]~6_combout\,
	datab => \mem_cu|intcnt[5]~19_combout\,
	datac => \mem_cu|state~4_combout\,
	datad => \pb~input_o\,
	combout => \mem_cu|intcnt[5]~20_combout\);

-- Location: LCCOMB_X34_Y21_N28
\mem_cu|intcnt[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|intcnt[5]~21_combout\ = (\mem_cu|state\(0)) # ((\mem_cu|state\(1)) # ((!\pb~input_o\) # (!\mem_cu|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|state\(0),
	datab => \mem_cu|state\(1),
	datac => \mem_cu|state\(2),
	datad => \pb~input_o\,
	combout => \mem_cu|intcnt[5]~21_combout\);

-- Location: FF_X36_Y21_N7
\mem_cu|intcnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \mem_cu|intcnt[0]~7_combout\,
	sclr => \mem_cu|intcnt[5]~20_combout\,
	ena => \mem_cu|intcnt[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_cu|intcnt\(0));

-- Location: LCCOMB_X36_Y21_N8
\mem_cu|intcnt[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|intcnt[1]~9_combout\ = (\mem_cu|intcnt\(1) & (!\mem_cu|intcnt[0]~8\)) # (!\mem_cu|intcnt\(1) & ((\mem_cu|intcnt[0]~8\) # (GND)))
-- \mem_cu|intcnt[1]~10\ = CARRY((!\mem_cu|intcnt[0]~8\) # (!\mem_cu|intcnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mem_cu|intcnt\(1),
	datad => VCC,
	cin => \mem_cu|intcnt[0]~8\,
	combout => \mem_cu|intcnt[1]~9_combout\,
	cout => \mem_cu|intcnt[1]~10\);

-- Location: FF_X36_Y21_N9
\mem_cu|intcnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \mem_cu|intcnt[1]~9_combout\,
	sclr => \mem_cu|intcnt[5]~20_combout\,
	ena => \mem_cu|intcnt[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_cu|intcnt\(1));

-- Location: LCCOMB_X36_Y21_N10
\mem_cu|intcnt[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|intcnt[2]~11_combout\ = (\mem_cu|intcnt\(2) & (\mem_cu|intcnt[1]~10\ $ (GND))) # (!\mem_cu|intcnt\(2) & (!\mem_cu|intcnt[1]~10\ & VCC))
-- \mem_cu|intcnt[2]~12\ = CARRY((\mem_cu|intcnt\(2) & !\mem_cu|intcnt[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|intcnt\(2),
	datad => VCC,
	cin => \mem_cu|intcnt[1]~10\,
	combout => \mem_cu|intcnt[2]~11_combout\,
	cout => \mem_cu|intcnt[2]~12\);

-- Location: FF_X36_Y21_N11
\mem_cu|intcnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \mem_cu|intcnt[2]~11_combout\,
	sclr => \mem_cu|intcnt[5]~20_combout\,
	ena => \mem_cu|intcnt[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_cu|intcnt\(2));

-- Location: LCCOMB_X36_Y21_N12
\mem_cu|intcnt[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|intcnt[3]~13_combout\ = (\mem_cu|intcnt\(3) & (!\mem_cu|intcnt[2]~12\)) # (!\mem_cu|intcnt\(3) & ((\mem_cu|intcnt[2]~12\) # (GND)))
-- \mem_cu|intcnt[3]~14\ = CARRY((!\mem_cu|intcnt[2]~12\) # (!\mem_cu|intcnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|intcnt\(3),
	datad => VCC,
	cin => \mem_cu|intcnt[2]~12\,
	combout => \mem_cu|intcnt[3]~13_combout\,
	cout => \mem_cu|intcnt[3]~14\);

-- Location: FF_X36_Y21_N13
\mem_cu|intcnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \mem_cu|intcnt[3]~13_combout\,
	sclr => \mem_cu|intcnt[5]~20_combout\,
	ena => \mem_cu|intcnt[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_cu|intcnt\(3));

-- Location: LCCOMB_X36_Y21_N14
\mem_cu|intcnt[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|intcnt[4]~15_combout\ = (\mem_cu|intcnt\(4) & (\mem_cu|intcnt[3]~14\ $ (GND))) # (!\mem_cu|intcnt\(4) & (!\mem_cu|intcnt[3]~14\ & VCC))
-- \mem_cu|intcnt[4]~16\ = CARRY((\mem_cu|intcnt\(4) & !\mem_cu|intcnt[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mem_cu|intcnt\(4),
	datad => VCC,
	cin => \mem_cu|intcnt[3]~14\,
	combout => \mem_cu|intcnt[4]~15_combout\,
	cout => \mem_cu|intcnt[4]~16\);

-- Location: FF_X36_Y21_N15
\mem_cu|intcnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \mem_cu|intcnt[4]~15_combout\,
	sclr => \mem_cu|intcnt[5]~20_combout\,
	ena => \mem_cu|intcnt[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_cu|intcnt\(4));

-- Location: LCCOMB_X36_Y21_N16
\mem_cu|intcnt[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|intcnt[5]~17_combout\ = \mem_cu|intcnt[4]~16\ $ (\mem_cu|intcnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \mem_cu|intcnt\(5),
	cin => \mem_cu|intcnt[4]~16\,
	combout => \mem_cu|intcnt[5]~17_combout\);

-- Location: FF_X36_Y21_N17
\mem_cu|intcnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \mem_cu|intcnt[5]~17_combout\,
	sclr => \mem_cu|intcnt[5]~20_combout\,
	ena => \mem_cu|intcnt[5]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_cu|intcnt\(5));

-- Location: LCCOMB_X34_Y21_N10
\mem_cu|state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|state~1_combout\ = (!\mem_cu|intcnt\(5) & (!\mem_cu|state\(1) & (\mem_cu|state\(2) & !\mem_cu|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|intcnt\(5),
	datab => \mem_cu|state\(1),
	datac => \mem_cu|state\(2),
	datad => \mem_cu|LessThan1~0_combout\,
	combout => \mem_cu|state~1_combout\);

-- Location: LCCOMB_X34_Y21_N30
\mem_cu|state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|state~2_combout\ = (\mem_cu|state~1_combout\) # ((\mem_cu|state\(1) & (!\mem_cu|state\(2) & \mem_cu|state\(0))) # (!\mem_cu|state\(1) & (\mem_cu|state\(2) & !\mem_cu|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|state~1_combout\,
	datab => \mem_cu|state\(1),
	datac => \mem_cu|state\(2),
	datad => \mem_cu|state\(0),
	combout => \mem_cu|state~2_combout\);

-- Location: FF_X34_Y21_N31
\mem_cu|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \mem_cu|state~2_combout\,
	sclr => \ALT_INV_pb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_cu|state\(2));

-- Location: LCCOMB_X35_Y21_N24
\mem_cu|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|LessThan0~1_combout\ = (\mem_cu|intcnt\(5) & ((\mem_cu|LessThan0~0_combout\) # (\mem_cu|intcnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|intcnt\(5),
	datab => \mem_cu|LessThan0~0_combout\,
	datac => \mem_cu|intcnt\(4),
	combout => \mem_cu|LessThan0~1_combout\);

-- Location: LCCOMB_X34_Y21_N12
\mem_cu|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|state~0_combout\ = (!\mem_cu|state\(0) & (((!\mem_cu|state\(2) & \mem_cu|LessThan0~1_combout\)) # (!\mem_cu|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|state\(2),
	datab => \mem_cu|state\(1),
	datac => \mem_cu|state\(0),
	datad => \mem_cu|LessThan0~1_combout\,
	combout => \mem_cu|state~0_combout\);

-- Location: FF_X34_Y21_N13
\mem_cu|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \mem_cu|state~0_combout\,
	sclr => \ALT_INV_pb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_cu|state\(0));

-- Location: LCCOMB_X34_Y21_N6
\mem_cu|LD_EN_M~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|LD_EN_M~0_combout\ = (!\mem_cu|state\(0) & (\mem_cu|state\(1) & (!\mem_cu|state\(2) & \pb~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|state\(0),
	datab => \mem_cu|state\(1),
	datac => \mem_cu|state\(2),
	datad => \pb~input_o\,
	combout => \mem_cu|LD_EN_M~0_combout\);

-- Location: FF_X34_Y21_N7
\mem_cu|LD_EN_M\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \mem_cu|LD_EN_M~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_cu|LD_EN_M~q\);

-- Location: LCCOMB_X34_Y20_N6
\cut|mycnt|Count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|mycnt|Count[0]~8_combout\ = \cut|mycnt|Count\(0) $ (VCC)
-- \cut|mycnt|Count[0]~9\ = CARRY(\cut|mycnt|Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|mycnt|Count\(0),
	datad => VCC,
	combout => \cut|mycnt|Count[0]~8_combout\,
	cout => \cut|mycnt|Count[0]~9\);

-- Location: FF_X34_Y21_N3
\mem_cu|Cnt_EN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \mem_cu|intcnt[5]~6_combout\,
	sclr => \ALT_INV_pb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_cu|Cnt_EN~q\);

-- Location: LCCOMB_X34_Y21_N4
\mem_cu|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|Equal0~2_combout\ = (!\mem_cu|state\(2) & \mem_cu|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_cu|state\(2),
	datad => \mem_cu|state\(0),
	combout => \mem_cu|Equal0~2_combout\);

-- Location: FF_X34_Y21_N5
\mem_cu|LD_EN_upcnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \mem_cu|Equal0~2_combout\,
	sclr => \ALT_INV_pb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_cu|LD_EN_upcnt~q\);

-- Location: LCCOMB_X34_Y20_N24
\cut|mycnt|Count[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|mycnt|Count[6]~10_combout\ = ((!\mem_cu|Cnt_EN~q\ & \mem_cu|LD_EN_upcnt~q\)) # (!\pb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|Cnt_EN~q\,
	datab => \mem_cu|LD_EN_upcnt~q\,
	datac => \pb~input_o\,
	combout => \cut|mycnt|Count[6]~10_combout\);

-- Location: LCCOMB_X34_Y20_N26
\cut|mycnt|Count[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|mycnt|Count[6]~11_combout\ = (\mem_cu|Cnt_EN~q\ $ (\mem_cu|LD_EN_upcnt~q\)) # (!\pb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|Cnt_EN~q\,
	datab => \mem_cu|LD_EN_upcnt~q\,
	datac => \pb~input_o\,
	combout => \cut|mycnt|Count[6]~11_combout\);

-- Location: FF_X34_Y20_N7
\cut|mycnt|Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|mycnt|Count[0]~8_combout\,
	asdata => \pb~input_o\,
	sload => \cut|mycnt|Count[6]~10_combout\,
	ena => \cut|mycnt|Count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|mycnt|Count\(0));

-- Location: LCCOMB_X34_Y20_N8
\cut|mycnt|Count[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|mycnt|Count[1]~12_combout\ = (\cut|mycnt|Count\(1) & (!\cut|mycnt|Count[0]~9\)) # (!\cut|mycnt|Count\(1) & ((\cut|mycnt|Count[0]~9\) # (GND)))
-- \cut|mycnt|Count[1]~13\ = CARRY((!\cut|mycnt|Count[0]~9\) # (!\cut|mycnt|Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cut|mycnt|Count\(1),
	datad => VCC,
	cin => \cut|mycnt|Count[0]~9\,
	combout => \cut|mycnt|Count[1]~12_combout\,
	cout => \cut|mycnt|Count[1]~13\);

-- Location: FF_X34_Y20_N9
\cut|mycnt|Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|mycnt|Count[1]~12_combout\,
	asdata => \pb~input_o\,
	sload => \cut|mycnt|Count[6]~10_combout\,
	ena => \cut|mycnt|Count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|mycnt|Count\(1));

-- Location: LCCOMB_X34_Y20_N10
\cut|mycnt|Count[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|mycnt|Count[2]~14_combout\ = (\cut|mycnt|Count\(2) & (\cut|mycnt|Count[1]~13\ $ (GND))) # (!\cut|mycnt|Count\(2) & (!\cut|mycnt|Count[1]~13\ & VCC))
-- \cut|mycnt|Count[2]~15\ = CARRY((\cut|mycnt|Count\(2) & !\cut|mycnt|Count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cut|mycnt|Count\(2),
	datad => VCC,
	cin => \cut|mycnt|Count[1]~13\,
	combout => \cut|mycnt|Count[2]~14_combout\,
	cout => \cut|mycnt|Count[2]~15\);

-- Location: FF_X34_Y20_N11
\cut|mycnt|Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|mycnt|Count[2]~14_combout\,
	asdata => \pb~input_o\,
	sload => \cut|mycnt|Count[6]~10_combout\,
	ena => \cut|mycnt|Count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|mycnt|Count\(2));

-- Location: LCCOMB_X34_Y20_N12
\cut|mycnt|Count[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|mycnt|Count[3]~16_combout\ = (\cut|mycnt|Count\(3) & (!\cut|mycnt|Count[2]~15\)) # (!\cut|mycnt|Count\(3) & ((\cut|mycnt|Count[2]~15\) # (GND)))
-- \cut|mycnt|Count[3]~17\ = CARRY((!\cut|mycnt|Count[2]~15\) # (!\cut|mycnt|Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cut|mycnt|Count\(3),
	datad => VCC,
	cin => \cut|mycnt|Count[2]~15\,
	combout => \cut|mycnt|Count[3]~16_combout\,
	cout => \cut|mycnt|Count[3]~17\);

-- Location: FF_X34_Y20_N13
\cut|mycnt|Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|mycnt|Count[3]~16_combout\,
	asdata => \pb~input_o\,
	sload => \cut|mycnt|Count[6]~10_combout\,
	ena => \cut|mycnt|Count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|mycnt|Count\(3));

-- Location: LCCOMB_X34_Y20_N14
\cut|mycnt|Count[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|mycnt|Count[4]~18_combout\ = (\cut|mycnt|Count\(4) & (\cut|mycnt|Count[3]~17\ $ (GND))) # (!\cut|mycnt|Count\(4) & (!\cut|mycnt|Count[3]~17\ & VCC))
-- \cut|mycnt|Count[4]~19\ = CARRY((\cut|mycnt|Count\(4) & !\cut|mycnt|Count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cut|mycnt|Count\(4),
	datad => VCC,
	cin => \cut|mycnt|Count[3]~17\,
	combout => \cut|mycnt|Count[4]~18_combout\,
	cout => \cut|mycnt|Count[4]~19\);

-- Location: FF_X34_Y20_N15
\cut|mycnt|Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|mycnt|Count[4]~18_combout\,
	asdata => \pb~input_o\,
	sload => \cut|mycnt|Count[6]~10_combout\,
	ena => \cut|mycnt|Count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|mycnt|Count\(4));

-- Location: LCCOMB_X34_Y20_N16
\cut|mycnt|Count[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|mycnt|Count[5]~20_combout\ = (\cut|mycnt|Count\(5) & (!\cut|mycnt|Count[4]~19\)) # (!\cut|mycnt|Count\(5) & ((\cut|mycnt|Count[4]~19\) # (GND)))
-- \cut|mycnt|Count[5]~21\ = CARRY((!\cut|mycnt|Count[4]~19\) # (!\cut|mycnt|Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cut|mycnt|Count\(5),
	datad => VCC,
	cin => \cut|mycnt|Count[4]~19\,
	combout => \cut|mycnt|Count[5]~20_combout\,
	cout => \cut|mycnt|Count[5]~21\);

-- Location: FF_X34_Y20_N17
\cut|mycnt|Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|mycnt|Count[5]~20_combout\,
	asdata => \pb~input_o\,
	sload => \cut|mycnt|Count[6]~10_combout\,
	ena => \cut|mycnt|Count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|mycnt|Count\(5));

-- Location: LCCOMB_X34_Y20_N18
\cut|mycnt|Count[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|mycnt|Count[6]~22_combout\ = (\cut|mycnt|Count\(6) & (\cut|mycnt|Count[5]~21\ $ (GND))) # (!\cut|mycnt|Count\(6) & (!\cut|mycnt|Count[5]~21\ & VCC))
-- \cut|mycnt|Count[6]~23\ = CARRY((\cut|mycnt|Count\(6) & !\cut|mycnt|Count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cut|mycnt|Count\(6),
	datad => VCC,
	cin => \cut|mycnt|Count[5]~21\,
	combout => \cut|mycnt|Count[6]~22_combout\,
	cout => \cut|mycnt|Count[6]~23\);

-- Location: FF_X34_Y20_N19
\cut|mycnt|Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|mycnt|Count[6]~22_combout\,
	asdata => \pb~input_o\,
	sload => \cut|mycnt|Count[6]~10_combout\,
	ena => \cut|mycnt|Count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|mycnt|Count\(6));

-- Location: LCCOMB_X34_Y20_N20
\cut|mycnt|Count[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|mycnt|Count[7]~24_combout\ = \cut|mycnt|Count[6]~23\ $ (\cut|mycnt|Count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cut|mycnt|Count\(7),
	cin => \cut|mycnt|Count[6]~23\,
	combout => \cut|mycnt|Count[7]~24_combout\);

-- Location: FF_X34_Y20_N21
\cut|mycnt|Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|mycnt|Count[7]~24_combout\,
	asdata => \pb~input_o\,
	sload => \cut|mycnt|Count[6]~10_combout\,
	ena => \cut|mycnt|Count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|mycnt|Count\(7));

-- Location: M9K_X33_Y20_N0
\cut|myrom|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020003800060000400060003400060003000060001400070002000060000C00050000000020003800060003C00060003400060003C00060003000060003C00060000C0005000000002",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sls_rom_vhdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sls_mem_vhdl:cut|sls_rom_vhdl:myrom|altsyncram:altsyncram_component|altsyncram_ghs3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \intClock~clkctrl_outclk\,
	portaaddr => \cut|myrom|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \cut|myrom|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y21_N24
\cut|my_m|int_val~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|my_m|int_val~0_combout\ = (\cut|myrom|altsyncram_component|auto_generated|q_a\(0) & \pb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cut|myrom|altsyncram_component|auto_generated|q_a\(0),
	datad => \pb~input_o\,
	combout => \cut|my_m|int_val~0_combout\);

-- Location: LCCOMB_X34_Y21_N16
\cut|my_m|int_val[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|my_m|int_val[0]~1_combout\ = (\mem_cu|LD_EN_M~q\) # (!\pb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_cu|LD_EN_M~q\,
	datad => \pb~input_o\,
	combout => \cut|my_m|int_val[0]~1_combout\);

-- Location: FF_X34_Y21_N25
\cut|my_m|int_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|my_m|int_val~0_combout\,
	ena => \cut|my_m|int_val[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|my_m|int_val\(0));

-- Location: LCCOMB_X34_Y21_N26
\cut|my_m|int_val~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|my_m|int_val~2_combout\ = (\cut|myrom|altsyncram_component|auto_generated|q_a\(1) & \pb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|myrom|altsyncram_component|auto_generated|q_a\(1),
	datad => \pb~input_o\,
	combout => \cut|my_m|int_val~2_combout\);

-- Location: FF_X34_Y21_N27
\cut|my_m|int_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|my_m|int_val~2_combout\,
	ena => \cut|my_m|int_val[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|my_m|int_val\(1));

-- Location: LCCOMB_X34_Y21_N20
\cut|my_m|int_val~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|my_m|int_val~3_combout\ = (\cut|myrom|altsyncram_component|auto_generated|q_a\(2) & \pb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|myrom|altsyncram_component|auto_generated|q_a\(2),
	datad => \pb~input_o\,
	combout => \cut|my_m|int_val~3_combout\);

-- Location: FF_X34_Y21_N21
\cut|my_m|int_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|my_m|int_val~3_combout\,
	ena => \cut|my_m|int_val[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|my_m|int_val\(2));

-- Location: LCCOMB_X34_Y21_N14
\cut|my_m|int_val~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|my_m|int_val~4_combout\ = (\cut|myrom|altsyncram_component|auto_generated|q_a\(3) & \pb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cut|myrom|altsyncram_component|auto_generated|q_a\(3),
	datad => \pb~input_o\,
	combout => \cut|my_m|int_val~4_combout\);

-- Location: FF_X34_Y21_N15
\cut|my_m|int_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|my_m|int_val~4_combout\,
	ena => \cut|my_m|int_val[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|my_m|int_val\(3));

-- Location: M9K_X33_Y21_N0
\cut|my_ram|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "sls_mem_vhdl:cut|sls_ram_vhdl:my_ram|altsyncram:altsyncram_component|altsyncram_sup3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \mem_cu|LD_EN_M~q\,
	portare => VCC,
	clk0 => \intClock~clkctrl_outclk\,
	portadatain => \cut|my_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \cut|my_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \cut|my_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y25_N24
\cut|my_l|int_val~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|my_l|int_val~0_combout\ = (\cut|my_ram|altsyncram_component|auto_generated|q_a\(0) & \pb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cut|my_ram|altsyncram_component|auto_generated|q_a\(0),
	datad => \pb~input_o\,
	combout => \cut|my_l|int_val~0_combout\);

-- Location: LCCOMB_X32_Y25_N16
\cut|my_l|int_val[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|my_l|int_val[0]~feeder_combout\ = \cut|my_l|int_val~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cut|my_l|int_val~0_combout\,
	combout => \cut|my_l|int_val[0]~feeder_combout\);

-- Location: LCCOMB_X34_Y21_N8
\mem_cu|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|Equal0~0_combout\ = (!\mem_cu|state\(1) & (\mem_cu|state\(2) & \mem_cu|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_cu|state\(1),
	datac => \mem_cu|state\(2),
	datad => \mem_cu|state\(0),
	combout => \mem_cu|Equal0~0_combout\);

-- Location: FF_X34_Y21_N9
\mem_cu|LD_EN_L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \mem_cu|Equal0~0_combout\,
	sclr => \ALT_INV_pb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_cu|LD_EN_L~q\);

-- Location: LCCOMB_X32_Y25_N8
\cut|my_l|int_val[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|my_l|int_val[0]~1_combout\ = (\mem_cu|LD_EN_L~q\) # (!\pb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_cu|LD_EN_L~q\,
	datad => \pb~input_o\,
	combout => \cut|my_l|int_val[0]~1_combout\);

-- Location: FF_X32_Y25_N17
\cut|my_l|int_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|my_l|int_val[0]~feeder_combout\,
	ena => \cut|my_l|int_val[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|my_l|int_val\(0));

-- Location: LCCOMB_X32_Y25_N10
\cut|my_l|int_val~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|my_l|int_val~2_combout\ = (\cut|my_ram|altsyncram_component|auto_generated|q_a\(1) & \pb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cut|my_ram|altsyncram_component|auto_generated|q_a\(1),
	datad => \pb~input_o\,
	combout => \cut|my_l|int_val~2_combout\);

-- Location: LCCOMB_X32_Y25_N18
\cut|my_l|int_val[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|my_l|int_val[1]~feeder_combout\ = \cut|my_l|int_val~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cut|my_l|int_val~2_combout\,
	combout => \cut|my_l|int_val[1]~feeder_combout\);

-- Location: FF_X32_Y25_N19
\cut|my_l|int_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|my_l|int_val[1]~feeder_combout\,
	ena => \cut|my_l|int_val[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|my_l|int_val\(1));

-- Location: LCCOMB_X32_Y25_N20
\cut|my_l|int_val~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|my_l|int_val~3_combout\ = (\cut|my_ram|altsyncram_component|auto_generated|q_a\(2) & \pb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cut|my_ram|altsyncram_component|auto_generated|q_a\(2),
	datad => \pb~input_o\,
	combout => \cut|my_l|int_val~3_combout\);

-- Location: LCCOMB_X32_Y25_N12
\cut|my_l|int_val[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|my_l|int_val[2]~feeder_combout\ = \cut|my_l|int_val~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cut|my_l|int_val~3_combout\,
	combout => \cut|my_l|int_val[2]~feeder_combout\);

-- Location: FF_X32_Y25_N13
\cut|my_l|int_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|my_l|int_val[2]~feeder_combout\,
	ena => \cut|my_l|int_val[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|my_l|int_val\(2));

-- Location: LCCOMB_X32_Y25_N22
\cut|my_l|int_val~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|my_l|int_val~4_combout\ = (\cut|my_ram|altsyncram_component|auto_generated|q_a\(3) & \pb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cut|my_ram|altsyncram_component|auto_generated|q_a\(3),
	datad => \pb~input_o\,
	combout => \cut|my_l|int_val~4_combout\);

-- Location: FF_X32_Y25_N15
\cut|my_l|int_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	asdata => \cut|my_l|int_val~4_combout\,
	sload => VCC,
	ena => \cut|my_l|int_val[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|my_l|int_val\(3));

-- Location: LCCOMB_X34_Y21_N18
\mem_cu|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mem_cu|Equal0~1_combout\ = (!\mem_cu|state\(1) & (\mem_cu|state\(2) & !\mem_cu|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_cu|state\(1),
	datac => \mem_cu|state\(2),
	datad => \mem_cu|state\(0),
	combout => \mem_cu|Equal0~1_combout\);

-- Location: FF_X34_Y21_N19
\mem_cu|LD_EN_H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \mem_cu|Equal0~1_combout\,
	sclr => \ALT_INV_pb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem_cu|LD_EN_H~q\);

-- Location: LCCOMB_X32_Y25_N26
\cut|my_h|int_val[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cut|my_h|int_val[0]~0_combout\ = (\mem_cu|LD_EN_H~q\) # (!\pb~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem_cu|LD_EN_H~q\,
	datad => \pb~input_o\,
	combout => \cut|my_h|int_val[0]~0_combout\);

-- Location: FF_X32_Y25_N25
\cut|my_h|int_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|my_l|int_val~0_combout\,
	ena => \cut|my_h|int_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|my_h|int_val\(0));

-- Location: FF_X32_Y25_N11
\cut|my_h|int_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|my_l|int_val~2_combout\,
	ena => \cut|my_h|int_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|my_h|int_val\(1));

-- Location: FF_X32_Y25_N21
\cut|my_h|int_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|my_l|int_val~3_combout\,
	ena => \cut|my_h|int_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|my_h|int_val\(2));

-- Location: FF_X32_Y25_N23
\cut|my_h|int_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \intClock~clkctrl_outclk\,
	d => \cut|my_l|int_val~4_combout\,
	ena => \cut|my_h|int_val[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cut|my_h|int_val\(3));

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;
END structure;


