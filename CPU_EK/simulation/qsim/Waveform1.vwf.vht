-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/08/2022 16:23:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CPU_EK
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_EK_vhd_vec_tst IS
END CPU_EK_vhd_vec_tst;
ARCHITECTURE CPU_EK_arch OF CPU_EK_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADDRESS_OUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ALU_OVERFLOW_OUT : STD_LOGIC;
SIGNAL ALU_RESULT_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLOCK : STD_LOGIC;
SIGNAL MUX_2_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL OPCODE_OUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL R_A_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL R_B_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RAM_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ROM_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RS_OUT : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL RT_OUT : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT CPU_EK
	PORT (
	ADDRESS_OUT : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	ALU_OVERFLOW_OUT : BUFFER STD_LOGIC;
	ALU_RESULT_OUT : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLOCK : IN STD_LOGIC;
	MUX_2_OUT : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	OPCODE_OUT : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	PC_OUT : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	R_A_OUT : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	R_B_OUT : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	RAM_OUT : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	ROM_OUT : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	RS_OUT : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	RT_OUT : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CPU_EK
	PORT MAP (
-- list connections between master ports and signals
	ADDRESS_OUT => ADDRESS_OUT,
	ALU_OVERFLOW_OUT => ALU_OVERFLOW_OUT,
	ALU_RESULT_OUT => ALU_RESULT_OUT,
	CLOCK => CLOCK,
	MUX_2_OUT => MUX_2_OUT,
	OPCODE_OUT => OPCODE_OUT,
	PC_OUT => PC_OUT,
	R_A_OUT => R_A_OUT,
	R_B_OUT => R_B_OUT,
	RAM_OUT => RAM_OUT,
	ROM_OUT => ROM_OUT,
	RS_OUT => RS_OUT,
	RT_OUT => RT_OUT
	);

-- CLOCK
t_prcs_CLOCK: PROCESS
BEGIN
LOOP
	CLOCK <= '0';
	WAIT FOR 5000 ps;
	CLOCK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK;
END CPU_EK_arch;
