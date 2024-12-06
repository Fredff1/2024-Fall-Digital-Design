`timescale 1ns / 1ps

module tb_alu;

    // 输入信号
    reg [31:0] num_1;          // 第一个操作数
    reg [31:0] num_2;          // 第二个操作数
    reg [2:0] alu_control;     // ALU 控制信号

    // 输出信号
    wire [31:0] result;        // 运算结果
    wire is_zero;              // 是否为零标志

    // 实例化被测试的 ALU 模块
    alu uut (
        .num_1(num_1),
        .num_2(num_2),
        .alu_control(alu_control),
        .result(result),
        .is_zero(is_zero)
    );

    // 测试流程
    initial begin
        // 初始化信号
        num_1 = 32'd0;
        num_2 = 32'd0;
        alu_control = 3'b000;

        // 测试加法操作
        #10 num_1 = 32'd10; num_2 = 32'd20; alu_control = 3'b000; // Add
        #10 $display("Add: %d + %d = %d, is_zero=%b", num_1, num_2, result, is_zero);

        // 测试减法操作
        #10 num_1 = 32'd30; num_2 = 32'd20; alu_control = 3'b001; // Subtract
        #10 $display("Subtract: %d - %d = %d, is_zero=%b", num_1, num_2, result, is_zero);

        // 测试按位与操作
        #10 num_1 = 32'hF0F0F0F0; num_2 = 32'h0F0F0F0F; alu_control = 3'b010; // AND
        #10 $display("AND: %h & %h = %h, is_zero=%b", num_1, num_2, result, is_zero);

        // 测试按位或操作
        #10 num_1 = 32'hF0F0F0F0; num_2 = 32'h0F0F0F0F; alu_control = 3'b011; // OR
        #10 $display("OR: %h | %h = %h, is_zero=%b", num_1, num_2, result, is_zero);

        // 测试按位异或操作
        #10 num_1 = 32'hF0F0F0F0; num_2 = 32'h0F0F0F0F; alu_control = 3'b100; // XOR
        #10 $display("XOR: %h ^ %h = %h, is_zero=%b", num_1, num_2, result, is_zero);

        // 测试小于比较操作
        #10 num_1 = 32'd10; num_2 = 32'd20; alu_control = 3'b101; // SLT
        #10 $display("SLT: %d < %d = %d, is_zero=%b", num_1, num_2, result, is_zero);

        // 测试零标志
        #10 num_1 = 32'd0; num_2 = 32'd0; alu_control = 3'b000; // Add 0 + 0
        #10 $display("Zero Test: %d + %d = %d, is_zero=%b", num_1, num_2, result, is_zero);

        // 结束测试
        #10 $finish;
    end

endmodule
