library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Test_HammingEncoder is
--  Port ( );
end Test_HammingEncoder;

architecture Behavioral of Test_HammingEncoder is
    signal stimulus : std_logic_vector(3 downto 0);
    signal result : std_logic_vector(6 downto 0);
    signal data_ready : std_logic;
    signal reset : std_logic;
begin
    Encoder : entity work.hamming_encoder 
    port map (
        clk => data_ready, 
        reset => reset, 
        data_in => stimulus, 
        code_out => result
    );
    
    process
        constant period: time := 20ns;
        begin
            reset <= '1';
            wait for 1ns;
            reset <= '0';
            data_ready <= '0';
            stimulus <= "0000";
            wait for 19ns;

            stimulus <= "0000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0000000") report "test failed for stim = 0000" severity error;
            wait for period;
        
            stimulus <= "0001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0001111") report "test failed for stim = 0001" severity error;
            wait for period;
        
            stimulus <= "0010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0010011") report "test failed for stim = 0010" severity error;
            wait for period;
        
            stimulus <= "0011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0011100") report "test failed for stim = 0011" severity error;
            wait for period;
        
            stimulus <= "0100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0100101") report "test failed for stim = 0100" severity error;
            wait for period;
        
            stimulus <= "0101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0101010") report "test failed for stim = 0101" severity error;
            wait for period;
        
            stimulus <= "0110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0110110") report "test failed for stim = 0110" severity error;
            wait for period;
        
            stimulus <= "0111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "0111001") report "test failed for stim = 0111" severity error;
            wait for period;
        
            stimulus <= "1000";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1000110") report "test failed for stim = 1000" severity error;
            wait for period;
        
            stimulus <= "1001";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1001001") report "test failed for stim = 1001" severity error;
            wait for period;
        
            stimulus <= "1010";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1010101") report "test failed for stim = 1010" severity error;
            wait for period;
        
            stimulus <= "1011";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1011010") report "test failed for stim = 1011" severity error;
            wait for period;
        
            stimulus <= "1100";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1100011") report "test failed for stim = 1100" severity error;
            wait for period;
        
            stimulus <= "1101";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1101100") report "test failed for stim = 1101" severity error;
            wait for period;
        
            stimulus <= "1110";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1110000") report "test failed for stim = 1110" severity error;
            wait for period;
        
            stimulus <= "1111";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "1111111") report "test failed for stim = 1111" severity error;
            wait for period;
        
            wait;
    end process;
end Behavioral;
