`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/04 18:03:20
// Design Name: 
// Module Name: program_counter
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

/*
* pc 
* default add 4 bytes
* if branch,jump to next_pc
*/
module program_counter(
    input wire clk,
    input wire reset,
    input wire branch,
    input wire[15:0] next_pc,
    output reg[15:0] pc_output
    );

    wire [15:0] pc_incremented;
    assign pc_incremented = pc_output + 16'd4;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pc_output <= 16'b0; // set zero
        end else if (branch) begin //branch
            pc_output <= next_pc; 
        end else begin
            pc_output <= pc_incremented; // default
        end
    end

endmodule
