
// This module implements a parameterized bitwise XOR logic.

module Bitwise_XOR(
    input [DATA_WIDTH - 1:0] i_dataA,
	 input [DATA_WIDTH - 1:0] i_dataB,
    output [DATA_WIDTH - 1:0] o_result
    );
	 
	 parameter DATA_WIDTH = 48;

	 assign o_result = i_dataA ^ i_dataB;

endmodule
