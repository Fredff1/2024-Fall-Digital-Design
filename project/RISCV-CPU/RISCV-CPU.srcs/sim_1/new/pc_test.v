`timescale 1ns / 1ps

module tb_program_counter;

    reg clk;                      
    reg reset;                   
    reg branch;                
    reg [15:0] next_pc;          


    wire [15:0] pc_output;       


    program_counter uut (
        .clk(clk),
        .reset(reset),
        .branch(branch),
        .next_pc(next_pc),
        .pc_output(pc_output)
    );


    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end


    initial begin
        reset = 0;
        branch = 0;
        next_pc = 16'd0;
        $display("--------------------------------------------------------");
        // Step 1: test reset
        #10 reset = 1;          
        #10 reset = 0;          
        branch=1;
        $display("After reset: PC = %h", pc_output);
        $display("Expected: 0000");
        $display("--------------------------------------------------------");
        branch=0;
        #10;
        // Step 2: default increase pc = pc + 4
        $display("PC incremented by 4: PC = %h", pc_output);
        $display("Expected: 0004");
        $display("--------------------------------------------------------");

        // Step 3: test jump
        next_pc = 16'h0030; branch = 1;  // jump to 0x30
        #10
        $display("After jump: PC = %h", pc_output);
        $display("Expected: 0030");
        $display("--------------------------------------------------------");
        next_pc=0;
        branch=0;

        // Step 4: test default increase pc = pc + 4
        #10;
        $display("PC incremented by 4: PC = %h", pc_output);
        $display("Expected: 0034");
        $display("--------------------------------------------------------");

        #10;
        $display("PC incremented by 4: PC = %h", pc_output);
        $display("Expected: 0038");
        $display("--------------------------------------------------------");
        
       
        #10 $finish;
    end

endmodule
