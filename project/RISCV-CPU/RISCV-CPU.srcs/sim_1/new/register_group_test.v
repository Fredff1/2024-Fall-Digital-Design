`timescale 1ns / 1ps

module tb_register_group;

    
    reg clk;                      
    reg [4:0] reg_id_1;           
    reg [4:0] reg_id_2;           
    reg [4:0] rd;
    reg read;
    reg write;
    reg [31:0] data;              

    
    wire [31:0] reg_data_1;       
    wire [31:0] reg_data_2;       
    

    
    register_group uut (
        .clk(clk),
        .reg_id_1(reg_id_1),
        .reg_id_2(reg_id_2),
        .reg_d(rd),
        .read(read),
        .write(write),
        .data(data),
        .reg_data_1(reg_data_1),
        .reg_data_2(reg_data_2)
    );

    

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
        
    end

    
    initial begin
        
        reg_id_1 = 5'd0;
        reg_id_2 = 5'd0;
        rd=5'd0;
        read=0;
        write=0;
        data = 32'd0;
        uut.registers[1]=32'b0;
        uut.registers[2]=32'b0;

        

        // Step 1: read from reg_0 reg_1
        #10 reg_id_1 = 5'd0; reg_id_2 = 5'd1;read=1;
        #10 $display("Read Register 0: Data = %h", reg_data_1);
        $display("Expected: 00000000");
        $display("--------------------------------------------------------");

        // Step 2: write ro reg_1
        #10 rd = 5'd1; data = 32'h0034; write=1;
        #10 $display("Write Register 1: Data = %h", data);
        $display("Expected: 0034");
        $display("--------------------------------------------------------");
        write=0;

        // Step 3: read from reg_1
        #10 reg_id_1 = 5'd1; 
        #10 $display("Read Register 1: Data = %h", reg_data_1);
        $display("Expected: 0034");
        $display("--------------------------------------------------------");

        // Step 4: write to reg_2
        #10 rd = 5'd2; data = 32'h5678; write=1;
        #10 $display("Write Register 2: Data = %h", data);
        $display("Expected: 5678");
        $display("--------------------------------------------------------");
        write=0;

        // Step 5: read from reg_2
        #10 reg_id_2 = 5'd2; 
        #10 $display("Read Register 2: Data = %h", reg_data_2);
        $display("Expected: 5678");
        $display("--------------------------------------------------------");

        #10 $finish;
    end

endmodule