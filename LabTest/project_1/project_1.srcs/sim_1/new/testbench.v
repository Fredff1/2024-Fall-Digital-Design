`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/12 16:06:54
// Design Name: 
// Module Name: testbench
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


module tb;
    reg a;
    reg b;
    reg c;
    wire y;

    // 实例化被测模块
    test_1 uut (
        .a(a),
        .b(b),
        .c(c),
        .y(y)
    );

    initial begin
        // 设置输入信号
        a = 0; b = 0;c=0;
        #10;  // 等待10个时间单位
        a = 1; b = 0;c=1;
        #10;
        a = 1; b = 1;c=1;
        #10;
        $finish;  // 结束仿真
    end
endmodule
