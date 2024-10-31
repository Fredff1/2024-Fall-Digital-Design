`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/31 16:09:54
// Design Name: 
// Module Name: ALU
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


module ALU(
    input CLK100MHZ, 
    input [3:0] A,
    input [3:0] B,
    input [1:0] type,
    output [6:0] seg, 
    output [7:0] AN ,
    output DP
    );
    
    reg [7:0] result;
    wire [7:0] add_result;
    wire [7:0] subtract_result;
    wire [7:0] negative_result;
    wire [7:0] multiply_result;

    Adder add_instance (.A(A),.B(B),.O(add_result));
    Subtractor subtract_instance (.A(A),.B(B),.O(subtract_result));
    Negator negative_instance (.A(A),.O(negative_result));
    Multiplier multiply_instance (.A(A),.B(B),.O(multiply_result));

    always @(*) begin
        case(type)
            2'b00:result=add_result;
            2'b01:result=subtract_result;
            2'b10:result=negative_result;
            2'b11:result=multiply_result;
        endcase
    end

   HexTo7Segment display (
        .CLK100MHZ(CLK100MHZ), 
        .result(result), 
        .AN(AN), 
        .seg(seg), 
        .DP(DP)
   
   );
    

    

    

endmodule
