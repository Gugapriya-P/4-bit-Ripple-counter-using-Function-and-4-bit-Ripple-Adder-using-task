
module rcf (
    input clk,
    input rst,
    output reg [3:0] Q
);

    function [3:0] count;
        input [3:0] x;
        begin
            count = x + 1;
        end
    endfunction

    always @(posedge clk or posedge rst) begin
        if (rst)
            Q <= 4'b0000;
        else
            Q <= count(Q);
    end

endmodule
