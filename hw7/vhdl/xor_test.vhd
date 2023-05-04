library ieee;
use ieee.std_logic_1164.ALL;

entity xor_8 is
end xor_8;

architecture behavior of xor_8 is
  
  component eight_input_xor
    port(
        in_vect : in std_ulogic_vector(7 downto 0);
        xor_out : out std_ulogic
      );
    end component;
    
    -- input signals
    signal in_vect : std_ulogic_vector(7 downto 0);
    
    -- output signals
    signal xor_out : std_ulogic;
    
    begin
      
      -- declare component instance and map ports
      xor_instance : eight_input_xor
      port map
      (
        in_vect => in_vect,
        xor_out => xor_out
      );
      

      
      stimulus : process
      begin
        in_vect(0) <= '1', '0' after 100 ns;
        wait for 200 ns;
        in_vect(2) <= '1', '0' after 80 ns;
        wait for 100 ns;
        in_vect(3) <= '1', '0' after 100 ns;
        wait for 300 ns;
        in_vect(5) <= '1', '0' after 50 ns;
        wait for 500 ns;
        in_vect(6) <= '1', '0' after 100 ns;
        wait for 100 ns;
        in_vect(7) <= '1', '0' after 200 ns;
        wait for 500 ns;
        in_vect(1) <= '1', '0' after 70 ns;
        wait for 700 ns;
      end process;
      
      
    end;


