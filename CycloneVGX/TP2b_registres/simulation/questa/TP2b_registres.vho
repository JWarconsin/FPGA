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

-- DATE "04/30/2024 11:20:26"

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
-- SW[3]	=>  Location: PIN_AC8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_V10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AE10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AD13,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE19,	 I/O Standard: 1.2 V,	 Current Strength: Default


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
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \UUT|process_0~0_combout\ : std_logic;
SIGNAL \UUT|Reg[0]~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \UUT|Reg[7]~36_combout\ : std_logic;
SIGNAL \UUT|Reg[7]~38_combout\ : std_logic;
SIGNAL \UUT|Reg[7]~37_combout\ : std_logic;
SIGNAL \UUT|Reg[7]~17_combout\ : std_logic;
SIGNAL \UUT|Reg[0]~0_combout\ : std_logic;
SIGNAL \UUT|Reg[0]~29_combout\ : std_logic;
SIGNAL \UUT|Reg[7]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[7]~16_combout\ : std_logic;
SIGNAL \UUT|Reg~35_combout\ : std_logic;
SIGNAL \UUT|Reg[6]~15_combout\ : std_logic;
SIGNAL \UUT|Reg[6]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[6]~14_combout\ : std_logic;
SIGNAL \UUT|Reg~34_combout\ : std_logic;
SIGNAL \UUT|Reg[5]~13_combout\ : std_logic;
SIGNAL \UUT|Reg[5]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[5]~12_combout\ : std_logic;
SIGNAL \UUT|Reg~33_combout\ : std_logic;
SIGNAL \UUT|Reg[4]~11_combout\ : std_logic;
SIGNAL \UUT|Reg[4]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[4]~10_combout\ : std_logic;
SIGNAL \UUT|Reg~32_combout\ : std_logic;
SIGNAL \UUT|Reg[3]~9_combout\ : std_logic;
SIGNAL \UUT|Reg[3]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[3]~8_combout\ : std_logic;
SIGNAL \UUT|Reg~31_combout\ : std_logic;
SIGNAL \UUT|Reg[2]~7_combout\ : std_logic;
SIGNAL \UUT|Reg[2]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[2]~6_combout\ : std_logic;
SIGNAL \UUT|Reg~30_combout\ : std_logic;
SIGNAL \UUT|Reg[1]~5_combout\ : std_logic;
SIGNAL \UUT|Reg[1]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[1]~4_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \UUT|Reg[0]~27_combout\ : std_logic;
SIGNAL \UUT|Reg[0]~28_combout\ : std_logic;
SIGNAL \UUT|Reg[0]~3_combout\ : std_logic;
SIGNAL \UUT|Reg[0]~_emulated_q\ : std_logic;
SIGNAL \UUT|Reg[0]~2_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[0]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[0]~2_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[1]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[1]~4_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[2]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[2]~6_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[3]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[3]~8_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[4]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[4]~10_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[5]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[5]~12_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[6]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg~34_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[7]~_emulated_q\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[6]~14_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[7]~16_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[0]~27_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[0]~28_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[0]~0_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg~30_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg~31_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg~32_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg~33_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[0]~1_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[7]~38_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[7]~37_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg[7]~36_combout\ : std_logic;
SIGNAL \UUT|ALT_INV_Reg~35_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\UUT|ALT_INV_Reg[0]~_emulated_q\ <= NOT \UUT|Reg[0]~_emulated_q\;
\UUT|ALT_INV_Reg[0]~2_combout\ <= NOT \UUT|Reg[0]~2_combout\;
\UUT|ALT_INV_Reg[1]~_emulated_q\ <= NOT \UUT|Reg[1]~_emulated_q\;
\UUT|ALT_INV_Reg[1]~4_combout\ <= NOT \UUT|Reg[1]~4_combout\;
\UUT|ALT_INV_Reg[2]~_emulated_q\ <= NOT \UUT|Reg[2]~_emulated_q\;
\UUT|ALT_INV_Reg[2]~6_combout\ <= NOT \UUT|Reg[2]~6_combout\;
\UUT|ALT_INV_Reg[3]~_emulated_q\ <= NOT \UUT|Reg[3]~_emulated_q\;
\UUT|ALT_INV_Reg[3]~8_combout\ <= NOT \UUT|Reg[3]~8_combout\;
\UUT|ALT_INV_Reg[4]~_emulated_q\ <= NOT \UUT|Reg[4]~_emulated_q\;
\UUT|ALT_INV_Reg[4]~10_combout\ <= NOT \UUT|Reg[4]~10_combout\;
\UUT|ALT_INV_Reg[5]~_emulated_q\ <= NOT \UUT|Reg[5]~_emulated_q\;
\UUT|ALT_INV_Reg[5]~12_combout\ <= NOT \UUT|Reg[5]~12_combout\;
\UUT|ALT_INV_Reg[6]~_emulated_q\ <= NOT \UUT|Reg[6]~_emulated_q\;
\UUT|ALT_INV_Reg~34_combout\ <= NOT \UUT|Reg~34_combout\;
\UUT|ALT_INV_Reg[7]~_emulated_q\ <= NOT \UUT|Reg[7]~_emulated_q\;
\UUT|ALT_INV_Reg[6]~14_combout\ <= NOT \UUT|Reg[6]~14_combout\;
\UUT|ALT_INV_Reg[7]~16_combout\ <= NOT \UUT|Reg[7]~16_combout\;
\UUT|ALT_INV_Reg[0]~27_combout\ <= NOT \UUT|Reg[0]~27_combout\;
\UUT|ALT_INV_Reg[0]~28_combout\ <= NOT \UUT|Reg[0]~28_combout\;
\UUT|ALT_INV_Reg[0]~0_combout\ <= NOT \UUT|Reg[0]~0_combout\;
\UUT|ALT_INV_process_0~0_combout\ <= NOT \UUT|process_0~0_combout\;
\UUT|ALT_INV_Reg~30_combout\ <= NOT \UUT|Reg~30_combout\;
\UUT|ALT_INV_Reg~31_combout\ <= NOT \UUT|Reg~31_combout\;
\UUT|ALT_INV_Reg~32_combout\ <= NOT \UUT|Reg~32_combout\;
\UUT|ALT_INV_Reg~33_combout\ <= NOT \UUT|Reg~33_combout\;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\UUT|ALT_INV_Reg[0]~1_combout\ <= NOT \UUT|Reg[0]~1_combout\;
\UUT|ALT_INV_Reg[7]~38_combout\ <= NOT \UUT|Reg[7]~38_combout\;
\UUT|ALT_INV_Reg[7]~37_combout\ <= NOT \UUT|Reg[7]~37_combout\;
\UUT|ALT_INV_Reg[7]~36_combout\ <= NOT \UUT|Reg[7]~36_combout\;
\UUT|ALT_INV_Reg~35_combout\ <= NOT \UUT|Reg~35_combout\;

