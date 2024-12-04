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
    output wire[1:0] alu_2_type,
    output wire mem_read,
    output wire mem_write,
    output wire reg_read,
    output wire reg_write,
    output wire branch,
    output wire[2:0] alu_op_type 
    );

    wire[6:0] op_code=instruction[6:0];
    wire [2:0] funct3 = instruction[14:12]; 
    wire [6:0] funct7 = instruction[31:25]; 

    always @(*) begin
        case(op_code)
        7'0110011:begin
            alu_2_type=2'b00;
            mem_read = 0;
            mem_write = 0;
            reg_read = 1;
            reg_write = 1;
            branch = 0;
            case(funct3)
            3'b000:begin
                case(funct7)
                7'b0000000:begin //add
                    
                end
                7'b0100000:begin //sub
                    
                end
            end
            3'b110:begin //or
                
            end
            3'b010:begin //slt
                
            end
        end
        7'b0010011:begin
            case(funct3)
            3'b000:begin //addi
                
            end
            3'b110:begin //ori
                
            end
            3'b010:begin //slti
                
            end
            
        end
        7'0100011:begin //sw
            
        end
        7'0000011:begin //lw
            
        end
        7'1100011:begin //beq
            
        end
        default:begin
            
        end
    end

endmodule
