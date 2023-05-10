library ieee;
use ieee.std_logic_1164.ALL;


---------------------- ENTITY DECLARATION ------------------------

entity lfsr is
    port(
        CLK, reset: in std_logic;
        random_number_out : out std_logic_vector(7 downto 0)
        );
    end lfsr;



------------------------- ARCHITECTURE ----------------------------

architecture hierchical_design of lfsr is



--- COMPONENT DECLARATIONS ---

component dff is
    port(
        D_initial, D, CLK: in std_logic; 
        Q, Q_n: out std_logic;
        reset : in std_logic
        );
end component;

component dff_8 is
  port(
        D : in std_logic_vector (7 downto 0);
        CLK: in std_logic; 
        Q, Q_n: out std_logic_vector (7 downto 0)
    );
end component;

component two_input_xor is
    port(
        input_1, input_2 : in std_logic;
        xor_out : out std_logic
    );
end component;


--- SIGNALS ---

signal f02, f023, feedback: std_logic;
signal random_number, initial : std_logic_vector(7 downto 0);


--- ARCHITECTURE CONTENT ---

begin

-- initialization process
process(reset)
  begin
    if reset = '1' then
      initial(7) <= '1' after 2 ps;
      initial(6) <= '0' after 2 ps;
      initial(5) <= '1' after 2 ps;
      initial(4) <= '0' after 2 ps;
      initial(3) <= '1' after 2 ps;
      initial(2) <= '0' after 2 ps;
      initial(1) <= '1' after 2 ps;
      initial(0) <= '0' after 2 ps;
    end if;
  end process;


    dff7 : dff
    port map
    (
        D => feedback,
        Q => random_number(7),
        CLK => CLK,
        D_initial => initial(7),
        reset => reset
    );
    dff6 : dff
    port map
    (
        D => random_number(7),
        Q => random_number(6),
        CLK => CLK,
        D_initial => initial(6),
        reset => reset
    );
    dff5 : dff
    port map
    (
        D => random_number(6),
        Q => random_number(5),
        CLK => CLK,
        D_initial => initial(5),
        reset => reset
    );
    dff4 : dff
    port map
    (
        D => random_number(5),
        Q => random_number(4),
        CLK => CLK,
        D_initial => initial(4),
        reset => reset
    );
    dff3 : dff
    port map
    (
        D => random_number(4),
        Q => random_number(3),
        CLK => CLK,
        D_initial => initial(3),
        reset => reset
    );
    dff2 : dff
    port map
    (
        D => random_number(3),
        Q => random_number(2),
        CLK => CLK,
        D_initial => initial(2),
        reset => reset
    );
    dff1 : dff
    port map
    (
        D => random_number(2),
        Q => random_number(1),
        CLK => CLK,
        D_initial => initial(1),
        reset => reset
    );
    dff0 : dff
    port map
    (
        D => random_number(1),
        Q => random_number(0),
        CLK => CLK,
        D_initial => initial(0),
        reset => reset
    );
    xor_02 : two_input_xor
    port map
    (
        input_1 => random_number(0),
        input_2 => random_number(2),
        xor_out => f02
    );
    xor_023 : two_input_xor
    port map
    (
        input_1 => random_number(3),
        input_2 => f02,
        xor_out => f023
    );
    xor_0234 : two_input_xor
    port map
    (
        input_1 => random_number(4),
        input_2 => f023,
        xor_out => feedback
    );
    dff_out : dff_8
    port map
      (
        D => random_number,
        clk => clk,
        Q => random_number_out
      );

end architecture;