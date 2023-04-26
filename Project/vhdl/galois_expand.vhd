library ieee;
use ieee.std_logic_1164.ALL;

entity galois_expand is
    port(
        clk : in std_logic;
        packet_input, random_num_input : in std_logic_vector(7 downto 0);
        mult_out : out std_logic_vector(14 downto 0);
        finish : out std_logic
    );
end galois_expand;



architecture galois_expand_fsm of galois_expand is

  signal row_0, row_1, row_2, row_3, row_4, row_5, row_6, row_7 : std_logic_vector(14 downto 0);
  signal perform_xor : std_logic_vector(7 downto 0);
  signal start_xor, calc_complete : std_logic;
    
  begin

-- Restart expansion state machine
  -- Full expansion algorithm occurs in one main clock cycle
  -- Signals are re-initialized at restart of state machine
    process(clk) is
        begin
          if clk'event and clk = '1' then
            row_0 <= "000000000000000";
            row_1 <= "000000000000000";
            row_2 <= "000000000000000";
            row_3 <= "000000000000000";
            row_4 <= "000000000000000";
            row_5 <= "000000000000000";
            row_6 <= "000000000000000";
            row_7 <= "000000000000000";
            mult_out <= "000000000000000";
            finish <= '0';
            perform_xor <= "00000000";
            calc_complete <= '0';
          end if;
        end process;
        

-- Row population processes
  -- Processes only populate if populate_rows = 1
  -- Eight rows are populated concurrently
    process(packet_input, random_num_input, perform_xor) is
      begin
        if (random_num_input(0) = '1' and perform_xor(0) = '0') then
          for i in 0 to 7 loop
            row_0(i) <= packet_input(i);
            perform_xor(0) <= '1';
          end loop;
        end if;
      end process;
      
      process(packet_input, random_num_input, perform_xor) is
      begin
        if (random_num_input(1) = '1' and perform_xor(1) = '0') then
          for i in 0 to 7 loop
            row_1(i+1) <= packet_input(i);
            perform_xor(1) <= '1';
          end loop;
        end if;
      end process;
      
      process(packet_input, random_num_input, perform_xor) is
      begin
        if (random_num_input(2) = '1' and perform_xor(2) = '0') then
          for i in 0 to 7 loop
            row_2(i+2) <= packet_input(i);
            perform_xor(2) <= '1';
          end loop;
        end if;
      end process;
      
      process(packet_input, random_num_input, perform_xor) is
      begin
        if (random_num_input(3) = '1' and perform_xor(3) = '0') then
          for i in 0 to 7 loop
            row_3(i+3) <= packet_input(i);
            perform_xor(3) <= '1';
          end loop;
        end if;
      end process;
      
      process(packet_input, random_num_input, perform_xor) is
      begin
        if (random_num_input(4) = '1' and perform_xor(4) = '0') then
          for i in 0 to 7 loop
            row_4(i+4) <= packet_input(i);
            perform_xor(4) <= '1';
          end loop;
        end if;
      end process;
      
      process(packet_input, random_num_input, perform_xor) is
      begin
        if (random_num_input(5) = '1' and perform_xor(5) = '0') then
          for i in 0 to 7 loop
            row_5(i+5) <= packet_input(i);
            perform_xor(5) <= '1';
          end loop;
        end if;
      end process;
      
      process(packet_input, random_num_input, perform_xor) is
      begin
        if (random_num_input(6) = '1' and perform_xor(6) = '0') then
          for i in 0 to 7 loop
            row_6(i+6) <= packet_input(i);
            perform_xor(6) <= '1';
          end loop;
        end if;
      end process;
      
      process(packet_input, random_num_input, perform_xor) is
      begin
        if (random_num_input(7) = '1' and perform_xor(7) = '0') then
          for i in 0 to 7 loop
            row_7(i+7) <= packet_input(i);
            perform_xor(7) <= '1';
          end loop;
        end if;
      end process;
      
-- Direct FSM to XOR operation
      process(perform_xor, start_xor)
        begin
          if (perform_xor = "11111111" and start_xor = '0') then
            start_xor <= '1';
          end if;
        end process;
        
-- XOR operation
      process(row_1, row_2, row_3, row_4, row_5, row_6, row_7, start_xor, calc_complete)
        begin
          if (start_xor = '1' and calc_complete = '0') then
            for i in 0 to 14 loop
              mult_out(i) <= ((((((row_1(i) xor row_2(i)) xor row_3(i)) xor row_4(i)) xor row_5(i)) xor row_6(i)) xor row_7(i));
            end loop;
            calc_complete <= '1';
            finish <= '1';
          end if;
        end process;
            
          
end galois_expand_fsm;
