----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.05.2023 13:50:45
-- Design Name: 
-- Module Name: hamming_decoder - Behavioral
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

entity hamming_decoder is
    Port ( 
        data_ready  :   in STD_LOGIC;
        input       :   in STD_LOGIC_VECTOR (6 downto 0);
        output      :   out STD_LOGIC_VECTOR (3 downto 0)
    );
end entity hamming_decoder;

architecture Behavioral of hamming_decoder is
    signal result   :   std_logic_vector(3 downto 0);
begin
    process(data_ready)
    begin
        if rising_edge(data_ready) then
            case input is
                when "0000000" =>
                    result <= "0000";
                when "0000001" =>
                    result <= "0000";
                when "0000010" =>
                    result <= "0000";
                when "0000011" =>
                    result <= "0010";
                when "0000100" =>
                    result <= "0000";
                when "0000101" =>
                    result <= "0100";
                when "0000110" =>
                    result <= "1000";
                when "0000111" =>
                    result <= "0001";
                when "0001000" =>
                    result <= "0000";
                when "0001001" =>
                    result <= "1001";
                when "0001010" =>
                    result <= "0101";
                when "0001011" =>
                    result <= "0001";
                when "0001100" =>
                    result <= "0011";
                when "0001101" =>
                    result <= "0001";
                when "0001110" =>
                    result <= "0001";
                when "0001111" =>
                    result <= "0001";
                when "0010000" =>
                    result <= "0000";
                when "0010001" =>
                    result <= "0010";
                when "0010010" =>
                    result <= "0010";
                when "0010011" =>
                    result <= "0010";
                when "0010100" =>
                    result <= "0011";
                when "0010101" =>
                    result <= "1010";
                when "0010110" =>
                    result <= "0110";
                when "0010111" =>
                    result <= "0010";
                when "0011000" =>
                    result <= "0011";
                when "0011001" =>
                    result <= "0111";
                when "0011010" =>
                    result <= "1011";
                when "0011011" =>
                    result <= "0010";
                when "0011100" =>
                    result <= "0011";
                when "0011101" =>
                    result <= "0011";
                when "0011110" =>
                    result <= "0011";
                when "0011111" =>
                    result <= "0001";
                when "0100000" =>
                    result <= "0000";
                when "0100001" =>
                    result <= "0100";
                when "0100010" =>
                    result <= "0101";
                when "0100011" =>
                    result <= "1100";
                when "0100100" =>
                    result <= "0100";
                when "0100101" =>
                    result <= "0100";
                when "0100110" =>
                    result <= "0110";
                when "0100111" =>
                    result <= "0100";
                when "0101000" =>
                    result <= "0101";
                when "0101001" =>
                    result <= "0111";
                when "0101010" =>
                    result <= "0101";
                when "0101011" =>
                    result <= "0101";
                when "0101100" =>
                    result <= "1101";
                when "0101101" =>
                    result <= "0100";
                when "0101110" =>
                    result <= "0101";
                when "0101111" =>
                    result <= "0001";
                when "0110000" =>
                    result <= "1110";
                when "0110001" =>
                    result <= "0111";
                when "0110010" =>
                    result <= "0110";
                when "0110011" =>
                    result <= "0010";
                when "0110100" =>
                    result <= "0110";
                when "0110101" =>
                    result <= "0100";
                when "0110110" =>
                    result <= "0110";
                when "0110111" =>
                    result <= "0110";
                when "0111000" =>
                    result <= "0111";
                when "0111001" =>
                    result <= "0111";
                when "0111010" =>
                    result <= "0101";
                when "0111011" =>
                    result <= "0111";
                when "0111100" =>
                    result <= "0011";
                when "0111101" =>
                    result <= "0111";
                when "0111110" =>
                    result <= "0110";
                when "0111111" =>
                    result <= "1111";
                when "1000000" =>
                    result <= "0000";
                when "1000001" =>
                    result <= "1001";
                when "1000010" =>
                    result <= "1000";
                when "1000011" =>
                    result <= "1100";
                when "1000100" =>
                    result <= "1000";
                when "1000101" =>
                    result <= "1010";
                when "1000110" =>
                    result <= "1000";
                when "1000111" =>
                    result <= "1000";
                when "1001000" =>
                    result <= "1001";
                when "1001001" =>
                    result <= "1001";
                when "1001010" =>
                    result <= "1011";
                when "1001011" =>
                    result <= "1001";
                when "1001100" =>
                    result <= "1101";
                when "1001101" =>
                    result <= "1001";
                when "1001110" =>
                    result <= "1000";
                when "1001111" =>
                    result <= "0001";
                when "1010000" =>
                    result <= "1110";
                when "1010001" =>
                    result <= "1010";
                when "1010010" =>
                    result <= "1011";
                when "1010011" =>
                    result <= "0010";
                when "1010100" =>
                    result <= "1010";
                when "1010101" =>
                    result <= "1010";
                when "1010110" =>
                    result <= "1000";
                when "1010111" =>
                    result <= "1010";
                when "1011000" =>
                    result <= "1011";
                when "1011001" =>
                    result <= "1001";
                when "1011010" =>
                    result <= "1011";
                when "1011011" =>
                    result <= "1011";
                when "1011100" =>
                    result <= "0011";
                when "1011101" =>
                    result <= "1010";
                when "1011110" =>
                    result <= "1011";
                when "1011111" =>
                    result <= "1111";
                when "1100000" =>
                    result <= "1110";
                when "1100001" =>
                    result <= "1100";
                when "1100010" =>
                    result <= "1100";
                when "1100011" =>
                    result <= "1100";
                when "1100100" =>
                    result <= "1101";
                when "1100101" =>
                    result <= "0100";
                when "1100110" =>
                    result <= "1000";
                when "1100111" =>
                    result <= "1100";
                when "1101000" =>
                    result <= "1101";
                when "1101001" =>
                    result <= "1001";
                when "1101010" =>
                    result <= "0101";
                when "1101011" =>
                    result <= "1100";
                when "1101100" =>
                    result <= "1101";
                when "1101101" =>
                    result <= "1101";
                when "1101110" =>
                    result <= "1101";
                when "1101111" =>
                    result <= "1111";
                when "1110000" =>
                    result <= "1110";
                when "1110001" =>
                    result <= "1110";
                when "1110010" =>
                    result <= "1110";
                when "1110011" =>
                    result <= "1100";
                when "1110100" =>
                    result <= "1110";
                when "1110101" =>
                    result <= "1010";
                when "1110110" =>
                    result <= "0110";
                when "1110111" =>
                    result <= "1111";
                when "1111000" =>
                    result <= "1110";
                when "1111001" =>
                    result <= "0111";
                when "1111010" =>
                    result <= "1011";
                when "1111011" =>
                    result <= "1111";
                when "1111100" =>
                    result <= "1101";
                when "1111101" =>
                    result <= "1111";
                when "1111110" =>
                    result <= "1111";
                when "1111111" =>
                    result <= "1111";
                when others =>
                    result <= "0000";
            end case;
        end if;
    end process;
    
    output <= result;

end Behavioral;
