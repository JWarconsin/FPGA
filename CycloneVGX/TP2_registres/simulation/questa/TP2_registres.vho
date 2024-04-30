-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "04/30/2024 10:31:59"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \UUT|process_0~0_combout\ : std_logic;
SIGNAL \UUT|Reg[0]~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \UUT|Reg[0]~36_combout\ : std_logic;
SIGNAL \UUT|Reg[0]~37_combout\ : std_logic;
SIGNAL \UUT|Reg~27_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \UUT|Reg~28_combout\ : std_logic;
SIGNAL \UUT|Reg[1]~5_combout\ : std_logic;
SIGNAL \UUT|Reg[0]~0_combout\ : std_logic;
SIGNAL \UUT|Reg[1]~29_combout\ : std_logic;
SIGNAL \UUT|Reg[1]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[1]~4_combout\ : std_logic;
SIGNAL \UUT|Reg~30_combout\ : std_logic;
SIGNAL \UUT|Reg[2]~7_combout\ : std_logic;
SIGNAL \UUT|Reg[2]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[2]~6_combout\ : std_logic;
SIGNAL \UUT|Reg~31_combout\ : std_logic;
SIGNAL \UUT|Reg[3]~9_combout\ : std_logic;
SIGNAL \UUT|Reg[3]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[3]~8_combout\ : std_logic;
SIGNAL \UUT|Reg~32_combout\ : std_logic;
SIGNAL \UUT|Reg[4]~11_combout\ : std_logic;
SIGNAL \UUT|Reg[4]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[4]~10_combout\ : std_logic;
SIGNAL \UUT|Reg~33_combout\ : std_logic;
SIGNAL \UUT|Reg[5]~13_combout\ : std_logic;
SIGNAL \UUT|Reg[5]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[5]~12_combout\ : std_logic;
SIGNAL \UUT|Reg~34_combout\ : std_logic;
SIGNAL \UUT|Reg[6]~15_combout\ : std_logic;
SIGNAL \UUT|Reg[6]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[6]~14_combout\ : std_logic;
SIGNAL \UUT|Reg~35_combout\ : std_logic;
SIGNAL \UUT|Reg[7]~17_combout\ : std_logic;
SIGNAL \UUT|Reg[7]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[7]~16_combout\ : std_logic;
SIGNAL \UUT|Reg[0]~38_combout\ : std_logic;
SIGNAL \UUT|Reg[0]~3_combout\ : std_logic;
SIGNAL \UUT|Reg[0]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[0]~2_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[0]~2_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[0]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[1]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[1]~4_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[2]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[2]~6_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[3]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[4]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[3]~8_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[4]~10_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[5]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[6]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[5]~12_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[6]~14_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[7]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[7]~16_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[0]~0_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg~28_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg~27_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg~30_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg~31_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg~32_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg~33_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg~34_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg~35_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[0]~36_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[0]~37_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[0]~38_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\UUT|ALT_INV_Reg[0]~2_combout\ <= NOT \UUT|Reg[0]~2_combout\;
\UUT|ALT_INV_Reg[0]~_emulated_q\ <= NOT \UUT|Reg[0]~_emulated_q\;
\UUT|ALT_INV_Reg[1]~_emulated_q\ <= NOT \UUT|Reg[1]~_emulated_q\;
\UUT|ALT_INV_Reg[1]~4_combout\ <= NOT \UUT|Reg[1]~4_combout\;
\UUT|ALT_INV_Reg[2]~_emulated_q\ <= NOT \UUT|Reg[2]~_emulated_q\;
\UUT|ALT_INV_Reg[2]~6_combout\ <= NOT \UUT|Reg[2]~6_combout\;
\UUT|ALT_INV_Reg[3]~_emulated_q\ <= NOT \UUT|Reg[3]~_emulated_q\;
\UUT|ALT_INV_Reg[4]~_emulated_q\ <= NOT \UUT|Reg[4]~_emulated_q\;
\UUT|ALT_INV_Reg[3]~8_combout\ <= NOT \UUT|Reg[3]~8_combout\;
\UUT|ALT_INV_Reg[4]~10_combout\ <= NOT \UUT|Reg[4]~10_combout\;
\UUT|ALT_INV_Reg[5]~_emulated_q\ <= NOT \UUT|Reg[5]~_emulated_q\;
\UUT|ALT_INV_Reg[6]~_emulated_q\ <= NOT \UUT|Reg[6]~_emulated_q\;
\UUT|ALT_INV_Reg[5]~12_combout\ <= NOT \UUT|Reg[5]~12_combout\;
\UUT|ALT_INV_Reg[6]~14_combout\ <= NOT \UUT|Reg[6]~14_combout\;
\UUT|ALT_INV_Reg[7]~_emulated_q\ <= NOT \UUT|Reg[7]~_emulated_q\;
\UUT|ALT_INV_Reg[7]~16_combout\ <= NOT \UUT|Reg[7]~16_combout\;
\UUT|ALT_INV_process_0~0_combout\ <= NOT \UUT|process_0~0_combout\;
\UUT|ALT_INV_Reg[0]~0_combout\ <= NOT \UUT|Reg[0]~0_combout\;
\UUT|ALT_INV_Reg~28_combout\ <= NOT \UUT|Reg~28_combout\;
\UUT|ALT_INV_Reg~27_combout\ <= NOT \UUT|Reg~27_combout\;
\UUT|ALT_INV_Reg~30_combout\ <= NOT \UUT|Reg~30_combout\;
\UUT|ALT_INV_Reg~31_combout\ <= NOT \UUT|Reg~31_combout\;
\UUT|ALT_INV_Reg~32_combout\ <= NOT \UUT|Reg~32_combout\;
\UUT|ALT_INV_Reg~33_combout\ <= NOT \UUT|Reg~33_combout\;
\UUT|ALT_INV_Reg~34_combout\ <= NOT \UUT|Reg~34_combout\;
\UUT|ALT_INV_Reg~35_combout\ <= NOT \UUT|Reg~35_combout\;
\UUT|ALT_INV_Reg[0]~36_combout\ <= NOT \UUT|Reg[0]~36_combout\;
\UUT|ALT_INV_Reg[0]~37_combout\ <= NOT \UUT|Reg[0]~37_combout\;
\UUT|ALT_INV_Reg[0]~38_combout\ <= NOT \UUT|Reg[0]~38_combout\;
\UUT|ALT_INV_Reg[0]~1_combout\ <= NOT \UUT|Reg[0]~1_combout\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;

