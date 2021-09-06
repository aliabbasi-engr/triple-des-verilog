
// Top-level module

module Triple_DES_Encryption(
	input [63:0] i_plaintext,
	input [63:0] i_key1,
	input [63:0] i_key2,
	input [63:0] i_key3,
   output [63:0] o_ciphertext
   );

	wire [63:0] w_des1_ciphertext;
	wire [63:0] w_des2_ciphertext;


	// 1st DES
	DES_Encryption DES_Encryption_inst1
	(
		.i_plaintext(i_plaintext) ,	// input [63:0] i_plaintext_sig
		.i_key(i_key1) ,	// input [63:0] i_key_sig
		.o_ciphertext(w_des1_ciphertext) 	// output [63:0] o_ciphertext_sig
	);


	// 2nd DES
	DES_Encryption DES_Encryption_inst2
	(
		.i_plaintext(w_des1_ciphertext) ,	// input [63:0] i_plaintext_sig
		.i_key(i_key2) ,	// input [63:0] i_key_sig
		.o_ciphertext(w_des2_ciphertext) 	// output [63:0] o_ciphertext_sig
	);


	// 3rd DES
	DES_Encryption DES_Encryption_inst3
	(
		.i_plaintext(w_des2_ciphertext) ,	// input [63:0] i_plaintext_sig
		.i_key(i_key3) ,	// input [63:0] i_key_sig
		.o_ciphertext(o_ciphertext) 	// output [63:0] o_ciphertext_sig
	);

endmodule
