module SDFF(input CLK, nres, nres_prog, D, output O);


    generate
        LOGIC_MODULE _TECHMAP_REPLACE_ (

            .D(D),
            .E(E),
            .reg_nres(nres),
            .reg_clk(CLK),
            .reg_in(D),
            .data_in(5'b0),
            .data_out(O) 

      );
    endgenerate
endmodule


