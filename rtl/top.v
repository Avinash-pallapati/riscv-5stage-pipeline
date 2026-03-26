module top (
    input clk,
    input reset
);

// ================= IF STAGE =================

// PC
wire [31:0] pc;

// Instruction
wire [31:0] instruction;

// PC module
pc pc_inst (
    .clk(clk),
    .reset(reset),
    .pc_out(pc)
);

// Instruction Memory
instruction_memory imem (
    .addr(pc),
    .instruction(instruction)
);


// ================= ID STAGE =================

// Register file connections
wire [4:0] rs1, rs2, rd;
wire [31:0] rd1, rd2;

// Extract fields from instruction
assign rs1 = instruction[19:15];
assign rs2 = instruction[24:20];
assign rd  = instruction[11:7];

// Register File
register_file rf (
    .clk(clk),
    .we(0),          // no write yet
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .wd(32'b0),
    .rd1(rd1),
    .rd2(rd2)
);

endmodule
