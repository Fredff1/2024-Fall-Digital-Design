`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/10 15:52:43
// Design Name: 
// Module Name: decoder_3_8_sim
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


module decoder_3_8_tb;

  // Inputs
  reg x;
  reg y;
  reg z;

  // Outputs
  wire [7:0] D;

  // Instantiate the Unit Under Test (UUT)
  decoder_3_8 uut (
    .x(x), 
    .y(y), 
    .z(z), 
    .D(D)
  );

  // Simulation process
  initial begin
    // Initialize Inputs
    x = 0; y = 0; z = 0;
    #10; // Wait for 10 time units
    
    // Apply different combinations of inputs
    x = 0; y = 0; z = 1;
    #10; // Wait for 10 time units
    
    x = 0; y = 1; z = 0;
    #10;
    
    x = 0; y = 1; z = 1;
    #10;
    
    x = 1; y = 0; z = 0;
    #10;
    
    x = 1; y = 0; z = 1;
    #10;
    
    x = 1; y = 1; z = 0;
    #10;
    
    x = 1; y = 1; z = 1;
    #10;
    
    // End simulation
    $finish;
  end
  
  // Monitor output for verification
  initial begin
    $monitor("Time = %0t | x = %b | y = %b | z = %b | D = %b", $time, x, y, z, D);
  end

endmodule
