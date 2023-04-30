module killSet(
    input logic in
);

logic def1, def2;

always_comb begin
    def1 = in;
    def1 = ~in;
end

always_comb begin
    def2 = 0;
    if(in) begin
        def2 = ~in;
    end else begin
        def2 = in;
    end
end

endmodule
