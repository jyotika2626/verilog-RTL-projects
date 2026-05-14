module tb;
  
reg [3:0]A,B;
wire G,L,eq;
  
comp_4bit uut(.A(A),.B(B),.G(G),.L(L),.eq(eq));
  
initial begin
  
  $dumpfile("dump.vcd");
  $dumpvars(0,tb);
  
  A=4'b0000; B=4'b0011;  #10;
  A=4'b0110; B=4'b1011;  #10;
  A=4'b1000; B=4'b0001;  #10;
  A=4'b1111; B=4'b1001;  #10;
  
  $finish;
end
  
endmodule
  
  
