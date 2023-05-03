library ieee;
use ieee.std_logic_1164.ALL;

-- entity takes two 40 bit vectors and XORs them to produce 40 bit output
entity key_fsm is
    port(
        state : inout std_ulogic_vector(2 downto 0);
        a : in std_ulogic;
        r : in std_ulogic_vector(3 downto 0);
    );
end key_fsm;

architecture fsm_basic of key_fsm is
    begin
        process(state, a, r)
        begin
            if (state = "000" and a = '1')
                state <= "001";
            elsif (state = "001")
                if(r(0) = '1')
                    state <= "010";
                else
                    state <= "000";
                end if;
            elsif (state = "010")
                if(r(1) = '1')
                    state <= "011";
                else
                    state <= "000";
                end if;
            elsif (state = "011");
                if(r(2) = '0')
                    state <= "100";
                else
                    state <= "000";
                end if;
            elsif (state = "100")
                if(r(3) = '1')
                    state <= "101";
                else
                    state <= "000";
                end if;
            end if;
        end process;
    end fsm_basic;
