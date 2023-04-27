-- Galois Multiplier Hierchical Design
-- 1. Expand
-- 2. Modulo
--_______________________________________________________________________________--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity galois_multiplier is
    port(
        packet_input, random_num_input : in std_logic_vector(7 downto 0);
        final_mult : out std_logic_vector(7 downto 0);
        clk : in std_logic;
        exp_input : in std_logic_vector(14 down to 0)
    );
end galois_multiplier;


architecture multiply_hierchical of galois_multiplier is

        
    -- Expands in multiplication process
    component galois_expand is
        port(
          clk : in std_logic;
          packet_input, random_num_input : in std_logic_vector(7 downto 0);
          mult_out : out std_logic_vector(14 downto 0);
          complete : out std_logic
        );
    end component;

    -- Modulo operation to complete multiplication
    component modu is
        port(
            clk : in std_logic;
            a : in std_logic_vector(14 downto 0);
            remin : out std_logic_vector(7 downto 0)
        );
    end component;

    --expanded signals
    signal expanded_sig : std_logic_vector(14 downto 0);
    signal complete : std_logic;
    exp_input : in std_logic_vector(14 down to 0)

    begin

        expansion_1 : galois_expand
        port map
        (
            packet_input => packet_input,
            random_num_input => random_num_input,
            mult_out => expanded_sig,
            CLK => CLK,
            complete => complete
        );
        modulo_1 : modu
        port map
        (
            a => expanded_sig,
            remin => final_mult,
            CLK => CLK
        );


end multiply_hierchical;