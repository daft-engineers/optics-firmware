----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2023 22:58:03
-- Design Name: 
-- Module Name: manc_encoder - Behavioral
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

entity manc_encoder_single is
    Port ( data_in : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (1 downto 0);
           clk : in std_logic);
end manc_encoder_single;

architecture Behavioral_single of manc_encoder_single is

begin

process (clk)
begin
if rising_edge(clk) then
    case data_in is
        when '0' =>
            data_out <= "01";
        when '1' =>
            data_out <= "10";
        when others =>
            data_out <= "00";
    end case;
end if;
end process; 

end Behavioral_single;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity manc_encoder is
    Port ( data_in : in STD_LOGIC_VECTOR (6 downto 0);
           clk : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (13 downto 0));
end manc_encoder;

architecture Behavioral of manc_encoder is

component manc_encoder_single is
    port (
        data_in: in std_logic;
        data_out: out std_logic_vector (1 downto 0);
        clk: in std_logic
    );
end component;

begin

b1: manc_encoder_single port map (
    data_in => data_in(6),
    clk => clk,
    data_out(0) => data_out(13),
    data_out(1) => data_out(12)
);

b2: manc_encoder_single port map (
    data_in => data_in(5),
    clk => clk,
    data_out(0) => data_out(11),
    data_out(1) => data_out(10)
);

b3: manc_encoder_single port map (
    data_in => data_in(4),
    clk => clk,
    data_out(0) => data_out(9),
    data_out(1) => data_out(8)
);


b4: manc_encoder_single port map (
    data_in => data_in(3),
    clk => clk,
    data_out(0) => data_out(7),
    data_out(1) => data_out(6)
);

b5: manc_encoder_single port map (
    data_in => data_in(2),
    clk => clk,
    data_out(0) => data_out(5),
    data_out(1) => data_out(4)
);

b6: manc_encoder_single port map (
    data_in => data_in(1),
    clk => clk,
    data_out(0) => data_out(3),
    data_out(1) => data_out(2)
);

b7: manc_encoder_single port map (
    data_in => data_in(0),
    clk => clk,
    data_out(0) => data_out(1),
    data_out(1) => data_out(0)
);


end Behavioral;
