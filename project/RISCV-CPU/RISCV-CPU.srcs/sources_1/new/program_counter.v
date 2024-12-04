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


module program_counter(
    input wire clk,
    input wire reset,
    input wire pc_update,
    input wire[15:0] next_pc,
    output wire[15:0] pc_output
    );

    wire [15:0] pc_incremented;
    assign pc_incremented = pc_output + 16'd4;

    always @(posedge clk or posedge reset) begin
        if(reset)begin
            pc_output<=16'b0;
        end else if(next_pc) begin
            pc_output<=next_pc;
        end else begin
            pc_output<=pc_incremented;
        end
    end

endmodule
