module secure_reg(
    input clk,
    input rst_n,
    input re,
    input we,
    input [7:0] wd,
    output [7:0] out
);

logic [7:0] data;

always_ff @ (posedge clk) begin
    if(!rst_n) begin
        data <= '0;
    end else begin
        if(re) begin
            data <= wd;
        end
    end
end

assign out = (re == 1'b1) ? data : '0; 

endmodule