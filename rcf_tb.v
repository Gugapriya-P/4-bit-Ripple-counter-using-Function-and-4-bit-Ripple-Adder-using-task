module rcf_tb;
    reg clk_t, rst_t;
    wire [3:0] q_t;

    rcf dut(.clk(clk_t), .rst(rst_t), .Q(q_t));

    initial begin
        clk_t = 0;
        rst_t = 1;
        #5 rst_t = 0;
    end

    always #10 clk_t = ~clk_t;

endmodule
