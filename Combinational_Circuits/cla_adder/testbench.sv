module tb;
  
reg [3:0]A,B;
reg Cin;
wire [3:0]sum;
wire Cout;
  
cla_adder uut(.A(A),.B(B),.Cin(Cin),.sum(sum),.Cout(Cout));
  
initial begin
  
  $dumpfile("dump.vcd");
  $dumpvars(0,tb);
  
  A=4'b0000;B=4'b1011;Cin=0;   #10;
  A=4'b1111;B=4'b1010;Cin=1;   #10;
  A=4'b0101;B=4'b0011;Cin=0;   #10;
 
  $finish;
  
end
  
endmodule
