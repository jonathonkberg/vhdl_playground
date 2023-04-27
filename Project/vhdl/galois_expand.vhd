library ieee;
use ieee.std_logic_1164.ALL;

entity galois_expand is
    port(
        clk : in std_logic;
        packet_input, random_num_input : in std_logic_vector(7 downto 0);
        mult_out : out std_logic_vector(14 downto 0);
        complete : out std_logic
    );
end galois_expand;



architecture galois_expand_fsm of galois_expand is

  signal row_0, row_1, row_2, row_3, row_4, row_5, row_6, row_7 : std_logic_vector(14 downto 0);
  signal ready_0, ready_1, ready_2, ready_3, ready_4, ready_5, ready_6, ready_7 : std_logic;
  signal start_xor, complete_fsm, populate_rows, reset_rows : std_logic;
    
  begin

-- Restart expansion state machine
  -- Full expansion algorithm occurs in one main clock cycle
  -- Signals are re-initialized at restart of state machine
    process(clk, complete_fsm) is
        begin
          if (clk'event and clk = '1') then
            populate_rows <= '1';
            reset_rows <= '1';
          elsif (complete_fsm = '1') then
            populate_rows <= '0';
            reset_rows <= '0';
          end if;
        end process;
        

-- Row population processes
  -- Processes only populate if populate_rows = 1
  -- Eight rows are populated concurrently
    process(populate_rows, complete_fsm) is
      begin
        if(reset_rows = '1' or complete_fsm = '1') then
          ready_0 <= '0';
          row_0 <= "000000000000000";
        end if;
        if(populate_rows = '1') then
          if (random_num_input(0) = '1'  and complete_fsm = '0') then
            for i in 0 to 7 loop
              row_0(i) <= packet_input(i);
            end loop;
          end if;
          ready_0 <= '1';
        end if;
      end process;

      process(populate_rows, complete_fsm) is
        begin
          if(reset_rows = '1'  or complete_fsm = '1') then
            ready_1 <= '0';
            row_1 <= "000000000000000";
          end if;
          if(populate_rows = '1') then
            if (random_num_input(1) = '1'  and complete_fsm = '0') then
              for i in 0 to 7 loop
                row_1(i+1) <= packet_input(i);
              end loop;
            end if;
            ready_1 <= '1';
          end if;
        end process;

        process(populate_rows, complete_fsm) is
          begin
            if(reset_rows = '1'  or complete_fsm = '1') then
              ready_2 <= '0';
              row_2 <= "000000000000000";
            end if;
            if(populate_rows = '1') then
              if (random_num_input(2) = '1'  and complete_fsm = '0') then
                for i in 0 to 7 loop
                  row_2(i+2) <= packet_input(i);
                end loop;
              end if;
              ready_2 <= '1';
            end if;
          end process;

          process(populate_rows, complete_fsm) is
            begin
              if(reset_rows = '1'  or complete_fsm = '1') then
                ready_3 <= '0';
                row_3 <= "000000000000000";
              end if;
              if(populate_rows = '1') then
                if (random_num_input(3) = '1'  and complete_fsm = '0') then
                  for i in 0 to 7 loop
                    row_3(i+3) <= packet_input(i);
                  end loop;
                end if;
                ready_3 <= '1';
              end if;
            end process;

            process(populate_rows, complete_fsm) is
              begin
                if(reset_rows = '1'  or complete_fsm = '1') then
                  ready_4 <= '0';
                  row_4 <= "000000000000000";
                end if;
                if(populate_rows = '1') then
                  if (random_num_input(4) = '1'  and complete_fsm = '0') then
                    for i in 0 to 7 loop
                      row_4(i+4) <= packet_input(i);
                    end loop;
                  end if;
                  ready_4 <= '1';
                end if;
              end process;

              process(populate_rows, complete_fsm) is
                begin
                  if(reset_rows = '1'  or complete_fsm = '1') then
                    ready_5 <= '0';
                    row_5 <= "000000000000000";
                  end if;
                  if(populate_rows = '1') then
                    if (random_num_input(5) = '1'  and complete_fsm = '0') then
                      for i in 0 to 7 loop
                        row_5(i+5) <= packet_input(i);
                      end loop;
                    end if;
                    ready_5 <= '1';
                  end if;
                end process;

                process(populate_rows, complete_fsm) is
                  begin
                    if(reset_rows = '1'  or complete_fsm = '1') then
                      ready_6 <= '0';
                      row_6 <= "000000000000000";
                    end if;
                    if(populate_rows = '1') then
                      if (random_num_input(6) = '1'  and complete_fsm = '0') then
                        for i in 0 to 7 loop
                          row_6(i+6) <= packet_input(i);
                        end loop;
                      end if;
                      ready_6 <= '1';
                    end if;
                  end process;

                  process(populate_rows, complete_fsm) is
                    begin
                      if(reset_rows = '1'  or complete_fsm = '1') then
                        ready_7 <= '0';
                        row_7 <= "000000000000000";
                      end if;
                      if(populate_rows = '1' and complete_fsm = '0') then
                        if (random_num_input(7) = '1') then
                          for i in 0 to 7 loop
                            row_7(i+7) <= packet_input(i);
                          end loop;
                        end if;
                        ready_7 <= '1';
                      end if;
                    end process;
 
      
        
-- XOR operation
      process(populate_rows, ready_0, ready_1, ready_2, ready_3, ready_4, ready_5, ready_6, ready_7)
        begin
          if (populate_rows = '1') then
            mult_out <= "000000000000000";
            complete_fsm <= '0';
            complete <= '0';
          end if;
          if (ready_0 = '1' and ready_1 = '1' and ready_2 = '1' and ready_3 = '1' and ready_4 = '1' and ready_5 = '1' and ready_6 = '1' and ready_7 = '1') then
            for i in 0 to 14 loop
              mult_out(i) <= (((((((row_0(i) xor row_1(i)) xor row_2(i)) xor row_3(i)) xor row_4(i)) xor row_5(i)) xor row_6(i)) xor row_7(i));
            end loop;
            complete_fsm <= '1';
            complete <= '1';
          end if;
        end process;
            
          
end galois_expand_fsm;
