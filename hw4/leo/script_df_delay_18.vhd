
-- 
-- Definition of  sixteen_bit_adder_df
-- 
--      Wed Mar  1 22:23:13 2023
--      
--      LeonardoSpectrum Level 3, 2011a.4
-- 

library ieee, adk; use ieee.std_logic_1164.all, use ieee.std_logic_signed.all, adk.adk_components.all;

entity sixteen_bit_adder_df is
   port (
      input_a : IN std_logic_vector (0 TO 15) ;
      input_b : IN std_logic_vector (0 TO 15) ;
      sum : OUT std_logic_vector (0 TO 15)) ;
end sixteen_bit_adder_df ;

architecture dataflow of sixteen_bit_adder_df is
   signal nx4, nx6, nx10, nx12, nx18, nx24, nx26, nx32, nx34, nx40, nx42, 
      nx48, nx54, nx68, nx70, nx76, nx82, nx96, nx98, nx104, nx110, nx120, 
      nx97, nx101, nx105, nx111, nx113, nx115, nx119, nx123, nx127, nx133, 
      nx135, nx137, nx141, nx145, nx149, nx153, nx157, nx160, nx162, nx165, 
      nx168, nx171, nx175, nx177, nx179, nx182, nx185, nx188, nx191, nx194, 
      nx197, nx200, nx203, nx207, nx209, nx211, nx214, nx217, nx220, nx224, 
      nx226, nx229, nx232: std_logic ;

