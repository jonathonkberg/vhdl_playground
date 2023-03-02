
-- 
-- Definition of  sixteen_bit_adder_alg
-- 
--      Thu Mar  2 00:31:42 2023
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
   signal nx6, nx12, nx18, nx24, nx26, nx34, nx36, nx40, nx42, nx48, nx50, 
      nx54, nx60, nx68, nx70, nx76, nx78, nx82, nx88, nx96, nx98, nx104, 
      nx106, nx110, nx118, nx97, nx101, nx105, nx111, nx113, nx115, nx119, 
      nx123, nx127, nx133, nx135, nx137, nx141, nx145, nx149, nx153, nx157, 
      nx160, nx162, nx166, nx169, nx171, nx175, nx178, nx180, nx182, nx185, 
      nx188, nx191, nx194, nx197, nx201, nx204, nx206, nx210, nx213, nx215, 
      nx217, nx220, nx223, nx226, nx230, nx232, nx236, nx239, nx241: 
   std_logic ;

begin
   ix157 : xnor2 port map ( Y=>sum(0), A0=>input_a(0), A1=>nx97);
   ix98 : inv01 port map ( Y=>nx97, A=>input_b(0));
   ix151 : xnor2 port map ( Y=>sum(1), A0=>nx101, A1=>nx18);
   ix102 : nand02 port map ( Y=>nx101, A0=>input_a(0), A1=>input_b(0));
   ix19 : xnor2 port map ( Y=>nx18, A0=>input_a(1), A1=>nx105);
   ix106 : inv01 port map ( Y=>nx105, A=>input_b(1));
   ix149 : xnor2 port map ( Y=>sum(2), A0=>nx24, A1=>nx115);
   ix25 : oai22 port map ( Y=>nx24, A0=>nx101, A1=>nx111, B0=>nx113, B1=>
      nx105);
   ix112 : xnor2 port map ( Y=>nx111, A0=>input_a(1), A1=>input_b(1));
   ix114 : inv01 port map ( Y=>nx113, A=>input_a(1));
   ix116 : xnor2 port map ( Y=>nx115, A0=>input_a(2), A1=>input_b(2));
   ix147 : xnor2 port map ( Y=>sum(3), A0=>nx119, A1=>nx34);
   ix120 : aoi22 port map ( Y=>nx119, A0=>input_a(2), A1=>input_b(2), B0=>
      nx24, B1=>nx26);
   ix27 : xnor2 port map ( Y=>nx26, A0=>input_a(2), A1=>nx123);
   ix124 : inv01 port map ( Y=>nx123, A=>input_b(2));
   ix35 : xnor2 port map ( Y=>nx34, A0=>input_a(3), A1=>nx127);
   ix128 : inv01 port map ( Y=>nx127, A=>input_b(3));
   ix145 : xnor2 port map ( Y=>sum(4), A0=>nx40, A1=>nx137);
   ix41 : oai21 port map ( Y=>nx40, A0=>nx119, A1=>nx133, B0=>nx135);
   ix134 : xnor2 port map ( Y=>nx133, A0=>input_a(3), A1=>input_b(3));
   ix136 : nand02 port map ( Y=>nx135, A0=>input_a(3), A1=>input_b(3));
   ix138 : xnor2 port map ( Y=>nx137, A0=>input_a(4), A1=>input_b(4));
   ix143 : xnor2 port map ( Y=>sum(5), A0=>nx141, A1=>nx48);
   ix142 : xnor2 port map ( Y=>nx141, A0=>input_a(5), A1=>input_b(5));
   ix50 : oai21 port map ( Y=>nx48, A0=>nx145, A1=>nx137, B0=>nx149);
   ix146 : aoi21 port map ( Y=>nx145, A0=>input_a(3), A1=>input_b(3), B0=>
      nx36);
   ix37 : nor02ii port map ( Y=>nx36, A0=>nx119, A1=>nx34);
   ix150 : nand02 port map ( Y=>nx149, A0=>input_a(4), A1=>input_b(4));
   ix141 : xnor2 port map ( Y=>sum(6), A0=>nx153, A1=>nx54);
   ix154 : xnor2 port map ( Y=>nx153, A0=>input_a(6), A1=>input_b(6));
   ix55 : oai21 port map ( Y=>nx54, A0=>nx141, A1=>nx157, B0=>nx162);
   ix158 : aoi22 port map ( Y=>nx157, A0=>input_a(4), A1=>input_b(4), B0=>
      nx40, B1=>nx42);
   ix43 : xnor2 port map ( Y=>nx42, A0=>input_a(4), A1=>nx160);
   ix161 : inv01 port map ( Y=>nx160, A=>input_b(4));
   ix163 : nand02 port map ( Y=>nx162, A0=>input_a(5), A1=>input_b(5));
   ix139 : xnor2 port map ( Y=>sum(7), A0=>nx60, A1=>nx171);
   ix61 : oai21 port map ( Y=>nx60, A0=>nx153, A1=>nx166, B0=>nx169);
   ix167 : aoi21 port map ( Y=>nx166, A0=>input_a(5), A1=>input_b(5), B0=>
      nx50);
   ix51 : nor02_2x port map ( Y=>nx50, A0=>nx141, A1=>nx157);
   ix170 : nand02 port map ( Y=>nx169, A0=>input_a(6), A1=>input_b(6));
   ix172 : xnor2 port map ( Y=>nx171, A0=>input_a(7), A1=>input_b(7));
   ix137 : xnor2 port map ( Y=>sum(8), A0=>nx68, A1=>nx182);
   ix69 : oai21 port map ( Y=>nx68, A0=>nx171, A1=>nx175, B0=>nx180);
   ix176 : aoi22 port map ( Y=>nx175, A0=>input_a(6), A1=>input_b(6), B0=>
      nx12, B1=>nx54);
   ix13 : xnor2 port map ( Y=>nx12, A0=>input_a(6), A1=>nx178);
   ix179 : inv01 port map ( Y=>nx178, A=>input_b(6));
   ix181 : nand02 port map ( Y=>nx180, A0=>input_b(7), A1=>input_a(7));
   ix183 : xnor2 port map ( Y=>nx182, A0=>input_a(8), A1=>input_b(8));
   ix135 : xnor2 port map ( Y=>sum(9), A0=>nx185, A1=>nx76);
   ix186 : xnor2 port map ( Y=>nx185, A0=>input_a(9), A1=>input_b(9));
   ix77 : inv01 port map ( Y=>nx76, A=>nx188);
   ix189 : aoi22 port map ( Y=>nx188, A0=>input_a(8), A1=>input_b(8), B0=>
      nx68, B1=>nx70);
   ix71 : xnor2 port map ( Y=>nx70, A0=>input_a(8), A1=>nx191);
   ix192 : inv01 port map ( Y=>nx191, A=>input_b(8));
   ix133 : xnor2 port map ( Y=>sum(10), A0=>nx194, A1=>nx82);
   ix195 : xnor2 port map ( Y=>nx194, A0=>input_a(10), A1=>input_b(10));
   ix83 : oai21 port map ( Y=>nx82, A0=>nx185, A1=>nx188, B0=>nx197);
   ix198 : nand02 port map ( Y=>nx197, A0=>input_a(9), A1=>input_b(9));
   ix131 : xnor2 port map ( Y=>sum(11), A0=>nx88, A1=>nx206);
   ix89 : oai21 port map ( Y=>nx88, A0=>nx194, A1=>nx201, B0=>nx204);
   ix202 : aoi21 port map ( Y=>nx201, A0=>input_a(9), A1=>input_b(9), B0=>
      nx78);
   ix79 : nor02_2x port map ( Y=>nx78, A0=>nx185, A1=>nx188);
   ix205 : nand02 port map ( Y=>nx204, A0=>input_a(10), A1=>input_b(10));
   ix207 : xnor2 port map ( Y=>nx206, A0=>input_a(11), A1=>input_b(11));
   ix129 : xnor2 port map ( Y=>sum(12), A0=>nx96, A1=>nx217);
   ix97 : oai21 port map ( Y=>nx96, A0=>nx206, A1=>nx210, B0=>nx215);
   ix211 : aoi22 port map ( Y=>nx210, A0=>input_a(10), A1=>input_b(10), B0=>
      nx6, B1=>nx82);
   ix7 : xnor2 port map ( Y=>nx6, A0=>input_a(10), A1=>nx213);
   ix214 : inv01 port map ( Y=>nx213, A=>input_b(10));
   ix216 : nand02 port map ( Y=>nx215, A0=>input_b(11), A1=>input_a(11));
   ix218 : xnor2 port map ( Y=>nx217, A0=>input_a(12), A1=>input_b(12));
   ix127 : xnor2 port map ( Y=>sum(13), A0=>nx220, A1=>nx104);
   ix221 : xnor2 port map ( Y=>nx220, A0=>input_a(13), A1=>input_b(13));
   ix105 : inv01 port map ( Y=>nx104, A=>nx223);
   ix224 : aoi22 port map ( Y=>nx223, A0=>input_a(12), A1=>input_b(12), B0=>
      nx96, B1=>nx98);
   ix99 : xnor2 port map ( Y=>nx98, A0=>input_a(12), A1=>nx226);
   ix227 : inv01 port map ( Y=>nx226, A=>input_b(12));
   ix125 : xnor2 port map ( Y=>sum(14), A0=>nx110, A1=>nx232);
   ix111 : oai21 port map ( Y=>nx110, A0=>nx220, A1=>nx223, B0=>nx230);
   ix231 : nand02 port map ( Y=>nx230, A0=>input_a(13), A1=>input_b(13));
   ix233 : xnor2 port map ( Y=>nx232, A0=>input_a(14), A1=>input_b(14));
   ix123 : xnor2 port map ( Y=>sum(15), A0=>nx118, A1=>nx241);
   ix119 : oai21 port map ( Y=>nx118, A0=>nx232, A1=>nx236, B0=>nx239);
   ix237 : aoi21 port map ( Y=>nx236, A0=>input_a(13), A1=>input_b(13), B0=>
      nx106);
   ix107 : nor02_2x port map ( Y=>nx106, A0=>nx220, A1=>nx223);
   ix240 : nand02 port map ( Y=>nx239, A0=>input_b(14), A1=>input_a(14));
   ix242 : xnor2 port map ( Y=>nx241, A0=>input_a(15), A1=>input_b(15));

end algorithmic ;

