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

-- DATE "12/29/2019 18:37:04"

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
	DIN : IN std_logic_vector(25 DOWNTO 0);
	REG0 : OUT std_logic_vector(15 DOWNTO 0);
	REG1 : OUT std_logic_vector(15 DOWNTO 0);
	REG2 : OUT std_logic_vector(15 DOWNTO 0);
	REG3 : OUT std_logic_vector(15 DOWNTO 0);
	REG4 : OUT std_logic_vector(15 DOWNTO 0);
	REG5 : OUT std_logic_vector(15 DOWNTO 0);
	REG6 : OUT std_logic_vector(15 DOWNTO 0);
	REG7 : OUT std_logic_vector(15 DOWNTO 0);
	BUS_DATA : OUT std_logic_vector(15 DOWNTO 0);
	OVER_FLOW : OUT std_logic;
	DONE : OUT std_logic;
	STEP : OUT std_logic_vector(1 DOWNTO 0)
	);
END SimpleProcessor;

-- Design Ports Information
-- REG0[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[4]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[8]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[9]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[10]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[11]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[12]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[13]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[14]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG0[15]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[5]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[6]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[7]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[8]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[9]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[10]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[11]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[12]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[13]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[14]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG1[15]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[1]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[3]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[4]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[5]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[7]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[8]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[9]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[10]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[11]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[12]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[13]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[14]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG2[15]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[5]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[7]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[8]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[9]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[10]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[11]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[12]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[13]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[14]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG3[15]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[1]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[4]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[5]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[6]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[8]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[9]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[10]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[11]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[12]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[13]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[14]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG4[15]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[5]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[6]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[7]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[8]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[9]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[10]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[12]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[13]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[14]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG5[15]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[1]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[4]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[5]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[6]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[7]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[8]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[9]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[10]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[11]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[12]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[13]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[14]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG6[15]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[0]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[3]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[7]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[8]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[9]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[10]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[11]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[12]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[13]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[14]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG7[15]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[0]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[3]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[4]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[5]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[6]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[7]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[8]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[9]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[10]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[11]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[12]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[13]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[14]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUS_DATA[15]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OVER_FLOW	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DONE	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STEP[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STEP[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[22]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[24]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[25]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[23]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[21]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[20]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[19]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[17]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[16]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[18]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[8]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[9]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[10]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[11]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[12]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[13]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[14]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[15]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENABLE	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_DIN : std_logic_vector(25 DOWNTO 0);
SIGNAL ww_REG0 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG4 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG5 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG6 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_REG7 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_BUS_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_OVER_FLOW : std_logic;
SIGNAL ww_DONE : std_logic;
SIGNAL ww_STEP : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \BUS_DATA[0]~output_o\ : std_logic;
SIGNAL \BUS_DATA[1]~output_o\ : std_logic;
SIGNAL \BUS_DATA[2]~output_o\ : std_logic;
SIGNAL \BUS_DATA[3]~output_o\ : std_logic;
SIGNAL \BUS_DATA[4]~output_o\ : std_logic;
SIGNAL \BUS_DATA[5]~output_o\ : std_logic;
SIGNAL \BUS_DATA[6]~output_o\ : std_logic;
SIGNAL \BUS_DATA[7]~output_o\ : std_logic;
SIGNAL \BUS_DATA[8]~output_o\ : std_logic;
SIGNAL \BUS_DATA[9]~output_o\ : std_logic;
SIGNAL \BUS_DATA[10]~output_o\ : std_logic;
SIGNAL \BUS_DATA[11]~output_o\ : std_logic;
SIGNAL \BUS_DATA[12]~output_o\ : std_logic;
SIGNAL \BUS_DATA[13]~output_o\ : std_logic;
SIGNAL \BUS_DATA[14]~output_o\ : std_logic;
SIGNAL \BUS_DATA[15]~output_o\ : std_logic;
SIGNAL \OVER_FLOW~output_o\ : std_logic;
SIGNAL \DONE~output_o\ : std_logic;
SIGNAL \STEP[0]~output_o\ : std_logic;
SIGNAL \STEP[1]~output_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DIN[0]~input_o\ : std_logic;
SIGNAL \DIN[23]~input_o\ : std_logic;
SIGNAL \ENABLE~input_o\ : std_logic;
SIGNAL \DIN[25]~input_o\ : std_logic;
SIGNAL \DIN[24]~input_o\ : std_logic;
SIGNAL \CONTROL_UNIT|PRO_COUNTER|COUNT~3_combout\ : std_logic;
SIGNAL \OP|Mux0~0_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|COUNTER_DECODER|Equal2~0_combout\ : std_logic;
SIGNAL \OP|Mux0~1_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|G_OUT~0_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN[0]~4_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN[0]~5_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|PRO_COUNTER|COUNT~2_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|FLUSH_FUNCTION~combout\ : std_logic;
SIGNAL \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~122_combout\ : std_logic;
SIGNAL \DIN[22]~input_o\ : std_logic;
SIGNAL \CONTROL_UNIT|COMMAND_NUM[0]~0_combout\ : std_logic;
SIGNAL \OP|Add0~16_combout\ : std_logic;
SIGNAL \OP|Mux0~2_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ : std_logic;
SIGNAL \OP|Add0~18_cout\ : std_logic;
SIGNAL \OP|Add0~19_combout\ : std_logic;
SIGNAL \OP|Mux16~2_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|G_IN~3_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~10_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|D_OUT~0_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~11_combout\ : std_logic;
SIGNAL \DIN[16]~input_o\ : std_logic;
SIGNAL \CONTROL_UNIT|Y_NUM[0]~1_combout\ : std_logic;
SIGNAL \DIN[18]~input_o\ : std_logic;
SIGNAL \CONTROL_UNIT|Y_NUM[2]~2_combout\ : std_logic;
SIGNAL \DIN[17]~input_o\ : std_logic;
SIGNAL \CONTROL_UNIT|Y_NUM[1]~0_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|G_IN~2_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_OUT[4]~0_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_OUT[4]~1_combout\ : std_logic;
SIGNAL \DIN[20]~input_o\ : std_logic;
SIGNAL \CONTROL_UNIT|X_NUM[1]~1_combout\ : std_logic;
SIGNAL \DIN[21]~input_o\ : std_logic;
SIGNAL \CONTROL_UNIT|X_NUM[2]~0_combout\ : std_logic;
SIGNAL \DIN[19]~input_o\ : std_logic;
SIGNAL \CONTROL_UNIT|X_NUM[0]~2_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~12_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~13_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~14_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~20_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_OUT[1]~2_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_OUT[1]~3_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~125_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~16_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~19_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~17_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~15_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~18_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~21_combout\ : std_logic;
SIGNAL \REG_1|DATA[0]~feeder_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN[1]~7_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN[3]~9_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN[2]~8_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~123_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_OUT[4]~4_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_OUT[4]~6_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|Y_DECODER|Equal6~0_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|X_DECODER|Equal6~0_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~23_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_OUT[5]~5_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_OUT[5]~7_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~24_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~22_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~124_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~25_combout\ : std_logic;
SIGNAL \REG_6|DATA[0]~feeder_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN[6]~12_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN[7]~13_combout\ : std_logic;
SIGNAL \REG_4|DATA[0]~feeder_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN[4]~10_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN[5]~11_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~26_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~27_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~28_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~29_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~30_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[0]~31_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|R_IN[0]~6_combout\ : std_logic;
SIGNAL \DIN[1]~input_o\ : std_logic;
SIGNAL \OP|Add0~15_combout\ : std_logic;
SIGNAL \OP|Add0~20\ : std_logic;
SIGNAL \OP|Add0~21_combout\ : std_logic;
SIGNAL \OP|Mux15~2_combout\ : std_logic;
SIGNAL \REG_2|DATA[1]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[1]~34_combout\ : std_logic;
SIGNAL \REG_6|DATA[1]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[1]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[1]~32_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[1]~33_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[1]~35_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[1]~36_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[1]~37_combout\ : std_logic;
SIGNAL \OP|Add0~14_combout\ : std_logic;
SIGNAL \OP|Add0~22\ : std_logic;
SIGNAL \OP|Add0~23_combout\ : std_logic;
SIGNAL \OP|Mux14~2_combout\ : std_logic;
SIGNAL \DIN[2]~input_o\ : std_logic;
SIGNAL \REG_1|DATA[2]~feeder_combout\ : std_logic;
SIGNAL \REG_6|DATA[2]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[2]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[2]~38_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[2]~39_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[2]~40_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[2]~41_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[2]~42_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[2]~43_combout\ : std_logic;
SIGNAL \DIN[3]~input_o\ : std_logic;
SIGNAL \OP|Add0~13_combout\ : std_logic;
SIGNAL \OP|Add0~24\ : std_logic;
SIGNAL \OP|Add0~25_combout\ : std_logic;
SIGNAL \OP|Mux13~2_combout\ : std_logic;
SIGNAL \REG_6|DATA[3]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[3]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[3]~44_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[3]~45_combout\ : std_logic;
SIGNAL \REG_1|DATA[3]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[3]~46_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[3]~47_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[3]~48_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[3]~49_combout\ : std_logic;
SIGNAL \REG_0|DATA[3]~feeder_combout\ : std_logic;
SIGNAL \DIN[4]~input_o\ : std_logic;
SIGNAL \OP|Add0~12_combout\ : std_logic;
SIGNAL \OP|Add0~26\ : std_logic;
SIGNAL \OP|Add0~27_combout\ : std_logic;
SIGNAL \OP|Mux12~2_combout\ : std_logic;
SIGNAL \REG_1|DATA[4]~feeder_combout\ : std_logic;
SIGNAL \REG_6|DATA[4]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[4]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[4]~50_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[4]~51_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[4]~52_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[4]~53_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[4]~54_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[4]~55_combout\ : std_logic;
SIGNAL \DIN[5]~input_o\ : std_logic;
SIGNAL \OP|Add0~0_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\ : std_logic;
SIGNAL \OP|Add0~11_combout\ : std_logic;
SIGNAL \OP|Add0~28\ : std_logic;
SIGNAL \OP|Add0~29_combout\ : std_logic;
SIGNAL \OP|Mux11~2_combout\ : std_logic;
SIGNAL \REG_1|DATA[5]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[5]~58_combout\ : std_logic;
SIGNAL \REG_6|DATA[5]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[5]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[5]~56_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[5]~57_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[5]~59_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[5]~60_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[5]~61_combout\ : std_logic;
SIGNAL \REG_0|DATA[5]~feeder_combout\ : std_logic;
SIGNAL \OP|Add0~10_combout\ : std_logic;
SIGNAL \OP|Add0~30\ : std_logic;
SIGNAL \OP|Add0~31_combout\ : std_logic;
SIGNAL \OP|Mux10~2_combout\ : std_logic;
SIGNAL \DIN[6]~input_o\ : std_logic;
SIGNAL \REG_1|DATA[6]~feeder_combout\ : std_logic;
SIGNAL \REG_6|DATA[6]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[6]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[6]~62_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[6]~63_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[6]~64_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[6]~65_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[6]~66_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[6]~67_combout\ : std_logic;
SIGNAL \DIN[7]~input_o\ : std_logic;
SIGNAL \OP|Add0~9_combout\ : std_logic;
SIGNAL \OP|Add0~32\ : std_logic;
SIGNAL \OP|Add0~33_combout\ : std_logic;
SIGNAL \OP|Mux9~2_combout\ : std_logic;
SIGNAL \REG_4|DATA[7]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[7]~68_combout\ : std_logic;
SIGNAL \REG_6|DATA[7]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[7]~69_combout\ : std_logic;
SIGNAL \REG_1|DATA[7]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[7]~70_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[7]~71_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[7]~72_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[7]~73_combout\ : std_logic;
SIGNAL \REG_0|DATA[7]~feeder_combout\ : std_logic;
SIGNAL \DIN[8]~input_o\ : std_logic;
SIGNAL \OP|Add0~8_combout\ : std_logic;
SIGNAL \OP|Add0~34\ : std_logic;
SIGNAL \OP|Add0~35_combout\ : std_logic;
SIGNAL \OP|Mux8~2_combout\ : std_logic;
SIGNAL \REG_1|DATA[8]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[8]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[8]~74_combout\ : std_logic;
SIGNAL \REG_6|DATA[8]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[8]~75_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[8]~76_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[8]~77_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[8]~78_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[8]~79_combout\ : std_logic;
SIGNAL \DIN[9]~input_o\ : std_logic;
SIGNAL \OP|Add0~7_combout\ : std_logic;
SIGNAL \OP|Add0~36\ : std_logic;
SIGNAL \OP|Add0~37_combout\ : std_logic;
SIGNAL \OP|Mux7~2_combout\ : std_logic;
SIGNAL \REG_1|DATA[9]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[9]~82_combout\ : std_logic;
SIGNAL \REG_6|DATA[9]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[9]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[9]~80_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[9]~81_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[9]~83_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[9]~84_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[9]~85_combout\ : std_logic;
SIGNAL \REG_0|DATA[9]~feeder_combout\ : std_logic;
SIGNAL \DIN[10]~input_o\ : std_logic;
SIGNAL \OP|Add0~6_combout\ : std_logic;
SIGNAL \OP|Add0~38\ : std_logic;
SIGNAL \OP|Add0~39_combout\ : std_logic;
SIGNAL \OP|Mux6~2_combout\ : std_logic;
SIGNAL \REG_1|DATA[10]~feeder_combout\ : std_logic;
SIGNAL \REG_6|DATA[10]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[10]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[10]~86_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[10]~87_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[10]~88_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[10]~89_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[10]~90_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[10]~91_combout\ : std_logic;
SIGNAL \DIN[11]~input_o\ : std_logic;
SIGNAL \OP|Add0~5_combout\ : std_logic;
SIGNAL \OP|Add0~40\ : std_logic;
SIGNAL \OP|Add0~41_combout\ : std_logic;
SIGNAL \OP|Mux5~2_combout\ : std_logic;
SIGNAL \REG_4|DATA[11]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[11]~92_combout\ : std_logic;
SIGNAL \REG_6|DATA[11]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[11]~93_combout\ : std_logic;
SIGNAL \REG_1|DATA[11]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[11]~94_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[11]~95_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[11]~96_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[11]~97_combout\ : std_logic;
SIGNAL \REG_0|DATA[11]~feeder_combout\ : std_logic;
SIGNAL \DIN[12]~input_o\ : std_logic;
SIGNAL \OP|Add0~4_combout\ : std_logic;
SIGNAL \OP|Add0~42\ : std_logic;
SIGNAL \OP|Add0~43_combout\ : std_logic;
SIGNAL \OP|Mux4~2_combout\ : std_logic;
SIGNAL \REG_1|DATA[12]~feeder_combout\ : std_logic;
SIGNAL \REG_6|DATA[12]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[12]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[12]~98_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[12]~99_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[12]~100_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[12]~101_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[12]~102_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[12]~103_combout\ : std_logic;
SIGNAL \DIN[13]~input_o\ : std_logic;
SIGNAL \OP|Add0~3_combout\ : std_logic;
SIGNAL \OP|Add0~44\ : std_logic;
SIGNAL \OP|Add0~45_combout\ : std_logic;
SIGNAL \OP|Mux3~2_combout\ : std_logic;
SIGNAL \REG_4|DATA[13]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[13]~104_combout\ : std_logic;
SIGNAL \REG_6|DATA[13]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[13]~105_combout\ : std_logic;
SIGNAL \REG_1|DATA[13]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[13]~106_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[13]~107_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[13]~108_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[13]~109_combout\ : std_logic;
SIGNAL \REG_0|DATA[13]~feeder_combout\ : std_logic;
SIGNAL \OP|Add0~2_combout\ : std_logic;
SIGNAL \OP|Add0~46\ : std_logic;
SIGNAL \OP|Add0~47_combout\ : std_logic;
SIGNAL \OP|Mux2~2_combout\ : std_logic;
SIGNAL \DIN[14]~input_o\ : std_logic;
SIGNAL \REG_1|DATA[14]~feeder_combout\ : std_logic;
SIGNAL \REG_6|DATA[14]~feeder_combout\ : std_logic;
SIGNAL \REG_4|DATA[14]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[14]~110_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[14]~111_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[14]~112_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[14]~113_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[14]~114_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[14]~115_combout\ : std_logic;
SIGNAL \DIN[15]~input_o\ : std_logic;
SIGNAL \OP|Add0~1_combout\ : std_logic;
SIGNAL \OP|Add0~48\ : std_logic;
SIGNAL \OP|Add0~49_combout\ : std_logic;
SIGNAL \OP|Mux1~2_combout\ : std_logic;
SIGNAL \REG_4|DATA[15]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[15]~116_combout\ : std_logic;
SIGNAL \REG_6|DATA[15]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[15]~117_combout\ : std_logic;
SIGNAL \REG_1|DATA[15]~feeder_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[15]~118_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[15]~119_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[15]~120_combout\ : std_logic;
SIGNAL \BUS_SELECTOR|BUS_OUT[15]~121_combout\ : std_logic;
SIGNAL \REG_0|DATA[15]~feeder_combout\ : std_logic;
SIGNAL \OP|Add0~50\ : std_logic;
SIGNAL \OP|Add0~51_combout\ : std_logic;
SIGNAL \OP|Mux0~3_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|PROCESS_DONE~feeder_combout\ : std_logic;
SIGNAL \CONTROL_UNIT|PROCESS_DONE~q\ : std_logic;
SIGNAL \REG_3|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_0|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_G|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_1|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_2|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_4|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_5|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_6|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \REG_7|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CONTROL_UNIT|PRO_COUNTER|COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \REG_A|DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CONTROL_UNIT|PROCESS_STEP\ : std_logic_vector(1 DOWNTO 0);
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
REG0 <= ww_REG0;
REG1 <= ww_REG1;
REG2 <= ww_REG2;
REG3 <= ww_REG3;
REG4 <= ww_REG4;
REG5 <= ww_REG5;
REG6 <= ww_REG6;
REG7 <= ww_REG7;
BUS_DATA <= ww_BUS_DATA;
OVER_FLOW <= ww_OVER_FLOW;
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

-- Location: IOOBUF_X14_Y29_N16
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

-- Location: IOOBUF_X14_Y29_N9
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

-- Location: IOOBUF_X0_Y25_N23
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

-- Location: IOOBUF_X28_Y29_N23
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

-- Location: IOOBUF_X14_Y29_N2
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

-- Location: IOOBUF_X26_Y29_N16
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

-- Location: IOOBUF_X11_Y29_N23
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

-- Location: IOOBUF_X30_Y29_N30
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

-- Location: IOOBUF_X11_Y29_N16
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

-- Location: IOOBUF_X26_Y29_N2
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

-- Location: IOOBUF_X41_Y24_N9
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

-- Location: IOOBUF_X30_Y29_N16
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

-- Location: IOOBUF_X26_Y29_N23
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

-- Location: IOOBUF_X35_Y29_N16
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

-- Location: IOOBUF_X41_Y24_N16
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

-- Location: IOOBUF_X23_Y29_N23
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

-- Location: IOOBUF_X41_Y23_N23
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

-- Location: IOOBUF_X9_Y29_N16
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

-- Location: IOOBUF_X0_Y27_N9
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

-- Location: IOOBUF_X3_Y29_N2
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

-- Location: IOOBUF_X37_Y29_N9
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

-- Location: IOOBUF_X5_Y29_N30
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

-- Location: IOOBUF_X9_Y29_N2
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

-- Location: IOOBUF_X0_Y24_N16
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

-- Location: IOOBUF_X26_Y29_N9
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

-- Location: IOOBUF_X0_Y24_N23
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

-- Location: IOOBUF_X41_Y25_N16
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

-- Location: IOOBUF_X35_Y29_N2
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X0_Y8_N9
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

-- Location: IOOBUF_X0_Y12_N9
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

-- Location: IOOBUF_X0_Y9_N23
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X11_Y0_N23
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

-- Location: IOOBUF_X5_Y29_N16
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

-- Location: IOOBUF_X0_Y9_N16
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

-- Location: IOOBUF_X7_Y29_N2
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

-- Location: IOOBUF_X0_Y27_N2
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

-- Location: IOOBUF_X7_Y29_N16
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

-- Location: IOOBUF_X0_Y27_N16
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

-- Location: IOOBUF_X0_Y20_N9
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

-- Location: IOOBUF_X23_Y29_N30
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

-- Location: IOOBUF_X0_Y24_N2
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

-- Location: IOOBUF_X30_Y29_N2
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

-- Location: IOOBUF_X0_Y25_N16
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

-- Location: IOOBUF_X39_Y29_N30
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

-- Location: IOOBUF_X41_Y21_N2
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

-- Location: IOOBUF_X37_Y29_N30
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

-- Location: IOOBUF_X0_Y23_N9
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

-- Location: IOOBUF_X11_Y29_N2
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

-- Location: IOOBUF_X41_Y19_N9
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

-- Location: IOOBUF_X3_Y29_N16
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

-- Location: IOOBUF_X7_Y29_N9
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

-- Location: IOOBUF_X9_Y29_N9
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

-- Location: IOOBUF_X9_Y29_N30
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

-- Location: IOOBUF_X9_Y29_N23
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

-- Location: IOOBUF_X16_Y29_N2
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

-- Location: IOOBUF_X41_Y24_N2
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

-- Location: IOOBUF_X32_Y29_N23
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

-- Location: IOOBUF_X0_Y8_N23
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

-- Location: IOOBUF_X0_Y8_N2
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

-- Location: IOOBUF_X35_Y29_N9
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

-- Location: IOOBUF_X28_Y29_N30
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

-- Location: IOOBUF_X37_Y29_N16
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

-- Location: IOOBUF_X32_Y29_N30
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

-- Location: IOOBUF_X41_Y22_N2
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

-- Location: IOOBUF_X0_Y22_N2
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

-- Location: IOOBUF_X41_Y18_N23
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

-- Location: IOOBUF_X0_Y10_N16
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

-- Location: IOOBUF_X41_Y23_N2
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

-- Location: IOOBUF_X41_Y22_N16
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

-- Location: IOOBUF_X11_Y0_N9
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

-- Location: IOOBUF_X9_Y0_N16
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

-- Location: IOOBUF_X14_Y0_N23
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

-- Location: IOOBUF_X0_Y13_N23
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X0_Y21_N16
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

-- Location: IOOBUF_X0_Y26_N2
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

-- Location: IOOBUF_X0_Y20_N2
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

-- Location: IOOBUF_X0_Y21_N2
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

-- Location: IOOBUF_X19_Y0_N9
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

-- Location: IOOBUF_X0_Y11_N2
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

-- Location: IOOBUF_X0_Y11_N9
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

-- Location: IOOBUF_X7_Y29_N23
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

-- Location: IOOBUF_X0_Y11_N23
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

-- Location: IOOBUF_X16_Y0_N30
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

-- Location: IOOBUF_X19_Y0_N16
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X1_Y29_N2
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

-- Location: IOOBUF_X41_Y20_N23
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

-- Location: IOOBUF_X41_Y25_N9
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

-- Location: IOOBUF_X5_Y29_N2
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

-- Location: IOOBUF_X7_Y29_N30
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

-- Location: IOOBUF_X5_Y29_N9
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

-- Location: IOOBUF_X1_Y29_N16
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

-- Location: IOOBUF_X3_Y29_N9
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

-- Location: IOOBUF_X0_Y22_N9
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

-- Location: IOOBUF_X0_Y13_N16
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

-- Location: IOOBUF_X41_Y23_N9
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X41_Y22_N23
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

-- Location: IOOBUF_X41_Y21_N9
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

-- Location: IOOBUF_X41_Y25_N2
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X5_Y29_N23
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

-- Location: IOOBUF_X9_Y0_N23
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

-- Location: IOOBUF_X35_Y29_N23
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

-- Location: IOOBUF_X3_Y29_N23
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

-- Location: IOOBUF_X3_Y29_N30
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

-- Location: IOOBUF_X0_Y13_N2
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

-- Location: IOOBUF_X41_Y20_N16
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

-- Location: IOOBUF_X41_Y20_N9
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

-- Location: IOOBUF_X0_Y26_N9
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

-- Location: IOOBUF_X0_Y22_N23
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X0_Y10_N2
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

-- Location: IOOBUF_X0_Y11_N16
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X0_Y9_N2
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

-- Location: IOOBUF_X41_Y20_N2
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

-- Location: IOOBUF_X1_Y29_N9
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

-- Location: IOOBUF_X0_Y10_N9
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

-- Location: IOOBUF_X11_Y0_N30
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

-- Location: IOOBUF_X0_Y21_N9
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

-- Location: IOOBUF_X0_Y27_N23
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

-- Location: IOOBUF_X1_Y29_N23
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

-- Location: IOOBUF_X0_Y13_N9
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

-- Location: IOOBUF_X0_Y23_N16
\BUS_DATA[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[0]~31_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[0]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\BUS_DATA[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[1]~37_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[1]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\BUS_DATA[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[2]~43_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[2]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\BUS_DATA[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[3]~49_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[3]~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\BUS_DATA[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[4]~55_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\BUS_DATA[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[5]~61_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\BUS_DATA[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[6]~67_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\BUS_DATA[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[7]~73_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[7]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\BUS_DATA[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[8]~79_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[8]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\BUS_DATA[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[9]~85_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[9]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\BUS_DATA[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[10]~91_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[10]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\BUS_DATA[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[11]~97_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[11]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\BUS_DATA[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[12]~103_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[12]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\BUS_DATA[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[13]~109_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[13]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\BUS_DATA[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[14]~115_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[14]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\BUS_DATA[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BUS_SELECTOR|BUS_OUT[15]~121_combout\,
	devoe => ww_devoe,
	o => \BUS_DATA[15]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\OVER_FLOW~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OP|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \OVER_FLOW~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\DONE~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROL_UNIT|PROCESS_DONE~q\,
	devoe => ww_devoe,
	o => \DONE~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\STEP[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROL_UNIT|PROCESS_STEP\(0),
	devoe => ww_devoe,
	o => \STEP[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\STEP[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CONTROL_UNIT|PROCESS_STEP\(1),
	devoe => ww_devoe,
	o => \STEP[1]~output_o\);

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

-- Location: IOIBUF_X37_Y29_N1
\DIN[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(0),
	o => \DIN[0]~input_o\);

-- Location: IOIBUF_X35_Y29_N29
\DIN[23]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(23),
	o => \DIN[23]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\ENABLE~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENABLE,
	o => \ENABLE~input_o\);

-- Location: IOIBUF_X32_Y29_N1
\DIN[25]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(25),
	o => \DIN[25]~input_o\);

-- Location: FF_X16_Y23_N13
\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \DIN[25]~input_o\,
	sload => VCC,
	ena => \CONTROL_UNIT|FLUSH_FUNCTION~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(9));

-- Location: IOIBUF_X41_Y15_N1
\DIN[24]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(24),
	o => \DIN[24]~input_o\);

-- Location: FF_X16_Y23_N19
\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \DIN[24]~input_o\,
	sload => VCC,
	ena => \CONTROL_UNIT|FLUSH_FUNCTION~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(8));

-- Location: LCCOMB_X16_Y23_N14
\CONTROL_UNIT|PRO_COUNTER|COUNT~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|PRO_COUNTER|COUNT~3_combout\ = (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & (!\CONTROL_UNIT|R_IN[0]~5_combout\ & ((\CONTROL_UNIT|PRO_COUNTER|COUNT\(1)) # (\ENABLE~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	datab => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	datac => \ENABLE~input_o\,
	datad => \CONTROL_UNIT|R_IN[0]~5_combout\,
	combout => \CONTROL_UNIT|PRO_COUNTER|COUNT~3_combout\);

-- Location: FF_X15_Y23_N15
\CONTROL_UNIT|PRO_COUNTER|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \CONTROL_UNIT|PRO_COUNTER|COUNT~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0));

-- Location: LCCOMB_X16_Y23_N8
\OP|Mux0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux0~0_combout\ = (\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & (((!\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(8))))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & ((\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & 
-- ((!\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(8)))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & (!\DIN[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[24]~input_o\,
	datab => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(8),
	datac => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	combout => \OP|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y23_N2
\CONTROL_UNIT|COUNTER_DECODER|Equal2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|COUNTER_DECODER|Equal2~0_combout\ = (\CONTROL_UNIT|PRO_COUNTER|COUNT\(1)) # (\CONTROL_UNIT|PRO_COUNTER|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	combout => \CONTROL_UNIT|COUNTER_DECODER|Equal2~0_combout\);

-- Location: LCCOMB_X16_Y23_N6
\OP|Mux0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux0~1_combout\ = (\OP|Mux0~0_combout\ & ((\CONTROL_UNIT|COUNTER_DECODER|Equal2~0_combout\ & (!\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(9))) # (!\CONTROL_UNIT|COUNTER_DECODER|Equal2~0_combout\ & ((!\DIN[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(9),
	datab => \DIN[25]~input_o\,
	datac => \OP|Mux0~0_combout\,
	datad => \CONTROL_UNIT|COUNTER_DECODER|Equal2~0_combout\,
	combout => \OP|Mux0~1_combout\);

-- Location: LCCOMB_X15_Y25_N22
\CONTROL_UNIT|G_OUT~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|G_OUT~0_combout\ = (\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & !\CONTROL_UNIT|PRO_COUNTER|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	combout => \CONTROL_UNIT|G_OUT~0_combout\);

-- Location: LCCOMB_X16_Y23_N18
\CONTROL_UNIT|R_IN[0]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN[0]~4_combout\ = (\CONTROL_UNIT|G_OUT~0_combout\ & (!\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(9) & (!\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(8) & \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|G_OUT~0_combout\,
	datab => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(9),
	datac => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(8),
	datad => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(7),
	combout => \CONTROL_UNIT|R_IN[0]~4_combout\);

-- Location: LCCOMB_X16_Y23_N0
\CONTROL_UNIT|R_IN[0]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN[0]~5_combout\ = (\CONTROL_UNIT|R_IN[0]~4_combout\) # ((!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\OP|Mux0~1_combout\ & !\CONTROL_UNIT|COUNTER_DECODER|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \OP|Mux0~1_combout\,
	datac => \CONTROL_UNIT|COUNTER_DECODER|Equal2~0_combout\,
	datad => \CONTROL_UNIT|R_IN[0]~4_combout\,
	combout => \CONTROL_UNIT|R_IN[0]~5_combout\);

-- Location: LCCOMB_X15_Y23_N6
\CONTROL_UNIT|PRO_COUNTER|COUNT~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|PRO_COUNTER|COUNT~2_combout\ = (!\CONTROL_UNIT|R_IN[0]~5_combout\ & (\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) $ (\CONTROL_UNIT|PRO_COUNTER|COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROL_UNIT|R_IN[0]~5_combout\,
	datac => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	combout => \CONTROL_UNIT|PRO_COUNTER|COUNT~2_combout\);

-- Location: FF_X15_Y23_N7
\CONTROL_UNIT|PRO_COUNTER|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \CONTROL_UNIT|PRO_COUNTER|COUNT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1));

-- Location: LCCOMB_X16_Y23_N20
\CONTROL_UNIT|FLUSH_FUNCTION\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|FLUSH_FUNCTION~combout\ = (\ENABLE~input_o\ & (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & !\CONTROL_UNIT|PRO_COUNTER|COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENABLE~input_o\,
	datab => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	combout => \CONTROL_UNIT|FLUSH_FUNCTION~combout\);

-- Location: FF_X16_Y23_N21
\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \DIN[23]~input_o\,
	sload => VCC,
	ena => \CONTROL_UNIT|FLUSH_FUNCTION~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(7));

-- Location: LCCOMB_X16_Y23_N30
\CONTROL_UNIT|COMMAND_NUM[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ = (\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & (((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(7))))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & ((\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & 
-- ((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(7)))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & (\DIN[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[23]~input_o\,
	datab => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(7),
	datac => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	combout => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\);

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

-- Location: LCCOMB_X16_Y23_N10
\BUS_SELECTOR|BUS_OUT[0]~122\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~122_combout\ = (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & \OP|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	datab => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	datac => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datad => \OP|Mux0~1_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~122_combout\);

-- Location: FF_X15_Y25_N5
\REG_A|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[0]~31_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(0));

-- Location: IOIBUF_X41_Y15_N8
\DIN[22]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(22),
	o => \DIN[22]~input_o\);

-- Location: FF_X16_Y23_N29
\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \DIN[22]~input_o\,
	sload => VCC,
	ena => \CONTROL_UNIT|FLUSH_FUNCTION~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(6));

-- Location: LCCOMB_X16_Y23_N28
\CONTROL_UNIT|COMMAND_NUM[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|COMMAND_NUM[0]~0_combout\ = (\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & (((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(6))))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & ((\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & 
-- ((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(6)))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & (\DIN[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[22]~input_o\,
	datab => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	datac => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(6),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	combout => \CONTROL_UNIT|COMMAND_NUM[0]~0_combout\);

-- Location: LCCOMB_X17_Y25_N6
\OP|Add0~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~16_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\OP|Mux0~1_combout\ & (\CONTROL_UNIT|COMMAND_NUM[0]~0_combout\ $ (!\BUS_SELECTOR|BUS_OUT[0]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \CONTROL_UNIT|COMMAND_NUM[0]~0_combout\,
	datac => \OP|Mux0~1_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[0]~31_combout\,
	combout => \OP|Add0~16_combout\);

-- Location: LCCOMB_X16_Y23_N12
\OP|Mux0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux0~2_combout\ = (\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & (((!\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(9))))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & ((\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & 
-- ((!\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(9)))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & (!\DIN[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[25]~input_o\,
	datab => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	datac => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(9),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	combout => \OP|Mux0~2_combout\);

-- Location: LCCOMB_X17_Y23_N22
\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\ = (\OP|Mux0~2_combout\ & (\OP|Mux0~0_combout\ & !\CONTROL_UNIT|COMMAND_NUM[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Mux0~2_combout\,
	datac => \OP|Mux0~0_combout\,
	datad => \CONTROL_UNIT|COMMAND_NUM[0]~0_combout\,
	combout => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\);

-- Location: LCCOMB_X17_Y25_N14
\OP|Add0~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~18_cout\ = CARRY((!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	datad => VCC,
	cout => \OP|Add0~18_cout\);

-- Location: LCCOMB_X17_Y25_N16
\OP|Add0~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~19_combout\ = (\OP|Add0~16_combout\ & ((\REG_A|DATA\(0) & (!\OP|Add0~18_cout\)) # (!\REG_A|DATA\(0) & ((\OP|Add0~18_cout\) # (GND))))) # (!\OP|Add0~16_combout\ & ((\REG_A|DATA\(0) & (\OP|Add0~18_cout\ & VCC)) # (!\REG_A|DATA\(0) & 
-- (!\OP|Add0~18_cout\))))
-- \OP|Add0~20\ = CARRY((\OP|Add0~16_combout\ & ((!\OP|Add0~18_cout\) # (!\REG_A|DATA\(0)))) # (!\OP|Add0~16_combout\ & (!\REG_A|DATA\(0) & !\OP|Add0~18_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~16_combout\,
	datab => \REG_A|DATA\(0),
	datad => VCC,
	cin => \OP|Add0~18_cout\,
	combout => \OP|Add0~19_combout\,
	cout => \OP|Add0~20\);

-- Location: LCCOMB_X16_Y25_N20
\OP|Mux16~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux16~2_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Mux0~1_combout\ & ((\OP|Add0~19_combout\))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(0))))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (((\REG_A|DATA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \OP|Mux0~1_combout\,
	datac => \REG_A|DATA\(0),
	datad => \OP|Add0~19_combout\,
	combout => \OP|Mux16~2_combout\);

-- Location: LCCOMB_X16_Y25_N18
\CONTROL_UNIT|G_IN~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|G_IN~3_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & (\OP|Mux0~1_combout\ & \CONTROL_UNIT|PRO_COUNTER|COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	datac => \OP|Mux0~1_combout\,
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	combout => \CONTROL_UNIT|G_IN~3_combout\);

-- Location: FF_X16_Y25_N21
\REG_G|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux16~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(0));

-- Location: LCCOMB_X15_Y25_N30
\BUS_SELECTOR|BUS_OUT[0]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~10_combout\ = (\OP|Mux0~1_combout\ & \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP|Mux0~1_combout\,
	datad => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~10_combout\);

-- Location: LCCOMB_X16_Y23_N4
\CONTROL_UNIT|D_OUT~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|D_OUT~0_combout\ = (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (!\CONTROL_UNIT|COUNTER_DECODER|Equal2~0_combout\ & (\OP|Mux0~1_combout\ & \CONTROL_UNIT|COMMAND_NUM[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \CONTROL_UNIT|COUNTER_DECODER|Equal2~0_combout\,
	datac => \OP|Mux0~1_combout\,
	datad => \CONTROL_UNIT|COMMAND_NUM[0]~0_combout\,
	combout => \CONTROL_UNIT|D_OUT~0_combout\);

-- Location: LCCOMB_X15_Y25_N0
\BUS_SELECTOR|BUS_OUT[0]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~11_combout\ = (\CONTROL_UNIT|D_OUT~0_combout\) # ((\BUS_SELECTOR|BUS_OUT[0]~10_combout\ & (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & \CONTROL_UNIT|PRO_COUNTER|COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~10_combout\,
	datab => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	datac => \CONTROL_UNIT|D_OUT~0_combout\,
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	combout => \BUS_SELECTOR|BUS_OUT[0]~11_combout\);

-- Location: IOIBUF_X0_Y9_N8
\DIN[16]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(16),
	o => \DIN[16]~input_o\);

-- Location: FF_X15_Y23_N13
\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \DIN[16]~input_o\,
	sload => VCC,
	ena => \CONTROL_UNIT|FLUSH_FUNCTION~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(0));

-- Location: LCCOMB_X15_Y23_N12
\CONTROL_UNIT|Y_NUM[0]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|Y_NUM[0]~1_combout\ = (\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & (((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(0))))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & ((\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & 
-- ((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(0)))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & (\DIN[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[16]~input_o\,
	datab => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	datac => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(0),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	combout => \CONTROL_UNIT|Y_NUM[0]~1_combout\);

-- Location: IOIBUF_X16_Y0_N1
\DIN[18]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(18),
	o => \DIN[18]~input_o\);

-- Location: FF_X15_Y23_N19
\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \DIN[18]~input_o\,
	sload => VCC,
	ena => \CONTROL_UNIT|FLUSH_FUNCTION~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(2));

-- Location: LCCOMB_X15_Y23_N18
\CONTROL_UNIT|Y_NUM[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|Y_NUM[2]~2_combout\ = (\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & (((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(2))))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & ((\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & 
-- ((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(2)))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & (\DIN[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[18]~input_o\,
	datab => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	datac => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(2),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	combout => \CONTROL_UNIT|Y_NUM[2]~2_combout\);

-- Location: IOIBUF_X0_Y7_N15
\DIN[17]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(17),
	o => \DIN[17]~input_o\);

-- Location: FF_X15_Y23_N11
\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \DIN[17]~input_o\,
	sload => VCC,
	ena => \CONTROL_UNIT|FLUSH_FUNCTION~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(1));

-- Location: LCCOMB_X15_Y23_N10
\CONTROL_UNIT|Y_NUM[1]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|Y_NUM[1]~0_combout\ = (\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & (((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(1))))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & ((\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & 
-- ((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(1)))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & (\DIN[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[17]~input_o\,
	datab => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	datac => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(1),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	combout => \CONTROL_UNIT|Y_NUM[1]~0_combout\);

-- Location: LCCOMB_X15_Y23_N14
\CONTROL_UNIT|G_IN~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|G_IN~2_combout\ = (\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & !\CONTROL_UNIT|PRO_COUNTER|COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	combout => \CONTROL_UNIT|G_IN~2_combout\);

-- Location: LCCOMB_X16_Y23_N22
\CONTROL_UNIT|R_OUT[4]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_OUT[4]~0_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (((!\CONTROL_UNIT|G_IN~2_combout\)))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\CONTROL_UNIT|COUNTER_DECODER|Equal2~0_combout\) # 
-- ((\CONTROL_UNIT|COMMAND_NUM[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \CONTROL_UNIT|COUNTER_DECODER|Equal2~0_combout\,
	datac => \CONTROL_UNIT|COMMAND_NUM[0]~0_combout\,
	datad => \CONTROL_UNIT|G_IN~2_combout\,
	combout => \CONTROL_UNIT|R_OUT[4]~0_combout\);

-- Location: LCCOMB_X15_Y23_N28
\CONTROL_UNIT|R_OUT[4]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_OUT[4]~1_combout\ = (\OP|Mux0~1_combout\ & (!\CONTROL_UNIT|Y_NUM[1]~0_combout\ & !\CONTROL_UNIT|R_OUT[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Mux0~1_combout\,
	datab => \CONTROL_UNIT|Y_NUM[1]~0_combout\,
	datad => \CONTROL_UNIT|R_OUT[4]~0_combout\,
	combout => \CONTROL_UNIT|R_OUT[4]~1_combout\);

-- Location: IOIBUF_X11_Y0_N15
\DIN[20]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(20),
	o => \DIN[20]~input_o\);

-- Location: FF_X15_Y23_N17
\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \DIN[20]~input_o\,
	sload => VCC,
	ena => \CONTROL_UNIT|FLUSH_FUNCTION~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(4));

-- Location: LCCOMB_X15_Y23_N16
\CONTROL_UNIT|X_NUM[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|X_NUM[1]~1_combout\ = (\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & (((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(4))))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & ((\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & 
-- ((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(4)))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & (\DIN[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[20]~input_o\,
	datab => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	datac => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(4),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	combout => \CONTROL_UNIT|X_NUM[1]~1_combout\);

-- Location: IOIBUF_X41_Y23_N15
\DIN[21]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(21),
	o => \DIN[21]~input_o\);

-- Location: FF_X15_Y23_N23
\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \DIN[21]~input_o\,
	sload => VCC,
	ena => \CONTROL_UNIT|FLUSH_FUNCTION~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(5));

-- Location: LCCOMB_X15_Y23_N22
\CONTROL_UNIT|X_NUM[2]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|X_NUM[2]~0_combout\ = (\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & (((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(5))))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & ((\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & 
-- ((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(5)))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & (\DIN[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[21]~input_o\,
	datab => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	datac => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(5),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	combout => \CONTROL_UNIT|X_NUM[2]~0_combout\);

-- Location: IOIBUF_X0_Y12_N22
\DIN[19]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(19),
	o => \DIN[19]~input_o\);

-- Location: FF_X15_Y23_N3
\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \DIN[19]~input_o\,
	sload => VCC,
	ena => \CONTROL_UNIT|FLUSH_FUNCTION~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(3));

-- Location: LCCOMB_X15_Y23_N2
\CONTROL_UNIT|X_NUM[0]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|X_NUM[0]~2_combout\ = (\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & (((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(3))))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(0) & ((\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & 
-- ((\CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(3)))) # (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & (\DIN[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[19]~input_o\,
	datab => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	datac => \CONTROL_UNIT|FUNCTION_CACHE_ENTITY|FUNCTION_CACHE\(3),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	combout => \CONTROL_UNIT|X_NUM[0]~2_combout\);

-- Location: LCCOMB_X15_Y25_N2
\BUS_SELECTOR|BUS_OUT[0]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~12_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~122_combout\ & (!\CONTROL_UNIT|X_NUM[1]~1_combout\ & (!\CONTROL_UNIT|X_NUM[2]~0_combout\ & !\CONTROL_UNIT|X_NUM[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	datab => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datac => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	datad => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~12_combout\);

-- Location: LCCOMB_X15_Y25_N20
\BUS_SELECTOR|BUS_OUT[0]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~13_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~12_combout\) # ((!\CONTROL_UNIT|Y_NUM[0]~1_combout\ & (!\CONTROL_UNIT|Y_NUM[2]~2_combout\ & \CONTROL_UNIT|R_OUT[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|Y_NUM[0]~1_combout\,
	datab => \CONTROL_UNIT|Y_NUM[2]~2_combout\,
	datac => \CONTROL_UNIT|R_OUT[4]~1_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[0]~12_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~13_combout\);

-- Location: LCCOMB_X15_Y25_N26
\BUS_SELECTOR|BUS_OUT[0]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~14_combout\ = (\CONTROL_UNIT|D_OUT~0_combout\) # ((\BUS_SELECTOR|BUS_OUT[0]~13_combout\ & ((!\CONTROL_UNIT|G_OUT~0_combout\) # (!\BUS_SELECTOR|BUS_OUT[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~10_combout\,
	datab => \CONTROL_UNIT|D_OUT~0_combout\,
	datac => \CONTROL_UNIT|G_OUT~0_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[0]~13_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~14_combout\);

-- Location: LCCOMB_X16_Y23_N24
\BUS_SELECTOR|BUS_OUT[0]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~20_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~122_combout\ & (!\CONTROL_UNIT|X_NUM[2]~0_combout\ & (\CONTROL_UNIT|X_NUM[1]~1_combout\ & \CONTROL_UNIT|X_NUM[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	datab => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	datac => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datad => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~20_combout\);

-- Location: LCCOMB_X14_Y23_N22
\CONTROL_UNIT|R_OUT[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_OUT[1]~2_combout\ = (\CONTROL_UNIT|X_NUM[0]~2_combout\ & (!\CONTROL_UNIT|X_NUM[1]~1_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~122_combout\ & !\CONTROL_UNIT|X_NUM[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	datab => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	datad => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	combout => \CONTROL_UNIT|R_OUT[1]~2_combout\);

-- Location: LCCOMB_X14_Y23_N28
\CONTROL_UNIT|R_OUT[1]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_OUT[1]~3_combout\ = (\CONTROL_UNIT|R_OUT[1]~2_combout\) # ((\CONTROL_UNIT|Y_NUM[0]~1_combout\ & (!\CONTROL_UNIT|Y_NUM[2]~2_combout\ & \CONTROL_UNIT|R_OUT[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|Y_NUM[0]~1_combout\,
	datab => \CONTROL_UNIT|Y_NUM[2]~2_combout\,
	datac => \CONTROL_UNIT|R_OUT[1]~2_combout\,
	datad => \CONTROL_UNIT|R_OUT[4]~1_combout\,
	combout => \CONTROL_UNIT|R_OUT[1]~3_combout\);

-- Location: LCCOMB_X14_Y23_N10
\BUS_SELECTOR|BUS_OUT[0]~125\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~125_combout\ = (!\DIN[22]~input_o\ & (!\CONTROL_UNIT|PRO_COUNTER|COUNT\(1) & !\CONTROL_UNIT|PRO_COUNTER|COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[22]~input_o\,
	datac => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	datad => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	combout => \BUS_SELECTOR|BUS_OUT[0]~125_combout\);

-- Location: LCCOMB_X14_Y23_N20
\BUS_SELECTOR|BUS_OUT[0]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~16_combout\ = (\OP|Mux0~1_combout\ & ((\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\CONTROL_UNIT|G_IN~2_combout\))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~125_combout\,
	datab => \CONTROL_UNIT|G_IN~2_combout\,
	datac => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datad => \OP|Mux0~1_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~16_combout\);

-- Location: LCCOMB_X12_Y23_N12
\BUS_SELECTOR|BUS_OUT[0]~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~19_combout\ = (!\CONTROL_UNIT|Y_NUM[2]~2_combout\ & (\CONTROL_UNIT|Y_NUM[0]~1_combout\ & (\CONTROL_UNIT|Y_NUM[1]~0_combout\ & \BUS_SELECTOR|BUS_OUT[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|Y_NUM[2]~2_combout\,
	datab => \CONTROL_UNIT|Y_NUM[0]~1_combout\,
	datac => \CONTROL_UNIT|Y_NUM[1]~0_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[0]~16_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~19_combout\);

-- Location: LCCOMB_X14_Y23_N6
\BUS_SELECTOR|BUS_OUT[0]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~17_combout\ = (!\CONTROL_UNIT|Y_NUM[2]~2_combout\ & (\CONTROL_UNIT|Y_NUM[1]~0_combout\ & \BUS_SELECTOR|BUS_OUT[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROL_UNIT|Y_NUM[2]~2_combout\,
	datac => \CONTROL_UNIT|Y_NUM[1]~0_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[0]~16_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~17_combout\);

-- Location: LCCOMB_X14_Y23_N18
\BUS_SELECTOR|BUS_OUT[0]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~15_combout\ = (\CONTROL_UNIT|X_NUM[0]~2_combout\) # (((\CONTROL_UNIT|X_NUM[2]~0_combout\) # (!\BUS_SELECTOR|BUS_OUT[0]~122_combout\)) # (!\CONTROL_UNIT|X_NUM[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	datab => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	datad => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~15_combout\);

-- Location: LCCOMB_X14_Y23_N12
\BUS_SELECTOR|BUS_OUT[0]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~18_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~15_combout\ & (!\CONTROL_UNIT|R_OUT[1]~3_combout\ & ((\CONTROL_UNIT|Y_NUM[0]~1_combout\) # (!\BUS_SELECTOR|BUS_OUT[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~17_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~15_combout\,
	datac => \CONTROL_UNIT|Y_NUM[0]~1_combout\,
	datad => \CONTROL_UNIT|R_OUT[1]~3_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~18_combout\);

-- Location: LCCOMB_X14_Y23_N26
\BUS_SELECTOR|BUS_OUT[0]~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~21_combout\ = (\CONTROL_UNIT|R_OUT[1]~3_combout\) # ((\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~20_combout\) # (\BUS_SELECTOR|BUS_OUT[0]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~20_combout\,
	datab => \CONTROL_UNIT|R_OUT[1]~3_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~19_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~21_combout\);

-- Location: LCCOMB_X17_Y23_N12
\REG_1|DATA[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[0]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[0]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[0]~31_combout\,
	combout => \REG_1|DATA[0]~feeder_combout\);

-- Location: LCCOMB_X17_Y23_N18
\CONTROL_UNIT|R_IN[1]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN[1]~7_combout\ = (\CONTROL_UNIT|X_NUM[0]~2_combout\ & (!\CONTROL_UNIT|X_NUM[1]~1_combout\ & (\CONTROL_UNIT|R_IN[0]~5_combout\ & !\CONTROL_UNIT|X_NUM[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	datab => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datac => \CONTROL_UNIT|R_IN[0]~5_combout\,
	datad => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	combout => \CONTROL_UNIT|R_IN[1]~7_combout\);

-- Location: FF_X17_Y23_N13
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
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(0));

-- Location: LCCOMB_X16_Y24_N20
\CONTROL_UNIT|R_IN[3]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN[3]~9_combout\ = (\CONTROL_UNIT|X_NUM[0]~2_combout\ & (\CONTROL_UNIT|R_IN[0]~5_combout\ & (\CONTROL_UNIT|X_NUM[1]~1_combout\ & !\CONTROL_UNIT|X_NUM[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	datab => \CONTROL_UNIT|R_IN[0]~5_combout\,
	datac => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datad => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	combout => \CONTROL_UNIT|R_IN[3]~9_combout\);

-- Location: FF_X14_Y23_N15
\REG_3|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[0]~31_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(0));

-- Location: LCCOMB_X17_Y23_N8
\CONTROL_UNIT|R_IN[2]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN[2]~8_combout\ = (!\CONTROL_UNIT|X_NUM[0]~2_combout\ & (\CONTROL_UNIT|X_NUM[1]~1_combout\ & (\CONTROL_UNIT|R_IN[0]~5_combout\ & !\CONTROL_UNIT|X_NUM[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	datab => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datac => \CONTROL_UNIT|R_IN[0]~5_combout\,
	datad => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	combout => \CONTROL_UNIT|R_IN[2]~8_combout\);

-- Location: FF_X14_Y23_N1
\REG_2|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[0]~31_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(0));

-- Location: LCCOMB_X16_Y23_N16
\BUS_SELECTOR|BUS_OUT[0]~123\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~123_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~122_combout\ & (\CONTROL_UNIT|X_NUM[2]~0_combout\ & (\CONTROL_UNIT|X_NUM[1]~1_combout\ & \CONTROL_UNIT|X_NUM[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	datab => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	datac => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datad => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~123_combout\);

-- Location: LCCOMB_X15_Y23_N26
\CONTROL_UNIT|R_OUT[4]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_OUT[4]~4_combout\ = (\CONTROL_UNIT|X_NUM[2]~0_combout\ & (!\CONTROL_UNIT|X_NUM[1]~1_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~122_combout\ & !\CONTROL_UNIT|X_NUM[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	datab => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	datad => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	combout => \CONTROL_UNIT|R_OUT[4]~4_combout\);

-- Location: LCCOMB_X15_Y23_N8
\CONTROL_UNIT|R_OUT[4]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_OUT[4]~6_combout\ = (!\CONTROL_UNIT|Y_NUM[0]~1_combout\ & (\CONTROL_UNIT|Y_NUM[2]~2_combout\ & \CONTROL_UNIT|R_OUT[4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|Y_NUM[0]~1_combout\,
	datab => \CONTROL_UNIT|Y_NUM[2]~2_combout\,
	datad => \CONTROL_UNIT|R_OUT[4]~1_combout\,
	combout => \CONTROL_UNIT|R_OUT[4]~6_combout\);

-- Location: LCCOMB_X14_Y23_N30
\CONTROL_UNIT|Y_DECODER|Equal6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|Y_DECODER|Equal6~0_combout\ = (!\CONTROL_UNIT|Y_NUM[0]~1_combout\ & (\CONTROL_UNIT|Y_NUM[1]~0_combout\ & \CONTROL_UNIT|Y_NUM[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROL_UNIT|Y_NUM[0]~1_combout\,
	datac => \CONTROL_UNIT|Y_NUM[1]~0_combout\,
	datad => \CONTROL_UNIT|Y_NUM[2]~2_combout\,
	combout => \CONTROL_UNIT|Y_DECODER|Equal6~0_combout\);

-- Location: LCCOMB_X14_Y23_N24
\CONTROL_UNIT|X_DECODER|Equal6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|X_DECODER|Equal6~0_combout\ = (!\CONTROL_UNIT|X_NUM[0]~2_combout\ & (\CONTROL_UNIT|X_NUM[1]~1_combout\ & \CONTROL_UNIT|X_NUM[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	datab => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datad => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	combout => \CONTROL_UNIT|X_DECODER|Equal6~0_combout\);

-- Location: LCCOMB_X14_Y23_N16
\BUS_SELECTOR|BUS_OUT[0]~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~23_combout\ = (\CONTROL_UNIT|Y_DECODER|Equal6~0_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~16_combout\) # ((\CONTROL_UNIT|X_DECODER|Equal6~0_combout\ & \BUS_SELECTOR|BUS_OUT[0]~122_combout\)))) # 
-- (!\CONTROL_UNIT|Y_DECODER|Equal6~0_combout\ & (\CONTROL_UNIT|X_DECODER|Equal6~0_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|Y_DECODER|Equal6~0_combout\,
	datab => \CONTROL_UNIT|X_DECODER|Equal6~0_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[0]~16_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~23_combout\);

-- Location: LCCOMB_X15_Y23_N4
\CONTROL_UNIT|R_OUT[5]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_OUT[5]~5_combout\ = ((\CONTROL_UNIT|X_NUM[1]~1_combout\) # ((!\CONTROL_UNIT|X_NUM[0]~2_combout\) # (!\BUS_SELECTOR|BUS_OUT[0]~122_combout\))) # (!\CONTROL_UNIT|X_NUM[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	datab => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	datad => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	combout => \CONTROL_UNIT|R_OUT[5]~5_combout\);

-- Location: LCCOMB_X15_Y23_N0
\CONTROL_UNIT|R_OUT[5]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_OUT[5]~7_combout\ = (\CONTROL_UNIT|R_OUT[5]~5_combout\ & (((!\CONTROL_UNIT|R_OUT[4]~1_combout\) # (!\CONTROL_UNIT|Y_NUM[2]~2_combout\)) # (!\CONTROL_UNIT|Y_NUM[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|Y_NUM[0]~1_combout\,
	datab => \CONTROL_UNIT|Y_NUM[2]~2_combout\,
	datac => \CONTROL_UNIT|R_OUT[5]~5_combout\,
	datad => \CONTROL_UNIT|R_OUT[4]~1_combout\,
	combout => \CONTROL_UNIT|R_OUT[5]~7_combout\);

-- Location: LCCOMB_X15_Y23_N20
\BUS_SELECTOR|BUS_OUT[0]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~24_combout\ = (\CONTROL_UNIT|R_OUT[4]~4_combout\) # ((\CONTROL_UNIT|R_OUT[4]~6_combout\) # ((\BUS_SELECTOR|BUS_OUT[0]~23_combout\ & \CONTROL_UNIT|R_OUT[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|R_OUT[4]~4_combout\,
	datab => \CONTROL_UNIT|R_OUT[4]~6_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~23_combout\,
	datad => \CONTROL_UNIT|R_OUT[5]~7_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~24_combout\);

-- Location: LCCOMB_X15_Y23_N24
\BUS_SELECTOR|BUS_OUT[0]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~22_combout\ = (!\CONTROL_UNIT|R_OUT[4]~4_combout\ & (\CONTROL_UNIT|R_OUT[5]~5_combout\ & ((!\CONTROL_UNIT|R_OUT[4]~1_combout\) # (!\CONTROL_UNIT|Y_NUM[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|R_OUT[4]~4_combout\,
	datab => \CONTROL_UNIT|Y_NUM[2]~2_combout\,
	datac => \CONTROL_UNIT|R_OUT[5]~5_combout\,
	datad => \CONTROL_UNIT|R_OUT[4]~1_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~22_combout\);

-- Location: LCCOMB_X11_Y23_N0
\BUS_SELECTOR|BUS_OUT[0]~124\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~124_combout\ = (\CONTROL_UNIT|Y_NUM[2]~2_combout\ & (\CONTROL_UNIT|Y_NUM[0]~1_combout\ & (\CONTROL_UNIT|Y_NUM[1]~0_combout\ & \BUS_SELECTOR|BUS_OUT[0]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|Y_NUM[2]~2_combout\,
	datab => \CONTROL_UNIT|Y_NUM[0]~1_combout\,
	datac => \CONTROL_UNIT|Y_NUM[1]~0_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[0]~16_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~124_combout\);

-- Location: LCCOMB_X15_Y23_N30
\BUS_SELECTOR|BUS_OUT[0]~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~25_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~123_combout\) # ((\BUS_SELECTOR|BUS_OUT[0]~24_combout\) # (\BUS_SELECTOR|BUS_OUT[0]~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~123_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[0]~124_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~25_combout\);

-- Location: LCCOMB_X16_Y22_N0
\REG_6|DATA[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[0]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[0]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[0]~31_combout\,
	combout => \REG_6|DATA[0]~feeder_combout\);

-- Location: LCCOMB_X17_Y23_N20
\CONTROL_UNIT|R_IN[6]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN[6]~12_combout\ = (!\CONTROL_UNIT|X_NUM[0]~2_combout\ & (\CONTROL_UNIT|X_NUM[1]~1_combout\ & (\CONTROL_UNIT|R_IN[0]~5_combout\ & \CONTROL_UNIT|X_NUM[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	datab => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datac => \CONTROL_UNIT|R_IN[0]~5_combout\,
	datad => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	combout => \CONTROL_UNIT|R_IN[6]~12_combout\);

-- Location: FF_X16_Y22_N1
\REG_6|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[0]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(0));

-- Location: LCCOMB_X16_Y24_N8
\CONTROL_UNIT|R_IN[7]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN[7]~13_combout\ = (\CONTROL_UNIT|X_NUM[0]~2_combout\ & (\CONTROL_UNIT|R_IN[0]~5_combout\ & (\CONTROL_UNIT|X_NUM[1]~1_combout\ & \CONTROL_UNIT|X_NUM[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	datab => \CONTROL_UNIT|R_IN[0]~5_combout\,
	datac => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datad => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	combout => \CONTROL_UNIT|R_IN[7]~13_combout\);

-- Location: FF_X15_Y22_N21
\REG_7|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[0]~31_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(0));

-- Location: LCCOMB_X16_Y22_N4
\REG_4|DATA[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[0]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[0]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[0]~31_combout\,
	combout => \REG_4|DATA[0]~feeder_combout\);

-- Location: LCCOMB_X17_Y23_N10
\CONTROL_UNIT|R_IN[4]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN[4]~10_combout\ = (!\CONTROL_UNIT|X_NUM[0]~2_combout\ & (!\CONTROL_UNIT|X_NUM[1]~1_combout\ & (\CONTROL_UNIT|R_IN[0]~5_combout\ & \CONTROL_UNIT|X_NUM[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	datab => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datac => \CONTROL_UNIT|R_IN[0]~5_combout\,
	datad => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	combout => \CONTROL_UNIT|R_IN[4]~10_combout\);

-- Location: FF_X16_Y22_N5
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
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(0));

-- Location: LCCOMB_X16_Y24_N30
\CONTROL_UNIT|R_IN[5]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN[5]~11_combout\ = (\CONTROL_UNIT|X_NUM[0]~2_combout\ & (\CONTROL_UNIT|R_IN[0]~5_combout\ & (!\CONTROL_UNIT|X_NUM[1]~1_combout\ & \CONTROL_UNIT|X_NUM[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	datab => \CONTROL_UNIT|R_IN[0]~5_combout\,
	datac => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datad => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	combout => \CONTROL_UNIT|R_IN[5]~11_combout\);

-- Location: FF_X15_Y22_N13
\REG_5|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[0]~31_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(0));

-- Location: LCCOMB_X15_Y22_N12
\BUS_SELECTOR|BUS_OUT[0]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~26_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~24_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (\REG_4|DATA\(0))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_5|DATA\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(0),
	datab => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	datac => \REG_5|DATA\(0),
	datad => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~26_combout\);

-- Location: LCCOMB_X15_Y22_N20
\BUS_SELECTOR|BUS_OUT[0]~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~27_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~26_combout\ & (\REG_6|DATA\(0))) # (!\BUS_SELECTOR|BUS_OUT[0]~26_combout\ & ((\REG_7|DATA\(0)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	datab => \REG_6|DATA\(0),
	datac => \REG_7|DATA\(0),
	datad => \BUS_SELECTOR|BUS_OUT[0]~26_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~27_combout\);

-- Location: LCCOMB_X14_Y23_N0
\BUS_SELECTOR|BUS_OUT[0]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~28_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~21_combout\) # ((\BUS_SELECTOR|BUS_OUT[0]~27_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & 
-- (\REG_2|DATA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datac => \REG_2|DATA\(0),
	datad => \BUS_SELECTOR|BUS_OUT[0]~27_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~28_combout\);

-- Location: LCCOMB_X14_Y23_N14
\BUS_SELECTOR|BUS_OUT[0]~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~29_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~28_combout\ & ((\REG_3|DATA\(0)))) # (!\BUS_SELECTOR|BUS_OUT[0]~28_combout\ & (\REG_1|DATA\(0))))) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[0]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datab => \REG_1|DATA\(0),
	datac => \REG_3|DATA\(0),
	datad => \BUS_SELECTOR|BUS_OUT[0]~28_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~29_combout\);

-- Location: LCCOMB_X15_Y25_N12
\BUS_SELECTOR|BUS_OUT[0]~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~30_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~11_combout\) # ((\REG_0|DATA\(0))))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & 
-- ((\BUS_SELECTOR|BUS_OUT[0]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datac => \REG_0|DATA\(0),
	datad => \BUS_SELECTOR|BUS_OUT[0]~29_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~30_combout\);

-- Location: LCCOMB_X15_Y25_N4
\BUS_SELECTOR|BUS_OUT[0]~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[0]~31_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~30_combout\ & (\DIN[0]~input_o\)) # (!\BUS_SELECTOR|BUS_OUT[0]~30_combout\ & ((\REG_G|DATA\(0)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[0]~input_o\,
	datab => \REG_G|DATA\(0),
	datac => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[0]~30_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[0]~31_combout\);

-- Location: LCCOMB_X16_Y24_N6
\CONTROL_UNIT|R_IN[0]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|R_IN[0]~6_combout\ = (!\CONTROL_UNIT|X_NUM[0]~2_combout\ & (\CONTROL_UNIT|R_IN[0]~5_combout\ & (!\CONTROL_UNIT|X_NUM[1]~1_combout\ & !\CONTROL_UNIT|X_NUM[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|X_NUM[0]~2_combout\,
	datab => \CONTROL_UNIT|R_IN[0]~5_combout\,
	datac => \CONTROL_UNIT|X_NUM[1]~1_combout\,
	datad => \CONTROL_UNIT|X_NUM[2]~0_combout\,
	combout => \CONTROL_UNIT|R_IN[0]~6_combout\);

-- Location: FF_X15_Y25_N13
\REG_0|DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[0]~31_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(0));

-- Location: IOIBUF_X39_Y29_N1
\DIN[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(1),
	o => \DIN[1]~input_o\);

-- Location: FF_X15_Y25_N29
\REG_A|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[1]~37_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(1));

-- Location: LCCOMB_X16_Y25_N2
\OP|Add0~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~15_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\OP|Mux0~1_combout\ & (\CONTROL_UNIT|COMMAND_NUM[0]~0_combout\ $ (\BUS_SELECTOR|BUS_OUT[1]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \CONTROL_UNIT|COMMAND_NUM[0]~0_combout\,
	datac => \OP|Mux0~1_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[1]~37_combout\,
	combout => \OP|Add0~15_combout\);

-- Location: LCCOMB_X17_Y25_N18
\OP|Add0~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~21_combout\ = ((\OP|Add0~15_combout\ $ (\REG_A|DATA\(1) $ (!\OP|Add0~20\)))) # (GND)
-- \OP|Add0~22\ = CARRY((\OP|Add0~15_combout\ & ((\REG_A|DATA\(1)) # (!\OP|Add0~20\))) # (!\OP|Add0~15_combout\ & (\REG_A|DATA\(1) & !\OP|Add0~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~15_combout\,
	datab => \REG_A|DATA\(1),
	datad => VCC,
	cin => \OP|Add0~20\,
	combout => \OP|Add0~21_combout\,
	cout => \OP|Add0~22\);

-- Location: LCCOMB_X16_Y25_N26
\OP|Mux15~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux15~2_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Mux0~1_combout\ & ((\OP|Add0~21_combout\))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(1))))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\REG_A|DATA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \REG_A|DATA\(1),
	datac => \OP|Mux0~1_combout\,
	datad => \OP|Add0~21_combout\,
	combout => \OP|Mux15~2_combout\);

-- Location: FF_X16_Y25_N27
\REG_G|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux15~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(1));

-- Location: FF_X14_Y25_N5
\REG_1|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[1]~37_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(1));

-- Location: LCCOMB_X15_Y24_N4
\REG_2|DATA[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_2|DATA[1]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[1]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[1]~37_combout\,
	combout => \REG_2|DATA[1]~feeder_combout\);

-- Location: FF_X15_Y24_N5
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
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(1));

-- Location: LCCOMB_X14_Y25_N4
\BUS_SELECTOR|BUS_OUT[1]~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[1]~34_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~21_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & (\REG_1|DATA\(1))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\REG_2|DATA\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datac => \REG_1|DATA\(1),
	datad => \REG_2|DATA\(1),
	combout => \BUS_SELECTOR|BUS_OUT[1]~34_combout\);

-- Location: FF_X14_Y25_N29
\REG_3|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[1]~37_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(1));

-- Location: LCCOMB_X16_Y22_N30
\REG_6|DATA[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[1]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[1]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[1]~37_combout\,
	combout => \REG_6|DATA[1]~feeder_combout\);

-- Location: FF_X16_Y22_N31
\REG_6|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[1]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(1));

-- Location: FF_X15_Y22_N27
\REG_7|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[1]~37_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(1));

-- Location: LCCOMB_X16_Y22_N6
\REG_4|DATA[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[1]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[1]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[1]~37_combout\,
	combout => \REG_4|DATA[1]~feeder_combout\);

-- Location: FF_X16_Y22_N7
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
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(1));

-- Location: FF_X15_Y22_N3
\REG_5|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[1]~37_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(1));

-- Location: LCCOMB_X15_Y22_N2
\BUS_SELECTOR|BUS_OUT[1]~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[1]~32_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~24_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (\REG_4|DATA\(1))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_5|DATA\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(1),
	datab => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	datac => \REG_5|DATA\(1),
	datad => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[1]~32_combout\);

-- Location: LCCOMB_X15_Y22_N26
\BUS_SELECTOR|BUS_OUT[1]~33\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[1]~33_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & ((\BUS_SELECTOR|BUS_OUT[1]~32_combout\ & (\REG_6|DATA\(1))) # (!\BUS_SELECTOR|BUS_OUT[1]~32_combout\ & ((\REG_7|DATA\(1)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[1]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	datab => \REG_6|DATA\(1),
	datac => \REG_7|DATA\(1),
	datad => \BUS_SELECTOR|BUS_OUT[1]~32_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[1]~33_combout\);

-- Location: LCCOMB_X14_Y25_N28
\BUS_SELECTOR|BUS_OUT[1]~35\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[1]~35_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[1]~34_combout\ & (\REG_3|DATA\(1))) # (!\BUS_SELECTOR|BUS_OUT[1]~34_combout\ & ((\BUS_SELECTOR|BUS_OUT[1]~33_combout\))))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (\BUS_SELECTOR|BUS_OUT[1]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[1]~34_combout\,
	datac => \REG_3|DATA\(1),
	datad => \BUS_SELECTOR|BUS_OUT[1]~33_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[1]~35_combout\);

-- Location: LCCOMB_X15_Y25_N6
\BUS_SELECTOR|BUS_OUT[1]~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[1]~36_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~11_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & (\REG_G|DATA\(1))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[1]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datab => \REG_G|DATA\(1),
	datac => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[1]~35_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[1]~36_combout\);

-- Location: LCCOMB_X15_Y25_N28
\BUS_SELECTOR|BUS_OUT[1]~37\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[1]~37_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[1]~36_combout\ & ((\DIN[1]~input_o\))) # (!\BUS_SELECTOR|BUS_OUT[1]~36_combout\ & (\REG_0|DATA\(1))))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[1]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datab => \REG_0|DATA\(1),
	datac => \DIN[1]~input_o\,
	datad => \BUS_SELECTOR|BUS_OUT[1]~36_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[1]~37_combout\);

-- Location: FF_X15_Y25_N23
\REG_0|DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[1]~37_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(1));

-- Location: FF_X15_Y25_N15
\REG_A|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[2]~43_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(2));

-- Location: LCCOMB_X16_Y25_N12
\OP|Add0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~14_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\OP|Mux0~1_combout\ & (\CONTROL_UNIT|COMMAND_NUM[0]~0_combout\ $ (\BUS_SELECTOR|BUS_OUT[2]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \CONTROL_UNIT|COMMAND_NUM[0]~0_combout\,
	datac => \OP|Mux0~1_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[2]~43_combout\,
	combout => \OP|Add0~14_combout\);

-- Location: LCCOMB_X17_Y25_N20
\OP|Add0~23\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~23_combout\ = (\OP|Add0~14_combout\ & ((\REG_A|DATA\(2) & (\OP|Add0~22\ & VCC)) # (!\REG_A|DATA\(2) & (!\OP|Add0~22\)))) # (!\OP|Add0~14_combout\ & ((\REG_A|DATA\(2) & (!\OP|Add0~22\)) # (!\REG_A|DATA\(2) & ((\OP|Add0~22\) # (GND)))))
-- \OP|Add0~24\ = CARRY((\OP|Add0~14_combout\ & (!\REG_A|DATA\(2) & !\OP|Add0~22\)) # (!\OP|Add0~14_combout\ & ((!\OP|Add0~22\) # (!\REG_A|DATA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~14_combout\,
	datab => \REG_A|DATA\(2),
	datad => VCC,
	cin => \OP|Add0~22\,
	combout => \OP|Add0~23_combout\,
	cout => \OP|Add0~24\);

-- Location: LCCOMB_X17_Y25_N4
\OP|Mux14~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux14~2_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Mux0~1_combout\ & ((\OP|Add0~23_combout\))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(2))))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\REG_A|DATA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \REG_A|DATA\(2),
	datac => \OP|Mux0~1_combout\,
	datad => \OP|Add0~23_combout\,
	combout => \OP|Mux14~2_combout\);

-- Location: FF_X17_Y25_N5
\REG_G|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux14~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(2));

-- Location: IOIBUF_X11_Y29_N8
\DIN[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(2),
	o => \DIN[2]~input_o\);

-- Location: LCCOMB_X14_Y25_N30
\REG_1|DATA[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[2]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[2]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[2]~43_combout\,
	combout => \REG_1|DATA[2]~feeder_combout\);

-- Location: FF_X14_Y25_N31
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
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(2));

-- Location: FF_X14_Y23_N5
\REG_3|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[2]~43_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(2));

-- Location: FF_X14_Y23_N3
\REG_2|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[2]~43_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(2));

-- Location: LCCOMB_X16_Y22_N8
\REG_6|DATA[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[2]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[2]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[2]~43_combout\,
	combout => \REG_6|DATA[2]~feeder_combout\);

-- Location: FF_X16_Y22_N9
\REG_6|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[2]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(2));

-- Location: FF_X15_Y22_N1
\REG_7|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[2]~43_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(2));

-- Location: LCCOMB_X16_Y22_N24
\REG_4|DATA[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[2]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[2]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[2]~43_combout\,
	combout => \REG_4|DATA[2]~feeder_combout\);

-- Location: FF_X16_Y22_N25
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
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(2));

-- Location: FF_X15_Y22_N17
\REG_5|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[2]~43_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(2));

-- Location: LCCOMB_X15_Y22_N16
\BUS_SELECTOR|BUS_OUT[2]~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[2]~38_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~24_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (\REG_4|DATA\(2))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_5|DATA\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(2),
	datab => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	datac => \REG_5|DATA\(2),
	datad => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[2]~38_combout\);

-- Location: LCCOMB_X15_Y22_N0
\BUS_SELECTOR|BUS_OUT[2]~39\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[2]~39_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & ((\BUS_SELECTOR|BUS_OUT[2]~38_combout\ & (\REG_6|DATA\(2))) # (!\BUS_SELECTOR|BUS_OUT[2]~38_combout\ & ((\REG_7|DATA\(2)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[2]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	datab => \REG_6|DATA\(2),
	datac => \REG_7|DATA\(2),
	datad => \BUS_SELECTOR|BUS_OUT[2]~38_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[2]~39_combout\);

-- Location: LCCOMB_X14_Y23_N2
\BUS_SELECTOR|BUS_OUT[2]~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[2]~40_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~21_combout\) # ((\BUS_SELECTOR|BUS_OUT[2]~39_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & 
-- (\REG_2|DATA\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datac => \REG_2|DATA\(2),
	datad => \BUS_SELECTOR|BUS_OUT[2]~39_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[2]~40_combout\);

-- Location: LCCOMB_X14_Y23_N4
\BUS_SELECTOR|BUS_OUT[2]~41\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[2]~41_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\BUS_SELECTOR|BUS_OUT[2]~40_combout\ & ((\REG_3|DATA\(2)))) # (!\BUS_SELECTOR|BUS_OUT[2]~40_combout\ & (\REG_1|DATA\(2))))) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[2]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datab => \REG_1|DATA\(2),
	datac => \REG_3|DATA\(2),
	datad => \BUS_SELECTOR|BUS_OUT[2]~40_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[2]~41_combout\);

-- Location: LCCOMB_X15_Y25_N16
\BUS_SELECTOR|BUS_OUT[2]~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[2]~42_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~11_combout\) # ((\REG_0|DATA\(2))))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & 
-- ((\BUS_SELECTOR|BUS_OUT[2]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datac => \REG_0|DATA\(2),
	datad => \BUS_SELECTOR|BUS_OUT[2]~41_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[2]~42_combout\);

-- Location: LCCOMB_X15_Y25_N14
\BUS_SELECTOR|BUS_OUT[2]~43\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[2]~43_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[2]~42_combout\ & ((\DIN[2]~input_o\))) # (!\BUS_SELECTOR|BUS_OUT[2]~42_combout\ & (\REG_G|DATA\(2))))) # (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[2]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_G|DATA\(2),
	datab => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datac => \DIN[2]~input_o\,
	datad => \BUS_SELECTOR|BUS_OUT[2]~42_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[2]~43_combout\);

-- Location: FF_X15_Y25_N17
\REG_0|DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[2]~43_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(2));

-- Location: IOIBUF_X16_Y29_N8
\DIN[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(3),
	o => \DIN[3]~input_o\);

-- Location: FF_X16_Y25_N1
\REG_A|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[3]~49_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(3));

-- Location: LCCOMB_X16_Y25_N14
\OP|Add0~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~13_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\OP|Mux0~1_combout\ & (\CONTROL_UNIT|COMMAND_NUM[0]~0_combout\ $ (\BUS_SELECTOR|BUS_OUT[3]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \CONTROL_UNIT|COMMAND_NUM[0]~0_combout\,
	datac => \OP|Mux0~1_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[3]~49_combout\,
	combout => \OP|Add0~13_combout\);

-- Location: LCCOMB_X17_Y25_N22
\OP|Add0~25\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~25_combout\ = ((\OP|Add0~13_combout\ $ (\REG_A|DATA\(3) $ (!\OP|Add0~24\)))) # (GND)
-- \OP|Add0~26\ = CARRY((\OP|Add0~13_combout\ & ((\REG_A|DATA\(3)) # (!\OP|Add0~24\))) # (!\OP|Add0~13_combout\ & (\REG_A|DATA\(3) & !\OP|Add0~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~13_combout\,
	datab => \REG_A|DATA\(3),
	datad => VCC,
	cin => \OP|Add0~24\,
	combout => \OP|Add0~25_combout\,
	cout => \OP|Add0~26\);

-- Location: LCCOMB_X17_Y25_N2
\OP|Mux13~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux13~2_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Mux0~1_combout\ & ((\OP|Add0~25_combout\))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(3))))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\REG_A|DATA\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \REG_A|DATA\(3),
	datac => \OP|Add0~25_combout\,
	datad => \OP|Mux0~1_combout\,
	combout => \OP|Mux13~2_combout\);

-- Location: FF_X17_Y25_N3
\REG_G|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux13~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(3));

-- Location: LCCOMB_X16_Y22_N26
\REG_6|DATA[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[3]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[3]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[3]~49_combout\,
	combout => \REG_6|DATA[3]~feeder_combout\);

-- Location: FF_X16_Y22_N27
\REG_6|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[3]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(3));

-- Location: FF_X15_Y22_N7
\REG_7|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[3]~49_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(3));

-- Location: LCCOMB_X16_Y22_N10
\REG_4|DATA[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[3]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[3]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[3]~49_combout\,
	combout => \REG_4|DATA[3]~feeder_combout\);

-- Location: FF_X16_Y22_N11
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
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(3));

-- Location: FF_X15_Y22_N11
\REG_5|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[3]~49_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(3));

-- Location: LCCOMB_X15_Y22_N10
\BUS_SELECTOR|BUS_OUT[3]~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[3]~44_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~24_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (\REG_4|DATA\(3))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_5|DATA\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(3),
	datab => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	datac => \REG_5|DATA\(3),
	datad => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[3]~44_combout\);

-- Location: LCCOMB_X15_Y22_N6
\BUS_SELECTOR|BUS_OUT[3]~45\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[3]~45_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & ((\BUS_SELECTOR|BUS_OUT[3]~44_combout\ & (\REG_6|DATA\(3))) # (!\BUS_SELECTOR|BUS_OUT[3]~44_combout\ & ((\REG_7|DATA\(3)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[3]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	datab => \REG_6|DATA\(3),
	datac => \REG_7|DATA\(3),
	datad => \BUS_SELECTOR|BUS_OUT[3]~44_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[3]~45_combout\);

-- Location: FF_X14_Y25_N11
\REG_3|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[3]~49_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(3));

-- Location: LCCOMB_X14_Y25_N12
\REG_1|DATA[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[3]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[3]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[3]~49_combout\,
	combout => \REG_1|DATA[3]~feeder_combout\);

-- Location: FF_X14_Y25_N13
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
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(3));

-- Location: FF_X15_Y24_N27
\REG_2|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[3]~49_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(3));

-- Location: LCCOMB_X15_Y24_N26
\BUS_SELECTOR|BUS_OUT[3]~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[3]~46_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~21_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & (\REG_1|DATA\(3))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\REG_2|DATA\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datab => \REG_1|DATA\(3),
	datac => \REG_2|DATA\(3),
	datad => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[3]~46_combout\);

-- Location: LCCOMB_X14_Y25_N10
\BUS_SELECTOR|BUS_OUT[3]~47\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[3]~47_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[3]~46_combout\ & ((\REG_3|DATA\(3)))) # (!\BUS_SELECTOR|BUS_OUT[3]~46_combout\ & (\BUS_SELECTOR|BUS_OUT[3]~45_combout\)))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (((\BUS_SELECTOR|BUS_OUT[3]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[3]~45_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datac => \REG_3|DATA\(3),
	datad => \BUS_SELECTOR|BUS_OUT[3]~46_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[3]~47_combout\);

-- Location: LCCOMB_X14_Y25_N26
\BUS_SELECTOR|BUS_OUT[3]~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[3]~48_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~11_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & (\REG_G|DATA\(3))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[3]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_G|DATA\(3),
	datab => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[3]~47_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[3]~48_combout\);

-- Location: LCCOMB_X16_Y25_N0
\BUS_SELECTOR|BUS_OUT[3]~49\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[3]~49_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[3]~48_combout\ & ((\DIN[3]~input_o\))) # (!\BUS_SELECTOR|BUS_OUT[3]~48_combout\ & (\REG_0|DATA\(3))))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[3]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_0|DATA\(3),
	datab => \DIN[3]~input_o\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[3]~48_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[3]~49_combout\);

-- Location: LCCOMB_X19_Y25_N20
\REG_0|DATA[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_0|DATA[3]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[3]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[3]~49_combout\,
	combout => \REG_0|DATA[3]~feeder_combout\);

-- Location: FF_X19_Y25_N21
\REG_0|DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_0|DATA[3]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(3));

-- Location: IOIBUF_X11_Y29_N29
\DIN[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(4),
	o => \DIN[4]~input_o\);

-- Location: FF_X15_Y25_N9
\REG_A|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[4]~55_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(4));

-- Location: LCCOMB_X16_Y25_N16
\OP|Add0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~12_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\OP|Mux0~1_combout\ & (\CONTROL_UNIT|COMMAND_NUM[0]~0_combout\ $ (\BUS_SELECTOR|BUS_OUT[4]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \CONTROL_UNIT|COMMAND_NUM[0]~0_combout\,
	datac => \OP|Mux0~1_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[4]~55_combout\,
	combout => \OP|Add0~12_combout\);

-- Location: LCCOMB_X17_Y25_N24
\OP|Add0~27\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~27_combout\ = (\OP|Add0~12_combout\ & ((\REG_A|DATA\(4) & (\OP|Add0~26\ & VCC)) # (!\REG_A|DATA\(4) & (!\OP|Add0~26\)))) # (!\OP|Add0~12_combout\ & ((\REG_A|DATA\(4) & (!\OP|Add0~26\)) # (!\REG_A|DATA\(4) & ((\OP|Add0~26\) # (GND)))))
-- \OP|Add0~28\ = CARRY((\OP|Add0~12_combout\ & (!\REG_A|DATA\(4) & !\OP|Add0~26\)) # (!\OP|Add0~12_combout\ & ((!\OP|Add0~26\) # (!\REG_A|DATA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~12_combout\,
	datab => \REG_A|DATA\(4),
	datad => VCC,
	cin => \OP|Add0~26\,
	combout => \OP|Add0~27_combout\,
	cout => \OP|Add0~28\);

-- Location: LCCOMB_X17_Y25_N0
\OP|Mux12~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux12~2_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Mux0~1_combout\ & ((\OP|Add0~27_combout\))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(4))))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\REG_A|DATA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \REG_A|DATA\(4),
	datac => \OP|Mux0~1_combout\,
	datad => \OP|Add0~27_combout\,
	combout => \OP|Mux12~2_combout\);

-- Location: FF_X17_Y25_N1
\REG_G|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux12~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(4));

-- Location: LCCOMB_X14_Y25_N14
\REG_1|DATA[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[4]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[4]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[4]~55_combout\,
	combout => \REG_1|DATA[4]~feeder_combout\);

-- Location: FF_X14_Y25_N15
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
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(4));

-- Location: FF_X14_Y25_N25
\REG_3|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[4]~55_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(4));

-- Location: FF_X15_Y24_N13
\REG_2|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[4]~55_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(4));

-- Location: LCCOMB_X16_Y22_N28
\REG_6|DATA[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[4]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[4]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[4]~55_combout\,
	combout => \REG_6|DATA[4]~feeder_combout\);

-- Location: FF_X16_Y22_N29
\REG_6|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[4]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(4));

-- Location: FF_X15_Y22_N5
\REG_7|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[4]~55_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(4));

-- Location: LCCOMB_X16_Y22_N20
\REG_4|DATA[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[4]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[4]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[4]~55_combout\,
	combout => \REG_4|DATA[4]~feeder_combout\);

-- Location: FF_X16_Y22_N21
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
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(4));

-- Location: FF_X15_Y22_N25
\REG_5|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[4]~55_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(4));

-- Location: LCCOMB_X15_Y22_N24
\BUS_SELECTOR|BUS_OUT[4]~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[4]~50_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~24_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (\REG_4|DATA\(4))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_5|DATA\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(4),
	datab => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	datac => \REG_5|DATA\(4),
	datad => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[4]~50_combout\);

-- Location: LCCOMB_X15_Y22_N4
\BUS_SELECTOR|BUS_OUT[4]~51\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[4]~51_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & ((\BUS_SELECTOR|BUS_OUT[4]~50_combout\ & (\REG_6|DATA\(4))) # (!\BUS_SELECTOR|BUS_OUT[4]~50_combout\ & ((\REG_7|DATA\(4)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[4]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	datab => \REG_6|DATA\(4),
	datac => \REG_7|DATA\(4),
	datad => \BUS_SELECTOR|BUS_OUT[4]~50_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[4]~51_combout\);

-- Location: LCCOMB_X15_Y24_N12
\BUS_SELECTOR|BUS_OUT[4]~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[4]~52_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~18_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[4]~51_combout\))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (\REG_2|DATA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datac => \REG_2|DATA\(4),
	datad => \BUS_SELECTOR|BUS_OUT[4]~51_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[4]~52_combout\);

-- Location: LCCOMB_X14_Y25_N24
\BUS_SELECTOR|BUS_OUT[4]~53\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[4]~53_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\BUS_SELECTOR|BUS_OUT[4]~52_combout\ & ((\REG_3|DATA\(4)))) # (!\BUS_SELECTOR|BUS_OUT[4]~52_combout\ & (\REG_1|DATA\(4))))) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[4]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_1|DATA\(4),
	datab => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datac => \REG_3|DATA\(4),
	datad => \BUS_SELECTOR|BUS_OUT[4]~52_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[4]~53_combout\);

-- Location: LCCOMB_X15_Y25_N10
\BUS_SELECTOR|BUS_OUT[4]~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[4]~54_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~11_combout\) # ((\REG_0|DATA\(4))))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & 
-- ((\BUS_SELECTOR|BUS_OUT[4]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datac => \REG_0|DATA\(4),
	datad => \BUS_SELECTOR|BUS_OUT[4]~53_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[4]~54_combout\);

-- Location: LCCOMB_X15_Y25_N8
\BUS_SELECTOR|BUS_OUT[4]~55\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[4]~55_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[4]~54_combout\ & (\DIN[4]~input_o\)) # (!\BUS_SELECTOR|BUS_OUT[4]~54_combout\ & ((\REG_G|DATA\(4)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[4]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datab => \DIN[4]~input_o\,
	datac => \REG_G|DATA\(4),
	datad => \BUS_SELECTOR|BUS_OUT[4]~54_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[4]~55_combout\);

-- Location: FF_X15_Y25_N11
\REG_0|DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[4]~55_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(4));

-- Location: IOIBUF_X23_Y29_N8
\DIN[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(5),
	o => \DIN[5]~input_o\);

-- Location: FF_X19_Y25_N17
\REG_A|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[5]~61_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(5));

-- Location: LCCOMB_X17_Y23_N24
\OP|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~0_combout\ = (((!\CONTROL_UNIT|COMMAND_NUM[0]~0_combout\) # (!\OP|Mux0~0_combout\)) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\)) # (!\OP|Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Mux0~2_combout\,
	datab => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datac => \OP|Mux0~0_combout\,
	datad => \CONTROL_UNIT|COMMAND_NUM[0]~0_combout\,
	combout => \OP|Add0~0_combout\);

-- Location: LCCOMB_X16_Y23_N26
\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (!\CONTROL_UNIT|COMMAND_NUM[0]~0_combout\ & (\OP|Mux0~0_combout\ & \OP|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \CONTROL_UNIT|COMMAND_NUM[0]~0_combout\,
	datac => \OP|Mux0~0_combout\,
	datad => \OP|Mux0~2_combout\,
	combout => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\);

-- Location: LCCOMB_X19_Y25_N26
\OP|Add0~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~11_combout\ = (\BUS_SELECTOR|BUS_OUT[5]~61_combout\ & ((\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\))) # (!\BUS_SELECTOR|BUS_OUT[5]~61_combout\ & (!\OP|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP|Add0~0_combout\,
	datac => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[5]~61_combout\,
	combout => \OP|Add0~11_combout\);

-- Location: LCCOMB_X17_Y25_N26
\OP|Add0~29\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~29_combout\ = ((\OP|Add0~11_combout\ $ (\REG_A|DATA\(5) $ (!\OP|Add0~28\)))) # (GND)
-- \OP|Add0~30\ = CARRY((\OP|Add0~11_combout\ & ((\REG_A|DATA\(5)) # (!\OP|Add0~28\))) # (!\OP|Add0~11_combout\ & (\REG_A|DATA\(5) & !\OP|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~11_combout\,
	datab => \REG_A|DATA\(5),
	datad => VCC,
	cin => \OP|Add0~28\,
	combout => \OP|Add0~29_combout\,
	cout => \OP|Add0~30\);

-- Location: LCCOMB_X16_Y25_N22
\OP|Mux11~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux11~2_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Mux0~1_combout\ & ((\OP|Add0~29_combout\))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(5))))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\REG_A|DATA\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \REG_A|DATA\(5),
	datac => \OP|Mux0~1_combout\,
	datad => \OP|Add0~29_combout\,
	combout => \OP|Mux11~2_combout\);

-- Location: FF_X16_Y25_N23
\REG_G|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux11~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(5));

-- Location: LCCOMB_X14_Y25_N0
\REG_1|DATA[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[5]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[5]~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[5]~61_combout\,
	combout => \REG_1|DATA[5]~feeder_combout\);

-- Location: FF_X14_Y25_N1
\REG_1|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[5]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(5));

-- Location: FF_X14_Y23_N9
\REG_2|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[5]~61_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(5));

-- Location: LCCOMB_X14_Y23_N8
\BUS_SELECTOR|BUS_OUT[5]~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[5]~58_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\REG_1|DATA\(5)) # ((\BUS_SELECTOR|BUS_OUT[0]~18_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & (((\REG_2|DATA\(5) & !\BUS_SELECTOR|BUS_OUT[0]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datab => \REG_1|DATA\(5),
	datac => \REG_2|DATA\(5),
	datad => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[5]~58_combout\);

-- Location: FF_X14_Y25_N3
\REG_3|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[5]~61_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(5));

-- Location: LCCOMB_X16_Y22_N18
\REG_6|DATA[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[5]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[5]~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[5]~61_combout\,
	combout => \REG_6|DATA[5]~feeder_combout\);

-- Location: FF_X16_Y22_N19
\REG_6|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[5]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(5));

-- Location: FF_X15_Y22_N23
\REG_7|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[5]~61_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(5));

-- Location: LCCOMB_X16_Y22_N22
\REG_4|DATA[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[5]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[5]~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[5]~61_combout\,
	combout => \REG_4|DATA[5]~feeder_combout\);

-- Location: FF_X16_Y22_N23
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
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(5));

-- Location: FF_X15_Y22_N19
\REG_5|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[5]~61_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(5));

-- Location: LCCOMB_X15_Y22_N18
\BUS_SELECTOR|BUS_OUT[5]~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[5]~56_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~24_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (\REG_4|DATA\(5))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_5|DATA\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(5),
	datab => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	datac => \REG_5|DATA\(5),
	datad => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[5]~56_combout\);

-- Location: LCCOMB_X15_Y22_N22
\BUS_SELECTOR|BUS_OUT[5]~57\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[5]~57_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & ((\BUS_SELECTOR|BUS_OUT[5]~56_combout\ & (\REG_6|DATA\(5))) # (!\BUS_SELECTOR|BUS_OUT[5]~56_combout\ & ((\REG_7|DATA\(5)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[5]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	datab => \REG_6|DATA\(5),
	datac => \REG_7|DATA\(5),
	datad => \BUS_SELECTOR|BUS_OUT[5]~56_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[5]~57_combout\);

-- Location: LCCOMB_X14_Y25_N2
\BUS_SELECTOR|BUS_OUT[5]~59\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[5]~59_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[5]~58_combout\ & (\REG_3|DATA\(5))) # (!\BUS_SELECTOR|BUS_OUT[5]~58_combout\ & ((\BUS_SELECTOR|BUS_OUT[5]~57_combout\))))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (\BUS_SELECTOR|BUS_OUT[5]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[5]~58_combout\,
	datac => \REG_3|DATA\(5),
	datad => \BUS_SELECTOR|BUS_OUT[5]~57_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[5]~59_combout\);

