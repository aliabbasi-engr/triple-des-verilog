
// This module performs the swap logic in each round.

module Swapper(
   input [31:0] i_LPT,
	input [31:0] i_RPT,
   output [31:0] o_LPT,
	output [31:0] o_RPT
   );

	assign o_LPT = i_RPT;
	assign o_RPT = i_LPT;

endmodule
