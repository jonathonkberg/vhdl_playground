
library ieee;
use ieee.std_logic_1164.ALL;

entity galois_multiply_test is
end galois_multiply_test;

architecture behavior of galois_multiply_test is
  
  component galois_multiplier
    port(
      packet_input, random_num_input : in std_logic_vector(7 downto 0);
      final_mult : out std_logic_vector(7 downto 0);
      clk : in std_logic
      );
    end component;
    
    -- input signals
    signal packet_input, random_num_input : std_logic_vector(7 downto 0);
    signal clk : std_logic;
    
    -- output signals
    signal final_mult : std_logic_vector(7 downto 0);
    
    begin
      
      -- declare component instance and map ports
      galois_expand_instance : galois_multiplier
      port map
      (
        clk => clk,
        packet_input => packet_input,
        random_num_input => random_num_input,
        final_mult => final_mult
      );
      
      clock : process
      begin
        clk <= '0', '1' after 25 ns; -- may need to adjust clk speed!!!
        wait for 50 ns; -- see comment above!!!
      end process;
      
      stimulus_process : process
      begin
        wait for 1 ns;
        packet_input <= "10101010";
        random_num_input <= "11001011";
        
        wait for 1000 ns;
        
        packet_input <= "00010001";
        random_num_input <= "11100100";
        
        wait for 1000 ns;
        
      end process;
      
    end;

