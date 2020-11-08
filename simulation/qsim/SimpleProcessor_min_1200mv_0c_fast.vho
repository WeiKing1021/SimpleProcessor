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

-- DATE "12/25/2019 07:15:05"

-- 
-- Device: Altera 10CL016YF484C6G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SimpleProcessor IS
    PORT (
	CLOCK : IN std_logic;
	ENABLE : IN std_logic;
	RESET : IN std_logic;
	DIN : IN std_logic_vector(22 DOWNTO 0);
	RIN : OUT std_logic_vector(7 DOWNTO 0);
	REG0 : OUT std_logic_vector(15 DOWNTO 0);
	REG1 : OUT std_logic_vector(15 DOWNTO 0);
	REG2 : OUT std_logic_vector(15 DOWNTO 0);
	REG3 : OUT std_logic_vector(15 DOWNTO 0);
	REG4 : OUT std_logic_vector(15 DOWNTO 0);
	REG5 : OUT std_logic_vector(15 DOWNTO 0);
	REG6 : OUT std_logic_vector(15 DOWNTO 0);
	REG7 : OUT std_logic_vector(15 DOWNTO 0);
	DONE : OUT std_logic;
	STEP : OUT std_logic_vector(1 DOWNTO 0)
	);
END SimpleProcessor;

