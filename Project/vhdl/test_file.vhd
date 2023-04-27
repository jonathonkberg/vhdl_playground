library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity galois_expand is
    port(
        clk : in std_logic;
        packet_input, random_num_input : in std_logic_vector(7 downto 0);
        mult_out : out std_logic_vector(15 downto 0);
        complete : out std_logic
    );
end galois_expand;



architecture galois_expand_fsm of galois_expand is

  signal row_0, row_1, row_2, row_3, row_4, row_5, row_6, row_7 : std_logic_vector(14 downto 0);
  signal perform_xor : std_logic_vector(7 downto 0);
  signal start_xor, calc_complete, populate_rows : std_logic;
    
  begin

-- Restart expansion state machine
  -- Full expansion algorithm occurs in one main clock cycle
  -- Signals are re-initialized at restart of state machine
    process(clk) is
        begin
          if (clk'event and clk = '1') then
            row_0 <= "000000000000000";
            row_1 <= "000000000000000";
            row_2 <= "000000000000000";
            row_3 <= "000000000000000";
            row_4 <= "000000000000000";
            row_5 <= "000000000000000";
            row_6 <= "000000000000000";
            row_7 <= "000000000000000";
            --mult_out <= "000000000000000";
            complete <= '0';
            perform_xor <= "00000000";
            calc_complete <= '0';
            populate_rows <= '1';
          end if;
        end process;


        process(populate_rows, perform_xor) is
        begin
          if(populate_rows = '1' and perform_xor(1) = '0') then
            if (random_num_input(1) = '1') then
              for i in 7 downto 0 loop
                mult_out(i+1) <= packet_input(i);
              end loop;
            end if;
            perform_xor(1) <= '1';
          end if;
        end process;

end galois_expand_fsm;