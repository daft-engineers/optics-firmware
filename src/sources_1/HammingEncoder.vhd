----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.04.2023 23:29:02
-- Design Name: 
-- Module Name: HammingEncoder - Behavioral
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hamming_encoder is
  port (
    clk      : in  std_logic;
    reset    : in  std_logic;
    data_in  : in  std_logic_vector(3 downto 0);
    code_out : out std_logic_vector(6 downto 0)
  );
end entity hamming_encoder;

architecture behavioral of hamming_encoder is
  signal code_reg   : std_logic_vector(6 downto 0);
begin
  process (clk, reset)
  begin
    if reset = '1' then
      code_reg <= "0000000";
    elsif rising_edge(clk) then
        case data_in is
          when "0000" =>
            code_reg <= "0000000";
          when "0001" =>
            code_reg <= "0001111";
          when "0010" =>
            code_reg <= "0010011";
          when "0011" =>
            code_reg <= "0011100";
          when "0100" =>
            code_reg <= "0100101";
          when "0101" =>
            code_reg <= "0101010";
          when "0110" =>
            code_reg <= "0110110";
          when "0111" =>
            code_reg <= "0111001";
          when "1000" =>
            code_reg <= "1000110";
          when "1001" =>
            code_reg <= "1001001";
          when "1010" =>
            code_reg <= "1010101";
          when "1011" =>
            code_reg <= "1011010";
          when "1100" =>
            code_reg <= "1100011";
          when "1101" =>
            code_reg <= "1101100";
          when "1110" =>
            code_reg <= "1110000";
          when "1111" =>
            code_reg <= "1111111";
          when others =>
            code_reg <= "0000000";
        end case;
    end if;
  end process;
  
  code_out <= code_reg;
end architecture behavioral;

