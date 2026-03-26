module top (
    input clk,
    input reset
);

wire [31:0] pc;
wire [31:0] instruction;

pc pc_inst (
    .clk(clk),
    .reset(reset),
    .pc_out(pc)
);

instruction_memory imem (
    .addr(pc),
    .instruction(instruction)
);

endmodule
