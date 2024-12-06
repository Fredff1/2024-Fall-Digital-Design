`timescale 1ns / 1ps

module tb_instruction_memory;

    // 输入信号
    reg [15:0] address;          // 指令地址
    reg flag;                    // 读取使能信号

    // 输出信号
    wire [31:0] instruction;     // 读取的指令

    // 实例化 instruction_memory 模块
    instruction_memory uut (
        .address(address),
        .flag(flag),
        .instruction(instruction)
    );

    // 初始化指令存储器内容
    initial begin
        uut.memory[0] = 32'h12345678;  // 示例指令 1
        uut.memory[1] = 32'h9abcdef0;  // 示例指令 2
        uut.memory[2] = 32'h0fedcba9;  // 示例指令 3
    end

    // 测试流程
    initial begin
        // 初始化信号
        address = 16'd0;
        flag = 1'b0;

        // Step 1: 读取地址 0 的指令
        #10 address = 16'd0; flag = 1'b1;
        #10 $display("--------------------------------------------------------");
        #10 $display("Read from Address %d: Instruction = %h", address, instruction);
        #10 $display("Expected: 12345678");
        #10 $display("--------------------------------------------------------");
        #10 flag = 1'b0; // 停止读取


        // Step 2: 读取地址 1 的指令
        #10 address = 16'd1; flag = 1'b1;
        #10 $display("Read from Address %d: Instruction = %h", address, instruction);
        #10 $display("Expected: 9abcdef0");
        #10 $display("--------------------------------------------------------");
        #10 flag = 1'b0; // 停止读取


        // Step 3: 读取地址 2 的指令
        #10 address = 16'd2; flag = 1'b1;
        #10 $display("Read from Address %d: Instruction = %h", address, instruction);
        #10 $display("Expected: 0fedcba9");
        #10 $display("--------------------------------------------------------");
        #10 flag = 1'b0; // 停止读取


        // Step 4: 测试未使能的读取
        #10 address = 16'd0; flag = 1'b0;
        #10 $display("Read without flag enabled: Instruction = %h", instruction);
        #10 $display("Expected: 0");
        #10 $display("--------------------------------------------------------");
  
        // 测试结束
        #10 $finish;
    end

endmodule
