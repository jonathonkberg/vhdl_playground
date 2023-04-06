//
// Verilog description for cell bit_placer, 
// Thu Mar 23 15:34:40 2023
//
// LeonardoSpectrum Level 3, 2011a.4 
//


module bit_placer ( sig_in, sig_out ) ;

    input [1:0]sig_in ;
    output [3:0]sig_out ;

    wire nx85;



    inv01 ix15 (.Y (sig_out[3]), .A (nx85)) ;
    nand02 ix86 (.Y (nx85), .A0 (sig_in[1]), .A1 (sig_in[0])) ;
    nor02 ix5 (.Y (sig_out[0]), .A0 (sig_in[1]), .A1 (sig_in[0])) ;
    nor02ii ix13 (.Y (sig_out[2]), .A0 (sig_in[0]), .A1 (sig_in[1])) ;
    nor02ii ix9 (.Y (sig_out[1]), .A0 (sig_in[1]), .A1 (sig_in[0])) ;
endmodule

