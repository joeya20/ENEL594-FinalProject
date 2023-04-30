module ctrl(
    input clk, 
    input rst_n,
    input [2:0] cfg,
    input [7:0] wd,
    output [7:0] out
);

// lock we re
logic [2:0] cfg_reg;

always_ff @ (posedge clk) begin
    if(!rst_n) begin
        cfg_reg <= '0;
    end else begin
        if(cfg_reg[2] == 1'b0) begin
            cfg_reg <= cfg;
        end
    end            
end

secure_reg secure_reg_u0(
    .*,
    .re(cfg_reg[0]),
    .we(cfg_reg[1])
);

secure_reg secure_reg_u1(
    .*,
    .re(cfg_reg[0]),
    .we(cfg_reg[1])
);

secure_reg secure_reg_u2(
    .*,
    .re(cfg_reg[0]),
    .we(cfg_reg[1])
);

endmodule