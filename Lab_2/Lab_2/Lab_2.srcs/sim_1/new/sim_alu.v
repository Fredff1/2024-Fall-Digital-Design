`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/31 16:32:29
// Design Name: 
// Module Name: sim_alu
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


module sim_alu;
    reg [3:0] A;
    reg [3:0] B;
    reg [1:0] type;
    wire [7:0] result;
    wire [6:0] seg_0;
    wire [6:0] seg_1;
    wire AN0;
    wire AN1;

    
    ALU uut (.A(A), .B(B), .type(type), .result(result),.seg_0(seg_0), .seg_1(seg_1),.AN0(AN0),.AN1(AN1));

    initial begin
        
        A = 4'b0011; B = 4'b0010; type = 2'b00; // A + B = 3 + 2
        #10;
        
        
        A = 4'b0100; B = 4'b0001; type = 2'b01; // A - B = 4 - 1
        #10;
        
        
        A = 4'b0110; type = 2'b10;              // ~A
        #10;
        
        
        A = 4'b0011; B = 4'b0010; type = 2'b11; 
        #10;
        $finish; 
    end
    
endmodule
