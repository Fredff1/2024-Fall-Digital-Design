`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/10 16:11:17
// Design Name: 
// Module Name: encdoer_4_2
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


module encoder_4_2_tb;

  // Inputs
  reg [3:0] D;

  // Outputs
  wire x;
  wire y;

  // Instantiate the Unit Under Test (UUT)
  encoder_4_2 uut (
    .D(D), 
    .x(x), 
    .y(y)
  );

  // Simulation process
  initial begin
    // Initialize Inputs
    D = 4'b0000;
    #10; // Wait for 10 time units
    
    // Apply different input combinations
    D = 4'b0001;
    #10; // Wait for 10 time units
    
    D = 4'b0010;
    #10;
    
    D = 4'b0100;
    #10;
    
    D = 4'b1000;
    #10;
    
    // Test invalid case (should go to default)
    D = 4'b0000;
    #10;
    
    // End simulation
    $finish;
  end

  

endmodule