-- Location: LCCOMB_X14_Y25_N8
\BUS_SELECTOR|BUS_OUT[5]~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[5]~60_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~11_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & (\REG_G|DATA\(5))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[5]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_G|DATA\(5),
	datab => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[5]~59_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[5]~60_combout\);

-- Location: LCCOMB_X19_Y25_N16
\BUS_SELECTOR|BUS_OUT[5]~61\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[5]~61_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[5]~60_combout\ & (\DIN[5]~input_o\)) # (!\BUS_SELECTOR|BUS_OUT[5]~60_combout\ & ((\REG_0|DATA\(5)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[5]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datab => \DIN[5]~input_o\,
	datac => \REG_0|DATA\(5),
	datad => \BUS_SELECTOR|BUS_OUT[5]~60_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[5]~61_combout\);

-- Location: LCCOMB_X19_Y25_N22
\REG_0|DATA[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_0|DATA[5]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[5]~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[5]~61_combout\,
	combout => \REG_0|DATA[5]~feeder_combout\);

-- Location: FF_X19_Y25_N23
\REG_0|DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_0|DATA[5]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(5));

-- Location: FF_X15_Y25_N19
\REG_A|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[6]~67_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(6));

-- Location: LCCOMB_X16_Y25_N6
\OP|Add0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~10_combout\ = (\BUS_SELECTOR|BUS_OUT[6]~67_combout\ & (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\)) # (!\BUS_SELECTOR|BUS_OUT[6]~67_combout\ & ((!\OP|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\,
	datac => \OP|Add0~0_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[6]~67_combout\,
	combout => \OP|Add0~10_combout\);

