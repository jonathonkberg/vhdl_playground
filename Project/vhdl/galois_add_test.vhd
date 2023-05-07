
library ieee;
use ieee.std_logic_1164.ALL;

entity galois_add_test is
end galois_add_test;

architecture behavior of galois_add_test is
  
  component galois_adder
    port(
      clk : in std_logic;
      input_a, input_b : in std_logic_vector(7 downto 0);
      add_out : out std_logic_vector(7 downto 0)
      );
    end component;
    
    -- input signals
    signal input_a, input_b : std_logic_vector(7 downto 0);
    signal clk : std_logic;
    
    -- output signals
    signal add_out : std_logic_vector(7 downto 0);
    
    begin
      
      -- declare component instance and map ports
      galois_adder_instance : galois_adder
      port map
      (
        clk => clk,
        input_a => input_a,
        input_b => input_b,
        add_out => add_out
      );
      
      clock : process
      begin
        clk <= '0', '1' after 25 ns; -- may need to adjust clk speed!!!
        wait for 50 ns; -- see comment above!!!
      end process;
      
      stimulus_process : process
      begin
        input_a <= "10101010";
        input_b <= "11001011";
        wait for 100 ns;
        input_a <= "00001111";
        input_b <= "10101010";
        wait for 100 ns;
        input_a <= "01110101";
        input_b <= "00010010";
        wait for 100 ns;
        input_a <= "01110100";
        input_b <= "01010101";
        wait for 100 ns;        
      end process;
      
    end;

