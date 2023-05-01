import komm
import numpy as np

code = komm.HammingCode(3)

def numpy_bits_to_str(np_arr):
    return "".join([str(b) for b in np_arr])

def print_all():
    for i in range(16):
        message = np.unpackbits(np.array(i, dtype=np.uint8))[-4:]
        result = code.encode(message)
        print(f'{message} -> {result}')

def print_encoder_case(in_name, out_name):
    print(f"case {in_name} is")
    for i in range(16):
        message = np.unpackbits(np.array(i, dtype=np.uint8))[-4:]
        result = code.encode(message)
        d_in = numpy_bits_to_str(message)
        d_out = numpy_bits_to_str(result)
        print(f'  when "{d_in}" =>\n    {out_name} <= "{d_out}";')
    print("end case;")

def print_decoder_case():
    for i in range(2 ** code.length):
        data_in = np.unpackbits(np.array(i, dtype=np.uint8))[-(code.length):]
        result = code.decode(data_in, "syndrome_table")
        print(f'when "{numpy_bits_to_str(data_in)}" =>\n    result <= "{numpy_bits_to_str(result)}";')

def generate_test():
    test_bench = """library IEEE;
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
"""
    
    for stim in range(16):
        message = np.unpackbits(np.array(stim, dtype=np.uint8))[-4:]
        result = code.encode(message)
        d_in = numpy_bits_to_str(message)
        d_expected = numpy_bits_to_str(result)
        test_bench += f"""
            stimulus <= "{d_in}";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "{d_expected}") report "test failed for stim = {d_in}" severity error;
            wait for period;
        """
    
    test_bench += """
            wait;
    end process;
end Behavioral;
"""
    with open("Test_HammingEncoder.vhd", "w") as f:
        f.write(test_bench)

def generate_decoder_tests():
    for i in range(2 ** code.length):
        data_in = np.unpackbits(np.array(i, dtype=np.uint8))[-(code.length):]
        stim = numpy_bits_to_str(data_in)
        result = numpy_bits_to_str(code.decode(data_in, "syndrome_table"))
        print(f"""
            stimulus <= "{stim}";
            data_ready <= '1';
            wait for period;
            data_ready <= '0';
            assert (result = "{result}") report "test dailed for stim = {stim}" severity error;
            wait for period;""")

generate_decoder_tests()
