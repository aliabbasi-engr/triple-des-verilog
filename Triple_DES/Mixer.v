
// This module performs the mix logic in each round.

module Mixer(
   input [31:0] i_RPT,
	input [31:0] i_LPT,
	input [47:0] i_key,
   output [31:0] o_RPT,
	output [31:0] o_LPT
	);

	wire [31:0] o_des_function;

	assign o_RPT = i_RPT;

	
	DES_Function DES_Function_inst
	(
		.i_data(i_RPT) ,	// input [31:0] i_data_sig
		.i_key(i_key) ,	// input [47:0] i_key_sig
		.o_data(o_des_function) 	// output [31:0] o_data_sig
	);


	Bitwise_XOR Bitwise_XOR_inst
	(
		.i_dataA(i_LPT) ,	// input [DATA_WIDTH:0] i_dataA_sig
		.i_dataB(o_des_function) ,	// input [DATA_WIDTH:0] i_dataB_sig
		.o_result(o_LPT) 	// output [DATA_WIDTH:0] o_result_sig
	);

	defparam Bitwise_XOR_inst.DATA_WIDTH = 32;

endmodule
