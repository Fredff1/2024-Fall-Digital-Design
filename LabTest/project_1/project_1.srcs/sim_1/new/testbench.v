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

    // ʵ��������ģ��
    test_1 uut (
        .a(a),
        .b(b),
        .c(c),
        .y(y)
    );

    initial begin
        // ���������ź�
        a = 0; b = 0;c=0;
        #10;  // �ȴ�10��ʱ�䵥λ
        a = 1; b = 0;c=1;
        #10;
        a = 1; b = 1;c=1;
        #10;
        $finish;  // ��������
    end
endmodule
