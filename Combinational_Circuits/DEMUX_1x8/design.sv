module DEMUX1x8(input S2, input S1, input S0,input I,output Y0,output Y1,output Y2,output Y3,output Y4,output Y5,output Y6,output Y7);
  
  assign Y0 = (~S2 & ~S1 & ~S0) & I; 
  assign Y1 = (~S2 & ~S1 & S0) & I; 
  assign Y2 = (~S2 & S1 & ~S0) & I; 
  assign Y3 = (~S2 & S1 & S0) & I; 
  assign Y4 = (S2 & ~S1 & ~S0) & I; 
  assign Y5 = (S2 & ~S1 & S0) & I; 
  assign Y6 = (S2 & S1 & ~S0) & I; 
  assign Y7 = S2 & S1 & S0 & I;
  
endmodule
  
