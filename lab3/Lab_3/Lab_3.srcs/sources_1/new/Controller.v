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

`define SIMULATION

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
    `ifdef SIMULATION
    ,
    output reg [7:0] amount_paid,
    output reg [7:0] item_price,
    output wire [3:0] debounced_money_input,
    output reg button_pressed
    `endif
    );
    
    `ifndef SIMULATION
    reg [7:0] amount_paid;
    reg [7:0] item_price;
    wire [3:0] debounced_money_input;
    reg button_pressed;
     `endif
    
    
    Debounce_money debounce_inst (
        .CLK100MHZ(CLK100MHZ),              //Clock signal 
        .rst(rst),                    // reset signal
        .money_input(money_input),    // original button input for money
        .stable_money_input(debounced_money_input) // money input with bounce removed
    );
      
    /*
    1=0.5CNY
    */


        always @(posedge CLK100MHZ or posedge rst) begin
        if (rst) begin

            amount_paid <= 0;
            item_price <= 0;
            purchase_success <= 0;
            button_pressed <= 0; 
        end else begin

            case (item_type)
                3'b001:begin
                  item_price <= 1;
                end
                3'b010: begin
                    item_price <= 2;
                end
                3'b011: begin
                    item_price <= 3;
                end
                3'b100: begin
                    item_price <= 4;
                end
                3'b101: begin
                    item_price <= 13;
                end
                3'b110: begin
                    item_price <= 26;
                end
                default: begin
                item_price <= 0;  
                purchase_success <= 0;
                amount_paid<=0;
                end
            endcase
            

            if (debounced_money_input != 0 && !button_pressed) begin
        
                case (debounced_money_input)
                    4'b0001: amount_paid <= amount_paid + 1;  
                    4'b0010: amount_paid <= amount_paid + 2;   
                    4'b0100: amount_paid <= amount_paid + 4;   
                    4'b1000: amount_paid <= amount_paid + 10;  
                endcase
                button_pressed <= 1; 
            end else if (debounced_money_input == 0) begin
          
                button_pressed <= 0;
            end

            
            if (amount_paid >= item_price&&item_price>0) begin
                purchase_success <= 1;
            end
            else begin
                purchase_success<=0;
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
