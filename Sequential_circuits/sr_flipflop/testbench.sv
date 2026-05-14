module tb;
  
reg S,R,clk;
wire Q;
  
sr_ff uut(.S(S),.R(R),.clk(clk),.Q(Q));
  
initial begin
  
  $dumpfile("dump.vcd");
  $dumpvars(0,tb);
  
  clk=0;
  
  forever #5 clk=~clk;
  
end
  initial begin
    
    S=0;R=0;  #10;
    S=0;R=1;  #10;
    S=1;R=0;  #10;
    S=1;R=1;  #10;
    $finish;
  end
endmodule
