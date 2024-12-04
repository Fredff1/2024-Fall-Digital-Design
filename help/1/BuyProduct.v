`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/21 15:56:42
// Design Name: 
// Module Name: BuyProduct
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


module BuyProduct(
    input CLK100MHZ,
    input [2:0] SW,
    input BTNC, BTNU, BTNL, BTNR,
    output DP, 
    output CA, CB, CC, CD, CE, CF, CG,
    output [7:0] AN,
    output reg [0:0] LED
);
    
    reg [7:0] prices [0:5];
    reg [7:0] itemPrice;
    reg [3:0] inputButton;
    reg [7:0] totalMoney;
    wire [7:0] totalMoneySave;
    wire [6:0] seg;
    
    assign {CG, CF, CE, CD, CC, CB, CA} = seg;
    
    initial begin
        prices[0] = 8'd5;
        prices[1] = 8'd10;
        prices[2] = 8'd15;
        prices[3] = 8'd20;
        prices[4] = 8'd65;
        prices[5] = 8'd130;
        LED[0] = 1;
    end
    
    ButtonDebounce bd (
        .CLK100MHZ(CLK100MHZ),
        .SW(SW),
        .money(inputButton), 
        .totalMoney(totalMoneySave)
    );
    
    SegmentDisplay display (
        .CLK100MHZ(CLK100MHZ),
        .ProductID(SW),
        .Int(totalMoney / 10),        
        .Float(totalMoney % 10),
        .MoneyInput(totalMoney), 
        .AN(AN),
        .seg(seg), 
        .DP(DP)
    );

       
    always @(SW) begin
        if (SW > 6 || SW < 1)
            itemPrice <= 8'd0; 
        else
            itemPrice <= prices[SW - 1];
    end
    
    always @(posedge CLK100MHZ) begin
        inputButton <= {BTNC, BTNU, BTNL, BTNR};  
    end
    
    always @(posedge CLK100MHZ) begin
        totalMoney <= totalMoneySave;
    end

    always @(posedge CLK100MHZ) begin
        if (totalMoney >= itemPrice && itemPrice > 0) 
            LED[0] <= 1;  
        else
            LED[0] <= 0;    
    end
    
endmodule

