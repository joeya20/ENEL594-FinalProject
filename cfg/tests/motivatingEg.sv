module eg (
    input clk,
    input in,
    input en,
    output out
);

logic in_delayed, out_reg;

always_ff @ (posedge clk) begin
    in_delayed <= ~in;
    if(en == 1'b1 && in_delayed != in) begin    
        out_reg <= in;
    end else begin 
        out_reg <= 1'b0;
    end
end

always_ff @ (posedge clk) begin
    in_delayed <= in;
end

assign out = out_reg;

endmodule
