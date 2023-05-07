library ieee;
use ieee.std_logic_1164.ALL;

entity galois_adder is
    port(
        clk : in std_logic;
        input_a, input_b : in std_logic_vector(7 downto 0);
        add_out : out std_logic_vector(7 downto 0)
    );
end galois_adder;



architecture galois_add_arch of galois_adder is

    
  begin

    process(clk)
      begin
        if(clk = '1') then
          for i in 7 downto 0 loop
            add_out(i) <= input_a(i) xor input_b(i);
          end loop;
        end if;
      end process;      
          
end galois_add_arch;
