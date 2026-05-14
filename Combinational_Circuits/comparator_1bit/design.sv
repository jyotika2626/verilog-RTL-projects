module comparator_1bit(input A, input B, output greater,output less,output eq);
  
  assign greater= A &(~B);
  assign less= (~A) & B;
  assign eq= ~(A ^ B);
  
endmodule
