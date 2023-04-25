library ieee;
use ieee.std_logic_1164.ALL;


---------------------- ENTITY DECLARATION ------------------------

entity lfsr is
    port(
        CLK: in std_ulogic;
        random_number : out std_ulogic_vector(7 downto 0)
        );
    end lfsr;



------------------------- ARCHITECTURE ----------------------------

architecture hierchical_design of lfsr is



--- COMPONENT DECLARATIONS ---

component dff is
    port(
        D, CLK: in std_ulogic; 
        Q, Q_n: out std_ulogic
        );
end component;

component two_input_xor is
    port(
        input_1, input_2 : in std_ulogic;
        xor_out : out std_ulogic
    );
end component;


--- SIGNALS ---

signal f02, f023, feedback: std_ulogic;


--- ARCHITECTURE CONTENT ---

begin

    dff7 : dff
    port map
    (
        D => feedback,
        Q => b7,
        CLK => CLK,
    );
    dff6 : dff
    port map
    (
        D => b7,
        Q => b6,
        CLK => CLK,
    );
    dff5 : dff
    port map
    (
        D => b6,
        Q => b5,
        CLK => CLK,
    );
    dff4 : dff
    port map
    (
        D => b5,
        Q => b4,
        CLK => CLK,
    );
    dff3 : dff
    port map
    (
        D => b4,
        Q => b3,
        CLK => CLK,
    );
    dff2 : dff
    port map
    (
        D => b3,
        Q => b2,
        CLK => CLK,
    );
    dff1 : dff
    port map
    (
        D => b2,
        Q => b1,
        CLK => CLK,
    );
    dff0 : dff
    port map
    (
        D => b1,
        Q => b0,
        CLK => CLK,
    );
    xor_02 : two_input_xor
    port map
    (
        input_1 => b0,
        input_2 => b2,
        xor_out => f02,
    )
    xor_023 : two_input_xor
    port map
    (
        input_1 => b3,
        input_2 => f02,
        xor_out => f023,
    )
    xor_0234 : two_input_xor
    port map
    (
        input_1 => b4,
        input_2 => f023,
        xor_out => feedback,
    )

end architecture;