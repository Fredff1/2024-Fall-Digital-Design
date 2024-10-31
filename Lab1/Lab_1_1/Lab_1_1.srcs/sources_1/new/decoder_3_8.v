`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/25 19:43:14
// Design Name: 
// Module Name: decoder_3_8
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


module decoder_3_8( 
    input wire x,
    input wire y,
    input wire z,

    output wire [7:0] D
    
);

    assign D[0] = (~x)&(~y)&(~z) ;
    assign D[1] = (~x)&(~y)&(z);
    assign D[2] = (~x)&(y)&(~z);
    assign D[3] = (~x)&(y)&(z);
    assign D[4] = (x)&(~y)&(~z);
    assign D[5] = (x)&(~y)&(z) ;
    assign D[6] = (x)&(y)&(~z);
    assign D[7] = (x)&(y)&(z) ;

endmodule
