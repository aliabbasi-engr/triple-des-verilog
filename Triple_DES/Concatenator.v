
// This module merges the two parts of data.

module Concatenator(
   input [31:0] i_RPT,
	input [31:0] i_LPT,
   output [63:0] o_data
   );

	assign o_data = {i_LPT, i_RPT};

endmodule
