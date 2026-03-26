module tb_pc;

reg clk, reset;
wire [31:0] pc_out;

pc uut (.clk(clk), .reset(reset), .pc_out(pc_out));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    reset = 1;
    #10 reset = 0;
    #50 $finish;
end

endmodule
