
// This module performs the process of generating keys for each round.

module Key_Generator(
	input [63:0] i_64bit_key,
	input [3:0] i_round,
	output [47:0] o_48bit_key
	);
	
	
	wire [55:0] w_cipherkey;
	wire [55:0] w_shifted_key;
	
	
	Key_Parity_Dropper Key_Parity_Dropper_inst
	(
		.i_key(i_64bit_key) ,	// input [63:0] i_key_sig
		.o_cipherkey(w_cipherkey) 	// output [55:0] o_cipherkey_sig
	);
	
	
	Key_Shifter Key_Shifter_inst
	(
		.i_key(w_cipherkey) ,	// input [55:0] i_key_sig
		.i_round(i_round) ,	// input [3:0] i_round_sig
		.o_shifted_key(w_shifted_key) 	// output [55:0] o_shifted_key_sig
	);
	
	
	Key_Compression_Permutation Key_Compression_Permutation_inst
	(
		.i_key(w_shifted_key) ,	// input [55:0] i_key_sig
		.o_permuted_key(o_48bit_key) 	// output [47:0] o_permuted_key_sig
	);
	
endmodule