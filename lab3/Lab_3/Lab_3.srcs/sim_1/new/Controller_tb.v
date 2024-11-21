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
    #100;
    money_input = 4'b0001; // Input 0.5
    #2000;                 // Hold signal stable for enough time
    money_input = 4'b0000; // Release input
    #100;

    money_input = 4'b0010; // Input 1
    #2000;                 // Hold signal stable for enough time
    money_input = 4'b0000; // Release input

    // Check purchase success
    #50;
    if (purchase_success)
        $display("Test Case 1 Passed: Item purchased successfully");
    else
        $display("Test Case 1 Failed: Purchase failed");

    // Test Case 2: Purchase item with type 3'b101 (price = 13)
    item_type = 3'b001;
    #10000000;
   
    // Check purchase success
    #2000;
    if (purchase_success)
        $display("Test Case 2 Passed: Item purchased successfully");
    else
        $display("Test Case 2 Failed: Purchase failed");

    // Test Case 3: Insufficient money
    item_type = 3'b011; // Price = 3
    #100;
    money_input = 4'b0010; // Input 1
    #2000;                 // Hold signal stable for enough time
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