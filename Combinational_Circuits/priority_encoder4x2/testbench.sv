module tb;
  
reg I3,I2,I1,I0;
wire Y1,Y0;
  
priority_encoder4x2 uut(.I3(I3),.I2(I2),.I1(I1),.I0(I0),.Y1(Y1),.Y0(Y0));
  
initial begin
  
  $dumpfile("dump.vcd");
  $dumpvars(0,tb);
  
  I3=0;I2=0;I1=0;I0=1; #10;
  I3=0;I2=0;I1=1;I0=1; #10;
  I3=0;I2=1;I1=1;I0=1; #10;
  I3=1;I2=1;I1=1;I0=1; #10;
  
  $finish;
end
endmodule
