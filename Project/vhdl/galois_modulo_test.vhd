library ieee;
use ieee.std_logic_1164.ALL;

entity galois_modulo_test is
end galois_modulo_test;

architecture behavior of galois_modulo_test is
  
  component modu
    port(
      a: IN STD_LOGIC_VECTOR(14 downto 0); 
      clk: IN STD_LOGIC;
      remin: OUT STD_LOGIC_VECTOR(7 downto 0)
      );
    end component;
    
    -- input signals
    signal a : std_logic_vector(14 downto 0);
    signal clk : std_logic;
    
    -- output signals
    signal remin : std_logic_vector(7 downto 0);
    
    begin
      
      -- declare component instance and map ports
      galois_modulo_instance : modu
      port map
      (
        clk => clk,
        a => a,
        remin => remin
      );
      
      clock : process
      begin
        clk <= '0', '1' after 25 ns; -- may need to adjust clk speed!!!
        wait for 50 ns; -- see comment above!!!
      end process;
      
      stimulus_process : process
      begin
        a <= "000000000000000";
        wait for 500 ns;
        a <= "111101100101110";       
        wait for 500 ns;        
      end process;
      
    end;


