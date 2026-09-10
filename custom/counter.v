module counter (clk, rst, en, count);
    input clk, rst, en;
    output reg [3:0] count;
    initial count = 4'd0;
    always @(posedge clk)
        if (rst)
            count <= 4'd0;
        else if (en)
            count <= count + 4'd1;
endmodule