-- Location: LCCOMB_X17_Y25_N28
\OP|Add0~31\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~31_combout\ = (\REG_A|DATA\(6) & ((\OP|Add0~10_combout\ & (\OP|Add0~30\ & VCC)) # (!\OP|Add0~10_combout\ & (!\OP|Add0~30\)))) # (!\REG_A|DATA\(6) & ((\OP|Add0~10_combout\ & (!\OP|Add0~30\)) # (!\OP|Add0~10_combout\ & ((\OP|Add0~30\) # (GND)))))
-- \OP|Add0~32\ = CARRY((\REG_A|DATA\(6) & (!\OP|Add0~10_combout\ & !\OP|Add0~30\)) # (!\REG_A|DATA\(6) & ((!\OP|Add0~30\) # (!\OP|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A|DATA\(6),
	datab => \OP|Add0~10_combout\,
	datad => VCC,
	cin => \OP|Add0~30\,
	combout => \OP|Add0~31_combout\,
	cout => \OP|Add0~32\);

-- Location: LCCOMB_X17_Y25_N10
\OP|Mux10~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux10~2_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Mux0~1_combout\ & ((\OP|Add0~31_combout\))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(6))))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (((\REG_A|DATA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \OP|Mux0~1_combout\,
	datac => \REG_A|DATA\(6),
	datad => \OP|Add0~31_combout\,
	combout => \OP|Mux10~2_combout\);

-- Location: FF_X17_Y25_N11
\REG_G|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux10~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(6));

-- Location: IOIBUF_X41_Y25_N22
\DIN[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(6),
	o => \DIN[6]~input_o\);

-- Location: LCCOMB_X14_Y25_N22
\REG_1|DATA[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[6]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[6]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[6]~67_combout\,
	combout => \REG_1|DATA[6]~feeder_combout\);

-- Location: FF_X14_Y25_N23
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
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(6));

