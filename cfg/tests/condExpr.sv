module condExpr(
    input in,
    output out
);
logic ass1, ass2, ass3;

assign out = (in == 1'b1) ? 1'b0 : (in == 1'bx) ? 1'bz : 1'b1;

// always_comb begin
//     ass1 = in;
//     ass2 = (in == 1'b1) ? 1'b0 : 1'b1;
//     ass3 = in;
// end
endmodule