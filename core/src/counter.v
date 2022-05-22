/**************************************
* Module: counter 4 bits
* Date:2022-05-19  
* Author: saul     
*
* Description: counter source to create a macro 
***************************************/

module  counter(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif
output [3:0] out,
input enable,
input clk,
input reset
);

reg [3:0] out;

always @(posedge clk)
begin
    if (reset) begin
        out <= 4'b0;
    end else if (enable) begin
        out <= out + 1;
    end
end

endmodule


