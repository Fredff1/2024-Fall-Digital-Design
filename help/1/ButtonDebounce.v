`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/21 19:42:27
// Design Name: 
// Module Name: ButtonDebounce
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


module ButtonDebounce(
    input CLK100MHZ,    
    input [2:0] SW,      
    input [3:0] money,         
    output reg [7:0] totalMoney
);
    reg [3:0] money_in = 4'b0;
    reg [23:0] count = 24'b0;   // 计数器，用于分频
    reg clk = 0;               // 分频后的低频时钟
    reg [2:0] prev_SW;

    // 时钟分频：将高频时钟分频为低频时钟
    always @(posedge CLK100MHZ) begin
        count <= count + 1;
        if (count[23] == 1) begin
            clk <= ~clk;      
            count <= 24'b0;     
        end
    end

    // 使用低频时钟采集按钮输入
    always @(posedge clk) begin
        money_in <= money;  
    end
    
    always @(posedge CLK100MHZ) begin
        if (SW != prev_SW) begin
            totalMoney <= 8'd0;
            prev_SW <= SW; 
        end
    end

    // 更新 totalMoney
    always @(posedge clk) begin
        if (money_in[0] == 1)
            totalMoney <= totalMoney + 8'd5;
        else if (money_in[1] == 1)
            totalMoney <= totalMoney + 8'd10;
        else if (money_in[2] == 1)
            totalMoney <= totalMoney + 8'd20;
        else if (money_in[3] == 1)
            totalMoney <= totalMoney + 8'd50;
//        case (money_in)
//            4'b0111: totalMoney <= totalMoney + 8'd50;
//            4'b1011: totalMoney <= totalMoney + 8'd20;
//            4'b1101: totalMoney <= totalMoney + 8'd10;
//            4'b1110: totalMoney <= totalMoney + 8'd5;
//            default: totalMoney <= totalMoney; 
//        endcase
    end
endmodule

