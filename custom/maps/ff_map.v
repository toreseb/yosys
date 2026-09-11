module \$_ALDFF_PN_ (
    input D,C,L,AD,
    output Q
);
    ALDFF _TECHMAP_REPLACE_ (.D(D), .nres_prog(L), .nres(AD), .O(Q), .CLK(C));
endmodule

