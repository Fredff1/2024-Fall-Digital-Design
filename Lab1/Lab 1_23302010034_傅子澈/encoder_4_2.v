`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/26 15:28:19
// Design Name: 
// Module Name: encoder_4_2
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


module encoder_4_2( 
    input wire [3:0]D,
    
    output reg x,
    output reg y,
    output reg valid 

);



always @(*) begin
    casez (D)
        4'b???1:begin
            x=1;
            y=1;
            valid=1;
        end
        4'b??10:begin
            x=1;
            y=0;
            valid=1;
        end
        4'b?100:begin
            x=0;
            y=1;
            valid=1;
        end
        4'b1000:begin
            x=0;
            y=0;
            valid=1;
        end
        default:begin
            x=0;
            y=0;
            valid=0;
        end
    endcase
end
endmodule
