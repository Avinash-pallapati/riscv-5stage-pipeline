module instruction_memory (
    input [31:0] addr,
    output [31:0] instruction
);

reg [31:0] memory [0:255];

initial begin
    memory[0] = 32'h00000013; // NOP
    memory[1] = 32'h00100093; // addi x1, x0, 1
    memory[2] = 32'h00200113; // addi x2, x0, 2
end

assign instruction = memory[addr >> 2];

endmodule
