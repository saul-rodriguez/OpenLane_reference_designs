/************************************************
 * Core example consisting of 2 macro counters
 * and some external circuitry
 ***********************************************/

module  core_cells(
	`ifdef USE_POWER_PINS
	        inout vccd1,	// User area 1 1.8V supply
	        inout vssd1,	// User area 1 digital ground
	`endif

		input enable,
		input clk,
		input reset,
		output [3:0] out1,
		//output out2
		output reg out2		
		);


wire [3:0] out_c2;

//assign out2 = out_c2[3];

		
always @(posedge clk) begin
	if (reset) begin
		out2 <= 1'b0;
	end else begin
		out2 <= &out_c2;	
	end
	
end

	
counter c1(`ifdef USE_POWER_PINS
	   .vccd1(vccd1),	// User area 1 1.8V power	
	   .vssd1(vssd1),	// User area 1 digital ground
	   `endif
	   .out(out1),
	   .enable(enable),
	   .clk(clk),
	   .reset(reset)
);

counter c2(`ifdef USE_POWER_PINS
	   .vccd1(vccd1),	// User area 1 1.8V power	
	   .vssd1(vssd1),	// User area 1 digital ground
	   `endif
	   .out(out_c2),
	   .enable(enable),
	   .clk(clk),
	   .reset(reset)
);	
	
endmodule
