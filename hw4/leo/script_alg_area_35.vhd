
-- 
-- Definition of  sixteen_bit_adder_alg
-- 
--      Thu Mar  2 00:32:28 2023
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
   signal nx0, nx6, nx12, nx18, nx24, nx30, nx36, nx42, nx48, nx54, nx60, 
      nx66, nx72, nx78, nx88, nx92, nx96, nx100, nx104, nx108, nx112, nx116, 
      nx120, nx124, nx128, nx132, nx136, nx142, nx99, nx101, nx105, nx109, 
      nx113, nx119, nx123, nx129, nx133, nx139, nx143, nx149, nx153, nx159, 
      nx163, nx169, nx173, nx179, nx182, nx186, nx189, nx193, nx196, nx200, 
      nx203, nx207, nx210, nx214, nx217: std_logic ;

begin
   ix179 : xor2 port map ( Y=>sum(0), A0=>input_b(0), A1=>input_a(0));
   ix173 : xor2 port map ( Y=>sum(1), A0=>nx99, A1=>nx101);
   ix100 : nand02 port map ( Y=>nx99, A0=>input_b(0), A1=>input_a(0));
   ix102 : xnor2 port map ( Y=>nx101, A0=>input_b(1), A1=>input_a(1));
   ix171 : xor2 port map ( Y=>sum(2), A0=>nx105, A1=>nx109);
   ix106 : aoi32 port map ( Y=>nx105, A0=>input_b(0), A1=>input_a(0), A2=>
      nx78, B0=>input_a(1), B1=>input_b(1));
   ix110 : xnor2 port map ( Y=>nx109, A0=>input_b(2), A1=>input_a(2));
   ix169 : xor2 port map ( Y=>sum(3), A0=>nx113, A1=>nx119);
   ix114 : aoi22 port map ( Y=>nx113, A0=>input_a(2), A1=>input_b(2), B0=>
      nx88, B1=>nx72);
   ix120 : xnor2 port map ( Y=>nx119, A0=>input_b(3), A1=>input_a(3));
   ix167 : xor2 port map ( Y=>sum(4), A0=>nx123, A1=>nx129);
   ix124 : aoi22 port map ( Y=>nx123, A0=>input_a(3), A1=>input_b(3), B0=>
      nx92, B1=>nx66);
   ix130 : xnor2 port map ( Y=>nx129, A0=>input_b(4), A1=>input_a(4));
   ix165 : xor2 port map ( Y=>sum(5), A0=>nx133, A1=>nx139);
   ix134 : aoi22 port map ( Y=>nx133, A0=>input_a(4), A1=>input_b(4), B0=>
      nx96, B1=>nx60);
   ix140 : xnor2 port map ( Y=>nx139, A0=>input_b(5), A1=>input_a(5));
   ix163 : xor2 port map ( Y=>sum(6), A0=>nx143, A1=>nx149);
   ix144 : aoi22 port map ( Y=>nx143, A0=>input_a(5), A1=>input_b(5), B0=>
      nx100, B1=>nx54);
   ix150 : xnor2 port map ( Y=>nx149, A0=>input_b(6), A1=>input_a(6));
   ix161 : xor2 port map ( Y=>sum(7), A0=>nx153, A1=>nx159);
   ix154 : aoi22 port map ( Y=>nx153, A0=>input_a(6), A1=>input_b(6), B0=>
      nx104, B1=>nx48);
   ix160 : xnor2 port map ( Y=>nx159, A0=>input_b(7), A1=>input_a(7));
   ix159 : xor2 port map ( Y=>sum(8), A0=>nx163, A1=>nx169);
   ix164 : aoi22 port map ( Y=>nx163, A0=>input_a(7), A1=>input_b(7), B0=>
      nx108, B1=>nx42);
   ix170 : xnor2 port map ( Y=>nx169, A0=>input_b(8), A1=>input_a(8));
   ix157 : xor2 port map ( Y=>sum(9), A0=>nx173, A1=>nx179);
   ix174 : aoi22 port map ( Y=>nx173, A0=>input_a(8), A1=>input_b(8), B0=>
      nx112, B1=>nx36);
   ix180 : xnor2 port map ( Y=>nx179, A0=>input_b(9), A1=>input_a(9));
   ix155 : xor2 port map ( Y=>sum(10), A0=>nx182, A1=>nx186);
   ix183 : aoi22 port map ( Y=>nx182, A0=>input_a(9), A1=>input_b(9), B0=>
      nx116, B1=>nx30);
   ix187 : xnor2 port map ( Y=>nx186, A0=>input_b(10), A1=>input_a(10));
   ix153 : xor2 port map ( Y=>sum(11), A0=>nx189, A1=>nx193);
   ix190 : aoi22 port map ( Y=>nx189, A0=>input_a(10), A1=>input_b(10), B0=>
      nx120, B1=>nx24);
   ix194 : xnor2 port map ( Y=>nx193, A0=>input_b(11), A1=>input_a(11));
   ix151 : xor2 port map ( Y=>sum(12), A0=>nx196, A1=>nx200);
   ix197 : aoi22 port map ( Y=>nx196, A0=>input_a(11), A1=>input_b(11), B0=>
      nx124, B1=>nx18);
   ix201 : xnor2 port map ( Y=>nx200, A0=>input_b(12), A1=>input_a(12));
   ix149 : xor2 port map ( Y=>sum(13), A0=>nx203, A1=>nx207);
   ix204 : aoi22 port map ( Y=>nx203, A0=>input_a(12), A1=>input_b(12), B0=>
      nx128, B1=>nx12);
   ix208 : xnor2 port map ( Y=>nx207, A0=>input_b(13), A1=>input_a(13));
   ix147 : xor2 port map ( Y=>sum(14), A0=>nx210, A1=>nx214);
   ix211 : aoi22 port map ( Y=>nx210, A0=>input_a(13), A1=>input_b(13), B0=>
      nx132, B1=>nx6);
   ix215 : xnor2 port map ( Y=>nx214, A0=>input_b(14), A1=>input_a(14));
   ix145 : xnor2 port map ( Y=>sum(15), A0=>nx217, A1=>nx142);
   ix218 : aoi22 port map ( Y=>nx217, A0=>input_a(14), A1=>input_b(14), B0=>
      nx136, B1=>nx0);
   ix143 : xor2 port map ( Y=>nx142, A0=>input_b(15), A1=>input_a(15));
   ix137 : inv01 port map ( Y=>nx136, A=>nx210);
   ix133 : inv01 port map ( Y=>nx132, A=>nx203);
   ix129 : inv01 port map ( Y=>nx128, A=>nx196);
   ix125 : inv01 port map ( Y=>nx124, A=>nx189);
   ix121 : inv01 port map ( Y=>nx120, A=>nx182);
   ix117 : inv01 port map ( Y=>nx116, A=>nx173);
   ix113 : inv01 port map ( Y=>nx112, A=>nx163);
   ix109 : inv01 port map ( Y=>nx108, A=>nx153);
   ix105 : inv01 port map ( Y=>nx104, A=>nx143);
   ix101 : inv01 port map ( Y=>nx100, A=>nx133);
   ix97 : inv01 port map ( Y=>nx96, A=>nx123);
   ix93 : inv01 port map ( Y=>nx92, A=>nx113);
   ix89 : inv01 port map ( Y=>nx88, A=>nx105);
   ix79 : inv01 port map ( Y=>nx78, A=>nx101);
   ix73 : inv01 port map ( Y=>nx72, A=>nx109);
   ix67 : inv01 port map ( Y=>nx66, A=>nx119);
   ix61 : inv01 port map ( Y=>nx60, A=>nx129);
   ix55 : inv01 port map ( Y=>nx54, A=>nx139);
   ix50 : inv01 port map ( Y=>nx48, A=>nx149);
   ix43 : inv01 port map ( Y=>nx42, A=>nx159);
   ix37 : inv01 port map ( Y=>nx36, A=>nx169);
   ix31 : inv01 port map ( Y=>nx30, A=>nx179);
   ix25 : inv01 port map ( Y=>nx24, A=>nx186);
   ix19 : inv01 port map ( Y=>nx18, A=>nx193);
   ix13 : inv01 port map ( Y=>nx12, A=>nx200);
   ix7 : inv01 port map ( Y=>nx6, A=>nx207);
   ix1 : inv01 port map ( Y=>nx0, A=>nx214);
end algorithmic ;

