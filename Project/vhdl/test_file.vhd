library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity galois_expand is
    port(
        clk : in std_logic;
        packet_input, random_num_input : in std_logic_vector(7 downto 0);
        mult_out : out std_logic_vector(14 downto 0);
        complete : out std_logic
        row_0, row_1, row_2, row_3, row_4, row_5, row_6, row_7 : out std_logic_vector(14 downto 0);
    );
end galois_expand;



architecture galois_expand_fsm of galois_expand is

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
            complete <= '0';
            perform_xor <= "00000000";
            calc_complete <= '0';
            populate_rows <= '1';
          end if;
        end process;


        process(populate_rows) is
        begin
        mult_out <= "000000000000000";
          if(populate_rows = '1') then
            if (random_num_input(1) = '1') then
              for i in 7 downto 0 loop
                mult_out(i+1) <= packet_input(i) after 1 ns;
             end loop;
            end if;
            perform_xor(1) <= '1' after 1 ns;
          end if;
        end process;



            process(populate_rows) is
      begin
        row_0 <= "000000000000000";
        if(populate_rows = '1') then
          if (random_num_input(0) = '1') then
            for i in 0 to 7 loop
              row_0(i) <= packet_input(i);
            end loop;
          end if;
          perform_xor(0) <= '1';
        end if;
      end process;

      process(populate_rows) is
        begin
          row_1 <= "000000000000000";
          if(populate_rows = '1') then
            if (random_num_input(1) = '1') then
              for i in 0 to 7 loop
                row_1(i+1) <= packet_input(i);
              end loop;
            end if;
            perform_xor(1) <= '1';
          end if;
        end process;

        process(populate_rows) is
          begin
            row_2 <= "000000000000000";
            if(populate_rows = '1') then
              if (random_num_input(2) = '1') then
                for i in 0 to 7 loop
                  row_2(i+2) <= packet_input(i);
                end loop;
              end if;
              perform_xor(2) <= '1';
            end if;
          end process;

          process(populate_rows) is
            begin
              row_3 <= "000000000000000";
              if(populate_rows = '1') then
                if (random_num_input(3) = '1') then
                  for i in 0 to 7 loop
                    row_3(i+3) <= packet_input(i);
                  end loop;
                end if;
                perform_xor(3) <= '1';
              end if;
            end process;

            process(populate_rows) is
              begin
                row_4 <= "000000000000000";
                if(populate_rows = '1') then
                  if (random_num_input(4) = '1') then
                    for i in 0 to 7 loop
                      row_4(i+4) <= packet_input(i);
                    end loop;
                  end if;
                  perform_xor(4) <= '1';
                end if;
              end process;

              process(populate_rows) is
                begin
                  row_5 <= "000000000000000";
                  if(populate_rows = '1') then
                    if (random_num_input(5) = '1') then
                      for i in 0 to 7 loop
                        row_5(i+5) <= packet_input(i);
                      end loop;
                    end if;
                    perform_xor(5) <= '1';
                  end if;
                end process;

                process(populate_rows) is
                  begin
                    row_6 <= "000000000000000";
                    if(populate_rows = '1') then
                      if (random_num_input(6) = '1') then
                        for i in 0 to 7 loop
                          row_6(i+6) <= packet_input(i);
                        end loop;
                      end if;
                      perform_xor(6) <= '1';
                    end if;
                  end process;

                  process(populate_rows) is
                    begin
                      row_7 <= "000000000000000";
                      if(populate_rows = '1') then
                        if (random_num_input(7) = '1') then
                          for i in 0 to 7 loop
                            row_7(i+7) <= packet_input(i);
                          end loop;
                        end if;
                        perform_xor(7) <= '1';
                      end if;
                    end process;
 


end galois_expand_fsm;