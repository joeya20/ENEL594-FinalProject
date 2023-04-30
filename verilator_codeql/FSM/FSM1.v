module buggy_FSM (
    input rst_n,
    input clk,
    output logic[1:0] out
);
    
typedef enum logic[1:0] { S0,S1,S2 } state;
state current_state, ns;

always_ff @(posedge clk)
begin
    if(!rst_n) begin
        current_state <= S0;
    end
    else begin
        current_state <= ns;
    end
end

always_comb begin
    case(current_state)
        S0: ns <= S1;
        S1: ns <= S2;
        S2: ns <= S0;
    endcase
end

assign out = current_state;

endmodule