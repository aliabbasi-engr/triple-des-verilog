
// This module performs permutation on the 56-bit key and reduces it to 48 bit.

module Key_Compression_Permutation(
	input [55:0] i_key,
	output [47:0] o_permuted_key
	);

	// 1st byte
	assign o_permuted_key[0] = i_key[13];
	assign o_permuted_key[1] = i_key[16];
	assign o_permuted_key[2] = i_key[10];
	assign o_permuted_key[3] = i_key[23];
	assign o_permuted_key[4] = i_key[0];
	assign o_permuted_key[5] = i_key[4];
	assign o_permuted_key[6] = i_key[2];
	assign o_permuted_key[7] = i_key[27];
	
	// 2nd byte
	assign o_permuted_key[8] = i_key[14];
	assign o_permuted_key[9] = i_key[5];
	assign o_permuted_key[10] = i_key[20];
	assign o_permuted_key[11] = i_key[9];
	assign o_permuted_key[12] = i_key[22];
	assign o_permuted_key[13] = i_key[18];
	assign o_permuted_key[14] = i_key[11];
	assign o_permuted_key[15] = i_key[3];
	
	// 3rd part
	assign o_permuted_key[16] = i_key[25];
	assign o_permuted_key[17] = i_key[7];
	assign o_permuted_key[18] = i_key[15];
	assign o_permuted_key[19] = i_key[6];
	assign o_permuted_key[20] = i_key[26];
	assign o_permuted_key[21] = i_key[19];
	assign o_permuted_key[22] = i_key[12];
	assign o_permuted_key[23] = i_key[1];
	
	// 4th part
	assign o_permuted_key[24] = i_key[40];
	assign o_permuted_key[25] = i_key[51];
	assign o_permuted_key[26] = i_key[30];
	assign o_permuted_key[27] = i_key[36];
	assign o_permuted_key[28] = i_key[46];
	assign o_permuted_key[29] = i_key[54];
	assign o_permuted_key[30] = i_key[29];
	assign o_permuted_key[31] = i_key[39];
	
	// 5th part
	assign o_permuted_key[32] = i_key[50];
	assign o_permuted_key[33] = i_key[44];
	assign o_permuted_key[34] = i_key[32];
	assign o_permuted_key[35] = i_key[47];
	assign o_permuted_key[36] = i_key[43];
	assign o_permuted_key[37] = i_key[48];
	assign o_permuted_key[38] = i_key[38];
	assign o_permuted_key[39] = i_key[55];
	
	// 6th part
	assign o_permuted_key[40] = i_key[33];
	assign o_permuted_key[41] = i_key[52];
	assign o_permuted_key[42] = i_key[45];
	assign o_permuted_key[43] = i_key[41];
	assign o_permuted_key[44] = i_key[49];
	assign o_permuted_key[45] = i_key[35];
	assign o_permuted_key[46] = i_key[28];
	assign o_permuted_key[47] = i_key[31];
	
endmodule