-- Design Ports Information
-- ENABLE	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RIN[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RIN[1]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RIN[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RIN[3]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RIN[4]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RIN[5]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RIN[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RIN[7]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[4]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[5]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[6]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[7]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[8]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[9]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[10]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[11]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[12]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[13]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[14]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[15]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[5]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[8]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[9]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[10]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[11]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[12]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[13]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[14]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[15]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[7]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[8]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[9]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[10]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[11]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[12]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[13]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[14]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[15]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[6]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[7]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[8]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[9]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[10]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[11]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[12]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[13]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[14]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[15]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[0]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[5]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[7]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[8]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[10]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[11]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[12]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[13]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[14]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[15]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[4]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[6]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[7]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[8]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[9]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[10]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[11]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[12]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[13]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[14]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[15]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[0]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[2]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[3]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[5]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[8]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[9]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[10]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[11]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[12]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[13]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[14]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[15]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[2]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[3]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[6]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[8]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[9]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[10]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[11]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[12]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[13]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[14]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[15]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DONE	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STEP[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STEP[1]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[16]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[18]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[20]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[19]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[22]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[21]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[17]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[14]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[15]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[5]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[8]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[9]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[10]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[11]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[12]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SimpleProcessor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_ENABLE : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_DIN : std_logic_vector(22 DOWNTO 0);
SIGNAL ww_RIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_REG0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG4 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG5 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG6 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG7 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DONE : std_logic;
SIGNAL ww_STEP : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ENABLE~input_o\ : std_logic;
SIGNAL \RIN[0]~output_o\ : std_logic;
SIGNAL \RIN[1]~output_o\ : std_logic;
SIGNAL \RIN[2]~output_o\ : std_logic;
SIGNAL \RIN[3]~output_o\ : std_logic;
SIGNAL \RIN[4]~output_o\ : std_logic;
SIGNAL \RIN[5]~output_o\ : std_logic;
SIGNAL \RIN[6]~output_o\ : std_logic;
SIGNAL \RIN[7]~output_o\ : std_logic;
SIGNAL \REG0[0]~output_o\ : std_logic;
SIGNAL \REG0[1]~output_o\ : std_logic;
SIGNAL \REG0[2]~output_o\ : std_logic;
SIGNAL \REG0[3]~output_o\ : std_logic;
SIGNAL \REG0[4]~output_o\ : std_logic;
SIGNAL \REG0[5]~output_o\ : std_logic;
SIGNAL \REG0[6]~output_o\ : std_logic;
SIGNAL \REG0[7]~output_o\ : std_logic;
SIGNAL \REG0[8]~output_o\ : std_logic;
SIGNAL \REG0[9]~output_o\ : std_logic;
SIGNAL \REG0[10]~output_o\ : std_logic;
SIGNAL \REG0[11]~output_o\ : std_logic;
SIGNAL \REG0[12]~output_o\ : std_logic;
SIGNAL \REG0[13]~output_o\ : std_logic;
SIGNAL \REG0[14]~output_o\ : std_logic;
SIGNAL \REG0[15]~output_o\ : std_logic;
SIGNAL \REG1[0]~output_o\ : std_logic;
SIGNAL \REG1[1]~output_o\ : std_logic;
SIGNAL \REG1[2]~output_o\ : std_logic;
SIGNAL \REG1[3]~output_o\ : std_logic;
SIGNAL \REG1[4]~output_o\ : std_logic;
SIGNAL \REG1[5]~output_o\ : std_logic;
SIGNAL \REG1[6]~output_o\ : std_logic;
SIGNAL \REG1[7]~output_o\ : std_logic;
SIGNAL \REG1[8]~output_o\ : std_logic;
SIGNAL \REG1[9]~output_o\ : std_logic;
SIGNAL \REG1[10]~output_o\ : std_logic;
SIGNAL \REG1[11]~output_o\ : std_logic;
SIGNAL \REG1[12]~output_o\ : std_logic;
SIGNAL \REG1[13]~output_o\ : std_logic;
SIGNAL \REG1[14]~output_o\ : std_logic;
SIGNAL \REG1[15]~output_o\ : std_logic;
SIGNAL \REG2[0]~output_o\ : std_logic;
SIGNAL \REG2[1]~output_o\ : std_logic;
SIGNAL \REG2[2]~output_o\ : std_logic;
SIGNAL \REG2[3]~output_o\ : std_logic;
SIGNAL \REG2[4]~output_o\ : std_logic;
SIGNAL \REG2[5]~output_o\ : std_logic;
SIGNAL \REG2[6]~output_o\ : std_logic;
SIGNAL \REG2[7]~output_o\ : std_logic;
SIGNAL \REG2[8]~output_o\ : std_logic;
SIGNAL \REG2[9]~output_o\ : std_logic;
SIGNAL \REG2[10]~output_o\ : std_logic;
SIGNAL \REG2[11]~output_o\ : std_logic;
SIGNAL \REG2[12]~output_o\ : std_logic;
SIGNAL \REG2[13]~output_o\ : std_logic;
SIGNAL \REG2[14]~output_o\ : std_logic;
SIGNAL \REG2[15]~output_o\ : std_logic;
SIGNAL \REG3[0]~output_o\ : std_logic;
SIGNAL \REG3[1]~output_o\ : std_logic;
SIGNAL \REG3[2]~output_o\ : std_logic;
SIGNAL \REG3[3]~output_o\ : std_logic;
SIGNAL \REG3[4]~output_o\ : std_logic;
SIGNAL \REG3[5]~output_o\ : std_logic;
SIGNAL \REG3[6]~output_o\ : std_logic;
SIGNAL \REG3[7]~output_o\ : std_logic;
SIGNAL \REG3[8]~output_o\ : std_logic;
SIGNAL \REG3[9]~output_o\ : std_logic;
SIGNAL \REG3[10]~output_o\ : std_logic;
SIGNAL \REG3[11]~output_o\ : std_logic;
SIGNAL \REG3[12]~output_o\ : std_logic;
SIGNAL \REG3[13]~output_o\ : std_logic;
SIGNAL \REG3[14]~output_o\ : std_logic;
SIGNAL \REG3[15]~output_o\ : std_logic;
SIGNAL \REG4[0]~output_o\ : std_logic;
SIGNAL \REG4[1]~output_o\ : std_logic;
SIGNAL \REG4[2]~output_o\ : std_logic;
SIGNAL \REG4[3]~output_o\ : std_logic;
SIGNAL \REG4[4]~output_o\ : std_logic;
SIGNAL \REG4[5]~output_o\ : std_logic;
SIGNAL \REG4[6]~output_o\ : std_logic;
SIGNAL \REG4[7]~output_o\ : std_logic;
SIGNAL \REG4[8]~output_o\ : std_logic;
SIGNAL \REG4[9]~output_o\ : std_logic;
SIGNAL \REG4[10]~output_o\ : std_logic;
SIGNAL \REG4[11]~output_o\ : std_logic;
SIGNAL \REG4[12]~output_o\ : std_logic;
SIGNAL \REG4[13]~output_o\ : std_logic;
SIGNAL \REG4[14]~output_o\ : std_logic;
SIGNAL \REG4[15]~output_o\ : std_logic;
SIGNAL \REG5[0]~output_o\ : std_logic;
SIGNAL \REG5[1]~output_o\ : std_logic;
SIGNAL \REG5[2]~output_o\ : std_logic;
SIGNAL \REG5[3]~output_o\ : std_logic;
SIGNAL \REG5[4]~output_o\ : std_logic;
SIGNAL \REG5[5]~output_o\ : std_logic;
SIGNAL \REG5[6]~output_o\ : std_logic;
SIGNAL \REG5[7]~output_o\ : std_logic;
SIGNAL \REG5[8]~output_o\ : std_logic;
SIGNAL \REG5[9]~output_o\ : std_logic;
SIGNAL \REG5[10]~output_o\ : std_logic;
SIGNAL \REG5[11]~output_o\ : std_logic;
SIGNAL \REG5[12]~output_o\ : std_logic;
SIGNAL \REG5[13]~output_o\ : std_logic;
SIGNAL \REG5[14]~output_o\ : std_logic;
SIGNAL \REG5[15]~output_o\ : std_logic;
SIGNAL \REG6[0]~output_o\ : std_logic;
SIGNAL \REG6[1]~output_o\ : std_logic;
SIGNAL \REG6[2]~output_o\ : std_logic;
SIGNAL \REG6[3]~output_o\ : std_logic;
SIGNAL \REG6[4]~output_o\ : std_logic;
SIGNAL \REG6[5]~output_o\ : std_logic;
SIGNAL \REG6[6]~output_o\ : std_logic;
SIGNAL \REG6[7]~output_o\ : std_logic;
SIGNAL \REG6[8]~output_o\ : std_logic;
SIGNAL \REG6[9]~output_o\ : std_logic;
SIGNAL \REG6[10]~output_o\ : std_logic;
SIGNAL \REG6[11]~output_o\ : std_logic;
SIGNAL \REG6[12]~output_o\ : std_logic;
SIGNAL \REG6[13]~output_o\ : std_logic;
SIGNAL \REG6[14]~output_o\ : std_logic;
SIGNAL \REG6[15]~output_o\ : std_logic;
SIGNAL \REG7[0]~output_o\ : std_logic;
SIGNAL \REG7[1]~output_o\ : std_logic;
SIGNAL \REG7[2]~output_o\ : std_logic;
SIGNAL \REG7[3]~output_o\ : std_logic;
SIGNAL \REG7[4]~output_o\ : std_logic;
SIGNAL \REG7[5]~output_o\ : std_logic;
SIGNAL \REG7[6]~output_o\ : std_logic;
SIGNAL \REG7[7]~output_o\ : std_logic;
SIGNAL \REG7[8]~output_o\ : std_logic;
SIGNAL \REG7[9]~output_o\ : std_logic;
SIGNAL \REG7[10]~output_o\ : std_logic;
SIGNAL \REG7[11]~output_o\ : std_logic;
SIGNAL \REG7[12]~output_o\ : std_logic;
SIGNAL \REG7[13]~output_o\ : std_logic;
SIGNAL \REG7[14]~output_o\ : std_logic;
SIGNAL \REG7[15]~output_o\ : std_logic;
SIGNAL \DONE~output_o\ : std_logic;
SIGNAL \STEP[0]~output_o\ : std_logic;
SIGNAL \STEP[1]~output_o\ : std_logic;
SIGNAL \DIN[16]~input_o\ : std_logic;
SIGNAL \DIN[20]~input_o\ : std_logic;
SIGNAL \DIN[22]~input_o\ : std_logic;
SIGNAL \DIN[21]~input_o\ : std_logic;
SIGNAL \DIN[19]~input_o\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN~15_combout\ : std_logic;
SIGNAL \DIN[18]~input_o\ : std_logic;
SIGNAL \DIN[17]~input_o\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN~18_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN~19_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN~20_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN~21_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN~22_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN~17_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN~23_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN~24_combout\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN~14_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_OUT~1_combout\ : std_logic;
SIGNAL \DIN[14]~input_o\ : std_logic;
SIGNAL \DIN[13]~input_o\ : std_logic;
SIGNAL \DIN[15]~input_o\ : std_logic;
SIGNAL \CONTROL_UNIT|COMMAND_DECODER|Equal13~0_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_OUT~0_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_OUT~2_combout\ : std_logic;
SIGNAL \DIN[0]~input_o\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~35_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~132_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~37_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~36_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_OUT~3_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN~16_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_OUT~4_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~38_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~39_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~40_combout\ : std_logic;
SIGNAL \REG_1|DATA[0]~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~48_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~46_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|X_DECODER|Equal6~0_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~45_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~47_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~133_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~43_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~42_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~41_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~44_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~49_combout\ : std_logic;
SIGNAL \REG_4|DATA[0]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~50_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~51_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~52_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~53_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~134_combout\ : std_logic;
SIGNAL \DIN[1]~input_o\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[1]~54_combout\ : std_logic;
SIGNAL \REG_2|DATA[1]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[1]~57_combout\ : std_logic;
SIGNAL \REG_4|DATA[1]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[1]~55_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[1]~56_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[1]~58_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[1]~135_combout\ : std_logic;
SIGNAL \DIN[2]~input_o\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[2]~59_combout\ : std_logic;
SIGNAL \REG_1|DATA[2]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[2]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[2]~60_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[2]~61_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[2]~62_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[2]~63_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[2]~136_combout\ : std_logic;
SIGNAL \DIN[3]~input_o\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[3]~64_combout\ : std_logic;
SIGNAL \REG_4|DATA[3]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[3]~65_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[3]~66_combout\ : std_logic;
SIGNAL \REG_2|DATA[3]~feeder_combout\ : std_logic;
SIGNAL \REG_1|DATA[3]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[3]~67_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[3]~68_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[3]~137_combout\ : std_logic;
SIGNAL \DIN[4]~input_o\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[4]~69_combout\ : std_logic;
SIGNAL \REG_1|DATA[4]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[4]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[4]~70_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[4]~71_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[4]~72_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[4]~73_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[4]~138_combout\ : std_logic;
SIGNAL \DIN[5]~input_o\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[5]~74_combout\ : std_logic;
SIGNAL \REG_2|DATA[5]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[5]~77_combout\ : std_logic;
SIGNAL \REG_4|DATA[5]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[5]~75_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[5]~76_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[5]~78_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[5]~139_combout\ : std_logic;
SIGNAL \DIN[6]~input_o\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[6]~79_combout\ : std_logic;
SIGNAL \REG_1|DATA[6]~feeder_combout\ : std_logic;
SIGNAL \REG_5|DATA[6]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[6]~80_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[6]~81_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[6]~82_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[6]~83_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[6]~140_combout\ : std_logic;
SIGNAL \DIN[7]~input_o\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[7]~84_combout\ : std_logic;
SIGNAL \REG_2|DATA[7]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[7]~87_combout\ : std_logic;
SIGNAL \REG_5|DATA[7]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[7]~85_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[7]~86_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[7]~88_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[7]~141_combout\ : std_logic;
SIGNAL \REG_1|DATA[8]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[8]~89_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[8]~142_combout\ : std_logic;
SIGNAL \DIN[8]~input_o\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[8]~93_combout\ : std_logic;
SIGNAL \REG_2|DATA[8]~feeder_combout\ : std_logic;
SIGNAL \REG_5|DATA[8]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[8]~90_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[8]~91_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[8]~92_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[8]~94_combout\ : std_logic;
SIGNAL \DIN[9]~input_o\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[9]~100_combout\ : std_logic;
SIGNAL \REG_5|DATA[9]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[9]~95_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[9]~96_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[9]~97_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~34_combout\ : std_logic;
SIGNAL \REG_1|DATA[9]~feeder_combout\ : std_logic;
SIGNAL \REG_3|DATA[9]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[9]~98_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[9]~99_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[9]~101_combout\ : std_logic;
SIGNAL \DIN[10]~input_o\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[10]~102_combout\ : std_logic;
SIGNAL \REG_1|DATA[10]~feeder_combout\ : std_logic;
SIGNAL \REG_2|DATA[10]~feeder_combout\ : std_logic;
SIGNAL \REG_5|DATA[10]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[10]~103_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[10]~104_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[10]~105_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[10]~106_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[10]~143_combout\ : std_logic;
SIGNAL \DIN[11]~input_o\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[11]~107_combout\ : std_logic;
SIGNAL \REG_2|DATA[11]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[11]~110_combout\ : std_logic;
SIGNAL \REG_5|DATA[11]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[11]~108_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[11]~109_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[11]~111_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[11]~144_combout\ : std_logic;
SIGNAL \DIN[12]~input_o\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[12]~112_combout\ : std_logic;
SIGNAL \REG_1|DATA[12]~feeder_combout\ : std_logic;
SIGNAL \REG_2|DATA[12]~feeder_combout\ : std_logic;
SIGNAL \REG_5|DATA[12]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[12]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[12]~113_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[12]~114_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[12]~115_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[12]~116_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[12]~145_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[13]~117_combout\ : std_logic;
SIGNAL \REG_1|DATA[13]~feeder_combout\ : std_logic;
SIGNAL \REG_2|DATA[13]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[13]~120_combout\ : std_logic;
SIGNAL \REG_4|DATA[13]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[13]~118_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[13]~119_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[13]~121_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[13]~146_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[14]~122_combout\ : std_logic;
SIGNAL \REG_1|DATA[14]~feeder_combout\ : std_logic;
SIGNAL \REG_2|DATA[14]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[14]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[14]~123_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[14]~124_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[14]~125_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[14]~126_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[14]~147_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[15]~127_combout\ : std_logic;
SIGNAL \REG_3|DATA[15]~feeder_combout\ : std_logic;
SIGNAL \REG_2|DATA[15]~feeder_combout\ : std_logic;
SIGNAL \REG_1|DATA[15]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[15]~130_combout\ : std_logic;
SIGNAL \REG_4|DATA[15]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[15]~128_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[15]~129_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[15]~131_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[15]~148_combout\ : std_logic;
SIGNAL \REG_0|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_1|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_2|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_3|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_4|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_5|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_6|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_7|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK <= CLOCK;
ww_ENABLE <= ENABLE;
ww_RESET <= RESET;
ww_DIN <= DIN;
RIN <= ww_RIN;
REG0 <= ww_REG0;
REG1 <= ww_REG1;
REG2 <= ww_REG2;
REG3 <= ww_REG3;
REG4 <= ww_REG4;
REG5 <= ww_REG5;
REG6 <= ww_REG6;
REG7 <= ww_REG7;
DONE <= ww_DONE;
STEP <= ww_STEP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y26_N2
\RIN[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROL_UNIT|R_IN~18_combout\,
	devoe => ww_devoe,
	o => \RIN[0]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\RIN[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROL_UNIT|R_IN~19_combout\,
	devoe => ww_devoe,
	o => \RIN[1]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\RIN[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROL_UNIT|R_IN~20_combout\,
	devoe => ww_devoe,
	o => \RIN[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\RIN[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROL_UNIT|R_IN~21_combout\,
	devoe => ww_devoe,
	o => \RIN[3]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\RIN[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROL_UNIT|R_IN~22_combout\,
	devoe => ww_devoe,
	o => \RIN[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\RIN[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROL_UNIT|R_IN~17_combout\,
	devoe => ww_devoe,
	o => \RIN[5]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\RIN[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROL_UNIT|R_IN~23_combout\,
	devoe => ww_devoe,
	o => \RIN[6]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\RIN[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROL_UNIT|R_IN~24_combout\,
	devoe => ww_devoe,
	o => \RIN[7]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\REG0[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(0),
	devoe => ww_devoe,
	o => \REG0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\REG0[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(1),
	devoe => ww_devoe,
	o => \REG0[1]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\REG0[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(2),
	devoe => ww_devoe,
	o => \REG0[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\REG0[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(3),
	devoe => ww_devoe,
	o => \REG0[3]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\REG0[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(4),
	devoe => ww_devoe,
	o => \REG0[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\REG0[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(5),
	devoe => ww_devoe,
	o => \REG0[5]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\REG0[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(6),
	devoe => ww_devoe,
	o => \REG0[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\REG0[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(7),
	devoe => ww_devoe,
	o => \REG0[7]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\REG0[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(8),
	devoe => ww_devoe,
	o => \REG0[8]~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\REG0[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(9),
	devoe => ww_devoe,
	o => \REG0[9]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\REG0[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(10),
	devoe => ww_devoe,
	o => \REG0[10]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\REG0[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(11),
	devoe => ww_devoe,
	o => \REG0[11]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\REG0[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(12),
	devoe => ww_devoe,
	o => \REG0[12]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\REG0[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(13),
	devoe => ww_devoe,
	o => \REG0[13]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\REG0[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(14),
	devoe => ww_devoe,
	o => \REG0[14]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\REG0[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_0|DATA\(15),
	devoe => ww_devoe,
	o => \REG0[15]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\REG1[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(0),
	devoe => ww_devoe,
	o => \REG1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\REG1[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(1),
	devoe => ww_devoe,
	o => \REG1[1]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\REG1[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(2),
	devoe => ww_devoe,
	o => \REG1[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\REG1[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(3),
	devoe => ww_devoe,
	o => \REG1[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\REG1[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(4),
	devoe => ww_devoe,
	o => \REG1[4]~output_o\);

-- Location: IOOBUF_X41_Y25_N23
\REG1[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(5),
	devoe => ww_devoe,
	o => \REG1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\REG1[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(6),
	devoe => ww_devoe,
	o => \REG1[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\REG1[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(7),
	devoe => ww_devoe,
	o => \REG1[7]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\REG1[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(8),
	devoe => ww_devoe,
	o => \REG1[8]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\REG1[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(9),
	devoe => ww_devoe,
	o => \REG1[9]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\REG1[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(10),
	devoe => ww_devoe,
	o => \REG1[10]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\REG1[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(11),
	devoe => ww_devoe,
	o => \REG1[11]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\REG1[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(12),
	devoe => ww_devoe,
	o => \REG1[12]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\REG1[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(13),
	devoe => ww_devoe,
	o => \REG1[13]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\REG1[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(14),
	devoe => ww_devoe,
	o => \REG1[14]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\REG1[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_1|DATA\(15),
	devoe => ww_devoe,
	o => \REG1[15]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\REG2[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(0),
	devoe => ww_devoe,
	o => \REG2[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\REG2[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(1),
	devoe => ww_devoe,
	o => \REG2[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\REG2[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(2),
	devoe => ww_devoe,
	o => \REG2[2]~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\REG2[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(3),
	devoe => ww_devoe,
	o => \REG2[3]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\REG2[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(4),
	devoe => ww_devoe,
	o => \REG2[4]~output_o\);

-- Location: IOOBUF_X11_Y29_N23
\REG2[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(5),
	devoe => ww_devoe,
	o => \REG2[5]~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\REG2[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(6),
	devoe => ww_devoe,
	o => \REG2[6]~output_o\);

-- Location: IOOBUF_X35_Y29_N16
\REG2[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(7),
	devoe => ww_devoe,
	o => \REG2[7]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\REG2[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(8),
	devoe => ww_devoe,
	o => \REG2[8]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\REG2[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(9),
	devoe => ww_devoe,
	o => \REG2[9]~output_o\);

-- Location: IOOBUF_X5_Y29_N9
\REG2[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(10),
	devoe => ww_devoe,
	o => \REG2[10]~output_o\);

-- Location: IOOBUF_X11_Y29_N30
\REG2[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(11),
	devoe => ww_devoe,
	o => \REG2[11]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\REG2[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(12),
	devoe => ww_devoe,
	o => \REG2[12]~output_o\);

-- Location: IOOBUF_X1_Y29_N16
\REG2[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(13),
	devoe => ww_devoe,
	o => \REG2[13]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\REG2[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(14),
	devoe => ww_devoe,
	o => \REG2[14]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\REG2[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_2|DATA\(15),
	devoe => ww_devoe,
	o => \REG2[15]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\REG3[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(0),
	devoe => ww_devoe,
	o => \REG3[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\REG3[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(1),
	devoe => ww_devoe,
	o => \REG3[1]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\REG3[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(2),
	devoe => ww_devoe,
	o => \REG3[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\REG3[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(3),
	devoe => ww_devoe,
	o => \REG3[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\REG3[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(4),
	devoe => ww_devoe,
	o => \REG3[4]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\REG3[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(5),
	devoe => ww_devoe,
	o => \REG3[5]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\REG3[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(6),
	devoe => ww_devoe,
	o => \REG3[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\REG3[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(7),
	devoe => ww_devoe,
	o => \REG3[7]~output_o\);

-- Location: IOOBUF_X1_Y29_N23
\REG3[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(8),
	devoe => ww_devoe,
	o => \REG3[8]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\REG3[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(9),
	devoe => ww_devoe,
	o => \REG3[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\REG3[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(10),
	devoe => ww_devoe,
	o => \REG3[10]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\REG3[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(11),
	devoe => ww_devoe,
	o => \REG3[11]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\REG3[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(12),
	devoe => ww_devoe,
	o => \REG3[12]~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\REG3[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(13),
	devoe => ww_devoe,
	o => \REG3[13]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\REG3[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(14),
	devoe => ww_devoe,
	o => \REG3[14]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\REG3[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_3|DATA\(15),
	devoe => ww_devoe,
	o => \REG3[15]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\REG4[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(0),
	devoe => ww_devoe,
	o => \REG4[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\REG4[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(1),
	devoe => ww_devoe,
	o => \REG4[1]~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\REG4[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(2),
	devoe => ww_devoe,
	o => \REG4[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\REG4[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(3),
	devoe => ww_devoe,
	o => \REG4[3]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\REG4[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(4),
	devoe => ww_devoe,
	o => \REG4[4]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\REG4[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(5),
	devoe => ww_devoe,
	o => \REG4[5]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\REG4[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(6),
	devoe => ww_devoe,
	o => \REG4[6]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\REG4[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(7),
	devoe => ww_devoe,
	o => \REG4[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\REG4[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(8),
	devoe => ww_devoe,
	o => \REG4[8]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\REG4[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(9),
	devoe => ww_devoe,
	o => \REG4[9]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\REG4[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(10),
	devoe => ww_devoe,
	o => \REG4[10]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\REG4[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(11),
	devoe => ww_devoe,
	o => \REG4[11]~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\REG4[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(12),
	devoe => ww_devoe,
	o => \REG4[12]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\REG4[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(13),
	devoe => ww_devoe,
	o => \REG4[13]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\REG4[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(14),
	devoe => ww_devoe,
	o => \REG4[14]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\REG4[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_4|DATA\(15),
	devoe => ww_devoe,
	o => \REG4[15]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\REG5[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(0),
	devoe => ww_devoe,
	o => \REG5[0]~output_o\);

-- Location: IOOBUF_X9_Y29_N16
\REG5[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(1),
	devoe => ww_devoe,
	o => \REG5[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\REG5[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(2),
	devoe => ww_devoe,
	o => \REG5[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\REG5[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(3),
	devoe => ww_devoe,
	o => \REG5[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\REG5[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(4),
	devoe => ww_devoe,
	o => \REG5[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\REG5[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(5),
	devoe => ww_devoe,
	o => \REG5[5]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\REG5[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(6),
	devoe => ww_devoe,
	o => \REG5[6]~output_o\);

-- Location: IOOBUF_X3_Y29_N30
\REG5[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(7),
	devoe => ww_devoe,
	o => \REG5[7]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\REG5[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(8),
	devoe => ww_devoe,
	o => \REG5[8]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\REG5[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(9),
	devoe => ww_devoe,
	o => \REG5[9]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\REG5[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(10),
	devoe => ww_devoe,
	o => \REG5[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\REG5[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(11),
	devoe => ww_devoe,
	o => \REG5[11]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\REG5[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(12),
	devoe => ww_devoe,
	o => \REG5[12]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\REG5[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(13),
	devoe => ww_devoe,
	o => \REG5[13]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\REG5[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(14),
	devoe => ww_devoe,
	o => \REG5[14]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\REG5[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_5|DATA\(15),
	devoe => ww_devoe,
	o => \REG5[15]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\REG6[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(0),
	devoe => ww_devoe,
	o => \REG6[0]~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\REG6[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(1),
	devoe => ww_devoe,
	o => \REG6[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\REG6[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(2),
	devoe => ww_devoe,
	o => \REG6[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\REG6[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(3),
	devoe => ww_devoe,
	o => \REG6[3]~output_o\);

-- Location: IOOBUF_X9_Y29_N30
\REG6[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(4),
	devoe => ww_devoe,
	o => \REG6[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\REG6[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(5),
	devoe => ww_devoe,
	o => \REG6[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\REG6[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(6),
	devoe => ww_devoe,
	o => \REG6[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\REG6[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(7),
	devoe => ww_devoe,
	o => \REG6[7]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\REG6[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(8),
	devoe => ww_devoe,
	o => \REG6[8]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\REG6[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(9),
	devoe => ww_devoe,
	o => \REG6[9]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\REG6[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(10),
	devoe => ww_devoe,
	o => \REG6[10]~output_o\);

-- Location: IOOBUF_X1_Y29_N30
\REG6[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(11),
	devoe => ww_devoe,
	o => \REG6[11]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\REG6[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(12),
	devoe => ww_devoe,
	o => \REG6[12]~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\REG6[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(13),
	devoe => ww_devoe,
	o => \REG6[13]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\REG6[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(14),
	devoe => ww_devoe,
	o => \REG6[14]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\REG6[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_6|DATA\(15),
	devoe => ww_devoe,
	o => \REG6[15]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\REG7[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(0),
	devoe => ww_devoe,
	o => \REG7[0]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\REG7[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(1),
	devoe => ww_devoe,
	o => \REG7[1]~output_o\);

-- Location: IOOBUF_X41_Y25_N16
\REG7[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(2),
	devoe => ww_devoe,
	o => \REG7[2]~output_o\);

-- Location: IOOBUF_X35_Y29_N9
\REG7[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(3),
	devoe => ww_devoe,
	o => \REG7[3]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\REG7[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(4),
	devoe => ww_devoe,
	o => \REG7[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N16
\REG7[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(5),
	devoe => ww_devoe,
	o => \REG7[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\REG7[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(6),
	devoe => ww_devoe,
	o => \REG7[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\REG7[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(7),
	devoe => ww_devoe,
	o => \REG7[7]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\REG7[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(8),
	devoe => ww_devoe,
	o => \REG7[8]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\REG7[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(9),
	devoe => ww_devoe,
	o => \REG7[9]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\REG7[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(10),
	devoe => ww_devoe,
	o => \REG7[10]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\REG7[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(11),
	devoe => ww_devoe,
	o => \REG7[11]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\REG7[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(12),
	devoe => ww_devoe,
	o => \REG7[12]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\REG7[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(13),
	devoe => ww_devoe,
	o => \REG7[13]~output_o\);

-- Location: IOOBUF_X5_Y29_N16
\REG7[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(14),
	devoe => ww_devoe,
	o => \REG7[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\REG7[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_7|DATA\(15),
	devoe => ww_devoe,
	o => \REG7[15]~output_o\);

-- Location: IOOBUF_X41_Y23_N16
\DONE~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DONE~output_o\);

-- Location: IOOBUF_X39_Y29_N9
\STEP[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STEP[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\STEP[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \STEP[1]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\DIN[16]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(16),
	o => \DIN[16]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\DIN[20]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(20),
	o => \DIN[20]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\DIN[22]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(22),
	o => \DIN[22]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\DIN[21]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(21),
	o => \DIN[21]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\DIN[19]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(19),
	o => \DIN[19]~input_o\);

-- Location: LCCOMB_X7_Y24_N28
\CONTROL_UNIT|R_IN~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN~15_combout\ = (!\DIN[22]~input_o\ & (!\DIN[21]~input_o\ & (\DIN[20]~input_o\ $ (\DIN[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[20]~input_o\,
	datab => \DIN[22]~input_o\,
	datac => \DIN[21]~input_o\,
	datad => \DIN[19]~input_o\,
	combout => \CONTROL_UNIT|R_IN~15_combout\);

-- Location: IOIBUF_X0_Y24_N1
\DIN[18]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(18),
	o => \DIN[18]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\DIN[17]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(17),
	o => \DIN[17]~input_o\);

-- Location: LCCOMB_X8_Y24_N8
\CONTROL_UNIT|R_IN~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN~18_combout\ = (!\DIN[16]~input_o\ & (\CONTROL_UNIT|R_IN~15_combout\ & (!\DIN[18]~input_o\ & !\DIN[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[16]~input_o\,
	datab => \CONTROL_UNIT|R_IN~15_combout\,
	datac => \DIN[18]~input_o\,
	datad => \DIN[17]~input_o\,
	combout => \CONTROL_UNIT|R_IN~18_combout\);

-- Location: LCCOMB_X8_Y24_N10
\CONTROL_UNIT|R_IN~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN~19_combout\ = (\DIN[16]~input_o\ & (\CONTROL_UNIT|R_IN~15_combout\ & (!\DIN[18]~input_o\ & !\DIN[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[16]~input_o\,
	datab => \CONTROL_UNIT|R_IN~15_combout\,
	datac => \DIN[18]~input_o\,
	datad => \DIN[17]~input_o\,
	combout => \CONTROL_UNIT|R_IN~19_combout\);

-- Location: LCCOMB_X8_Y24_N20
\CONTROL_UNIT|R_IN~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN~20_combout\ = (!\DIN[16]~input_o\ & (\CONTROL_UNIT|R_IN~15_combout\ & (!\DIN[18]~input_o\ & \DIN[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[16]~input_o\,
	datab => \CONTROL_UNIT|R_IN~15_combout\,
	datac => \DIN[18]~input_o\,
	datad => \DIN[17]~input_o\,
	combout => \CONTROL_UNIT|R_IN~20_combout\);

-- Location: LCCOMB_X8_Y24_N26
\CONTROL_UNIT|R_IN~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN~21_combout\ = (\DIN[16]~input_o\ & (\CONTROL_UNIT|R_IN~15_combout\ & (!\DIN[18]~input_o\ & \DIN[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[16]~input_o\,
	datab => \CONTROL_UNIT|R_IN~15_combout\,
	datac => \DIN[18]~input_o\,
	datad => \DIN[17]~input_o\,
	combout => \CONTROL_UNIT|R_IN~21_combout\);

-- Location: LCCOMB_X8_Y24_N12
\CONTROL_UNIT|R_IN~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN~22_combout\ = (!\DIN[16]~input_o\ & (\CONTROL_UNIT|R_IN~15_combout\ & (\DIN[18]~input_o\ & !\DIN[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[16]~input_o\,
	datab => \CONTROL_UNIT|R_IN~15_combout\,
	datac => \DIN[18]~input_o\,
	datad => \DIN[17]~input_o\,
	combout => \CONTROL_UNIT|R_IN~22_combout\);

-- Location: LCCOMB_X8_Y24_N30
\CONTROL_UNIT|R_IN~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN~17_combout\ = (\DIN[16]~input_o\ & (\CONTROL_UNIT|R_IN~15_combout\ & (\DIN[18]~input_o\ & !\DIN[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[16]~input_o\,
	datab => \CONTROL_UNIT|R_IN~15_combout\,
	datac => \DIN[18]~input_o\,
	datad => \DIN[17]~input_o\,
	combout => \CONTROL_UNIT|R_IN~17_combout\);

-- Location: LCCOMB_X8_Y24_N14
\CONTROL_UNIT|R_IN~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN~23_combout\ = (!\DIN[16]~input_o\ & (\CONTROL_UNIT|R_IN~15_combout\ & (\DIN[18]~input_o\ & \DIN[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[16]~input_o\,
	datab => \CONTROL_UNIT|R_IN~15_combout\,
	datac => \DIN[18]~input_o\,
	datad => \DIN[17]~input_o\,
	combout => \CONTROL_UNIT|R_IN~23_combout\);

-- Location: LCCOMB_X8_Y24_N28
\CONTROL_UNIT|R_IN~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN~24_combout\ = (\DIN[16]~input_o\ & (\CONTROL_UNIT|R_IN~15_combout\ & (\DIN[18]~input_o\ & \DIN[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[16]~input_o\,
	datab => \CONTROL_UNIT|R_IN~15_combout\,
	datac => \DIN[18]~input_o\,
	datad => \DIN[17]~input_o\,
	combout => \CONTROL_UNIT|R_IN~24_combout\);

-- Location: IOIBUF_X0_Y14_N1
\CLOCK~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G4
\CLOCK~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: LCCOMB_X7_Y24_N16
\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ = (\DIN[20]~input_o\ & (!\DIN[22]~input_o\ & (!\DIN[21]~input_o\ & !\DIN[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[20]~input_o\,
	datab => \DIN[22]~input_o\,
	datac => \DIN[21]~input_o\,
	datad => \DIN[19]~input_o\,
	combout => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\);

-- Location: LCCOMB_X6_Y24_N28
\CONTROL_UNIT|R_IN~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN~14_combout\ = (!\DIN[18]~input_o\ & !\DIN[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIN[18]~input_o\,
	datad => \DIN[16]~input_o\,
	combout => \CONTROL_UNIT|R_IN~14_combout\);

-- Location: LCCOMB_X7_Y24_N6
\CONTROL_UNIT|R_OUT~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_OUT~1_combout\ = (!\DIN[22]~input_o\ & ((\DIN[20]~input_o\ & (!\DIN[21]~input_o\ & \DIN[19]~input_o\)) # (!\DIN[20]~input_o\ & (\DIN[21]~input_o\ & !\DIN[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[20]~input_o\,
	datab => \DIN[22]~input_o\,
	datac => \DIN[21]~input_o\,
	datad => \DIN[19]~input_o\,
	combout => \CONTROL_UNIT|R_OUT~1_combout\);

-- Location: IOIBUF_X0_Y11_N1
\DIN[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(14),
	o => \DIN[14]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\DIN[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(13),
	o => \DIN[13]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\DIN[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(15),
	o => \DIN[15]~input_o\);

-- Location: LCCOMB_X7_Y24_N22
\CONTROL_UNIT|COMMAND_DECODER|Equal13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|COMMAND_DECODER|Equal13~0_combout\ = (!\DIN[20]~input_o\ & (!\DIN[22]~input_o\ & (!\DIN[21]~input_o\ & \DIN[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[20]~input_o\,
	datab => \DIN[22]~input_o\,
	datac => \DIN[21]~input_o\,
	datad => \DIN[19]~input_o\,
	combout => \CONTROL_UNIT|COMMAND_DECODER|Equal13~0_combout\);

-- Location: LCCOMB_X7_Y24_N4
\CONTROL_UNIT|R_OUT~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_OUT~0_combout\ = (!\DIN[14]~input_o\ & (!\DIN[13]~input_o\ & (!\DIN[15]~input_o\ & \CONTROL_UNIT|COMMAND_DECODER|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[14]~input_o\,
	datab => \DIN[13]~input_o\,
	datac => \DIN[15]~input_o\,
	datad => \CONTROL_UNIT|COMMAND_DECODER|Equal13~0_combout\,
	combout => \CONTROL_UNIT|R_OUT~0_combout\);

-- Location: LCCOMB_X6_Y24_N0
\CONTROL_UNIT|R_OUT~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_OUT~2_combout\ = (\CONTROL_UNIT|R_OUT~0_combout\) # ((!\DIN[17]~input_o\ & (\CONTROL_UNIT|R_IN~14_combout\ & \CONTROL_UNIT|R_OUT~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[17]~input_o\,
	datab => \CONTROL_UNIT|R_IN~14_combout\,
	datac => \CONTROL_UNIT|R_OUT~1_combout\,
	datad => \CONTROL_UNIT|R_OUT~0_combout\,
	combout => \CONTROL_UNIT|R_OUT~2_combout\);

-- Location: IOIBUF_X21_Y29_N8
\DIN[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(0),
	o => \DIN[0]~input_o\);

-- Location: LCCOMB_X12_Y25_N8
\BUS_SELECTOR|BUS_OUT[0]~35\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~35_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\DIN[0]~input_o\)))) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\CONTROL_UNIT|R_OUT~2_combout\ & (\REG_0|DATA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datab => \CONTROL_UNIT|R_OUT~2_combout\,
	datac => \REG_0|DATA\(0),
	datad => \DIN[0]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~35_combout\);

-- Location: LCCOMB_X8_Y24_N18
\BUS_SELECTOR|BUS_OUT[0]~132\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~132_combout\ = (\DIN[16]~input_o\ & (\CONTROL_UNIT|R_OUT~1_combout\ & (!\DIN[18]~input_o\ & \DIN[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[16]~input_o\,
	datab => \CONTROL_UNIT|R_OUT~1_combout\,
	datac => \DIN[18]~input_o\,
	datad => \DIN[17]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~132_combout\);

-- Location: LCCOMB_X7_Y24_N18
\BUS_SELECTOR|BUS_OUT[0]~37\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~37_combout\ = ((\DIN[13]~input_o\) # ((\DIN[15]~input_o\) # (!\CONTROL_UNIT|COMMAND_DECODER|Equal13~0_combout\))) # (!\DIN[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[14]~input_o\,
	datab => \DIN[13]~input_o\,
	datac => \DIN[15]~input_o\,
	datad => \CONTROL_UNIT|COMMAND_DECODER|Equal13~0_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~37_combout\);

-- Location: LCCOMB_X8_Y24_N4
\BUS_SELECTOR|BUS_OUT[0]~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~36_combout\ = (\DIN[16]~input_o\) # (((\DIN[18]~input_o\) # (!\DIN[17]~input_o\)) # (!\CONTROL_UNIT|R_OUT~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[16]~input_o\,
	datab => \CONTROL_UNIT|R_OUT~1_combout\,
	datac => \DIN[18]~input_o\,
	datad => \DIN[17]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~36_combout\);

-- Location: LCCOMB_X7_Y24_N8
\CONTROL_UNIT|R_OUT~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_OUT~3_combout\ = (!\DIN[14]~input_o\ & (\DIN[13]~input_o\ & (!\DIN[15]~input_o\ & \CONTROL_UNIT|COMMAND_DECODER|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[14]~input_o\,
	datab => \DIN[13]~input_o\,
	datac => \DIN[15]~input_o\,
	datad => \CONTROL_UNIT|COMMAND_DECODER|Equal13~0_combout\,
	combout => \CONTROL_UNIT|R_OUT~3_combout\);

-- Location: LCCOMB_X8_Y24_N16
\CONTROL_UNIT|R_IN~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN~16_combout\ = (!\DIN[18]~input_o\ & \DIN[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[18]~input_o\,
	datad => \DIN[16]~input_o\,
	combout => \CONTROL_UNIT|R_IN~16_combout\);

-- Location: LCCOMB_X8_Y24_N22
\CONTROL_UNIT|R_OUT~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_OUT~4_combout\ = (\CONTROL_UNIT|R_OUT~3_combout\) # ((!\DIN[17]~input_o\ & (\CONTROL_UNIT|R_OUT~1_combout\ & \CONTROL_UNIT|R_IN~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|R_OUT~3_combout\,
	datab => \DIN[17]~input_o\,
	datac => \CONTROL_UNIT|R_OUT~1_combout\,
	datad => \CONTROL_UNIT|R_IN~16_combout\,
	combout => \CONTROL_UNIT|R_OUT~4_combout\);

-- Location: LCCOMB_X7_Y25_N8
\BUS_SELECTOR|BUS_OUT[0]~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~38_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~37_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~36_combout\ & !\CONTROL_UNIT|R_OUT~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~37_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~36_combout\,
	datad => \CONTROL_UNIT|R_OUT~4_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~38_combout\);

-- Location: LCCOMB_X7_Y24_N20
\BUS_SELECTOR|BUS_OUT[0]~39\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~39_combout\ = (\DIN[14]~input_o\ & (\DIN[13]~input_o\ & (!\DIN[15]~input_o\ & \CONTROL_UNIT|COMMAND_DECODER|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[14]~input_o\,
	datab => \DIN[13]~input_o\,
	datac => \DIN[15]~input_o\,
	datad => \CONTROL_UNIT|COMMAND_DECODER|Equal13~0_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~39_combout\);

-- Location: LCCOMB_X5_Y24_N4
\BUS_SELECTOR|BUS_OUT[0]~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~40_combout\ = (\CONTROL_UNIT|R_OUT~4_combout\) # ((\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~132_combout\) # (\BUS_SELECTOR|BUS_OUT[0]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~132_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~39_combout\,
	datad => \CONTROL_UNIT|R_OUT~4_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~40_combout\);

-- Location: LCCOMB_X11_Y25_N0
\REG_1|DATA[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[0]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[0]~134_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[0]~134_combout\,
	combout => \REG_1|DATA[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y14_N8
\RESET~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G2
\RESET~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X11_Y25_N1
\REG_1|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[0]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(0));

-- Location: FF_X11_Y25_N25
\REG_3|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[0]~134_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(0));

-- Location: FF_X10_Y25_N15
\REG_2|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[0]~134_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(0));

-- Location: LCCOMB_X7_Y24_N26
\BUS_SELECTOR|BUS_OUT[0]~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~48_combout\ = (\DIN[14]~input_o\ & (\DIN[13]~input_o\ & (\DIN[15]~input_o\ & \CONTROL_UNIT|COMMAND_DECODER|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[14]~input_o\,
	datab => \DIN[13]~input_o\,
	datac => \DIN[15]~input_o\,
	datad => \CONTROL_UNIT|COMMAND_DECODER|Equal13~0_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~48_combout\);

-- Location: LCCOMB_X7_Y24_N30
\BUS_SELECTOR|BUS_OUT[0]~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~46_combout\ = (!\DIN[20]~input_o\ & (!\DIN[13]~input_o\ & (!\DIN[21]~input_o\ & \DIN[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[20]~input_o\,
	datab => \DIN[13]~input_o\,
	datac => \DIN[21]~input_o\,
	datad => \DIN[19]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~46_combout\);

-- Location: LCCOMB_X6_Y24_N14
\CONTROL_UNIT|X_DECODER|Equal6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|X_DECODER|Equal6~0_combout\ = (\DIN[18]~input_o\ & !\DIN[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIN[18]~input_o\,
	datad => \DIN[16]~input_o\,
	combout => \CONTROL_UNIT|X_DECODER|Equal6~0_combout\);

-- Location: LCCOMB_X7_Y24_N0
\BUS_SELECTOR|BUS_OUT[0]~45\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~45_combout\ = (\CONTROL_UNIT|X_DECODER|Equal6~0_combout\ & ((\DIN[19]~input_o\ & (!\DIN[21]~input_o\ & \DIN[20]~input_o\)) # (!\DIN[19]~input_o\ & (\DIN[21]~input_o\ & !\DIN[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[19]~input_o\,
	datab => \DIN[21]~input_o\,
	datac => \DIN[20]~input_o\,
	datad => \CONTROL_UNIT|X_DECODER|Equal6~0_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~45_combout\);

-- Location: LCCOMB_X7_Y24_N24
\BUS_SELECTOR|BUS_OUT[0]~47\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~47_combout\ = (!\DIN[22]~input_o\ & ((\BUS_SELECTOR|BUS_OUT[0]~45_combout\) # ((\BUS_SELECTOR|BUS_OUT[0]~46_combout\ & \DIN[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~46_combout\,
	datab => \DIN[22]~input_o\,
	datac => \DIN[15]~input_o\,
	datad => \BUS_SELECTOR|BUS_OUT[0]~45_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~47_combout\);

-- Location: LCCOMB_X6_Y24_N30
\BUS_SELECTOR|BUS_OUT[0]~133\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~133_combout\ = (\DIN[17]~input_o\ & (\CONTROL_UNIT|R_OUT~1_combout\ & (\DIN[18]~input_o\ & \DIN[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[17]~input_o\,
	datab => \CONTROL_UNIT|R_OUT~1_combout\,
	datac => \DIN[18]~input_o\,
	datad => \DIN[16]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~133_combout\);

-- Location: LCCOMB_X7_Y24_N10
\BUS_SELECTOR|BUS_OUT[0]~43\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~43_combout\ = (\DIN[22]~input_o\) # ((\DIN[21]~input_o\ & ((\DIN[20]~input_o\) # (\DIN[19]~input_o\))) # (!\DIN[21]~input_o\ & ((!\DIN[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[20]~input_o\,
	datab => \DIN[22]~input_o\,
	datac => \DIN[21]~input_o\,
	datad => \DIN[19]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~43_combout\);

-- Location: LCCOMB_X7_Y24_N12
\BUS_SELECTOR|BUS_OUT[0]~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~42_combout\ = (\DIN[21]~input_o\ & (((\DIN[17]~input_o\)) # (!\DIN[18]~input_o\))) # (!\DIN[21]~input_o\ & (\DIN[20]~input_o\ & ((\DIN[17]~input_o\) # (!\DIN[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[21]~input_o\,
	datab => \DIN[18]~input_o\,
	datac => \DIN[20]~input_o\,
	datad => \DIN[17]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~42_combout\);

-- Location: LCCOMB_X7_Y24_N2
\BUS_SELECTOR|BUS_OUT[0]~41\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~41_combout\ = (!\DIN[20]~input_o\ & (!\DIN[21]~input_o\ & ((\DIN[14]~input_o\) # (!\DIN[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[20]~input_o\,
	datab => \DIN[14]~input_o\,
	datac => \DIN[15]~input_o\,
	datad => \DIN[21]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~41_combout\);

-- Location: LCCOMB_X7_Y25_N18
\BUS_SELECTOR|BUS_OUT[0]~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~44_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~43_combout\) # ((\BUS_SELECTOR|BUS_OUT[0]~42_combout\) # (\BUS_SELECTOR|BUS_OUT[0]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~43_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~42_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[0]~41_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~44_combout\);

-- Location: LCCOMB_X4_Y25_N20
\BUS_SELECTOR|BUS_OUT[0]~49\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~49_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~48_combout\) # ((\BUS_SELECTOR|BUS_OUT[0]~47_combout\) # (\BUS_SELECTOR|BUS_OUT[0]~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~48_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~133_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~49_combout\);

-- Location: FF_X12_Y25_N13
\REG_7|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[0]~134_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(0));

-- Location: FF_X9_Y25_N23
\REG_6|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[0]~134_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(0));

-- Location: FF_X9_Y25_N25
\REG_5|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[0]~134_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(0));

-- Location: LCCOMB_X8_Y25_N24
\REG_4|DATA[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[0]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[0]~134_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[0]~134_combout\,
	combout => \REG_4|DATA[0]~feeder_combout\);

-- Location: FF_X8_Y25_N25
\REG_4|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[0]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(0));

-- Location: LCCOMB_X9_Y25_N24
\BUS_SELECTOR|BUS_OUT[0]~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~50_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~47_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\REG_4|DATA\(0)))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (\REG_5|DATA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datac => \REG_5|DATA\(0),
	datad => \REG_4|DATA\(0),
	combout => \BUS_SELECTOR|BUS_OUT[0]~50_combout\);

-- Location: LCCOMB_X9_Y25_N22
\BUS_SELECTOR|BUS_OUT[0]~51\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~51_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~50_combout\ & ((\REG_6|DATA\(0)))) # (!\BUS_SELECTOR|BUS_OUT[0]~50_combout\ & (\REG_7|DATA\(0))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[0]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datab => \REG_7|DATA\(0),
	datac => \REG_6|DATA\(0),
	datad => \BUS_SELECTOR|BUS_OUT[0]~50_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~51_combout\);

-- Location: LCCOMB_X10_Y25_N14
\BUS_SELECTOR|BUS_OUT[0]~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~52_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~40_combout\) # ((\BUS_SELECTOR|BUS_OUT[0]~51_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & 
-- (\REG_2|DATA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \REG_2|DATA\(0),
	datad => \BUS_SELECTOR|BUS_OUT[0]~51_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~52_combout\);

-- Location: LCCOMB_X11_Y25_N24
\BUS_SELECTOR|BUS_OUT[0]~53\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~53_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~52_combout\ & ((\REG_3|DATA\(0)))) # (!\BUS_SELECTOR|BUS_OUT[0]~52_combout\ & (\REG_1|DATA\(0))))) # (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[0]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datab => \REG_1|DATA\(0),
	datac => \REG_3|DATA\(0),
	datad => \BUS_SELECTOR|BUS_OUT[0]~52_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~53_combout\);

-- Location: LCCOMB_X12_Y25_N12
\BUS_SELECTOR|BUS_OUT[0]~134\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~134_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~35_combout\) # ((!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (!\CONTROL_UNIT|R_OUT~2_combout\ & \BUS_SELECTOR|BUS_OUT[0]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~35_combout\,
	datac => \CONTROL_UNIT|R_OUT~2_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[0]~53_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~134_combout\);

-- Location: FF_X12_Y25_N9
\REG_0|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[0]~134_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(0));

-- Location: IOIBUF_X23_Y29_N8
\DIN[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(1),
	o => \DIN[1]~input_o\);

-- Location: LCCOMB_X12_Y25_N14
\BUS_SELECTOR|BUS_OUT[1]~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[1]~54_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\DIN[1]~input_o\)) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\CONTROL_UNIT|R_OUT~2_combout\ & \REG_0|DATA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[1]~input_o\,
	datab => \CONTROL_UNIT|R_OUT~2_combout\,
	datac => \REG_0|DATA\(1),
	datad => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[1]~54_combout\);

-- Location: FF_X11_Y25_N19
\REG_1|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[1]~135_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(1));

-- Location: LCCOMB_X10_Y25_N8
\REG_2|DATA[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_2|DATA[1]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[1]~135_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[1]~135_combout\,
	combout => \REG_2|DATA[1]~feeder_combout\);

-- Location: FF_X10_Y25_N9
\REG_2|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_2|DATA[1]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(1));

-- Location: LCCOMB_X11_Y25_N18
\BUS_SELECTOR|BUS_OUT[1]~57\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[1]~57_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~40_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & (\REG_1|DATA\(1))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & ((\REG_2|DATA\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \REG_1|DATA\(1),
	datad => \REG_2|DATA\(1),
	combout => \BUS_SELECTOR|BUS_OUT[1]~57_combout\);

-- Location: FF_X11_Y25_N11
\REG_3|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[1]~135_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(1));

-- Location: FF_X12_Y25_N7
\REG_7|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[1]~135_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(1));

-- Location: FF_X9_Y25_N13
\REG_6|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[1]~135_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(1));

-- Location: FF_X9_Y25_N19
\REG_5|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[1]~135_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(1));

-- Location: LCCOMB_X8_Y25_N2
\REG_4|DATA[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[1]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[1]~135_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[1]~135_combout\,
	combout => \REG_4|DATA[1]~feeder_combout\);

-- Location: FF_X8_Y25_N3
\REG_4|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[1]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(1));

-- Location: LCCOMB_X9_Y25_N18
\BUS_SELECTOR|BUS_OUT[1]~55\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[1]~55_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~47_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\REG_4|DATA\(1)))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (\REG_5|DATA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datac => \REG_5|DATA\(1),
	datad => \REG_4|DATA\(1),
	combout => \BUS_SELECTOR|BUS_OUT[1]~55_combout\);

-- Location: LCCOMB_X9_Y25_N12
\BUS_SELECTOR|BUS_OUT[1]~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[1]~56_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[1]~55_combout\ & ((\REG_6|DATA\(1)))) # (!\BUS_SELECTOR|BUS_OUT[1]~55_combout\ & (\REG_7|DATA\(1))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[1]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datab => \REG_7|DATA\(1),
	datac => \REG_6|DATA\(1),
	datad => \BUS_SELECTOR|BUS_OUT[1]~55_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[1]~56_combout\);

-- Location: LCCOMB_X11_Y25_N10
\BUS_SELECTOR|BUS_OUT[1]~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[1]~58_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[1]~57_combout\ & (\REG_3|DATA\(1))) # (!\BUS_SELECTOR|BUS_OUT[1]~57_combout\ & ((\BUS_SELECTOR|BUS_OUT[1]~56_combout\))))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (\BUS_SELECTOR|BUS_OUT[1]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[1]~57_combout\,
	datac => \REG_3|DATA\(1),
	datad => \BUS_SELECTOR|BUS_OUT[1]~56_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[1]~58_combout\);

-- Location: LCCOMB_X12_Y25_N6
\BUS_SELECTOR|BUS_OUT[1]~135\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[1]~135_combout\ = (\BUS_SELECTOR|BUS_OUT[1]~54_combout\) # ((!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (!\CONTROL_UNIT|R_OUT~2_combout\ & \BUS_SELECTOR|BUS_OUT[1]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datab => \CONTROL_UNIT|R_OUT~2_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[1]~54_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[1]~58_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[1]~135_combout\);

-- Location: FF_X12_Y25_N15
\REG_0|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[1]~135_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(1));

-- Location: IOIBUF_X21_Y29_N15
\DIN[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(2),
	o => \DIN[2]~input_o\);

-- Location: LCCOMB_X12_Y25_N4
\BUS_SELECTOR|BUS_OUT[2]~59\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[2]~59_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\DIN[2]~input_o\)) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\CONTROL_UNIT|R_OUT~2_combout\ & \REG_0|DATA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[2]~input_o\,
	datab => \CONTROL_UNIT|R_OUT~2_combout\,
	datac => \REG_0|DATA\(2),
	datad => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[2]~59_combout\);

-- Location: LCCOMB_X11_Y25_N12
\REG_1|DATA[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[2]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[2]~136_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[2]~136_combout\,
	combout => \REG_1|DATA[2]~feeder_combout\);

-- Location: FF_X11_Y25_N13
\REG_1|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[2]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(2));

-- Location: FF_X11_Y25_N21
\REG_3|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[2]~136_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(2));

-- Location: FF_X10_Y25_N3
\REG_2|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[2]~136_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(2));

-- Location: FF_X12_Y25_N21
\REG_7|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[2]~136_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(2));

-- Location: FF_X9_Y25_N31
\REG_6|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[2]~136_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(2));

-- Location: FF_X9_Y25_N29
\REG_5|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[2]~136_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(2));

-- Location: LCCOMB_X8_Y25_N20
\REG_4|DATA[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[2]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[2]~136_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[2]~136_combout\,
	combout => \REG_4|DATA[2]~feeder_combout\);

-- Location: FF_X8_Y25_N21
\REG_4|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[2]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(2));

-- Location: LCCOMB_X9_Y25_N28
\BUS_SELECTOR|BUS_OUT[2]~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[2]~60_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~47_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\REG_4|DATA\(2)))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (\REG_5|DATA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datac => \REG_5|DATA\(2),
	datad => \REG_4|DATA\(2),
	combout => \BUS_SELECTOR|BUS_OUT[2]~60_combout\);

-- Location: LCCOMB_X9_Y25_N30
\BUS_SELECTOR|BUS_OUT[2]~61\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[2]~61_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[2]~60_combout\ & ((\REG_6|DATA\(2)))) # (!\BUS_SELECTOR|BUS_OUT[2]~60_combout\ & (\REG_7|DATA\(2))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[2]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datab => \REG_7|DATA\(2),
	datac => \REG_6|DATA\(2),
	datad => \BUS_SELECTOR|BUS_OUT[2]~60_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[2]~61_combout\);

-- Location: LCCOMB_X10_Y25_N2
\BUS_SELECTOR|BUS_OUT[2]~62\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[2]~62_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~40_combout\) # ((\BUS_SELECTOR|BUS_OUT[2]~61_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & 
-- (\REG_2|DATA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \REG_2|DATA\(2),
	datad => \BUS_SELECTOR|BUS_OUT[2]~61_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[2]~62_combout\);

-- Location: LCCOMB_X11_Y25_N20
\BUS_SELECTOR|BUS_OUT[2]~63\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[2]~63_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & ((\BUS_SELECTOR|BUS_OUT[2]~62_combout\ & ((\REG_3|DATA\(2)))) # (!\BUS_SELECTOR|BUS_OUT[2]~62_combout\ & (\REG_1|DATA\(2))))) # (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[2]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_1|DATA\(2),
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \REG_3|DATA\(2),
	datad => \BUS_SELECTOR|BUS_OUT[2]~62_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[2]~63_combout\);

-- Location: LCCOMB_X12_Y25_N20
\BUS_SELECTOR|BUS_OUT[2]~136\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[2]~136_combout\ = (\BUS_SELECTOR|BUS_OUT[2]~59_combout\) # ((!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (!\CONTROL_UNIT|R_OUT~2_combout\ & \BUS_SELECTOR|BUS_OUT[2]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[2]~59_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datac => \CONTROL_UNIT|R_OUT~2_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[2]~63_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[2]~136_combout\);

-- Location: FF_X12_Y25_N5
\REG_0|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[2]~136_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(2));

-- Location: IOIBUF_X23_Y29_N1
\DIN[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(3),
	o => \DIN[3]~input_o\);

-- Location: LCCOMB_X12_Y25_N10
\BUS_SELECTOR|BUS_OUT[3]~64\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[3]~64_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\DIN[3]~input_o\)))) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\CONTROL_UNIT|R_OUT~2_combout\ & (\REG_0|DATA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datab => \CONTROL_UNIT|R_OUT~2_combout\,
	datac => \REG_0|DATA\(3),
	datad => \DIN[3]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[3]~64_combout\);

-- Location: FF_X12_Y25_N27
\REG_7|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[3]~137_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(3));

-- Location: FF_X9_Y25_N5
\REG_6|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[3]~137_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(3));

-- Location: FF_X9_Y25_N11
\REG_5|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[3]~137_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(3));

-- Location: LCCOMB_X8_Y25_N22
\REG_4|DATA[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[3]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[3]~137_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[3]~137_combout\,
	combout => \REG_4|DATA[3]~feeder_combout\);

-- Location: FF_X8_Y25_N23
\REG_4|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[3]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(3));

-- Location: LCCOMB_X9_Y25_N10
\BUS_SELECTOR|BUS_OUT[3]~65\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[3]~65_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~47_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\REG_4|DATA\(3)))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (\REG_5|DATA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datac => \REG_5|DATA\(3),
	datad => \REG_4|DATA\(3),
	combout => \BUS_SELECTOR|BUS_OUT[3]~65_combout\);

-- Location: LCCOMB_X9_Y25_N4
\BUS_SELECTOR|BUS_OUT[3]~66\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[3]~66_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[3]~65_combout\ & ((\REG_6|DATA\(3)))) # (!\BUS_SELECTOR|BUS_OUT[3]~65_combout\ & (\REG_7|DATA\(3))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[3]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datab => \REG_7|DATA\(3),
	datac => \REG_6|DATA\(3),
	datad => \BUS_SELECTOR|BUS_OUT[3]~65_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[3]~66_combout\);

-- Location: FF_X11_Y25_N15
\REG_3|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[3]~137_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(3));

-- Location: LCCOMB_X10_Y25_N4
\REG_2|DATA[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_2|DATA[3]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[3]~137_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[3]~137_combout\,
	combout => \REG_2|DATA[3]~feeder_combout\);

-- Location: FF_X10_Y25_N5
\REG_2|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_2|DATA[3]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(3));

-- Location: LCCOMB_X11_Y25_N26
\REG_1|DATA[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[3]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[3]~137_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[3]~137_combout\,
	combout => \REG_1|DATA[3]~feeder_combout\);

-- Location: FF_X11_Y25_N27
\REG_1|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[3]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(3));

-- Location: LCCOMB_X10_Y25_N6
\BUS_SELECTOR|BUS_OUT[3]~67\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[3]~67_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~40_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & ((\REG_1|DATA\(3)))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & (\REG_2|DATA\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \REG_2|DATA\(3),
	datad => \REG_1|DATA\(3),
	combout => \BUS_SELECTOR|BUS_OUT[3]~67_combout\);

-- Location: LCCOMB_X11_Y25_N14
\BUS_SELECTOR|BUS_OUT[3]~68\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[3]~68_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[3]~67_combout\ & ((\REG_3|DATA\(3)))) # (!\BUS_SELECTOR|BUS_OUT[3]~67_combout\ & (\BUS_SELECTOR|BUS_OUT[3]~66_combout\)))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (((\BUS_SELECTOR|BUS_OUT[3]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[3]~66_combout\,
	datac => \REG_3|DATA\(3),
	datad => \BUS_SELECTOR|BUS_OUT[3]~67_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[3]~68_combout\);

-- Location: LCCOMB_X12_Y25_N26
\BUS_SELECTOR|BUS_OUT[3]~137\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[3]~137_combout\ = (\BUS_SELECTOR|BUS_OUT[3]~64_combout\) # ((!\CONTROL_UNIT|R_OUT~2_combout\ & (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & \BUS_SELECTOR|BUS_OUT[3]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[3]~64_combout\,
	datab => \CONTROL_UNIT|R_OUT~2_combout\,
	datac => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[3]~68_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[3]~137_combout\);

-- Location: FF_X12_Y25_N11
\REG_0|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[3]~137_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(3));

-- Location: IOIBUF_X26_Y29_N8
\DIN[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(4),
	o => \DIN[4]~input_o\);

-- Location: LCCOMB_X12_Y25_N16
\BUS_SELECTOR|BUS_OUT[4]~69\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[4]~69_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\DIN[4]~input_o\)) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\REG_0|DATA\(4) & \CONTROL_UNIT|R_OUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datab => \DIN[4]~input_o\,
	datac => \REG_0|DATA\(4),
	datad => \CONTROL_UNIT|R_OUT~2_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[4]~69_combout\);

-- Location: LCCOMB_X11_Y25_N4
\REG_1|DATA[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[4]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[4]~138_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[4]~138_combout\,
	combout => \REG_1|DATA[4]~feeder_combout\);

-- Location: FF_X11_Y25_N5
\REG_1|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[4]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(4));

-- Location: FF_X11_Y25_N29
\REG_3|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[4]~138_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(4));

-- Location: FF_X10_Y25_N31
\REG_2|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[4]~138_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(4));

-- Location: FF_X12_Y25_N1
\REG_7|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[4]~138_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(4));

-- Location: FF_X9_Y25_N15
\REG_6|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[4]~138_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(4));

-- Location: FF_X9_Y25_N1
\REG_5|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[4]~138_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(4));

-- Location: LCCOMB_X8_Y25_N28
\REG_4|DATA[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[4]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[4]~138_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[4]~138_combout\,
	combout => \REG_4|DATA[4]~feeder_combout\);

-- Location: FF_X8_Y25_N29
\REG_4|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[4]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(4));

-- Location: LCCOMB_X9_Y25_N0
\BUS_SELECTOR|BUS_OUT[4]~70\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[4]~70_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~47_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\REG_4|DATA\(4)))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (\REG_5|DATA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datac => \REG_5|DATA\(4),
	datad => \REG_4|DATA\(4),
	combout => \BUS_SELECTOR|BUS_OUT[4]~70_combout\);

-- Location: LCCOMB_X9_Y25_N14
\BUS_SELECTOR|BUS_OUT[4]~71\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[4]~71_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[4]~70_combout\ & ((\REG_6|DATA\(4)))) # (!\BUS_SELECTOR|BUS_OUT[4]~70_combout\ & (\REG_7|DATA\(4))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[4]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_7|DATA\(4),
	datab => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datac => \REG_6|DATA\(4),
	datad => \BUS_SELECTOR|BUS_OUT[4]~70_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[4]~71_combout\);

-- Location: LCCOMB_X10_Y25_N30
\BUS_SELECTOR|BUS_OUT[4]~72\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[4]~72_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~40_combout\) # ((\BUS_SELECTOR|BUS_OUT[4]~71_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & 
-- (\REG_2|DATA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \REG_2|DATA\(4),
	datad => \BUS_SELECTOR|BUS_OUT[4]~71_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[4]~72_combout\);

-- Location: LCCOMB_X11_Y25_N28
\BUS_SELECTOR|BUS_OUT[4]~73\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[4]~73_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & ((\BUS_SELECTOR|BUS_OUT[4]~72_combout\ & ((\REG_3|DATA\(4)))) # (!\BUS_SELECTOR|BUS_OUT[4]~72_combout\ & (\REG_1|DATA\(4))))) # (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[4]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datab => \REG_1|DATA\(4),
	datac => \REG_3|DATA\(4),
	datad => \BUS_SELECTOR|BUS_OUT[4]~72_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[4]~73_combout\);

-- Location: LCCOMB_X12_Y25_N0
\BUS_SELECTOR|BUS_OUT[4]~138\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[4]~138_combout\ = (\BUS_SELECTOR|BUS_OUT[4]~69_combout\) # ((!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (!\CONTROL_UNIT|R_OUT~2_combout\ & \BUS_SELECTOR|BUS_OUT[4]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[4]~69_combout\,
	datac => \CONTROL_UNIT|R_OUT~2_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[4]~73_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[4]~138_combout\);

-- Location: FF_X12_Y25_N17
\REG_0|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[4]~138_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(4));

-- Location: IOIBUF_X0_Y6_N8
\DIN[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(5),
	o => \DIN[5]~input_o\);

-- Location: LCCOMB_X12_Y25_N30
\BUS_SELECTOR|BUS_OUT[5]~74\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[5]~74_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\DIN[5]~input_o\)) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\CONTROL_UNIT|R_OUT~2_combout\ & \REG_0|DATA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[5]~input_o\,
	datab => \CONTROL_UNIT|R_OUT~2_combout\,
	datac => \REG_0|DATA\(5),
	datad => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[5]~74_combout\);

-- Location: FF_X11_Y25_N7
\REG_1|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[5]~139_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(5));

-- Location: LCCOMB_X10_Y25_N20
\REG_2|DATA[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_2|DATA[5]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[5]~139_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[5]~139_combout\,
	combout => \REG_2|DATA[5]~feeder_combout\);

-- Location: FF_X10_Y25_N21
\REG_2|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_2|DATA[5]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(5));

-- Location: LCCOMB_X11_Y25_N6
\BUS_SELECTOR|BUS_OUT[5]~77\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[5]~77_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~40_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & (\REG_1|DATA\(5))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & ((\REG_2|DATA\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \REG_1|DATA\(5),
	datad => \REG_2|DATA\(5),
	combout => \BUS_SELECTOR|BUS_OUT[5]~77_combout\);

-- Location: FF_X11_Y25_N31
\REG_3|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[5]~139_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(5));

-- Location: FF_X12_Y25_N19
\REG_7|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[5]~139_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(5));

-- Location: FF_X9_Y25_N9
\REG_6|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[5]~139_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(5));

-- Location: FF_X9_Y25_N7
\REG_5|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[5]~139_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(5));

-- Location: LCCOMB_X8_Y25_N18
\REG_4|DATA[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[5]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[5]~139_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[5]~139_combout\,
	combout => \REG_4|DATA[5]~feeder_combout\);

-- Location: FF_X8_Y25_N19
\REG_4|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[5]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(5));

-- Location: LCCOMB_X9_Y25_N6
\BUS_SELECTOR|BUS_OUT[5]~75\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[5]~75_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~47_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\REG_4|DATA\(5)))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (\REG_5|DATA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datac => \REG_5|DATA\(5),
	datad => \REG_4|DATA\(5),
	combout => \BUS_SELECTOR|BUS_OUT[5]~75_combout\);

-- Location: LCCOMB_X9_Y25_N8
\BUS_SELECTOR|BUS_OUT[5]~76\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[5]~76_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[5]~75_combout\ & ((\REG_6|DATA\(5)))) # (!\BUS_SELECTOR|BUS_OUT[5]~75_combout\ & (\REG_7|DATA\(5))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[5]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_7|DATA\(5),
	datab => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datac => \REG_6|DATA\(5),
	datad => \BUS_SELECTOR|BUS_OUT[5]~75_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[5]~76_combout\);

-- Location: LCCOMB_X11_Y25_N30
\BUS_SELECTOR|BUS_OUT[5]~78\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[5]~78_combout\ = (\BUS_SELECTOR|BUS_OUT[5]~77_combout\ & (((\REG_3|DATA\(5))) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\))) # (!\BUS_SELECTOR|BUS_OUT[5]~77_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & 
-- ((\BUS_SELECTOR|BUS_OUT[5]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[5]~77_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datac => \REG_3|DATA\(5),
	datad => \BUS_SELECTOR|BUS_OUT[5]~76_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[5]~78_combout\);

-- Location: LCCOMB_X12_Y25_N18
\BUS_SELECTOR|BUS_OUT[5]~139\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[5]~139_combout\ = (\BUS_SELECTOR|BUS_OUT[5]~74_combout\) # ((!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (!\CONTROL_UNIT|R_OUT~2_combout\ & \BUS_SELECTOR|BUS_OUT[5]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datab => \CONTROL_UNIT|R_OUT~2_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[5]~74_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[5]~78_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[5]~139_combout\);

-- Location: FF_X12_Y25_N31
\REG_0|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[5]~139_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(5));

-- Location: IOIBUF_X28_Y29_N15
\DIN[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(6),
	o => \DIN[6]~input_o\);

-- Location: LCCOMB_X12_Y25_N28
\BUS_SELECTOR|BUS_OUT[6]~79\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[6]~79_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\DIN[6]~input_o\)))) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\CONTROL_UNIT|R_OUT~2_combout\ & (\REG_0|DATA\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datab => \CONTROL_UNIT|R_OUT~2_combout\,
	datac => \REG_0|DATA\(6),
	datad => \DIN[6]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[6]~79_combout\);

-- Location: LCCOMB_X11_Y25_N16
\REG_1|DATA[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[6]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[6]~140_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[6]~140_combout\,
	combout => \REG_1|DATA[6]~feeder_combout\);

-- Location: FF_X11_Y25_N17
\REG_1|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[6]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(6));

-- Location: FF_X11_Y25_N9
\REG_3|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[6]~140_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(6));

-- Location: FF_X10_Y25_N19
\REG_2|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[6]~140_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(6));

-- Location: FF_X12_Y25_N25
\REG_7|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[6]~140_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(6));

-- Location: FF_X9_Y25_N3
\REG_6|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[6]~140_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(6));

-- Location: FF_X4_Y25_N5
\REG_4|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[6]~140_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(6));

-- Location: LCCOMB_X4_Y25_N10
\REG_5|DATA[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_5|DATA[6]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[6]~140_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[6]~140_combout\,
	combout => \REG_5|DATA[6]~feeder_combout\);

-- Location: FF_X4_Y25_N11
\REG_5|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_5|DATA[6]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(6));

-- Location: LCCOMB_X4_Y25_N4
\BUS_SELECTOR|BUS_OUT[6]~80\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[6]~80_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~44_combout\) # ((\REG_4|DATA\(6))))) # (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & ((\REG_5|DATA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datac => \REG_4|DATA\(6),
	datad => \REG_5|DATA\(6),
	combout => \BUS_SELECTOR|BUS_OUT[6]~80_combout\);

-- Location: LCCOMB_X9_Y25_N2
\BUS_SELECTOR|BUS_OUT[6]~81\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[6]~81_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[6]~80_combout\ & ((\REG_6|DATA\(6)))) # (!\BUS_SELECTOR|BUS_OUT[6]~80_combout\ & (\REG_7|DATA\(6))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[6]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datab => \REG_7|DATA\(6),
	datac => \REG_6|DATA\(6),
	datad => \BUS_SELECTOR|BUS_OUT[6]~80_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[6]~81_combout\);

-- Location: LCCOMB_X10_Y25_N18
\BUS_SELECTOR|BUS_OUT[6]~82\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[6]~82_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~40_combout\) # ((\BUS_SELECTOR|BUS_OUT[6]~81_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & 
-- (\REG_2|DATA\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \REG_2|DATA\(6),
	datad => \BUS_SELECTOR|BUS_OUT[6]~81_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[6]~82_combout\);

-- Location: LCCOMB_X11_Y25_N8
\BUS_SELECTOR|BUS_OUT[6]~83\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[6]~83_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & ((\BUS_SELECTOR|BUS_OUT[6]~82_combout\ & ((\REG_3|DATA\(6)))) # (!\BUS_SELECTOR|BUS_OUT[6]~82_combout\ & (\REG_1|DATA\(6))))) # (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[6]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datab => \REG_1|DATA\(6),
	datac => \REG_3|DATA\(6),
	datad => \BUS_SELECTOR|BUS_OUT[6]~82_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[6]~83_combout\);

-- Location: LCCOMB_X12_Y25_N24
\BUS_SELECTOR|BUS_OUT[6]~140\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[6]~140_combout\ = (\BUS_SELECTOR|BUS_OUT[6]~79_combout\) # ((!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (!\CONTROL_UNIT|R_OUT~2_combout\ & \BUS_SELECTOR|BUS_OUT[6]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[6]~79_combout\,
	datac => \CONTROL_UNIT|R_OUT~2_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[6]~83_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[6]~140_combout\);

-- Location: FF_X12_Y25_N29
\REG_0|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[6]~140_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(6));

-- Location: IOIBUF_X35_Y29_N22
\DIN[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(7),
	o => \DIN[7]~input_o\);

-- Location: LCCOMB_X12_Y25_N22
\BUS_SELECTOR|BUS_OUT[7]~84\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[7]~84_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\DIN[7]~input_o\)))) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\CONTROL_UNIT|R_OUT~2_combout\ & (\REG_0|DATA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datab => \CONTROL_UNIT|R_OUT~2_combout\,
	datac => \REG_0|DATA\(7),
	datad => \DIN[7]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[7]~84_combout\);

-- Location: FF_X10_Y25_N1
\REG_1|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[7]~141_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(7));

-- Location: LCCOMB_X10_Y25_N12
\REG_2|DATA[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_2|DATA[7]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[7]~141_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[7]~141_combout\,
	combout => \REG_2|DATA[7]~feeder_combout\);

-- Location: FF_X10_Y25_N13
\REG_2|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_2|DATA[7]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(7));

-- Location: LCCOMB_X10_Y25_N0
\BUS_SELECTOR|BUS_OUT[7]~87\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[7]~87_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~40_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & (\REG_1|DATA\(7))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & ((\REG_2|DATA\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \REG_1|DATA\(7),
	datad => \REG_2|DATA\(7),
	combout => \BUS_SELECTOR|BUS_OUT[7]~87_combout\);

-- Location: FF_X5_Y25_N5
\REG_3|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[7]~141_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(7));

-- Location: FF_X4_Y25_N7
\REG_4|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[7]~141_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(7));

-- Location: LCCOMB_X4_Y25_N16
\REG_5|DATA[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_5|DATA[7]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[7]~141_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[7]~141_combout\,
	combout => \REG_5|DATA[7]~feeder_combout\);

-- Location: FF_X4_Y25_N17
\REG_5|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_5|DATA[7]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(7));

-- Location: LCCOMB_X4_Y25_N6
\BUS_SELECTOR|BUS_OUT[7]~85\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[7]~85_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~44_combout\) # ((\REG_4|DATA\(7))))) # (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & ((\REG_5|DATA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datac => \REG_4|DATA\(7),
	datad => \REG_5|DATA\(7),
	combout => \BUS_SELECTOR|BUS_OUT[7]~85_combout\);

-- Location: FF_X5_Y25_N3
\REG_6|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[7]~141_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(7));

-- Location: FF_X12_Y25_N3
\REG_7|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[7]~141_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(7));

-- Location: LCCOMB_X5_Y25_N2
\BUS_SELECTOR|BUS_OUT[7]~86\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[7]~86_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[7]~85_combout\ & (\REG_6|DATA\(7))) # (!\BUS_SELECTOR|BUS_OUT[7]~85_combout\ & ((\REG_7|DATA\(7)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (\BUS_SELECTOR|BUS_OUT[7]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[7]~85_combout\,
	datac => \REG_6|DATA\(7),
	datad => \REG_7|DATA\(7),
	combout => \BUS_SELECTOR|BUS_OUT[7]~86_combout\);

-- Location: LCCOMB_X5_Y25_N4
\BUS_SELECTOR|BUS_OUT[7]~88\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[7]~88_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[7]~87_combout\ & (\REG_3|DATA\(7))) # (!\BUS_SELECTOR|BUS_OUT[7]~87_combout\ & ((\BUS_SELECTOR|BUS_OUT[7]~86_combout\))))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (\BUS_SELECTOR|BUS_OUT[7]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[7]~87_combout\,
	datac => \REG_3|DATA\(7),
	datad => \BUS_SELECTOR|BUS_OUT[7]~86_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[7]~88_combout\);

-- Location: LCCOMB_X12_Y25_N2
\BUS_SELECTOR|BUS_OUT[7]~141\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[7]~141_combout\ = (\BUS_SELECTOR|BUS_OUT[7]~84_combout\) # ((!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (!\CONTROL_UNIT|R_OUT~2_combout\ & \BUS_SELECTOR|BUS_OUT[7]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datab => \CONTROL_UNIT|R_OUT~2_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[7]~84_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[7]~88_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[7]~141_combout\);

-- Location: FF_X12_Y25_N23
\REG_0|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[7]~141_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(7));

-- Location: FF_X5_Y25_N27
\REG_3|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[8]~94_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(8));

-- Location: LCCOMB_X8_Y25_N16
\REG_1|DATA[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[8]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[8]~94_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[8]~94_combout\,
	combout => \REG_1|DATA[8]~feeder_combout\);

-- Location: FF_X8_Y25_N17
\REG_1|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[8]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(8));

-- Location: LCCOMB_X5_Y25_N26
\BUS_SELECTOR|BUS_OUT[8]~89\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[8]~89_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (\REG_3|DATA\(8))) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\REG_1|DATA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datac => \REG_3|DATA\(8),
	datad => \REG_1|DATA\(8),
	combout => \BUS_SELECTOR|BUS_OUT[8]~89_combout\);

-- Location: LCCOMB_X6_Y25_N6
\BUS_SELECTOR|BUS_OUT[8]~142\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[8]~142_combout\ = (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (!\CONTROL_UNIT|R_OUT~2_combout\ & ((\BUS_SELECTOR|BUS_OUT[8]~89_combout\) # (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[8]~89_combout\,
	datad => \CONTROL_UNIT|R_OUT~2_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[8]~142_combout\);

-- Location: IOIBUF_X30_Y29_N29
\DIN[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(8),
	o => \DIN[8]~input_o\);

-- Location: LCCOMB_X6_Y25_N4
\BUS_SELECTOR|BUS_OUT[8]~93\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[8]~93_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\DIN[8]~input_o\)))) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\CONTROL_UNIT|R_OUT~2_combout\ & (\REG_0|DATA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|R_OUT~2_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datac => \REG_0|DATA\(8),
	datad => \DIN[8]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[8]~93_combout\);

-- Location: LCCOMB_X7_Y25_N24
\REG_2|DATA[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_2|DATA[8]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[8]~94_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[8]~94_combout\,
	combout => \REG_2|DATA[8]~feeder_combout\);

-- Location: FF_X7_Y25_N25
\REG_2|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_2|DATA[8]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(8));

-- Location: FF_X6_Y25_N23
\REG_7|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[8]~94_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(8));

-- Location: FF_X5_Y25_N25
\REG_6|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[8]~94_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(8));

-- Location: FF_X4_Y25_N13
\REG_4|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[8]~94_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(8));

-- Location: LCCOMB_X4_Y25_N18
\REG_5|DATA[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_5|DATA[8]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[8]~94_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[8]~94_combout\,
	combout => \REG_5|DATA[8]~feeder_combout\);

-- Location: FF_X4_Y25_N19
\REG_5|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_5|DATA[8]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(8));

-- Location: LCCOMB_X4_Y25_N12
\BUS_SELECTOR|BUS_OUT[8]~90\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[8]~90_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~44_combout\) # ((\REG_4|DATA\(8))))) # (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & ((\REG_5|DATA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datac => \REG_4|DATA\(8),
	datad => \REG_5|DATA\(8),
	combout => \BUS_SELECTOR|BUS_OUT[8]~90_combout\);

-- Location: LCCOMB_X5_Y25_N24
\BUS_SELECTOR|BUS_OUT[8]~91\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[8]~91_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[8]~90_combout\ & ((\REG_6|DATA\(8)))) # (!\BUS_SELECTOR|BUS_OUT[8]~90_combout\ & (\REG_7|DATA\(8))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[8]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datab => \REG_7|DATA\(8),
	datac => \REG_6|DATA\(8),
	datad => \BUS_SELECTOR|BUS_OUT[8]~90_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[8]~91_combout\);

-- Location: LCCOMB_X7_Y25_N2
\BUS_SELECTOR|BUS_OUT[8]~92\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[8]~92_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[8]~91_combout\))) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (\REG_2|DATA\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_2|DATA\(8),
	datac => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[8]~91_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[8]~92_combout\);

-- Location: LCCOMB_X6_Y25_N22
\BUS_SELECTOR|BUS_OUT[8]~94\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[8]~94_combout\ = (\BUS_SELECTOR|BUS_OUT[8]~93_combout\) # ((\BUS_SELECTOR|BUS_OUT[8]~142_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~40_combout\) # (\BUS_SELECTOR|BUS_OUT[8]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[8]~142_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[8]~93_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[8]~92_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[8]~94_combout\);

-- Location: FF_X6_Y25_N5
\REG_0|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[8]~94_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(8));

-- Location: IOIBUF_X0_Y10_N1
\DIN[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(9),
	o => \DIN[9]~input_o\);

-- Location: LCCOMB_X6_Y25_N2
\BUS_SELECTOR|BUS_OUT[9]~100\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[9]~100_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\DIN[9]~input_o\)))) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\CONTROL_UNIT|R_OUT~2_combout\ & (\REG_0|DATA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|R_OUT~2_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datac => \REG_0|DATA\(9),
	datad => \DIN[9]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[9]~100_combout\);

-- Location: FF_X6_Y25_N25
\REG_7|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[9]~101_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(9));

-- Location: FF_X5_Y25_N31
\REG_6|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[9]~101_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(9));

-- Location: FF_X4_Y25_N31
\REG_4|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[9]~101_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(9));

-- Location: LCCOMB_X4_Y25_N24
\REG_5|DATA[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_5|DATA[9]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[9]~101_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[9]~101_combout\,
	combout => \REG_5|DATA[9]~feeder_combout\);

-- Location: FF_X4_Y25_N25
\REG_5|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_5|DATA[9]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(9));

-- Location: LCCOMB_X4_Y25_N30
\BUS_SELECTOR|BUS_OUT[9]~95\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[9]~95_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~44_combout\) # ((\REG_4|DATA\(9))))) # (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & ((\REG_5|DATA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datac => \REG_4|DATA\(9),
	datad => \REG_5|DATA\(9),
	combout => \BUS_SELECTOR|BUS_OUT[9]~95_combout\);

-- Location: LCCOMB_X5_Y25_N30
\BUS_SELECTOR|BUS_OUT[9]~96\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[9]~96_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[9]~95_combout\ & ((\REG_6|DATA\(9)))) # (!\BUS_SELECTOR|BUS_OUT[9]~95_combout\ & (\REG_7|DATA\(9))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[9]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_7|DATA\(9),
	datab => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datac => \REG_6|DATA\(9),
	datad => \BUS_SELECTOR|BUS_OUT[9]~95_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[9]~96_combout\);

-- Location: LCCOMB_X6_Y25_N8
\BUS_SELECTOR|BUS_OUT[9]~97\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[9]~97_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~40_combout\) # ((\BUS_SELECTOR|BUS_OUT[9]~96_combout\) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[9]~96_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[9]~97_combout\);

-- Location: LCCOMB_X9_Y24_N0
\BUS_SELECTOR|BUS_OUT[0]~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~34_combout\ = (!\CONTROL_UNIT|R_OUT~2_combout\ & !\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|R_OUT~2_combout\,
	datad => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~34_combout\);

-- Location: FF_X10_Y25_N27
\REG_2|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[9]~101_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(9));

-- Location: LCCOMB_X10_Y25_N22
\REG_1|DATA[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[9]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[9]~101_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[9]~101_combout\,
	combout => \REG_1|DATA[9]~feeder_combout\);

-- Location: FF_X10_Y25_N23
\REG_1|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[9]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(9));

-- Location: LCCOMB_X5_Y25_N8
\REG_3|DATA[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_3|DATA[9]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[9]~101_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[9]~101_combout\,
	combout => \REG_3|DATA[9]~feeder_combout\);

-- Location: FF_X5_Y25_N9
\REG_3|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_3|DATA[9]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(9));

-- Location: LCCOMB_X10_Y25_N28
\BUS_SELECTOR|BUS_OUT[9]~98\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[9]~98_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (((\REG_3|DATA\(9))) # (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\))) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & (\REG_1|DATA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \REG_1|DATA\(9),
	datad => \REG_3|DATA\(9),
	combout => \BUS_SELECTOR|BUS_OUT[9]~98_combout\);

-- Location: LCCOMB_X10_Y25_N26
\BUS_SELECTOR|BUS_OUT[9]~99\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[9]~99_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~34_combout\ & ((\BUS_SELECTOR|BUS_OUT[9]~98_combout\) # ((!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & \REG_2|DATA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~34_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \REG_2|DATA\(9),
	datad => \BUS_SELECTOR|BUS_OUT[9]~98_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[9]~99_combout\);

-- Location: LCCOMB_X6_Y25_N24
\BUS_SELECTOR|BUS_OUT[9]~101\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[9]~101_combout\ = (\BUS_SELECTOR|BUS_OUT[9]~100_combout\) # ((\BUS_SELECTOR|BUS_OUT[9]~97_combout\ & \BUS_SELECTOR|BUS_OUT[9]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUS_SELECTOR|BUS_OUT[9]~100_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[9]~97_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[9]~99_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[9]~101_combout\);

-- Location: FF_X6_Y25_N3
\REG_0|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[9]~101_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(9));

-- Location: IOIBUF_X30_Y29_N22
\DIN[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(10),
	o => \DIN[10]~input_o\);

-- Location: LCCOMB_X6_Y25_N12
\BUS_SELECTOR|BUS_OUT[10]~102\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[10]~102_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\DIN[10]~input_o\)))) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\CONTROL_UNIT|R_OUT~2_combout\ & (\REG_0|DATA\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|R_OUT~2_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datac => \REG_0|DATA\(10),
	datad => \DIN[10]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[10]~102_combout\);

-- Location: LCCOMB_X11_Y25_N22
\REG_1|DATA[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[10]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[10]~143_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[10]~143_combout\,
	combout => \REG_1|DATA[10]~feeder_combout\);

-- Location: FF_X11_Y25_N23
\REG_1|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[10]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(10));

-- Location: FF_X11_Y25_N3
\REG_3|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[10]~143_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(10));

-- Location: LCCOMB_X7_Y25_N14
\REG_2|DATA[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_2|DATA[10]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[10]~143_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[10]~143_combout\,
	combout => \REG_2|DATA[10]~feeder_combout\);

-- Location: FF_X7_Y25_N15
\REG_2|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_2|DATA[10]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(10));

-- Location: FF_X6_Y25_N15
\REG_7|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[10]~143_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(10));

-- Location: FF_X9_Y25_N21
\REG_6|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[10]~143_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(10));

-- Location: FF_X4_Y25_N9
\REG_4|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[10]~143_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(10));

-- Location: LCCOMB_X4_Y25_N2
\REG_5|DATA[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_5|DATA[10]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[10]~143_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[10]~143_combout\,
	combout => \REG_5|DATA[10]~feeder_combout\);

-- Location: FF_X4_Y25_N3
\REG_5|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_5|DATA[10]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(10));

-- Location: LCCOMB_X4_Y25_N8
\BUS_SELECTOR|BUS_OUT[10]~103\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[10]~103_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~44_combout\) # ((\REG_4|DATA\(10))))) # (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & ((\REG_5|DATA\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datac => \REG_4|DATA\(10),
	datad => \REG_5|DATA\(10),
	combout => \BUS_SELECTOR|BUS_OUT[10]~103_combout\);

-- Location: LCCOMB_X9_Y25_N20
\BUS_SELECTOR|BUS_OUT[10]~104\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[10]~104_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[10]~103_combout\ & ((\REG_6|DATA\(10)))) # (!\BUS_SELECTOR|BUS_OUT[10]~103_combout\ & (\REG_7|DATA\(10))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[10]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_7|DATA\(10),
	datab => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datac => \REG_6|DATA\(10),
	datad => \BUS_SELECTOR|BUS_OUT[10]~103_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[10]~104_combout\);

-- Location: LCCOMB_X10_Y25_N10
\BUS_SELECTOR|BUS_OUT[10]~105\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[10]~105_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~40_combout\) # ((\BUS_SELECTOR|BUS_OUT[10]~104_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & 
-- (\REG_2|DATA\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \REG_2|DATA\(10),
	datad => \BUS_SELECTOR|BUS_OUT[10]~104_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[10]~105_combout\);

-- Location: LCCOMB_X11_Y25_N2
\BUS_SELECTOR|BUS_OUT[10]~106\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[10]~106_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & ((\BUS_SELECTOR|BUS_OUT[10]~105_combout\ & ((\REG_3|DATA\(10)))) # (!\BUS_SELECTOR|BUS_OUT[10]~105_combout\ & (\REG_1|DATA\(10))))) # (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[10]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_1|DATA\(10),
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \REG_3|DATA\(10),
	datad => \BUS_SELECTOR|BUS_OUT[10]~105_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[10]~106_combout\);

-- Location: LCCOMB_X6_Y25_N14
\BUS_SELECTOR|BUS_OUT[10]~143\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[10]~143_combout\ = (\BUS_SELECTOR|BUS_OUT[10]~102_combout\) # ((!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (!\CONTROL_UNIT|R_OUT~2_combout\ & \BUS_SELECTOR|BUS_OUT[10]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[10]~102_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datac => \CONTROL_UNIT|R_OUT~2_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[10]~106_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[10]~143_combout\);

-- Location: FF_X6_Y25_N13
\REG_0|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[10]~143_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(10));

-- Location: IOIBUF_X5_Y0_N8
\DIN[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(11),
	o => \DIN[11]~input_o\);

-- Location: LCCOMB_X6_Y25_N26
\BUS_SELECTOR|BUS_OUT[11]~107\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[11]~107_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\DIN[11]~input_o\)))) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\CONTROL_UNIT|R_OUT~2_combout\ & (\REG_0|DATA\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|R_OUT~2_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datac => \REG_0|DATA\(11),
	datad => \DIN[11]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[11]~107_combout\);

-- Location: FF_X10_Y25_N17
\REG_1|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[11]~144_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(11));

-- Location: LCCOMB_X10_Y25_N24
\REG_2|DATA[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_2|DATA[11]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[11]~144_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[11]~144_combout\,
	combout => \REG_2|DATA[11]~feeder_combout\);

-- Location: FF_X10_Y25_N25
\REG_2|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_2|DATA[11]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(11));

-- Location: LCCOMB_X10_Y25_N16
\BUS_SELECTOR|BUS_OUT[11]~110\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[11]~110_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~40_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & (\REG_1|DATA\(11))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & ((\REG_2|DATA\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \REG_1|DATA\(11),
	datad => \REG_2|DATA\(11),
	combout => \BUS_SELECTOR|BUS_OUT[11]~110_combout\);

-- Location: FF_X5_Y25_N23
\REG_3|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[11]~144_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(11));

-- Location: FF_X6_Y25_N29
\REG_7|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[11]~144_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(11));

-- Location: FF_X5_Y25_N29
\REG_6|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[11]~144_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(11));

-- Location: FF_X4_Y25_N15
\REG_4|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[11]~144_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(11));

-- Location: LCCOMB_X4_Y25_N0
\REG_5|DATA[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_5|DATA[11]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[11]~144_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[11]~144_combout\,
	combout => \REG_5|DATA[11]~feeder_combout\);

-- Location: FF_X4_Y25_N1
\REG_5|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_5|DATA[11]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(11));

-- Location: LCCOMB_X4_Y25_N14
\BUS_SELECTOR|BUS_OUT[11]~108\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[11]~108_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~44_combout\) # ((\REG_4|DATA\(11))))) # (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & ((\REG_5|DATA\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datac => \REG_4|DATA\(11),
	datad => \REG_5|DATA\(11),
	combout => \BUS_SELECTOR|BUS_OUT[11]~108_combout\);

-- Location: LCCOMB_X5_Y25_N28
\BUS_SELECTOR|BUS_OUT[11]~109\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[11]~109_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[11]~108_combout\ & ((\REG_6|DATA\(11)))) # (!\BUS_SELECTOR|BUS_OUT[11]~108_combout\ & (\REG_7|DATA\(11))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[11]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datab => \REG_7|DATA\(11),
	datac => \REG_6|DATA\(11),
	datad => \BUS_SELECTOR|BUS_OUT[11]~108_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[11]~109_combout\);

-- Location: LCCOMB_X5_Y25_N22
\BUS_SELECTOR|BUS_OUT[11]~111\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[11]~111_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[11]~110_combout\ & (\REG_3|DATA\(11))) # (!\BUS_SELECTOR|BUS_OUT[11]~110_combout\ & ((\BUS_SELECTOR|BUS_OUT[11]~109_combout\))))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (\BUS_SELECTOR|BUS_OUT[11]~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[11]~110_combout\,
	datac => \REG_3|DATA\(11),
	datad => \BUS_SELECTOR|BUS_OUT[11]~109_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[11]~111_combout\);

-- Location: LCCOMB_X6_Y25_N28
\BUS_SELECTOR|BUS_OUT[11]~144\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[11]~144_combout\ = (\BUS_SELECTOR|BUS_OUT[11]~107_combout\) # ((!\CONTROL_UNIT|R_OUT~2_combout\ & (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & \BUS_SELECTOR|BUS_OUT[11]~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|R_OUT~2_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[11]~107_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[11]~111_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[11]~144_combout\);

-- Location: FF_X6_Y25_N27
\REG_0|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[11]~144_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(11));

-- Location: IOIBUF_X0_Y7_N22
\DIN[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(12),
	o => \DIN[12]~input_o\);

-- Location: LCCOMB_X6_Y25_N0
\BUS_SELECTOR|BUS_OUT[12]~112\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[12]~112_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\DIN[12]~input_o\)))) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\CONTROL_UNIT|R_OUT~2_combout\ & (\REG_0|DATA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|R_OUT~2_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datac => \REG_0|DATA\(12),
	datad => \DIN[12]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[12]~112_combout\);

-- Location: LCCOMB_X8_Y25_N14
\REG_1|DATA[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[12]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[12]~145_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[12]~145_combout\,
	combout => \REG_1|DATA[12]~feeder_combout\);

-- Location: FF_X8_Y25_N15
\REG_1|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[12]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(12));