-- Location: FF_X14_Y25_N21
\REG_3|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[6]~67_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(6));

-- Location: FF_X15_Y24_N11
\REG_2|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[6]~67_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(6));

-- Location: LCCOMB_X16_Y22_N12
\REG_6|DATA[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[6]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[6]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[6]~67_combout\,
	combout => \REG_6|DATA[6]~feeder_combout\);

-- Location: FF_X16_Y22_N13
\REG_6|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[6]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(6));

-- Location: FF_X15_Y22_N9
\REG_7|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[6]~67_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(6));

-- Location: LCCOMB_X16_Y22_N16
\REG_4|DATA[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[6]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[6]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[6]~67_combout\,
	combout => \REG_4|DATA[6]~feeder_combout\);

-- Location: FF_X16_Y22_N17
\REG_4|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[6]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(6));

-- Location: FF_X15_Y22_N29
\REG_5|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[6]~67_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(6));

-- Location: LCCOMB_X15_Y22_N28
\BUS_SELECTOR|BUS_OUT[6]~62\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[6]~62_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~24_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (\REG_4|DATA\(6))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_5|DATA\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(6),
	datab => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	datac => \REG_5|DATA\(6),
	datad => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[6]~62_combout\);

-- Location: LCCOMB_X15_Y22_N8
\BUS_SELECTOR|BUS_OUT[6]~63\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[6]~63_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & ((\BUS_SELECTOR|BUS_OUT[6]~62_combout\ & (\REG_6|DATA\(6))) # (!\BUS_SELECTOR|BUS_OUT[6]~62_combout\ & ((\REG_7|DATA\(6)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[6]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	datab => \REG_6|DATA\(6),
	datac => \REG_7|DATA\(6),
	datad => \BUS_SELECTOR|BUS_OUT[6]~62_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[6]~63_combout\);

