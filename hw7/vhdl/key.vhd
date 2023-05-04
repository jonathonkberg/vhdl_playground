library ieee;
use ieee.std_logic_1164.ALL;

-- entity takes two 40 bit vectors and XORs them to produce 40 bit output
entity key_fsm is
    port(
        a, reset, clk : in std_ulogic;
        r : in std_ulogic_vector(3 downto 0)
    );
end key_fsm;

architecture fsm_basic of key_fsm is
  
  signal n_state, state : std_ulogic_vector(2 downto 0);
  
    begin
        process(state, a, r)
        begin
            if (state = "000" and a = '1' and CLK = '1' and clk'event) then
                n_state <= "001";
            elsif (state = "001" and clk = '1') then
                if(r(0) = '1') then
                    n_state <= "010";
                else
                    n_state <= "000";
                end if;
            elsif (state = "010" and clk = '1' and clk'event) then
                if(r(1) = '1') then
                    n_state <= "011";
                else
                    n_state <= "000";
                end if;
            elsif (state = "011" and clk = '1' and clk'event) then
                if(r(2) = '0') then
                    n_state <= "100";
                else
                    n_state <= "000";
                end if;
            elsif (state = "100" and clk = '1' and clk'event) then
                if(r(3) = '1') then
                    n_state <= "101";
                else
                    n_state <= "000";
                end if;
            end if;
        end process;
        
        process(n_state, reset)
          begin
            if (reset = '0' and clk = '1' and clk'event) then
              state <= n_state;
            elsif(reset = '1') then
              state <= "000";
            end if;
          end process;
        
        
    end fsm_basic;