-- Location: IOOBUF_X10_Y61_N42
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

-- Location: IOOBUF_X10_Y61_N59
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

-- Location: IOOBUF_X10_Y61_N76
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

-- Location: IOOBUF_X10_Y61_N93
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

-- Location: IOOBUF_X21_Y61_N36
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

-- Location: IOOBUF_X21_Y61_N53
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

-- Location: IOOBUF_X19_Y61_N2
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

-- Location: IOOBUF_X19_Y61_N19
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

-- Location: IOIBUF_X46_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X31_Y1_N0
\UUT|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|process_0~0_combout\ = ( \KEY[3]~input_o\ & ( !\KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \UUT|process_0~0_combout\);

-- Location: LABCELL_X30_Y1_N6
\UUT|Reg[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[0]~1_combout\ = ( \UUT|Reg[0]~1_combout\ & ( \KEY[3]~input_o\ ) ) # ( !\UUT|Reg[0]~1_combout\ & ( (\UUT|process_0~0_combout\ & \KEY[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	dataf => \UUT|ALT_INV_Reg[0]~1_combout\,
	combout => \UUT|Reg[0]~1_combout\);

-- Location: IOIBUF_X21_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X14_Y0_N35
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N35
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X30_Y1_N36
\UUT|Reg[7]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[7]~36_combout\ = (!\SW[1]~input_o\ & (\SW[0]~input_o\ & (!\SW[2]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[9]~input_o\,
	combout => \UUT|Reg[7]~36_combout\);

-- Location: LABCELL_X30_Y1_N54
\UUT|Reg[7]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[7]~38_combout\ = ( \UUT|Reg[0]~2_combout\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\ & (!\UUT|Reg[6]~14_combout\ & \SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \UUT|ALT_INV_Reg[6]~14_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \UUT|ALT_INV_Reg[0]~2_combout\,
	combout => \UUT|Reg[7]~38_combout\);

-- Location: LABCELL_X30_Y1_N12
\UUT|Reg[7]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[7]~37_combout\ = ( \UUT|Reg[0]~2_combout\ & ( \UUT|Reg[6]~14_combout\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\ & ((\SW[2]~input_o\) # (\SW[9]~input_o\)))) # (\SW[1]~input_o\ & (((!\SW[0]~input_o\)))) ) ) ) # ( !\UUT|Reg[0]~2_combout\ & ( 
-- \UUT|Reg[6]~14_combout\ & ( (\SW[1]~input_o\ & !\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000101010100101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \UUT|ALT_INV_Reg[0]~2_combout\,
	dataf => \UUT|ALT_INV_Reg[6]~14_combout\,
	combout => \UUT|Reg[7]~37_combout\);

-- Location: LABCELL_X30_Y1_N42
\UUT|Reg[7]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[7]~17_combout\ = ( \UUT|Reg[7]~37_combout\ & ( !\UUT|Reg[0]~1_combout\ ) ) # ( !\UUT|Reg[7]~37_combout\ & ( !\UUT|Reg[0]~1_combout\ $ (((!\UUT|Reg[7]~36_combout\ & !\UUT|Reg[7]~38_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \UUT|ALT_INV_Reg[7]~36_combout\,
	datad => \UUT|ALT_INV_Reg[7]~38_combout\,
	dataf => \UUT|ALT_INV_Reg[7]~37_combout\,
	combout => \UUT|Reg[7]~17_combout\);

-- Location: LABCELL_X30_Y1_N9
\UUT|Reg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[0]~0_combout\ = ( \KEY[3]~input_o\ & ( \UUT|process_0~0_combout\ ) ) # ( !\KEY[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \UUT|Reg[0]~0_combout\);

-- Location: LABCELL_X31_Y1_N9
\UUT|Reg[0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[0]~29_combout\ = ( \KEY[2]~input_o\ & ( (\KEY[3]~input_o\ & ((\SW[0]~input_o\) # (\SW[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \UUT|Reg[0]~29_combout\);

-- Location: FF_X30_Y1_N44
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
	ena => \UUT|Reg[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[7]~_emulated_q\);

-- Location: LABCELL_X30_Y1_N27
\UUT|Reg[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[7]~16_combout\ = ( \UUT|Reg[7]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\UUT|Reg[0]~1_combout\) # (\UUT|process_0~0_combout\))) ) ) # ( !\UUT|Reg[7]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\UUT|Reg[0]~1_combout\) # (\UUT|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datac => \UUT|ALT_INV_process_0~0_combout\,
	datad => \UUT|ALT_INV_Reg[0]~1_combout\,
	dataf => \UUT|ALT_INV_Reg[7]~_emulated_q\,
	combout => \UUT|Reg[7]~16_combout\);

-- Location: LABCELL_X30_Y1_N24
\UUT|Reg~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg~35_combout\ = ( \UUT|Reg[5]~12_combout\ & ( ((!\SW[0]~input_o\ & \SW[1]~input_o\)) # (\UUT|Reg[7]~16_combout\) ) ) # ( !\UUT|Reg[5]~12_combout\ & ( (\UUT|Reg[7]~16_combout\ & ((!\SW[1]~input_o\) # (\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \UUT|ALT_INV_Reg[7]~16_combout\,
	dataf => \UUT|ALT_INV_Reg[5]~12_combout\,
	combout => \UUT|Reg~35_combout\);

-- Location: LABCELL_X30_Y1_N39
\UUT|Reg[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[6]~15_combout\ = ( \UUT|Reg~35_combout\ & ( !\SW[1]~input_o\ $ (!\SW[0]~input_o\ $ (\UUT|Reg[0]~1_combout\)) ) ) # ( !\UUT|Reg~35_combout\ & ( \UUT|Reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \UUT|ALT_INV_Reg[0]~1_combout\,
	dataf => \UUT|ALT_INV_Reg~35_combout\,
	combout => \UUT|Reg[6]~15_combout\);

-- Location: FF_X30_Y1_N41
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
	ena => \UUT|Reg[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[6]~_emulated_q\);

-- Location: LABCELL_X30_Y1_N18
\UUT|Reg[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[6]~14_combout\ = ( \UUT|process_0~0_combout\ & ( \UUT|Reg[6]~_emulated_q\ & ( \KEY[3]~input_o\ ) ) ) # ( !\UUT|process_0~0_combout\ & ( \UUT|Reg[6]~_emulated_q\ & ( (\KEY[3]~input_o\ & !\UUT|Reg[0]~1_combout\) ) ) ) # ( \UUT|process_0~0_combout\ 
-- & ( !\UUT|Reg[6]~_emulated_q\ & ( \KEY[3]~input_o\ ) ) ) # ( !\UUT|process_0~0_combout\ & ( !\UUT|Reg[6]~_emulated_q\ & ( (\KEY[3]~input_o\ & \UUT|Reg[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001010101010101010101000100010001000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \UUT|ALT_INV_Reg[0]~1_combout\,
	datae => \UUT|ALT_INV_process_0~0_combout\,
	dataf => \UUT|ALT_INV_Reg[6]~_emulated_q\,
	combout => \UUT|Reg[6]~14_combout\);

-- Location: LABCELL_X31_Y1_N12
\UUT|Reg~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg~34_combout\ = ( \UUT|Reg[6]~14_combout\ & ( (!\SW[1]~input_o\) # ((\UUT|Reg[4]~10_combout\) # (\SW[0]~input_o\)) ) ) # ( !\UUT|Reg[6]~14_combout\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & \UUT|Reg[4]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010010111011111111111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \UUT|ALT_INV_Reg[4]~10_combout\,
	dataf => \UUT|ALT_INV_Reg[6]~14_combout\,
	combout => \UUT|Reg~34_combout\);

-- Location: LABCELL_X31_Y1_N27
\UUT|Reg[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[5]~13_combout\ = ( \UUT|Reg~34_combout\ & ( !\UUT|Reg[0]~1_combout\ $ (!\SW[0]~input_o\ $ (\SW[1]~input_o\)) ) ) # ( !\UUT|Reg~34_combout\ & ( \UUT|Reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \UUT|ALT_INV_Reg~34_combout\,
	combout => \UUT|Reg[5]~13_combout\);

-- Location: FF_X31_Y1_N28
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
	ena => \UUT|Reg[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[5]~_emulated_q\);

-- Location: LABCELL_X31_Y1_N39
\UUT|Reg[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[5]~12_combout\ = ( \UUT|Reg[0]~1_combout\ & ( \UUT|Reg[5]~_emulated_q\ & ( (\KEY[3]~input_o\ & \UUT|process_0~0_combout\) ) ) ) # ( !\UUT|Reg[0]~1_combout\ & ( \UUT|Reg[5]~_emulated_q\ & ( \KEY[3]~input_o\ ) ) ) # ( \UUT|Reg[0]~1_combout\ & ( 
-- !\UUT|Reg[5]~_emulated_q\ & ( \KEY[3]~input_o\ ) ) ) # ( !\UUT|Reg[0]~1_combout\ & ( !\UUT|Reg[5]~_emulated_q\ & ( (\KEY[3]~input_o\ & \UUT|process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101010101010101010101010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datad => \UUT|ALT_INV_process_0~0_combout\,
	datae => \UUT|ALT_INV_Reg[0]~1_combout\,
	dataf => \UUT|ALT_INV_Reg[5]~_emulated_q\,
	combout => \UUT|Reg[5]~12_combout\);

-- Location: LABCELL_X31_Y1_N33
\UUT|Reg~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg~33_combout\ = ( \UUT|Reg[3]~8_combout\ & ( \UUT|Reg[5]~12_combout\ ) ) # ( !\UUT|Reg[3]~8_combout\ & ( \UUT|Reg[5]~12_combout\ & ( (!\SW[1]~input_o\) # (\SW[0]~input_o\) ) ) ) # ( \UUT|Reg[3]~8_combout\ & ( !\UUT|Reg[5]~12_combout\ & ( 
-- (\SW[1]~input_o\ & !\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000010101111101011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \UUT|ALT_INV_Reg[3]~8_combout\,
	dataf => \UUT|ALT_INV_Reg[5]~12_combout\,
	combout => \UUT|Reg~33_combout\);

-- Location: LABCELL_X31_Y1_N42
\UUT|Reg[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[4]~11_combout\ = ( \UUT|Reg[0]~1_combout\ & ( \UUT|Reg~33_combout\ & ( !\SW[0]~input_o\ $ (\SW[1]~input_o\) ) ) ) # ( !\UUT|Reg[0]~1_combout\ & ( \UUT|Reg~33_combout\ & ( !\SW[0]~input_o\ $ (!\SW[1]~input_o\) ) ) ) # ( \UUT|Reg[0]~1_combout\ & ( 
-- !\UUT|Reg~33_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \UUT|ALT_INV_Reg[0]~1_combout\,
	dataf => \UUT|ALT_INV_Reg~33_combout\,
	combout => \UUT|Reg[4]~11_combout\);

-- Location: FF_X31_Y1_N44
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
	ena => \UUT|Reg[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[4]~_emulated_q\);

-- Location: LABCELL_X31_Y1_N21
\UUT|Reg[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[4]~10_combout\ = ( \UUT|Reg[0]~1_combout\ & ( \UUT|Reg[4]~_emulated_q\ & ( (\KEY[3]~input_o\ & \UUT|process_0~0_combout\) ) ) ) # ( !\UUT|Reg[0]~1_combout\ & ( \UUT|Reg[4]~_emulated_q\ & ( \KEY[3]~input_o\ ) ) ) # ( \UUT|Reg[0]~1_combout\ & ( 
-- !\UUT|Reg[4]~_emulated_q\ & ( \KEY[3]~input_o\ ) ) ) # ( !\UUT|Reg[0]~1_combout\ & ( !\UUT|Reg[4]~_emulated_q\ & ( (\KEY[3]~input_o\ & \UUT|process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101010101010101010101010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datad => \UUT|ALT_INV_process_0~0_combout\,
	datae => \UUT|ALT_INV_Reg[0]~1_combout\,
	dataf => \UUT|ALT_INV_Reg[4]~_emulated_q\,
	combout => \UUT|Reg[4]~10_combout\);

-- Location: LABCELL_X31_Y1_N48
\UUT|Reg~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg~32_combout\ = ( \UUT|Reg[4]~10_combout\ & ( \UUT|Reg[2]~6_combout\ ) ) # ( !\UUT|Reg[4]~10_combout\ & ( \UUT|Reg[2]~6_combout\ & ( (!\SW[0]~input_o\ & \SW[1]~input_o\) ) ) ) # ( \UUT|Reg[4]~10_combout\ & ( !\UUT|Reg[2]~6_combout\ & ( 
-- (!\SW[1]~input_o\) # (\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100001100000011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \UUT|ALT_INV_Reg[4]~10_combout\,
	dataf => \UUT|ALT_INV_Reg[2]~6_combout\,
	combout => \UUT|Reg~32_combout\);

-- Location: LABCELL_X31_Y1_N3
\UUT|Reg[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[3]~9_combout\ = ( \UUT|Reg~32_combout\ & ( !\SW[1]~input_o\ $ (!\SW[0]~input_o\ $ (\UUT|Reg[0]~1_combout\)) ) ) # ( !\UUT|Reg~32_combout\ & ( \UUT|Reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \UUT|ALT_INV_Reg[0]~1_combout\,
	dataf => \UUT|ALT_INV_Reg~32_combout\,
	combout => \UUT|Reg[3]~9_combout\);

-- Location: FF_X31_Y1_N5
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
	ena => \UUT|Reg[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[3]~_emulated_q\);

-- Location: LABCELL_X31_Y1_N54
\UUT|Reg[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[3]~8_combout\ = ( \UUT|Reg[3]~_emulated_q\ & ( \UUT|Reg[0]~1_combout\ & ( (\UUT|process_0~0_combout\ & \KEY[3]~input_o\) ) ) ) # ( !\UUT|Reg[3]~_emulated_q\ & ( \UUT|Reg[0]~1_combout\ & ( \KEY[3]~input_o\ ) ) ) # ( \UUT|Reg[3]~_emulated_q\ & ( 
-- !\UUT|Reg[0]~1_combout\ & ( \KEY[3]~input_o\ ) ) ) # ( !\UUT|Reg[3]~_emulated_q\ & ( !\UUT|Reg[0]~1_combout\ & ( (\UUT|process_0~0_combout\ & \KEY[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000011110000111100001111000011110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_process_0~0_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datae => \UUT|ALT_INV_Reg[3]~_emulated_q\,
	dataf => \UUT|ALT_INV_Reg[0]~1_combout\,
	combout => \UUT|Reg[3]~8_combout\);

-- Location: LABCELL_X31_Y1_N6
\UUT|Reg~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg~31_combout\ = ( \UUT|Reg[1]~4_combout\ & ( ((\SW[1]~input_o\ & !\SW[0]~input_o\)) # (\UUT|Reg[3]~8_combout\) ) ) # ( !\UUT|Reg[1]~4_combout\ & ( (\UUT|Reg[3]~8_combout\ & ((!\SW[1]~input_o\) # (\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111011000000001011101101000100111111110100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \UUT|ALT_INV_Reg[3]~8_combout\,
	dataf => \UUT|ALT_INV_Reg[1]~4_combout\,
	combout => \UUT|Reg~31_combout\);

-- Location: LABCELL_X31_Y1_N15
\UUT|Reg[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[2]~7_combout\ = ( \UUT|Reg~31_combout\ & ( !\SW[1]~input_o\ $ (!\SW[0]~input_o\ $ (\UUT|Reg[0]~1_combout\)) ) ) # ( !\UUT|Reg~31_combout\ & ( \UUT|Reg[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \UUT|ALT_INV_Reg[0]~1_combout\,
	dataf => \UUT|ALT_INV_Reg~31_combout\,
	combout => \UUT|Reg[2]~7_combout\);

-- Location: FF_X31_Y1_N17
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
	ena => \UUT|Reg[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[2]~_emulated_q\);

-- Location: LABCELL_X31_Y1_N24
\UUT|Reg[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[2]~6_combout\ = ( \UUT|Reg[2]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\UUT|Reg[0]~1_combout\) # (\UUT|process_0~0_combout\))) ) ) # ( !\UUT|Reg[2]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\UUT|process_0~0_combout\) # (\UUT|Reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \UUT|ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \UUT|ALT_INV_Reg[2]~_emulated_q\,
	combout => \UUT|Reg[2]~6_combout\);

-- Location: LABCELL_X30_Y1_N3
\UUT|Reg~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg~30_combout\ = ( \UUT|Reg[2]~6_combout\ & ( (!\SW[1]~input_o\) # ((\UUT|Reg[0]~2_combout\) # (\SW[0]~input_o\)) ) ) # ( !\UUT|Reg[2]~6_combout\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & \UUT|Reg[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \UUT|ALT_INV_Reg[0]~2_combout\,
	dataf => \UUT|ALT_INV_Reg[2]~6_combout\,
	combout => \UUT|Reg~30_combout\);

-- Location: LABCELL_X30_Y1_N45
\UUT|Reg[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[1]~5_combout\ = ( \SW[1]~input_o\ & ( !\UUT|Reg[0]~1_combout\ $ (((!\UUT|Reg~30_combout\) # (\SW[0]~input_o\))) ) ) # ( !\SW[1]~input_o\ & ( !\UUT|Reg[0]~1_combout\ $ (((!\SW[0]~input_o\) # (!\UUT|Reg~30_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000110011110000110011001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \UUT|ALT_INV_Reg~30_combout\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \UUT|Reg[1]~5_combout\);

-- Location: FF_X30_Y1_N47
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
	ena => \UUT|Reg[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[1]~_emulated_q\);

-- Location: LABCELL_X30_Y1_N30
\UUT|Reg[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[1]~4_combout\ = (\KEY[3]~input_o\ & ((!\UUT|Reg[0]~1_combout\ $ (!\UUT|Reg[1]~_emulated_q\)) # (\UUT|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001101000001110000110100000111000011010000011100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \UUT|ALT_INV_process_0~0_combout\,
	datab => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \UUT|ALT_INV_Reg[1]~_emulated_q\,
	combout => \UUT|Reg[1]~4_combout\);

-- Location: IOIBUF_X10_Y0_N58
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X30_Y1_N57
\UUT|Reg[0]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[0]~27_combout\ = ( \UUT|Reg[7]~16_combout\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\)) # (\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\SW[2]~input_o\) # (\SW[8]~input_o\)))) ) ) # ( !\UUT|Reg[7]~16_combout\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\)) # 
-- (\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\SW[8]~input_o\ & !\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000100010001001100010001000100110011001100010011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \UUT|ALT_INV_Reg[7]~16_combout\,
	combout => \UUT|Reg[0]~27_combout\);

-- Location: LABCELL_X30_Y1_N48
\UUT|Reg[0]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[0]~28_combout\ = ( \UUT|Reg[7]~16_combout\ & ( !\UUT|Reg[1]~4_combout\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\SW[8]~input_o\) # (\SW[2]~input_o\)))) ) ) ) # ( !\UUT|Reg[7]~16_combout\ & ( !\UUT|Reg[1]~4_combout\ & ( (!\SW[2]~input_o\ & 
-- (\SW[8]~input_o\ & (\SW[1]~input_o\ & !\SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000001110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \UUT|ALT_INV_Reg[7]~16_combout\,
	dataf => \UUT|ALT_INV_Reg[1]~4_combout\,
	combout => \UUT|Reg[0]~28_combout\);

-- Location: LABCELL_X30_Y1_N33
\UUT|Reg[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[0]~3_combout\ = ( \UUT|Reg[0]~28_combout\ & ( !\UUT|Reg[0]~1_combout\ ) ) # ( !\UUT|Reg[0]~28_combout\ & ( !\UUT|Reg[0]~1_combout\ $ (((!\UUT|Reg[1]~4_combout\) # (!\UUT|Reg[0]~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \UUT|ALT_INV_Reg[1]~4_combout\,
	datad => \UUT|ALT_INV_Reg[0]~27_combout\,
	dataf => \UUT|ALT_INV_Reg[0]~28_combout\,
	combout => \UUT|Reg[0]~3_combout\);

-- Location: FF_X30_Y1_N35
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
	ena => \UUT|Reg[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \UUT|Reg[0]~_emulated_q\);

-- Location: LABCELL_X30_Y1_N0
\UUT|Reg[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \UUT|Reg[0]~2_combout\ = ( \UUT|Reg[0]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\UUT|Reg[0]~1_combout\) # (\UUT|process_0~0_combout\))) ) ) # ( !\UUT|Reg[0]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\UUT|process_0~0_combout\) # (\UUT|Reg[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \UUT|ALT_INV_Reg[0]~1_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \UUT|ALT_INV_process_0~0_combout\,
	dataf => \UUT|ALT_INV_Reg[0]~_emulated_q\,
	combout => \UUT|Reg[0]~2_combout\);

-- Location: IOIBUF_X14_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X64_Y12_N3
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


