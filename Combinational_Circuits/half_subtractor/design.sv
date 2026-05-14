module half_sub(input A,input B,output diff, output borrow);
  
  assign diff= A ^ B;
  assign borrow= (~A) & B;
  
endmodule
  
