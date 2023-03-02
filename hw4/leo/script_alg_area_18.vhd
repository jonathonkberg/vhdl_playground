
-- 
-- Definition of  sixteen_bit_adder_alg
-- 
--      Thu Mar  2 00:33:31 2023
--      
--      LeonardoSpectrum Level 3, 2011a.4
-- 

library ieee, adk; use ieee.std_logic_1164.all, use ieee.std_logic_signed.all, adk.adk_components.all;

entity sixteen_bit_adder_alg is
   port (
      input_a : IN std_logic_vector (15 DOWNTO 0) ;
      input_b : IN std_logic_vector (15 DOWNTO 0) ;
      sum : OUT std_logic_vector (15 DOWNTO 0)) ;
end sixteen_bit_adder_alg ;

architecture algorithmic of sixteen_bit_adder_alg is
   signal nx78, nx92, nx100, nx108, nx116, nx124, nx132, nx140, nx99, nx101, 
      nx105, nx109, nx115, nx117, nx121, nx123, nx129, nx131, nx135, nx137, 
      nx143, nx145, nx149, nx151, nx157, nx159, nx163, nx165, nx171, nx173, 
      nx177, nx179, nx183, nx185, nx188, nx190, nx194, nx196: std_logic ;

begin
   ix179 : xor2 port map ( Y=>sum(0), A0=>input_b(0), A1=>input_a(0));
   ix173 : xor2 port map ( Y=>sum(1), A0=>nx99, A1=>nx101);
   ix100 : nand02 port map ( Y=>nx99, A0=>input_b(0), A1=>input_a(0));
   ix102 : xnor2 port map ( Y=>nx101, A0=>input_b(1), A1=>input_a(1));
   ix171 : xor2 port map ( Y=>sum(2), A0=>nx105, A1=>nx109);
   ix106 : aoi32 port map ( Y=>nx105, A0=>input_b(0), A1=>input_a(0), A2=>
      nx78, B0=>input_a(1), B1=>input_b(1));
   ix110 : xnor2 port map ( Y=>nx109, A0=>input_b(2), A1=>input_a(2));
   ix169 : xnor2 port map ( Y=>sum(3), A0=>nx92, A1=>nx117);
   ix93 : mux21 port map ( Y=>nx92, A0=>nx105, A1=>nx115, S0=>nx109);
   ix116 : inv01 port map ( Y=>nx115, A=>input_a(2));
   ix118 : xnor2 port map ( Y=>nx117, A0=>input_b(3), A1=>input_a(3));
   ix167 : xor2 port map ( Y=>sum(4), A0=>nx121, A1=>nx123);
   ix122 : mux21 port map ( Y=>nx121, A0=>nx92, A1=>input_a(3), S0=>nx117);
   ix124 : xnor2 port map ( Y=>nx123, A0=>input_b(4), A1=>input_a(4));
   ix165 : xnor2 port map ( Y=>sum(5), A0=>nx100, A1=>nx131);
   ix101 : mux21 port map ( Y=>nx100, A0=>nx121, A1=>nx129, S0=>nx123);
   ix130 : inv01 port map ( Y=>nx129, A=>input_a(4));
   ix132 : xnor2 port map ( Y=>nx131, A0=>input_b(5), A1=>input_a(5));
   ix163 : xor2 port map ( Y=>sum(6), A0=>nx135, A1=>nx137);
   ix136 : mux21 port map ( Y=>nx135, A0=>nx100, A1=>input_a(5), S0=>nx131);
   ix138 : xnor2 port map ( Y=>nx137, A0=>input_b(6), A1=>input_a(6));
   ix161 : xnor2 port map ( Y=>sum(7), A0=>nx108, A1=>nx145);
   ix109 : mux21 port map ( Y=>nx108, A0=>nx135, A1=>nx143, S0=>nx137);
   ix144 : inv01 port map ( Y=>nx143, A=>input_a(6));
   ix146 : xnor2 port map ( Y=>nx145, A0=>input_b(7), A1=>input_a(7));
   ix159 : xor2 port map ( Y=>sum(8), A0=>nx149, A1=>nx151);
   ix150 : mux21 port map ( Y=>nx149, A0=>nx108, A1=>input_a(7), S0=>nx145);
   ix152 : xnor2 port map ( Y=>nx151, A0=>input_b(8), A1=>input_a(8));
   ix157 : xnor2 port map ( Y=>sum(9), A0=>nx116, A1=>nx159);
   ix117 : mux21 port map ( Y=>nx116, A0=>nx149, A1=>nx157, S0=>nx151);
   ix158 : inv01 port map ( Y=>nx157, A=>input_a(8));
   ix160 : xnor2 port map ( Y=>nx159, A0=>input_b(9), A1=>input_a(9));
   ix155 : xor2 port map ( Y=>sum(10), A0=>nx163, A1=>nx165);
   ix164 : mux21 port map ( Y=>nx163, A0=>nx116, A1=>input_a(9), S0=>nx159);
   ix166 : xnor2 port map ( Y=>nx165, A0=>input_b(10), A1=>input_a(10));
   ix153 : xnor2 port map ( Y=>sum(11), A0=>nx124, A1=>nx173);
   ix125 : mux21 port map ( Y=>nx124, A0=>nx163, A1=>nx171, S0=>nx165);
   ix172 : inv01 port map ( Y=>nx171, A=>input_a(10));
   ix174 : xnor2 port map ( Y=>nx173, A0=>input_b(11), A1=>input_a(11));
   ix151 : xor2 port map ( Y=>sum(12), A0=>nx177, A1=>nx179);
   ix178 : mux21 port map ( Y=>nx177, A0=>nx124, A1=>input_a(11), S0=>nx173
   );
   ix180 : xnor2 port map ( Y=>nx179, A0=>input_b(12), A1=>input_a(12));
   ix149 : xnor2 port map ( Y=>sum(13), A0=>nx132, A1=>nx185);
   ix133 : mux21 port map ( Y=>nx132, A0=>nx177, A1=>nx183, S0=>nx179);
   ix184 : inv01 port map ( Y=>nx183, A=>input_a(12));
   ix186 : xnor2 port map ( Y=>nx185, A0=>input_b(13), A1=>input_a(13));
   ix147 : xor2 port map ( Y=>sum(14), A0=>nx188, A1=>nx190);
   ix189 : mux21 port map ( Y=>nx188, A0=>nx132, A1=>input_a(13), S0=>nx185
   );
   ix191 : xnor2 port map ( Y=>nx190, A0=>input_b(14), A1=>input_a(14));
   ix145 : xnor2 port map ( Y=>sum(15), A0=>nx140, A1=>nx196);
   ix141 : mux21 port map ( Y=>nx140, A0=>nx188, A1=>nx194, S0=>nx190);
   ix195 : inv01 port map ( Y=>nx194, A=>input_a(14));
   ix197 : xnor2 port map ( Y=>nx196, A0=>input_b(15), A1=>input_a(15));
   ix79 : inv01 port map ( Y=>nx78, A=>nx101);
end algorithmic ;

