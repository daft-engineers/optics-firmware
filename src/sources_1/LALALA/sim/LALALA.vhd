--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
--Date        : Sun May 14 14:48:57 2023
--Host        : DESKTOP-OQG6B56 running 64-bit major release  (build 9200)
--Command     : generate_target LALALA.bd
--Design      : LALALA
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LALALA is
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
  attribute core_generation_info : string;
  attribute core_generation_info of LALALA : entity is "LALALA,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=LALALA,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute hw_handoff : string;
  attribute hw_handoff of LALALA : entity is "LALALA.hwdef";
end LALALA;

architecture STRUCTURE of LALALA is
  component LALALA_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component LALALA_ila_0_0;
  component LALALA_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component LALALA_clk_wiz_0_0;
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal probe0_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe1_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe2_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe3_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal probe4_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal probe5_0_1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal probe6_0_1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal probe7_0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_0_1 : STD_LOGIC;
  signal NLW_clk_wiz_0_locked_UNCONNECTED : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN LALALA_clk_in1_0, FREQ_HZ 12000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute x_interface_parameter of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  clk_in1_0_1 <= clk_0;
  probe0_0_1(0) <= probe0_0(0);
  probe1_0_1(0) <= probe1_0(0);
  probe2_0_1(0) <= probe2_0(0);
  probe3_0_1(3 downto 0) <= probe3_0(3 downto 0);
  probe4_0_1(3 downto 0) <= probe4_0(3 downto 0);
  probe5_0_1(6 downto 0) <= probe5_0(6 downto 0);
  probe6_0_1(13 downto 0) <= probe6_0(13 downto 0);
  probe7_0_1(0) <= probe7_0(0);
  reset_0_1 <= reset_0;
clk_wiz_0: component LALALA_clk_wiz_0_0
     port map (
      clk_in1 => clk_in1_0_1,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => NLW_clk_wiz_0_locked_UNCONNECTED,
      reset => reset_0_1
    );
ila_0: component LALALA_ila_0_0
     port map (
      clk => clk_wiz_0_clk_out1,
      probe0(0) => probe0_0_1(0),
      probe1(0) => probe1_0_1(0),
      probe2(0) => probe2_0_1(0),
      probe3(3 downto 0) => probe3_0_1(3 downto 0),
      probe4(3 downto 0) => probe4_0_1(3 downto 0),
      probe5(6 downto 0) => probe5_0_1(6 downto 0),
      probe6(13 downto 0) => probe6_0_1(13 downto 0),
      probe7(0) => probe7_0_1(0)
    );
end STRUCTURE;
