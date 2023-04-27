library ieee;
use ieee.std_logic_1164.ALL;

entity galois_expand_test is
end galois_expand_test;

architecture behavior of galois_expand_test is
  
  component galois_expand
    port(
      clk : in std_logic;
      packet_input, random_num_input : in std_logic_vector(7 downto 0);
      mult_out : out std_logic_vector(14 downto 0);
      complete : out std_logic
      );
    end component;
    
    -- input signals
    signal packet_input, random_num_input : std_logic_vector(7 downto 0);
    signal clk : std_logic;
    
    -- output signals
    signal mult_out : std_logic_vector(14 downto 0);
    signal complete : std_logic;
    
    begin
      
      -- declare component instance and map ports
      galois_expand_instance : galois_expand
      port map
      (
        clk => clk,
        packet_input => packet_input,
        random_num_input => random_num_input,
        mult_out => mult_out,
        complete => complete
      );
      
      clock : process
      begin
        clk <= '0', '1' after 25 ns; -- may need to adjust clk speed!!!
        wait for 50 ns; -- see comment above!!!
      end process;
      
      stimulus_process : process
      begin
        packet_input <= "10010011";
        random_num_input <= "01011001";
        
        wait for 200 ns;
        
        packet_input <= "10101010";
        random_num_input <= "01010101";
        
        wait for 200 ns;
        
      end process;
      
    end;
