-- _______________________________________________________________________
-- -- NETWORK ENCODER DESIGN -- --
--_________________________________________________________________________
--
-- Designed in: NJIT : ECE758 : VLSI II
--
-- By: Group I: Jonathon, Mehrdad, Yasaswini
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
        packet_1, packet_2, packet_3, packet_4, packet_5, packet_6, packet_7, packet_8 : in std_ulogic_vector(7 downto 0);
        CLK: inout std_ulogic;
        coded_packet: out std_ulogic_vector(14 downto 0);
        );
    end network_encoder;

-- __________________________ NETWORK ENCODER ARCHITECTURES ____________________________________


architecture hierchical_design of network_encoder is

    component galois_adder is
        port(
            add_in_1, add_in_2 : in std_ulogic_vector(14 downto 0);
            add_out : out std_ulogic_vector(14 downto 0);
            );
    end component;

    component galois_multiplier is
        port(
            packet_input, random_num_input : in std_ulogic_vector(14 downto 0);
            mult_out : out std_ulogic_vector(14 downto 0);
        );
    end component;

    signal : mult_ans_1, mult_ans_2, mult_ans_3, mult_ans_4, mult_ans_5, mult_ans_6, mult_ans_7, mult_ans_8, encoded_symbol : std_ulogic(14 downto 0);
    begin

        -- multipliers
        mult_1 : galois_multiplier
        port map
        (
            packet_input => packet_1,
            random_num_input => rand_1,
            mult_out => mult_ans_1,
            CLK_mult => CLK
        );
        mult_1 : galois_multiplier
        port map
        (
            packet_input => packet_1,
            random_num_input => rand_1,
            mult_out => mult_ans_1,
            CLK_mult => CL
        );
        mult_1 : galois_multiplier
        port map
        (
            packet_input => packet_1,
            random_num_input => rand_1,
            mult_out => mult_ans_1,
            CLK_mult => CLK
        );
        mult_1 : galois_multiplier
        port map
        (
            packet_input => packet_1,
            random_num_input => rand_1,
            mult_out => mult_ans_1,
            CLK_mult => CLK
        );
        mult_1 : galois_multiplier
        port map
        (
            packet_input => packet_1,
            random_num_input => rand_1,
            mult_out => mult_ans_1,
            CLK_mult => CLK
        );
        mult_1 : galois_multiplier
        port map
        (
            packet_input => packet_1,
            random_num_input => rand_1,
            mult_out => mult_ans_1,
            CLK_mult => CLK
        );
        mult_1 : galois_multiplier
        port map
        (
            packet_input => packet_1,
            random_num_input => rand_1,
            mult_out => mult_ans_1,
            CLK_mult => CLK
        );
        mult_1 : galois_multiplier
        port map
        (
            packet_input => packet_1,
            random_num_input => rand_1,
            mult_out => mult_ans_1,
            CLK_mult => CLK
        );

        -- adders first row of pipeline
        add_11 : galois_adder
        port map
        (
            add_in_1 => mult_ans_1,
            add_in_2 => mult_ans_2,
            add_out => add_out_11,
            CLK_a => CLK
        );
        add_12 : galois_adder
        port map
        (
            add_in_1 => mult_ans_3,
            add_in_2 => mult_ans_4,
            add_out => add_out_12,
            CLK_a => CLK
        );
        add_13 : galois_adder
        port map
        (
            add_in_1 => mult_ans_5,
            add_in_2 => mult_ans_6,
            add_out => add_out_13,
            CLK_a => CLK
        );
        add_14 : galois_adder
        port map
        (
            add_in_1 => mult_ans_7,
            add_in_2 => mult_ans_8,
            add_out => add_out_14,
            CLK_a => CLK
        );

        -- adders row two in pipeline
        add_21 : galois_adder
        port map
        (
            add_in_1 => mult_ans_11,
            add_in_2 => mult_ans_12,
            add_out => add_out_21,
            CLK_a => CLK
        );
        add_22 : galois_adder
        port map
        (
            add_in_1 => mult_ans_13,
            add_in_2 => mult_ans_14,
            add_out => add_out_22,
            CLK_a => CLK
        );

        -- final adder
        add_31 : galois_adder
        port map
        (
            add_in_1 => mult_ans_21,
            add_in_2 => mult_ans_22,
            add_out => encoded_symbol,
            CLK_a => CLK
        );

end architecture;