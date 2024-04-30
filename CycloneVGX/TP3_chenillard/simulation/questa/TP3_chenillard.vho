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

-- DATE "04/30/2024 12:05:47"

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
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- CLOCK_50_B6A	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50_B6A~input_o\ : std_logic;
SIGNAL \CLOCK_50_B6A~inputCLKENA0_outclk\ : std_logic;
SIGNAL \divider|Add0~93_sumout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \divider|Add0~94\ : std_logic;
SIGNAL \divider|Add0~89_sumout\ : std_logic;
SIGNAL \divider|Add0~90\ : std_logic;
SIGNAL \divider|Add0~85_sumout\ : std_logic;
SIGNAL \divider|Add0~86\ : std_logic;
SIGNAL \divider|Add0~81_sumout\ : std_logic;
SIGNAL \divider|Add0~82\ : std_logic;
SIGNAL \divider|Add0~77_sumout\ : std_logic;
SIGNAL \divider|Add0~78\ : std_logic;
SIGNAL \divider|Add0~73_sumout\ : std_logic;
SIGNAL \divider|Add0~74\ : std_logic;
SIGNAL \divider|Add0~69_sumout\ : std_logic;
SIGNAL \divider|Add0~70\ : std_logic;
SIGNAL \divider|Add0~65_sumout\ : std_logic;
SIGNAL \divider|Add0~66\ : std_logic;
SIGNAL \divider|Add0~61_sumout\ : std_logic;
SIGNAL \divider|Add0~62\ : std_logic;
SIGNAL \divider|Add0~57_sumout\ : std_logic;
SIGNAL \divider|Add0~58\ : std_logic;
SIGNAL \divider|Add0~53_sumout\ : std_logic;
SIGNAL \divider|Add0~54\ : std_logic;
SIGNAL \divider|Add0~49_sumout\ : std_logic;
SIGNAL \divider|Add0~50\ : std_logic;
SIGNAL \divider|Add0~45_sumout\ : std_logic;
SIGNAL \divider|Add0~46\ : std_logic;
SIGNAL \divider|Add0~41_sumout\ : std_logic;
SIGNAL \divider|Add0~42\ : std_logic;
SIGNAL \divider|Add0~37_sumout\ : std_logic;
SIGNAL \divider|Add0~38\ : std_logic;
SIGNAL \divider|Add0~33_sumout\ : std_logic;
SIGNAL \divider|Add0~34\ : std_logic;
SIGNAL \divider|Add0~29_sumout\ : std_logic;
SIGNAL \divider|Add0~30\ : std_logic;
SIGNAL \divider|Add0~25_sumout\ : std_logic;
SIGNAL \divider|Add0~26\ : std_logic;
SIGNAL \divider|Add0~21_sumout\ : std_logic;
SIGNAL \divider|Add0~22\ : std_logic;
SIGNAL \divider|Add0~17_sumout\ : std_logic;
SIGNAL \divider|Add0~18\ : std_logic;
SIGNAL \divider|Add0~13_sumout\ : std_logic;
SIGNAL \divider|Add0~14\ : std_logic;
SIGNAL \divider|Add0~9_sumout\ : std_logic;
SIGNAL \divider|Add0~10\ : std_logic;
SIGNAL \divider|Add0~5_sumout\ : std_logic;
SIGNAL \divider|Add0~6\ : std_logic;
SIGNAL \divider|Add0~1_sumout\ : std_logic;
SIGNAL \divider|clko~0_combout\ : std_logic;
SIGNAL \divider|clko~feeder_combout\ : std_logic;
SIGNAL \divider|clko~q\ : std_logic;
SIGNAL \chenillard|c[0]~DUPLICATE_q\ : std_logic;
SIGNAL \chenillard|c[2]~feeder_combout\ : std_logic;
SIGNAL \chenillard|c[3]~feeder_combout\ : std_logic;
SIGNAL \chenillard|c[4]~1_combout\ : std_logic;
SIGNAL \chenillard|c[4]~DUPLICATE_q\ : std_logic;
SIGNAL \chenillard|c[5]~DUPLICATE_q\ : std_logic;
SIGNAL \chenillard|c[6]~feeder_combout\ : std_logic;
SIGNAL \chenillard|c[7]~feeder_combout\ : std_logic;
SIGNAL \chenillard|c[8]~feeder_combout\ : std_logic;
SIGNAL \chenillard|c[9]~feeder_combout\ : std_logic;
SIGNAL \chenillard|c[0]~0_combout\ : std_logic;
SIGNAL \divider|compteur\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \chenillard|c\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \divider|ALT_INV_compteur\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \chenillard|ALT_INV_c[5]~DUPLICATE_q\ : std_logic;
SIGNAL \divider|ALT_INV_clko~0_combout\ : std_logic;
SIGNAL \divider|ALT_INV_clko~q\ : std_logic;
SIGNAL \chenillard|ALT_INV_c\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_CLOCK_50_B6A <= CLOCK_50_B6A;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\divider|ALT_INV_compteur\(18) <= NOT \divider|compteur\(18);
\divider|ALT_INV_compteur\(23) <= NOT \divider|compteur\(23);
\divider|ALT_INV_compteur\(17) <= NOT \divider|compteur\(17);
\divider|ALT_INV_compteur\(22) <= NOT \divider|compteur\(22);
\divider|ALT_INV_compteur\(21) <= NOT \divider|compteur\(21);
\divider|ALT_INV_compteur\(20) <= NOT \divider|compteur\(20);
\divider|ALT_INV_compteur\(19) <= NOT \divider|compteur\(19);
\chenillard|ALT_INV_c[5]~DUPLICATE_q\ <= NOT \chenillard|c[5]~DUPLICATE_q\;
\divider|ALT_INV_clko~0_combout\ <= NOT \divider|clko~0_combout\;
\divider|ALT_INV_clko~q\ <= NOT \divider|clko~q\;
\chenillard|ALT_INV_c\(9) <= NOT \chenillard|c\(9);
\chenillard|ALT_INV_c\(8) <= NOT \chenillard|c\(8);
\chenillard|ALT_INV_c\(7) <= NOT \chenillard|c\(7);
\chenillard|ALT_INV_c\(6) <= NOT \chenillard|c\(6);
\chenillard|ALT_INV_c\(3) <= NOT \chenillard|c\(3);
\chenillard|ALT_INV_c\(2) <= NOT \chenillard|c\(2);
\chenillard|ALT_INV_c\(1) <= NOT \chenillard|c\(1);
\chenillard|ALT_INV_c\(0) <= NOT \chenillard|c\(0);
\divider|ALT_INV_compteur\(0) <= NOT \divider|compteur\(0);
\divider|ALT_INV_compteur\(1) <= NOT \divider|compteur\(1);
\divider|ALT_INV_compteur\(2) <= NOT \divider|compteur\(2);
\divider|ALT_INV_compteur\(3) <= NOT \divider|compteur\(3);
\divider|ALT_INV_compteur\(4) <= NOT \divider|compteur\(4);
\divider|ALT_INV_compteur\(5) <= NOT \divider|compteur\(5);
\divider|ALT_INV_compteur\(6) <= NOT \divider|compteur\(6);
\divider|ALT_INV_compteur\(7) <= NOT \divider|compteur\(7);
\divider|ALT_INV_compteur\(8) <= NOT \divider|compteur\(8);
\divider|ALT_INV_compteur\(9) <= NOT \divider|compteur\(9);
\divider|ALT_INV_compteur\(10) <= NOT \divider|compteur\(10);
\divider|ALT_INV_compteur\(11) <= NOT \divider|compteur\(11);
\divider|ALT_INV_compteur\(12) <= NOT \divider|compteur\(12);
\divider|ALT_INV_compteur\(13) <= NOT \divider|compteur\(13);
\divider|ALT_INV_compteur\(14) <= NOT \divider|compteur\(14);
\divider|ALT_INV_compteur\(15) <= NOT \divider|compteur\(15);
\divider|ALT_INV_compteur\(16) <= NOT \divider|compteur\(16);

