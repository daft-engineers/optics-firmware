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

architecture Behavioral of parallel2serial is
signal r_data                         : std_logic_vector(13 downto 0);
signal r_data_new                        : std_logic_vector(13 downto 0);

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

process(i_clk_slow,i_clk_fast)
begin

if rising_edge(i_clk_fast) then
    r_data <= '0' & r_data ( 13 downto 1);
    o_data          <= r_data(0);
    
end if;
if rising_edge(i_clk_slow) then
        r_data <= i_data;
end if;


end process;

o_array <= r_data;

end Behavioral;