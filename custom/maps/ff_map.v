module \$_SDFF_PP0_ (
    input D,C,R,
    output Q
);
    SDFF _TECHMAP_REPLACE_ (.D(D), .nres_prog(R), .nres(nres), .O(Q), .CLK(C));
endmodule

