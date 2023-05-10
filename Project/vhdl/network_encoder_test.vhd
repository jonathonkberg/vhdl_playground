
library ieee;
use ieee.std_logic_1164.ALL;

Entity network_encoder_test is
End network_encoder_test;
architecture behavior of network_encoder_test is
  
  component network_encoder
  port(
    packet_1, packet_2, packet_3, packet_4, packet_5, packet_6, packet_7, packet_8 : in std_logic_vector(7 downto 0);
    clk1, clk2, clk3, reset : in std_logic;
    coded_packet: out std_logic_vector(7 downto 0)
    );
    end component;
    
    -- input signals
    signal clk1, clk2, clk3, reset  : std_logic;
    signal packet_1, packet_2, packet_3, packet_4, packet_5, packet_6, packet_7, packet_8 : std_logic_vector(7 downto 0);
    
    -- output signals
    signal coded_packet : std_logic_vector(7 downto 0);
    
    begin
      
      -- declare component instance and map ports
      network_encoder_instance : network_encoder
      port map
      (
        packet_1 => packet_1,
        packet_2 => packet_2,
        packet_3 => packet_3,
        packet_4 => packet_4,
        packet_5 => packet_5,
        packet_6 => packet_6,
        packet_7 => packet_7,
        packet_8 => packet_8,
        clk1 => clk1,
        clk2 => clk2,
        clk3 => clk3, 
        coded_packet => coded_packet,
        reset => reset
      );
      
      clock1 : process
      begin
        clk1 <= '0', '1' after 25 ns, '0' after 50 ns; -- may need to adjust clk speed!!!
        wait for 450 ns; -- see comment above!!!
      end process;

      clock2 : process
      begin
        clk2 <= '0', '1' after 75 ns, '0' after 100 ns; -- may need to adjust clk speed!!!
        wait for 450 ns; -- see comment above!!!
      end process;

      clock3 : process
      begin
        clk3 <= '0', '1' after 25 ns; -- may need to adjust clk speed!!!
        wait for 50 ns; -- see comment above!!!
      end process;

      
      reset1 : process
      begin
        reset <= '1', '0' after 100 ns;
        wait;
      end process;

      stimulus_process : process
      begin
        packet_1 <= "00000000";
        packet_2 <= "11111111";
        packet_3 <= "01001101";
        packet_4 <= "01110100";
        packet_5 <= "10111010";
        packet_6 <= "11001100";
        packet_7 <= "11010001";
        packet_8 <= "01011101";
        wait for 450 ns;
        packet_1 <= "10001011";
        packet_2 <= "00110100";
        packet_3 <= "00001010";
        packet_4 <= "10000100";
        packet_5 <= "00101101";
        packet_6 <= "01010101";
        packet_7 <= "11010010";
        packet_8 <= "00100100";
        wait for 450 ns;
        packet_1 <= "00011000";
        packet_2 <= "01000101";
        packet_3 <= "11000111";
        packet_4 <= "11111011";
        packet_5 <= "00001110";
        packet_6 <= "01010101";
        packet_7 <= "00001111";
        packet_8 <= "11100101";
        wait for 450 ns;
        packet_1 <= "11100100";
        packet_2 <= "01110100";
        packet_3 <= "11101110";
        packet_4 <= "00010000";
        packet_5 <= "00000001";
        packet_6 <= "10010000";
        packet_7 <= "11110100";
        packet_8 <= "11111011";
        wait for 450 ns;
      end process;
      
      
    end;

