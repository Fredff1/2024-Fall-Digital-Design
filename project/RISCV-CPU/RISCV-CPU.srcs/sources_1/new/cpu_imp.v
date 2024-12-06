`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/04 18:03:20
// Design Name: 
// Module Name: cpu_imp
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


module cpu_imp(
    input wire clk,
    input wire reset,
    output wire [15:0] pc_address,      
    output wire [31:0] instruction,     
    output wire [31:0] alu_result       
    );

     // 内部信号定义
    wire [15:0] next_pc;
    wire [31:0] reg_data_1, reg_data_2;
    wire [31:0] imm_data;
    wire [31:0] alu_input_2;
    wire [1:0] alu_2_type;
    wire mem_read, mem_write, reg_read, reg_write, branch;
    wire [2:0] alu_op_type;
    wire is_zero;

    // ============================
    // Program Counter
    // ============================
    program_counter pc (
        .clk(clk),
        .reset(reset),
        .pc_update(branch),   // 分支控制
        .next_pc(next_pc),
        .pc_output(pc_address)          // 当前指令地址
    );

    // ============================
    // Instruction Memory (数据存储器作为指令存储器)
    // ============================
    instruction_memory instruction_memory (
        .address(pc_address/4),           // PC 提供的指令地址          // 指令存储器不需要写数据
        .flag(1'b1),               // 始终启用读取              // 禁用写入
        .instruction(instruction)         // 读取的指令
    );

    // ============================
    // Controller
    // ============================
    controller control_unit (
        .instruction(instruction),
        .alu_2_type(alu_2_type),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .reg_read(reg_read),
        .reg_write(reg_write),
        .branch(branch),
        .alu_op_type(alu_op_type)
    );

    // ============================
    // Register Group
    // ============================
    register_group reg_file (
        .clk(clk),
        .reg_id_1(instruction[19:15]),  // rs1
        .reg_id_2(instruction[24:20]),  // rs2
        .operation_type({reg_read, reg_write}), // 读/写控制
        .data(alu_result),              // 写入数据
        .reg_data_1(reg_data_1),        // 输出寄存器 1 数据
        .reg_data_2(reg_data_2)         // 输出寄存器 2 数据
    );

    // ============================
    // ALU Input Selection
    // ============================
    assign imm_data = {{20{instruction[31]}}, instruction[31:20]}; // 符号扩展立即数
    assign alu_input_2 = (alu_2_type == 2'b00) ? reg_data_2 :      // 第二操作数为寄存器
                         (alu_2_type == 2'b01) ? imm_data :        // 第二操作数为立即数
                         32'b0;                                   // 默认值

    // ============================
    // ALU
    // ============================
    alu arithmetic_logic_unit (
        .num_1(reg_data_1),
        .num_2(alu_input_2),
        .alu_control(alu_op_type),
        .result(alu_result),
        .is_zero(is_zero)
    );

    // ============================
    // Data Memory
    // ============================
    data_memory data_mem (
        .address(alu_result[15:0]),     // 地址由 ALU 提供
        .write_data(reg_data_2),        // 写入数据来自寄存器 2
        .read_flag(mem_read),           // 读取使能
        .write_flag(mem_write),         // 写入使能
        .data_read()                    // 本示例中未使用数据存储器读取输出
    );
endmodule
