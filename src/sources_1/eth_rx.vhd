----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.05.2023 14:49:07
-- Design Name: 
-- Module Name: eth_rx - Behavioral
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

entity eth_rx is
port(
    RXD : in std_logic_vector(3 downto 0);
    RX_CLK, RX_DV : in std_logic;
    rst : in std_logic;
    RX_GOOD : out std_logic
    );
end eth_rx;

architecture Behavioral of eth_rx is

type state_type is (waiting, delim1, delim2, propagate);
signal statep, staten : state_type;

begin
type_sm:
process (RX_CLK, rst)
begin
if rising_edge(RX_CLK) then
    if statep = waiting then
        if RX_DV = '1' then
            statep <= delim1;
        end if;
    elsif statep = delim1 then
        statep <= delim2;
    elsif statep = delim2 then
        statep <= propagate;
        RX_GOOD <= '1';
    elsif statep = propagate then
        if RX_DV = '0' then
            statep <= waiting;
            RX_GOOD <= '0';
        end if;
    end if;
elsif (rst = '0') then 
    statep <= waiting;
    RX_GOOD <= '0';
end if; 
end process;
end Behavioral;
