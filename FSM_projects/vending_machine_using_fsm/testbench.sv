module tb;
  
reg clk,coin5,coin10;
wire dispense;
  
vending_machine uut(.clk(clk),.coin5(coin5),.coin10(coin10),.dispense(dispense));
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    
    coin5 = 0;
    coin10 = 0;
    
    //insert 5
    #10;
    coin5=1;
    #10;
    coin5=0;
    
    //insert another 5
    #10;
    coin5=1;
    #10;
    coin5=0;
    
    //insert 10 dirctly
    #20;
    coin10=1;
    #20;
    coin10=0;
    
    #30;
    
    $finish;
  end
endmodule
