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
    input wire clk,
    input wire[15:0] address,
    input wire[31:0] write_data,
    input wire read_flag,
    input wire write_flag,
    output reg[31:0] data_read
      );

    reg [7:0] memory [0:127];

    integer i;
    initial begin

        for (i = 0; i < 128; i = i + 1) begin
            memory[i] = 8'b0;
        end
    end

    always @(*) begin
        if (read_flag) begin
            data_read = {memory[address + 3], memory[address + 2], memory[address + 1], memory[address]};
        end else begin
            data_read = 32'b0;          
        end
    end

    always @(posedge clk) begin
        if(write_flag)begin
            memory[address ] <= write_data[7:0];  
            memory[address + 1] <= write_data[15:8];  
            memory[address + 2] <= write_data[23:16]; 
            memory[address + 3] <= write_data[31:24]; 
        end
    end

endmodule
