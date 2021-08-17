`default_nettype none
`timescale 1ns/1ns

`include "./src/PwmCore.v"

module pwm (
    input wire clk,
    input wire reset,
    output wire out,
    input wire [7:0] level
    );

    PwmCore core (.clk(clk), .reset(reset), .io_pwm(out), .io_level(level));

endmodule