-- Location: LCCOMB_X15_Y24_N10
\BUS_SELECTOR|BUS_OUT[6]~64\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[6]~64_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~18_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[6]~63_combout\))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (\REG_2|DATA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datac => \REG_2|DATA\(6),
	datad => \BUS_SELECTOR|BUS_OUT[6]~63_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[6]~64_combout\);

-- Location: LCCOMB_X14_Y25_N20
\BUS_SELECTOR|BUS_OUT[6]~65\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[6]~65_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\BUS_SELECTOR|BUS_OUT[6]~64_combout\ & ((\REG_3|DATA\(6)))) # (!\BUS_SELECTOR|BUS_OUT[6]~64_combout\ & (\REG_1|DATA\(6))))) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[6]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_1|DATA\(6),
	datab => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datac => \REG_3|DATA\(6),
	datad => \BUS_SELECTOR|BUS_OUT[6]~64_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[6]~65_combout\);

-- Location: LCCOMB_X15_Y25_N24
\BUS_SELECTOR|BUS_OUT[6]~66\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[6]~66_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~11_combout\) # ((\REG_0|DATA\(6))))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & 
-- ((\BUS_SELECTOR|BUS_OUT[6]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datac => \REG_0|DATA\(6),
	datad => \BUS_SELECTOR|BUS_OUT[6]~65_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[6]~66_combout\);

-- Location: LCCOMB_X15_Y25_N18
\BUS_SELECTOR|BUS_OUT[6]~67\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[6]~67_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[6]~66_combout\ & ((\DIN[6]~input_o\))) # (!\BUS_SELECTOR|BUS_OUT[6]~66_combout\ & (\REG_G|DATA\(6))))) # (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[6]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_G|DATA\(6),
	datab => \DIN[6]~input_o\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[6]~66_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[6]~67_combout\);

