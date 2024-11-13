`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/13 10:08:37
// Design Name: 
// Module Name: Controller
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


module Controller(
    input wire CLK100MHZ,                 
    input wire rst,           
    input wire [2:0] item_type,
    input wire [3:0] money_input,
    input wire reset_money_input,

    output reg purchase_success,     
    output [6:0] seg, 
    output [7:0] AN,
    output DP
    );

    reg [7:0] item_price;           
    reg [7:0] amount_paid;    

    wire [3:0] debounced_money_input;

    Debounce_money debounce_inst (
        .CLK100MHZ(CLK100MHZ),              // 使用系统时钟
        .rst(rst),                    // 复位信号
        .money_input(money_input),    // 原始的按钮输�?
        .stable_money_input(debounced_money_input) // 去抖后的按钮输入
    );
       

    always @(*) begin
        case(item_type)
            3'b001: item_price <= 1;
            3'b010: item_price <= 2;
            3'b011: item_price <= 3;
            3'b100: item_price <= 4;
            3'b101: item_price <= 13;
            3'b110: item_price <= 26;
            default: item_price <= 0;  // ����Ĭ�����������latch
        endcase
    end

    always@(posedge CLK100MHZ or posedge rst)begin
        if(rst)begin
            amount_paid <=0;
            item_price <=0;
            purchase_success <=0;
        end 
        else begin
            case(debounced_money_input)
                4'b0001: amount_paid<=amount_paid+1;
                4'b0010: amount_paid<=amount_paid+2;
                4'b0100: amount_paid<=amount_paid+4;
                4'b1000: amount_paid<=amount_paid+10;
                default: amount_paid <= amount_paid;
            endcase
            if(amount_paid >= item_price)begin
                purchase_success<=1;
            end
        end
    end

    HexTo7Segment display (
        .CLK100MHZ(CLK100MHZ),
        .item_type(item_type),
        .amount_paid(amount_paid),
        .AN(AN),
        .seg(seg),
        .DP(DP)
   );

endmodule
