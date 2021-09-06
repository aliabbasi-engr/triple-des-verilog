
// This module performs the DES function.

module DES_Function(
    input [31:0] i_data,
    input [47:0] i_key,
    output [31:0] o_data
    );

	wire [47:0] w_expanded_data;
	wire [47:0] w_xored_data;
	wire [31:0] w_sboxes_reduced_data;

	Expansion_D_Box Expansion_D_Box_inst
	(
		.i_data(i_data) ,	// input [31:0] i_data_sig
		.o_expanded_data(w_expanded_data) 	// output [47:0] o_expanded_data_sig
	);


	Bitwise_XOR Bitwise_XOR_inst
	(
		.i_dataA(w_expanded_data) ,	// input [DATA_WIDTH - 1:0] i_dataA_sig
		.i_dataB(i_key) ,	// input [DATA_WIDTH - 1:0] i_dataB_sig
		.o_result(w_xored_data) 	// output [DATA_WIDTH - 1:0] o_result_sig
	);

	defparam Bitwise_XOR_inst.DATA_WIDTH = 48;


	S_Boxes S_Boxes_inst
	(
		.i_vector(w_xored_data) ,	// input [47:0] i_vector_sig
		.o_vector(w_sboxes_reduced_data) 	// output [31:0] o_vector_sig
	);


	Straight_D_Box Straight_D_Box_inst
	(
		.i_data(w_sboxes_reduced_data) ,	// input [31:0] i_data_sig
		.o_straightened_data(o_data) 	// output [31:0] o_straightened_data_sig
	);

endmodule
