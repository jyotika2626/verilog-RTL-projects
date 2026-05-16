module moore_fsm(input x,input clk,output reg z);
  
  parameter S0= 2'b00, S1= 2'b01,S2= 2'b10,S3= 2'b11;
  
  reg [1:0] state;
  
  initial begin
    state =S0;
  end
  
  always@(posedge clk)
    begin
      case(state)
        S0:
          if(x==1)
            state <= S1;
        else
          state <= S0;
        S1:
          if(x==0)
            state <= S2;
        else
          state <= S1;
        
        S2:
          if(x==1)
            state <= S3;
        else
          state <= S0;
        S3:
          if(x==1)
            state <= S1;
        else
          state <= S2;
        
        default: state <= S0;
      endcase
    end
  always@(*)
    begin
      case(state)
        S3: z=1;
        default: z=0;
      endcase
    end
endmodule
        
          
  
