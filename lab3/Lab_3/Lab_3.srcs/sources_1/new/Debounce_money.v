`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/13 14:43:06
// Design Name: 
// Module Name: Debounce_money
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


module Debounce_money(
    input wire CLK100MHZ,                 
    input wire rst,           
    input wire [3:0] money_input,
    output reg [3:0] stable_money_input
    );
    reg [19:0] debounce_counter;   
    reg [3:0] money_input_prev;    

    always @(posedge CLK100MHZ or posedge rst) begin
        if (rst) begin
            debounce_counter <= 0;
            stable_money_input <= 0;
            money_input_prev <= 0;
        end else begin
            if (money_input == money_input_prev) begin
                // 如果输入信号稳定（没有变化），计数器累加
                debounce_counter <= debounce_counter + 1;
                if (debounce_counter == 20'hFFFFF) begin
                    stable_money_input <= money_input;   // 更新为稳定的信号
                end
            end else begin
                // 如果输入信号变化，重置计数器
                debounce_counter <= 0;
                money_input_prev <= money_input;
            end
        end
    end
endmodule
