`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/06 10:36:11
// Design Name: 
// Module Name: data_mem_test
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


module tb_data_memory;

    // 输入信号
    reg [15:0] address;          // 地址信号
    reg [31:0] write_data;       // 写入数据
    reg read_flag;               // 读取使能信号
    reg write_flag;              // 写入使能信号

    // 输出信号
    wire [31:0] data_read;       // 读取的数据

    // 实例化 data_memory 模块
    data_memory uut (
        .address(address),
        .write_data(write_data),
        .read_flag(read_flag),
        .write_flag(write_flag),
        .data_read(data_read)
    );

    // 测试流程
    initial begin
        // 初始化信号
        address = 16'd0;
        write_data = 32'd0;
        read_flag = 1'b0;
        write_flag = 1'b0;

        // Step 1: 写入数据到地址 0
        #10 address = 16'd0; write_data = 32'h11451419; write_flag = 1'b1;
        #10 write_flag = 1'b0; // 停止写入

        // Step 2: 写入数据到地址 1
        #10 address = 16'd1; write_data = 32'h5A5A5A5A; write_flag = 1'b1;
        #10 write_flag = 1'b0; // 停止写入

        // Step 3: 读取地址 0 的数据
        #10 address = 16'd0; read_flag = 1'b1;
        #10 $display("--------------------------------------------------------");
        #10 $display("Read from Address %d: Data = %h", address, data_read);
        #10 $display("Expected data: h11451419");
        
        #10 read_flag = 1'b0; // 停止读取

        // Step 4: 读取地址 1 的数据
        #10 address = 16'd1; read_flag = 1'b1;
        #10 $display("--------------------------------------------------------");
        #10 $display("Read from Address %d: Data = %h", address, data_read);
        #10 $display("Expected data: 5a5a5a5a");

        #10 read_flag = 1'b0; // 停止读取

        // Step 5: 测试未初始化地址
        #10 address = 16'd2; read_flag = 1'b1;
        #10 $display("--------------------------------------------------------");
        #10 $display("Read from Address %d: Data = %h", address, data_read);
        #10 $display("Expected data: undefined");
        #10 $display("--------------------------------------------------------");
        #10 read_flag = 1'b0; // 停止读取

        // 测试结束
        #10 $finish;
    end

endmodule