-- Location: IOOBUF_X68_Y24_N39
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|Reg[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X68_Y26_N5
\LEDG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|Reg[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X68_Y27_N22
\LEDG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|Reg[2]~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X68_Y24_N5
\LEDG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|Reg[3]~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X68_Y26_N22
\LEDG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|Reg[4]~10_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X68_Y22_N62
\LEDG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|Reg[5]~12_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X68_Y24_N22
\LEDG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|Reg[6]~14_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X68_Y26_N39
\LEDG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \UUT|Reg[7]~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOIBUF_X68_Y27_N55
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X68_Y24_N55
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X64_Y27_N6
\UUT|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|process_0~0_combout\ = (\KEY[3]~input_o\ & !\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	combout => \UUT|process_0~0_combout\);

-- Location: LABCELL_X65_Y27_N45
\UUT|Reg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[0]~1_combout\ = ( \UUT|Reg[0]~1_combout\ & ( \KEY[3]~input_o\ ) ) # ( !\UUT|Reg[0]~1_combout\ & ( (\UUT|process_0~0_combout\ & \KEY[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \UUT|ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \UUT|ALT_INV_Reg[0]~1_combout\,
	combout => \UUT|Reg[0]~1_combout\);

-- Location: IOIBUF_X15_Y61_N18
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G14
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X68_Y27_N4
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X68_Y26_N55
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X68_Y27_N38
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X68_Y32_N44
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LABCELL_X64_Y27_N42
\UUT|Reg[0]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[0]~36_combout\ = ( \SW[1]~input_o\ & ( \SW[2]~input_o\ & ( (\KEY[2]~input_o\ & \KEY[3]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( \SW[2]~input_o\ & ( (\SW[0]~input_o\ & (\KEY[2]~input_o\ & \KEY[3]~input_o\)) ) ) ) # ( \SW[1]~input_o\ & ( 
-- !\SW[2]~input_o\ & ( (\KEY[2]~input_o\ & (\KEY[3]~input_o\ & ((!\SW[8]~input_o\) # (\SW[0]~input_o\)))) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[2]~input_o\ & ( (\SW[0]~input_o\ & (\KEY[2]~input_o\ & \KEY[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000110000000100000001000000010000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \UUT|Reg[0]~36_combout\);

-- Location: LABCELL_X64_Y27_N54
\UUT|Reg[0]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[0]~37_combout\ = ( \SW[1]~input_o\ & ( \KEY[3]~input_o\ & ( (!\UUT|Reg[0]~36_combout\ & (((!\SW[2]~input_o\ & \KEY[2]~input_o\)))) # (\UUT|Reg[0]~36_combout\ & (!\SW[0]~input_o\ & (\SW[2]~input_o\))) ) ) ) # ( !\SW[1]~input_o\ & ( 
-- \KEY[3]~input_o\ & ( \UUT|Reg[0]~36_combout\ ) ) ) # ( \SW[1]~input_o\ & ( !\KEY[3]~input_o\ & ( (!\SW[0]~input_o\ & (\UUT|Reg[0]~36_combout\ & \SW[2]~input_o\)) ) ) ) # ( !\SW[1]~input_o\ & ( !\KEY[3]~input_o\ & ( \UUT|Reg[0]~36_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000100000001000110011001100110000001011000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \UUT|ALT_INV_Reg[0]~36_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \UUT|Reg[0]~37_combout\);

-- Location: LABCELL_X64_Y27_N33
\UUT|Reg~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg~27_combout\ = ( \SW[2]~input_o\ & ( !\SW[0]~input_o\ $ (!\SW[1]~input_o\) ) ) # ( !\SW[2]~input_o\ & ( (!\SW[0]~input_o\ & \SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \UUT|Reg~27_combout\);

-- Location: IOIBUF_X68_Y32_N95
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X64_Y27_N39
\UUT|Reg~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg~28_combout\ = ( \UUT|Reg[2]~6_combout\ & ( (!\UUT|Reg~27_combout\) # (\UUT|Reg[0]~2_combout\) ) ) # ( !\UUT|Reg[2]~6_combout\ & ( (\UUT|Reg~27_combout\ & \UUT|Reg[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_Reg~27_combout\,
	datac => \UUT|ALT_INV_Reg[0]~2_combout\,
	dataf => \UUT|ALT_INV_Reg[2]~6_combout\,
	combout => \UUT|Reg~28_combout\);

-- Location: LABCELL_X64_Y27_N24
\UUT|Reg[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[1]~5_combout\ = ( \UUT|Reg~28_combout\ & ( !\SW[0]~input_o\ $ (!\SW[1]~input_o\ $ (\UUT|Reg[0]~1_combout\)) ) ) # ( !\UUT|Reg~28_combout\ & ( \UUT|Reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \UUT|ALT_INV_Reg[0]~1_combout\,
	dataf => \UUT|ALT_INV_Reg~28_combout\,
	combout => \UUT|Reg[1]~5_combout\);

-- Location: LABCELL_X65_Y27_N27
\UUT|Reg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[0]~0_combout\ = ( \UUT|process_0~0_combout\ ) # ( !\UUT|process_0~0_combout\ & ( !\KEY[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	dataf => \UUT|ALT_INV_process_0~0_combout\,
	combout => \UUT|Reg[0]~0_combout\);

-- Location: LABCELL_X64_Y27_N27
\UUT|Reg[1]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[1]~29_combout\ = ( \KEY[3]~input_o\ & ( (\KEY[2]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000011110000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \UUT|Reg[1]~29_combout\);

-- Location: FF_X64_Y27_N26
\UUT|Reg[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|Reg[1]~5_combout\,
	clrn => \UUT|ALT_INV_Reg[0]~0_combout\,
	ena => \UUT|Reg[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[1]~_emulated_q\);

-- Location: LABCELL_X64_Y27_N9
\UUT|Reg[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[1]~4_combout\ = ( \UUT|Reg[1]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\UUT|Reg[0]~1_combout\) # (\UUT|process_0~0_combout\))) ) ) # ( !\UUT|Reg[1]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\UUT|Reg[0]~1_combout\) # (\UUT|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010101010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \UUT|ALT_INV_process_0~0_combout\,
	datac => \UUT|ALT_INV_Reg[0]~1_combout\,
	dataf => \UUT|ALT_INV_Reg[1]~_emulated_q\,
	combout => \UUT|Reg[1]~4_combout\);

-- Location: LABCELL_X65_Y27_N6
\UUT|Reg~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg~30_combout\ = ( \UUT|Reg[1]~4_combout\ & ( (\UUT|Reg~27_combout\) # (\UUT|Reg[3]~8_combout\) ) ) # ( !\UUT|Reg[1]~4_combout\ & ( (\UUT|Reg[3]~8_combout\ & !\UUT|Reg~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_Reg[3]~8_combout\,
	datad => \UUT|ALT_INV_Reg~27_combout\,
	dataf => \UUT|ALT_INV_Reg[1]~4_combout\,
	combout => \UUT|Reg~30_combout\);

-- Location: LABCELL_X65_Y27_N33
\UUT|Reg[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[2]~7_combout\ = ( \UUT|Reg~30_combout\ & ( !\UUT|Reg[0]~1_combout\ $ (!\SW[0]~input_o\ $ (\SW[1]~input_o\)) ) ) # ( !\UUT|Reg~30_combout\ & ( \UUT|Reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \UUT|ALT_INV_Reg~30_combout\,
	combout => \UUT|Reg[2]~7_combout\);

-- Location: FF_X65_Y27_N35
\UUT|Reg[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|Reg[2]~7_combout\,
	clrn => \UUT|ALT_INV_Reg[0]~0_combout\,
	ena => \UUT|Reg[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[2]~_emulated_q\);

-- Location: LABCELL_X65_Y27_N18
\UUT|Reg[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[2]~6_combout\ = ( \UUT|Reg[2]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\UUT|Reg[0]~1_combout\) # (\UUT|process_0~0_combout\))) ) ) # ( !\UUT|Reg[2]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\UUT|process_0~0_combout\) # (\UUT|Reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \UUT|ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \UUT|ALT_INV_Reg[2]~_emulated_q\,
	combout => \UUT|Reg[2]~6_combout\);

-- Location: LABCELL_X65_Y27_N39
\UUT|Reg~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg~31_combout\ = ( \UUT|Reg~27_combout\ & ( \UUT|Reg[4]~10_combout\ & ( \UUT|Reg[2]~6_combout\ ) ) ) # ( !\UUT|Reg~27_combout\ & ( \UUT|Reg[4]~10_combout\ ) ) # ( \UUT|Reg~27_combout\ & ( !\UUT|Reg[4]~10_combout\ & ( \UUT|Reg[2]~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \UUT|ALT_INV_Reg[2]~6_combout\,
	datae => \UUT|ALT_INV_Reg~27_combout\,
	dataf => \UUT|ALT_INV_Reg[4]~10_combout\,
	combout => \UUT|Reg~31_combout\);

-- Location: LABCELL_X65_Y27_N24
\UUT|Reg[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[3]~9_combout\ = ( \UUT|Reg~31_combout\ & ( !\UUT|Reg[0]~1_combout\ $ (!\SW[1]~input_o\ $ (\SW[0]~input_o\)) ) ) # ( !\UUT|Reg~31_combout\ & ( \UUT|Reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_Reg[0]~1_combout\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \UUT|ALT_INV_Reg~31_combout\,
	combout => \UUT|Reg[3]~9_combout\);

-- Location: FF_X65_Y27_N26
\UUT|Reg[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|Reg[3]~9_combout\,
	clrn => \UUT|ALT_INV_Reg[0]~0_combout\,
	ena => \UUT|Reg[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[3]~_emulated_q\);

-- Location: LABCELL_X65_Y27_N9
\UUT|Reg[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[3]~8_combout\ = ( \UUT|Reg[3]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\UUT|Reg[0]~1_combout\) # (\UUT|process_0~0_combout\))) ) ) # ( !\UUT|Reg[3]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\UUT|process_0~0_combout\) # (\UUT|Reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001010000011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \UUT|ALT_INV_process_0~0_combout\,
	dataf => \UUT|ALT_INV_Reg[3]~_emulated_q\,
	combout => \UUT|Reg[3]~8_combout\);

-- Location: LABCELL_X65_Y27_N42
\UUT|Reg~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg~32_combout\ = ( \UUT|Reg[5]~12_combout\ & ( (!\UUT|Reg~27_combout\) # (\UUT|Reg[3]~8_combout\) ) ) # ( !\UUT|Reg[5]~12_combout\ & ( (\UUT|Reg[3]~8_combout\ & \UUT|Reg~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_Reg[3]~8_combout\,
	datad => \UUT|ALT_INV_Reg~27_combout\,
	dataf => \UUT|ALT_INV_Reg[5]~12_combout\,
	combout => \UUT|Reg~32_combout\);

-- Location: LABCELL_X65_Y27_N15
\UUT|Reg[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[4]~11_combout\ = ( \UUT|Reg~32_combout\ & ( !\UUT|Reg[0]~1_combout\ $ (!\SW[1]~input_o\ $ (\SW[0]~input_o\)) ) ) # ( !\UUT|Reg~32_combout\ & ( \UUT|Reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \UUT|ALT_INV_Reg~32_combout\,
	combout => \UUT|Reg[4]~11_combout\);

-- Location: FF_X65_Y27_N17
\UUT|Reg[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|Reg[4]~11_combout\,
	clrn => \UUT|ALT_INV_Reg[0]~0_combout\,
	ena => \UUT|Reg[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[4]~_emulated_q\);

-- Location: LABCELL_X65_Y27_N12
\UUT|Reg[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[4]~10_combout\ = ( \UUT|Reg[4]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\UUT|Reg[0]~1_combout\) # (\UUT|process_0~0_combout\))) ) ) # ( !\UUT|Reg[4]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\UUT|process_0~0_combout\) # (\UUT|Reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \UUT|ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \UUT|ALT_INV_Reg[4]~_emulated_q\,
	combout => \UUT|Reg[4]~10_combout\);

-- Location: LABCELL_X65_Y27_N48
\UUT|Reg~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg~33_combout\ = ( \UUT|Reg[4]~10_combout\ & ( (\UUT|Reg[6]~14_combout\) # (\UUT|Reg~27_combout\) ) ) # ( !\UUT|Reg[4]~10_combout\ & ( (!\UUT|Reg~27_combout\ & \UUT|Reg[6]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_Reg~27_combout\,
	datac => \UUT|ALT_INV_Reg[6]~14_combout\,
	dataf => \UUT|ALT_INV_Reg[4]~10_combout\,
	combout => \UUT|Reg~33_combout\);

-- Location: LABCELL_X65_Y27_N3
\UUT|Reg[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[5]~13_combout\ = ( \UUT|Reg~33_combout\ & ( !\UUT|Reg[0]~1_combout\ $ (!\SW[1]~input_o\ $ (\SW[0]~input_o\)) ) ) # ( !\UUT|Reg~33_combout\ & ( \UUT|Reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \UUT|ALT_INV_Reg~33_combout\,
	combout => \UUT|Reg[5]~13_combout\);

-- Location: FF_X65_Y27_N5
\UUT|Reg[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|Reg[5]~13_combout\,
	clrn => \UUT|ALT_INV_Reg[0]~0_combout\,
	ena => \UUT|Reg[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[5]~_emulated_q\);

-- Location: LABCELL_X65_Y27_N57
\UUT|Reg[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[5]~12_combout\ = ( \UUT|Reg[5]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\UUT|Reg[0]~1_combout\) # (\UUT|process_0~0_combout\))) ) ) # ( !\UUT|Reg[5]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\UUT|process_0~0_combout\) # (\UUT|Reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011001000110010001100010011000100110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_Reg[0]~1_combout\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \UUT|ALT_INV_process_0~0_combout\,
	datae => \UUT|ALT_INV_Reg[5]~_emulated_q\,
	combout => \UUT|Reg[5]~12_combout\);

-- Location: LABCELL_X65_Y27_N30
\UUT|Reg~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg~34_combout\ = ( \UUT|Reg[7]~16_combout\ & ( (!\UUT|Reg~27_combout\) # (\UUT|Reg[5]~12_combout\) ) ) # ( !\UUT|Reg[7]~16_combout\ & ( (\UUT|Reg~27_combout\ & \UUT|Reg[5]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_Reg~27_combout\,
	datad => \UUT|ALT_INV_Reg[5]~12_combout\,
	dataf => \UUT|ALT_INV_Reg[7]~16_combout\,
	combout => \UUT|Reg~34_combout\);

-- Location: LABCELL_X65_Y27_N21
\UUT|Reg[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[6]~15_combout\ = ( \UUT|Reg~34_combout\ & ( !\UUT|Reg[0]~1_combout\ $ (!\SW[1]~input_o\ $ (\SW[0]~input_o\)) ) ) # ( !\UUT|Reg~34_combout\ & ( \UUT|Reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \UUT|ALT_INV_Reg~34_combout\,
	combout => \UUT|Reg[6]~15_combout\);

-- Location: FF_X65_Y27_N22
\UUT|Reg[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|Reg[6]~15_combout\,
	clrn => \UUT|ALT_INV_Reg[0]~0_combout\,
	ena => \UUT|Reg[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[6]~_emulated_q\);

-- Location: LABCELL_X65_Y27_N51
\UUT|Reg[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[6]~14_combout\ = ( \UUT|Reg[6]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\UUT|Reg[0]~1_combout\) # (\UUT|process_0~0_combout\))) ) ) # ( !\UUT|Reg[6]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\UUT|process_0~0_combout\) # (\UUT|Reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001010000011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \UUT|ALT_INV_process_0~0_combout\,
	dataf => \UUT|ALT_INV_Reg[6]~_emulated_q\,
	combout => \UUT|Reg[6]~14_combout\);

-- Location: LABCELL_X65_Y27_N0
\UUT|Reg~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg~35_combout\ = ( \UUT|Reg[6]~14_combout\ & ( (\SW[9]~input_o\) # (\UUT|Reg~27_combout\) ) ) # ( !\UUT|Reg[6]~14_combout\ & ( (!\UUT|Reg~27_combout\ & \SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_Reg~27_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \UUT|ALT_INV_Reg[6]~14_combout\,
	combout => \UUT|Reg~35_combout\);

-- Location: LABCELL_X64_Y27_N48
\UUT|Reg[7]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[7]~17_combout\ = ( \SW[1]~input_o\ & ( \UUT|Reg~35_combout\ & ( !\UUT|Reg[0]~1_combout\ $ (\SW[0]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( \UUT|Reg~35_combout\ & ( !\UUT|Reg[0]~1_combout\ $ (!\SW[0]~input_o\) ) ) ) # ( \SW[1]~input_o\ & ( 
-- !\UUT|Reg~35_combout\ & ( \UUT|Reg[0]~1_combout\ ) ) ) # ( !\SW[1]~input_o\ & ( !\UUT|Reg~35_combout\ & ( \UUT|Reg[0]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \UUT|ALT_INV_Reg~35_combout\,
	combout => \UUT|Reg[7]~17_combout\);

-- Location: FF_X64_Y27_N50
\UUT|Reg[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|Reg[7]~17_combout\,
	clrn => \UUT|ALT_INV_Reg[0]~0_combout\,
	ena => \UUT|Reg[1]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[7]~_emulated_q\);

-- Location: LABCELL_X64_Y27_N3
\UUT|Reg[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[7]~16_combout\ = ( \UUT|Reg[0]~1_combout\ & ( \UUT|Reg[7]~_emulated_q\ & ( (\KEY[3]~input_o\ & \UUT|process_0~0_combout\) ) ) ) # ( !\UUT|Reg[0]~1_combout\ & ( \UUT|Reg[7]~_emulated_q\ & ( \KEY[3]~input_o\ ) ) ) # ( \UUT|Reg[0]~1_combout\ & ( 
-- !\UUT|Reg[7]~_emulated_q\ & ( \KEY[3]~input_o\ ) ) ) # ( !\UUT|Reg[0]~1_combout\ & ( !\UUT|Reg[7]~_emulated_q\ & ( (\KEY[3]~input_o\ & \UUT|process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010101010101010101010101010101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datac => \UUT|ALT_INV_process_0~0_combout\,
	datae => \UUT|ALT_INV_Reg[0]~1_combout\,
	dataf => \UUT|ALT_INV_Reg[7]~_emulated_q\,
	combout => \UUT|Reg[7]~16_combout\);

-- Location: LABCELL_X64_Y27_N21
\UUT|Reg[0]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[0]~38_combout\ = ( !\UUT|Reg[7]~16_combout\ & ( \UUT|Reg[1]~4_combout\ & ( \SW[2]~input_o\ ) ) ) # ( \UUT|Reg[7]~16_combout\ & ( !\UUT|Reg[1]~4_combout\ & ( !\SW[2]~input_o\ ) ) ) # ( !\UUT|Reg[7]~16_combout\ & ( !\UUT|Reg[1]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101010101010101001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datae => \UUT|ALT_INV_Reg[7]~16_combout\,
	dataf => \UUT|ALT_INV_Reg[1]~4_combout\,
	combout => \UUT|Reg[0]~38_combout\);

-- Location: LABCELL_X64_Y27_N12
\UUT|Reg[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[0]~3_combout\ = ( \UUT|Reg[0]~38_combout\ & ( \UUT|Reg[0]~2_combout\ & ( !\UUT|Reg[0]~36_combout\ $ (\UUT|Reg[0]~1_combout\) ) ) ) # ( !\UUT|Reg[0]~38_combout\ & ( \UUT|Reg[0]~2_combout\ & ( !\UUT|Reg[0]~1_combout\ $ (((\UUT|Reg[0]~36_combout\ & 
-- !\UUT|Reg[0]~37_combout\))) ) ) ) # ( \UUT|Reg[0]~38_combout\ & ( !\UUT|Reg[0]~2_combout\ & ( !\UUT|Reg[0]~1_combout\ $ (((!\UUT|Reg[0]~37_combout\) # (\UUT|Reg[0]~36_combout\))) ) ) ) # ( !\UUT|Reg[0]~38_combout\ & ( !\UUT|Reg[0]~2_combout\ & ( 
-- !\UUT|Reg[0]~37_combout\ $ (!\UUT|Reg[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011001111001111001111001100001100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_Reg[0]~36_combout\,
	datac => \UUT|ALT_INV_Reg[0]~37_combout\,
	datad => \UUT|ALT_INV_Reg[0]~1_combout\,
	datae => \UUT|ALT_INV_Reg[0]~38_combout\,
	dataf => \UUT|ALT_INV_Reg[0]~2_combout\,
	combout => \UUT|Reg[0]~3_combout\);

-- Location: FF_X64_Y27_N14
\UUT|Reg[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \UUT|Reg[0]~3_combout\,
	clrn => \UUT|ALT_INV_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[0]~_emulated_q\);

-- Location: LABCELL_X64_Y27_N30
\UUT|Reg[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[0]~2_combout\ = ( \UUT|Reg[0]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\UUT|Reg[0]~1_combout\) # (\UUT|process_0~0_combout\))) ) ) # ( !\UUT|Reg[0]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\UUT|Reg[0]~1_combout\) # (\UUT|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \UUT|ALT_INV_Reg[0]~1_combout\,
	dataf => \UUT|ALT_INV_Reg[0]~_emulated_q\,
	combout => \UUT|Reg[0]~2_combout\);

-- Location: IOIBUF_X55_Y0_N92
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X42_Y0_N52
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X68_Y43_N21
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X68_Y41_N38
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X51_Y61_N1
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X56_Y9_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


