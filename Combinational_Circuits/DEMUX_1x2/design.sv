module DEMUX1x2(input S, input I,output Y0, output Y1);
  assign Y0 = (~S) & I; 
  assign Y1=S & I;
endmodule
  
