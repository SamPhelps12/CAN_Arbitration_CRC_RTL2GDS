`timescale 1ns/1ps
module tb_crc;

reg clk;
reg rst;
reg en;
reg din;
wire [14:0] crc_out;

crc uut (
    .clk(clk),
    .rst(rst),
    .en(en),
    .din(din),
    .crc_out(crc_out)
);

always #5 clk = ~clk;

reg [31:0] data;
integer i;

initial begin
    $dumpfile("crc_rt_sim.vcd");
    $dumpvars(0, tb_crc);

    clk = 0;
    rst = 1;
    en  = 0;
    din = 0;

    // Deassert reset away from a clock edge
    #22;
    rst = 0;

    // Small delta so en/din changes don't race the clock edge
    #1;
    en  = 1;

    data = 32'hA5C3F012;

    // Drive din synchronized to the clock instead of raw #10 delays
    for (i = 31; i >= 0; i = i - 1) begin
        din = data[i];
        @(posedge clk);
        #1; // hold din stable a bit past the edge before next change
    end

    en = 0;

    // Wait one more clock edge so the last bit's effect is captured
    @(posedge clk);
    #1;

    $display("CRC = %h", crc_out);

    #20;
    $finish;
end

endmodule
