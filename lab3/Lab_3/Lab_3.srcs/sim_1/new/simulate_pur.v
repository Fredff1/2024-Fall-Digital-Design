`timescale 1ns / 1ps


//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/21 16:23:58
// Design Name: 
// Module Name: Controller_tb
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


`

module Controller_tb;

    // Inputs
    reg CLK100MHZ;          
    reg rst;               
    reg [2:0] item_type;   
    reg [3:0] money_input; 
    reg reset_money_input; 

    // Outputs
    wire purchase_success; 
    wire [6:0] seg;        
    wire [7:0] AN;         
    wire DP;               

    // Instantiate the module under test (MUT)
    Controller uut (
        .CLK100MHZ(CLK100MHZ),
        .rst(rst),
        .item_type(item_type),
        .money_input(money_input),
        .reset_money_input(reset_money_input),
        .purchase_success(purchase_success),
        .seg(seg),
        .AN(AN),
        .DP(DP)
    );

    // Generate the clock signal
    initial begin
        CLK100MHZ = 0;
        forever #5 CLK100MHZ = ~CLK100MHZ; // 10ns clock period (100 MHz)
    end

    // Simulation process
    initial begin
        // Initialize inputs
        rst = 1;  // Apply reset
        item_type = 0;
        money_input = 0;
        reset_money_input = 0;

        // Wait for reset to take effect
        #20;
        rst = 0;  // Release reset

        // Test Case 1: Purchase item with type 3'b001 (price = 1)
        item_type = 3'b001;
        #10;
        money_input = 4'b0001; // Input 0.5
        #10;
        money_input = 4'b0010; // Input 1
        #10;
        money_input = 4'b0000; // Release input

        // Check purchase success
        #50;
        if (purchase_success)
            $display("Test Case 1 Passed: Item purchased successfully");
        else
            $display("Test Case 1 Failed: Purchase failed");

        // Test Case 2: Purchase item with type 3'b101 (price = 13)
        item_type = 3'b101;
        #10;
        money_input = 4'b1000; // Input 5
        #10;
        money_input = 4'b1000; // Input 5
        #10;
        money_input = 4'b0010; // Input 1
        #10;
        money_input = 4'b0100; // Input 2
        #10;
        money_input = 4'b0000; // Release input

        // Check purchase success
        #50;
        if (purchase_success)
            $display("Test Case 2 Passed: Item purchased successfully");
        else
            $display("Test Case 2 Failed: Purchase failed");

        // Test Case 3: Insufficient money
        item_type = 3'b011; // Price = 3
        #10;
        money_input = 4'b0010; // Input 1
        #10;
        money_input = 4'b0000; // Release input

        // Check purchase success
        #50;
        if (!purchase_success)
            $display("Test Case 3 Passed: Purchase correctly failed due to insufficient funds");
        else
            $display("Test Case 3 Failed: Purchase incorrectly succeeded");

        // End simulation
        #50;
        $finish;
    end

endmodule