-- Location: FF_X5_Y25_N21
\REG_3|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[12]~145_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(12));

-- Location: LCCOMB_X7_Y25_N4
\REG_2|DATA[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_2|DATA[12]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[12]~145_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[12]~145_combout\,
	combout => \REG_2|DATA[12]~feeder_combout\);

-- Location: FF_X7_Y25_N5
\REG_2|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_2|DATA[12]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(12));

-- Location: FF_X6_Y25_N19
\REG_7|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[12]~145_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(12));

-- Location: FF_X5_Y25_N11
\REG_6|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[12]~145_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(12));

-- Location: LCCOMB_X4_Y25_N26
\REG_5|DATA[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_5|DATA[12]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[12]~145_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[12]~145_combout\,
	combout => \REG_5|DATA[12]~feeder_combout\);

-- Location: FF_X4_Y25_N27
\REG_5|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_5|DATA[12]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(12));

-- Location: LCCOMB_X4_Y25_N28
\REG_4|DATA[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[12]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[12]~145_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[12]~145_combout\,
	combout => \REG_4|DATA[12]~feeder_combout\);

-- Location: FF_X4_Y25_N29
\REG_4|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[12]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(12));

-- Location: LCCOMB_X4_Y25_N22
\BUS_SELECTOR|BUS_OUT[12]~113\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[12]~113_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~44_combout\) # ((\REG_4|DATA\(12))))) # (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & (\REG_5|DATA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datac => \REG_5|DATA\(12),
	datad => \REG_4|DATA\(12),
	combout => \BUS_SELECTOR|BUS_OUT[12]~113_combout\);

