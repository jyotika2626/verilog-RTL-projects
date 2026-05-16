module vending_machine(

    input clk,
    input coin5,
    input coin10,

    output reg dispense

);

parameter S0  = 2'b00,
          S5  = 2'b01,
          S10 = 2'b10;

reg [1:0] state;

initial begin
    state = S0;
end


// State Transition Logic
always @(posedge clk)
begin

    case(state)

        S0:
        begin

            if(coin10)
                state <= S10;

            else if(coin5)
                state <= S5;

            else
                state <= S0;

        end


        S5:
        begin

            if(coin5 || coin10)
                state <= S10;

            else
                state <= S5;

        end


        S10:
        begin

            state <= S0;

        end


        default:
            state <= S0;

    endcase

end


// Output Logic
always @(*)
begin

    case(state)

        S10:
            dispense = 1;

        default:
            dispense = 0;

    endcase

end

endmodule
