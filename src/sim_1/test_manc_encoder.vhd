----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.04.2023 11:43:49
-- Design Name: 
-- Module Name: test_manc_encoder - Behavioral
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

entity test_manc_encoder is
end test_manc_encoder;

architecture Behavioral of test_manc_encoder is
signal stimulus : std_logic_vector(6 downto 0);
signal result : std_logic_vector(13 downto 0);
signal data_ready : std_logic;

begin

Encoder : entity work.manc_encoder
    port map (
        data_in => stimulus,
        data_out => result,
        clk => data_ready
    );
    
    process
    constant period: time := 20ns;
    begin
    
    wait for 1ns;
    data_ready <= '0';
    stimulus <= "0000000";
    wait for 19ns;
    
    data_ready <= '1';
    wait for period;
    data_ready <= '0';
    assert (result = "10101010101010") report "test failed for stim = 0000000" severity error;
    
    stimulus <= "0000001";
    wait for 1ns;
    data_ready <= '1';
    wait for period;
    data_ready <= '0';
    assert (result = "10101010101001") report "test failed for stim = 0000001" severity error;
    
    stimulus <= "0110100";
    wait for 1ns;
    data_ready <= '1';
    wait for period;
    data_ready <= '0';
    assert (result = "10010110011010") report "test failed for stim = 0110100" severity error;
    wait;
    
end process;

end Behavioral;
