`timescale 1ns/1ps

module tb_arb;

reg clk;
reg rst;
reg start;
reg bus;

reg [10:0] id;

wire tx;
wire lost;
wire done;
wire [3:0] cnt;

arb dut (
    .clk(clk),
    .rst(rst),
    .start(start),
    .id(id),
    .bus(bus),
    .tx(tx),
    .lost(lost),
    .done(done),
    .cnt(cnt)
);

// Clock
always #5 clk = ~clk;

// VCD dump
initial begin
    $dumpfile("arb_postlay_sim.vcd");
    $dumpvars(0, tb_arb);
end

// Stimulus
initial begin
    clk   = 0;
    rst   = 1;
    start = 0;
    bus   = 1;
    id    = 11'b00100100011;

    #20;
    rst = 0;

    #10;
    start = 1;

    #10;
    start = 0;

    // Bus follows transmitted bit
    repeat (11) begin
        #10;
        bus = tx;
    end

    // Arbitration loss example
    #20;
    rst = 1;
    #10;
    rst = 0;

    id = 11'b11111111111;

    #10;
    start = 1;
    #10;
    start = 0;

    // Force dominant bit on bus
    repeat (3) begin
        #10;
        bus = 1;
    end

    #10;
    bus = 0;

    repeat (10)
        #10;

    #20;
    $finish;
end

endmodule
