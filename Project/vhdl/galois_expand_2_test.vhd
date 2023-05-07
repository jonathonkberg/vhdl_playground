
library ieee;
use ieee.std_logic_1164.ALL;

entity galois_expand_2_test is
end galois_expand_2_test;

architecture behavior of galois_expand_2_test is
  
  component galois_expand_2
    port(
      clk, start : in std_logic;
      packet_input, random_num_input : in std_logic_vector(7 downto 0);
      expand_out : out std_logic_vector(14 downto 0)
      --complete : out std_logic
      );
    end component;
    
    -- input signals
    signal packet_input, random_num_input : std_logic_vector(7 downto 0);
    signal clk, start : std_logic;
    
    -- output signals
    signal expand_out : std_logic_vector(14 downto 0);
    --signal complete : std_logic;
    
    begin
      
      -- declare component instance and map ports
      galois_expand_instance : galois_expand_2
      port map
      (
        start => start,
        clk => clk,
        packet_input => packet_input,
        random_num_input => random_num_input,
        expand_out => expand_out
        --complete => complete
      );
      
      clock : process
      begin
        clk <= '0', '1' after 25 ns; -- may need to adjust clk speed!!!
        wait for 50 ns; -- see comment above!!!
      end process;
      
      start_process : process
      begin
        start <= '1';
        wait for 50 ns;
        start <= '0';
        wait for 10000 ns;
      end process;
      
      stimulus_process : process
      begin
        packet_input <= "10101010";
        random_num_input <= "11001011";
        wait for 400 ns;
        packet_input <= "00010001";
        random_num_input <= "11100100";
        wait for 400 ns;
      end process;
      
    end;

