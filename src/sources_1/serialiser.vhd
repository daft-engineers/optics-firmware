library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity parallel2serial is

port (
  i_clk_fast                     : in  std_logic;
  i_clk_slow                     : in  std_logic;
  i_data                         : in  std_logic_vector(13 downto 0);
  o_data                         : out std_logic);
end parallel2serial;

architecture Behavioral of parallel2serial is
signal r_data_enable                  : std_logic;
signal r_data                         : unsigned(13 downto 0);

begin
o_data          <= r_data(0);

process(i_clk_slow,i_clk_fast)
begin

if rising_edge(i_clk_slow) then
    r_data <= unsigned(i_data);
elsif rising_edge(i_clk_fast) then
    
    r_data <= shift_right(r_data, 1);
    
end if;
end process;

end Behavioral;