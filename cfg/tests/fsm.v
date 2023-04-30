module fsm (
    input clk,
    input reset_n,
    input [7:0] in,
    input start,
    output [7:0] out,
    output done
);

typedef enum logic[1:0] { IDLE, COMP, DONE } state_t;

logic [7:0] data;
state_t state, ns;

always_ff @ (posedge clk) begin
    if(!reset_n) begin
        state <= IDLE;
        data <= '0;
    end
    else begin
        state <= ns;
        if(ns == COMP) begin
            data <= in;
        end else begin
            data <= data + 1;
        end
    end
end

always_comb begin    
    case (state)
        IDLE: ns = (start == 1'b1) ? COMP : IDLE;
        COMP: ns = DONE;
        DONE: ns = IDLE;
        default: ns = IDLE;
    endcase
end

assign done = (state == DONE);
assign out = (state == DONE) ? data[2:0] : '0;

endmodule


