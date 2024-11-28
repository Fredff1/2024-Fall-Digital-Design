`timescale 1ns / 1ps



module Controller_tb;


    reg CLK100MHZ;
    reg rst;
    reg [3:0] item_type;
    reg [3:0] money_input;
    reg reset_money_input;


    wire purchase_success;
    wire [6:0] seg;
    wire [7:0] AN;
    wire DP;
    wire [7:0] item_price;           
    wire [7:0] amount_paid;    
    wire button_pressed;
    wire [3:0] debounced_money_input;


    Controller uut (
        .CLK100MHZ(CLK100MHZ),
        .rst(rst),
        .item_type(item_type),
        .money_input(money_input),
        .reset_money_input(reset_money_input),
        .purchase_success(purchase_success),
        .seg(seg),
        .AN(AN),
        .DP(DP),
        .item_price(item_price),
        .amount_paid(amount_paid),
       .button_pressed(button_pressed),
       .debounced_money_input(debounced_money_input)
        
    );


    always #5 CLK100MHZ = ~CLK100MHZ;
    

    initial begin

        CLK100MHZ = 0;
        rst = 1;
        item_type = 3'b000;
        money_input = 4'b0000;
        reset_money_input = 0;


        #20;
        rst = 0;


        item_type = 3'b010;
        #20;


        money_input = 4'b0001;
        #200000;             
        money_input = 4'b0000; 
        #200000;

        money_input = 4'b0001; 
        #200000;        
        money_input = 4'b0000; 
        #200000;

 
        #20;
        if (purchase_success)
            $display("Test Case 1 Passed: Purchase successful for item 3'b010");
        else
            $display("Test Case 1 Failed: Purchase not successful for item 3'b010");

 
        item_type = 3'b101;
        #20;


        repeat (5) begin
            money_input = 4'b0100; 
            #21474837;             
            money_input = 4'b0000; 
            #21474847;
        end
        
        rst = 1;
        #20;
        rst = 0;
        #21474837;
        
        item_type = 3'b010;
        repeat (3) begin
            money_input = 4'b0001; 
            #21474837;             
            money_input = 4'b0000; 
            #21474847;
        end

    
        #20;
        if (purchase_success)
            $display("Test Case 2 Passed: Purchase successful for item 3'b101");
        else
            $display("Test Case 2 Failed: Purchase not successful for item 3'b101");

       
        $stop;
    end

endmodule
