`timescale 1ns / 1ps

module tb_cpu_imp;

    reg clk;                       // 时钟信号
    reg reset;                     // 复位信号
    wire [15:0] pc_address;        // 程序计数器地址
    wire [31:0] instruction;       // 当前指令
    wire [31:0] alu_result;        // ALU 运算结果

    // 实例化 cpu_imp 模块
    cpu_imp uut (
        .clk(clk),
        .reset(reset),
        .pc_address(pc_address),
        .instruction(instruction),
        .alu_result(alu_result)
    );

    // 时钟生成
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 时钟周期 10 单位时间
    end

    // 初始化指令存储器
    initial begin
        // 将指令加载到指令存储器
        uut.instruction_memory.memory[0] = 32'b0000000_00010_00001_000_00011_0110011; // add x3, x1, x2
        uut.instruction_memory.memory[1] = 32'b000000000001_00001_000_00010_0010011;  // addi x2, x1, 1
        uut.instruction_memory.memory[2] = 32'b0000000_00010_00001_110_00011_0110011; // or x3, x1, x2
        uut.instruction_memory.memory[3] = 32'b0000000_00010_00001_010_00011_0110011; // slt x3, x1, x2
        uut.instruction_memory.memory[4] = 32'b0000000_00011_00100_000_00000_1100011; // beq x2, x1, 0
        uut.instruction_memory.memory[5] = 32'b000000000010_00001_010_00010_0100011;  // sw x2, 2(x1)
        uut.instruction_memory.memory[6] = 32'b000000000010_00001_010_00010_0000011;  // lw x2, 2(x1)
        uut.reg_file.registers[1]=32'h00000104;
        uut.reg_file.registers[2]=32'h00000208;
        uut.reg_file.registers[3]=32'h00000001;
        uut.reg_file.registers[4]=32'h00000001;

    
    end

    // 测试流程
    initial begin
        // 初始化信号
        reset = 1;
        #10 reset = 0;

        // Step 1: 测试加法指令 (add)
        #20 $display("Step 1: ADD Instruction");
        $display("PC Address: %h, Instruction: %h, ALU Result: %h", pc_address, instruction, alu_result);
        $display("Expected ALU Result: sum of x1 and x2");

        // Step 2: 测试立即数加法指令 (addi)
        #20 $display("Step 2: ADDI Instruction");
        $display("PC Address: %h, Instruction: %h, ALU Result: %h", pc_address, instruction, alu_result);
        $display("Expected ALU Result: x1 + 1");

        // Step 3: 测试按位或指令 (or)
        #20 $display("Step 3: OR Instruction");
        $display("PC Address: %h, Instruction: %h, ALU Result: %h", pc_address, instruction, alu_result);
        $display("Expected ALU Result: x1 | x2");

        // Step 4: 测试小于比较指令 (slt)
        #20 $display("Step 4: SLT Instruction");
        $display("PC Address: %h, Instruction: %h, ALU Result: %h", pc_address, instruction, alu_result);
        $display("Expected ALU Result: (x1 < x2) ? 1 : 0");

        // Step 5: 测试分支跳转指令 (beq)
        #20 $display("Step 5: BEQ Instruction");
        $display("PC Address: %h, Instruction: %h", pc_address, instruction);
        $display("Expected PC Address: (x1 == x2) ? branch : PC + 4");

        // Step 6: 测试存储指令 (sw)
        #20 $display("Step 6: SW Instruction");
        $display("PC Address: %h, Instruction: %h", pc_address, instruction);
        $display("Expected Memory Address: ALU Result (computed address)");

        // Step 7: 测试加载指令 (lw)
        #20 $display("Step 7: LW Instruction");
        $display("PC Address: %h, Instruction: %h", pc_address, instruction);
        $display("Expected Loaded Data: value from memory[ALU Result]");

        // 测试结束
        #20 $finish;
    end

endmodule