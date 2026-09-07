module LUT5(output O, input I0, I1, I2, I3, I4);
    parameter [32:0] INIT = 0;
    wire [15: 0] s4 = I4 ? INIT[31:16] : INIT[15: 0];
    wire [ 7: 0] s3 = I3 ?   s4[15: 8] :   s4[ 7: 0];
    wire [ 3: 0] s2 = I2 ?   s3[ 7: 4] :   s3[ 3: 0];
    wire [ 1: 0] s1 = I1 ?   s2[ 3: 2] :   s2[ 1: 0];
    assign O = I0 ? s1[1] : s1[0];
endmodule

module LUTFF(input CLK, D, output reg O);
  initial O = 1'b0;
  always @ (posedge CLK) begin
    O <= D;
  end
endmodule

module MUX2(input I0, I1, S0, output O);
  assign O = S0 ? I1 : I0;
endmodule