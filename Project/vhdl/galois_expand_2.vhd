library ieee;
use ieee.std_logic_1164.ALL;

entity galois_expand_2 is
    port(
        clk, start : in std_logic;
        packet_input, random_num_input : in std_logic_vector(7 downto 0);
        expand_out : out std_logic_vector(14 downto 0) := "000000000000000"
        --complete : out std_logic
    );
end galois_expand_2;



architecture galois_expand_arch of galois_expand_2 is

  signal row_0, row_1, row_2, row_3, row_4, row_5, row_6, row_7 : std_logic_vector(14 downto 0) := "000000000000000";
  signal ready_0, ready_1, ready_2, ready_3, ready_4, ready_5, ready_6, ready_7 : std_logic := '0';
  signal populate_rows_complete, populate_rows, xor_complete : std_logic := '0';
  signal reset_row_0_complete, reset_row_1_complete, reset_row_2_complete, reset_row_3_complete, reset_row_4_complete, reset_row_5_complete, reset_row_6_complete, reset_row_7_complete : std_logic := '0';
  signal reset0, reset1, reset2, reset3, reset4, reset5, reset6, reset7 : std_logic := '0';  
    
  begin

-- Restart expansion state machine
  -- Full expansion algorithm occurs in one main clock cycle
  -- Signals are re-initialized at restart of state machine
    process(clk) is
        begin
          if (clk'event and clk = '1') then
            if(ready_0 = '0' and ready_1 = '0' and ready_2 = '0' and ready_3 = '0' and ready_4 = '0' and ready_5 = '0' and ready_6 = '0' and ready_7 = '0') then
              populate_rows <= '1';
            elsif(ready_0 = '1' and ready_1 = '1' and ready_2 = '1' and ready_3 = '1' and ready_4 = '1' and ready_5 = '1' and ready_6 = '1' and ready_7 = '1') then
              populate_rows <= '0';
            end if;
          end if;
        end process;
        

-- Row population processes
  -- Processes only populate if populate_rows = 1
  -- Eight rows are populated concurrently
    process(clk) is
      begin
        if (clk'event and clk = '1') then
          if(start = '1' or xor_complete = '1') then
            ready_0 <= '0';
            row_0 <= "000000000000000";
            reset0 <= '1';
          elsif(xor_complete = '0') then
            reset0 <= '0';
          end if;
          if(populate_rows = '1') then
            if (random_num_input(0) = '1') then
              for i in 0 to 7 loop
                row_0(i) <= packet_input(i);
              end loop;
            end if;
            --populate_rows_complete <= '1';
            ready_0 <= '1';
          end if;
        end if;
      end process;

      process(clk) is
        begin
          if (clk'event and clk = '1') then
            if(start = '1' or xor_complete = '1') then
              ready_1 <= '0';
              row_1 <= "000000000000000";
              reset1 <= '1';
            elsif(xor_complete = '0') then
              reset1 <= '0';
            end if;
            if(populate_rows = '1') then
              if (random_num_input(0) = '1') then
                for i in 0 to 7 loop
                  row_1(i+1) <= packet_input(i);
                end loop;
              end if;
              --populate_rows_complete <= '1';
              ready_1 <= '1';
            end if;
          end if;
        end process;

        process(clk) is
          begin
            if (clk'event and clk = '1') then
              if(start = '1' or xor_complete = '1') then
                ready_2 <= '0';
                row_2 <= "000000000000000";
                reset2 <= '1';
              elsif(xor_complete = '0') then
                reset2 <= '0';
              end if;
              if(populate_rows = '1') then
                if (random_num_input(0) = '1') then
                  for i in 0 to 7 loop
                    row_2(i+2) <= packet_input(i);
                  end loop;
                end if;
                --populate_rows_complete <= '1';
                ready_2 <= '1';
              end if;
            end if;
          end process;

          process(clk, populate_rows) is
            begin
              if (clk'event and clk = '1') then
                if(start = '1' or xor_complete = '1') then
                  ready_3 <= '0';
                  row_3 <= "000000000000000";
                  reset3 <= '1';
                elsif(xor_complete = '0') then
                  reset3 <= '0';
                end if;
                if(populate_rows = '1') then
                  if (random_num_input(0) = '1') then
                    for i in 0 to 7 loop
                      row_3(i+3) <= packet_input(i);
                    end loop;
                  end if;
                  --populate_rows_complete <= '1';
                  ready_3 <= '1';
                end if;
              end if;
            end process;

            process(clk) is
              begin
                if (clk'event and clk = '1') then
                  if(start = '1' or xor_complete = '1') then
                    ready_4 <= '0';
                    row_4 <= "000000000000000";
                    reset4 <= '1';
                  elsif(xor_complete = '0') then
                    reset4 <= '0';
                  end if;
                  if(populate_rows = '1') then
                    if (random_num_input(0) = '1') then
                      for i in 0 to 7 loop
                        row_4(i+4) <= packet_input(i);
                      end loop;
                    end if;
                    --populate_rows_complete <= '1';
                    ready_4 <= '1';
                  end if;
                end if;
              end process;

              process(clk) is
                begin
                  if (clk'event and clk = '1') then
                    if(start = '1' or xor_complete = '1') then
                      ready_5 <= '0';
                      row_5 <= "000000000000000";
                      reset5 <= '1';
                    elsif(xor_complete = '0') then
                      reset5 <= '0';
                    end if;
                    if(populate_rows = '1') then
                      if (random_num_input(0) = '1') then
                        for i in 0 to 7 loop
                          row_5(i+5) <= packet_input(i);
                        end loop;
                      end if;
                      --populate_rows_complete <= '1';
                      ready_5 <= '1';
                    end if;
                  end if;
                end process;

                process(clk) is
                  begin
                    if (clk'event and clk = '1') then
                      if(start = '1' or xor_complete = '1') then
                        ready_6 <= '0';
                        row_6 <= "000000000000000";
                        reset6 <= '1';
                      elsif(xor_complete = '0') then
                        reset6 <= '0';
                      end if;
                      if(populate_rows = '1') then
                        if (random_num_input(0) = '1') then
                          for i in 0 to 7 loop
                            row_6(i+6) <= packet_input(i);
                          end loop;
                        end if;
                        --populate_rows_complete <= '1';
                        ready_6 <= '1';
                      end if;
                    end if;
                  end process;

                  process(clk) is
                    begin
                      if (clk'event and clk = '1') then
                        if(start = '1' or xor_complete = '1') then
                          ready_7 <= '0';
                          row_7 <= "000000000000000";
                          reset7 <= '1';
                        elsif(xor_complete = '0') then
                          reset7 <= '0';
                        end if;
                        if(populate_rows = '1') then
                          if (random_num_input(0) = '1') then
                            for i in 0 to 7 loop
                              row_7(i+7) <= packet_input(i);
                            end loop;
                          end if;
                          --populate_rows_complete <= '1';
                          ready_7 <= '1';
                        end if;
                      end if;
                    end process;

      
        
-- XOR operation
      process(clkrun)
        begin
          if(clk'event and clk = '1') then
            if(start = '1') then
              expand_out <= "000000000000000";
            end if;
            if(reset0 = '1' and reset1 = '1' and reset2 = '1' and reset3 = '1' and reset4 = '1' and reset5 = '1' and reset6 = '1' and reset7 = '1') then
              xor_complete <= '0';
            end if;
            if (start = '0' and ready_0 = '1' and ready_1 = '1' and ready_2 = '1' and ready_3 = '1' and ready_4 = '1' and ready_5 = '1' and ready_6 = '1' and ready_7 = '1') then
              for i in 0 to 14 loop
                expand_out(i) <= (((((((row_0(i) xor row_1(i)) xor row_2(i)) xor row_3(i)) xor row_4(i)) xor row_5(i)) xor row_6(i)) xor row_7(i));
              end loop;
              xor_complete <= '1';
            end if;
          end if;
        end process;
            
          
end galois_expand_arch;
