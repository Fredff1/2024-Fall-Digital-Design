`timescale 1ns / 1ps

module tb_controller;

    reg [31:0] instruction;      // 输入指令
    wire [1:0] alu_2_type;       // ALU 第二操作数类型
    wire mem_read;               // 内存读信号
    wire mem_write;              // 内存写信号
    wire reg_read;               // 寄存器读信号
    wire reg_write;              // 寄存器写信号
    wire branch;                 // 分支信号
    wire [2:0] alu_op_type;      // ALU 操作类型

    // 实例化 controller 模块
    controller uut (
        .instruction(instruction),
        .alu_2_type(alu_2_type),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .reg_read(reg_read),
        .reg_write(reg_write),
        .branch(branch),
        .alu_op_type(alu_op_type)
    );

    // 测试流程
    initial begin
        // Step 1: 测试 R-type 指令
        instruction = 32'b0000000_00010_00001_000_00011_0110011; // add x3, x1, x2
        #10;
        $display("R-type add: alu_2_type=%b, alu_op_type=%b, reg_read=%b, reg_write=%b, mem_read=%b, mem_write=%b, branch=%b",
            alu_2_type, alu_op_type, reg_read, reg_write, mem_read, mem_write, branch);
        $display("Expected: alu_2_type=00, alu_op_type=000, reg_read=1, reg_write=1, mem_read=0, mem_write=0, branch=0");
        $display("--------------------------------------------------------");

        instruction = 32'b0100000_00010_00001_000_00011_0110011; // sub x3, x1, x2
        #10;
        $display("R-type sub: alu_2_type=%b, alu_op_type=%b, reg_read=%b, reg_write=%b, mem_read=%b, mem_write=%b, branch=%b",
            alu_2_type, alu_op_type, reg_read, reg_write, mem_read, mem_write, branch);
        $display("Expected: alu_2_type=00, alu_op_type=001, reg_read=1, reg_write=1, mem_read=0, mem_write=0, branch=0");
        $display("--------------------------------------------------------");

        instruction = 32'b0000000_00010_00001_110_00011_0110011; // or x3, x1, x2
        #10;
        $display("R-type or: alu_2_type=%b, alu_op_type=%b, reg_read=%b, reg_write=%b, mem_read=%b, mem_write=%b, branch=%b",
            alu_2_type, alu_op_type, reg_read, reg_write, mem_read, mem_write, branch);
        $display("Expected: alu_2_type=00, alu_op_type=011, reg_read=1, reg_write=1, mem_read=0, mem_write=0, branch=0");
        $display("--------------------------------------------------------");

        instruction = 32'b0000000_00010_00001_010_00011_0110011; // slt x3, x1, x2
        #10;
        $display("R-type slt: alu_2_type=%b, alu_op_type=%b, reg_read=%b, reg_write=%b, mem_read=%b, mem_write=%b, branch=%b",
            alu_2_type, alu_op_type, reg_read, reg_write, mem_read, mem_write, branch);
        $display("Expected: alu_2_type=00, alu_op_type=101, reg_read=1, reg_write=1, mem_read=0, mem_write=0, branch=0");
        $display("--------------------------------------------------------");

        // Step 2: 测试 I-type 指令
        instruction = 32'b000000000001_00001_000_00010_0010011; // addi x2, x1, 1
        #10;
        $display("I-type addi: alu_2_type=%b, alu_op_type=%b, reg_read=%b, reg_write=%b, mem_read=%b, mem_write=%b, branch=%b",
            alu_2_type, alu_op_type, reg_read, reg_write, mem_read, mem_write, branch);
        $display("Expected: alu_2_type=01, alu_op_type=000, reg_read=1, reg_write=1, mem_read=0, mem_write=0, branch=0");
        $display("--------------------------------------------------------");

        instruction = 32'b000000000001_00001_110_00010_0010011; // ori x2, x1, 1
        #10;
        $display("I-type ori: alu_2_type=%b, alu_op_type=%b, reg_read=%b, reg_write=%b, mem_read=%b, mem_write=%b, branch=%b",
            alu_2_type, alu_op_type, reg_read, reg_write, mem_read, mem_write, branch);
        $display("Expected: alu_2_type=01, alu_op_type=011, reg_read=1, reg_write=1, mem_read=0, mem_write=0, branch=0");
        $display("--------------------------------------------------------");

        instruction = 32'b000000000001_00001_010_00010_0010011; // slti x2, x1, 1
        #10;
        $display("I-type slti: alu_2_type=%b, alu_op_type=%b, reg_read=%b, reg_write=%b, mem_read=%b, mem_write=%b, branch=%b",
            alu_2_type, alu_op_type, reg_read, reg_write, mem_read, mem_write, branch);
        $display("Expected: alu_2_type=01, alu_op_type=101, reg_read=1, reg_write=1, mem_read=0, mem_write=0, branch=0");
        $display("--------------------------------------------------------");

        // Step 3: 测试 S-type 指令
        instruction = 32'b0000000_00010_00001_010_00000_0100011; // sw x2, 0(x1)
        #10;
        $display("S-type sw: alu_2_type=%b, alu_op_type=%b, reg_read=%b, reg_write=%b, mem_read=%b, mem_write=%b, branch=%b",
            alu_2_type, alu_op_type, reg_read, reg_write, mem_read, mem_write, branch);
        $display("Expected: alu_2_type=01, alu_op_type=000, reg_read=1, reg_write=0, mem_read=0, mem_write=1, branch=0");
        $display("--------------------------------------------------------");

        // Step 4: 测试 B-type 指令
        instruction = 32'b0000000_00010_00001_000_00000_1100011; // beq x2, x1, 0
        #10;
        $display("B-type beq: alu_2_type=%b, alu_op_type=%b, reg_read=%b, reg_write=%b, mem_read=%b, mem_write=%b, branch=%b",
            alu_2_type, alu_op_type, reg_read, reg_write, mem_read, mem_write, branch);
        $display("Expected: alu_2_type=00, alu_op_type=000, reg_read=1, reg_write=0, mem_read=0, mem_write=0, branch=1");
        $display("--------------------------------------------------------");

        // 测试结束
        $finish;
    end

endmodule