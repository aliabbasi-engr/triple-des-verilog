
// This module performs the function of the S-Box 4.

module S_Box_4(
    input [5:0] i_vector,
    output reg [3:0] o_vector
    );
	 
	always @*
		case (i_vector)
			6'b000000 : o_vector = 7;
			6'b000001 : o_vector = 13;
			6'b000010 : o_vector = 13;
			6'b000011 : o_vector = 8;
			6'b000100 : o_vector = 14;
			6'b000101 : o_vector = 11;
			6'b000110 : o_vector = 3;
			6'b000111 : o_vector = 5;
			6'b001000 : o_vector = 0;
			6'b001001 : o_vector = 6;
			6'b001010 : o_vector = 6;
			6'b001011 : o_vector = 15;
			6'b001100 : o_vector = 9;
			6'b001101 : o_vector = 0;
			6'b001110 : o_vector = 10;
			6'b001111 : o_vector = 3;
			6'b010000 : o_vector = 1;
			6'b010001 : o_vector = 4;
			6'b010010 : o_vector = 2;
			6'b010011 : o_vector = 7;
			6'b010100 : o_vector = 8;
			6'b010101 : o_vector = 2;
			6'b010110 : o_vector = 5;
			6'b010111 : o_vector = 12;
			6'b011000 : o_vector = 11;
			6'b011001 : o_vector = 1;
			6'b011010 : o_vector = 12;
			6'b011011 : o_vector = 10;
			6'b011100 : o_vector = 4;
			6'b011101 : o_vector = 14;
			6'b011110 : o_vector = 15;
			6'b011111 : o_vector = 9;
			6'b100000 : o_vector = 10;
			6'b100001 : o_vector = 3;
			6'b100010 : o_vector = 6;
			6'b100011 : o_vector = 15;
			6'b100100 : o_vector = 9;
			6'b100101 : o_vector = 0;
			6'b100110 : o_vector = 0;
			6'b100111 : o_vector = 6;
			6'b101000 : o_vector = 12;
			6'b101001 : o_vector = 10;
			6'b101010 : o_vector = 11;
			6'b101011 : o_vector = 1;
			6'b101100 : o_vector = 7;
			6'b101101 : o_vector = 13;
			6'b101110 : o_vector = 13;
			6'b101111 : o_vector = 8;
			6'b110000 : o_vector = 15;
			6'b110001 : o_vector = 9;
			6'b110010 : o_vector = 1;
			6'b110011 : o_vector = 4;
			6'b110100 : o_vector = 3;
			6'b110101 : o_vector = 5;
			6'b110110 : o_vector = 14;
			6'b110111 : o_vector = 11;
			6'b111000 : o_vector = 5;
			6'b111001 : o_vector = 12;
			6'b111010 : o_vector = 2;
			6'b111011 : o_vector = 7;
			6'b111100 : o_vector = 8;
			6'b111101 : o_vector = 2;
			6'b111110 : o_vector = 4;
			6'b111111 : o_vector = 14;
  		endcase

endmodule