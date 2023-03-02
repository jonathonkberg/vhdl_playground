//
// Verilog description for cell sixteen_bit_adder_alg, 
// Thu Mar  2 00:31:43 2023
//
// LeonardoSpectrum Level 3, 2011a.4 
//


module sixteen_bit_adder_alg ( input_a, input_b, sum ) ;

    input [15:0]input_a ;
    input [15:0]input_b ;
    output [15:0]sum ;

    wire nx6, nx12, nx18, nx24, nx26, nx34, nx36, nx40, nx42, nx48, nx50, nx54, 
         nx60, nx68, nx70, nx76, nx78, nx82, nx88, nx96, nx98, nx104, nx106, 
         nx110, nx118, nx97, nx101, nx105, nx111, nx113, nx115, nx119, nx123, 
         nx127, nx133, nx135, nx137, nx141, nx145, nx149, nx153, nx157, nx160, 
         nx162, nx166, nx169, nx171, nx175, nx178, nx180, nx182, nx185, nx188, 
         nx191, nx194, nx197, nx201, nx204, nx206, nx210, nx213, nx215, nx217, 
         nx220, nx223, nx226, nx230, nx232, nx236, nx239, nx241;



    xnor2 ix157 (.Y (sum[0]), .A0 (input_a[0]), .A1 (nx97)) ;
    inv01 ix98 (.Y (nx97), .A (input_b[0])) ;
    xnor2 ix151 (.Y (sum[1]), .A0 (nx101), .A1 (nx18)) ;
    nand02 ix102 (.Y (nx101), .A0 (input_a[0]), .A1 (input_b[0])) ;
    xnor2 ix19 (.Y (nx18), .A0 (input_a[1]), .A1 (nx105)) ;
    inv01 ix106 (.Y (nx105), .A (input_b[1])) ;
    xnor2 ix149 (.Y (sum[2]), .A0 (nx24), .A1 (nx115)) ;
    oai22 ix25 (.Y (nx24), .A0 (nx101), .A1 (nx111), .B0 (nx113), .B1 (nx105)) ;
    xnor2 ix112 (.Y (nx111), .A0 (input_a[1]), .A1 (input_b[1])) ;
    inv01 ix114 (.Y (nx113), .A (input_a[1])) ;
    xnor2 ix116 (.Y (nx115), .A0 (input_a[2]), .A1 (input_b[2])) ;
    xnor2 ix147 (.Y (sum[3]), .A0 (nx119), .A1 (nx34)) ;
    aoi22 ix120 (.Y (nx119), .A0 (input_a[2]), .A1 (input_b[2]), .B0 (nx24), .B1 (
          nx26)) ;
    xnor2 ix27 (.Y (nx26), .A0 (input_a[2]), .A1 (nx123)) ;
    inv01 ix124 (.Y (nx123), .A (input_b[2])) ;
    xnor2 ix35 (.Y (nx34), .A0 (input_a[3]), .A1 (nx127)) ;
    inv01 ix128 (.Y (nx127), .A (input_b[3])) ;
    xnor2 ix145 (.Y (sum[4]), .A0 (nx40), .A1 (nx137)) ;
    oai21 ix41 (.Y (nx40), .A0 (nx119), .A1 (nx133), .B0 (nx135)) ;
    xnor2 ix134 (.Y (nx133), .A0 (input_a[3]), .A1 (input_b[3])) ;
    nand02 ix136 (.Y (nx135), .A0 (input_a[3]), .A1 (input_b[3])) ;
    xnor2 ix138 (.Y (nx137), .A0 (input_a[4]), .A1 (input_b[4])) ;
    xnor2 ix143 (.Y (sum[5]), .A0 (nx141), .A1 (nx48)) ;
    xnor2 ix142 (.Y (nx141), .A0 (input_a[5]), .A1 (input_b[5])) ;
    oai21 ix50 (.Y (nx48), .A0 (nx145), .A1 (nx137), .B0 (nx149)) ;
    aoi21 ix146 (.Y (nx145), .A0 (input_a[3]), .A1 (input_b[3]), .B0 (nx36)) ;
    nor02ii ix37 (.Y (nx36), .A0 (nx119), .A1 (nx34)) ;
    nand02 ix150 (.Y (nx149), .A0 (input_a[4]), .A1 (input_b[4])) ;
    xnor2 ix141 (.Y (sum[6]), .A0 (nx153), .A1 (nx54)) ;
    xnor2 ix154 (.Y (nx153), .A0 (input_a[6]), .A1 (input_b[6])) ;
    oai21 ix55 (.Y (nx54), .A0 (nx141), .A1 (nx157), .B0 (nx162)) ;
    aoi22 ix158 (.Y (nx157), .A0 (input_a[4]), .A1 (input_b[4]), .B0 (nx40), .B1 (
          nx42)) ;
    xnor2 ix43 (.Y (nx42), .A0 (input_a[4]), .A1 (nx160)) ;
    inv01 ix161 (.Y (nx160), .A (input_b[4])) ;
    nand02 ix163 (.Y (nx162), .A0 (input_a[5]), .A1 (input_b[5])) ;
    xnor2 ix139 (.Y (sum[7]), .A0 (nx60), .A1 (nx171)) ;
    oai21 ix61 (.Y (nx60), .A0 (nx153), .A1 (nx166), .B0 (nx169)) ;
    aoi21 ix167 (.Y (nx166), .A0 (input_a[5]), .A1 (input_b[5]), .B0 (nx50)) ;
    nor02_2x ix51 (.Y (nx50), .A0 (nx141), .A1 (nx157)) ;
    nand02 ix170 (.Y (nx169), .A0 (input_a[6]), .A1 (input_b[6])) ;
    xnor2 ix172 (.Y (nx171), .A0 (input_a[7]), .A1 (input_b[7])) ;
    xnor2 ix137 (.Y (sum[8]), .A0 (nx68), .A1 (nx182)) ;
    oai21 ix69 (.Y (nx68), .A0 (nx171), .A1 (nx175), .B0 (nx180)) ;
    aoi22 ix176 (.Y (nx175), .A0 (input_a[6]), .A1 (input_b[6]), .B0 (nx12), .B1 (
          nx54)) ;
    xnor2 ix13 (.Y (nx12), .A0 (input_a[6]), .A1 (nx178)) ;
    inv01 ix179 (.Y (nx178), .A (input_b[6])) ;
    nand02 ix181 (.Y (nx180), .A0 (input_b[7]), .A1 (input_a[7])) ;
    xnor2 ix183 (.Y (nx182), .A0 (input_a[8]), .A1 (input_b[8])) ;
    xnor2 ix135 (.Y (sum[9]), .A0 (nx185), .A1 (nx76)) ;
    xnor2 ix186 (.Y (nx185), .A0 (input_a[9]), .A1 (input_b[9])) ;
    inv01 ix77 (.Y (nx76), .A (nx188)) ;
    aoi22 ix189 (.Y (nx188), .A0 (input_a[8]), .A1 (input_b[8]), .B0 (nx68), .B1 (
          nx70)) ;
    xnor2 ix71 (.Y (nx70), .A0 (input_a[8]), .A1 (nx191)) ;
    inv01 ix192 (.Y (nx191), .A (input_b[8])) ;
    xnor2 ix133 (.Y (sum[10]), .A0 (nx194), .A1 (nx82)) ;
    xnor2 ix195 (.Y (nx194), .A0 (input_a[10]), .A1 (input_b[10])) ;
    oai21 ix83 (.Y (nx82), .A0 (nx185), .A1 (nx188), .B0 (nx197)) ;
    nand02 ix198 (.Y (nx197), .A0 (input_a[9]), .A1 (input_b[9])) ;
    xnor2 ix131 (.Y (sum[11]), .A0 (nx88), .A1 (nx206)) ;
    oai21 ix89 (.Y (nx88), .A0 (nx194), .A1 (nx201), .B0 (nx204)) ;
    aoi21 ix202 (.Y (nx201), .A0 (input_a[9]), .A1 (input_b[9]), .B0 (nx78)) ;
    nor02_2x ix79 (.Y (nx78), .A0 (nx185), .A1 (nx188)) ;
    nand02 ix205 (.Y (nx204), .A0 (input_a[10]), .A1 (input_b[10])) ;
    xnor2 ix207 (.Y (nx206), .A0 (input_a[11]), .A1 (input_b[11])) ;
    xnor2 ix129 (.Y (sum[12]), .A0 (nx96), .A1 (nx217)) ;
    oai21 ix97 (.Y (nx96), .A0 (nx206), .A1 (nx210), .B0 (nx215)) ;
    aoi22 ix211 (.Y (nx210), .A0 (input_a[10]), .A1 (input_b[10]), .B0 (nx6), .B1 (
          nx82)) ;
    xnor2 ix7 (.Y (nx6), .A0 (input_a[10]), .A1 (nx213)) ;
    inv01 ix214 (.Y (nx213), .A (input_b[10])) ;
    nand02 ix216 (.Y (nx215), .A0 (input_b[11]), .A1 (input_a[11])) ;
    xnor2 ix218 (.Y (nx217), .A0 (input_a[12]), .A1 (input_b[12])) ;
    xnor2 ix127 (.Y (sum[13]), .A0 (nx220), .A1 (nx104)) ;
    xnor2 ix221 (.Y (nx220), .A0 (input_a[13]), .A1 (input_b[13])) ;
    inv01 ix105 (.Y (nx104), .A (nx223)) ;
    aoi22 ix224 (.Y (nx223), .A0 (input_a[12]), .A1 (input_b[12]), .B0 (nx96), .B1 (
          nx98)) ;
    xnor2 ix99 (.Y (nx98), .A0 (input_a[12]), .A1 (nx226)) ;
    inv01 ix227 (.Y (nx226), .A (input_b[12])) ;
    xnor2 ix125 (.Y (sum[14]), .A0 (nx110), .A1 (nx232)) ;
    oai21 ix111 (.Y (nx110), .A0 (nx220), .A1 (nx223), .B0 (nx230)) ;
    nand02 ix231 (.Y (nx230), .A0 (input_a[13]), .A1 (input_b[13])) ;
    xnor2 ix233 (.Y (nx232), .A0 (input_a[14]), .A1 (input_b[14])) ;
    xnor2 ix123 (.Y (sum[15]), .A0 (nx118), .A1 (nx241)) ;
    oai21 ix119 (.Y (nx118), .A0 (nx232), .A1 (nx236), .B0 (nx239)) ;
    aoi21 ix237 (.Y (nx236), .A0 (input_a[13]), .A1 (input_b[13]), .B0 (nx106)
          ) ;
    nor02_2x ix107 (.Y (nx106), .A0 (nx220), .A1 (nx223)) ;
    nand02 ix240 (.Y (nx239), .A0 (input_b[14]), .A1 (input_a[14])) ;
    xnor2 ix242 (.Y (nx241), .A0 (input_a[15]), .A1 (input_b[15])) ;
endmodule

