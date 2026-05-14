module updown_counter(input clk,input mode, output reg [3:0] count);
  
  initial begin
    count = 0;
  end
  
  always@(posedge clk)
    begin
      if(mode==1)
        count <= count + 1;
   
  else
    count <= count - 1;
  end
endmodule
