`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/04 18:03:20
// Design Name: 
// Module Name: controller
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


module controller(
    input wire[31:0] instruction,
    output reg[1:0] alu_2_type,
    output reg mem_read,
    output reg mem_write,
    output reg reg_read,
    output reg reg_write,
    output reg branch,
    output reg[2:0] alu_op_type 
    );

    wire[6:0] op_code=instruction[6:0];
    wire [2:0] funct3 = instruction[14:12]; 
    wire [6:0] funct7 = instruction[31:25]; 

    always @(*) begin
        alu_2_type = 2'b00;
        mem_read = 0;
        mem_write = 0;
        reg_read = 0;
        reg_write = 0;
        branch = 0;
        alu_op_type = 3'b000;
        case(op_code)
        7'b0110011:begin
            alu_2_type=2'b00;//reg
            mem_read = 0;
            mem_write = 0;
            reg_read = 1;
            reg_write = 1;
            branch = 0;
            case(funct3)
            3'b000:begin
                case(funct7)
                7'b0000000:begin //add
                    alu_op_type= 3'b000;
                end
                7'b0100000:begin //sub
                    alu_op_type= 3'b001;
                end
                endcase
            end
            3'b110:begin //or
                alu_op_type=3'b011;
            end
            3'b010:begin //slt
                alu_op_type=3'b101;
            end
            endcase
        end
        7'b0010011:begin
            alu_2_type=2'b01;//ins
            mem_read = 0;
            mem_write = 0;
            reg_read = 1;
            reg_write = 1;
            branch = 0;
            case(funct3)
            3'b000:begin //addi
                alu_op_type= 3'b000;
            end
            3'b110:begin //ori
                alu_op_type=3'b011;
            end
            3'b010:begin //slti
                alu_op_type=3'b101;
            end
            endcase
            
        end
        7'b0100011:begin //sw
            alu_2_type = 2'b01;
            mem_read = 0;
            mem_write = 1;
            reg_read = 1;
            reg_write = 0;
            branch = 0;
        end
        7'b0000011:begin //lw
            alu_2_type = 2'b01; //imm
            mem_read = 1;
            mem_write = 0;
            reg_read = 1;
            reg_write = 1;
            branch = 0;
        end
        7'b1100011:begin //beq
            alu_2_type = 2'b00; //reg
            mem_read = 0;
            mem_write = 0;
            reg_read = 1;
            reg_write = 0;
            branch = 1;
        end
        default:begin
           
        end
        endcase
    end

endmodule
