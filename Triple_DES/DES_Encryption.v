
// This module performs the DES algorithm logic.

module DES_Encryption(
	input [63:0] i_plaintext,
	input [63:0] i_key,
   output [63:0] o_ciphertext
   );

	wire [63:0] w_permuted_text;

	wire [31:0] w_rpt;
	wire [31:0] w_lpt;

	wire [31:0] w_r1_rpt;
	wire [31:0] w_r1_lpt;
	wire [47:0] w_r1_key;

	wire [31:0] w_r2_rpt;
	wire [31:0] w_r2_lpt;
	wire [47:0] w_r2_key;

	wire [31:0] w_r3_rpt;
	wire [31:0] w_r3_lpt;
	wire [47:0] w_r3_key;

	wire [31:0] w_r4_rpt;
	wire [31:0] w_r4_lpt;
	wire [47:0] w_r4_key;

	wire [31:0] w_r5_rpt;
	wire [31:0] w_r5_lpt;
	wire [47:0] w_r5_key;

	wire [31:0] w_r6_rpt;
	wire [31:0] w_r6_lpt;
	wire [47:0] w_r6_key;

	wire [31:0] w_r7_rpt;
	wire [31:0] w_r7_lpt;
	wire [47:0] w_r7_key;

	wire [31:0] w_r8_rpt;
	wire [31:0] w_r8_lpt;
	wire [47:0] w_r8_key;

	wire [31:0] w_r9_rpt;
	wire [31:0] w_r9_lpt;
	wire [47:0] w_r9_key;

	wire [31:0] w_r10_rpt;
	wire [31:0] w_r10_lpt;
	wire [47:0] w_r10_key;

	wire [31:0] w_r11_rpt;
	wire [31:0] w_r11_lpt;
	wire [47:0] w_r11_key;

	wire [31:0] w_r12_rpt;
	wire [31:0] w_r12_lpt;
	wire [47:0] w_r12_key;

	wire [31:0] w_r13_rpt;
	wire [31:0] w_r13_lpt;
	wire [47:0] w_r13_key;

	wire [31:0] w_r14_rpt;
	wire [31:0] w_r14_lpt;
	wire [47:0] w_r14_key;

	wire [31:0] w_r15_rpt;
	wire [31:0] w_r15_lpt;
	wire [47:0] w_r15_key;

	wire [31:0] w_r16_rpt;
	wire [31:0] w_r16_lpt;
	wire [47:0] w_r16_key;

	wire [63:0] w_merged_text;


	// Initial permutation
	Initial_Permutation Initial_Permutation_inst
	(
		.i_text(i_plaintext) ,	// input [63:0] i_text_sig
		.o_permuted_text(w_permuted_text) 	// output [63:0] o_permuted_text_sig
	);
	
	
	// Splitting data
	Splitter Splitter_inst
	(
		.i_data(w_permuted_text) ,	// input [63:0] i_data_sig
		.o_RPT(w_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 1
	Key_Generator Key_Generator_inst_1
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b0000) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r1_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_1
	(
		.i_RPT(w_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r1_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r1_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r1_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 2
	Key_Generator Key_Generator_inst_2
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b0001) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r2_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_2
	(
		.i_RPT(w_r1_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r1_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r2_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r2_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r2_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 3
	Key_Generator Key_Generator_inst_3
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b0010) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r3_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_3
	(
		.i_RPT(w_r2_rpt) ,	// input [31:0] i_RPT_sig4	.i_LPT(w_r2_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r3_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r3_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r3_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 4
	Key_Generator Key_Generator_inst_4
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b0011) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r4_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_4
	(
		.i_RPT(w_r3_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r3_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r4_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r4_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r4_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 5
	Key_Generator Key_Generator_inst_5
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b0100) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r5_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_5
	(
		.i_RPT(w_r4_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r4_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r5_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r5_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r5_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 6
	Key_Generator Key_Generator_inst_6
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b0101) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r6_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_6
	(
		.i_RPT(w_r5_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r5_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r6_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r6_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r6_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 7
	Key_Generator Key_Generator_inst_7
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b0110) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r7_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_7
	(
		.i_RPT(w_r6_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r6_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r7_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r7_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r7_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 8
	Key_Generator Key_Generator_inst_8
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b0111) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r8_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_8
	(
		.i_RPT(w_r7_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r7_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r8_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r8_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r8_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 9
	Key_Generator Key_Generator_inst_9
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b1000) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r9_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_9
	(
		.i_RPT(w_r8_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r8_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r9_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r9_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r9_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 10
	Key_Generator Key_Generator_inst_10
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b1001) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r10_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_10
	(
		.i_RPT(w_r9_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r9_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r10_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r10_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r10_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 11
	Key_Generator Key_Generator_inst_11
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b1010) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r11_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_11
	(
		.i_RPT(w_r10_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r10_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r11_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r11_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r11_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 12
	Key_Generator Key_Generator_inst_12
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b1011) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r12_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_12
	(
		.i_RPT(w_r11_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r11_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r12_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r12_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r12_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 13
	Key_Generator Key_Generator_inst_13
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b1100) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r13_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_13
	(
		.i_RPT(w_r12_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r12_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r13_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r13_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r13_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 14
	Key_Generator Key_Generator_inst_14
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b1101) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r14_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_14
	(
		.i_RPT(w_r13_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r13_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r14_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r14_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r14_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 15
	Key_Generator Key_Generator_inst_15
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b1110) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r15_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_15
	(
		.i_RPT(w_r14_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r14_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r15_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r15_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r15_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	// Round 16
	Key_Generator Key_Generator_inst_16
	(
		.i_64bit_key(i_key) ,	// input [63:0] i_64bit_key_sig
		.i_round(4'b1111) ,	// input [3:0] i_round_sig
		.o_48bit_key(w_r16_key) 	// output [47:0] o_48bit_key_sig
	);
	
	Round Round_inst_16
	(
		.i_RPT(w_r15_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r15_lpt) ,	// input [31:0] i_LPT_sig
		.i_key(w_r16_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_r16_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_r16_lpt) 	// output [31:0] o_LPT_sig
	);


	// Merging two halves of data
	Concatenator Concatenator_inst
	(
		.i_RPT(w_r16_rpt) ,	// input [31:0] i_RPT_sig
		.i_LPT(w_r16_lpt) ,	// input [31:0] i_LPT_sig
		.o_data(w_merged_text) 	// output [63:0] o_data_sig
	);


	// Final permutation
	Final_Permutation Final_Permutation_inst
	(
		.i_text(w_merged_text) ,	// input [63:0] i_text_sig
		.o_permuted_text(o_ciphertext) 	// output [63:0] o_permuted_text_sig
	);

endmodule