-- Location: LCCOMB_X5_Y25_N10
\BUS_SELECTOR|BUS_OUT[12]~114\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[12]~114_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[12]~113_combout\ & ((\REG_6|DATA\(12)))) # (!\BUS_SELECTOR|BUS_OUT[12]~113_combout\ & (\REG_7|DATA\(12))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[12]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datab => \REG_7|DATA\(12),
	datac => \REG_6|DATA\(12),
	datad => \BUS_SELECTOR|BUS_OUT[12]~113_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[12]~114_combout\);

-- Location: LCCOMB_X5_Y25_N0
\BUS_SELECTOR|BUS_OUT[12]~115\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[12]~115_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~38_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[12]~114_combout\))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (\REG_2|DATA\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datac => \REG_2|DATA\(12),
	datad => \BUS_SELECTOR|BUS_OUT[12]~114_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[12]~115_combout\);

-- Location: LCCOMB_X5_Y25_N20
\BUS_SELECTOR|BUS_OUT[12]~116\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[12]~116_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & ((\BUS_SELECTOR|BUS_OUT[12]~115_combout\ & ((\REG_3|DATA\(12)))) # (!\BUS_SELECTOR|BUS_OUT[12]~115_combout\ & (\REG_1|DATA\(12))))) # (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[12]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datab => \REG_1|DATA\(12),
	datac => \REG_3|DATA\(12),
	datad => \BUS_SELECTOR|BUS_OUT[12]~115_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[12]~116_combout\);

