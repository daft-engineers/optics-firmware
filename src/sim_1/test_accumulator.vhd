----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.05.2023 13:48:16
-- Design Name: 
-- Module Name: test_accumulator - Behavioral
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

entity test_accumulator is
--  Port ( );
end test_accumulator;

architecture Behavioral of test_accumulator is

signal clk_in, w_en, r_en : std_logic:= '0';
signal rst : std_logic := '1';
signal data_in : std_logic_vector(3 downto 0) := "0000";
signal data_out : std_logic_vector(3 downto 0);
signal mpt : std_logic;

constant period : time := 40ns;
constant half_period : time := 20ns;

begin

accum_test : entity work.accumulator_wrapper
port map (
    clk_0 => clk_in,
    din_0 => data_in,
    dout_0 => data_out,
    empty_0 => mpt,
    rd_en_0 => r_en,
    srst_0 => rst,
    wr_en_0 => w_en
    );

clk_in <= not clk_in after half_period;

process
begin
wait for 1000ns;
rst <= '0';
wait for 10ns;
data_in <= "1010";
wait for period;
data_in <= "0101";
wait for period;
data_in <= "0111";
w_en <= '1';
wait for period;
data_in <= "0110";
wait for period;
data_in <= "0010";
wait for period;
data_in <= "0011";
wait for period;
data_in <= "0100";
wait for period;
data_in <= "0101";
wait for period;
data_in <= "0110";
wait for period;
data_in <= "0111";
wait for period;
data_in <= "1000";
wait for period;
data_in <= "1001";
wait for period;
data_in <= "1010";
wait for period;
w_en <= '0';
data_in <= "1011";
wait for period;
data_in <= "1100";

-- the buffer is filled, now we empty it and verify

wait for 80ns;
r_en <= '1';
wait for period;
assert (data_out = "0111" ) report "Test failed as data out was not as expected 0111" severity error;
wait for period;
assert (data_out = "0110" ) report "Test failed as data out was not as expected 0110" severity error;
wait for period;
assert (data_out = "0010" ) report "Test failed as data out was not as expected 0010" severity error;
wait for period;
assert (data_out = "0011" ) report "Test failed as data out was not as expected 0011" severity error;
wait for period;
assert (data_out = "0100" ) report "Test failed as data out was not as expected 0100" severity error;
wait for period;
assert (data_out = "0101" ) report "Test failed as data out was not as expected" severity error;
wait for period;
assert (data_out = "0110" ) report "Test failed as data out was not as expected" severity error;
wait for period;
assert (data_out = "0111" ) report "Test failed as data out was not as expected" severity error;
wait for period;
assert (data_out = "1000" ) report "Test failed as data out was not as expected" severity error;
wait for period;
assert (data_out = "1001" ) report "Test failed as data out was not as expected" severity error;
wait for period;
assert (data_out = "1010" ) report "Test failed as data out was not as expected 1010" severity error;
wait for period;
r_en <= '0';
assert (mpt = '1') report "Not empty at end of test" severity error;
wait for 30ns;

end process;
end Behavioral;
