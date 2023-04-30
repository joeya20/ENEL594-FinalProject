module simple (
    input rst_n,
    input clk,
    input in,
    output logic out,
    output logic out2,
    output logic [7:0] data_out0,
    output logic [7:0] data_out1,
    output logic data_logic_out
);
    wire temp;
    logic [7:0] temp2;

    assign temp = in;

    always_comb begin
        if(temp) begin
                if(!temp) begin
                    data_out0 = out;
                end else begin                    
                    data_out0 = in;
                end
        end else begin
            data_out0 = '0;
        end
    end

    always @ (*) begin
        case (in)
            1'b0: begin
                out = ~in;
                out2 = in;
            end
            1'b1: begin
                out = in;
                out2 = ~in;
            end
            default: ;
        endcase
    end

    always_ff @ (posedge clk, negedge rst_n) begin
        data_logic_out <= data_logic_out + in;
        if(temp) begin
            if(~temp) begin                
                data_out1 = out;
            end else begin
                data_out1 = temp2;
            end
        end else begin
            if(~temp) begin                
                data_out1 = '0;
            end else begin
                data_out1 = temp2;
            end
        end
    end

endmodule
