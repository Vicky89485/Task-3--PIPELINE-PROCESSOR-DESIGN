// ===========================================
// Task 3: 4-Stage Pipelined Processor Design and Testbench
// ===========================================

module PipelineProcessor (
    input clk,
    input reset,
    input [7:0] instr,
    input [7:0] data_in,
    output reg [7:0] result
);

reg [7:0] IF_ID_instr;
reg [7:0] ID_EX_instr;
reg [7:0] EX_WB_result;

reg [7:0] regA;
reg [7:0] regB;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        IF_ID_instr <= 0;
        ID_EX_instr <= 0;
        EX_WB_result <= 0;
        result <= 0;
        regA <= 8'd10;
        regB <= 8'd5;
    end else begin
        // Fetch
        IF_ID_instr <= instr;

        // Decode
        ID_EX_instr <= IF_ID_instr;

        // Execute
        case(ID_EX_instr[7:6])
            2'b00: EX_WB_result <= regA + regB; // ADD
            2'b01: EX_WB_result <= regA - regB; // SUB
            2'b10: EX_WB_result <= data_in;     // LOAD
            default: EX_WB_result <= 0;
        endcase

        // Write Back
        result <= EX_WB_result;
    end
end

endmodule


module PipelineProcessor_tb;

reg clk;
reg reset;
reg [7:0] instr;
reg [7:0] data_in;
wire [7:0] result;

PipelineProcessor uut (
    .clk(clk),
    .reset(reset),
    .instr(instr),
    .data_in(data_in),
    .result(result)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, PipelineProcessor_tb);

    clk = 0;
    reset = 1;
    instr = 0;
    data_in = 8'd20;

    #10 reset = 0;

    // ADD
    #10 instr = 8'b00000000;
    // SUB
    #20 instr = 8'b01000000;
    // LOAD
    #20 instr = 8'b10000000;

    #40 $finish;
end

always #5 clk = ~clk;

endmodule
