
// This module generates a shifted key base on the input key and round number.

module Key_Shifter(
	input [55:0] i_key,
	input [3:0] i_round,
	output reg [55:0] o_shifted_key
	);

	// Define wires for the key of each round
	wire [55:0] w_round0_key;
	wire [55:0] w_round1_key;
	wire [55:0] w_round2_key;
	wire [55:0] w_round3_key;
	
	wire [55:0] w_round4_key;
	wire [55:0] w_round5_key;
	wire [55:0] w_round6_key;
	wire [55:0] w_round7_key;
	
	wire [55:0] w_round8_key;
	wire [55:0] w_round9_key;
	wire [55:0] w_round10_key;
	wire [55:0] w_round11_key;
	
	wire [55:0] w_round12_key;
	wire [55:0] w_round13_key;
	wire [55:0] w_round14_key;
	wire [55:0] w_round15_key;
	
	// Registered value for the output
	reg [55:0] w_56bit_shifted_key;
	
	
	// Shifting function
	function [55:0] Do_CircularLeftShift;
		input [55:0] fi_key;
		input integer fi_shiftCount;
		begin

			if (fi_shiftCount == 1) // Shift by 1
				Do_CircularLeftShift = {fi_key[54:28], fi_key[55],
								fi_key[26:0], fi_key[27]};
			else if (fi_shiftCount == 2) // Shift by 2
				Do_CircularLeftShift = {fi_key[53:28], fi_key[55], fi_key[54],
								fi_key[25:0], fi_key[27], fi_key[26]};
			else
				Do_CircularLeftShift = 56'bz;
		end
		
	endfunction

   
	// Calculate each round key
	assign w_round0_key = Do_CircularLeftShift(i_key, 1);
	assign w_round1_key = Do_CircularLeftShift(w_round0_key, 1);
	assign w_round2_key = Do_CircularLeftShift(w_round1_key, 2);
	assign w_round3_key = Do_CircularLeftShift(w_round2_key, 2);
	
	assign w_round4_key = Do_CircularLeftShift(w_round3_key, 2);
	assign w_round5_key = Do_CircularLeftShift(w_round4_key, 2);
	assign w_round6_key = Do_CircularLeftShift(w_round5_key, 2);
	assign w_round7_key = Do_CircularLeftShift(w_round6_key, 2);
	
	assign w_round8_key = Do_CircularLeftShift(w_round7_key, 1);
	assign w_round9_key = Do_CircularLeftShift(w_round8_key, 2);
	assign w_round10_key = Do_CircularLeftShift(w_round9_key, 2);
	assign w_round11_key = Do_CircularLeftShift(w_round10_key, 2);
	
	assign w_round12_key = Do_CircularLeftShift(w_round11_key, 2);
	assign w_round13_key = Do_CircularLeftShift(w_round12_key, 2);
	assign w_round14_key = Do_CircularLeftShift(w_round13_key, 2);
	assign w_round15_key = Do_CircularLeftShift(w_round14_key, 1);
	
	
	// Assign proper key to the output
	always @*
	begin
		case (i_round)
			4'b0000: o_shifted_key = w_round0_key;
			4'b0001: o_shifted_key = w_round1_key;
			4'b0010: o_shifted_key = w_round2_key;
			4'b0011: o_shifted_key = w_round3_key;
			4'b0100: o_shifted_key = w_round4_key;
			4'b0101: o_shifted_key = w_round5_key;
			4'b0110: o_shifted_key = w_round6_key;
			4'b0111: o_shifted_key = w_round7_key;
			4'b1000: o_shifted_key = w_round8_key;
			4'b1001: o_shifted_key = w_round9_key;
			4'b1010: o_shifted_key = w_round10_key;
			4'b1011: o_shifted_key = w_round11_key;
			4'b1100: o_shifted_key = w_round12_key;
			4'b1101: o_shifted_key = w_round13_key;
			4'b1110: o_shifted_key = w_round14_key;
			4'b1111: o_shifted_key = w_round15_key;
			default: o_shifted_key = 56'bz;
		endcase
	end
	
endmodule
