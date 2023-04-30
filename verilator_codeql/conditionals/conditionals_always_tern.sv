module conds(
    input clk,
    input reset_n,
    input en,
    input  [7:0] data,
    output logic [7:0] out_always_ternary
);
    
logic [7:0] temp;

always_ff @ (posedge clk) begin
    if(!reset_n) begin
        temp <= '0;
    end else begin
        temp <= temp + 1;
    end
end

always_comb begin
    out_always_ternary = (en == 1'b1) ? temp : '0;
end

endmodule