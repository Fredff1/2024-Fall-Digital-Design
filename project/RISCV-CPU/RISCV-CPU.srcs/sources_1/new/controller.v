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
    output reg[2:0] alu_op_type,
    output reg[2:0] instruction_type,
    output reg[4:0] reg1,          // 源寄存器 1
    output reg[4:0] reg2,          // 源寄存器 2 或基址寄存器
    output reg[4:0] reg3,          // 目标寄存器
    output reg[31:0] imm           // 解码出的立即数
);

    wire[6:0] op_code = instruction[6:0];
    wire[2:0] funct3 = instruction[14:12];
    wire[6:0] funct7 = instruction[31:25];
    wire[4:0] rd = instruction[11:7];
    wire[4:0] rs1 = instruction[19:15];
    wire[4:0] rs2 = instruction[24:20];

    // 提取立即数的各类字段
    wire[11:0] imm_i = instruction[31:20]; // I 型指令
    wire[11:0] imm_s = {instruction[31:25], instruction[11:7]}; // S 型指令
    wire[12:0] imm_b = {instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0}; // B 型指令
    wire[19:0] imm_u = instruction[31:12]; // U 型指令
    wire[20:0] imm_j = {instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0}; // J 型指令

    always @(*) begin
        // 初始化默认值
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
            7'b0110011: begin // R 型指令
                alu_2_type = 2'b00; // 操作数来自寄存器
                reg_read = 1;
                reg_write = 1;
                instruction_type = 3'b000; // R 型
                reg1 = rs1;
                reg2 = rs2;
                reg3 = rd; // 目标寄存器
                case(funct3)
                    3'b000: alu_op_type = (funct7 == 7'b0100000) ? 3'b001 : 3'b000; // sub 或 add
                    3'b110: alu_op_type = 3'b011; // or
                    3'b010: alu_op_type = 3'b101; // slt
                endcase
            end
            7'b0010011: begin // I 型指令
                alu_2_type = 2'b01; // 操作数来自立即数
                reg_read = 1;
                reg_write = 1;
                instruction_type = 3'b001; // I 型
                reg1 = rs1;
                reg3 = rd; // 目标寄存器
                imm = {{20{imm_i[11]}}, imm_i}; // 符号扩展
                case(funct3)
                    3'b000: alu_op_type = 3'b000; // addi
                    3'b110: alu_op_type = 3'b011; // ori
                    3'b010: alu_op_type = 3'b101; // slti
                endcase
            end
            7'b0000011: begin // lw (I 型指令)
                alu_2_type = 2'b01; // 操作数来自立即数
                mem_read = 1;
                reg_read = 1;
                reg_write = 1;
                instruction_type = 3'b010; // I 型
                reg1 = rs1; // 基址寄存器
                reg2 = rs2;
                reg3 = rd; // 目标寄存器
                imm = {{20{imm_i[11]}}, imm_i}; // 符号扩展
            end
            7'b0100011: begin // S 型指令 (sw)
                alu_2_type = 2'b01; // 操作数来自立即数
                mem_write = 1;
                reg_read = 1;
                instruction_type = 3'b011; // S 型
                reg1 = rs1; // 基址寄存器
                reg2 = rs2; // 要存储的寄存器
                imm = {{20{imm_s[11]}}, imm_s}; // 符号扩展
            end
            
            7'b1100011: begin // B 型指令
                alu_2_type = 2'b01; // 操作数来自立即数
                alu_op_type = 3'b000;
                reg_read = 1;
                branch = 1;
                instruction_type = 3'b100; // B 型
                reg1 = rs1;
                reg2 = rs2;
                imm = {{19{imm_b[12]}}, imm_b}; // 符号扩展
            end
            7'b1101111: begin // J 型指令 (jal)
                reg_write = 1;
                instruction_type = 3'b101; // J 型
                reg3 = rd; // 目标寄存器
                imm = {{11{imm_j[20]}}, imm_j}; // 符号扩展
            end
            7'b0010111: begin // U 型指令 (auipc)
                reg_write = 1;
                instruction_type = 3'b110; // U 型
                reg3 = rd; // 目标寄存器
                imm = {imm_u, 12'b0}; // 左移 12 位
            end
            default: begin
                // 默认值保持不变
            end
        endcase
    end
endmodule
