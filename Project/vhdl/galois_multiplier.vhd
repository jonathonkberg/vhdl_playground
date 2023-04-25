-- entity takes two 40 bit vectors and performs galois multiplication with chosen irreducible polynomial
-- multiplier utilizes symbol size of 8 
entity galois_multiplier is
    port(
        packet_input, random_num_input : in std_ulogic_vector(7 downto 0);
        mult_out : out std_ulogic_vector(7 downto 0);
    );
end galois_multiplier;

architecture sequential_alg of galois_multiplier is
    begin
        -- PUT PROCESS HERE
end sequential_alg;