-- Location: LCCOMB_X6_Y25_N18
\BUS_SELECTOR|BUS_OUT[12]~145\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[12]~145_combout\ = (\BUS_SELECTOR|BUS_OUT[12]~112_combout\) # ((!\CONTROL_UNIT|R_OUT~2_combout\ & (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & \BUS_SELECTOR|BUS_OUT[12]~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|R_OUT~2_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[12]~112_combout\,
	datac => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[12]~116_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[12]~145_combout\);

-- Location: FF_X6_Y25_N1
\REG_0|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[12]~145_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(12));

-- Location: LCCOMB_X6_Y25_N30
\BUS_SELECTOR|BUS_OUT[13]~117\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[13]~117_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\DIN[13]~input_o\)))) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\CONTROL_UNIT|R_OUT~2_combout\ & (\REG_0|DATA\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|R_OUT~2_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datac => \REG_0|DATA\(13),
	datad => \DIN[13]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[13]~117_combout\);

-- Location: LCCOMB_X8_Y25_N0
\REG_1|DATA[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[13]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[13]~146_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[13]~146_combout\,
	combout => \REG_1|DATA[13]~feeder_combout\);

-- Location: FF_X8_Y25_N1
\REG_1|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[13]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(13));

-- Location: LCCOMB_X7_Y25_N6
\REG_2|DATA[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_2|DATA[13]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[13]~146_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[13]~146_combout\,
	combout => \REG_2|DATA[13]~feeder_combout\);

