--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Sun May 14 14:48:57 2023
--Host        : DESKTOP-OQG6B56 running 64-bit major release  (build 9200)
--Command     : generate_target LALALA_wrapper.bd
--Design      : LALALA_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LALALA_wrapper is
  port (
    clk_0 : in STD_LOGIC;
    probe0_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe4_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe5_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    probe6_0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe7_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_0 : in STD_LOGIC
  );
end LALALA_wrapper;

architecture STRUCTURE of LALALA_wrapper is
  component LALALA is
  port (
    probe0_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe4_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe5_0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    probe6_0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe7_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_0 : in STD_LOGIC;
    clk_0 : in STD_LOGIC
  );
  end component LALALA;
begin
LALALA_i: component LALALA
     port map (
      clk_0 => clk_0,
      probe0_0(0) => probe0_0(0),
      probe1_0(0) => probe1_0(0),
      probe2_0(0) => probe2_0(0),
      probe3_0(3 downto 0) => probe3_0(3 downto 0),
      probe4_0(3 downto 0) => probe4_0(3 downto 0),
      probe5_0(6 downto 0) => probe5_0(6 downto 0),
      probe6_0(13 downto 0) => probe6_0(13 downto 0),
      probe7_0(0) => probe7_0(0),
      reset_0 => reset_0
    );
end STRUCTURE;
