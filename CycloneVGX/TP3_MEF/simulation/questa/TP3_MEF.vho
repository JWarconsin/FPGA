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

-- DATE "04/30/2024 12:26:19"

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
	CLOCK_50_B6A : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- CLOCK_50_B6A	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default


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
SIGNAL ww_CLOCK_50_B6A : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50_B6A~input_o\ : std_logic;
SIGNAL \CLOCK_50_B6A~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \bistable|future_state.B~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \bistable|current_state.B~q\ : std_logic;
SIGNAL \bistable|future_state.D~0_combout\ : std_logic;
SIGNAL \bistable|current_state.D~q\ : std_logic;
SIGNAL \bistable|Selector1~0_combout\ : std_logic;
SIGNAL \bistable|current_state.C~q\ : std_logic;
SIGNAL \bistable|Selector0~0_combout\ : std_logic;
SIGNAL \bistable|current_state.A~q\ : std_logic;
SIGNAL \bistable|Y~0_combout\ : std_logic;
SIGNAL \led[0]~0_combout\ : std_logic;
SIGNAL \led[0]~feeder_combout\ : std_logic;
SIGNAL \led[0]~DUPLICATE_q\ : std_logic;
SIGNAL \LEDG[0]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDG[0]~reg0_q\ : std_logic;
SIGNAL \LEDG[1]~reg0_q\ : std_logic;
SIGNAL \LEDG[2]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDG[2]~reg0_q\ : std_logic;
SIGNAL \LEDG[3]~reg0_q\ : std_logic;
SIGNAL \LEDG[4]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDG[4]~reg0_q\ : std_logic;
SIGNAL \LEDG[5]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDG[5]~reg0_q\ : std_logic;
SIGNAL \LEDG[6]~reg0_q\ : std_logic;
SIGNAL \LEDG[7]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDG[7]~reg0_q\ : std_logic;
SIGNAL led : std_logic_vector(7 DOWNTO 0);
SIGNAL \bistable|ALT_INV_current_state.A~q\ : std_logic;
SIGNAL \bistable|ALT_INV_current_state.C~q\ : std_logic;
SIGNAL \bistable|ALT_INV_current_state.B~q\ : std_logic;
SIGNAL \bistable|ALT_INV_current_state.D~q\ : std_logic;
SIGNAL \ALT_INV_led[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_led[0]~DUPLICATE_q\ : std_logic;

BEGIN

ww_CLOCK_50_B6A <= CLOCK_50_B6A;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\bistable|ALT_INV_current_state.A~q\ <= NOT \bistable|current_state.A~q\;
\bistable|ALT_INV_current_state.C~q\ <= NOT \bistable|current_state.C~q\;
\bistable|ALT_INV_current_state.B~q\ <= NOT \bistable|current_state.B~q\;
\bistable|ALT_INV_current_state.D~q\ <= NOT \bistable|current_state.D~q\;
\ALT_INV_led[0]~0_combout\ <= NOT \led[0]~0_combout\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_led[0]~DUPLICATE_q\ <= NOT \led[0]~DUPLICATE_q\;

-- Location: IOOBUF_X10_Y61_N42
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[0]~reg0_q\,
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
	i => \LEDG[1]~reg0_q\,
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
	i => \LEDG[2]~reg0_q\,
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
	i => \LEDG[3]~reg0_q\,
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
	i => \LEDG[4]~reg0_q\,
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
	i => \LEDG[5]~reg0_q\,
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
	i => \LEDG[6]~reg0_q\,
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
	i => \LEDG[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOIBUF_X68_Y32_N44
\CLOCK_50_B6A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50_B6A,
	o => \CLOCK_50_B6A~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50_B6A~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50_B6A~input_o\,
	outclk => \CLOCK_50_B6A~inputCLKENA0_outclk\);

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

-- Location: LABCELL_X18_Y60_N39
\bistable|future_state.B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bistable|future_state.B~0_combout\ = ( \bistable|current_state.B~q\ & ( \bistable|current_state.A~q\ & ( \KEY[0]~input_o\ ) ) ) # ( \bistable|current_state.B~q\ & ( !\bistable|current_state.A~q\ & ( \KEY[0]~input_o\ ) ) ) # ( 
-- !\bistable|current_state.B~q\ & ( !\bistable|current_state.A~q\ & ( \KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datae => \bistable|ALT_INV_current_state.B~q\,
	dataf => \bistable|ALT_INV_current_state.A~q\,
	combout => \bistable|future_state.B~0_combout\);

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

-- Location: FF_X18_Y60_N41
\bistable|current_state.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \bistable|future_state.B~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bistable|current_state.B~q\);

-- Location: LABCELL_X18_Y60_N18
\bistable|future_state.D~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bistable|future_state.D~0_combout\ = ( !\bistable|current_state.B~q\ & ( (\KEY[0]~input_o\ & \bistable|current_state.A~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \bistable|ALT_INV_current_state.A~q\,
	dataf => \bistable|ALT_INV_current_state.B~q\,
	combout => \bistable|future_state.D~0_combout\);

-- Location: FF_X18_Y60_N19
\bistable|current_state.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \bistable|future_state.D~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bistable|current_state.D~q\);

-- Location: LABCELL_X18_Y60_N21
\bistable|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bistable|Selector1~0_combout\ = ( !\bistable|current_state.D~q\ & ( (!\KEY[0]~input_o\ & \bistable|current_state.A~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \bistable|ALT_INV_current_state.A~q\,
	dataf => \bistable|ALT_INV_current_state.D~q\,
	combout => \bistable|Selector1~0_combout\);

-- Location: FF_X18_Y60_N23
\bistable|current_state.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \bistable|Selector1~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bistable|current_state.C~q\);

-- Location: LABCELL_X18_Y60_N48
\bistable|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bistable|Selector0~0_combout\ = ( \bistable|current_state.C~q\ & ( \bistable|current_state.B~q\ ) ) # ( !\bistable|current_state.C~q\ & ( \bistable|current_state.B~q\ ) ) # ( \bistable|current_state.C~q\ & ( !\bistable|current_state.B~q\ ) ) # ( 
-- !\bistable|current_state.C~q\ & ( !\bistable|current_state.B~q\ & ( \KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	datae => \bistable|ALT_INV_current_state.C~q\,
	dataf => \bistable|ALT_INV_current_state.B~q\,
	combout => \bistable|Selector0~0_combout\);

-- Location: FF_X18_Y60_N50
\bistable|current_state.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \bistable|Selector0~0_combout\,
	clrn => \KEY[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bistable|current_state.A~q\);

-- Location: LABCELL_X18_Y60_N33
\bistable|Y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bistable|Y~0_combout\ = LCELL(( !\bistable|current_state.C~q\ & ( \bistable|current_state.A~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \bistable|ALT_INV_current_state.A~q\,
	datae => \bistable|ALT_INV_current_state.C~q\,
	combout => \bistable|Y~0_combout\);

-- Location: LABCELL_X18_Y60_N27
\led[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \led[0]~0_combout\ = ( !\led[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_led[0]~DUPLICATE_q\,
	combout => \led[0]~0_combout\);

-- Location: LABCELL_X18_Y60_N12
\led[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \led[0]~feeder_combout\ = ( \led[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_led[0]~0_combout\,
	combout => \led[0]~feeder_combout\);

-- Location: FF_X18_Y60_N14
\led[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bistable|Y~0_combout\,
	d => \led[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[0]~DUPLICATE_q\);

-- Location: LABCELL_X18_Y60_N6
\LEDG[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDG[0]~reg0feeder_combout\ = \led[0]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_led[0]~DUPLICATE_q\,
	combout => \LEDG[0]~reg0feeder_combout\);

-- Location: FF_X18_Y60_N7
\LEDG[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bistable|Y~0_combout\,
	d => \LEDG[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[0]~reg0_q\);

-- Location: FF_X18_Y60_N34
\LEDG[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bistable|Y~0_combout\,
	asdata => \led[0]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[1]~reg0_q\);

-- Location: LABCELL_X18_Y60_N54
\LEDG[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDG[2]~reg0feeder_combout\ = \led[0]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_led[0]~DUPLICATE_q\,
	combout => \LEDG[2]~reg0feeder_combout\);

-- Location: FF_X18_Y60_N55
\LEDG[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bistable|Y~0_combout\,
	d => \LEDG[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[2]~reg0_q\);

-- Location: FF_X18_Y60_N13
\led[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bistable|Y~0_combout\,
	d => \led[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led(0));

-- Location: FF_X18_Y60_N26
\LEDG[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bistable|Y~0_combout\,
	asdata => led(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[3]~reg0_q\);

-- Location: LABCELL_X18_Y60_N0
\LEDG[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDG[4]~reg0feeder_combout\ = \led[0]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_led[0]~DUPLICATE_q\,
	combout => \LEDG[4]~reg0feeder_combout\);

-- Location: FF_X18_Y60_N1
\LEDG[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bistable|Y~0_combout\,
	d => \LEDG[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[4]~reg0_q\);

-- Location: LABCELL_X18_Y60_N3
\LEDG[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDG[5]~reg0feeder_combout\ = \led[0]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_led[0]~DUPLICATE_q\,
	combout => \LEDG[5]~reg0feeder_combout\);

-- Location: FF_X18_Y60_N4
\LEDG[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bistable|Y~0_combout\,
	d => \LEDG[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[5]~reg0_q\);

-- Location: FF_X18_Y60_N31
\LEDG[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bistable|Y~0_combout\,
	asdata => \led[0]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[6]~reg0_q\);

-- Location: LABCELL_X18_Y60_N9
\LEDG[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDG[7]~reg0feeder_combout\ = \led[0]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_led[0]~DUPLICATE_q\,
	combout => \LEDG[7]~reg0feeder_combout\);

-- Location: FF_X18_Y60_N10
\LEDG[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bistable|Y~0_combout\,
	d => \LEDG[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[7]~reg0_q\);

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

-- Location: MLABCELL_X50_Y46_N0
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