-- Location: FF_X15_Y25_N25
\REG_0|DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[6]~67_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(6));

-- Location: IOIBUF_X28_Y29_N8
\DIN[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(7),
	o => \DIN[7]~input_o\);

-- Location: FF_X19_Y25_N3
\REG_A|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[7]~73_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(7));

-- Location: LCCOMB_X19_Y25_N4
\OP|Add0~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~9_combout\ = (\BUS_SELECTOR|BUS_OUT[7]~73_combout\ & ((\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\))) # (!\BUS_SELECTOR|BUS_OUT[7]~73_combout\ & (!\OP|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP|Add0~0_combout\,
	datac => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[7]~73_combout\,
	combout => \OP|Add0~9_combout\);

-- Location: LCCOMB_X17_Y25_N30
\OP|Add0~33\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~33_combout\ = ((\REG_A|DATA\(7) $ (\OP|Add0~9_combout\ $ (!\OP|Add0~32\)))) # (GND)
-- \OP|Add0~34\ = CARRY((\REG_A|DATA\(7) & ((\OP|Add0~9_combout\) # (!\OP|Add0~32\))) # (!\REG_A|DATA\(7) & (\OP|Add0~9_combout\ & !\OP|Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A|DATA\(7),
	datab => \OP|Add0~9_combout\,
	datad => VCC,
	cin => \OP|Add0~32\,
	combout => \OP|Add0~33_combout\,
	cout => \OP|Add0~34\);

-- Location: LCCOMB_X17_Y25_N12
\OP|Mux9~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux9~2_combout\ = (\OP|Mux0~1_combout\ & ((\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Add0~33_combout\))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\REG_A|DATA\(7))))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A|DATA\(7),
	datab => \OP|Mux0~1_combout\,
	datac => \OP|Add0~33_combout\,
	datad => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	combout => \OP|Mux9~2_combout\);

-- Location: FF_X17_Y25_N13
\REG_G|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux9~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(7));

-- Location: LCCOMB_X14_Y22_N20
\REG_4|DATA[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[7]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[7]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[7]~73_combout\,
	combout => \REG_4|DATA[7]~feeder_combout\);

-- Location: FF_X14_Y22_N21
\REG_4|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[7]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(7));

-- Location: FF_X15_Y22_N15
\REG_5|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[7]~73_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(7));

-- Location: LCCOMB_X15_Y22_N14
\BUS_SELECTOR|BUS_OUT[7]~68\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[7]~68_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~24_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~22_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (\REG_4|DATA\(7))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_5|DATA\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(7),
	datab => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	datac => \REG_5|DATA\(7),
	datad => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[7]~68_combout\);

-- Location: FF_X15_Y22_N31
\REG_7|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[7]~73_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(7));

-- Location: LCCOMB_X14_Y22_N12
\REG_6|DATA[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[7]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[7]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[7]~73_combout\,
	combout => \REG_6|DATA[7]~feeder_combout\);

-- Location: FF_X14_Y22_N13
\REG_6|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[7]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(7));

-- Location: LCCOMB_X15_Y22_N30
\BUS_SELECTOR|BUS_OUT[7]~69\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[7]~69_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & ((\BUS_SELECTOR|BUS_OUT[7]~68_combout\ & ((\REG_6|DATA\(7)))) # (!\BUS_SELECTOR|BUS_OUT[7]~68_combout\ & (\REG_7|DATA\(7))))) # (!\BUS_SELECTOR|BUS_OUT[0]~25_combout\ & 
-- (\BUS_SELECTOR|BUS_OUT[7]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[7]~68_combout\,
	datac => \REG_7|DATA\(7),
	datad => \REG_6|DATA\(7),
	combout => \BUS_SELECTOR|BUS_OUT[7]~69_combout\);

-- Location: FF_X14_Y25_N19
\REG_3|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[7]~73_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(7));

-- Location: LCCOMB_X15_Y24_N16
\REG_1|DATA[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[7]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[7]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[7]~73_combout\,
	combout => \REG_1|DATA[7]~feeder_combout\);

-- Location: FF_X15_Y24_N17
\REG_1|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[7]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(7));

-- Location: FF_X15_Y24_N1
\REG_2|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[7]~73_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(7));

-- Location: LCCOMB_X15_Y24_N0
\BUS_SELECTOR|BUS_OUT[7]~70\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[7]~70_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~21_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & (\REG_1|DATA\(7))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\REG_2|DATA\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datab => \REG_1|DATA\(7),
	datac => \REG_2|DATA\(7),
	datad => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[7]~70_combout\);

-- Location: LCCOMB_X14_Y25_N18
\BUS_SELECTOR|BUS_OUT[7]~71\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[7]~71_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[7]~70_combout\ & ((\REG_3|DATA\(7)))) # (!\BUS_SELECTOR|BUS_OUT[7]~70_combout\ & (\BUS_SELECTOR|BUS_OUT[7]~69_combout\)))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (((\BUS_SELECTOR|BUS_OUT[7]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[7]~69_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datac => \REG_3|DATA\(7),
	datad => \BUS_SELECTOR|BUS_OUT[7]~70_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[7]~71_combout\);

-- Location: LCCOMB_X14_Y25_N6
\BUS_SELECTOR|BUS_OUT[7]~72\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[7]~72_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~11_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & (\REG_G|DATA\(7))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[7]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_G|DATA\(7),
	datab => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[7]~71_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[7]~72_combout\);

-- Location: LCCOMB_X19_Y25_N2
\BUS_SELECTOR|BUS_OUT[7]~73\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[7]~73_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[7]~72_combout\ & (\DIN[7]~input_o\)) # (!\BUS_SELECTOR|BUS_OUT[7]~72_combout\ & ((\REG_0|DATA\(7)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[7]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datab => \DIN[7]~input_o\,
	datac => \REG_0|DATA\(7),
	datad => \BUS_SELECTOR|BUS_OUT[7]~72_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[7]~73_combout\);

-- Location: LCCOMB_X19_Y25_N8
\REG_0|DATA[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_0|DATA[7]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[7]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[7]~73_combout\,
	combout => \REG_0|DATA[7]~feeder_combout\);

-- Location: FF_X19_Y25_N9
\REG_0|DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_0|DATA[7]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(7));

-- Location: IOIBUF_X1_Y29_N29
\DIN[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(8),
	o => \DIN[8]~input_o\);

-- Location: FF_X16_Y25_N11
\REG_A|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[8]~79_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(8));

-- Location: LCCOMB_X16_Y25_N24
\OP|Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~8_combout\ = (\BUS_SELECTOR|BUS_OUT[8]~79_combout\ & (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\)) # (!\BUS_SELECTOR|BUS_OUT[8]~79_combout\ & ((!\OP|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\,
	datac => \OP|Add0~0_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[8]~79_combout\,
	combout => \OP|Add0~8_combout\);

-- Location: LCCOMB_X17_Y24_N0
\OP|Add0~35\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~35_combout\ = (\OP|Add0~8_combout\ & ((\REG_A|DATA\(8) & (\OP|Add0~34\ & VCC)) # (!\REG_A|DATA\(8) & (!\OP|Add0~34\)))) # (!\OP|Add0~8_combout\ & ((\REG_A|DATA\(8) & (!\OP|Add0~34\)) # (!\REG_A|DATA\(8) & ((\OP|Add0~34\) # (GND)))))
-- \OP|Add0~36\ = CARRY((\OP|Add0~8_combout\ & (!\REG_A|DATA\(8) & !\OP|Add0~34\)) # (!\OP|Add0~8_combout\ & ((!\OP|Add0~34\) # (!\REG_A|DATA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~8_combout\,
	datab => \REG_A|DATA\(8),
	datad => VCC,
	cin => \OP|Add0~34\,
	combout => \OP|Add0~35_combout\,
	cout => \OP|Add0~36\);

-- Location: LCCOMB_X16_Y25_N8
\OP|Mux8~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux8~2_combout\ = (\OP|Mux0~1_combout\ & ((\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Add0~35_combout\))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\REG_A|DATA\(8))))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A|DATA\(8),
	datab => \OP|Mux0~1_combout\,
	datac => \OP|Add0~35_combout\,
	datad => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	combout => \OP|Mux8~2_combout\);

-- Location: FF_X16_Y25_N9
\REG_G|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux8~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(8));

-- Location: LCCOMB_X17_Y23_N30
\REG_1|DATA[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[8]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[8]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[8]~79_combout\,
	combout => \REG_1|DATA[8]~feeder_combout\);

-- Location: FF_X17_Y23_N31
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
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(8));

-- Location: FF_X16_Y24_N19
\REG_3|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[8]~79_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(8));

-- Location: FF_X15_Y24_N23
\REG_2|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[8]~79_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(8));

-- Location: LCCOMB_X14_Y22_N30
\REG_4|DATA[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[8]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[8]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[8]~79_combout\,
	combout => \REG_4|DATA[8]~feeder_combout\);

-- Location: FF_X14_Y22_N31
\REG_4|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[8]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(8));

-- Location: FF_X14_Y24_N13
\REG_5|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[8]~79_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(8));

-- Location: LCCOMB_X14_Y24_N12
\BUS_SELECTOR|BUS_OUT[8]~74\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[8]~74_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_4|DATA\(8)) # ((\BUS_SELECTOR|BUS_OUT[0]~22_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (((\REG_5|DATA\(8) & !\BUS_SELECTOR|BUS_OUT[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(8),
	datab => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	datac => \REG_5|DATA\(8),
	datad => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[8]~74_combout\);

-- Location: LCCOMB_X14_Y22_N2
\REG_6|DATA[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[8]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[8]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[8]~79_combout\,
	combout => \REG_6|DATA[8]~feeder_combout\);

-- Location: FF_X14_Y22_N3
\REG_6|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[8]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(8));

-- Location: FF_X14_Y24_N29
\REG_7|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[8]~79_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(8));

-- Location: LCCOMB_X14_Y24_N28
\BUS_SELECTOR|BUS_OUT[8]~75\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[8]~75_combout\ = (\BUS_SELECTOR|BUS_OUT[8]~74_combout\ & ((\REG_6|DATA\(8)) # ((!\BUS_SELECTOR|BUS_OUT[0]~25_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[8]~74_combout\ & (((\REG_7|DATA\(8) & \BUS_SELECTOR|BUS_OUT[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[8]~74_combout\,
	datab => \REG_6|DATA\(8),
	datac => \REG_7|DATA\(8),
	datad => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[8]~75_combout\);

-- Location: LCCOMB_X15_Y24_N22
\BUS_SELECTOR|BUS_OUT[8]~76\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[8]~76_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~18_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[8]~75_combout\))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (\REG_2|DATA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datac => \REG_2|DATA\(8),
	datad => \BUS_SELECTOR|BUS_OUT[8]~75_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[8]~76_combout\);

-- Location: LCCOMB_X16_Y24_N18
\BUS_SELECTOR|BUS_OUT[8]~77\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[8]~77_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\BUS_SELECTOR|BUS_OUT[8]~76_combout\ & ((\REG_3|DATA\(8)))) # (!\BUS_SELECTOR|BUS_OUT[8]~76_combout\ & (\REG_1|DATA\(8))))) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[8]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datab => \REG_1|DATA\(8),
	datac => \REG_3|DATA\(8),
	datad => \BUS_SELECTOR|BUS_OUT[8]~76_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[8]~77_combout\);

-- Location: LCCOMB_X16_Y24_N0
\BUS_SELECTOR|BUS_OUT[8]~78\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[8]~78_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~14_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & (\REG_0|DATA\(8))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[8]~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datac => \REG_0|DATA\(8),
	datad => \BUS_SELECTOR|BUS_OUT[8]~77_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[8]~78_combout\);

-- Location: LCCOMB_X16_Y25_N10
\BUS_SELECTOR|BUS_OUT[8]~79\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[8]~79_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[8]~78_combout\ & (\DIN[8]~input_o\)) # (!\BUS_SELECTOR|BUS_OUT[8]~78_combout\ & ((\REG_G|DATA\(8)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[8]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[8]~input_o\,
	datab => \REG_G|DATA\(8),
	datac => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[8]~78_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[8]~79_combout\);

-- Location: FF_X16_Y24_N1
\REG_0|DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[8]~79_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(8));

-- Location: IOIBUF_X23_Y29_N15
\DIN[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(9),
	o => \DIN[9]~input_o\);

-- Location: FF_X19_Y25_N19
\REG_A|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[9]~85_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(9));

-- Location: LCCOMB_X19_Y25_N30
\OP|Add0~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~7_combout\ = (\BUS_SELECTOR|BUS_OUT[9]~85_combout\ & ((\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\))) # (!\BUS_SELECTOR|BUS_OUT[9]~85_combout\ & (!\OP|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP|Add0~0_combout\,
	datac => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[9]~85_combout\,
	combout => \OP|Add0~7_combout\);

-- Location: LCCOMB_X17_Y24_N2
\OP|Add0~37\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~37_combout\ = ((\REG_A|DATA\(9) $ (\OP|Add0~7_combout\ $ (!\OP|Add0~36\)))) # (GND)
-- \OP|Add0~38\ = CARRY((\REG_A|DATA\(9) & ((\OP|Add0~7_combout\) # (!\OP|Add0~36\))) # (!\REG_A|DATA\(9) & (\OP|Add0~7_combout\ & !\OP|Add0~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A|DATA\(9),
	datab => \OP|Add0~7_combout\,
	datad => VCC,
	cin => \OP|Add0~36\,
	combout => \OP|Add0~37_combout\,
	cout => \OP|Add0~38\);

-- Location: LCCOMB_X17_Y24_N26
\OP|Mux7~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux7~2_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Mux0~1_combout\ & ((\OP|Add0~37_combout\))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(9))))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\REG_A|DATA\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A|DATA\(9),
	datab => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datac => \OP|Mux0~1_combout\,
	datad => \OP|Add0~37_combout\,
	combout => \OP|Mux7~2_combout\);

-- Location: FF_X17_Y24_N27
\REG_G|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux7~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(9));

-- Location: LCCOMB_X15_Y24_N18
\REG_1|DATA[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[9]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[9]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[9]~85_combout\,
	combout => \REG_1|DATA[9]~feeder_combout\);

-- Location: FF_X15_Y24_N19
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
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(9));

-- Location: FF_X15_Y24_N21
\REG_2|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[9]~85_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(9));

-- Location: LCCOMB_X15_Y24_N20
\BUS_SELECTOR|BUS_OUT[9]~82\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[9]~82_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~21_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & (\REG_1|DATA\(9))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\REG_2|DATA\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datab => \REG_1|DATA\(9),
	datac => \REG_2|DATA\(9),
	datad => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[9]~82_combout\);

-- Location: FF_X16_Y24_N13
\REG_3|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[9]~85_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(9));

-- Location: LCCOMB_X14_Y22_N28
\REG_6|DATA[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[9]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[9]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[9]~85_combout\,
	combout => \REG_6|DATA[9]~feeder_combout\);

-- Location: FF_X14_Y22_N29
\REG_6|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[9]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(9));

-- Location: LCCOMB_X14_Y22_N16
\REG_4|DATA[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[9]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[9]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[9]~85_combout\,
	combout => \REG_4|DATA[9]~feeder_combout\);

-- Location: FF_X14_Y22_N17
\REG_4|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[9]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(9));

-- Location: FF_X14_Y24_N19
\REG_5|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[9]~85_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(9));

-- Location: LCCOMB_X14_Y24_N18
\BUS_SELECTOR|BUS_OUT[9]~80\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[9]~80_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_4|DATA\(9)) # ((\BUS_SELECTOR|BUS_OUT[0]~22_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (((\REG_5|DATA\(9) & !\BUS_SELECTOR|BUS_OUT[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(9),
	datab => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	datac => \REG_5|DATA\(9),
	datad => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[9]~80_combout\);

-- Location: FF_X14_Y24_N23
\REG_7|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[9]~85_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(9));

-- Location: LCCOMB_X14_Y24_N22
\BUS_SELECTOR|BUS_OUT[9]~81\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[9]~81_combout\ = (\BUS_SELECTOR|BUS_OUT[9]~80_combout\ & ((\REG_6|DATA\(9)) # ((!\BUS_SELECTOR|BUS_OUT[0]~25_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[9]~80_combout\ & (((\REG_7|DATA\(9) & \BUS_SELECTOR|BUS_OUT[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_6|DATA\(9),
	datab => \BUS_SELECTOR|BUS_OUT[9]~80_combout\,
	datac => \REG_7|DATA\(9),
	datad => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[9]~81_combout\);

-- Location: LCCOMB_X16_Y24_N12
\BUS_SELECTOR|BUS_OUT[9]~83\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[9]~83_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[9]~82_combout\ & (\REG_3|DATA\(9))) # (!\BUS_SELECTOR|BUS_OUT[9]~82_combout\ & ((\BUS_SELECTOR|BUS_OUT[9]~81_combout\))))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (\BUS_SELECTOR|BUS_OUT[9]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[9]~82_combout\,
	datac => \REG_3|DATA\(9),
	datad => \BUS_SELECTOR|BUS_OUT[9]~81_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[9]~83_combout\);

-- Location: LCCOMB_X19_Y25_N0
\BUS_SELECTOR|BUS_OUT[9]~84\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[9]~84_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~11_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & (\REG_G|DATA\(9))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[9]~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datab => \REG_G|DATA\(9),
	datac => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[9]~83_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[9]~84_combout\);

-- Location: LCCOMB_X19_Y25_N18
\BUS_SELECTOR|BUS_OUT[9]~85\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[9]~85_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[9]~84_combout\ & (\DIN[9]~input_o\)) # (!\BUS_SELECTOR|BUS_OUT[9]~84_combout\ & ((\REG_0|DATA\(9)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[9]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datab => \DIN[9]~input_o\,
	datac => \REG_0|DATA\(9),
	datad => \BUS_SELECTOR|BUS_OUT[9]~84_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[9]~85_combout\);

-- Location: LCCOMB_X19_Y25_N14
\REG_0|DATA[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_0|DATA[9]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[9]~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[9]~85_combout\,
	combout => \REG_0|DATA[9]~feeder_combout\);

-- Location: FF_X19_Y25_N15
\REG_0|DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_0|DATA[9]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(9));

-- Location: IOIBUF_X30_Y29_N8
\DIN[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(10),
	o => \DIN[10]~input_o\);

-- Location: FF_X19_Y24_N1
\REG_A|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[10]~91_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(10));

-- Location: LCCOMB_X19_Y24_N4
\OP|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~6_combout\ = (\BUS_SELECTOR|BUS_OUT[10]~91_combout\ & ((\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\))) # (!\BUS_SELECTOR|BUS_OUT[10]~91_combout\ & (!\OP|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~0_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[10]~91_combout\,
	combout => \OP|Add0~6_combout\);

-- Location: LCCOMB_X17_Y24_N4
\OP|Add0~39\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~39_combout\ = (\OP|Add0~6_combout\ & ((\REG_A|DATA\(10) & (\OP|Add0~38\ & VCC)) # (!\REG_A|DATA\(10) & (!\OP|Add0~38\)))) # (!\OP|Add0~6_combout\ & ((\REG_A|DATA\(10) & (!\OP|Add0~38\)) # (!\REG_A|DATA\(10) & ((\OP|Add0~38\) # (GND)))))
-- \OP|Add0~40\ = CARRY((\OP|Add0~6_combout\ & (!\REG_A|DATA\(10) & !\OP|Add0~38\)) # (!\OP|Add0~6_combout\ & ((!\OP|Add0~38\) # (!\REG_A|DATA\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~6_combout\,
	datab => \REG_A|DATA\(10),
	datad => VCC,
	cin => \OP|Add0~38\,
	combout => \OP|Add0~39_combout\,
	cout => \OP|Add0~40\);

-- Location: LCCOMB_X17_Y24_N28
\OP|Mux6~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux6~2_combout\ = (\OP|Mux0~1_combout\ & ((\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Add0~39_combout\))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\REG_A|DATA\(10))))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Mux0~1_combout\,
	datab => \REG_A|DATA\(10),
	datac => \OP|Add0~39_combout\,
	datad => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	combout => \OP|Mux6~2_combout\);

