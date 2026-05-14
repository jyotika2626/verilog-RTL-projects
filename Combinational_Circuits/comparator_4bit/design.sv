module comp_4bit(input [3:0] A,input [3:0] B, output G,output L, output eq);
  
  assign G= A>B;
  assign L=A<B;
  assign eq= A==B;
  
endmodule
  
