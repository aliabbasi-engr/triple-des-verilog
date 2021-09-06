
// This module declines every 8th bit of the input key and permutates it.

module Key_Parity_Dropper(
   input [63:0] i_key,
   output [55:0] o_cipherkey
   );

	//wire [55:0] i_key;
	
	/*assign i_key = {i_key[62:56],
							i_key[54:48],
							i_key[46:40],
							i_key[38:32],
							i_key[30:24],
							i_key[22:16],
							i_key[14:8],
							i_key[6:0]};
	*/
										
	// 1st byte
	assign o_cipherkey[0] = i_key[56];
	assign o_cipherkey[1] = i_key[48];
	assign o_cipherkey[2] = i_key[40];
	assign o_cipherkey[3] = i_key[32];
	assign o_cipherkey[4] = i_key[24];
	assign o_cipherkey[5] = i_key[16];
	assign o_cipherkey[6] = i_key[8];
	assign o_cipherkey[7] = i_key[0];
	
	// 2nd byte
	assign o_cipherkey[8] = i_key[57];
	assign o_cipherkey[9] = i_key[49];
	assign o_cipherkey[10] = i_key[41];
	assign o_cipherkey[11] = i_key[33];
	assign o_cipherkey[12] = i_key[25];
	assign o_cipherkey[13] = i_key[17];
	assign o_cipherkey[14] = i_key[9];
	assign o_cipherkey[15] = i_key[1];
 	
	// 3rd byte
	assign o_cipherkey[16] = i_key[58];
	assign o_cipherkey[17] = i_key[50];
	assign o_cipherkey[18] = i_key[42];
	assign o_cipherkey[19] = i_key[34];
	assign o_cipherkey[20] = i_key[26];
	assign o_cipherkey[21] = i_key[18];
 	assign o_cipherkey[22] = i_key[10];
	assign o_cipherkey[23] = i_key[2];
 	
	// 4th byte
	assign o_cipherkey[24] = i_key[59];
	assign o_cipherkey[25] = i_key[51];
	assign o_cipherkey[26] = i_key[43];
	assign o_cipherkey[27] = i_key[35];
	assign o_cipherkey[28] = i_key[62];
	assign o_cipherkey[29] = i_key[54];
	assign o_cipherkey[30] = i_key[46];
	assign o_cipherkey[31] = i_key[38];
	
	// 5th byte
	assign o_cipherkey[32] = i_key[30];
	assign o_cipherkey[33] = i_key[22];
	assign o_cipherkey[34] = i_key[14];
	assign o_cipherkey[35] = i_key[6];
	assign o_cipherkey[36] = i_key[61];
	assign o_cipherkey[37] = i_key[53];
	assign o_cipherkey[38] = i_key[45];
	assign o_cipherkey[39] = i_key[37];
 	
	// 6th byte
	assign o_cipherkey[40] = i_key[29];
	assign o_cipherkey[41] = i_key[21];
	assign o_cipherkey[42] = i_key[13];
	assign o_cipherkey[43] = i_key[5];
	assign o_cipherkey[44] = i_key[60];
	assign o_cipherkey[45] = i_key[52];
	assign o_cipherkey[46] = i_key[44];
	assign o_cipherkey[47] = i_key[36];
	
	// 7th byte
	assign o_cipherkey[48] = i_key[28];
	assign o_cipherkey[49] = i_key[20];
	assign o_cipherkey[50] = i_key[12];
	assign o_cipherkey[51] = i_key[4];
	assign o_cipherkey[52] = i_key[27];
	assign o_cipherkey[53] = i_key[19];
	assign o_cipherkey[54] = i_key[11];
	assign o_cipherkey[55] = i_key[3];
	
endmodule