-- Location: FF_X7_Y25_N7
\REG_2|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_2|DATA[13]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(13));

-- Location: LCCOMB_X7_Y25_N22
\BUS_SELECTOR|BUS_OUT[13]~120\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[13]~120_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~38_combout\) # ((\REG_1|DATA\(13))))) # (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\REG_2|DATA\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datac => \REG_1|DATA\(13),
	datad => \REG_2|DATA\(13),
	combout => \BUS_SELECTOR|BUS_OUT[13]~120_combout\);

-- Location: FF_X5_Y25_N15
\REG_3|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[13]~146_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(13));

-- Location: FF_X6_Y25_N21
\REG_7|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[13]~146_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(13));

-- Location: FF_X5_Y25_N17
\REG_6|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[13]~146_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(13));

-- Location: FF_X7_Y25_N19
\REG_5|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[13]~146_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(13));

-- Location: LCCOMB_X8_Y25_N4
\REG_4|DATA[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[13]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[13]~146_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[13]~146_combout\,
	combout => \REG_4|DATA[13]~feeder_combout\);

-- Location: FF_X8_Y25_N5
\REG_4|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[13]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(13));

-- Location: LCCOMB_X7_Y25_N16
\BUS_SELECTOR|BUS_OUT[13]~118\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[13]~118_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~44_combout\) # ((\REG_4|DATA\(13))))) # (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & (\REG_5|DATA\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datac => \REG_5|DATA\(13),
	datad => \REG_4|DATA\(13),
	combout => \BUS_SELECTOR|BUS_OUT[13]~118_combout\);

