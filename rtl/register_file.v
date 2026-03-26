module register_file (
    input clk,
    input we, // write enable
    input [4:0] rs1, rs2, rd,
    input [31:0] wd,   // write data
    output [31:0] rd1, rd2
);

reg [31:0] registers [0:31];

// Read
assign rd1 = registers[rs1];
assign rd2 = registers[rs2];

// Write
always @(posedge clk) begin
    if (we && rd != 0)
        registers[rd] <= wd;
end

endmodule
