-- _______________________________________________________________________
-- -- NETWORK ENCODER DESIGN -- --
--_________________________________________________________________________
--
-- Designed in: NJIT : ECE758 : VLSI II
--
-- By: Group I: Mehrdad, Jonathon, Yasaswini
--
--
-- Design of network encoder with subentities used as components
--  * Operation for GF(2^8)
--  * symbol size of 8
--  * takes in 8 symbol inputs and returns one encoded symbol
--  * a packet may have any num of 8 bit symbols in real network
--  * Irreduccible polynomial used: 
--  * Test Status: 
--
-- ______________________________________________________________________


-- __________ LIBRARIES __________

library ieee;
use ieee.std_logic_1164.ALL;

-- __________________________ MAIN ENTITY ___________________________

entity network_encoder is
    port(
        packet_1, packet_2, packet_3, packet_4, packet_5, packet_6, packet_7, packet_8 : in std_logic_vector(7 downto 0);
        clk1, clk2, clk3, reset : in std_logic;
        coded_packet: out std_logic_vector(7 downto 0)
        );
    end network_encoder;

-- __________________________ NETWORK ENCODER ARCHITECTURES ____________________________________


architecture hierchical_design of network_encoder is

    component galois_adder is
        port(
            input_a, input_b : in std_logic_vector(7 downto 0);
            add_out : out std_logic_vector(7 downto 0);
            clk : in std_logic
            );
    end component;

    component finalcode is
        port(
            clk1, clk2, clk3, reset: in std_logic;
            packet_input: in std_logic_vector(7 downto 0);
            remin: OUT STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    signal mult_ans_1, mult_ans_2, mult_ans_3, mult_ans_4, mult_ans_5, mult_ans_6, mult_ans_7, mult_ans_8 : std_logic_vector(7 downto 0);
    signal add_out_11, add_out_12, add_out_13, add_out_14, add_out_21, add_out_22 : std_logic_vector(7 downto 0);

    begin

        -- multipliers
        mult_1 : finalcode
        port map
        (
            packet_input => packet_1,
            remin => mult_ans_1,
            reset => reset,
            clk1 => clk1,
            clk2 => clk2,
            clk3 => clk3
        );
        mult_2 : finalcode
        port map
        (
            packet_input => packet_2,
            remin => mult_ans_2,
            reset => reset,
            clk1 => clk1,
            clk2 => clk2,
            clk3 => clk3
        );
        mult_3 : finalcode
        port map
        (
            packet_input => packet_3,
            remin => mult_ans_3,
            reset => reset,
            clk1 => clk1,
            clk2 => clk2,
            clk3 => clk3
        );
        mult_4 : finalcode
        port map
        (
            packet_input => packet_4,
            remin => mult_ans_4,
            reset => reset,
            clk1 => clk1,
            clk2 => clk2,
            clk3 => clk3
        );
        mult_5 : finalcode
        port map
        (
            packet_input => packet_5,
            remin => mult_ans_5,
            reset => reset,
            clk1 => clk1,
            clk2 => clk2,
            clk3 => clk3
        );
        mult_6 : finalcode
        port map
        (
            packet_input => packet_6,
            remin => mult_ans_6,
            reset => reset,
            clk1 => clk1,
            clk2 => clk2,
            clk3 => clk3
        );
        mult_7 : finalcode
        port map
        (
            packet_input => packet_7,
            remin => mult_ans_7,
            reset => reset,
            clk1 => clk1,
            clk2 => clk2,
            clk3 => clk3
        );
        mult_8 : finalcode
        port map
        (
            packet_input => packet_8,
            remin => mult_ans_8,
            reset => reset,
            clk1 => clk1,
            clk2 => clk2,
            clk3 => clk3
        );

        -- adders first row of pipeline
        add_11 : galois_adder
        port map
        (
            input_a => mult_ans_1,
            input_b => mult_ans_2,
            add_out => add_out_11,
            CLK => CLK3
        );
        add_12 : galois_adder
        port map
        (
            input_a => mult_ans_3,
            input_b => mult_ans_4,
            add_out => add_out_12,
            CLK => CLK3
        );
        add_13 : galois_adder
        port map
        (
            input_a => mult_ans_5,
            input_b => mult_ans_6,
            add_out => add_out_13,
            CLK => CLK3
        );
        add_14 : galois_adder
        port map
        (
            input_a => mult_ans_7,
            input_b => mult_ans_8,
            add_out => add_out_14,
            CLK => CLK3
        );

        -- adders row two in pipeline
        add_21 : galois_adder
        port map
        (
            input_a => add_out_11,
            input_b => add_out_12,
            add_out => add_out_21,
            CLK => CLK3
        );
        add_22 : galois_adder
        port map
        (
            input_a => add_out_13,
            input_b => add_out_14,
            add_out => add_out_22,
            CLK => CLK3
        );

        -- final adder
        add_31 : galois_adder
        port map
        (
            input_a => add_out_21,
            input_b => add_out_22,
            add_out => coded_packet,
            CLK => CLK3
        );

end architecture;


