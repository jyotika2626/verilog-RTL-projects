module tb;
  
reg clk;
wire [3:0] Q;
  
sync_counter uut(.clk(clk),.Q(Q));
  
initial begin
  
    $dumpfile("dump.vcd");
    $dumpvars(1,tb);
    
    clk = 0;
    forever #5 clk= ~clk;
end
  initial begin
    
    #200;
    $finish;
    
  end
endmodule
