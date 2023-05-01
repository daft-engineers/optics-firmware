----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.05.2023 17:12:16
-- Design Name: 
-- Module Name: test_hamming_decoder - Behavioral
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

entity test_hamming_decoder is
--  Port ( );
end test_hamming_decoder;

architecture Behavioral of test_hamming_decoder is
    signal stimulus     :   std_logic_vector(6 downto 0);
    signal result       :   std_logic_vector(3 downto 0);
    signal data_ready   :   std_logic;
begin
    decoder : entity work.hamming_decoder port map (
        data_ready  =>  data_ready,
        input       =>  stimulus,
        output      =>  result
    );
    
    process
        constant period: time := 20ns;
        begin
        
            data_ready <= '0';
            stimulus <= "0000000";
            wait for period;
        
            stimulus <= "0000000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0000") report "test dailed for stim = 0000000" severity error;
            wait for period;

            stimulus <= "0000001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0000") report "test dailed for stim = 0000001" severity error;
            wait for period;

            stimulus <= "0000010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0000") report "test dailed for stim = 0000010" severity error;
            wait for period;

            stimulus <= "0000011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0010") report "test dailed for stim = 0000011" severity error;
            wait for period;

            stimulus <= "0000100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0000") report "test dailed for stim = 0000100" severity error;
            wait for period;

            stimulus <= "0000101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0100") report "test dailed for stim = 0000101" severity error;
            wait for period;

            stimulus <= "0000110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1000") report "test dailed for stim = 0000110" severity error;
            wait for period;

            stimulus <= "0000111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0001") report "test dailed for stim = 0000111" severity error;
            wait for period;

            stimulus <= "0001000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0000") report "test dailed for stim = 0001000" severity error;
            wait for period;

            stimulus <= "0001001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1001") report "test dailed for stim = 0001001" severity error;
            wait for period;

            stimulus <= "0001010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0101") report "test dailed for stim = 0001010" severity error;
            wait for period;

            stimulus <= "0001011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0001") report "test dailed for stim = 0001011" severity error;
            wait for period;

            stimulus <= "0001100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0011") report "test dailed for stim = 0001100" severity error;
            wait for period;

            stimulus <= "0001101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0001") report "test dailed for stim = 0001101" severity error;
            wait for period;

            stimulus <= "0001110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0001") report "test dailed for stim = 0001110" severity error;
            wait for period;

            stimulus <= "0001111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0001") report "test dailed for stim = 0001111" severity error;
            wait for period;

            stimulus <= "0010000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0000") report "test dailed for stim = 0010000" severity error;
            wait for period;

            stimulus <= "0010001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0010") report "test dailed for stim = 0010001" severity error;
            wait for period;

            stimulus <= "0010010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0010") report "test dailed for stim = 0010010" severity error;
            wait for period;

            stimulus <= "0010011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0010") report "test dailed for stim = 0010011" severity error;
            wait for period;

            stimulus <= "0010100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0011") report "test dailed for stim = 0010100" severity error;
            wait for period;

            stimulus <= "0010101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1010") report "test dailed for stim = 0010101" severity error;
            wait for period;

            stimulus <= "0010110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0110") report "test dailed for stim = 0010110" severity error;
            wait for period;

            stimulus <= "0010111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0010") report "test dailed for stim = 0010111" severity error;
            wait for period;

            stimulus <= "0011000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0011") report "test dailed for stim = 0011000" severity error;
            wait for period;

            stimulus <= "0011001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0111") report "test dailed for stim = 0011001" severity error;
            wait for period;

            stimulus <= "0011010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1011") report "test dailed for stim = 0011010" severity error;
            wait for period;

            stimulus <= "0011011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0010") report "test dailed for stim = 0011011" severity error;
            wait for period;

            stimulus <= "0011100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0011") report "test dailed for stim = 0011100" severity error;
            wait for period;

            stimulus <= "0011101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0011") report "test dailed for stim = 0011101" severity error;
            wait for period;

            stimulus <= "0011110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0011") report "test dailed for stim = 0011110" severity error;
            wait for period;

            stimulus <= "0011111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0001") report "test dailed for stim = 0011111" severity error;
            wait for period;

            stimulus <= "0100000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0000") report "test dailed for stim = 0100000" severity error;
            wait for period;

            stimulus <= "0100001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0100") report "test dailed for stim = 0100001" severity error;
            wait for period;

            stimulus <= "0100010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0101") report "test dailed for stim = 0100010" severity error;
            wait for period;

            stimulus <= "0100011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1100") report "test dailed for stim = 0100011" severity error;
            wait for period;

            stimulus <= "0100100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0100") report "test dailed for stim = 0100100" severity error;
            wait for period;

            stimulus <= "0100101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0100") report "test dailed for stim = 0100101" severity error;
            wait for period;

            stimulus <= "0100110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0110") report "test dailed for stim = 0100110" severity error;
            wait for period;

            stimulus <= "0100111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0100") report "test dailed for stim = 0100111" severity error;
            wait for period;

            stimulus <= "0101000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0101") report "test dailed for stim = 0101000" severity error;
            wait for period;

            stimulus <= "0101001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0111") report "test dailed for stim = 0101001" severity error;
            wait for period;

            stimulus <= "0101010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0101") report "test dailed for stim = 0101010" severity error;
            wait for period;

            stimulus <= "0101011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0101") report "test dailed for stim = 0101011" severity error;
            wait for period;

            stimulus <= "0101100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1101") report "test dailed for stim = 0101100" severity error;
            wait for period;

            stimulus <= "0101101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0100") report "test dailed for stim = 0101101" severity error;
            wait for period;

            stimulus <= "0101110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0101") report "test dailed for stim = 0101110" severity error;
            wait for period;

            stimulus <= "0101111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0001") report "test dailed for stim = 0101111" severity error;
            wait for period;

            stimulus <= "0110000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1110") report "test dailed for stim = 0110000" severity error;
            wait for period;

            stimulus <= "0110001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0111") report "test dailed for stim = 0110001" severity error;
            wait for period;

            stimulus <= "0110010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0110") report "test dailed for stim = 0110010" severity error;
            wait for period;

            stimulus <= "0110011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0010") report "test dailed for stim = 0110011" severity error;
            wait for period;

            stimulus <= "0110100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0110") report "test dailed for stim = 0110100" severity error;
            wait for period;

            stimulus <= "0110101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0100") report "test dailed for stim = 0110101" severity error;
            wait for period;

            stimulus <= "0110110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0110") report "test dailed for stim = 0110110" severity error;
            wait for period;

            stimulus <= "0110111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0110") report "test dailed for stim = 0110111" severity error;
            wait for period;

            stimulus <= "0111000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0111") report "test dailed for stim = 0111000" severity error;
            wait for period;

            stimulus <= "0111001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0111") report "test dailed for stim = 0111001" severity error;
            wait for period;

            stimulus <= "0111010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0101") report "test dailed for stim = 0111010" severity error;
            wait for period;

            stimulus <= "0111011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0111") report "test dailed for stim = 0111011" severity error;
            wait for period;

            stimulus <= "0111100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0011") report "test dailed for stim = 0111100" severity error;
            wait for period;

            stimulus <= "0111101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0111") report "test dailed for stim = 0111101" severity error;
            wait for period;

            stimulus <= "0111110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0110") report "test dailed for stim = 0111110" severity error;
            wait for period;

            stimulus <= "0111111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1111") report "test dailed for stim = 0111111" severity error;
            wait for period;

            stimulus <= "1000000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0000") report "test dailed for stim = 1000000" severity error;
            wait for period;

            stimulus <= "1000001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1001") report "test dailed for stim = 1000001" severity error;
            wait for period;

            stimulus <= "1000010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1000") report "test dailed for stim = 1000010" severity error;
            wait for period;

            stimulus <= "1000011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1100") report "test dailed for stim = 1000011" severity error;
            wait for period;

            stimulus <= "1000100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1000") report "test dailed for stim = 1000100" severity error;
            wait for period;

            stimulus <= "1000101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1010") report "test dailed for stim = 1000101" severity error;
            wait for period;

            stimulus <= "1000110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1000") report "test dailed for stim = 1000110" severity error;
            wait for period;

            stimulus <= "1000111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1000") report "test dailed for stim = 1000111" severity error;
            wait for period;

            stimulus <= "1001000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1001") report "test dailed for stim = 1001000" severity error;
            wait for period;

            stimulus <= "1001001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1001") report "test dailed for stim = 1001001" severity error;
            wait for period;

            stimulus <= "1001010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1011") report "test dailed for stim = 1001010" severity error;
            wait for period;

            stimulus <= "1001011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1001") report "test dailed for stim = 1001011" severity error;
            wait for period;

            stimulus <= "1001100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1101") report "test dailed for stim = 1001100" severity error;
            wait for period;

            stimulus <= "1001101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1001") report "test dailed for stim = 1001101" severity error;
            wait for period;

            stimulus <= "1001110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1000") report "test dailed for stim = 1001110" severity error;
            wait for period;

            stimulus <= "1001111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0001") report "test dailed for stim = 1001111" severity error;
            wait for period;

            stimulus <= "1010000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1110") report "test dailed for stim = 1010000" severity error;
            wait for period;

            stimulus <= "1010001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1010") report "test dailed for stim = 1010001" severity error;
            wait for period;

            stimulus <= "1010010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1011") report "test dailed for stim = 1010010" severity error;
            wait for period;

            stimulus <= "1010011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0010") report "test dailed for stim = 1010011" severity error;
            wait for period;

            stimulus <= "1010100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1010") report "test dailed for stim = 1010100" severity error;
            wait for period;

            stimulus <= "1010101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1010") report "test dailed for stim = 1010101" severity error;
            wait for period;

            stimulus <= "1010110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1000") report "test dailed for stim = 1010110" severity error;
            wait for period;

            stimulus <= "1010111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1010") report "test dailed for stim = 1010111" severity error;
            wait for period;

            stimulus <= "1011000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1011") report "test dailed for stim = 1011000" severity error;
            wait for period;

            stimulus <= "1011001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1001") report "test dailed for stim = 1011001" severity error;
            wait for period;

            stimulus <= "1011010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1011") report "test dailed for stim = 1011010" severity error;
            wait for period;

            stimulus <= "1011011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1011") report "test dailed for stim = 1011011" severity error;
            wait for period;

            stimulus <= "1011100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0011") report "test dailed for stim = 1011100" severity error;
            wait for period;

            stimulus <= "1011101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1010") report "test dailed for stim = 1011101" severity error;
            wait for period;

            stimulus <= "1011110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1011") report "test dailed for stim = 1011110" severity error;
            wait for period;

            stimulus <= "1011111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1111") report "test dailed for stim = 1011111" severity error;
            wait for period;

            stimulus <= "1100000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1110") report "test dailed for stim = 1100000" severity error;
            wait for period;

            stimulus <= "1100001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1100") report "test dailed for stim = 1100001" severity error;
            wait for period;

            stimulus <= "1100010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1100") report "test dailed for stim = 1100010" severity error;
            wait for period;

            stimulus <= "1100011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1100") report "test dailed for stim = 1100011" severity error;
            wait for period;

            stimulus <= "1100100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1101") report "test dailed for stim = 1100100" severity error;
            wait for period;

            stimulus <= "1100101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0100") report "test dailed for stim = 1100101" severity error;
            wait for period;

            stimulus <= "1100110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1000") report "test dailed for stim = 1100110" severity error;
            wait for period;

            stimulus <= "1100111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1100") report "test dailed for stim = 1100111" severity error;
            wait for period;

            stimulus <= "1101000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1101") report "test dailed for stim = 1101000" severity error;
            wait for period;

            stimulus <= "1101001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1001") report "test dailed for stim = 1101001" severity error;
            wait for period;

            stimulus <= "1101010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0101") report "test dailed for stim = 1101010" severity error;
            wait for period;

            stimulus <= "1101011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1100") report "test dailed for stim = 1101011" severity error;
            wait for period;

            stimulus <= "1101100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1101") report "test dailed for stim = 1101100" severity error;
            wait for period;

            stimulus <= "1101101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1101") report "test dailed for stim = 1101101" severity error;
            wait for period;

            stimulus <= "1101110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1101") report "test dailed for stim = 1101110" severity error;
            wait for period;

            stimulus <= "1101111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1111") report "test dailed for stim = 1101111" severity error;
            wait for period;

            stimulus <= "1110000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1110") report "test dailed for stim = 1110000" severity error;
            wait for period;

            stimulus <= "1110001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1110") report "test dailed for stim = 1110001" severity error;
            wait for period;

            stimulus <= "1110010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1110") report "test dailed for stim = 1110010" severity error;
            wait for period;

            stimulus <= "1110011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1100") report "test dailed for stim = 1110011" severity error;
            wait for period;

            stimulus <= "1110100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1110") report "test dailed for stim = 1110100" severity error;
            wait for period;

            stimulus <= "1110101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1010") report "test dailed for stim = 1110101" severity error;
            wait for period;

            stimulus <= "1110110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0110") report "test dailed for stim = 1110110" severity error;
            wait for period;

            stimulus <= "1110111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1111") report "test dailed for stim = 1110111" severity error;
            wait for period;

            stimulus <= "1111000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1110") report "test dailed for stim = 1111000" severity error;
            wait for period;

            stimulus <= "1111001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0111") report "test dailed for stim = 1111001" severity error;
            wait for period;

            stimulus <= "1111010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1011") report "test dailed for stim = 1111010" severity error;
            wait for period;

            stimulus <= "1111011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1111") report "test dailed for stim = 1111011" severity error;
            wait for period;

            stimulus <= "1111100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1101") report "test dailed for stim = 1111100" severity error;
            wait for period;

            stimulus <= "1111101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1111") report "test dailed for stim = 1111101" severity error;
            wait for period;

            stimulus <= "1111110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1111") report "test dailed for stim = 1111110" severity error;
            wait for period;

            stimulus <= "1111111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1111") report "test dailed for stim = 1111111" severity error;
            wait for period;        
        
            wait;
        
    end process;

end Behavioral;
