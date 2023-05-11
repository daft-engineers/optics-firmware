----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.05.2023 12:19:45
-- Design Name: 
-- Module Name: eth_rx_sim - Behavioral
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

entity eth_rx_sim is
--  Port ( );
end eth_rx_sim;

architecture Behavioral of eth_rx_sim is

signal clk_in, dv_in : std_logic:= '0';
signal rst : std_logic := '1';
signal rx_good : std_logic;
signal data : std_logic_vector(3 downto 0) := "0000";
constant period : time := 40ns;
constant half_period : time := 20ns;

begin

eth_rx_test : entity work.eth_rx 
    port map (
        RX_CLK => clk_in, 
        RXD => data,
        RX_DV => dv_in,
        rst => rst,
        RX_GOOD => rx_good
    );
    

clk_in <= not clk_in after half_period;

process
begin
wait for 1000ns;
wait for 10ns;
data <= "1010";
wait for period;
data <= "0101";
wait for period;
data <= "0111";
dv_in <= '1';
wait for period;
data <= "0110";
wait for period;
data <= "0010";
assert (rx_good = '0') report "Test failed as rx_good is high too early" severity error;
wait for period;
data <= "0011";
assert (rx_good = '1') report "Test failed as rx_good is low too late" severity error;
wait for period;
data <= "0100";
wait for period;
data <= "0101";
wait for period;
data <= "0110";
wait for period;
data <= "0111";
wait for period;
data <= "1000";
wait for period;
data <= "1001";
wait for period;
data <= "1010";
wait for period;
dv_in <= '0';
data <= "1011";
assert (rx_good = '1') report "Test failed as rx_good is low too early" severity error;
wait for period;
data <= "1100";
assert (rx_good = '0') report "Test failed as rx_good is high too late" severity error;
wait for period;
data <= "0001";
wait for period;



end process;

end Behavioral;
