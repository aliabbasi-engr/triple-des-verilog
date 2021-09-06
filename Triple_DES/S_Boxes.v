
// This module performs the function of the S-Boxes on the whole vector.

module S_Boxes(
    input [47:0] i_vector,
    output [31:0] o_vector
    );

	 
	S_Box_1 S_Box_1_inst
	(
		.i_vector(i_vector[5:0]) ,	// input [5:0] i_vector[:]
		.o_vector(o_vector[3:0]) 	// output [3:0] o_vector[:]
	);


	S_Box_2 S_Box_2_inst
	(
		.i_vector(i_vector[11:6]) ,	// input [5:0] i_vector[:]
		.o_vector(o_vector[7:4]) 	// output [3:0] o_vector[:]
	);


	S_Box_3 S_Box_3_inst
	(
		.i_vector(i_vector[17:12]) ,	// input [5:0] i_vector[:]
		.o_vector(o_vector[11:8]) 	// output [3:0] o_vector[:]
	);


	S_Box_4 S_Box_4_inst
	(
		.i_vector(i_vector[23:18]) ,	// input [5:0] i_vector[:]
		.o_vector(o_vector[15:12]) 	// output [3:0] o_vector[:]
	);
	
	
	S_Box_5 S_Box_5_inst
	(
		.i_vector(i_vector[29:24]) ,	// input [5:0] i_vector[:]
		.o_vector(o_vector[19:16]) 	// output [3:0] o_vector[:]
	);
	
	
	S_Box_6 S_Box_6_inst
	(
		.i_vector(i_vector[35:30]) ,	// input [5:0] i_vector[:]
		.o_vector(o_vector[23:20]) 	// output [3:0] o_vector[:]
	);
	
	
	S_Box_7 S_Box_7_inst
	(
		.i_vector(i_vector[41:36]) ,	// input [5:0] i_vector[:]
		.o_vector(o_vector[27:24]) 	// output [3:0] o_vector[:]
	);
	
	
	S_Box_8 S_Box_8_inst
	(
		.i_vector(i_vector[47:42]) ,	// input [5:0] i_vector[:]
		.o_vector(o_vector[31:28]) 	// output [3:0] o_vector[:]
	);
	
	
endmodule