-- Location: FF_X17_Y24_N29
\REG_G|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux6~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(10));

-- Location: LCCOMB_X17_Y23_N28
\REG_1|DATA[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[10]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[10]~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[10]~91_combout\,
	combout => \REG_1|DATA[10]~feeder_combout\);

-- Location: FF_X17_Y23_N29
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
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(10));

-- Location: FF_X16_Y24_N23
\REG_3|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[10]~91_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(10));

-- Location: FF_X15_Y24_N15
\REG_2|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[10]~91_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(10));

-- Location: LCCOMB_X14_Y22_N22
\REG_6|DATA[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[10]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[10]~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[10]~91_combout\,
	combout => \REG_6|DATA[10]~feeder_combout\);

-- Location: FF_X14_Y22_N23
\REG_6|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[10]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(10));

-- Location: LCCOMB_X14_Y22_N6
\REG_4|DATA[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[10]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[10]~91_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[10]~91_combout\,
	combout => \REG_4|DATA[10]~feeder_combout\);

-- Location: FF_X14_Y22_N7
\REG_4|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[10]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(10));

-- Location: FF_X14_Y24_N5
\REG_5|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[10]~91_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(10));

-- Location: LCCOMB_X14_Y24_N4
\BUS_SELECTOR|BUS_OUT[10]~86\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[10]~86_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_4|DATA\(10)) # ((\BUS_SELECTOR|BUS_OUT[0]~22_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (((\REG_5|DATA\(10) & !\BUS_SELECTOR|BUS_OUT[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(10),
	datab => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	datac => \REG_5|DATA\(10),
	datad => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[10]~86_combout\);

-- Location: FF_X14_Y24_N25
\REG_7|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[10]~91_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(10));

-- Location: LCCOMB_X14_Y24_N24
\BUS_SELECTOR|BUS_OUT[10]~87\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[10]~87_combout\ = (\BUS_SELECTOR|BUS_OUT[10]~86_combout\ & ((\REG_6|DATA\(10)) # ((!\BUS_SELECTOR|BUS_OUT[0]~25_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[10]~86_combout\ & (((\REG_7|DATA\(10) & \BUS_SELECTOR|BUS_OUT[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_6|DATA\(10),
	datab => \BUS_SELECTOR|BUS_OUT[10]~86_combout\,
	datac => \REG_7|DATA\(10),
	datad => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[10]~87_combout\);

-- Location: LCCOMB_X15_Y24_N14
\BUS_SELECTOR|BUS_OUT[10]~88\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[10]~88_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~18_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[10]~87_combout\))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (\REG_2|DATA\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datac => \REG_2|DATA\(10),
	datad => \BUS_SELECTOR|BUS_OUT[10]~87_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[10]~88_combout\);

-- Location: LCCOMB_X16_Y24_N22
\BUS_SELECTOR|BUS_OUT[10]~89\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[10]~89_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\BUS_SELECTOR|BUS_OUT[10]~88_combout\ & ((\REG_3|DATA\(10)))) # (!\BUS_SELECTOR|BUS_OUT[10]~88_combout\ & (\REG_1|DATA\(10))))) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[10]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datab => \REG_1|DATA\(10),
	datac => \REG_3|DATA\(10),
	datad => \BUS_SELECTOR|BUS_OUT[10]~88_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[10]~89_combout\);

-- Location: LCCOMB_X19_Y24_N16
\BUS_SELECTOR|BUS_OUT[10]~90\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[10]~90_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~14_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & (\REG_0|DATA\(10))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[10]~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datac => \REG_0|DATA\(10),
	datad => \BUS_SELECTOR|BUS_OUT[10]~89_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[10]~90_combout\);

-- Location: LCCOMB_X19_Y24_N0
\BUS_SELECTOR|BUS_OUT[10]~91\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[10]~91_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[10]~90_combout\ & (\DIN[10]~input_o\)) # (!\BUS_SELECTOR|BUS_OUT[10]~90_combout\ & ((\REG_G|DATA\(10)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[10]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datab => \DIN[10]~input_o\,
	datac => \REG_G|DATA\(10),
	datad => \BUS_SELECTOR|BUS_OUT[10]~90_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[10]~91_combout\);

-- Location: FF_X19_Y24_N17
\REG_0|DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[10]~91_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(10));

-- Location: IOIBUF_X32_Y29_N8
\DIN[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(11),
	o => \DIN[11]~input_o\);

-- Location: FF_X19_Y24_N21
\REG_A|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[11]~97_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(11));

-- Location: LCCOMB_X19_Y24_N22
\OP|Add0~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~5_combout\ = (\BUS_SELECTOR|BUS_OUT[11]~97_combout\ & ((\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\))) # (!\BUS_SELECTOR|BUS_OUT[11]~97_combout\ & (!\OP|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~0_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[11]~97_combout\,
	combout => \OP|Add0~5_combout\);

-- Location: LCCOMB_X17_Y24_N6
\OP|Add0~41\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~41_combout\ = ((\REG_A|DATA\(11) $ (\OP|Add0~5_combout\ $ (!\OP|Add0~40\)))) # (GND)
-- \OP|Add0~42\ = CARRY((\REG_A|DATA\(11) & ((\OP|Add0~5_combout\) # (!\OP|Add0~40\))) # (!\REG_A|DATA\(11) & (\OP|Add0~5_combout\ & !\OP|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A|DATA\(11),
	datab => \OP|Add0~5_combout\,
	datad => VCC,
	cin => \OP|Add0~40\,
	combout => \OP|Add0~41_combout\,
	cout => \OP|Add0~42\);

-- Location: LCCOMB_X17_Y24_N30
\OP|Mux5~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux5~2_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Mux0~1_combout\ & ((\OP|Add0~41_combout\))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(11))))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\REG_A|DATA\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A|DATA\(11),
	datab => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datac => \OP|Mux0~1_combout\,
	datad => \OP|Add0~41_combout\,
	combout => \OP|Mux5~2_combout\);

-- Location: FF_X17_Y24_N31
\REG_G|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux5~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(11));

-- Location: LCCOMB_X14_Y22_N4
\REG_4|DATA[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[11]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[11]~97_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[11]~97_combout\,
	combout => \REG_4|DATA[11]~feeder_combout\);

-- Location: FF_X14_Y22_N5
\REG_4|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_4|DATA[11]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(11));

-- Location: FF_X14_Y24_N11
\REG_5|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[11]~97_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(11));

-- Location: LCCOMB_X14_Y24_N10
\BUS_SELECTOR|BUS_OUT[11]~92\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[11]~92_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_4|DATA\(11)) # ((\BUS_SELECTOR|BUS_OUT[0]~22_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (((\REG_5|DATA\(11) & !\BUS_SELECTOR|BUS_OUT[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(11),
	datab => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	datac => \REG_5|DATA\(11),
	datad => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[11]~92_combout\);

-- Location: LCCOMB_X14_Y22_N8
\REG_6|DATA[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[11]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[11]~97_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[11]~97_combout\,
	combout => \REG_6|DATA[11]~feeder_combout\);

-- Location: FF_X14_Y22_N9
\REG_6|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[11]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(11));

-- Location: FF_X14_Y24_N15
\REG_7|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[11]~97_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(11));

-- Location: LCCOMB_X14_Y24_N14
\BUS_SELECTOR|BUS_OUT[11]~93\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[11]~93_combout\ = (\BUS_SELECTOR|BUS_OUT[11]~92_combout\ & ((\REG_6|DATA\(11)) # ((!\BUS_SELECTOR|BUS_OUT[0]~25_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[11]~92_combout\ & (((\REG_7|DATA\(11) & \BUS_SELECTOR|BUS_OUT[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[11]~92_combout\,
	datab => \REG_6|DATA\(11),
	datac => \REG_7|DATA\(11),
	datad => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[11]~93_combout\);

-- Location: FF_X16_Y24_N29
\REG_3|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[11]~97_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(11));

-- Location: LCCOMB_X15_Y24_N24
\REG_1|DATA[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[11]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[11]~97_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[11]~97_combout\,
	combout => \REG_1|DATA[11]~feeder_combout\);

-- Location: FF_X15_Y24_N25
\REG_1|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_1|DATA[11]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(11));

-- Location: FF_X15_Y24_N9
\REG_2|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[11]~97_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(11));

-- Location: LCCOMB_X15_Y24_N8
\BUS_SELECTOR|BUS_OUT[11]~94\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[11]~94_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~21_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & (\REG_1|DATA\(11))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\REG_2|DATA\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_1|DATA\(11),
	datab => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datac => \REG_2|DATA\(11),
	datad => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[11]~94_combout\);

-- Location: LCCOMB_X16_Y24_N28
\BUS_SELECTOR|BUS_OUT[11]~95\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[11]~95_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[11]~94_combout\ & ((\REG_3|DATA\(11)))) # (!\BUS_SELECTOR|BUS_OUT[11]~94_combout\ & (\BUS_SELECTOR|BUS_OUT[11]~93_combout\)))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (((\BUS_SELECTOR|BUS_OUT[11]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[11]~93_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datac => \REG_3|DATA\(11),
	datad => \BUS_SELECTOR|BUS_OUT[11]~94_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[11]~95_combout\);

-- Location: LCCOMB_X19_Y24_N6
\BUS_SELECTOR|BUS_OUT[11]~96\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[11]~96_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\REG_G|DATA\(11)) # ((\BUS_SELECTOR|BUS_OUT[0]~14_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & (((!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & 
-- \BUS_SELECTOR|BUS_OUT[11]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datab => \REG_G|DATA\(11),
	datac => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[11]~95_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[11]~96_combout\);

-- Location: LCCOMB_X19_Y24_N20
\BUS_SELECTOR|BUS_OUT[11]~97\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[11]~97_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[11]~96_combout\ & (\DIN[11]~input_o\)) # (!\BUS_SELECTOR|BUS_OUT[11]~96_combout\ & ((\REG_0|DATA\(11)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[11]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[11]~input_o\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datac => \REG_0|DATA\(11),
	datad => \BUS_SELECTOR|BUS_OUT[11]~96_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[11]~97_combout\);

-- Location: LCCOMB_X19_Y24_N26
\REG_0|DATA[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_0|DATA[11]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[11]~97_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[11]~97_combout\,
	combout => \REG_0|DATA[11]~feeder_combout\);

-- Location: FF_X19_Y24_N27
\REG_0|DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_0|DATA[11]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(11));

-- Location: IOIBUF_X30_Y29_N22
\DIN[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(12),
	o => \DIN[12]~input_o\);

-- Location: FF_X19_Y24_N11
\REG_A|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[12]~103_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(12));

-- Location: LCCOMB_X19_Y24_N24
\OP|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~4_combout\ = (\BUS_SELECTOR|BUS_OUT[12]~103_combout\ & ((\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\))) # (!\BUS_SELECTOR|BUS_OUT[12]~103_combout\ & (!\OP|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~0_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[12]~103_combout\,
	combout => \OP|Add0~4_combout\);

-- Location: LCCOMB_X17_Y24_N8
\OP|Add0~43\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~43_combout\ = (\OP|Add0~4_combout\ & ((\REG_A|DATA\(12) & (\OP|Add0~42\ & VCC)) # (!\REG_A|DATA\(12) & (!\OP|Add0~42\)))) # (!\OP|Add0~4_combout\ & ((\REG_A|DATA\(12) & (!\OP|Add0~42\)) # (!\REG_A|DATA\(12) & ((\OP|Add0~42\) # (GND)))))
-- \OP|Add0~44\ = CARRY((\OP|Add0~4_combout\ & (!\REG_A|DATA\(12) & !\OP|Add0~42\)) # (!\OP|Add0~4_combout\ & ((!\OP|Add0~42\) # (!\REG_A|DATA\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~4_combout\,
	datab => \REG_A|DATA\(12),
	datad => VCC,
	cin => \OP|Add0~42\,
	combout => \OP|Add0~43_combout\,
	cout => \OP|Add0~44\);

-- Location: LCCOMB_X17_Y24_N24
\OP|Mux4~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux4~2_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Mux0~1_combout\ & ((\OP|Add0~43_combout\))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(12))))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\REG_A|DATA\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \REG_A|DATA\(12),
	datac => \OP|Add0~43_combout\,
	datad => \OP|Mux0~1_combout\,
	combout => \OP|Mux4~2_combout\);

-- Location: FF_X17_Y24_N25
\REG_G|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux4~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(12));

-- Location: LCCOMB_X17_Y23_N14
\REG_1|DATA[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[12]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[12]~103_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[12]~103_combout\,
	combout => \REG_1|DATA[12]~feeder_combout\);

-- Location: FF_X17_Y23_N15
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
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(12));

-- Location: FF_X16_Y24_N11
\REG_3|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[12]~103_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(12));

-- Location: FF_X15_Y24_N3
\REG_2|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[12]~103_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(12));

-- Location: LCCOMB_X14_Y22_N10
\REG_6|DATA[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[12]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[12]~103_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[12]~103_combout\,
	combout => \REG_6|DATA[12]~feeder_combout\);

-- Location: FF_X14_Y22_N11
\REG_6|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[12]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(12));

-- Location: LCCOMB_X14_Y22_N18
\REG_4|DATA[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[12]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[12]~103_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[12]~103_combout\,
	combout => \REG_4|DATA[12]~feeder_combout\);

-- Location: FF_X14_Y22_N19
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
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(12));

-- Location: FF_X14_Y24_N17
\REG_5|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[12]~103_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(12));

-- Location: LCCOMB_X14_Y24_N16
\BUS_SELECTOR|BUS_OUT[12]~98\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[12]~98_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_4|DATA\(12)) # ((\BUS_SELECTOR|BUS_OUT[0]~22_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (((\REG_5|DATA\(12) & !\BUS_SELECTOR|BUS_OUT[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(12),
	datab => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	datac => \REG_5|DATA\(12),
	datad => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[12]~98_combout\);

-- Location: FF_X14_Y24_N9
\REG_7|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[12]~103_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(12));

-- Location: LCCOMB_X14_Y24_N8
\BUS_SELECTOR|BUS_OUT[12]~99\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[12]~99_combout\ = (\BUS_SELECTOR|BUS_OUT[12]~98_combout\ & ((\REG_6|DATA\(12)) # ((!\BUS_SELECTOR|BUS_OUT[0]~25_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[12]~98_combout\ & (((\REG_7|DATA\(12) & \BUS_SELECTOR|BUS_OUT[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_6|DATA\(12),
	datab => \BUS_SELECTOR|BUS_OUT[12]~98_combout\,
	datac => \REG_7|DATA\(12),
	datad => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[12]~99_combout\);

-- Location: LCCOMB_X15_Y24_N2
\BUS_SELECTOR|BUS_OUT[12]~100\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[12]~100_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~18_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[12]~99_combout\))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (\REG_2|DATA\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datac => \REG_2|DATA\(12),
	datad => \BUS_SELECTOR|BUS_OUT[12]~99_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[12]~100_combout\);

-- Location: LCCOMB_X16_Y24_N10
\BUS_SELECTOR|BUS_OUT[12]~101\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[12]~101_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\BUS_SELECTOR|BUS_OUT[12]~100_combout\ & ((\REG_3|DATA\(12)))) # (!\BUS_SELECTOR|BUS_OUT[12]~100_combout\ & (\REG_1|DATA\(12))))) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[12]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datab => \REG_1|DATA\(12),
	datac => \REG_3|DATA\(12),
	datad => \BUS_SELECTOR|BUS_OUT[12]~100_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[12]~101_combout\);

-- Location: LCCOMB_X19_Y24_N12
\BUS_SELECTOR|BUS_OUT[12]~102\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[12]~102_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~14_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & (\REG_0|DATA\(12))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[12]~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datac => \REG_0|DATA\(12),
	datad => \BUS_SELECTOR|BUS_OUT[12]~101_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[12]~102_combout\);

-- Location: LCCOMB_X19_Y24_N10
\BUS_SELECTOR|BUS_OUT[12]~103\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[12]~103_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[12]~102_combout\ & (\DIN[12]~input_o\)) # (!\BUS_SELECTOR|BUS_OUT[12]~102_combout\ & ((\REG_G|DATA\(12)))))) # (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ 
-- & (((\BUS_SELECTOR|BUS_OUT[12]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[12]~input_o\,
	datab => \REG_G|DATA\(12),
	datac => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[12]~102_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[12]~103_combout\);

-- Location: FF_X19_Y24_N13
\REG_0|DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[12]~103_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(12));

-- Location: IOIBUF_X32_Y29_N15
\DIN[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(13),
	o => \DIN[13]~input_o\);

-- Location: FF_X16_Y25_N31
\REG_A|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[13]~109_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(13));

-- Location: LCCOMB_X16_Y24_N16
\OP|Add0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~3_combout\ = (\BUS_SELECTOR|BUS_OUT[13]~109_combout\ & (\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\)) # (!\BUS_SELECTOR|BUS_OUT[13]~109_combout\ & ((!\OP|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[13]~109_combout\,
	datad => \OP|Add0~0_combout\,
	combout => \OP|Add0~3_combout\);

-- Location: LCCOMB_X17_Y24_N10
\OP|Add0~45\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~45_combout\ = ((\OP|Add0~3_combout\ $ (\REG_A|DATA\(13) $ (!\OP|Add0~44\)))) # (GND)
-- \OP|Add0~46\ = CARRY((\OP|Add0~3_combout\ & ((\REG_A|DATA\(13)) # (!\OP|Add0~44\))) # (!\OP|Add0~3_combout\ & (\REG_A|DATA\(13) & !\OP|Add0~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~3_combout\,
	datab => \REG_A|DATA\(13),
	datad => VCC,
	cin => \OP|Add0~44\,
	combout => \OP|Add0~45_combout\,
	cout => \OP|Add0~46\);

-- Location: LCCOMB_X17_Y24_N18
\OP|Mux3~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux3~2_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Mux0~1_combout\ & ((\OP|Add0~45_combout\))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(13))))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\REG_A|DATA\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \REG_A|DATA\(13),
	datac => \OP|Mux0~1_combout\,
	datad => \OP|Add0~45_combout\,
	combout => \OP|Mux3~2_combout\);

-- Location: FF_X17_Y24_N19
\REG_G|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux3~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(13));

-- Location: LCCOMB_X14_Y22_N24
\REG_4|DATA[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[13]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[13]~109_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[13]~109_combout\,
	combout => \REG_4|DATA[13]~feeder_combout\);

-- Location: FF_X14_Y22_N25
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
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(13));

-- Location: FF_X14_Y24_N27
\REG_5|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[13]~109_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(13));

-- Location: LCCOMB_X14_Y24_N26
\BUS_SELECTOR|BUS_OUT[13]~104\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[13]~104_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_4|DATA\(13)) # ((\BUS_SELECTOR|BUS_OUT[0]~22_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (((\REG_5|DATA\(13) & !\BUS_SELECTOR|BUS_OUT[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(13),
	datab => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	datac => \REG_5|DATA\(13),
	datad => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[13]~104_combout\);

-- Location: LCCOMB_X14_Y22_N0
\REG_6|DATA[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[13]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[13]~109_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[13]~109_combout\,
	combout => \REG_6|DATA[13]~feeder_combout\);

-- Location: FF_X14_Y22_N1
\REG_6|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[13]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(13));

-- Location: FF_X14_Y24_N31
\REG_7|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[13]~109_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(13));

-- Location: LCCOMB_X14_Y24_N30
\BUS_SELECTOR|BUS_OUT[13]~105\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[13]~105_combout\ = (\BUS_SELECTOR|BUS_OUT[13]~104_combout\ & ((\REG_6|DATA\(13)) # ((!\BUS_SELECTOR|BUS_OUT[0]~25_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[13]~104_combout\ & (((\REG_7|DATA\(13) & 
-- \BUS_SELECTOR|BUS_OUT[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[13]~104_combout\,
	datab => \REG_6|DATA\(13),
	datac => \REG_7|DATA\(13),
	datad => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[13]~105_combout\);

-- Location: FF_X16_Y24_N25
\REG_3|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[13]~109_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(13));

-- Location: LCCOMB_X15_Y24_N6
\REG_1|DATA[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[13]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[13]~109_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[13]~109_combout\,
	combout => \REG_1|DATA[13]~feeder_combout\);

-- Location: FF_X15_Y24_N7
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
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(13));

