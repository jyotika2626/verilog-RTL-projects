module tb;
  
reg [3:0]D,clk;
wire [3:0] Q;
  
registers_4bit uut(.D(D),.clk(clk),.Q(Q));
  
initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(1,tb);
    
    clk = 0;
    
    forever #5 clk= ~clk;
    
end
  initial begin
    
    D=4'b0000;  #10;
    D=4'b0100;  #10;
    D=4'b0011;  #10;
    D=4'b1111;  #10;
    $finish;
  end
endmodule
