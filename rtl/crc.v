module crc (
    input        clk,
    input        rst,
    input        en,
    input        din,
    output [14:0] crc_out
);

reg  [14:0] crc;
wire        fb;

assign fb = din ^ crc[14];

always @(posedge clk) begin
    if (rst) begin
        crc <= 15'd0;
    end
    else if (en) begin
        crc[14] <= crc[13];
        crc[13] <= crc[12];
        crc[12] <= crc[11];
        crc[11] <= crc[10] ^ fb;
        crc[10] <= crc[9];
        crc[9]  <= crc[8];
        crc[8]  <= crc[7] ^ fb;
        crc[7]  <= crc[6] ^ fb;
        crc[6]  <= crc[5];
        crc[5]  <= crc[4];
        crc[4]  <= crc[3] ^ fb;
        crc[3]  <= crc[2] ^ fb;
        crc[2]  <= crc[1];
        crc[1]  <= crc[0];
        crc[0]  <= fb;
    end
end

assign crc_out = crc;

endmodule
