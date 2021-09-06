
// This module performs the initial permutation on the plain text

module Initial_Permutation(
	input [63:0] i_text,
	output [63:0] o_permuted_text
	);
	
	// 1st byte
	assign o_permuted_text[0] = i_text[57];
	assign o_permuted_text[1] = i_text[49];
	assign o_permuted_text[2] = i_text[41];
	assign o_permuted_text[3] = i_text[33];
	assign o_permuted_text[4] = i_text[25];
	assign o_permuted_text[5] = i_text[17];
	assign o_permuted_text[6] = i_text[9];
	assign o_permuted_text[7] = i_text[1];
	
	// 2nd byte
	assign o_permuted_text[8] = i_text[59];
	assign o_permuted_text[9] = i_text[51];
	assign o_permuted_text[10] = i_text[43];
	assign o_permuted_text[11] = i_text[35];
	assign o_permuted_text[12] = i_text[27];
	assign o_permuted_text[13] = i_text[19];
	assign o_permuted_text[14] = i_text[11];
	assign o_permuted_text[15] = i_text[3];
	
	// 3rd byte
	assign o_permuted_text[16] = i_text[61];
	assign o_permuted_text[17] = i_text[53];
	assign o_permuted_text[18] = i_text[45];
	assign o_permuted_text[19] = i_text[37];
	assign o_permuted_text[20] = i_text[29];
	assign o_permuted_text[21] = i_text[21];
	assign o_permuted_text[22] = i_text[13];
	assign o_permuted_text[23] = i_text[5];
	
	// 4th byte
	assign o_permuted_text[24] = i_text[63];
	assign o_permuted_text[25] = i_text[55];
	assign o_permuted_text[26] = i_text[47];
	assign o_permuted_text[27] = i_text[39];
	assign o_permuted_text[28] = i_text[31];
	assign o_permuted_text[29] = i_text[23];
	assign o_permuted_text[30] = i_text[15];
	assign o_permuted_text[31] = i_text[7];
	
	// 5th byte
	assign o_permuted_text[32] = i_text[56];
	assign o_permuted_text[33] = i_text[48];
	assign o_permuted_text[34] = i_text[40];
	assign o_permuted_text[35] = i_text[32];
	assign o_permuted_text[36] = i_text[24];
	assign o_permuted_text[37] = i_text[16];
	assign o_permuted_text[38] = i_text[8];
	assign o_permuted_text[39] = i_text[0];
	
	// 6th byte
	assign o_permuted_text[40] = i_text[58];
	assign o_permuted_text[41] = i_text[50];
	assign o_permuted_text[42] = i_text[42];
	assign o_permuted_text[43] = i_text[34];
	assign o_permuted_text[44] = i_text[26];
	assign o_permuted_text[45] = i_text[18];
	assign o_permuted_text[46] = i_text[10];
	assign o_permuted_text[47] = i_text[2];
	
	// 7th byte
	assign o_permuted_text[48] = i_text[60];
	assign o_permuted_text[49] = i_text[32];
	assign o_permuted_text[50] = i_text[44];
	assign o_permuted_text[51] = i_text[36];
	assign o_permuted_text[52] = i_text[28];
	assign o_permuted_text[53] = i_text[20];
	assign o_permuted_text[54] = i_text[12];
	assign o_permuted_text[55] = i_text[4];	

	// 8th byte
	assign o_permuted_text[56] = i_text[62];
	assign o_permuted_text[57] = i_text[54];
	assign o_permuted_text[58] = i_text[46];
	assign o_permuted_text[59] = i_text[38];
	assign o_permuted_text[60] = i_text[30];
	assign o_permuted_text[61] = i_text[22];
	assign o_permuted_text[62] = i_text[14];
	assign o_permuted_text[63] = i_text[6];
	
endmodule
