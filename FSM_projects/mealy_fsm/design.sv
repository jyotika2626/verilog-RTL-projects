module mealy_fsm(input clk,input x,output reg z);
  
  parameter S0=2'b00,S1=2'b01,S2=2'b10;
  
  reg [1:0] state;
  
  initial begin
    state=S0;
  end
  always@(posedge clk)
    begin
      case(state)
        S0: if(x)
          state <= S1;
        else
          state <= S0;
        
        S1:
          if(x)
            state <= S1;
        else
          state <= S2;
        S2:
          if(x)
            state <= S1;
        else
          state <= S0;
      endcase
    end
  
  always@(*)
    begin
      case(state)
        S2:
          if(x)
            z=1;
        else
          z=0;
        default:
          z=0;
      endcase
    end
endmodule
