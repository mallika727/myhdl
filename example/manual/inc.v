// File: inc.v
// Generated by MyHDL 1.0dev
// Date: Sun May 22 18:46:37 2016


`timescale 1ns/10ps

module inc (
    count,
    enable,
    clock,
    reset
);
// Incrementer with enable.
// 
// count -- output
// enable -- control input, increment when 1
// clock -- clock input
// reset -- asynchronous reset input

output [7:0] count;
reg [7:0] count;
input enable;
input clock;
input reset;



always @(posedge clock, negedge reset) begin: INC_SEQ
    if (reset == 0) begin
        count <= 0;
    end
    else begin
        if (enable) begin
            count <= (count + 1);
        end
    end
end

endmodule
