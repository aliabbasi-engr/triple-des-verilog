
// This module performs the expansion D-Box logic

module Expansion_D_Box(
	input [31:0] i_data,
	output [47:0] o_expanded_data
	);
	
	// 1st byte
	assign o_expanded_data[0] = i_data[31];
	assign o_expanded_data[1] = i_data[0];
	assign o_expanded_data[2] = i_data[1];
	assign o_expanded_data[3] = i_data[2];
	assign o_expanded_data[4] = i_data[3];
	assign o_expanded_data[5] = i_data[4];
	assign o_expanded_data[6] = i_data[3];
	assign o_expanded_data[7] = i_data[4];
	
	// 2nd byte
	assign o_expanded_data[8] = i_data[5];
	assign o_expanded_data[9] = i_data[6];
	assign o_expanded_data[10] = i_data[7];
	assign o_expanded_data[11] = i_data[8];
	assign o_expanded_data[12] = i_data[7];
	assign o_expanded_data[13] = i_data[8];
	assign o_expanded_data[14] = i_data[9];
	assign o_expanded_data[15] = i_data[10];
	
	// 3rd byte
	assign o_expanded_data[16] = i_data[11];
	assign o_expanded_data[17] = i_data[12];
	assign o_expanded_data[18] = i_data[11];
	assign o_expanded_data[19] = i_data[12];
	assign o_expanded_data[20] = i_data[13];
	assign o_expanded_data[21] = i_data[14];
	assign o_expanded_data[22] = i_data[15];
	assign o_expanded_data[23] = i_data[16];
	
	// 4th byte
	assign o_expanded_data[24] = i_data[15];
	assign o_expanded_data[25] = i_data[16];
	assign o_expanded_data[26] = i_data[17];
	assign o_expanded_data[27] = i_data[18];
	assign o_expanded_data[28] = i_data[19];
	assign o_expanded_data[29] = i_data[20];
	assign o_expanded_data[30] = i_data[19];
	assign o_expanded_data[31] = i_data[20];
	
	// 5th byte
	assign o_expanded_data[32] = i_data[21];
	assign o_expanded_data[33] = i_data[22];
	assign o_expanded_data[34] = i_data[23];
	assign o_expanded_data[35] = i_data[24];
	assign o_expanded_data[36] = i_data[23];
	assign o_expanded_data[37] = i_data[24];
	assign o_expanded_data[38] = i_data[25];
	assign o_expanded_data[39] = i_data[26];
	
	// 6th byte
	assign o_expanded_data[40] = i_data[27];
	assign o_expanded_data[41] = i_data[28];
	assign o_expanded_data[42] = i_data[27];
	assign o_expanded_data[43] = i_data[28];
	assign o_expanded_data[44] = i_data[30];
	assign o_expanded_data[45] = i_data[30];
	assign o_expanded_data[46] = i_data[31];
	assign o_expanded_data[47] = i_data[0];
	
endmodule
