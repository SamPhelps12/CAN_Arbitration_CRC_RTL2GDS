module arb (
    input         clk,
    input         rst,
    input         start,
    input  [10:0] id,
    input         bus,

    output reg    tx,
    output reg    lost,
    output reg    done,
    output reg [3:0] cnt
);

reg active;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        active <= 1'b0;
        cnt    <= 4'd0;
        tx     <= 1'b1;
        lost   <= 1'b0;
        done   <= 1'b0;
    end
    else begin
        done <= 1'b0;

        if (start && !active) begin
            active <= 1'b1;
            cnt    <= 4'd0;
            lost   <= 1'b0;
        end
        else if (active) begin

            tx <= id[10-cnt];

            if (id[10-cnt] && !bus) begin
                lost   <= 1'b1;
                active <= 1'b0;
                done   <= 1'b1;
            end
            else if (cnt == 4'd10) begin
                active <= 1'b0;
                done   <= 1'b1;
            end
            else begin
                cnt <= cnt + 1'b1;
            end
        end
    end
end

endmodule
