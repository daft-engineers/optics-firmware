----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2023 16:06:11
-- Design Name: 
-- Module Name: main - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
Port (
    RXCLK, RXDV, RXER, rst: in std_logic;
    RXD : in std_logic_vector(3 downto 0);
    TXN, TXP : out std_logic;
    sysclk : in std_logic
    );
end main;

architecture Behavioral of main is
signal RX_GOOD, empty, rd_en : std_logic;
signal bus1 : std_logic_vector (3 downto 0);
signal bus2 : std_logic_vector (6 downto 0);
signal bus3 : std_logic_vector (13 downto 0);
signal bus4 : std_logic_vector (13 downto 0);
signal iout : std_logic;
signal slow_clock : std_logic := '0';
signal slow_slow_clock : std_logic := '0';
signal not_slow_slow_clock : std_logic;
signal slow_slow_pulse : std_logic := '0';
signal count1, count2 : integer := 0;
begin

process (RXCLK, rst)
begin
if rst = '1' then
    count1 <= 0;
    count2 <= 0;
    slow_clock <= '0';
elsif rising_edge(RXCLK) then
    count1 <= count1 + 1;
    count2 <= count2 + 1;
    slow_slow_pulse <= '0';
    if  count1 >= 4 then
        slow_clock <= not slow_clock;
        count1 <= 0;
    end if;
    if count2 >= 69 then
        if slow_slow_clock = '1' then
            slow_slow_pulse <= '1';
        end if;
        slow_slow_clock <= not slow_slow_clock;
        count2 <= 0;
    end if;
end if;
end process;

not_slow_slow_clock <= not slow_slow_clock;

eth_rx_module : entity work.eth_rx 
    port map (
        RX_CLK => RXCLK, 
        RXD => RXD,
        RX_DV => RXDV,
        rst => rst,
        RX_GOOD => RX_GOOD
    );
    
accum_mod : entity work.accumulator_wrapper
port map (
    clk_0 => RXCLK,
    din_0 => RXD,
    dout_0 => bus1,
    empty_0 => empty,
    rd_en_0 => slow_slow_pulse,
    srst_0 => rst,
    wr_en_0 => RX_GOOD
    );
    
Hamming_encoder : entity work.hamming_encoder 
    port map (
        clk => slow_slow_clock, 
        reset => rst, 
        data_in => bus1, 
        code_out => bus2
    );
    
manc_Encoder : entity work.manc_encoder
    port map (
        data_in => bus2,
        data_out => bus3,
        clk => not_slow_slow_clock
    );

p2s : entity work.parallel2serial
    port map (
        i_data => bus3,
        o_data => iout,
        i_clk_slow => slow_slow_clock,
        i_clk_fast => slow_clock,
        o_array => bus4
    );
    
ILA : entity work.LALALA_wrapper
    port map (
        clk_0 => sysclk,
        probe0_0(0) => slow_slow_clock,
        probe1_0(0) => RXDV,
        probe2_0(0) => slow_clock,
        probe3_0 => RXD,
        probe4_0 => bus1,
        probe5_0 => bus2,
        probe6_0 => bus4,
        probe7_0(0) => iout,
        reset_0 => rst
        );
        
TXP <= iout;
TXN <= not iout;

end Behavioral;
