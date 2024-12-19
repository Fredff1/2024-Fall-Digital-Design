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

/*
* This module generate all control signals
*/
module controller(
    input wire[31:0] instruction,
    output reg[1:0] alu_2_type,
    output reg mem_read,
    output reg mem_write,
    output reg reg_read,
    output reg reg_write,
    output reg branch,
    output reg[2:0] alu_op_type,
    output reg[2:0] instruction_type,
    output reg[4:0] reg1,          // reg_1
    output reg[4:0] reg2,          // reg_2
    output reg[4:0] reg3,          // rd
    output reg[31:0] imm           // imm from the instruction,or 0 if not included
);

    wire[6:0] op_code = instruction[6:0];
    wire[2:0] funct3 = instruction[14:12];
    wire[6:0] funct7 = instruction[31:25];
    wire[4:0] rd = instruction[11:7];
    wire[4:0] rs1 = instruction[19:15];
    wire[4:0] rs2 = instruction[24:20];


    wire[11:0] imm_i = instruction[31:20]; // I type
    wire[11:0] imm_s = {instruction[31:25], instruction[11:7]}; // S type
    wire[12:0] imm_b = {instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0}; // B type
    wire[19:0] imm_u = instruction[31:12]; // U type
    wire[20:0] imm_j = {instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0}; // J type


    always @(*) begin
        // initialize signals
        alu_2_type = 2'b00;
        mem_read = 0;
        mem_write = 0;
        reg_read = 0;
        reg_write = 0;
        branch = 0;
        alu_op_type = 3'b000;
        reg1 = 5'b00000;
        reg2 = 5'b00000;
        reg3 = 5'b00000;
        imm = 32'b0;

        case(op_code)
            7'b0110011: begin // R type
                alu_2_type = 2'b00; // from register
                reg_read = 1;
                reg_write = 1;
                instruction_type = 3'b000; // R type
                reg1 = rs1;
                reg2 = rs2;
                reg3 = rd; 
                case(funct3)
                    3'b000: alu_op_type = (funct7 == 7'b0100000) ? 3'b001 : 3'b000; // sub or add
                    3'b110: alu_op_type = 3'b011; // or
                    3'b010: alu_op_type = 3'b101; // slt
                endcase
            end
            7'b0010011: begin // I type
                alu_2_type = 2'b01; // from imm
                reg_read = 1;
                reg_write = 1;
                instruction_type = 3'b001; // I type
                reg1 = rs1;
                reg3 = rd; 
                imm = {{20{imm_i[11]}}, imm_i}; 
                case(funct3)
                    3'b000: alu_op_type = 3'b000; // addi
                    3'b110: alu_op_type = 3'b011; // ori
                    3'b010: alu_op_type = 3'b101; // slti
                endcase
            end
            7'b0000011: begin // lw (I type)
                alu_2_type = 2'b01; // imm
                mem_read = 1;
                reg_read = 1;
                reg_write = 1;
                instruction_type = 3'b010; // I type
                reg1 = rs1; 
                reg2 = rs2;
                reg3 = rd; 
                imm = {{20{imm_i[11]}}, imm_i}; 
            end
            7'b0100011: begin // sw S type
                alu_2_type = 2'b01; 
                mem_write = 1;
                reg_read = 1;
                instruction_type = 3'b011; // S type
                reg1 = rs1; 
                reg2 = rs2; 
                imm = {{20{imm_s[11]}}, imm_s}; 
            end
            
            7'b1100011: begin // B type (beq)
                alu_2_type = 2'b01; 
                alu_op_type = 3'b000;
                reg_read = 1;
                branch = 1;
                instruction_type = 3'b100;
                reg1 = rs1;
                reg2 = rs2;
                imm = {{19{imm_b[12]}}, imm_b}; 
            end
            7'b1101111: begin // J type(not used)
                reg_write = 1;
                instruction_type = 3'b101; 
                reg3 = rd; 
                imm = {{11{imm_j[20]}}, imm_j}; 
            end
            7'b0010111: begin // U type(not used in this project)
                reg_write = 1;
                instruction_type = 3'b110; 
                reg3 = rd; 
                imm = {imm_u, 12'b0}; 
            end
            default: begin
                //default values have been set
            end
        endcase
    end
endmodule
