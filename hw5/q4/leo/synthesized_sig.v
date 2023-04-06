//
// Verilog description for cell invert_circuit, 
// Thu Mar 23 15:39:45 2023
//
// LeonardoSpectrum Level 3, 2011a.4 
//


module invert_circuit ( A_IN, A_OUT ) ;

    input A_IN ;
    output A_OUT ;




    inv01 ix59 (.Y (A_OUT), .A (A_IN)) ;
endmodule

