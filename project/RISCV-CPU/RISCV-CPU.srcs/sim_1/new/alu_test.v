`timescale 1ns / 1ps

module tb_alu;

    
    reg [31:0] num_1;         
    reg [31:0] num_2;          
    reg [2:0] alu_control;     

    
    wire [31:0] result;       
    wire is_zero;            

    
    alu uut (
        .num_1(num_1),
        .num_2(num_2),
        .alu_control(alu_control),
        .result(result),
        .is_zero(is_zero)
    );


    initial begin
        
        num_1 = 32'd0;
        num_2 = 32'd0;
        alu_control = 3'b000;

        // test add
        #10 num_1 = 32'd10; num_2 = 32'd20; alu_control = 3'b000; // Add
        #10 $display("Add: %d + %d = %d, is_zero=%b", num_1, num_2, result, is_zero);

        // test sub
        #10 num_1 = 32'd30; num_2 = 32'd20; alu_control = 3'b001; // Subtract
        #10 $display("Subtract: %d - %d = %d, is_zero=%b", num_1, num_2, result, is_zero);

        // test and
        #10 num_1 = 32'hF0F0F0F0; num_2 = 32'h0F0F0F0F; alu_control = 3'b010; // AND
        #10 $display("AND: %h & %h = %h, is_zero=%b", num_1, num_2, result, is_zero);

        // test or
        #10 num_1 = 32'hF0F0F0F0; num_2 = 32'h0F0F0F0F; alu_control = 3'b011; // OR
        #10 $display("OR: %h | %h = %h, is_zero=%b", num_1, num_2, result, is_zero);

        // test xor
        #10 num_1 = 32'hF0F0F0F0; num_2 = 32'h0F0F0F0F; alu_control = 3'b100; // XOR
        #10 $display("XOR: %h ^ %h = %h, is_zero=%b", num_1, num_2, result, is_zero);

        // test slt
        #10 num_1 = 32'd10; num_2 = 32'd20; alu_control = 3'b101; // SLT
        #10 $display("SLT: %d < %d = %d, is_zero=%b", num_1, num_2, result, is_zero);

        // test zero
        #10 num_1 = 32'd0; num_2 = 32'd0; alu_control = 3'b000; // Add 0 + 0
        #10 $display("Zero Test: %d + %d = %d, is_zero=%b", num_1, num_2, result, is_zero);

        
        #10 $finish;
    end

endmodule
