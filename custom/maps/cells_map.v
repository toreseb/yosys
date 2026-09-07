module \$lut (S, Y);
    parameter WIDTH = 0;
    parameter LUT = 0;
    

    input [4:0] S;
    output Y;

    generate
        if (WIDTH == 1) begin
            LUT5 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y), .I0(S[0]), .I1(1'b0), .I2(1'b0), .I3(1'b0), .I4(1'b0));
        end
        if (WIDTH == 2) begin
            LUT5 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y), .I0(S[0]), .I1(S[1]), .I2(1'b0), .I3(1'b0), .I4(1'b0));
        end
        if (WIDTH == 3) begin
            LUT5 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y), .I0(S[0]), .I1(S[1]), .I2(S[2]), .I3(1'b0), .I4(1'b0));
        end
        if (WIDTH == 4) begin
            LUT5 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y), .I0(S[0]), .I1(S[1]), .I2(S[2]), .I3(S[3]), .I4(1'b0));
        end
        if (WIDTH == 5) begin
            LUT5 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y), .I0(S[0]), .I1(S[1]), .I2(S[2]), .I3(S[3]), .I4(S[4]));
        end else begin
            wire _TECHMAP_FAIL_ = 1;
        end
    endgenerate
endmodule

module \$_DFF_P (
    input D,C,
    output Q
);
    LUTFF _TECHMAP_REPLACE_ (.D(D), .O(Q), .CLK(C));
endmodule
