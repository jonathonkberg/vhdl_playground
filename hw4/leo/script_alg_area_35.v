//
// Verilog description for cell sixteen_bit_adder_alg, 
// Thu Mar  2 00:32:28 2023
//
// LeonardoSpectrum Level 3, 2011a.4 
//


module sixteen_bit_adder_alg ( input_a, input_b, sum ) ;

    input [15:0]input_a ;
    input [15:0]input_b ;
    output [15:0]sum ;

    wire nx0, nx6, nx12, nx18, nx24, nx30, nx36, nx42, nx48, nx54, nx60, nx66, 
         nx72, nx78, nx88, nx92, nx96, nx100, nx104, nx108, nx112, nx116, nx120, 
         nx124, nx128, nx132, nx136, nx142, nx99, nx101, nx105, nx109, nx113, 
         nx119, nx123, nx129, nx133, nx139, nx143, nx149, nx153, nx159, nx163, 
         nx169, nx173, nx179, nx182, nx186, nx189, nx193, nx196, nx200, nx203, 
         nx207, nx210, nx214, nx217;



    xor2 ix179 (.Y (sum[0]), .A0 (input_b[0]), .A1 (input_a[0])) ;
    xor2 ix173 (.Y (sum[1]), .A0 (nx99), .A1 (nx101)) ;
    nand02 ix100 (.Y (nx99), .A0 (input_b[0]), .A1 (input_a[0])) ;
    xnor2 ix102 (.Y (nx101), .A0 (input_b[1]), .A1 (input_a[1])) ;
    xor2 ix171 (.Y (sum[2]), .A0 (nx105), .A1 (nx109)) ;
    aoi32 ix106 (.Y (nx105), .A0 (input_b[0]), .A1 (input_a[0]), .A2 (nx78), .B0 (
          input_a[1]), .B1 (input_b[1])) ;
    xnor2 ix110 (.Y (nx109), .A0 (input_b[2]), .A1 (input_a[2])) ;
    xor2 ix169 (.Y (sum[3]), .A0 (nx113), .A1 (nx119)) ;
    aoi22 ix114 (.Y (nx113), .A0 (input_a[2]), .A1 (input_b[2]), .B0 (nx88), .B1 (
          nx72)) ;
    xnor2 ix120 (.Y (nx119), .A0 (input_b[3]), .A1 (input_a[3])) ;
    xor2 ix167 (.Y (sum[4]), .A0 (nx123), .A1 (nx129)) ;
    aoi22 ix124 (.Y (nx123), .A0 (input_a[3]), .A1 (input_b[3]), .B0 (nx92), .B1 (
          nx66)) ;
    xnor2 ix130 (.Y (nx129), .A0 (input_b[4]), .A1 (input_a[4])) ;
    xor2 ix165 (.Y (sum[5]), .A0 (nx133), .A1 (nx139)) ;
    aoi22 ix134 (.Y (nx133), .A0 (input_a[4]), .A1 (input_b[4]), .B0 (nx96), .B1 (
          nx60)) ;
    xnor2 ix140 (.Y (nx139), .A0 (input_b[5]), .A1 (input_a[5])) ;
    xor2 ix163 (.Y (sum[6]), .A0 (nx143), .A1 (nx149)) ;
    aoi22 ix144 (.Y (nx143), .A0 (input_a[5]), .A1 (input_b[5]), .B0 (nx100), .B1 (
          nx54)) ;
    xnor2 ix150 (.Y (nx149), .A0 (input_b[6]), .A1 (input_a[6])) ;
    xor2 ix161 (.Y (sum[7]), .A0 (nx153), .A1 (nx159)) ;
    aoi22 ix154 (.Y (nx153), .A0 (input_a[6]), .A1 (input_b[6]), .B0 (nx104), .B1 (
          nx48)) ;
    xnor2 ix160 (.Y (nx159), .A0 (input_b[7]), .A1 (input_a[7])) ;
    xor2 ix159 (.Y (sum[8]), .A0 (nx163), .A1 (nx169)) ;
    aoi22 ix164 (.Y (nx163), .A0 (input_a[7]), .A1 (input_b[7]), .B0 (nx108), .B1 (
          nx42)) ;
    xnor2 ix170 (.Y (nx169), .A0 (input_b[8]), .A1 (input_a[8])) ;
    xor2 ix157 (.Y (sum[9]), .A0 (nx173), .A1 (nx179)) ;
    aoi22 ix174 (.Y (nx173), .A0 (input_a[8]), .A1 (input_b[8]), .B0 (nx112), .B1 (
          nx36)) ;
    xnor2 ix180 (.Y (nx179), .A0 (input_b[9]), .A1 (input_a[9])) ;
    xor2 ix155 (.Y (sum[10]), .A0 (nx182), .A1 (nx186)) ;
    aoi22 ix183 (.Y (nx182), .A0 (input_a[9]), .A1 (input_b[9]), .B0 (nx116), .B1 (
          nx30)) ;
    xnor2 ix187 (.Y (nx186), .A0 (input_b[10]), .A1 (input_a[10])) ;
    xor2 ix153 (.Y (sum[11]), .A0 (nx189), .A1 (nx193)) ;
    aoi22 ix190 (.Y (nx189), .A0 (input_a[10]), .A1 (input_b[10]), .B0 (nx120), 
          .B1 (nx24)) ;
    xnor2 ix194 (.Y (nx193), .A0 (input_b[11]), .A1 (input_a[11])) ;
    xor2 ix151 (.Y (sum[12]), .A0 (nx196), .A1 (nx200)) ;
    aoi22 ix197 (.Y (nx196), .A0 (input_a[11]), .A1 (input_b[11]), .B0 (nx124), 
          .B1 (nx18)) ;
    xnor2 ix201 (.Y (nx200), .A0 (input_b[12]), .A1 (input_a[12])) ;
    xor2 ix149 (.Y (sum[13]), .A0 (nx203), .A1 (nx207)) ;
    aoi22 ix204 (.Y (nx203), .A0 (input_a[12]), .A1 (input_b[12]), .B0 (nx128), 
          .B1 (nx12)) ;
    xnor2 ix208 (.Y (nx207), .A0 (input_b[13]), .A1 (input_a[13])) ;
    xor2 ix147 (.Y (sum[14]), .A0 (nx210), .A1 (nx214)) ;
    aoi22 ix211 (.Y (nx210), .A0 (input_a[13]), .A1 (input_b[13]), .B0 (nx132), 
          .B1 (nx6)) ;
    xnor2 ix215 (.Y (nx214), .A0 (input_b[14]), .A1 (input_a[14])) ;
    xnor2 ix145 (.Y (sum[15]), .A0 (nx217), .A1 (nx142)) ;
    aoi22 ix218 (.Y (nx217), .A0 (input_a[14]), .A1 (input_b[14]), .B0 (nx136), 
          .B1 (nx0)) ;
    xor2 ix143 (.Y (nx142), .A0 (input_b[15]), .A1 (input_a[15])) ;
    inv01 ix137 (.Y (nx136), .A (nx210)) ;
    inv01 ix133 (.Y (nx132), .A (nx203)) ;
    inv01 ix129 (.Y (nx128), .A (nx196)) ;
    inv01 ix125 (.Y (nx124), .A (nx189)) ;
    inv01 ix121 (.Y (nx120), .A (nx182)) ;
    inv01 ix117 (.Y (nx116), .A (nx173)) ;
    inv01 ix113 (.Y (nx112), .A (nx163)) ;
    inv01 ix109 (.Y (nx108), .A (nx153)) ;
    inv01 ix105 (.Y (nx104), .A (nx143)) ;
    inv01 ix101 (.Y (nx100), .A (nx133)) ;
    inv01 ix97 (.Y (nx96), .A (nx123)) ;
    inv01 ix93 (.Y (nx92), .A (nx113)) ;
    inv01 ix89 (.Y (nx88), .A (nx105)) ;
    inv01 ix79 (.Y (nx78), .A (nx101)) ;
    inv01 ix73 (.Y (nx72), .A (nx109)) ;
    inv01 ix67 (.Y (nx66), .A (nx119)) ;
    inv01 ix61 (.Y (nx60), .A (nx129)) ;
    inv01 ix55 (.Y (nx54), .A (nx139)) ;
    inv01 ix50 (.Y (nx48), .A (nx149)) ;
    inv01 ix43 (.Y (nx42), .A (nx159)) ;
    inv01 ix37 (.Y (nx36), .A (nx169)) ;
    inv01 ix31 (.Y (nx30), .A (nx179)) ;
    inv01 ix25 (.Y (nx24), .A (nx186)) ;
    inv01 ix19 (.Y (nx18), .A (nx193)) ;
    inv01 ix13 (.Y (nx12), .A (nx200)) ;
    inv01 ix7 (.Y (nx6), .A (nx207)) ;
    inv01 ix1 (.Y (nx0), .A (nx214)) ;
endmodule