-- Location: LCCOMB_X5_Y25_N16
\BUS_SELECTOR|BUS_OUT[13]~119\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[13]~119_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[13]~118_combout\ & ((\REG_6|DATA\(13)))) # (!\BUS_SELECTOR|BUS_OUT[13]~118_combout\ & (\REG_7|DATA\(13))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[13]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_7|DATA\(13),
	datab => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datac => \REG_6|DATA\(13),
	datad => \BUS_SELECTOR|BUS_OUT[13]~118_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[13]~119_combout\);

-- Location: LCCOMB_X5_Y25_N14
\BUS_SELECTOR|BUS_OUT[13]~121\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[13]~121_combout\ = (\BUS_SELECTOR|BUS_OUT[13]~120_combout\ & (((\REG_3|DATA\(13))) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\))) # (!\BUS_SELECTOR|BUS_OUT[13]~120_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & 
-- ((\BUS_SELECTOR|BUS_OUT[13]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[13]~120_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datac => \REG_3|DATA\(13),
	datad => \BUS_SELECTOR|BUS_OUT[13]~119_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[13]~121_combout\);

-- Location: LCCOMB_X6_Y25_N20
\BUS_SELECTOR|BUS_OUT[13]~146\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[13]~146_combout\ = (\BUS_SELECTOR|BUS_OUT[13]~117_combout\) # ((!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (!\CONTROL_UNIT|R_OUT~2_combout\ & \BUS_SELECTOR|BUS_OUT[13]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[13]~117_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datac => \CONTROL_UNIT|R_OUT~2_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[13]~121_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[13]~146_combout\);

-- Location: FF_X6_Y25_N31
\REG_0|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[13]~146_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(13));

-- Location: LCCOMB_X6_Y25_N16
\BUS_SELECTOR|BUS_OUT[14]~122\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[14]~122_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\DIN[14]~input_o\)))) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\CONTROL_UNIT|R_OUT~2_combout\ & (\REG_0|DATA\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|R_OUT~2_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datac => \REG_0|DATA\(14),
	datad => \DIN[14]~input_o\,
	combout => \BUS_SELECTOR|BUS_OUT[14]~122_combout\);

-- Location: LCCOMB_X8_Y25_N10
\REG_1|DATA[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[14]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[14]~147_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[14]~147_combout\,
	combout => \REG_1|DATA[14]~feeder_combout\);

-- Location: FF_X8_Y25_N11
\REG_1|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[14]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(14));

-- Location: FF_X5_Y25_N13
\REG_3|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[14]~147_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(14));

-- Location: LCCOMB_X7_Y25_N0
\REG_2|DATA[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_2|DATA[14]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[14]~147_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[14]~147_combout\,
	combout => \REG_2|DATA[14]~feeder_combout\);

-- Location: FF_X7_Y25_N1
\REG_2|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_2|DATA[14]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(14));

-- Location: FF_X6_Y25_N11
\REG_7|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[14]~147_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(14));

-- Location: FF_X5_Y25_N7
\REG_6|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[14]~147_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(14));

-- Location: FF_X7_Y25_N9
\REG_5|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[14]~147_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(14));

-- Location: LCCOMB_X8_Y25_N6
\REG_4|DATA[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[14]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[14]~147_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[14]~147_combout\,
	combout => \REG_4|DATA[14]~feeder_combout\);

-- Location: FF_X8_Y25_N7
\REG_4|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[14]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(14));

-- Location: LCCOMB_X7_Y25_N28
\BUS_SELECTOR|BUS_OUT[14]~123\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[14]~123_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~44_combout\) # ((\REG_4|DATA\(14))))) # (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & (\REG_5|DATA\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datac => \REG_5|DATA\(14),
	datad => \REG_4|DATA\(14),
	combout => \BUS_SELECTOR|BUS_OUT[14]~123_combout\);

