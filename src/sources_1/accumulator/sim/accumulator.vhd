--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Fri May 12 20:03:39 2023
--Host        : DESKTOP-OQG6B56 running 64-bit major release  (build 9200)
--Command     : generate_target accumulator.bd
--Design      : accumulator
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity accumulator is
  port (
    clk_0 : in STD_LOGIC;
    din_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    empty_0 : out STD_LOGIC;
    rd_en_0 : in STD_LOGIC;
    srst_0 : in STD_LOGIC;
    wr_en_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of accumulator : entity is "accumulator,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=accumulator,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=2,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of accumulator : entity is "accumulator.hwdef";
end accumulator;

architecture STRUCTURE of accumulator is
  component accumulator_fifo_generator_0_0 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component accumulator_fifo_generator_0_0;
  signal clk_0_1 : STD_LOGIC;
  signal din_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fifo_generator_0_empty : STD_LOGIC;
  signal rd_en_0_1 : STD_LOGIC;
  signal srst_0_1 : STD_LOGIC;
  signal wr_en_0_1 : STD_LOGIC;
  signal NLW_fifo_generator_0_full_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN accumulator_clk_0, FREQ_HZ 25000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
begin
  clk_0_1 <= clk_0;
  din_0_1(3 downto 0) <= din_0(3 downto 0);
  dout_0(3 downto 0) <= fifo_generator_0_dout(3 downto 0);
  empty_0 <= fifo_generator_0_empty;
  rd_en_0_1 <= rd_en_0;
  srst_0_1 <= srst_0;
  wr_en_0_1 <= wr_en_0;
fifo_generator_0: component accumulator_fifo_generator_0_0
     port map (
      clk => clk_0_1,
      din(3 downto 0) => din_0_1(3 downto 0),
      dout(3 downto 0) => fifo_generator_0_dout(3 downto 0),
      empty => fifo_generator_0_empty,
      full => NLW_fifo_generator_0_full_UNCONNECTED,
      rd_en => rd_en_0_1,
      srst => srst_0_1,
      wr_en => wr_en_0_1
    );
end STRUCTURE;
