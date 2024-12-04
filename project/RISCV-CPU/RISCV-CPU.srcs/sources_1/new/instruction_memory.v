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
    output wire[31:0] instruction
    );

    reg [31:0] memory [0:127];
;
    always @(*) begin
        if(flag)begin
            instruction=memory[address];
        end
    end

endmodule
