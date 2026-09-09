/*module LUT5(output O, input I0, I1, I2, I3, I4);
    parameter [32:0] INIT = 0;
    wire [15: 0] s4 = I4 ? INIT[31:16] : INIT[15: 0];
    wire [ 7: 0] s3 = I3 ?   s4[15: 8] :   s4[ 7: 0];
    wire [ 3: 0] s2 = I2 ?   s3[ 7: 4] :   s3[ 3: 0];
    wire [ 1: 0] s1 = I1 ?   s2[ 3: 2] :   s2[ 1: 0];
    assign O = I0 ? s1[1] : s1[0];
endmodule*/

(* blackbox *)
module LUT5(output O, input [31:0] D, input [4:0] S);
endmodule

module SDFF(input CLK, nres, nres_prog, D, output reg O);
  initial O = 1'b0;
  always @ (posedge CLK or negedge nres) begin
    if (nres == 0)
      O <= nres_prog;
    else
      O <= D;
    
  end
endmodule

module MUX2(input I0, I1, S, output O);
  assign O = S ? I1 : I0;
endmodule

(* blackbox *)
module LOGIC_MODULE(input [8:0] D, input [3:0] E, input [4:0] data_in, input reg_nres, reg_clk, reg_in, output [1:0] data_out);
endmodule
