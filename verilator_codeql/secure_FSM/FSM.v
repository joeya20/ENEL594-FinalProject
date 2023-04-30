module FSM (
    input clk,
    input rst_n,
    input secure,
    output logic out
);

typedef enum logic[1:0] { S0,S1,S2,S3 } state;
state current_state, ns;
logic data;

always_ff @(posedge clk or negedge rst_n)
begin
    if(!rst_n) begin
        current_state <= S0;
        data <= '0;
    end
    else begin
        current_state <= ns;
        data <= data + 1;
    end
end

always_comb begin
    out = 1'b0;
    ns = S0;
    case(current_state)
        S0: ns = S1;
        S1: ns = S2;
        S2: ns = (secure == 1'b1) ? S3 : S0;
        S3: begin
            out = data;
            ns = S0;
        end
        default: ;
    endcase
end

endmodule
