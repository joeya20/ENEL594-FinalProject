module buggy_FSM (
    input clk,
    input rst_n,
    input secure,
    input start,
    output done,
    output logic[1:0] out
);
    
typedef enum logic[1:0] { S0,S1,S2 } state;
state current_state, ns;

always_ff @(posedge clk or negedge rst_n)
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
        S0: ns = (secure == 1'b1 && start == 1'b1) ? S1 : S0;
        S1: ns <= S2;
        S2: ns <= S0;
        default: ;
    endcase
end

assign done = (current_state == S2) ? 1'b1 : 1'b0;
assign out = 2'b00;

endmodule