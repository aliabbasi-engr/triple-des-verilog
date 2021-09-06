
// This module splits data to two parts.

module Splitter(
   input [63:0] i_data,
   output [31:0] o_RPT,
	output [31:0] o_LPT
   );

	assign o_LPT = i_data[63:32];
	assign o_RPT = i_data[31:0];

endmodule
