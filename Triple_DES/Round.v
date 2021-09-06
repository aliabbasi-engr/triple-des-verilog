
// This module performs the logic of each round.

module Round(
    input [31:0] i_RPT,
    input [31:0] i_LPT,
    input [47:0] i_key,
    output [31:0] o_RPT,
    output [31:0] o_LPT
    );

	wire [31:0] w_mixer_rpt;
	wire [31:0] w_mixer_lpt;


	Mixer Mixer_inst
	(
		.i_RPT(i_RPT) ,	// input [31:0] i_RPT_sig
		.i_LPT(i_LPT) ,	// input [31:0] i_LPT_sig
		.i_key(i_key) ,	// input [47:0] i_key_sig
		.o_RPT(w_mixer_rpt) ,	// output [31:0] o_RPT_sig
		.o_LPT(w_mixer_lpt) 	// output [31:0] o_LPT_sig
	);
	
	
	Swapper Swapper_inst
	(
		.i_LPT(w_mixer_lpt) ,	// input [31:0] i_LPT_sig
		.i_RPT(w_mixer_rpt) ,	// input [31:0] i_RPT_sig
		.o_LPT(o_LPT) ,	// output [31:0] o_LPT_sig
		.o_RPT(o_RPT) 	// output [31:0] o_RPT_sig
	);

endmodule
