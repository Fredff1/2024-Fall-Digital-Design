`timescale 1ns / 1ps

module tb_cpu_imp;

    reg clk;                       
    reg reset;                   
    wire [15:0] pc_address;        
    wire [31:0] instruction;      
    wire [31:0] alu_result;        


    cpu_imp uut (
        .clk(clk),
        .reset(reset),
        .pc_address(pc_address),
        .instruction(instruction),
        .alu_result(alu_result)
    );

    
    initial begin
        clk = 0;
        forever #10 clk = ~clk; 
    end

    
    initial begin
        
        uut.instruction_memory.memory[0] =8'h93; //addi
        uut.instruction_memory.memory[2] =8'h80; 

        uut.instruction_memory.memory[4] =8'h03; //lw
        uut.instruction_memory.memory[5] =8'ha1; 
        uut.instruction_memory.memory[6] =8'h40; 

        uut.instruction_memory.memory[8] =8'hb3; //add
        uut.instruction_memory.memory[9] =8'h81; 
        uut.instruction_memory.memory[10] =8'h20; 


        uut.instruction_memory.memory[12] =8'h33; 
        uut.instruction_memory.memory[13] =8'h82; //sub
        uut.instruction_memory.memory[14] =8'h11; 
        uut.instruction_memory.memory[15] =8'h40; 

        uut.instruction_memory.memory[16] =8'hb3; 
        uut.instruction_memory.memory[17] =8'he2; //or X5,X1,X4
        uut.instruction_memory.memory[18] =8'h40; 

        // 00000000_01000000_11100010_10110011
        // 00_40_e2_b3

        uut.instruction_memory.memory[20] =8'h13; 
        uut.instruction_memory.memory[21] =8'he3; 
        uut.instruction_memory.memory[22] =8'h12; //ori X6,X5,1

        // 00000000_00010010_11100011_00010011
        //00_12_d3_13

        uut.instruction_memory.memory[24] =8'h23; 
        uut.instruction_memory.memory[25] =8'h20; 
        uut.instruction_memory.memory[26] =8'h61; //sw X6,0(X2)
        // 00000000_01100001_00100000_00100011
        // 00_61_20_23

        uut.instruction_memory.memory[28] =8'hb3; 
        uut.instruction_memory.memory[29] =8'h23;
        uut.instruction_memory.memory[30] =8'h41; // slt X7,X2,X4
        //00000000_01000001_00100011_10110011
        //00_41_23_b3
        

        uut.instruction_memory.memory[32] =8'h13;  
        uut.instruction_memory.memory[33] =8'h24;  //slti X8,X2,8
        uut.instruction_memory.memory[34] =8'h81;  
        // 00000000_10000001_00100100_00010011
        // 00_81_24_13

        uut.instruction_memory.memory[36] =8'he3;  
        uut.instruction_memory.memory[37] =8'h8a;   //beq X3,X5,-12
        uut.instruction_memory.memory[38] =8'h51;   
        uut.instruction_memory.memory[39] =8'hfe;


        // 11111110010100011000101011100011
        

        uut.data_mem.memory[1]=8'h01;
        uut.data_mem.memory[2]=8'h02;
        uut.data_mem.memory[3]=8'h03;
        uut.data_mem.memory[4]=8'h04;
        uut.data_mem.memory[5]=8'h05;
        uut.data_mem.memory[6]=8'h06;
        uut.data_mem.memory[7]=8'h07;
        uut.data_mem.memory[8]=8'h08;
        uut.data_mem.memory[12]=8'h04;



        

    
    end

    initial begin
        reset=1;
        #10 reset=0;
        #500 $finish;
    end

endmodule