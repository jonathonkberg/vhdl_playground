library ieee;
use ieee.std_logic_1164.ALL;

entity lfsr_test is
end lfsr_test;

architecture behavior of lfsr_test is
  
  component lfsr
    port(
      CLK, reset: in bit;
      random_number_out : out bit_vector(7 downto 0)
      );
    end component;
    
    -- input signals
    signal clk, reset : bit;
    
    -- output signals
    signal random_number_out : bit_vector(7 downto 0);
    
    begin
      
      -- declare component instance and map ports
      lfsr_instance : lfsr
      port map
      (
        clk => clk,
        random_number_out => random_number_out,
        reset => reset
      );
      
      clock : process
      begin
        clk <= '0', '1' after 25 ns; -- may need to adjust clk speed!!!
        wait for 50 ns; -- see comment above!!!
      end process;
      
      stimulus : process
      begin
        reset <= '1', '0' after 200 ns;
        wait for 700 ns;
      end process;
      
      
    end;

