module sec_reg(
    input        clk,
    input        reset_n,
    input        lock_i,
    input        re_i,
    input        we_i,
    input  [7:0] data_i,
    output [7:0] out_o
);

logic [7:0] data;
logic [2:0] cfg;    /* MSB lock re we  LSB */


always @ (posedge clk, negedge reset_n) begin
    if(!reset_n) begin
        data    <= 8'b0;
        cfg     <= 3'b0;
    end
    else begin 
        // if cfg register is not locked
        // cannot be unlocked once locked until reset
        if(cfg[2] == 1'b0) begin   
            cfg <= {lock_i, re_i, we_i};
        end
        //if we is high
        if(cfg[0] == 1'b1) begin
            data <= data_i;
        end
    end
end

// if re is high
assign out_o = (cfg[1] == 1'b1) ? data : '0;

endmodule