`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/05 18:48:52
// Design Name: 
// Module Name: SegmentDisplay
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


module SegmentDisplay (
    input CLK100MHZ,
    input [2:0] ProductID,
    input [3:0] Int,  
    input [3:0] Float,
    input [7:0] MoneyInput,             
    output reg [7:0] AN = 8'b1111_1111,         
    output reg [6:0] seg = 7'b111_1111, 
    output wire DP
);
    localparam STATE_SHOW_PRODUCT = 1'b0;  // 显示商品编号
    localparam STATE_SHOW_AMOUNT  = 1'b1;  // 显示输入金额
    reg current_state = STATE_SHOW_PRODUCT;
    
    reg [19:0] clkdiv = 0;
    wire [1:0] s;  // 选择哪个数码管
    assign s = clkdiv[19:18];
    
    assign DP = !((current_state == STATE_SHOW_AMOUNT) && (s == 2'b01));
    
    always @(posedge CLK100MHZ) begin
        clkdiv <= clkdiv + 1;
    end
    
    always @(posedge CLK100MHZ) begin
        if (MoneyInput != 8'b0) 
            current_state <= STATE_SHOW_AMOUNT;  
        else
            current_state <= STATE_SHOW_PRODUCT;
    end
    
    always @(*) begin
        case (current_state)
            // 显示商品编号
            STATE_SHOW_PRODUCT: begin
                case (s)
                    2'b00: begin
                        if (ProductID >= 1 && ProductID <= 6) begin
                            AN = 8'b1101_1111; 
                            seg = bcd_to_7seg(ProductID);
                        end
                    end
                    default: begin
                        AN = 8'b1111_1111; 
                        seg = 7'b111_1111;
                    end
                endcase
            end

            // 显示输入金额
            STATE_SHOW_AMOUNT: begin
                case (s)
                    2'b00: begin
                        AN = 8'b1101_1111; 
                        seg = bcd_to_7seg(Int); 
                    end
                    2'b01: begin
                        AN = 8'b1011_1111; 
                        seg = bcd_to_7seg(Float); 
                    end
                    default: begin
                        AN = 8'b1111_1111; 
                        seg = 7'b111_1111;
                    end
                endcase
            end

            default: begin
                AN = 8'b1111_1111; // 默认关闭数码管
                seg = 7'b111_1111;
            end
        endcase
    end

    function [6:0] bcd_to_7seg(input [3:0] bcd);
        case (bcd)
            4'd0: bcd_to_7seg = 7'b100_0000;
            4'd1: bcd_to_7seg = 7'b111_1001;
            4'd2: bcd_to_7seg = 7'b010_0100;
            4'd3: bcd_to_7seg = 7'b011_0000;
            4'd4: bcd_to_7seg = 7'b001_1001;
            4'd5: bcd_to_7seg = 7'b001_0010;
            4'd6: bcd_to_7seg = 7'b000_0010;
            4'd7: bcd_to_7seg = 7'b111_1000;
            4'd8: bcd_to_7seg = 7'b000_0000;
            4'd9: bcd_to_7seg = 7'b001_0000;
//            4'hA: bcd_to_7seg = 7'b000_1000;
//            4'hB: bcd_to_7seg = 7'b000_0011;
//            4'hC: bcd_to_7seg = 7'b100_0110;
//            4'hD: bcd_to_7seg = 7'b010_0001;
//            4'hE: bcd_to_7seg = 7'b000_0110;
//            4'hF: bcd_to_7seg = 7'b000_1110;
            default: bcd_to_7seg = 7'b111_1111;
        endcase
    endfunction
endmodule