-- Location: LCCOMB_X5_Y25_N6
\BUS_SELECTOR|BUS_OUT[14]~124\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[14]~124_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[14]~123_combout\ & ((\REG_6|DATA\(14)))) # (!\BUS_SELECTOR|BUS_OUT[14]~123_combout\ & (\REG_7|DATA\(14))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[14]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_7|DATA\(14),
	datab => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datac => \REG_6|DATA\(14),
	datad => \BUS_SELECTOR|BUS_OUT[14]~123_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[14]~124_combout\);

-- Location: LCCOMB_X5_Y25_N18
\BUS_SELECTOR|BUS_OUT[14]~125\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[14]~125_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~40_combout\) # (\BUS_SELECTOR|BUS_OUT[14]~124_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (\REG_2|DATA\(14) & 
-- (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_2|DATA\(14),
	datab => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[14]~124_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[14]~125_combout\);

-- Location: LCCOMB_X5_Y25_N12
\BUS_SELECTOR|BUS_OUT[14]~126\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[14]~126_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & ((\BUS_SELECTOR|BUS_OUT[14]~125_combout\ & ((\REG_3|DATA\(14)))) # (!\BUS_SELECTOR|BUS_OUT[14]~125_combout\ & (\REG_1|DATA\(14))))) # (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[14]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datab => \REG_1|DATA\(14),
	datac => \REG_3|DATA\(14),
	datad => \BUS_SELECTOR|BUS_OUT[14]~125_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[14]~126_combout\);

-- Location: LCCOMB_X6_Y25_N10
\BUS_SELECTOR|BUS_OUT[14]~147\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[14]~147_combout\ = (\BUS_SELECTOR|BUS_OUT[14]~122_combout\) # ((!\CONTROL_UNIT|R_OUT~2_combout\ & (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & \BUS_SELECTOR|BUS_OUT[14]~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|R_OUT~2_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[14]~122_combout\,
	datac => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[14]~126_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[14]~147_combout\);

-- Location: FF_X6_Y25_N17
\REG_0|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[14]~147_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(14));

-- Location: LCCOMB_X7_Y24_N14
\BUS_SELECTOR|BUS_OUT[15]~127\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[15]~127_combout\ = (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (\DIN[15]~input_o\)) # (!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (((\REG_0|DATA\(15) & \CONTROL_UNIT|R_OUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[15]~input_o\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datac => \REG_0|DATA\(15),
	datad => \CONTROL_UNIT|R_OUT~2_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[15]~127_combout\);

-- Location: LCCOMB_X8_Y24_N24
\REG_3|DATA[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_3|DATA[15]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[15]~148_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[15]~148_combout\,
	combout => \REG_3|DATA[15]~feeder_combout\);

-- Location: FF_X8_Y24_N25
\REG_3|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_3|DATA[15]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(15));

-- Location: LCCOMB_X9_Y24_N6
\REG_2|DATA[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_2|DATA[15]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[15]~148_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[15]~148_combout\,
	combout => \REG_2|DATA[15]~feeder_combout\);

-- Location: FF_X9_Y24_N7
\REG_2|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_2|DATA[15]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(15));

-- Location: LCCOMB_X9_Y24_N16
\REG_1|DATA[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[15]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[15]~148_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[15]~148_combout\,
	combout => \REG_1|DATA[15]~feeder_combout\);

-- Location: FF_X9_Y24_N17
\REG_1|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[15]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(15));

-- Location: LCCOMB_X9_Y24_N30
\BUS_SELECTOR|BUS_OUT[15]~130\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[15]~130_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~38_combout\) # (\REG_1|DATA\(15))))) # (!\BUS_SELECTOR|BUS_OUT[0]~40_combout\ & (\REG_2|DATA\(15) & (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_2|DATA\(15),
	datab => \BUS_SELECTOR|BUS_OUT[0]~40_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datad => \REG_1|DATA\(15),
	combout => \BUS_SELECTOR|BUS_OUT[15]~130_combout\);

-- Location: FF_X8_Y24_N17
\REG_7|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[15]~148_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(15));

-- Location: FF_X9_Y25_N27
\REG_6|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[15]~148_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(15));

-- Location: FF_X9_Y25_N17
\REG_5|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[15]~148_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(15));

-- Location: LCCOMB_X8_Y25_N12
\REG_4|DATA[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[15]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[15]~148_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[15]~148_combout\,
	combout => \REG_4|DATA[15]~feeder_combout\);

-- Location: FF_X8_Y25_N13
\REG_4|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[15]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(15));

-- Location: LCCOMB_X9_Y25_N16
\BUS_SELECTOR|BUS_OUT[15]~128\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[15]~128_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~47_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~44_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & ((\REG_4|DATA\(15)))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~47_combout\ & (\REG_5|DATA\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~44_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~47_combout\,
	datac => \REG_5|DATA\(15),
	datad => \REG_4|DATA\(15),
	combout => \BUS_SELECTOR|BUS_OUT[15]~128_combout\);

-- Location: LCCOMB_X9_Y25_N26
\BUS_SELECTOR|BUS_OUT[15]~129\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[15]~129_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & ((\BUS_SELECTOR|BUS_OUT[15]~128_combout\ & ((\REG_6|DATA\(15)))) # (!\BUS_SELECTOR|BUS_OUT[15]~128_combout\ & (\REG_7|DATA\(15))))) # (!\BUS_SELECTOR|BUS_OUT[0]~49_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[15]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_7|DATA\(15),
	datab => \BUS_SELECTOR|BUS_OUT[0]~49_combout\,
	datac => \REG_6|DATA\(15),
	datad => \BUS_SELECTOR|BUS_OUT[15]~128_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[15]~129_combout\);

-- Location: LCCOMB_X8_Y24_N6
\BUS_SELECTOR|BUS_OUT[15]~131\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[15]~131_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & ((\BUS_SELECTOR|BUS_OUT[15]~130_combout\ & (\REG_3|DATA\(15))) # (!\BUS_SELECTOR|BUS_OUT[15]~130_combout\ & ((\BUS_SELECTOR|BUS_OUT[15]~129_combout\))))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~38_combout\ & (((\BUS_SELECTOR|BUS_OUT[15]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~38_combout\,
	datab => \REG_3|DATA\(15),
	datac => \BUS_SELECTOR|BUS_OUT[15]~130_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[15]~129_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[15]~131_combout\);

-- Location: LCCOMB_X8_Y24_N0
\BUS_SELECTOR|BUS_OUT[15]~148\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[15]~148_combout\ = (\BUS_SELECTOR|BUS_OUT[15]~127_combout\) # ((!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ & (!\CONTROL_UNIT|R_OUT~2_combout\ & \BUS_SELECTOR|BUS_OUT[15]~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[15]~127_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datac => \CONTROL_UNIT|R_OUT~2_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[15]~131_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[15]~148_combout\);

-- Location: FF_X7_Y24_N15
\REG_0|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[15]~148_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(15));

-- Location: IOIBUF_X41_Y15_N8
\ENABLE~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENABLE,
	o => \ENABLE~input_o\);

ww_RIN(0) <= \RIN[0]~output_o\;

ww_RIN(1) <= \RIN[1]~output_o\;

ww_RIN(2) <= \RIN[2]~output_o\;

ww_RIN(3) <= \RIN[3]~output_o\;

ww_RIN(4) <= \RIN[4]~output_o\;

ww_RIN(5) <= \RIN[5]~output_o\;

ww_RIN(6) <= \RIN[6]~output_o\;

ww_RIN(7) <= \RIN[7]~output_o\;

ww_REG0(0) <= \REG0[0]~output_o\;

ww_REG0(1) <= \REG0[1]~output_o\;

ww_REG0(2) <= \REG0[2]~output_o\;

ww_REG0(3) <= \REG0[3]~output_o\;

ww_REG0(4) <= \REG0[4]~output_o\;

ww_REG0(5) <= \REG0[5]~output_o\;

ww_REG0(6) <= \REG0[6]~output_o\;

ww_REG0(7) <= \REG0[7]~output_o\;

ww_REG0(8) <= \REG0[8]~output_o\;

ww_REG0(9) <= \REG0[9]~output_o\;

ww_REG0(10) <= \REG0[10]~output_o\;

ww_REG0(11) <= \REG0[11]~output_o\;

ww_REG0(12) <= \REG0[12]~output_o\;

ww_REG0(13) <= \REG0[13]~output_o\;

ww_REG0(14) <= \REG0[14]~output_o\;

ww_REG0(15) <= \REG0[15]~output_o\;

ww_REG1(0) <= \REG1[0]~output_o\;

ww_REG1(1) <= \REG1[1]~output_o\;

ww_REG1(2) <= \REG1[2]~output_o\;

ww_REG1(3) <= \REG1[3]~output_o\;

ww_REG1(4) <= \REG1[4]~output_o\;

ww_REG1(5) <= \REG1[5]~output_o\;

ww_REG1(6) <= \REG1[6]~output_o\;

ww_REG1(7) <= \REG1[7]~output_o\;

ww_REG1(8) <= \REG1[8]~output_o\;

ww_REG1(9) <= \REG1[9]~output_o\;

ww_REG1(10) <= \REG1[10]~output_o\;

ww_REG1(11) <= \REG1[11]~output_o\;

ww_REG1(12) <= \REG1[12]~output_o\;

ww_REG1(13) <= \REG1[13]~output_o\;

ww_REG1(14) <= \REG1[14]~output_o\;

ww_REG1(15) <= \REG1[15]~output_o\;

ww_REG2(0) <= \REG2[0]~output_o\;

ww_REG2(1) <= \REG2[1]~output_o\;

ww_REG2(2) <= \REG2[2]~output_o\;

ww_REG2(3) <= \REG2[3]~output_o\;

ww_REG2(4) <= \REG2[4]~output_o\;

ww_REG2(5) <= \REG2[5]~output_o\;

ww_REG2(6) <= \REG2[6]~output_o\;

ww_REG2(7) <= \REG2[7]~output_o\;

ww_REG2(8) <= \REG2[8]~output_o\;

ww_REG2(9) <= \REG2[9]~output_o\;

ww_REG2(10) <= \REG2[10]~output_o\;

ww_REG2(11) <= \REG2[11]~output_o\;

ww_REG2(12) <= \REG2[12]~output_o\;

ww_REG2(13) <= \REG2[13]~output_o\;

ww_REG2(14) <= \REG2[14]~output_o\;

ww_REG2(15) <= \REG2[15]~output_o\;

ww_REG3(0) <= \REG3[0]~output_o\;

ww_REG3(1) <= \REG3[1]~output_o\;

ww_REG3(2) <= \REG3[2]~output_o\;

ww_REG3(3) <= \REG3[3]~output_o\;

ww_REG3(4) <= \REG3[4]~output_o\;

ww_REG3(5) <= \REG3[5]~output_o\;

ww_REG3(6) <= \REG3[6]~output_o\;

ww_REG3(7) <= \REG3[7]~output_o\;

ww_REG3(8) <= \REG3[8]~output_o\;

ww_REG3(9) <= \REG3[9]~output_o\;

ww_REG3(10) <= \REG3[10]~output_o\;

ww_REG3(11) <= \REG3[11]~output_o\;

ww_REG3(12) <= \REG3[12]~output_o\;

ww_REG3(13) <= \REG3[13]~output_o\;

ww_REG3(14) <= \REG3[14]~output_o\;

ww_REG3(15) <= \REG3[15]~output_o\;

ww_REG4(0) <= \REG4[0]~output_o\;

ww_REG4(1) <= \REG4[1]~output_o\;

ww_REG4(2) <= \REG4[2]~output_o\;

ww_REG4(3) <= \REG4[3]~output_o\;

ww_REG4(4) <= \REG4[4]~output_o\;

ww_REG4(5) <= \REG4[5]~output_o\;

ww_REG4(6) <= \REG4[6]~output_o\;

ww_REG4(7) <= \REG4[7]~output_o\;

ww_REG4(8) <= \REG4[8]~output_o\;

ww_REG4(9) <= \REG4[9]~output_o\;

ww_REG4(10) <= \REG4[10]~output_o\;

ww_REG4(11) <= \REG4[11]~output_o\;

ww_REG4(12) <= \REG4[12]~output_o\;

ww_REG4(13) <= \REG4[13]~output_o\;

ww_REG4(14) <= \REG4[14]~output_o\;

ww_REG4(15) <= \REG4[15]~output_o\;

ww_REG5(0) <= \REG5[0]~output_o\;

ww_REG5(1) <= \REG5[1]~output_o\;

ww_REG5(2) <= \REG5[2]~output_o\;

ww_REG5(3) <= \REG5[3]~output_o\;

ww_REG5(4) <= \REG5[4]~output_o\;

ww_REG5(5) <= \REG5[5]~output_o\;

ww_REG5(6) <= \REG5[6]~output_o\;

ww_REG5(7) <= \REG5[7]~output_o\;

ww_REG5(8) <= \REG5[8]~output_o\;

ww_REG5(9) <= \REG5[9]~output_o\;

ww_REG5(10) <= \REG5[10]~output_o\;

ww_REG5(11) <= \REG5[11]~output_o\;

ww_REG5(12) <= \REG5[12]~output_o\;

ww_REG5(13) <= \REG5[13]~output_o\;

ww_REG5(14) <= \REG5[14]~output_o\;

ww_REG5(15) <= \REG5[15]~output_o\;

ww_REG6(0) <= \REG6[0]~output_o\;

ww_REG6(1) <= \REG6[1]~output_o\;

ww_REG6(2) <= \REG6[2]~output_o\;

ww_REG6(3) <= \REG6[3]~output_o\;

ww_REG6(4) <= \REG6[4]~output_o\;

ww_REG6(5) <= \REG6[5]~output_o\;

ww_REG6(6) <= \REG6[6]~output_o\;

ww_REG6(7) <= \REG6[7]~output_o\;

ww_REG6(8) <= \REG6[8]~output_o\;

ww_REG6(9) <= \REG6[9]~output_o\;

ww_REG6(10) <= \REG6[10]~output_o\;

ww_REG6(11) <= \REG6[11]~output_o\;

ww_REG6(12) <= \REG6[12]~output_o\;

ww_REG6(13) <= \REG6[13]~output_o\;

ww_REG6(14) <= \REG6[14]~output_o\;

ww_REG6(15) <= \REG6[15]~output_o\;

ww_REG7(0) <= \REG7[0]~output_o\;

ww_REG7(1) <= \REG7[1]~output_o\;

ww_REG7(2) <= \REG7[2]~output_o\;

ww_REG7(3) <= \REG7[3]~output_o\;

ww_REG7(4) <= \REG7[4]~output_o\;

ww_REG7(5) <= \REG7[5]~output_o\;

ww_REG7(6) <= \REG7[6]~output_o\;

ww_REG7(7) <= \REG7[7]~output_o\;

ww_REG7(8) <= \REG7[8]~output_o\;

ww_REG7(9) <= \REG7[9]~output_o\;

ww_REG7(10) <= \REG7[10]~output_o\;

ww_REG7(11) <= \REG7[11]~output_o\;

ww_REG7(12) <= \REG7[12]~output_o\;

ww_REG7(13) <= \REG7[13]~output_o\;

ww_REG7(14) <= \REG7[14]~output_o\;

ww_REG7(15) <= \REG7[15]~output_o\;

ww_DONE <= \DONE~output_o\;

ww_STEP(0) <= \STEP[0]~output_o\;

ww_STEP(1) <= \STEP[1]~output_o\;
END structure;


