module tb;
  
reg [7:0]A,B;
reg [3:0]opcode;
wire [7:0]Y;
wire Cout,zero,equal;
  
aluSystem_8BIT uut(.A(A),.B(B),.opcode(opcode),.Y(Y),.Cout(Cout),.zero(zero),.equal(equal));
  
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);

    A=8'b00101000;
    B=8'b10001011;
    
    opcode = 4'b0000;
    #10;
    opcode = 4'b0001;
    #10;
    opcode = 4'b0010;
    #10;
    opcode = 4'b0011;
    #10;
    opcode = 4'b0100;
    #10;
    opcode=4'b0101;
    #10;
    opcode = 4'b0101;
    #10;
    opcode = 4'b0111;
    #10;
    opcode=4'b1000;
    #10;
    opcode = 4'b1001;
    #10;
    opcode = 4'b1010;
    #10;
    opcode=4'b1011;
    #10;
    opcode=4'b1100;
    #10;
    opcode = 4'b1101;
    #10;
    
    $finish;
  end
endmodule
