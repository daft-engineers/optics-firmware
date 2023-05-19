----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.05.2023 18:04:13
-- Design Name: 
-- Module Name: test_main - Behavioral
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

entity test_main is
--  Port ( );
end test_main;

architecture Behavioral of test_main is

signal clk_in, dv_in, rx_er, sysclk : std_logic:= '0';
signal rst : std_logic := '1';
signal output : std_logic;
signal data : std_logic_vector(3 downto 0) := "0000";
constant period : time := 40ns;
constant half_period : time := 20ns;

begin

main_test : entity work.main 
    port map (
        RXCLK => clk_in, 
        RXD => data,
        RXER => rx_er,
        RXDV => dv_in,
        rst => rst,
        LOUT => output,
        sysclk => sysclk
    );
    

clk_in <= not clk_in after half_period;

process
begin
wait for 1000ns;
rst <= '0';
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
wait for period;
data <= "0011";
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
wait for period;
data <= "1100";
wait for period;
data <= "0001";
wait for period;
wait for 30ns;

wait;

end process;


end Behavioral;
