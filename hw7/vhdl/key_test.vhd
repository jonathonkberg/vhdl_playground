library ieee;
use ieee.std_logic_1164.ALL;

entity key_test is
end key_test;

architecture behavior of key_test is
  
  component key_fsm
    port(
        a, reset, clk : in std_ulogic;
        r : in std_ulogic_vector(3 downto 0)
    );
    end component;
    
    -- input signals
    signal a, reset, clk : std_ulogic;
    
    -- output signals
    signal r : std_ulogic_vector(3 downto 0);
    
    begin
      
      -- declare component instance and map ports
      key_instance : key_fsm
      port map
      (
        a => a,
        r => r,
        reset => reset,
        clk => clk
      );
      
      clock : process
      begin
        clk <= '0', '1' after 25 ns; -- may need to adjust clk speed!!!
        wait for 50 ns; -- see comment above!!!
      end process;
      
      reset_process : process
      begin
        reset <= '0', '1' after 700 ns;
        wait for 7100 ns;
      end process;
      
      stimulus : process
      begin
        
        a <= '0', '1' after 100 ns;
        r <= "1110" after 150 ns, "1101" after 400 ns;
        wait for 800 ns;
        
      end process;
      
      
    end;




