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


module register_group(
    input wire clk,
    input wire[4:0] reg_id_1,
    input wire[4:0] reg_id_2,
    input wire[1:0] operation_type,
    input wire[31:0] data,
    output wire[31:0] reg_data_1,
    output wire[31:0] reg_data_2
    );

    reg [31:0] registers [0:31];

    initial begin
        registers[0] = 32'b0;
    end

    assign reg_data_1 = registers[reg_id_1]; 
    assign reg_data_2 = registers[reg_id_2]; 

    always @(posedge clk) begin
        case(operation_type)
            2'b01: begin
                if(reg_id_1!=5'b00000)begin
                    registers[reg_id_1]=data;
                end
            end
            2'b10: begin
                if(reg_id_1!=5'b00000)begin
                    registers[reg_id_1]=data;
                end
            end
            default: begin
                
            end
        endcase

    end

endmodule
