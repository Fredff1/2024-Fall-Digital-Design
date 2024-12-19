`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/06 10:36:11
// Design Name: 
// Module Name: data_mem_test
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


module tb_data_memory;


    reg [15:0] address;          
    reg [31:0] write_data;       
    reg read_flag;              
    reg write_flag;              
    reg clk;


    wire [31:0] data_read;       
    
    


    data_memory uut (
        .clk(clk),
        .address(address),
        .write_data(write_data),
        .read_flag(read_flag),
        .write_flag(write_flag),
        .data_read(data_read)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end

 
    initial begin
        
        address = 16'd0;
        write_data = 32'd0;
        read_flag = 1'b0;
        write_flag = 1'b0;

        // Step 1: write
        #10 address = 16'd0; write_data = 32'h11451419; write_flag = 1'b1;
        #10 write_flag = 1'b0; 

        // Step 2: write
        #10 address = 16'd4; write_data = 32'h5A5A5A5A; write_flag = 1'b1;
        #10 write_flag = 1'b0; 

        // Step 3: read data 1
        #10 address = 16'd0; read_flag = 1'b1;
        #10 $display("--------------------------------------------------------");
        #10 $display("Read from Address %d: Data = %h", address, data_read);
        #10 $display("Expected data: h11451419");
        
        #10 read_flag = 1'b0; 

        // Step 4: read data 2
        #10 address = 16'd4; read_flag = 1'b1;
        #10 $display("--------------------------------------------------------");
        #10 $display("Read from Address %d: Data = %h", address, data_read);
        #10 $display("Expected data: 5a5a5a5a");

        #10 read_flag = 1'b0; 

        // Step 5: read from uninitialized
        #10 address = 16'd8; read_flag = 1'b1;
        #10 $display("--------------------------------------------------------");
        #10 $display("Read from Address %d: Data = %h", address, data_read);
        #10 $display("Expected data: undefined");
        #10 $display("--------------------------------------------------------");
        #10 read_flag = 1'b0; 


        #10 $finish;
    end

endmodule