//
// Verilog description for cell sixteen_bit_adder_df, 
// Thu Mar  2 00:34:41 2023
//
// LeonardoSpectrum Level 3, 2011a.4 
//


module sixteen_bit_adder_df ( input_a, input_b, sum ) ;

    input [0:15]input_a ;
    input [0:15]input_b ;
    output [0:15]sum ;

    wire nx78, nx92, nx100, nx108, nx116, nx124, nx132, nx140, nx99, nx101, 
         nx105, nx109, nx115, nx117, nx121, nx123, nx129, nx131, nx135, nx137, 
         nx143, nx145, nx149, nx151, nx157, nx159, nx163, nx165, nx171, nx173, 
         nx177, nx179, nx183, nx185, nx188, nx190, nx194, nx196;



    xor2 ix179 (.Y (sum[15]), .A0 (input_b[15]), .A1 (input_a[15])) ;
    xor2 ix173 (.Y (sum[14]), .A0 (nx99), .A1 (nx101)) ;
    nand02 ix100 (.Y (nx99), .A0 (input_b[15]), .A1 (input_a[15])) ;
    xnor2 ix102 (.Y (nx101), .A0 (input_b[14]), .A1 (input_a[14])) ;
    xor2 ix171 (.Y (sum[13]), .A0 (nx105), .A1 (nx109)) ;
    aoi32 ix106 (.Y (nx105), .A0 (input_b[15]), .A1 (input_a[15]), .A2 (nx78), .B0 (
          input_a[14]), .B1 (input_b[14])) ;
    xnor2 ix110 (.Y (nx109), .A0 (input_b[13]), .A1 (input_a[13])) ;
    xnor2 ix169 (.Y (sum[12]), .A0 (nx92), .A1 (nx117)) ;
    mux21 ix93 (.Y (nx92), .A0 (nx105), .A1 (nx115), .S0 (nx109)) ;
    inv01 ix116 (.Y (nx115), .A (input_a[13])) ;
    xnor2 ix118 (.Y (nx117), .A0 (input_b[12]), .A1 (input_a[12])) ;
    xor2 ix167 (.Y (sum[11]), .A0 (nx121), .A1 (nx123)) ;
    mux21 ix122 (.Y (nx121), .A0 (nx92), .A1 (input_a[12]), .S0 (nx117)) ;
    xnor2 ix124 (.Y (nx123), .A0 (input_b[11]), .A1 (input_a[11])) ;
    xnor2 ix165 (.Y (sum[10]), .A0 (nx100), .A1 (nx131)) ;
    mux21 ix101 (.Y (nx100), .A0 (nx121), .A1 (nx129), .S0 (nx123)) ;
    inv01 ix130 (.Y (nx129), .A (input_a[11])) ;
    xnor2 ix132 (.Y (nx131), .A0 (input_b[10]), .A1 (input_a[10])) ;
    xor2 ix163 (.Y (sum[9]), .A0 (nx135), .A1 (nx137)) ;
    mux21 ix136 (.Y (nx135), .A0 (nx100), .A1 (input_a[10]), .S0 (nx131)) ;
    xnor2 ix138 (.Y (nx137), .A0 (input_b[9]), .A1 (input_a[9])) ;
    xnor2 ix161 (.Y (sum[8]), .A0 (nx108), .A1 (nx145)) ;
    mux21 ix109 (.Y (nx108), .A0 (nx135), .A1 (nx143), .S0 (nx137)) ;
    inv01 ix144 (.Y (nx143), .A (input_a[9])) ;
    xnor2 ix146 (.Y (nx145), .A0 (input_b[8]), .A1 (input_a[8])) ;
    xor2 ix159 (.Y (sum[7]), .A0 (nx149), .A1 (nx151)) ;
    mux21 ix150 (.Y (nx149), .A0 (nx108), .A1 (input_a[8]), .S0 (nx145)) ;
    xnor2 ix152 (.Y (nx151), .A0 (input_b[7]), .A1 (input_a[7])) ;
    xnor2 ix157 (.Y (sum[6]), .A0 (nx116), .A1 (nx159)) ;
    mux21 ix117 (.Y (nx116), .A0 (nx149), .A1 (nx157), .S0 (nx151)) ;
    inv01 ix158 (.Y (nx157), .A (input_a[7])) ;
    xnor2 ix160 (.Y (nx159), .A0 (input_b[6]), .A1 (input_a[6])) ;
    xor2 ix155 (.Y (sum[5]), .A0 (nx163), .A1 (nx165)) ;
    mux21 ix164 (.Y (nx163), .A0 (nx116), .A1 (input_a[6]), .S0 (nx159)) ;
    xnor2 ix166 (.Y (nx165), .A0 (input_b[5]), .A1 (input_a[5])) ;
    xnor2 ix153 (.Y (sum[4]), .A0 (nx124), .A1 (nx173)) ;
    mux21 ix125 (.Y (nx124), .A0 (nx163), .A1 (nx171), .S0 (nx165)) ;
    inv01 ix172 (.Y (nx171), .A (input_a[5])) ;
    xnor2 ix174 (.Y (nx173), .A0 (input_b[4]), .A1 (input_a[4])) ;
    xor2 ix151 (.Y (sum[3]), .A0 (nx177), .A1 (nx179)) ;
    mux21 ix178 (.Y (nx177), .A0 (nx124), .A1 (input_a[4]), .S0 (nx173)) ;
    xnor2 ix180 (.Y (nx179), .A0 (input_b[3]), .A1 (input_a[3])) ;
    xnor2 ix149 (.Y (sum[2]), .A0 (nx132), .A1 (nx185)) ;
    mux21 ix133 (.Y (nx132), .A0 (nx177), .A1 (nx183), .S0 (nx179)) ;
    inv01 ix184 (.Y (nx183), .A (input_a[3])) ;
    xnor2 ix186 (.Y (nx185), .A0 (input_b[2]), .A1 (input_a[2])) ;
    xor2 ix147 (.Y (sum[1]), .A0 (nx188), .A1 (nx190)) ;
    mux21 ix189 (.Y (nx188), .A0 (nx132), .A1 (input_a[2]), .S0 (nx185)) ;
    xnor2 ix191 (.Y (nx190), .A0 (input_b[1]), .A1 (input_a[1])) ;
    xnor2 ix145 (.Y (sum[0]), .A0 (nx140), .A1 (nx196)) ;
    mux21 ix141 (.Y (nx140), .A0 (nx188), .A1 (nx194), .S0 (nx190)) ;
    inv01 ix195 (.Y (nx194), .A (input_a[1])) ;
    xnor2 ix197 (.Y (nx196), .A0 (input_b[0]), .A1 (input_a[0])) ;
    inv01 ix79 (.Y (nx78), .A (nx101)) ;
endmodule

