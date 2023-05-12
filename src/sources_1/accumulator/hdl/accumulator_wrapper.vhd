--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Fri May 12 14:56:22 2023
--Host        : DESKTOP-OQG6B56 running 64-bit major release  (build 9200)
--Command     : generate_target accumulator_wrapper.bd
--Design      : accumulator_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity accumulator_wrapper is
  port (
    clk_0 : in STD_LOGIC;
    din_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    empty_0 : out STD_LOGIC;
    rd_en_0 : in STD_LOGIC;
    srst_0 : in STD_LOGIC;
    wr_en_0 : in STD_LOGIC
  );
end accumulator_wrapper;

architecture STRUCTURE of accumulator_wrapper is
  component accumulator is
  port (
    rd_en_0 : in STD_LOGIC;
    srst_0 : in STD_LOGIC;
    din_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_en_0 : in STD_LOGIC;
    dout_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    empty_0 : out STD_LOGIC;
    clk_0 : in STD_LOGIC
  );
  end component accumulator;
begin
accumulator_i: component accumulator
     port map (
      clk_0 => clk_0,
      din_0(3 downto 0) => din_0(3 downto 0),
      dout_0(3 downto 0) => dout_0(3 downto 0),
      empty_0 => empty_0,
      rd_en_0 => rd_en_0,
      srst_0 => srst_0,
      wr_en_0 => wr_en_0
    );
end STRUCTURE;
