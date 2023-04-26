library ieee;
use ieee.std_logic_1164.ALL;

-- entity takes two 40 bit vectors and XORs them to produce 40 bit output
entity galois_adder is
    port(
        clk : in std_logic;
        add_in_1, add_in_2 : in std_logic_vector(7 downto 0);
        add_out : out std_logic_vector(7 downto 0);
    );
end galois_adder;

architecture xor_basic of galois_adder is
    
    process(add_in_1, add_in_2)

        begin
            for i in range 0 to 7 loop
                add_out(i) <= add_in_1(i) XOR add_in_2(i);
            end loop;
        end process;

end architecture;