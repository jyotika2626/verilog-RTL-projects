module tb;
  
reg A,B;
wire diff, borrow;
  
half_sub uut(.A(A),.B(B),.borrow(borrow),.diff(diff));
  
initial begin
  
  $dumpfile("dump.vcd");
  $dumpvars(0,tb);
  
    A=0;B=0;  #10;
    A=0;B=1;  #10;
    A=1;B=0;  #10;
    A=1;B=1;  #10;
    
    $finish;
    
end
  
endmodule
    
