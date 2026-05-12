module tb;
  
reg S2,S1,S0,I;
wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;

DEMUX1x8 uut(.S2(S2),.S1(S1),.S0(S0),.I(I),.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3),.Y4(Y4),.Y5(Y5),.Y6(Y6),.Y7(Y7));
  
initial begin
  #100;
  
  $dumpfile("dump.vcd");
  $dumpvars(0,tb);
  
  I=1;
  
  S2=0; S1=0; S0=0;  #10;
  S2=0; S1=0; S0=1;  #10;
  S2=0; S1=1; S0=0;   #10;
  S2=0; S1=1; S0=1;   #10;
  S2=1; S1=0; S0=0;   #10;
  S2=1; S1=0; S0=1;   #10;
  S2=1; S1=1; S0=0;  #10;
  S2=1; S1=1; S0=1;   #10;
  $finish;
  
end
endmodule
