library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity parallel2serial is

port (
  i_clk_fast                     : in  std_logic;
  i_clk_slow                     : in  std_logic;
  i_data                         : in  std_logic_vector(13 downto 0);
  o_data                         : out std_logic;
  o_array                        : out std_logic_vector(13 downto 0)
  );
end parallel2serial;

architecture rtl of parallel2serial is
signal r_data                         : std_logic_vector(13 downto 0);
signal slow_last : std_logic := '0';

begin


--process(i_clk_fast)
--begin
--if rising_edge(i_clk_fast) then
--    o_data          <= r_data(0);
----    r_data <= shift_right(r_data, 1);
--    r_data(12 downto 0) <= r_data ( 13 downto 1);
--    r_data(13) <= '0';
--    if counter = "1101" then
--        r_data <= i_data;
--        counter <= "0000";
--    end if;
--    counter <= counter + 1;
--end if;

--process(i_clk_slow)
--begin


--if rising_edge(i_clk_slow) then
--        r_data <= i_data;
    
--end if;


--end process;
process(i_clk_fast)
begin
if rising_edge(i_clk_fast) then
    r_data <= '0' & r_data ( 13 downto 1);
    o_data <= r_data(0);
    slow_last <= i_clk_slow;
    if slow_last = '0' and i_clk_slow = '1' then
        r_data <= i_data;
    end if;
    

end if;
end process;

o_array <= r_data;

end rtl;