module tb;
  
reg A,B,C;
wire D;
  
or_gate uut(.A(A),.B(B),.C(C),.D(D));
initial begin
    #100;
  
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
    
    A = 0; B = 0; C = 0;  #10;
    A = 0; B = 0; C = 1;  #10;
    A = 0; B = 1; C = 0;  #10;
    A = 0; B = 1; C = 1;  #10;
    A = 1; B = 0; C = 0;  #10;
    A = 1; B = 0; C = 1;  #10;
    A = 1; B = 1; C = 0;  #10;
    A = 1; B = 1; C = 1;  #10;
    $finish;
end
endmodule
