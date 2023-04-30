module buggy_FSM (
    input rst_n,
    input clk,
    output logic[1:0] out
);
    
typedef enum logic[1:0] { S0,S1,S2,S3 } state /*verilator public*/;
state current_state;

always_ff @(posedge clk or negedge rst_n)
begin
    if(!rst_n) begin
        current_state <= S0;
    end
    else begin
        case(current_state)
            S0: current_state <= S1;
            S1: current_state <= S2;
            S2: current_state <= S0;
        endcase
    end
end

assign out = current_state;

endmodule