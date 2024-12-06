`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/04 18:03:20
// Design Name: 
// Module Name: data_memory
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


module data_memory(
    input wire[15:0] address,
    input wire[31:0] write_data,
    input wire read_flag,
    input wire write_flag,
    output reg[31:0] data_read
      );

    reg [31:0] memory [0:127];

    always @(*) begin
        if (read_flag) begin
            data_read = memory[address]; 
        end else begin
            data_read = 32'b0;          
        end
    end

    always @(write_flag) begin
        if(write_flag)begin
            memory[address]=write_data;
        end
    end

endmodule
