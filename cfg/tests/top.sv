module top (
    input               clk,
    input               rst_n,
    input        [1:0]  op,
    output logic [7:0]  out
);

logic [7:0] myVar, nextVal;

always_ff @ (posedge clk) begin : seq_block
    if(!rst_n) begin
        myVar <= '0;
    end else begin
        myVar <= nextVal;
    end
end

always_comb begin : comb_block
    case(op)
        2'b00: nextVal = myVar + 1;
        2'b01: nextVal = myVar - 1; 
        2'b10: nextVal = myVar + 2; 
        2'b11: nextVal = myVar - 2; 
        default: nextVal = myVar;
    endcase
    out = myVar;
end

endmodule