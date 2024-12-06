`timescale 1ns / 1ps

module tb_program_counter;

    // 输入信号
    reg clk;                      // 时钟信号
    reg reset;                    // 复位信号
    reg pc_update;                // PC 更新使能信号
    reg [15:0] next_pc;           // 下一个 PC 值

    // 输出信号
    wire [15:0] pc_output;        // 当前 PC 值

    // 实例化 program_counter 模块
    program_counter uut (
        .clk(clk),
        .reset(reset),
        .pc_update(pc_update),
        .next_pc(next_pc),
        .pc_output(pc_output)
    );

    // 时钟生成
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 时钟周期 10 单位时间
    end

    // 测试流程
    initial begin
        // 初始化信号
        reset = 0;
        pc_update = 0;
        next_pc = 16'd0;
        $display("--------------------------------------------------------");
        // Step 1: 测试复位功能
        #10 reset = 1;          // 激活复位信号
        #10 reset = 0;          // 释放复位信号
        pc_update=1;
        $display("After reset: PC = %h", pc_output);
        $display("Expected: 0000");
        $display("--------------------------------------------------------");
        #10;
        // Step 2: 测试默认递增 (PC + 4)
        $display("PC incremented by 4: PC = %h", pc_output);
        $display("Expected: 0004");
        $display("--------------------------------------------------------");

        // Step 3: 测试跳转到指定地址
        next_pc = 16'h0030; pc_update = 1;  // 跳转到 0x30
        #10
        $display("After jump: PC = %h", pc_output);
        $display("Expected: 0030");
        $display("--------------------------------------------------------");
        next_pc=0;
        pc_update=0;

        // Step 4: 再次测试默认递增 (PC + 4)
        #10;
        $display("PC incremented by 4: PC = %h", pc_output);
        $display("Expected: 0034");
        $display("--------------------------------------------------------");

        // Step 4: 再次测试默认递增 (PC + 4)
        #10;
        $display("PC incremented by 4: PC = %h", pc_output);
        $display("Expected: 0038");
        $display("--------------------------------------------------------");
        
       
        // 测试结束
        #10 $finish;
    end

endmodule
