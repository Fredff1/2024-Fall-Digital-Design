`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/04 18:03:20
// Design Name: 
// Module Name: alu
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


module alu(
    input wire[31:0] num_1,
    input wire[31:0] num_2,
    input wire[2:0] alu_control,
    output reg[31:0] result,
    output wire is_zero
    );

    assign is_zero=(result==32'b0);

    always @(*) begin
        case(alu_control)
            3'b000:begin //add
                result=num_1+num_2;
            end
            3'b001:begin //sub
                result=num_1-num_2;
            end
            3'b010:begin //and
                result=num_1&num_2;
            end
            3'b011:begin //or
                result=num_1 | num_2;
            end
            3'b100:begin //xor
                result=num_1 ^num_2;
            end
            3'b101:begin //slt
               result = (num_1 < num_2) ? 32'b1 : 32'b0; 
            end
            default:begin
                result=32'b0;
            end
        endcase
    end

endmodule
