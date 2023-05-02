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
signal r_data                         : std_logic_vector(13 downto 0);

begin
o_data          <= r_data(0);

process(i_clk_slow,i_clk_fast)
begin

if rising_edge(i_clk_slow) then
    r_data <= i_data;
elsif rising_edge(i_clk_fast) then
    
    --for k in 0 to G_N-1 loop
    --    r_data(k) <= r_data(k+1);
    --end loop;
    r_data(0) <= r_data(1);
    r_data(1) <= r_data(2);
    r_data(2) <= r_data(3);
    r_data(3) <= r_data(4);
    r_data(4) <= r_data(5);
    r_data(5) <= r_data(6);
    r_data(6) <= r_data(7);
    r_data(7) <= r_data(8);
    r_data(8) <= r_data(9);
    r_data(9) <= r_data(10);
    r_data(10) <= r_data(11);
    r_data(11) <= r_data(12);
    r_data(12) <= r_data(13);
    r_data(13) <= '0';
    
end if;
end process;

end Behavioral;