begin
   ix157 : xnor2 port map ( Y=>sum(15), A0=>input_a(15), A1=>nx97);
   ix98 : inv01 port map ( Y=>nx97, A=>input_b(15));
   ix151 : xnor2 port map ( Y=>sum(14), A0=>nx101, A1=>nx18);
   ix102 : nand02 port map ( Y=>nx101, A0=>input_a(15), A1=>input_b(15));
   ix19 : xnor2 port map ( Y=>nx18, A0=>input_a(14), A1=>nx105);
   ix106 : inv01 port map ( Y=>nx105, A=>input_b(14));
   ix149 : xnor2 port map ( Y=>sum(13), A0=>nx24, A1=>nx115);
   ix25 : oai21 port map ( Y=>nx24, A0=>nx101, A1=>nx111, B0=>nx113);
   ix112 : xnor2 port map ( Y=>nx111, A0=>input_a(14), A1=>input_b(14));
   ix114 : nand02 port map ( Y=>nx113, A0=>input_a(14), A1=>input_b(14));
   ix116 : xnor2 port map ( Y=>nx115, A0=>input_a(13), A1=>input_b(13));
   ix147 : xnor2 port map ( Y=>sum(12), A0=>nx119, A1=>nx34);
   ix120 : aoi22 port map ( Y=>nx119, A0=>input_a(13), A1=>input_b(13), B0=>
      nx24, B1=>nx26);
   ix27 : xnor2 port map ( Y=>nx26, A0=>input_a(13), A1=>nx123);
   ix124 : inv01 port map ( Y=>nx123, A=>input_b(13));
   ix35 : xnor2 port map ( Y=>nx34, A0=>input_a(12), A1=>nx127);
   ix128 : inv01 port map ( Y=>nx127, A=>input_b(12));
   ix145 : xnor2 port map ( Y=>sum(11), A0=>nx40, A1=>nx137);
   ix41 : oai21 port map ( Y=>nx40, A0=>nx119, A1=>nx133, B0=>nx135);
   ix134 : xnor2 port map ( Y=>nx133, A0=>input_a(12), A1=>input_b(12));
   ix136 : nand02 port map ( Y=>nx135, A0=>input_a(12), A1=>input_b(12));
   ix138 : xnor2 port map ( Y=>nx137, A0=>input_a(11), A1=>input_b(11));
   ix143 : xnor2 port map ( Y=>sum(10), A0=>nx141, A1=>nx48);
   ix142 : xnor2 port map ( Y=>nx141, A0=>input_a(10), A1=>input_b(10));
   ix50 : oai21 port map ( Y=>nx48, A0=>nx145, A1=>nx137, B0=>nx149);
   ix146 : aoi22 port map ( Y=>nx145, A0=>input_a(12), A1=>input_b(12), B0=>
      nx32, B1=>nx34);
   ix33 : inv01 port map ( Y=>nx32, A=>nx119);
   ix150 : nand02 port map ( Y=>nx149, A0=>input_a(11), A1=>input_b(11));
   ix141 : xnor2 port map ( Y=>sum(9), A0=>nx153, A1=>nx54);
   ix154 : xnor2 port map ( Y=>nx153, A0=>input_a(9), A1=>input_b(9));
   ix55 : oai21 port map ( Y=>nx54, A0=>nx141, A1=>nx157, B0=>nx162);
   ix158 : aoi22 port map ( Y=>nx157, A0=>input_a(11), A1=>input_b(11), B0=>
      nx40, B1=>nx42);
   ix43 : xnor2 port map ( Y=>nx42, A0=>input_a(11), A1=>nx160);
   ix161 : inv01 port map ( Y=>nx160, A=>input_b(11));
   ix163 : nand02 port map ( Y=>nx162, A0=>input_a(10), A1=>input_b(10));
   ix139 : xnor2 port map ( Y=>sum(8), A0=>nx165, A1=>nx10);
   ix166 : aoi22 port map ( Y=>nx165, A0=>input_a(9), A1=>input_b(9), B0=>
      nx12, B1=>nx54);
   ix13 : xnor2 port map ( Y=>nx12, A0=>input_a(9), A1=>nx168);
   ix169 : inv01 port map ( Y=>nx168, A=>input_b(9));
   ix11 : xnor2 port map ( Y=>nx10, A0=>input_a(8), A1=>nx171);
   ix172 : inv01 port map ( Y=>nx171, A=>input_b(8));
   ix137 : xnor2 port map ( Y=>sum(7), A0=>nx68, A1=>nx179);
   ix69 : oai21 port map ( Y=>nx68, A0=>nx175, A1=>nx165, B0=>nx177);
   ix176 : xnor2 port map ( Y=>nx175, A0=>input_a(8), A1=>input_b(8));
   ix178 : nand02 port map ( Y=>nx177, A0=>input_b(8), A1=>input_a(8));
   ix180 : xnor2 port map ( Y=>nx179, A0=>input_a(7), A1=>input_b(7));
   ix135 : xnor2 port map ( Y=>sum(6), A0=>nx182, A1=>nx76);
   ix183 : xnor2 port map ( Y=>nx182, A0=>input_a(6), A1=>input_b(6));
   ix77 : inv01 port map ( Y=>nx76, A=>nx185);
   ix186 : aoi22 port map ( Y=>nx185, A0=>input_a(7), A1=>input_b(7), B0=>
      nx68, B1=>nx70);
   ix71 : xnor2 port map ( Y=>nx70, A0=>input_a(7), A1=>nx188);
   ix189 : inv01 port map ( Y=>nx188, A=>input_b(7));
   ix133 : xnor2 port map ( Y=>sum(5), A0=>nx191, A1=>nx82);
   ix192 : xnor2 port map ( Y=>nx191, A0=>input_a(5), A1=>input_b(5));
   ix83 : oai21 port map ( Y=>nx82, A0=>nx182, A1=>nx185, B0=>nx194);
   ix195 : nand02 port map ( Y=>nx194, A0=>input_a(6), A1=>input_b(6));
   ix131 : xnor2 port map ( Y=>sum(4), A0=>nx197, A1=>nx4);
   ix198 : aoi22 port map ( Y=>nx197, A0=>input_a(5), A1=>input_b(5), B0=>
      nx6, B1=>nx82);
   ix7 : xnor2 port map ( Y=>nx6, A0=>input_a(5), A1=>nx200);
   ix201 : inv01 port map ( Y=>nx200, A=>input_b(5));
   ix5 : xnor2 port map ( Y=>nx4, A0=>input_a(4), A1=>nx203);
   ix204 : inv01 port map ( Y=>nx203, A=>input_b(4));
   ix129 : xnor2 port map ( Y=>sum(3), A0=>nx96, A1=>nx211);
   ix97 : oai21 port map ( Y=>nx96, A0=>nx207, A1=>nx197, B0=>nx209);
   ix208 : xnor2 port map ( Y=>nx207, A0=>input_a(4), A1=>input_b(4));
   ix210 : nand02 port map ( Y=>nx209, A0=>input_b(4), A1=>input_a(4));
   ix212 : xnor2 port map ( Y=>nx211, A0=>input_a(3), A1=>input_b(3));
   ix127 : xnor2 port map ( Y=>sum(2), A0=>nx214, A1=>nx104);
   ix215 : xnor2 port map ( Y=>nx214, A0=>input_a(2), A1=>input_b(2));
   ix105 : inv01 port map ( Y=>nx104, A=>nx217);
   ix218 : aoi22 port map ( Y=>nx217, A0=>input_a(3), A1=>input_b(3), B0=>
      nx96, B1=>nx98);
   ix99 : xnor2 port map ( Y=>nx98, A0=>input_a(3), A1=>nx220);
   ix221 : inv01 port map ( Y=>nx220, A=>input_b(3));
   ix125 : xnor2 port map ( Y=>sum(1), A0=>nx110, A1=>nx226);
   ix111 : oai21 port map ( Y=>nx110, A0=>nx214, A1=>nx217, B0=>nx224);
   ix225 : nand02 port map ( Y=>nx224, A0=>input_a(2), A1=>input_b(2));
   ix227 : xnor2 port map ( Y=>nx226, A0=>input_a(1), A1=>input_b(1));
   ix123 : xnor2 port map ( Y=>sum(0), A0=>nx229, A1=>nx120);
   ix230 : mux21 port map ( Y=>nx229, A0=>nx110, A1=>input_b(1), S0=>nx226);
   ix121 : xnor2 port map ( Y=>nx120, A0=>input_a(0), A1=>nx232);
   ix233 : inv01 port map ( Y=>nx232, A=>input_b(0));
end dataflow ;

