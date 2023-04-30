module top(
    input in_i,
    output out_o
);

logic in, out;

assign in = in_i;

mod1 mod1_u0(
    .in(in),
    .out(out)
);

assign out_o = out;

endmodule
