`timescale 1ns / 1ps

module tb_instruction_memory;

   
    reg [15:0] address;          
    reg flag;                    

    
    wire [31:0] instruction;     


    instruction_memory uut (
        .address(address),
        .flag(flag),
        .instruction(instruction)
    );

    initial begin
        
        uut.memory[0] = 8'h78;
        uut.memory[1] = 8'h56;
        uut.memory[2] = 8'h34;
        uut.memory[3] = 8'h12;
        
        uut.memory[4] = 8'hf0;
        uut.memory[5] = 8'hde;
        uut.memory[6] = 8'hbc;
        uut.memory[7] = 8'h9a;
        
        uut.memory[8] = 8'ha9;
        uut.memory[9] = 8'hcb;
        uut.memory[10] = 8'hed;
        uut.memory[11] = 8'h0f;
        
        ;
        
    end


    initial begin
  
        address = 16'd0;
        flag = 1'b0;

        // Step 1: read from 0
        #10 address = 16'd0; flag = 1'b1;
        #10 $display("--------------------------------------------------------");
        #10 $display("Read from Address %d: Instruction = %h", address, instruction);
        #10 $display("Expected: 12345678");
        #10 $display("--------------------------------------------------------");
        #10 flag = 1'b0; 


        // Step 2: read from 4
        #10 address = 16'd4; flag = 1'b1;
        #10 $display("Read from Address %d: Instruction = %h", address, instruction);
        #10 $display("Expected: 9abcdef0");
        #10 $display("--------------------------------------------------------");
        #10 flag = 1'b0; 


        // Step 3: read from 8
        #10 address = 16'd8; flag = 1'b1;
        #10 $display("Read from Address %d: Instruction = %h", address, instruction);
        #10 $display("Expected: 0fedcba9");
        #10 $display("--------------------------------------------------------");
        #10 flag = 1'b0; 


        // Step 4: read from 16
        #10 address = 16'd0; flag = 1'b0;
        #10 $display("Read without flag enabled: Instruction = %h", instruction);
        #10 $display("Expected: 0");
        #10 $display("--------------------------------------------------------");
  
        // end
        #10 $finish;
    end

endmodule
