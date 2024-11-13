module ALU_tb;

    // Inputs
    reg CLK100MHZ;
    reg [3:0] A;
    reg [3:0] B;
    reg [1:0] type;

    // Outputs
    wire [7:0] result;
    wire [6:0] seg;
    wire [7:0] AN;
    wire DP;

    // Instantiate the ALU module
    ALU uut (
        .CLK100MHZ(CLK100MHZ),
        .A(A),
        .B(B),
        .type(type),
        .seg(seg),
        .AN(AN),
        .DP(DP),
        .result(result) // result is now connected as a wire
    );

    // Clock generation (100 MHz)
    initial begin
        CLK100MHZ = 0;
        forever #5 CLK100MHZ = ~CLK100MHZ; // 10ns period => 100 MHz clock
    end

    // Stimulus
    initial begin
        // Test 1: Add (A + B)
        A = 4'b0011; B = 4'b0010; type = 2'b00; // 3 + 2 = 5
        #500;
        
        // Test 2: Subtract (A - B)
        A = 4'b0100; B = 4'b0001; type = 2'b01; // 4 - 1 = 3
        #500;
        
        // Test 3: Negate (~A)
        A = 4'b0110; type = 2'b10;              // ~6 (inverted binary)
        #500;
        
        // Test 4: Multiply (A * B)
        A = 4'b0011; B = 4'b0010; type = 2'b11; // 3 * 2 = 6
        #500;
        
        // End simulation
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time = %d : A = %b, B = %b, type = %b, result = %b, AN = %b, seg = %b",
                 $time, A, B, type, result, AN, seg);
    end

endmodule