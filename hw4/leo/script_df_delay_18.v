//
// Verilog description for cell sixteen_bit_adder_df, 
// Wed Mar  1 22:23:13 2023
//
// LeonardoSpectrum Level 3, 2011a.4 
//


module sixteen_bit_adder_df ( input_a, input_b, sum ) ;

    input [0:15]input_a ;
    input [0:15]input_b ;
    output [0:15]sum ;

    wire nx4, nx6, nx10, nx12, nx18, nx24, nx26, nx32, nx34, nx40, nx42, nx48, 
         nx54, nx68, nx70, nx76, nx82, nx96, nx98, nx104, nx110, nx120, nx97, 
         nx101, nx105, nx111, nx113, nx115, nx119, nx123, nx127, nx133, nx135, 
         nx137, nx141, nx145, nx149, nx153, nx157, nx160, nx162, nx165, nx168, 
         nx171, nx175, nx177, nx179, nx182, nx185, nx188, nx191, nx194, nx197, 
         nx200, nx203, nx207, nx209, nx211, nx214, nx217, nx220, nx224, nx226, 
         nx229, nx232;



    xnor2 ix157 (.Y (sum[15]), .A0 (input_a[15]), .A1 (nx97)) ;
    inv01 ix98 (.Y (nx97), .A (input_b[15])) ;
    xnor2 ix151 (.Y (sum[14]), .A0 (nx101), .A1 (nx18)) ;
    nand02 ix102 (.Y (nx101), .A0 (input_a[15]), .A1 (input_b[15])) ;
    xnor2 ix19 (.Y (nx18), .A0 (input_a[14]), .A1 (nx105)) ;
    inv01 ix106 (.Y (nx105), .A (input_b[14])) ;
    xnor2 ix149 (.Y (sum[13]), .A0 (nx24), .A1 (nx115)) ;
    oai21 ix25 (.Y (nx24), .A0 (nx101), .A1 (nx111), .B0 (nx113)) ;
    xnor2 ix112 (.Y (nx111), .A0 (input_a[14]), .A1 (input_b[14])) ;
    nand02 ix114 (.Y (nx113), .A0 (input_a[14]), .A1 (input_b[14])) ;
    xnor2 ix116 (.Y (nx115), .A0 (input_a[13]), .A1 (input_b[13])) ;
    xnor2 ix147 (.Y (sum[12]), .A0 (nx119), .A1 (nx34)) ;
    aoi22 ix120 (.Y (nx119), .A0 (input_a[13]), .A1 (input_b[13]), .B0 (nx24), .B1 (
          nx26)) ;
    xnor2 ix27 (.Y (nx26), .A0 (input_a[13]), .A1 (nx123)) ;
    inv01 ix124 (.Y (nx123), .A (input_b[13])) ;
    xnor2 ix35 (.Y (nx34), .A0 (input_a[12]), .A1 (nx127)) ;
    inv01 ix128 (.Y (nx127), .A (input_b[12])) ;
    xnor2 ix145 (.Y (sum[11]), .A0 (nx40), .A1 (nx137)) ;
    oai21 ix41 (.Y (nx40), .A0 (nx119), .A1 (nx133), .B0 (nx135)) ;
    xnor2 ix134 (.Y (nx133), .A0 (input_a[12]), .A1 (input_b[12])) ;
    nand02 ix136 (.Y (nx135), .A0 (input_a[12]), .A1 (input_b[12])) ;
    xnor2 ix138 (.Y (nx137), .A0 (input_a[11]), .A1 (input_b[11])) ;
    xnor2 ix143 (.Y (sum[10]), .A0 (nx141), .A1 (nx48)) ;
    xnor2 ix142 (.Y (nx141), .A0 (input_a[10]), .A1 (input_b[10])) ;
    oai21 ix50 (.Y (nx48), .A0 (nx145), .A1 (nx137), .B0 (nx149)) ;
    aoi22 ix146 (.Y (nx145), .A0 (input_a[12]), .A1 (input_b[12]), .B0 (nx32), .B1 (
          nx34)) ;
    inv01 ix33 (.Y (nx32), .A (nx119)) ;
    nand02 ix150 (.Y (nx149), .A0 (input_a[11]), .A1 (input_b[11])) ;
    xnor2 ix141 (.Y (sum[9]), .A0 (nx153), .A1 (nx54)) ;
    xnor2 ix154 (.Y (nx153), .A0 (input_a[9]), .A1 (input_b[9])) ;
    oai21 ix55 (.Y (nx54), .A0 (nx141), .A1 (nx157), .B0 (nx162)) ;
    aoi22 ix158 (.Y (nx157), .A0 (input_a[11]), .A1 (input_b[11]), .B0 (nx40), .B1 (
          nx42)) ;
    xnor2 ix43 (.Y (nx42), .A0 (input_a[11]), .A1 (nx160)) ;
    inv01 ix161 (.Y (nx160), .A (input_b[11])) ;
    nand02 ix163 (.Y (nx162), .A0 (input_a[10]), .A1 (input_b[10])) ;
    xnor2 ix139 (.Y (sum[8]), .A0 (nx165), .A1 (nx10)) ;
    aoi22 ix166 (.Y (nx165), .A0 (input_a[9]), .A1 (input_b[9]), .B0 (nx12), .B1 (
          nx54)) ;
    xnor2 ix13 (.Y (nx12), .A0 (input_a[9]), .A1 (nx168)) ;
    inv01 ix169 (.Y (nx168), .A (input_b[9])) ;
    xnor2 ix11 (.Y (nx10), .A0 (input_a[8]), .A1 (nx171)) ;
    inv01 ix172 (.Y (nx171), .A (input_b[8])) ;
    xnor2 ix137 (.Y (sum[7]), .A0 (nx68), .A1 (nx179)) ;
    oai21 ix69 (.Y (nx68), .A0 (nx175), .A1 (nx165), .B0 (nx177)) ;
    xnor2 ix176 (.Y (nx175), .A0 (input_a[8]), .A1 (input_b[8])) ;
    nand02 ix178 (.Y (nx177), .A0 (input_b[8]), .A1 (input_a[8])) ;
    xnor2 ix180 (.Y (nx179), .A0 (input_a[7]), .A1 (input_b[7])) ;
    xnor2 ix135 (.Y (sum[6]), .A0 (nx182), .A1 (nx76)) ;
    xnor2 ix183 (.Y (nx182), .A0 (input_a[6]), .A1 (input_b[6])) ;
    inv01 ix77 (.Y (nx76), .A (nx185)) ;
    aoi22 ix186 (.Y (nx185), .A0 (input_a[7]), .A1 (input_b[7]), .B0 (nx68), .B1 (
          nx70)) ;
    xnor2 ix71 (.Y (nx70), .A0 (input_a[7]), .A1 (nx188)) ;
    inv01 ix189 (.Y (nx188), .A (input_b[7])) ;
    xnor2 ix133 (.Y (sum[5]), .A0 (nx191), .A1 (nx82)) ;
    xnor2 ix192 (.Y (nx191), .A0 (input_a[5]), .A1 (input_b[5])) ;
    oai21 ix83 (.Y (nx82), .A0 (nx182), .A1 (nx185), .B0 (nx194)) ;
    nand02 ix195 (.Y (nx194), .A0 (input_a[6]), .A1 (input_b[6])) ;
    xnor2 ix131 (.Y (sum[4]), .A0 (nx197), .A1 (nx4)) ;
    aoi22 ix198 (.Y (nx197), .A0 (input_a[5]), .A1 (input_b[5]), .B0 (nx6), .B1 (
          nx82)) ;
    xnor2 ix7 (.Y (nx6), .A0 (input_a[5]), .A1 (nx200)) ;
    inv01 ix201 (.Y (nx200), .A (input_b[5])) ;
    xnor2 ix5 (.Y (nx4), .A0 (input_a[4]), .A1 (nx203)) ;
    inv01 ix204 (.Y (nx203), .A (input_b[4])) ;
    xnor2 ix129 (.Y (sum[3]), .A0 (nx96), .A1 (nx211)) ;
    oai21 ix97 (.Y (nx96), .A0 (nx207), .A1 (nx197), .B0 (nx209)) ;
    xnor2 ix208 (.Y (nx207), .A0 (input_a[4]), .A1 (input_b[4])) ;
    nand02 ix210 (.Y (nx209), .A0 (input_b[4]), .A1 (input_a[4])) ;
    xnor2 ix212 (.Y (nx211), .A0 (input_a[3]), .A1 (input_b[3])) ;
    xnor2 ix127 (.Y (sum[2]), .A0 (nx214), .A1 (nx104)) ;
    xnor2 ix215 (.Y (nx214), .A0 (input_a[2]), .A1 (input_b[2])) ;
    inv01 ix105 (.Y (nx104), .A (nx217)) ;
    aoi22 ix218 (.Y (nx217), .A0 (input_a[3]), .A1 (input_b[3]), .B0 (nx96), .B1 (
          nx98)) ;
    xnor2 ix99 (.Y (nx98), .A0 (input_a[3]), .A1 (nx220)) ;
    inv01 ix221 (.Y (nx220), .A (input_b[3])) ;
    xnor2 ix125 (.Y (sum[1]), .A0 (nx110), .A1 (nx226)) ;
    oai21 ix111 (.Y (nx110), .A0 (nx214), .A1 (nx217), .B0 (nx224)) ;
    nand02 ix225 (.Y (nx224), .A0 (input_a[2]), .A1 (input_b[2])) ;
    xnor2 ix227 (.Y (nx226), .A0 (input_a[1]), .A1 (input_b[1])) ;
    xnor2 ix123 (.Y (sum[0]), .A0 (nx229), .A1 (nx120)) ;
    mux21 ix230 (.Y (nx229), .A0 (nx110), .A1 (input_b[1]), .S0 (nx226)) ;
    xnor2 ix121 (.Y (nx120), .A0 (input_a[0]), .A1 (nx232)) ;
    inv01 ix233 (.Y (nx232), .A (input_b[0])) ;
endmodule

