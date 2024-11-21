`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/31 17:03:12
// Design Name: 
// Module Name: HexTo7Segment
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


module HexTo7Segment(
    input CLK100MHZ,          
    input[3:0] item_type,
    input [7:0] amount_paid,        
    output reg [7:0] AN,      
    output reg [6:0] seg,     
    output reg DP                  
    );

           

    reg [19:0] clkdiv;       
    reg [3:0] yuan_tens, yuan_units, jiao_units;  
    integer total_jiao;

 
    always @(posedge CLK100MHZ) begin
        clkdiv <= clkdiv + 1;
    end
    
    always @(*) begin
        total_jiao = amount_paid * 5;    
        yuan_tens = (total_jiao / 10) / 10;    
        yuan_units = (total_jiao / 10) % 10;   
        jiao_units = total_jiao % 10;         
    end

    wire [1:0] s = clkdiv[19:18];       
    
    
   
    always @(*) begin
   
        case(s)
            2'b00: begin
                AN = 8'b11111110;                  
                seg = hex_to_7seg(item_type);  
                DP=1; 
            end
            2'b01: begin
                AN = 8'b11111101;                  
                seg = hex_to_7seg(jiao_units);  
                DP=1; 
            end
            2'b10: begin
                AN = 8'b11111011;                  
                seg = hex_to_7seg(yuan_units); 
                DP=0; 
            end
            2'b11: begin
                AN = 8'b11110111;                  
                seg=hex_to_7seg(yuan_tens);
                DP=1; 
            end
            
        endcase
    end


    function [6:0] hex_to_7seg;
        input [3:0] hex;
        case (hex)
            4'h0: hex_to_7seg = 7'b1000000;
            4'h1: hex_to_7seg = 7'b1111001;
            4'h2: hex_to_7seg = 7'b0100100;
            4'h3: hex_to_7seg = 7'b0110000;
            4'h4: hex_to_7seg = 7'b0011001;
            4'h5: hex_to_7seg = 7'b0010010;
            4'h6: hex_to_7seg = 7'b0000010;
            4'h7: hex_to_7seg = 7'b1111000;
            4'h8: hex_to_7seg = 7'b0000000;
            4'h9: hex_to_7seg = 7'b0010000;
            4'hA: hex_to_7seg = 7'b0001000;
            4'hB: hex_to_7seg = 7'b0000011;
            4'hC: hex_to_7seg = 7'b1000110;
            4'hD: hex_to_7seg = 7'b0100001;
            4'hE: hex_to_7seg = 7'b0000110;
            4'hF: hex_to_7seg = 7'b0001110;
            default: hex_to_7seg = 7'b1111111; 
        endcase
    endfunction
endmodule

