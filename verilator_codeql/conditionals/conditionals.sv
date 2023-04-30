module conds(
    input clk,
    input reset_n,
    input en,
    input  [7:0] data,
    output logic [7:0] out_assign_ternary,
    output logic [7:0] out_always_ternary,
    output logic [7:0] out_always_ifelse,
    output logic [7:0] out_always_case
);
    
logic [7:0] temp;

always_ff @ (posedge clk) begin
    if(!reset_n) begin
        temp <= '0;
    end else begin
        temp <= temp + 1;
    end
end

assign out_assign_ternary = (en == 1'b1) ? temp : '0;

always_comb begin
    case (en)
        1'b1: out_always_case = temp ;
        default: out_always_case = '0;
    endcase
    if(en == 1'b1) begin
        out_always_ifelse = temp;
    end else begin
        out_always_ifelse = '0;
    end
end
endmodule