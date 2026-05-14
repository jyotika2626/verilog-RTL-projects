module full_sub(input A,input B,input C, output diff,output Bout);
  
  assign diff= A^B^C;
  assign Bout= (~A) & B +B & C+C & (~A);
  
endmodule
