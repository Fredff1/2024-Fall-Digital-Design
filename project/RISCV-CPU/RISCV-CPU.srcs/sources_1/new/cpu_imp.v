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


    reg [15:0] next_pc;
    wire [31:0] reg_data_1, reg_data_2;
    reg [31:0] alu_input_1,alu_input_2;
    wire [1:0] alu_2_type;
    wire mem_read, mem_write, reg_read, reg_write, branch;
    wire [2:0] alu_op_type;
    wire is_zero;
    wire [2:0] instruction_type;
    wire [4:0] reg_1;
    wire [4:0] reg_2;
    wire [4:0] reg_3;
    wire [31:0] imm;
    reg [31:0] data_to_reg3;
    wire [31:0] data_from_mem;

    // ============================
    // Program Counter
    // ============================
    program_counter pc (
        .clk(clk),
        .reset(reset),
        .branch(branch),   // branch signal
        .next_pc(next_pc),
        .pc_output(pc_address)          // the address for next instruction
    );

    // ============================
    // Instruction Memory 
    // ============================
    instruction_memory instruction_memory (
        .address(pc_address),        // current address
        .flag(1'b1),               // always read in this project
        .instruction(instruction)         // target instruction
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
        .alu_op_type(alu_op_type),
        .instruction_type(instruction_type),
        .reg1(reg_1),
        .reg2(reg_2),
        .reg3(reg_3),
        .imm(imm)
    );

    // ============================
    // Register Group
    // ============================
    register_group reg_file (
        .clk(clk),
        .reg_id_1(reg_1),  // rs1
        .reg_id_2(reg_2),  // rs2
        .reg_d(reg_3),
        .read(reg_read), // r/w control
        .write(reg_write),
        .data(data_to_reg3),              // write data
        .reg_data_1(reg_data_1),        // data from reg 1
        .reg_data_2(reg_data_2)         // data from reg 2
    );

    // ============================
    // ALU Input Selection
    // ============================
    always @(*) begin
        case (instruction_type)
            3'b100:begin
                alu_input_1=pc_address;
            end
            default: begin
                alu_input_1=reg_data_1;
            end
        endcase
        
        case (alu_2_type)
            2'b00:begin
                alu_input_2=reg_data_2;
            end
            2'b01:begin
                alu_input_2=imm;
            end
        endcase
    end

    // ============================
    // Reg write selection
    // ============================

    always @(*) begin
        next_pc=0;
        case (instruction_type)
            3'b000: begin //R
            data_to_reg3=alu_result;
            end
            3'b001: begin //I for immediate
            data_to_reg3=alu_result;
            end
            3'b010: begin //I for lw
            data_to_reg3=data_from_mem;
            end
            3'b011: begin //S
            data_to_reg3=32'b0;
            end
            3'b100: begin //B Only beq for this pj
            data_to_reg3=32'b0;
            if(reg_data_1==reg_data_2)begin
                next_pc=alu_result;
            end
            end
            3'b101: begin //J
            data_to_reg3=32'b0;
            end
            3'b110: begin //U NOT REQUIRED FOR THIS PROJECT
            data_to_reg3=32'b0;
            end
            default: begin
            data_to_reg3=32'b0;
            end
        endcase
        
    end

    // ============================
    // ALU
    // ============================
    alu arithmetic_logic_unit (
        .num_1(alu_input_1),
        .num_2(alu_input_2),
        .alu_control(alu_op_type),
        .result(alu_result),
        .is_zero(is_zero)
    );

    // ============================
    // Data Memory
    // ============================
    data_memory data_mem (
        .clk(clk),
        .address(alu_result[15:0]),     // Alu result
        .write_data(reg_data_2),        // reg_2 data
        .read_flag(mem_read),          
        .write_flag(mem_write),        
        .data_read(data_from_mem)                  
    );
endmodule
