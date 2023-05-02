----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.04.2023 11:43:49
-- Design Name: 
-- Module Name: test_serialiser - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_serialiser is
end test_serialiser;

architecture Behavioral of test_serialiser is
signal stimulus : std_logic_vector(13 downto 0);
signal output : std_logic;
signal data_ready : std_logic;
signal clk : std_logic;

begin

Encoder : entity work.parallel2serial
    port map (
        i_data => stimulus,
        o_data => output,
        i_clk_slow => data_ready,
        i_clk_fast => clk
    );
    
    process
    constant period: time := 20ns;
    begin
    
    
    wait for 1ns;
    data_ready <= '0';
    stimulus <= "11001011110011";
    wait for 5ns;
    data_ready <= '1';
    
    
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    wait for 5ns;
    clk <= '0';
    wait for 5ns;
    clk <= '1';
    
    wait;
    
    
end process;

end Behavioral;