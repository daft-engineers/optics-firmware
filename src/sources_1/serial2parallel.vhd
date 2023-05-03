----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.05.2023 18:43:13
-- Design Name: 
-- Module Name: serial2parallel - Behavioral
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity serial2parallel is
    Port ( i_data : in STD_LOGIC;
           i_clk_fast : in STD_LOGIC;
           i_clk_slow : in STD_LOGIC;
           o_data : out STD_LOGIC_VECTOR (13 downto 0));
end serial2parallel;

architecture Behavioral of serial2parallel is

signal r_data : unsigned (13 downto 0);

begin

process (i_clk_fast, i_clk_slow)

begin
    if rising_edge(i_clk_fast) then
        r_data <= shift_left(r_data, 1);
        r_data(0) <= i_data;
    elsif rising_edge(i_clk_slow) then
        o_data <= std_logic_vector(r_data);
    end if;
    
end process;

end Behavioral;
