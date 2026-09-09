module \$lut (A, Y);
    parameter WIDTH = 0;
    parameter LUT = 0;
    
    (* force_downto *)
    input [WIDTH-1:0] A;
    output Y;

    generate
        if (WIDTH == 1) begin
            localparam [31:0] INIT = 32'b0;
            LUT5 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y), .I0(A[0]), .I1(1'b0), .I2(1'b0), .I3(1'b0), .I4(1'b0));
        end else
        if (WIDTH == 2) begin
            localparam [31:0] INIT = 32'b0;
            LUT5 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y), .I0(A[0]), .I1(A[1]), .I2(1'b0), .I3(1'b0), .I4(1'b0));
        end else
        if (WIDTH == 3) begin
            localparam [31:0] INIT = 32'b0;
            LUT5 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y), .I0(A[0]), .I1(A[1]), .I2(A[2]), .I3(1'b0), .I4(1'b0));
        end else
        if (WIDTH == 4) begin
            localparam [31:0] INIT = 32'b0;
            LUT5 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y), .I0(A[0]), .I1(A[1]), .I2(A[2]), .I3(A[3]), .I4(1'b0));
        end else
        if (WIDTH == 5) begin
            localparam [31:0] INIT = 32'b0;
            LUT5 #(.INIT(LUT)) _TECHMAP_REPLACE_ (.O(Y), .I0(A[0]), .I1(A[1]), .I2(A[2]), .I3(A[3]), .I4(A[4]));
        end else begin
            wire _TECHMAP_FAIL_ = 1;
        end
    endgenerate
endmodule
