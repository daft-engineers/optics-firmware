----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/29/2023 01:35:33 PM
-- Design Name: 
-- Module Name: manchester_decoder - Behavioral
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

entity manchester_decoder is
  Port (clk, data_in: in std_logic;
        data_out: out std_logic );
end manchester_decoder;

architecture Behavioral of manchester_decoder is
begin

Process(clk) -- decode the data
begin
if rising_edge(clk) then
    data_out<= clk xor data_in;
end if;

end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity manchester_clock_recovery is
   Port (clk_in: in std_logic;
        clk_out: out std_logic );
end manchester_clock_recovery;

architecture Behavioral of manchester_clock_recovery is
begin
clk_out<= clk_in;

end Behavioral;


