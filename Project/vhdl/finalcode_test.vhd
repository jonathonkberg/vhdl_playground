library ieee;
use ieee.std_logic_1164.ALL;

Entity finalcode_test is
End finalcode_test;
architecture behavior of finalcode_test is
  
  component finalcode
  port(
    clk1, clk2, clk3, reset: in std_logic;
    packet_input: in std_logic_vector(7 downto 0);
    remin: OUT STD_LOGIC_VECTOR (7 downto 0)
    );
    end component;
    
    -- input signals
    signal clk1, clk2, clk3, reset  : std_logic;
    signal packet_input : std_logic_vector ( 7 downto 0);
    
    -- output signals
    signal remin : std_logic_vector(7 downto 0);
    
    begin
      
      -- declare component instance and map ports
      finalcode_instance : finalcode
      port map
      (
        clk1 => clk1,
        clk2 => clk2,
        clk3 => clk3,
        packet_input => packet_input, 
        remin => remin,
        reset => reset
      );
      
      clock1 : process
      begin
        clk1 <= '0', '1' after 25 ns; -- may need to adjust clk speed!!!
        wait for 450 ns; -- see comment above!!!
      end process;

      clock2 : process
      begin
        clk2 <= '0', '1' after 75 ns; -- may need to adjust clk speed!!!
        wait for 450 ns; -- see comment above!!!
      end process;

      clock3 : process
      begin
        clk3 <= '0', '1' after 25 ns; -- may need to adjust clk speed!!!
        wait for 50 ns; -- see comment above!!!
      end process;

      
      reset1 : process
      begin
        reset <= '1', '0' after 200 ns;
        wait for 700 ns;
      end process;

      stimulus_process : process
      begin
        wait for 1 ns;
        packet_input <= "10101010";
        wait for 100 ns;
      end process;
      
      
    end;
