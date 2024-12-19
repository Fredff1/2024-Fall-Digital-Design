`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/04 18:03:20
// Design Name: 
// Module Name: register_group
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
* 32 registers ,x0 is always 0
*/
module register_group(
    input wire clk,
    input wire[4:0] reg_id_1,
    input wire[4:0] reg_id_2,
    input wire[4:0] reg_d,
    input wire read,
    input wire write,
    input wire[31:0] data,
    output reg[31:0] reg_data_1,
    output reg[31:0] reg_data_2
    );

    reg [31:0] registers [0:31];

    integer i;
    initial begin
        for (i = 0; i < 32; i = i + 1) begin
            registers[i] = 32'b0;
        end
    end



    always @(*) begin
        if(write) begin
            if(reg_d!=5'b00000)begin
                registers[reg_d]=data;
            end
        end
        reg_data_1 = registers[reg_id_1]; 
        reg_data_2 = registers[reg_id_2]; 
    end

endmodule
