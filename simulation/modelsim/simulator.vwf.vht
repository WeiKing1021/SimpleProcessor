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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/25/2019 06:40:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SimpleProcessor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SimpleProcessor_vhd_vec_tst IS
END SimpleProcessor_vhd_vec_tst;
ARCHITECTURE SimpleProcessor_arch OF SimpleProcessor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK : STD_LOGIC;
SIGNAL DIN : STD_LOGIC_VECTOR(22 DOWNTO 0);
SIGNAL DONE : STD_LOGIC;
SIGNAL ENABLE : STD_LOGIC;
SIGNAL REG0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL REG1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL REG2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL REG3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL REG4 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL REG5 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL REG6 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL REG7 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
SIGNAL STEP : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT SimpleProcessor
	PORT (
	CLOCK : IN STD_LOGIC;
	DIN : IN STD_LOGIC_VECTOR(22 DOWNTO 0);
	DONE : OUT STD_LOGIC;
	ENABLE : IN STD_LOGIC;
	REG0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	REG1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	REG2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	REG3 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	REG4 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	REG5 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	REG6 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	REG7 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	RESET : IN STD_LOGIC;
	STEP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SimpleProcessor
	PORT MAP (
-- list connections between master ports and signals
	CLOCK => CLOCK,
	DIN => DIN,
	DONE => DONE,
	ENABLE => ENABLE,
	REG0 => REG0,
	REG1 => REG1,
	REG2 => REG2,
	REG3 => REG3,
	REG4 => REG4,
	REG5 => REG5,
	REG6 => REG6,
	REG7 => REG7,
	RESET => RESET,
	STEP => STEP
	);

-- CLOCK
t_prcs_CLOCK: PROCESS
BEGIN
LOOP
	CLOCK <= '0';
	WAIT FOR 50000 ps;
	CLOCK <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK;
-- DIN[22]
t_prcs_DIN_22: PROCESS
BEGIN
	DIN(22) <= '0';
WAIT;
END PROCESS t_prcs_DIN_22;
-- DIN[21]
t_prcs_DIN_21: PROCESS
BEGIN
	DIN(21) <= '0';
WAIT;
END PROCESS t_prcs_DIN_21;
-- DIN[20]
t_prcs_DIN_20: PROCESS
BEGIN
	DIN(20) <= '0';
	WAIT FOR 50000 ps;
	DIN(20) <= '1';
	WAIT FOR 50000 ps;
	DIN(20) <= '0';
WAIT;
END PROCESS t_prcs_DIN_20;
-- DIN[19]
t_prcs_DIN_19: PROCESS
BEGIN
	DIN(19) <= '0';
	WAIT FOR 150000 ps;
	DIN(19) <= '1';
	WAIT FOR 50000 ps;
	DIN(19) <= '0';
WAIT;
END PROCESS t_prcs_DIN_19;
-- DIN[18]
t_prcs_DIN_18: PROCESS
BEGIN
	DIN(18) <= '0';
	WAIT FOR 50000 ps;
	DIN(18) <= '1';
	WAIT FOR 50000 ps;
	DIN(18) <= '0';
WAIT;
END PROCESS t_prcs_DIN_18;
-- DIN[17]
t_prcs_DIN_17: PROCESS
BEGIN
	DIN(17) <= '0';
	WAIT FOR 50000 ps;
	DIN(17) <= '1';
	WAIT FOR 50000 ps;
	DIN(17) <= '0';
	WAIT FOR 50000 ps;
	DIN(17) <= '1';
	WAIT FOR 50000 ps;
	DIN(17) <= '0';
WAIT;
END PROCESS t_prcs_DIN_17;
-- DIN[16]
t_prcs_DIN_16: PROCESS
BEGIN
	DIN(16) <= '0';
	WAIT FOR 50000 ps;
	DIN(16) <= '1';
	WAIT FOR 50000 ps;
	DIN(16) <= '0';
WAIT;
END PROCESS t_prcs_DIN_16;
-- DIN[15]
t_prcs_DIN_15: PROCESS
BEGIN
	DIN(15) <= '0';
	WAIT FOR 150000 ps;
	DIN(15) <= '1';
	WAIT FOR 50000 ps;
	DIN(15) <= '0';
WAIT;
END PROCESS t_prcs_DIN_15;
-- DIN[14]
t_prcs_DIN_14: PROCESS
BEGIN
	DIN(14) <= '0';
	WAIT FOR 150000 ps;
	DIN(14) <= '1';
	WAIT FOR 50000 ps;
	DIN(14) <= '0';
WAIT;
END PROCESS t_prcs_DIN_14;
-- DIN[13]
t_prcs_DIN_13: PROCESS
BEGIN
	DIN(13) <= '0';
	WAIT FOR 150000 ps;
	DIN(13) <= '1';
	WAIT FOR 50000 ps;
	DIN(13) <= '0';
WAIT;
END PROCESS t_prcs_DIN_13;
-- DIN[12]
t_prcs_DIN_12: PROCESS
BEGIN
	DIN(12) <= '0';
WAIT;
END PROCESS t_prcs_DIN_12;
-- DIN[11]
t_prcs_DIN_11: PROCESS
BEGIN
	DIN(11) <= '0';
WAIT;
END PROCESS t_prcs_DIN_11;
-- DIN[10]
t_prcs_DIN_10: PROCESS
BEGIN
	DIN(10) <= '0';
WAIT;
END PROCESS t_prcs_DIN_10;
-- DIN[9]
t_prcs_DIN_9: PROCESS
BEGIN
	DIN(9) <= '0';
WAIT;
END PROCESS t_prcs_DIN_9;
-- DIN[8]
t_prcs_DIN_8: PROCESS
BEGIN
	DIN(8) <= '0';
WAIT;
END PROCESS t_prcs_DIN_8;
-- DIN[7]
t_prcs_DIN_7: PROCESS
BEGIN
	DIN(7) <= '0';
WAIT;
END PROCESS t_prcs_DIN_7;
-- DIN[6]
t_prcs_DIN_6: PROCESS
BEGIN
	DIN(6) <= '0';
WAIT;
END PROCESS t_prcs_DIN_6;
-- DIN[5]
t_prcs_DIN_5: PROCESS
BEGIN
	DIN(5) <= '0';
WAIT;
END PROCESS t_prcs_DIN_5;
-- DIN[4]
t_prcs_DIN_4: PROCESS
BEGIN
	DIN(4) <= '0';
WAIT;
END PROCESS t_prcs_DIN_4;
-- DIN[3]
t_prcs_DIN_3: PROCESS
BEGIN
	DIN(3) <= '0';
WAIT;
END PROCESS t_prcs_DIN_3;
-- DIN[2]
t_prcs_DIN_2: PROCESS
BEGIN
	DIN(2) <= '0';
WAIT;
END PROCESS t_prcs_DIN_2;
-- DIN[1]
t_prcs_DIN_1: PROCESS
BEGIN
	DIN(1) <= '0';
WAIT;
END PROCESS t_prcs_DIN_1;
-- DIN[0]
t_prcs_DIN_0: PROCESS
BEGIN
	DIN(0) <= '0';
WAIT;
END PROCESS t_prcs_DIN_0;

-- ENABLE
t_prcs_ENABLE: PROCESS
BEGIN
	ENABLE <= '1';
WAIT;
END PROCESS t_prcs_ENABLE;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;
END SimpleProcessor_arch;