-- Location: IOOBUF_X14_Y61_N53
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|ALT_INV_c\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X15_Y61_N36
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|ALT_INV_c\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X15_Y61_N53
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|ALT_INV_c\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X14_Y61_N36
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|ALT_INV_c\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X14_Y61_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|c\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X12_Y61_N53
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|c\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X12_Y61_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|c\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X14_Y61_N2
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|c\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X12_Y61_N36
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|c\(8),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X12_Y61_N19
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \chenillard|c\(9),
	devoe => ww_devoe,
	o => ww_LEDR(9));

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

-- Location: LABCELL_X67_Y33_N30
\divider|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~93_sumout\ = SUM(( \divider|compteur\(0) ) + ( VCC ) + ( !VCC ))
-- \divider|Add0~94\ = CARRY(( \divider|compteur\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider|ALT_INV_compteur\(0),
	cin => GND,
	sumout => \divider|Add0~93_sumout\,
	cout => \divider|Add0~94\);

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

-- Location: FF_X67_Y33_N31
\divider|compteur[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~93_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(0));

-- Location: LABCELL_X67_Y33_N33
\divider|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~89_sumout\ = SUM(( \divider|compteur\(1) ) + ( GND ) + ( \divider|Add0~94\ ))
-- \divider|Add0~90\ = CARRY(( \divider|compteur\(1) ) + ( GND ) + ( \divider|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divider|ALT_INV_compteur\(1),
	cin => \divider|Add0~94\,
	sumout => \divider|Add0~89_sumout\,
	cout => \divider|Add0~90\);

-- Location: FF_X67_Y33_N35
\divider|compteur[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~89_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(1));

-- Location: LABCELL_X67_Y33_N36
\divider|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~85_sumout\ = SUM(( \divider|compteur\(2) ) + ( GND ) + ( \divider|Add0~90\ ))
-- \divider|Add0~86\ = CARRY(( \divider|compteur\(2) ) + ( GND ) + ( \divider|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_compteur\(2),
	cin => \divider|Add0~90\,
	sumout => \divider|Add0~85_sumout\,
	cout => \divider|Add0~86\);

-- Location: FF_X67_Y33_N38
\divider|compteur[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~85_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(2));

-- Location: LABCELL_X67_Y33_N39
\divider|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~81_sumout\ = SUM(( \divider|compteur\(3) ) + ( GND ) + ( \divider|Add0~86\ ))
-- \divider|Add0~82\ = CARRY(( \divider|compteur\(3) ) + ( GND ) + ( \divider|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider|ALT_INV_compteur\(3),
	cin => \divider|Add0~86\,
	sumout => \divider|Add0~81_sumout\,
	cout => \divider|Add0~82\);

-- Location: FF_X67_Y33_N41
\divider|compteur[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~81_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(3));

-- Location: LABCELL_X67_Y33_N42
\divider|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~77_sumout\ = SUM(( \divider|compteur\(4) ) + ( GND ) + ( \divider|Add0~82\ ))
-- \divider|Add0~78\ = CARRY(( \divider|compteur\(4) ) + ( GND ) + ( \divider|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_compteur\(4),
	cin => \divider|Add0~82\,
	sumout => \divider|Add0~77_sumout\,
	cout => \divider|Add0~78\);

-- Location: FF_X67_Y33_N43
\divider|compteur[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~77_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(4));

-- Location: LABCELL_X67_Y33_N45
\divider|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~73_sumout\ = SUM(( \divider|compteur\(5) ) + ( GND ) + ( \divider|Add0~78\ ))
-- \divider|Add0~74\ = CARRY(( \divider|compteur\(5) ) + ( GND ) + ( \divider|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_compteur\(5),
	cin => \divider|Add0~78\,
	sumout => \divider|Add0~73_sumout\,
	cout => \divider|Add0~74\);

-- Location: FF_X67_Y33_N47
\divider|compteur[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~73_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(5));

-- Location: LABCELL_X67_Y33_N48
\divider|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~69_sumout\ = SUM(( \divider|compteur\(6) ) + ( GND ) + ( \divider|Add0~74\ ))
-- \divider|Add0~70\ = CARRY(( \divider|compteur\(6) ) + ( GND ) + ( \divider|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider|ALT_INV_compteur\(6),
	cin => \divider|Add0~74\,
	sumout => \divider|Add0~69_sumout\,
	cout => \divider|Add0~70\);

-- Location: FF_X67_Y33_N50
\divider|compteur[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~69_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(6));

-- Location: LABCELL_X67_Y33_N51
\divider|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~65_sumout\ = SUM(( \divider|compteur\(7) ) + ( GND ) + ( \divider|Add0~70\ ))
-- \divider|Add0~66\ = CARRY(( \divider|compteur\(7) ) + ( GND ) + ( \divider|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_compteur\(7),
	cin => \divider|Add0~70\,
	sumout => \divider|Add0~65_sumout\,
	cout => \divider|Add0~66\);

-- Location: FF_X67_Y33_N52
\divider|compteur[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~65_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(7));

-- Location: LABCELL_X67_Y33_N54
\divider|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~61_sumout\ = SUM(( \divider|compteur\(8) ) + ( GND ) + ( \divider|Add0~66\ ))
-- \divider|Add0~62\ = CARRY(( \divider|compteur\(8) ) + ( GND ) + ( \divider|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_compteur\(8),
	cin => \divider|Add0~66\,
	sumout => \divider|Add0~61_sumout\,
	cout => \divider|Add0~62\);

-- Location: FF_X67_Y33_N56
\divider|compteur[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~61_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(8));

-- Location: LABCELL_X67_Y33_N57
\divider|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~57_sumout\ = SUM(( \divider|compteur\(9) ) + ( GND ) + ( \divider|Add0~62\ ))
-- \divider|Add0~58\ = CARRY(( \divider|compteur\(9) ) + ( GND ) + ( \divider|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_compteur\(9),
	cin => \divider|Add0~62\,
	sumout => \divider|Add0~57_sumout\,
	cout => \divider|Add0~58\);

-- Location: FF_X67_Y33_N59
\divider|compteur[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~57_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(9));

-- Location: LABCELL_X67_Y32_N0
\divider|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~53_sumout\ = SUM(( \divider|compteur\(10) ) + ( GND ) + ( \divider|Add0~58\ ))
-- \divider|Add0~54\ = CARRY(( \divider|compteur\(10) ) + ( GND ) + ( \divider|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_compteur\(10),
	cin => \divider|Add0~58\,
	sumout => \divider|Add0~53_sumout\,
	cout => \divider|Add0~54\);

-- Location: FF_X67_Y32_N2
\divider|compteur[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~53_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(10));

-- Location: LABCELL_X67_Y32_N3
\divider|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~49_sumout\ = SUM(( \divider|compteur\(11) ) + ( GND ) + ( \divider|Add0~54\ ))
-- \divider|Add0~50\ = CARRY(( \divider|compteur\(11) ) + ( GND ) + ( \divider|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_compteur\(11),
	cin => \divider|Add0~54\,
	sumout => \divider|Add0~49_sumout\,
	cout => \divider|Add0~50\);

-- Location: FF_X67_Y32_N5
\divider|compteur[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~49_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(11));

-- Location: LABCELL_X67_Y32_N6
\divider|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~45_sumout\ = SUM(( \divider|compteur\(12) ) + ( GND ) + ( \divider|Add0~50\ ))
-- \divider|Add0~46\ = CARRY(( \divider|compteur\(12) ) + ( GND ) + ( \divider|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider|ALT_INV_compteur\(12),
	cin => \divider|Add0~50\,
	sumout => \divider|Add0~45_sumout\,
	cout => \divider|Add0~46\);

-- Location: FF_X67_Y32_N7
\divider|compteur[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~45_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(12));

-- Location: LABCELL_X67_Y32_N9
\divider|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~41_sumout\ = SUM(( \divider|compteur\(13) ) + ( GND ) + ( \divider|Add0~46\ ))
-- \divider|Add0~42\ = CARRY(( \divider|compteur\(13) ) + ( GND ) + ( \divider|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider|ALT_INV_compteur\(13),
	cin => \divider|Add0~46\,
	sumout => \divider|Add0~41_sumout\,
	cout => \divider|Add0~42\);

-- Location: FF_X67_Y32_N11
\divider|compteur[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~41_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(13));

-- Location: LABCELL_X67_Y32_N12
\divider|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~37_sumout\ = SUM(( \divider|compteur\(14) ) + ( GND ) + ( \divider|Add0~42\ ))
-- \divider|Add0~38\ = CARRY(( \divider|compteur\(14) ) + ( GND ) + ( \divider|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \divider|ALT_INV_compteur\(14),
	cin => \divider|Add0~42\,
	sumout => \divider|Add0~37_sumout\,
	cout => \divider|Add0~38\);

-- Location: FF_X67_Y32_N14
\divider|compteur[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~37_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(14));

-- Location: LABCELL_X67_Y32_N15
\divider|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~33_sumout\ = SUM(( \divider|compteur\(15) ) + ( GND ) + ( \divider|Add0~38\ ))
-- \divider|Add0~34\ = CARRY(( \divider|compteur\(15) ) + ( GND ) + ( \divider|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider|ALT_INV_compteur\(15),
	cin => \divider|Add0~38\,
	sumout => \divider|Add0~33_sumout\,
	cout => \divider|Add0~34\);

-- Location: FF_X67_Y32_N17
\divider|compteur[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~33_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(15));

-- Location: LABCELL_X67_Y32_N18
\divider|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~29_sumout\ = SUM(( \divider|compteur\(16) ) + ( GND ) + ( \divider|Add0~34\ ))
-- \divider|Add0~30\ = CARRY(( \divider|compteur\(16) ) + ( GND ) + ( \divider|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider|ALT_INV_compteur\(16),
	cin => \divider|Add0~34\,
	sumout => \divider|Add0~29_sumout\,
	cout => \divider|Add0~30\);

-- Location: FF_X67_Y32_N20
\divider|compteur[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~29_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(16));

-- Location: LABCELL_X67_Y32_N21
\divider|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~25_sumout\ = SUM(( \divider|compteur\(17) ) + ( GND ) + ( \divider|Add0~30\ ))
-- \divider|Add0~26\ = CARRY(( \divider|compteur\(17) ) + ( GND ) + ( \divider|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_compteur\(17),
	cin => \divider|Add0~30\,
	sumout => \divider|Add0~25_sumout\,
	cout => \divider|Add0~26\);

-- Location: FF_X67_Y32_N23
\divider|compteur[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~25_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(17));

-- Location: LABCELL_X67_Y32_N24
\divider|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~21_sumout\ = SUM(( \divider|compteur\(18) ) + ( GND ) + ( \divider|Add0~26\ ))
-- \divider|Add0~22\ = CARRY(( \divider|compteur\(18) ) + ( GND ) + ( \divider|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider|ALT_INV_compteur\(18),
	cin => \divider|Add0~26\,
	sumout => \divider|Add0~21_sumout\,
	cout => \divider|Add0~22\);

-- Location: FF_X67_Y32_N26
\divider|compteur[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~21_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(18));

-- Location: LABCELL_X67_Y32_N27
\divider|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~17_sumout\ = SUM(( \divider|compteur\(19) ) + ( GND ) + ( \divider|Add0~22\ ))
-- \divider|Add0~18\ = CARRY(( \divider|compteur\(19) ) + ( GND ) + ( \divider|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divider|ALT_INV_compteur\(19),
	cin => \divider|Add0~22\,
	sumout => \divider|Add0~17_sumout\,
	cout => \divider|Add0~18\);

-- Location: FF_X67_Y32_N29
\divider|compteur[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~17_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(19));

-- Location: LABCELL_X67_Y32_N30
\divider|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~13_sumout\ = SUM(( \divider|compteur\(20) ) + ( GND ) + ( \divider|Add0~18\ ))
-- \divider|Add0~14\ = CARRY(( \divider|compteur\(20) ) + ( GND ) + ( \divider|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider|ALT_INV_compteur\(20),
	cin => \divider|Add0~18\,
	sumout => \divider|Add0~13_sumout\,
	cout => \divider|Add0~14\);

-- Location: FF_X67_Y32_N31
\divider|compteur[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~13_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(20));

-- Location: LABCELL_X67_Y32_N33
\divider|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~9_sumout\ = SUM(( \divider|compteur\(21) ) + ( GND ) + ( \divider|Add0~14\ ))
-- \divider|Add0~10\ = CARRY(( \divider|compteur\(21) ) + ( GND ) + ( \divider|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divider|ALT_INV_compteur\(21),
	cin => \divider|Add0~14\,
	sumout => \divider|Add0~9_sumout\,
	cout => \divider|Add0~10\);

-- Location: FF_X67_Y32_N35
\divider|compteur[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~9_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(21));

-- Location: LABCELL_X67_Y32_N36
\divider|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~5_sumout\ = SUM(( \divider|compteur\(22) ) + ( GND ) + ( \divider|Add0~10\ ))
-- \divider|Add0~6\ = CARRY(( \divider|compteur\(22) ) + ( GND ) + ( \divider|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider|ALT_INV_compteur\(22),
	cin => \divider|Add0~10\,
	sumout => \divider|Add0~5_sumout\,
	cout => \divider|Add0~6\);

-- Location: FF_X67_Y32_N38
\divider|compteur[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~5_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(22));

-- Location: LABCELL_X67_Y32_N39
\divider|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|Add0~1_sumout\ = SUM(( \divider|compteur\(23) ) + ( GND ) + ( \divider|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \divider|ALT_INV_compteur\(23),
	cin => \divider|Add0~6\,
	sumout => \divider|Add0~1_sumout\);

-- Location: FF_X67_Y32_N41
\divider|compteur[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \divider|Add0~1_sumout\,
	clrn => \KEY[0]~input_o\,
	sclr => \divider|compteur\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|compteur\(23));

-- Location: LABCELL_X67_Y32_N54
\divider|clko~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|clko~0_combout\ = ( \divider|compteur\(23) & ( !\divider|clko~q\ ) ) # ( !\divider|compteur\(23) & ( \divider|clko~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \divider|ALT_INV_clko~q\,
	dataf => \divider|ALT_INV_compteur\(23),
	combout => \divider|clko~0_combout\);

-- Location: LABCELL_X67_Y32_N45
\divider|clko~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \divider|clko~feeder_combout\ = ( \divider|clko~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \divider|ALT_INV_clko~0_combout\,
	combout => \divider|clko~feeder_combout\);

-- Location: FF_X67_Y32_N47
\divider|clko\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~input_o\,
	d => \divider|clko~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider|clko~q\);

-- Location: FF_X67_Y33_N26
\chenillard|c[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clko~q\,
	d => \chenillard|c[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|c[0]~DUPLICATE_q\);

-- Location: FF_X67_Y33_N28
\chenillard|c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clko~q\,
	asdata => \chenillard|c[0]~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|c\(1));

-- Location: LABCELL_X67_Y33_N12
\chenillard|c[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|c[2]~feeder_combout\ = \chenillard|c\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chenillard|ALT_INV_c\(1),
	combout => \chenillard|c[2]~feeder_combout\);

-- Location: FF_X67_Y33_N13
\chenillard|c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clko~q\,
	d => \chenillard|c[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|c\(2));

-- Location: LABCELL_X67_Y33_N15
\chenillard|c[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|c[3]~feeder_combout\ = \chenillard|c\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \chenillard|ALT_INV_c\(2),
	combout => \chenillard|c[3]~feeder_combout\);

-- Location: FF_X67_Y33_N16
\chenillard|c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clko~q\,
	d => \chenillard|c[3]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|c\(3));

-- Location: LABCELL_X67_Y33_N6
\chenillard|c[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|c[4]~1_combout\ = !\chenillard|c\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \chenillard|ALT_INV_c\(3),
	combout => \chenillard|c[4]~1_combout\);

-- Location: FF_X67_Y33_N8
\chenillard|c[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clko~q\,
	d => \chenillard|c[4]~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|c[4]~DUPLICATE_q\);

-- Location: FF_X67_Y33_N10
\chenillard|c[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clko~q\,
	asdata => \chenillard|c[4]~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|c[5]~DUPLICATE_q\);

-- Location: LABCELL_X67_Y33_N0
\chenillard|c[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|c[6]~feeder_combout\ = \chenillard|c[5]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \chenillard|ALT_INV_c[5]~DUPLICATE_q\,
	combout => \chenillard|c[6]~feeder_combout\);

-- Location: FF_X67_Y33_N1
\chenillard|c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clko~q\,
	d => \chenillard|c[6]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|c\(6));

-- Location: LABCELL_X67_Y33_N3
\chenillard|c[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|c[7]~feeder_combout\ = \chenillard|c\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \chenillard|ALT_INV_c\(6),
	combout => \chenillard|c[7]~feeder_combout\);

-- Location: FF_X67_Y33_N4
\chenillard|c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clko~q\,
	d => \chenillard|c[7]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|c\(7));

-- Location: LABCELL_X67_Y33_N18
\chenillard|c[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|c[8]~feeder_combout\ = \chenillard|c\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \chenillard|ALT_INV_c\(7),
	combout => \chenillard|c[8]~feeder_combout\);

-- Location: FF_X67_Y33_N19
\chenillard|c[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clko~q\,
	d => \chenillard|c[8]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|c\(8));

-- Location: LABCELL_X67_Y33_N21
\chenillard|c[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|c[9]~feeder_combout\ = \chenillard|c\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \chenillard|ALT_INV_c\(8),
	combout => \chenillard|c[9]~feeder_combout\);

-- Location: FF_X67_Y33_N22
\chenillard|c[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clko~q\,
	d => \chenillard|c[9]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|c\(9));

-- Location: LABCELL_X67_Y33_N24
\chenillard|c[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \chenillard|c[0]~0_combout\ = ( !\chenillard|c\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \chenillard|ALT_INV_c\(9),
	combout => \chenillard|c[0]~0_combout\);

-- Location: FF_X67_Y33_N25
\chenillard|c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clko~q\,
	d => \chenillard|c[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|c\(0));

-- Location: FF_X67_Y33_N7
\chenillard|c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clko~q\,
	d => \chenillard|c[4]~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|c\(4));

-- Location: FF_X67_Y33_N11
\chenillard|c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divider|clko~q\,
	asdata => \chenillard|c[4]~DUPLICATE_q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \chenillard|c\(5));

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

-- Location: LABCELL_X9_Y5_N0
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


