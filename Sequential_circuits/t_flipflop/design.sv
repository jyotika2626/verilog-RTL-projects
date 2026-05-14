module t_ff(input T, input clk, output reg Q);
  
  always@(posedge clk)
    begin
      if(T==1)
        Q <= (~Q);
      else
        Q <= Q;
      
    end
endmodule
      
