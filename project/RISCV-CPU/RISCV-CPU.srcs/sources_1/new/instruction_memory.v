`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/04 18:03:20
// Design Name: 
// Module Name: instruction_memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module instruction_memory(
    input wire[15:0] address,
    input wire flag,
    output reg[31:0] instruction
    );

    reg [7:0] memory [0:127];

    integer i;
    initial begin
        
        for (i = 0; i < 128; i = i + 1) begin
            memory[i] = 8'b0;
        end
    end
;
    always @(*) begin
        if(flag)begin
            instruction = {memory[address+3], memory[address + 2], memory[address + 1], memory[address]};
        end
        else begin
            instruction=32'h0;
        end
    end

endmodule
