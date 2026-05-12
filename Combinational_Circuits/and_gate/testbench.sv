module tb;

reg A, B;
wire C;

and_gate uut(.A(A), .B(B), .C(C));

initial begin
    #100;
    
    $dumpfile("dump.vcd");   // file to store waveform
    $dumpvars(0, tb);        // dump all signals inside tb

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    $finish;
end

endmodule