-- Location: FF_X15_Y24_N29
\REG_2|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[13]~109_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(13));

-- Location: LCCOMB_X15_Y24_N28
\BUS_SELECTOR|BUS_OUT[13]~106\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[13]~106_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~21_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & (\REG_1|DATA\(13))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\REG_2|DATA\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_1|DATA\(13),
	datab => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datac => \REG_2|DATA\(13),
	datad => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[13]~106_combout\);

-- Location: LCCOMB_X16_Y24_N24
\BUS_SELECTOR|BUS_OUT[13]~107\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[13]~107_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[13]~106_combout\ & ((\REG_3|DATA\(13)))) # (!\BUS_SELECTOR|BUS_OUT[13]~106_combout\ & (\BUS_SELECTOR|BUS_OUT[13]~105_combout\)))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (((\BUS_SELECTOR|BUS_OUT[13]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[13]~105_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datac => \REG_3|DATA\(13),
	datad => \BUS_SELECTOR|BUS_OUT[13]~106_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[13]~107_combout\);

-- Location: LCCOMB_X16_Y25_N28
\BUS_SELECTOR|BUS_OUT[13]~108\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[13]~108_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\REG_G|DATA\(13)) # ((\BUS_SELECTOR|BUS_OUT[0]~14_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & (((!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & 
-- \BUS_SELECTOR|BUS_OUT[13]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_G|DATA\(13),
	datab => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[13]~107_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[13]~108_combout\);

-- Location: LCCOMB_X16_Y25_N30
\BUS_SELECTOR|BUS_OUT[13]~109\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[13]~109_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[13]~108_combout\ & ((\DIN[13]~input_o\))) # (!\BUS_SELECTOR|BUS_OUT[13]~108_combout\ & (\REG_0|DATA\(13))))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ 
-- & (((\BUS_SELECTOR|BUS_OUT[13]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_0|DATA\(13),
	datab => \DIN[13]~input_o\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[13]~108_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[13]~109_combout\);

-- Location: LCCOMB_X19_Y25_N12
\REG_0|DATA[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_0|DATA[13]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[13]~109_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[13]~109_combout\,
	combout => \REG_0|DATA[13]~feeder_combout\);

-- Location: FF_X19_Y25_N13
\REG_0|DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_0|DATA[13]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(13));

-- Location: FF_X19_Y24_N29
\REG_A|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[14]~115_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(14));

-- Location: LCCOMB_X19_Y24_N30
\OP|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~2_combout\ = (\BUS_SELECTOR|BUS_OUT[14]~115_combout\ & ((\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\))) # (!\BUS_SELECTOR|BUS_OUT[14]~115_combout\ & (!\OP|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~0_combout\,
	datab => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[14]~115_combout\,
	combout => \OP|Add0~2_combout\);

-- Location: LCCOMB_X17_Y24_N12
\OP|Add0~47\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~47_combout\ = (\OP|Add0~2_combout\ & ((\REG_A|DATA\(14) & (\OP|Add0~46\ & VCC)) # (!\REG_A|DATA\(14) & (!\OP|Add0~46\)))) # (!\OP|Add0~2_combout\ & ((\REG_A|DATA\(14) & (!\OP|Add0~46\)) # (!\REG_A|DATA\(14) & ((\OP|Add0~46\) # (GND)))))
-- \OP|Add0~48\ = CARRY((\OP|Add0~2_combout\ & (!\REG_A|DATA\(14) & !\OP|Add0~46\)) # (!\OP|Add0~2_combout\ & ((!\OP|Add0~46\) # (!\REG_A|DATA\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~2_combout\,
	datab => \REG_A|DATA\(14),
	datad => VCC,
	cin => \OP|Add0~46\,
	combout => \OP|Add0~47_combout\,
	cout => \OP|Add0~48\);

-- Location: LCCOMB_X17_Y24_N20
\OP|Mux2~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux2~2_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Mux0~1_combout\ & ((\OP|Add0~47_combout\))) # (!\OP|Mux0~1_combout\ & (\REG_A|DATA\(14))))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (\REG_A|DATA\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \REG_A|DATA\(14),
	datac => \OP|Mux0~1_combout\,
	datad => \OP|Add0~47_combout\,
	combout => \OP|Mux2~2_combout\);

-- Location: FF_X17_Y24_N21
\REG_G|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux2~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(14));

-- Location: IOIBUF_X41_Y24_N22
\DIN[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(14),
	o => \DIN[14]~input_o\);

-- Location: LCCOMB_X17_Y23_N16
\REG_1|DATA[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[14]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[14]~115_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[14]~115_combout\,
	combout => \REG_1|DATA[14]~feeder_combout\);

-- Location: FF_X17_Y23_N17
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
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(14));

-- Location: FF_X16_Y24_N15
\REG_3|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[14]~115_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(14));

-- Location: FF_X15_Y24_N31
\REG_2|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[14]~115_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(14));

-- Location: LCCOMB_X16_Y22_N14
\REG_6|DATA[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[14]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[14]~115_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[14]~115_combout\,
	combout => \REG_6|DATA[14]~feeder_combout\);

-- Location: FF_X16_Y22_N15
\REG_6|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[14]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(14));

-- Location: LCCOMB_X16_Y22_N2
\REG_4|DATA[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[14]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[14]~115_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[14]~115_combout\,
	combout => \REG_4|DATA[14]~feeder_combout\);

-- Location: FF_X16_Y22_N3
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
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(14));

-- Location: FF_X14_Y24_N1
\REG_5|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[14]~115_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(14));

-- Location: LCCOMB_X14_Y24_N0
\BUS_SELECTOR|BUS_OUT[14]~110\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[14]~110_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_4|DATA\(14)) # ((\BUS_SELECTOR|BUS_OUT[0]~22_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (((\REG_5|DATA\(14) & !\BUS_SELECTOR|BUS_OUT[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(14),
	datab => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	datac => \REG_5|DATA\(14),
	datad => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[14]~110_combout\);

-- Location: FF_X14_Y24_N21
\REG_7|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[14]~115_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(14));

-- Location: LCCOMB_X14_Y24_N20
\BUS_SELECTOR|BUS_OUT[14]~111\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[14]~111_combout\ = (\BUS_SELECTOR|BUS_OUT[14]~110_combout\ & ((\REG_6|DATA\(14)) # ((!\BUS_SELECTOR|BUS_OUT[0]~25_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[14]~110_combout\ & (((\REG_7|DATA\(14) & 
-- \BUS_SELECTOR|BUS_OUT[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_6|DATA\(14),
	datab => \BUS_SELECTOR|BUS_OUT[14]~110_combout\,
	datac => \REG_7|DATA\(14),
	datad => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[14]~111_combout\);

-- Location: LCCOMB_X15_Y24_N30
\BUS_SELECTOR|BUS_OUT[14]~112\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[14]~112_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~18_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[14]~111_combout\))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (\REG_2|DATA\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datac => \REG_2|DATA\(14),
	datad => \BUS_SELECTOR|BUS_OUT[14]~111_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[14]~112_combout\);

-- Location: LCCOMB_X16_Y24_N14
\BUS_SELECTOR|BUS_OUT[14]~113\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[14]~113_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\BUS_SELECTOR|BUS_OUT[14]~112_combout\ & ((\REG_3|DATA\(14)))) # (!\BUS_SELECTOR|BUS_OUT[14]~112_combout\ & (\REG_1|DATA\(14))))) # (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & 
-- (((\BUS_SELECTOR|BUS_OUT[14]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	datab => \REG_1|DATA\(14),
	datac => \REG_3|DATA\(14),
	datad => \BUS_SELECTOR|BUS_OUT[14]~112_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[14]~113_combout\);

-- Location: LCCOMB_X19_Y24_N18
\BUS_SELECTOR|BUS_OUT[14]~114\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[14]~114_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & (\BUS_SELECTOR|BUS_OUT[0]~14_combout\)) # (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & (\REG_0|DATA\(14))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[14]~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datac => \REG_0|DATA\(14),
	datad => \BUS_SELECTOR|BUS_OUT[14]~113_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[14]~114_combout\);

-- Location: LCCOMB_X19_Y24_N28
\BUS_SELECTOR|BUS_OUT[14]~115\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[14]~115_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[14]~114_combout\ & ((\DIN[14]~input_o\))) # (!\BUS_SELECTOR|BUS_OUT[14]~114_combout\ & (\REG_G|DATA\(14))))) # (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ 
-- & (((\BUS_SELECTOR|BUS_OUT[14]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datab => \REG_G|DATA\(14),
	datac => \DIN[14]~input_o\,
	datad => \BUS_SELECTOR|BUS_OUT[14]~114_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[14]~115_combout\);

-- Location: FF_X19_Y24_N19
\REG_0|DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[14]~115_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(14));

-- Location: IOIBUF_X23_Y29_N1
\DIN[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(15),
	o => \DIN[15]~input_o\);

-- Location: LCCOMB_X19_Y25_N24
\OP|Add0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~1_combout\ = (\BUS_SELECTOR|BUS_OUT[15]~121_combout\ & ((\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\))) # (!\BUS_SELECTOR|BUS_OUT[15]~121_combout\ & (!\OP|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP|Add0~0_combout\,
	datac => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~1_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[15]~121_combout\,
	combout => \OP|Add0~1_combout\);

-- Location: FF_X19_Y25_N11
\REG_A|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \BUS_SELECTOR|BUS_OUT[15]~121_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \BUS_SELECTOR|BUS_OUT[0]~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_A|DATA\(15));

-- Location: LCCOMB_X17_Y24_N14
\OP|Add0~49\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~49_combout\ = ((\OP|Add0~1_combout\ $ (\REG_A|DATA\(15) $ (!\OP|Add0~48\)))) # (GND)
-- \OP|Add0~50\ = CARRY((\OP|Add0~1_combout\ & ((\REG_A|DATA\(15)) # (!\OP|Add0~48\))) # (!\OP|Add0~1_combout\ & (\REG_A|DATA\(15) & !\OP|Add0~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \OP|Add0~1_combout\,
	datab => \REG_A|DATA\(15),
	datad => VCC,
	cin => \OP|Add0~48\,
	combout => \OP|Add0~49_combout\,
	cout => \OP|Add0~50\);

-- Location: LCCOMB_X17_Y24_N22
\OP|Mux1~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux1~2_combout\ = (\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & ((\OP|Mux0~1_combout\ & (\OP|Add0~49_combout\)) # (!\OP|Mux0~1_combout\ & ((\REG_A|DATA\(15)))))) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\ & (((\REG_A|DATA\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datab => \OP|Mux0~1_combout\,
	datac => \OP|Add0~49_combout\,
	datad => \REG_A|DATA\(15),
	combout => \OP|Mux1~2_combout\);

-- Location: FF_X17_Y24_N23
\REG_G|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \OP|Mux1~2_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|G_IN~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_G|DATA\(15));

-- Location: LCCOMB_X14_Y22_N26
\REG_4|DATA[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_4|DATA[15]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[15]~121_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[15]~121_combout\,
	combout => \REG_4|DATA[15]~feeder_combout\);

-- Location: FF_X14_Y22_N27
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
	ena => \CONTROL_UNIT|R_IN[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_4|DATA\(15));

-- Location: FF_X14_Y24_N7
\REG_5|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[15]~121_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[5]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_5|DATA\(15));

-- Location: LCCOMB_X14_Y24_N6
\BUS_SELECTOR|BUS_OUT[15]~116\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[15]~116_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & ((\REG_4|DATA\(15)) # ((\BUS_SELECTOR|BUS_OUT[0]~22_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~24_combout\ & (((\REG_5|DATA\(15) & !\BUS_SELECTOR|BUS_OUT[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_4|DATA\(15),
	datab => \BUS_SELECTOR|BUS_OUT[0]~24_combout\,
	datac => \REG_5|DATA\(15),
	datad => \BUS_SELECTOR|BUS_OUT[0]~22_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[15]~116_combout\);

-- Location: LCCOMB_X14_Y22_N14
\REG_6|DATA[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_6|DATA[15]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[15]~121_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[15]~121_combout\,
	combout => \REG_6|DATA[15]~feeder_combout\);

-- Location: FF_X14_Y22_N15
\REG_6|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_6|DATA[15]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_6|DATA\(15));

-- Location: FF_X14_Y24_N3
\REG_7|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[15]~121_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_7|DATA\(15));

-- Location: LCCOMB_X14_Y24_N2
\BUS_SELECTOR|BUS_OUT[15]~117\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[15]~117_combout\ = (\BUS_SELECTOR|BUS_OUT[15]~116_combout\ & ((\REG_6|DATA\(15)) # ((!\BUS_SELECTOR|BUS_OUT[0]~25_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[15]~116_combout\ & (((\REG_7|DATA\(15) & 
-- \BUS_SELECTOR|BUS_OUT[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[15]~116_combout\,
	datab => \REG_6|DATA\(15),
	datac => \REG_7|DATA\(15),
	datad => \BUS_SELECTOR|BUS_OUT[0]~25_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[15]~117_combout\);

-- Location: FF_X14_Y25_N17
\REG_3|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[15]~121_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_3|DATA\(15));

-- Location: LCCOMB_X17_Y23_N26
\REG_1|DATA[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_1|DATA[15]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[15]~121_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUS_SELECTOR|BUS_OUT[15]~121_combout\,
	combout => \REG_1|DATA[15]~feeder_combout\);

-- Location: FF_X17_Y23_N27
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
	ena => \CONTROL_UNIT|R_IN[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_1|DATA\(15));

-- Location: FF_X17_Y23_N5
\REG_2|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \BUS_SELECTOR|BUS_OUT[15]~121_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CONTROL_UNIT|R_IN[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_2|DATA\(15));

-- Location: LCCOMB_X17_Y23_N4
\BUS_SELECTOR|BUS_OUT[15]~118\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[15]~118_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~21_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & (\REG_1|DATA\(15))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~21_combout\ & ((\REG_2|DATA\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_1|DATA\(15),
	datab => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datac => \REG_2|DATA\(15),
	datad => \BUS_SELECTOR|BUS_OUT[0]~21_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[15]~118_combout\);

-- Location: LCCOMB_X14_Y25_N16
\BUS_SELECTOR|BUS_OUT[15]~119\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[15]~119_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & ((\BUS_SELECTOR|BUS_OUT[15]~118_combout\ & ((\REG_3|DATA\(15)))) # (!\BUS_SELECTOR|BUS_OUT[15]~118_combout\ & (\BUS_SELECTOR|BUS_OUT[15]~117_combout\)))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~18_combout\ & (((\BUS_SELECTOR|BUS_OUT[15]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[15]~117_combout\,
	datab => \BUS_SELECTOR|BUS_OUT[0]~18_combout\,
	datac => \REG_3|DATA\(15),
	datad => \BUS_SELECTOR|BUS_OUT[15]~118_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[15]~119_combout\);

-- Location: LCCOMB_X19_Y25_N28
\BUS_SELECTOR|BUS_OUT[15]~120\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[15]~120_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & (((\BUS_SELECTOR|BUS_OUT[0]~11_combout\)))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & (\REG_G|DATA\(15))) # 
-- (!\BUS_SELECTOR|BUS_OUT[0]~11_combout\ & ((\BUS_SELECTOR|BUS_OUT[15]~119_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datab => \REG_G|DATA\(15),
	datac => \BUS_SELECTOR|BUS_OUT[0]~11_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[15]~119_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[15]~120_combout\);

-- Location: LCCOMB_X19_Y25_N10
\BUS_SELECTOR|BUS_OUT[15]~121\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \BUS_SELECTOR|BUS_OUT[15]~121_combout\ = (\BUS_SELECTOR|BUS_OUT[0]~14_combout\ & ((\BUS_SELECTOR|BUS_OUT[15]~120_combout\ & ((\DIN[15]~input_o\))) # (!\BUS_SELECTOR|BUS_OUT[15]~120_combout\ & (\REG_0|DATA\(15))))) # (!\BUS_SELECTOR|BUS_OUT[0]~14_combout\ 
-- & (((\BUS_SELECTOR|BUS_OUT[15]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_0|DATA\(15),
	datab => \DIN[15]~input_o\,
	datac => \BUS_SELECTOR|BUS_OUT[0]~14_combout\,
	datad => \BUS_SELECTOR|BUS_OUT[15]~120_combout\,
	combout => \BUS_SELECTOR|BUS_OUT[15]~121_combout\);

-- Location: LCCOMB_X19_Y25_N6
\REG_0|DATA[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \REG_0|DATA[15]~feeder_combout\ = \BUS_SELECTOR|BUS_OUT[15]~121_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BUS_SELECTOR|BUS_OUT[15]~121_combout\,
	combout => \REG_0|DATA[15]~feeder_combout\);

-- Location: FF_X19_Y25_N7
\REG_0|DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \REG_0|DATA[15]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \CONTROL_UNIT|R_IN[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_0|DATA\(15));

-- Location: LCCOMB_X17_Y24_N16
\OP|Add0~51\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Add0~51_combout\ = \OP|Add0~50\ $ (((!\CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\) # (!\CONTROL_UNIT|COMMAND_NUM[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	datad => \CONTROL_UNIT|COMMAND_DECODER|DATA_OUT~0_combout\,
	cin => \OP|Add0~50\,
	combout => \OP|Add0~51_combout\);

-- Location: LCCOMB_X16_Y25_N4
\OP|Mux0~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \OP|Mux0~3_combout\ = (\OP|Add0~51_combout\ & (\OP|Mux0~1_combout\ & \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP|Add0~51_combout\,
	datac => \OP|Mux0~1_combout\,
	datad => \CONTROL_UNIT|COMMAND_NUM[1]~1_combout\,
	combout => \OP|Mux0~3_combout\);

-- Location: LCCOMB_X17_Y25_N8
\CONTROL_UNIT|PROCESS_DONE~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CONTROL_UNIT|PROCESS_DONE~feeder_combout\ = \CONTROL_UNIT|R_IN[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROL_UNIT|R_IN[0]~5_combout\,
	combout => \CONTROL_UNIT|PROCESS_DONE~feeder_combout\);

-- Location: FF_X17_Y25_N9
\CONTROL_UNIT|PROCESS_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \CONTROL_UNIT|PROCESS_DONE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|PROCESS_DONE~q\);

-- Location: FF_X15_Y23_N29
\CONTROL_UNIT|PROCESS_STEP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \CONTROL_UNIT|PRO_COUNTER|COUNT\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|PROCESS_STEP\(0));

-- Location: FF_X16_Y23_N3
\CONTROL_UNIT|PROCESS_STEP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	asdata => \CONTROL_UNIT|PRO_COUNTER|COUNT\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROL_UNIT|PROCESS_STEP\(1));

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

ww_BUS_DATA(0) <= \BUS_DATA[0]~output_o\;

ww_BUS_DATA(1) <= \BUS_DATA[1]~output_o\;

ww_BUS_DATA(2) <= \BUS_DATA[2]~output_o\;

ww_BUS_DATA(3) <= \BUS_DATA[3]~output_o\;

ww_BUS_DATA(4) <= \BUS_DATA[4]~output_o\;

ww_BUS_DATA(5) <= \BUS_DATA[5]~output_o\;

ww_BUS_DATA(6) <= \BUS_DATA[6]~output_o\;

ww_BUS_DATA(7) <= \BUS_DATA[7]~output_o\;

ww_BUS_DATA(8) <= \BUS_DATA[8]~output_o\;

ww_BUS_DATA(9) <= \BUS_DATA[9]~output_o\;

ww_BUS_DATA(10) <= \BUS_DATA[10]~output_o\;

ww_BUS_DATA(11) <= \BUS_DATA[11]~output_o\;

ww_BUS_DATA(12) <= \BUS_DATA[12]~output_o\;

ww_BUS_DATA(13) <= \BUS_DATA[13]~output_o\;

ww_BUS_DATA(14) <= \BUS_DATA[14]~output_o\;

ww_BUS_DATA(15) <= \BUS_DATA[15]~output_o\;

ww_OVER_FLOW <= \OVER_FLOW~output_o\;

ww_DONE <= \DONE~output_o\;

ww_STEP(0) <= \STEP[0]~output_o\;

ww_STEP(1) <= \STEP[1]~output_o\;
END structure;


