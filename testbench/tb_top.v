module tb_top;

reg clk, reset;

top uut (
    .clk(clk),
    .reset(reset)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset = 1;
    #10 reset = 0;
    #100 $finish;
end

endmodule
