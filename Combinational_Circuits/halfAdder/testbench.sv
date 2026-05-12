module tb;

reg A,B;
wire sum,carry;

halfAdder uut(.A(A),.B(B),.sum(sum),.carry(carry));

initial begin
  
  $dumpfile("dump.vcd");
  $dumpvars(0,tb);
  
  A=0;B=0; #10;
  A=0;B=1; #10;
  A=1;B=0; #10;
  A=1;B=1; #10;
  
  $finish;
end
endmodule
  
