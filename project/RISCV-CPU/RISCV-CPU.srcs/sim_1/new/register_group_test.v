`timescale 1ns / 1ps

module tb_register_group;

    // 输入信号
    reg clk;                      // 时钟信号
    reg [4:0] reg_id_1;           // 第一个寄存器编号
    reg [4:0] reg_id_2;           // 第二个寄存器编号
    reg [4:0] rd;
    reg read;
    reg write;
    reg [31:0] data;              // 写入的数据

    // 输出信号
    wire [31:0] reg_data_1;       // 第一个寄存器的数据
    wire [31:0] reg_data_2;       // 第二个寄存器的数据
    

    // 实例化 register_group 模块
    register_group uut (
        .clk(clk),
        .reg_id_1(reg_id_1),
        .reg_id_2(reg_id_2),
        .reg_d(rd),
        .read(read),
        .write(write),
        .data(data),
        .reg_data_1(reg_data_1),
        .reg_data_2(reg_data_2)
    );

    

    // 时钟生成
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 时钟周期 10 单位时间
        
    end

    // 测试流程
    initial begin
        // 初始化信号
        reg_id_1 = 5'd0;
        reg_id_2 = 5'd0;
        rd=5'd0;
        read=0;
        write=0;
        data = 32'd0;
        uut.registers[1]=32'b0;
        uut.registers[2]=32'b0;

        

        // Step 1: 读取寄存器 0 和寄存器 1（初始值应为 0）
        #10 reg_id_1 = 5'd0; reg_id_2 = 5'd1;read=1;
        #10 $display("Read Register 0: Data = %h", reg_data_1);
        $display("Expected: 00000000");
        $display("--------------------------------------------------------");

        // Step 2: 写入数据到寄存器 1
        #10 rd = 5'd1; data = 32'h0034; write=1;
        #10 $display("Write Register 1: Data = %h", data);
        $display("Expected: 0034");
        $display("--------------------------------------------------------");
        write=0;

        // Step 3: 读取寄存器 1
        #10 reg_id_1 = 5'd1; 
        #10 $display("Read Register 1: Data = %h", reg_data_1);
        $display("Expected: 0034");
        $display("--------------------------------------------------------");

        // Step 4: 写入数据到寄存器 2
        #10 rd = 5'd2; data = 32'h5678; write=1;
        #10 $display("Write Register 2: Data = %h", data);
        $display("Expected: 5678");
        $display("--------------------------------------------------------");
        write=0;

        // Step 5: 读取寄存器 2
        #10 reg_id_2 = 5'd2; 
        #10 $display("Read Register 2: Data = %h", reg_data_2);
        $display("Expected: 5678");
        $display("--------------------------------------------------------");

        // 测试结束
        #10 $finish;
    end

endmodule