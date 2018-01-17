//
// Generated by Bluespec Compiler, version 2016.07.beta1 (build 34806, 2016-07-05)
//
// On Tue Mar 28 10:02:50 IST 2017
//
//
// Ports:
// Name                         I/O  size props
// _start                         O    33
// RDY__start                     O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// _start_inp1                    I    32
// _start_inp2                    I    32
// _start_funct                   I     3
// _start_word32                  I     1 unused
// EN__start                      I     1
//
// Combinational paths from inputs to outputs:
//   (_start_inp1, _start_inp2, _start_funct) -> _start
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkmuldiv(CLK,
		RST_N,

		_start_inp1,
		_start_inp2,
		_start_funct,
		_start_word32,
		EN__start,
		_start,
		RDY__start);
  input  CLK;
  input  RST_N;

  // actionvalue method _start
  input  [31 : 0] _start_inp1;
  input  [31 : 0] _start_inp2;
  input  [2 : 0] _start_funct;
  input  _start_word32;
  input  EN__start;
  output [32 : 0] _start;
  output RDY__start;

  // signals for module outputs
  wire [32 : 0] _start;
  wire RDY__start;

  // register partial_prod
  reg [64 : 0] partial_prod;
  wire [64 : 0] partial_prod$D_IN;
  wire partial_prod$EN;

  // register rg_state_counter
  reg [5 : 0] rg_state_counter;
  wire [5 : 0] rg_state_counter$D_IN;
  wire rg_state_counter$EN;

  // rule scheduling signals
  wire CAN_FIRE_RL_rg_state_counter__dreg_update,
       CAN_FIRE__start,
       WILL_FIRE_RL_rg_state_counter__dreg_update,
       WILL_FIRE__start;

  // remaining internal signals
  reg [5 : 0] x__h175;
  wire [64 : 0] IF_IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_ETC___d103,
		IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_ETC___d94,
		IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_ETC___d85,
		IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_1__ETC___d76,
		IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_ETC___d67,
		IF_IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_ETC___d58,
		IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_NO_ETC___d49,
		IF_NOT_start_funct_BIT_1_11_12_AND_start_funct_ETC__q3,
		IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_NOT_s_ETC___d40,
		_theResult_____2__h1903,
		remainder__h516,
		remainder__h537,
		remainder__h558,
		remainder__h579,
		remainder__h600,
		remainder__h621,
		remainder__h642,
		remainder__h663,
		temp1___1__h2094,
		temp1___2__h2072,
		temp1___2__h2118,
		x__h276;
  wire [32 : 0] IF_NOT_start_funct_BIT_0_0_AND_start_inp1_BIT__ETC___d17,
		IF_NOT_start_funct_BIT_0_0_AND_start_inp2_BIT__ETC___d28,
		SEXT_INV_IF_NOT_start_funct_BIT_0_0_AND_start__ETC___d36,
		sub__h262,
		sub__h517,
		sub__h538,
		sub__h559,
		sub__h580,
		sub__h601,
		sub__h622,
		sub__h643,
		sub__h664;
  wire [31 : 0] IF_IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_ETC__q1,
		IF_IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_ETC__q2,
		x__h1770;
  wire [5 : 0] x__h1917;
  wire NOT_start_funct_BIT_1_11_12_AND_start_funct_BI_ETC___d133;

  // actionvalue method _start
  assign _start =
	     { rg_state_counter == 6'd4,
	       IF_NOT_start_funct_BIT_1_11_12_AND_start_funct_ETC__q3[31:0] } ;
  assign RDY__start = 1'd1 ;
  assign CAN_FIRE__start = 1'd1 ;
  assign WILL_FIRE__start = EN__start ;

  // rule RL_rg_state_counter__dreg_update
  assign CAN_FIRE_RL_rg_state_counter__dreg_update = 1'd1 ;
  assign WILL_FIRE_RL_rg_state_counter__dreg_update = 1'd1 ;

  // register partial_prod
  assign partial_prod$D_IN =
	     (rg_state_counter == 6'd0) ?
	       x__h276 :
	       IF_IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_ETC___d103 ;
  assign partial_prod$EN = EN__start && rg_state_counter != 6'd4 ;

  // register rg_state_counter
  assign rg_state_counter$D_IN = EN__start ? x__h175 : 6'd0 ;
  assign rg_state_counter$EN = 1'd1 ;

  // remaining internal signals
  assign IF_IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_ETC___d103 =
	     (IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_ETC___d94[62:31] <
	      IF_NOT_start_funct_BIT_0_0_AND_start_inp2_BIT__ETC___d28[31:0]) ?
	       remainder__h516 :
	       { sub__h517,
		 IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_ETC___d94[30:0],
		 1'd1 } ;
  assign IF_IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_ETC__q1 =
	     IF_IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_ETC___d103[63:32] ;
  assign IF_IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_ETC__q2 =
	     IF_IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_ETC___d103[31:0] ;
  assign IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_ETC___d94 =
	     (IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_ETC___d85[62:31] <
	      IF_NOT_start_funct_BIT_0_0_AND_start_inp2_BIT__ETC___d28[31:0]) ?
	       remainder__h537 :
	       { sub__h538,
		 IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_ETC___d85[30:0],
		 1'd1 } ;
  assign IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_ETC___d85 =
	     (IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_1__ETC___d76[62:31] <
	      IF_NOT_start_funct_BIT_0_0_AND_start_inp2_BIT__ETC___d28[31:0]) ?
	       remainder__h558 :
	       { sub__h559,
		 IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_1__ETC___d76[30:0],
		 1'd1 } ;
  assign IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_1__ETC___d76 =
	     (IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_ETC___d67[62:31] <
	      IF_NOT_start_funct_BIT_0_0_AND_start_inp2_BIT__ETC___d28[31:0]) ?
	       remainder__h579 :
	       { sub__h580,
		 IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_ETC___d67[30:0],
		 1'd1 } ;
  assign IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_ETC___d67 =
	     (IF_IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_ETC___d58[62:31] <
	      IF_NOT_start_funct_BIT_0_0_AND_start_inp2_BIT__ETC___d28[31:0]) ?
	       remainder__h600 :
	       { sub__h601,
		 IF_IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_ETC___d58[30:0],
		 1'd1 } ;
  assign IF_IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_ETC___d58 =
	     (IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_NO_ETC___d49[62:31] <
	      IF_NOT_start_funct_BIT_0_0_AND_start_inp2_BIT__ETC___d28[31:0]) ?
	       remainder__h621 :
	       { sub__h622,
		 IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_NO_ETC___d49[30:0],
		 1'd1 } ;
  assign IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_NO_ETC___d49 =
	     (IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_NOT_s_ETC___d40[62:31] <
	      IF_NOT_start_funct_BIT_0_0_AND_start_inp2_BIT__ETC___d28[31:0]) ?
	       remainder__h642 :
	       { sub__h643,
		 IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_NOT_s_ETC___d40[30:0],
		 1'd1 } ;
  assign IF_NOT_start_funct_BIT_0_0_AND_start_inp1_BIT__ETC___d17 =
	     (!_start_funct[0] && _start_inp1[31]) ?
	       { 1'd1, ~_start_inp1 } + 33'd1 :
	       { 1'd0, _start_inp1 } ;
  assign IF_NOT_start_funct_BIT_0_0_AND_start_inp2_BIT__ETC___d28 =
	     (!_start_funct[0] && _start_inp2[31]) ?
	       { 1'd1, ~_start_inp2 } + 33'd1 :
	       { 1'd0, _start_inp2 } ;
  assign IF_NOT_start_funct_BIT_1_11_12_AND_start_funct_ETC__q3 =
	     NOT_start_funct_BIT_1_11_12_AND_start_funct_BI_ETC___d133 ?
	       temp1___2__h2072 :
	       _theResult_____2__h1903 ;
  assign IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_NOT_s_ETC___d40 =
	     (partial_prod[62:31] <
	      IF_NOT_start_funct_BIT_0_0_AND_start_inp2_BIT__ETC___d28[31:0]) ?
	       remainder__h663 :
	       { sub__h664, partial_prod[30:0], 1'd1 } ;
  assign NOT_start_funct_BIT_1_11_12_AND_start_funct_BI_ETC___d133 =
	     _start_funct[1:0] == 2'd0 &&
	     IF_NOT_start_funct_BIT_0_0_AND_start_inp2_BIT__ETC___d28 !=
	     33'd0 &&
	     IF_NOT_start_funct_BIT_0_0_AND_start_inp1_BIT__ETC___d17[32] ^
	     IF_NOT_start_funct_BIT_0_0_AND_start_inp2_BIT__ETC___d28[32] ||
	     _start_funct[1:0] == 2'b10 &&
	     _theResult_____2__h1903[63] !=
	     IF_NOT_start_funct_BIT_0_0_AND_start_inp1_BIT__ETC___d17[32] ;
  assign SEXT_INV_IF_NOT_start_funct_BIT_0_0_AND_start__ETC___d36 =
	     { x__h1770[31], x__h1770 } ;
  assign _theResult_____2__h1903 =
	     _start_funct[1] ? temp1___1__h2094 : temp1___2__h2118 ;
  assign remainder__h516 =
	     { IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_ETC___d94[63:0],
	       1'd0 } ;
  assign remainder__h537 =
	     { IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_ETC___d85[63:0],
	       1'd0 } ;
  assign remainder__h558 =
	     { IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_1__ETC___d76[63:0],
	       1'd0 } ;
  assign remainder__h579 =
	     { IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_ETC___d67[63:0],
	       1'd0 } ;
  assign remainder__h600 =
	     { IF_IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_ETC___d58[63:0],
	       1'd0 } ;
  assign remainder__h621 =
	     { IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_NO_ETC___d49[63:0],
	       1'd0 } ;
  assign remainder__h642 =
	     { IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_NOT_s_ETC___d40[63:0],
	       1'd0 } ;
  assign remainder__h663 = { partial_prod[63:0], 1'd0 } ;
  assign sub__h262 =
	     partial_prod[64:32] +
	     SEXT_INV_IF_NOT_start_funct_BIT_0_0_AND_start__ETC___d36 ;
  assign sub__h517 =
	     IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_ETC___d94[63:31] +
	     SEXT_INV_IF_NOT_start_funct_BIT_0_0_AND_start__ETC___d36 ;
  assign sub__h538 =
	     IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_ETC___d85[63:31] +
	     SEXT_INV_IF_NOT_start_funct_BIT_0_0_AND_start__ETC___d36 ;
  assign sub__h559 =
	     IF_IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_1__ETC___d76[63:31] +
	     SEXT_INV_IF_NOT_start_funct_BIT_0_0_AND_start__ETC___d36 ;
  assign sub__h580 =
	     IF_IF_IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_ETC___d67[63:31] +
	     SEXT_INV_IF_NOT_start_funct_BIT_0_0_AND_start__ETC___d36 ;
  assign sub__h601 =
	     IF_IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_ETC___d58[63:31] +
	     SEXT_INV_IF_NOT_start_funct_BIT_0_0_AND_start__ETC___d36 ;
  assign sub__h622 =
	     IF_IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_NO_ETC___d49[63:31] +
	     SEXT_INV_IF_NOT_start_funct_BIT_0_0_AND_start__ETC___d36 ;
  assign sub__h643 =
	     IF_partial_prod_0_BITS_62_TO_31_1_ULT_IF_NOT_s_ETC___d40[63:31] +
	     SEXT_INV_IF_NOT_start_funct_BIT_0_0_AND_start__ETC___d36 ;
  assign sub__h664 =
	     partial_prod[63:31] +
	     SEXT_INV_IF_NOT_start_funct_BIT_0_0_AND_start__ETC___d36 ;
  assign temp1___1__h2094 =
	     { {33{IF_IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_ETC__q1[31]}},
	       IF_IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_ETC__q1 } ;
  assign temp1___2__h2072 = ~_theResult_____2__h1903 + 65'd1 ;
  assign temp1___2__h2118 =
	     { {33{IF_IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_ETC__q2[31]}},
	       IF_IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_ETC__q2 } ;
  assign x__h1770 =
	     ~IF_NOT_start_funct_BIT_0_0_AND_start_inp2_BIT__ETC___d28[31:0] +
	     32'd1 ;
  assign x__h1917 = rg_state_counter + 6'd1 ;
  assign x__h276 =
	     { 33'd0,
	       IF_NOT_start_funct_BIT_0_0_AND_start_inp1_BIT__ETC___d17[31:0] } ;
  always@(rg_state_counter or x__h1917)
  begin
    case (rg_state_counter)
      6'd0: x__h175 = x__h1917;
      6'd4: x__h175 = 6'd0;
      default: x__h175 = x__h1917;
    endcase
  end

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        partial_prod <= `BSV_ASSIGNMENT_DELAY 65'd0;
	rg_state_counter <= `BSV_ASSIGNMENT_DELAY 6'd0;
      end
    else
      begin
        if (partial_prod$EN)
	  partial_prod <= `BSV_ASSIGNMENT_DELAY partial_prod$D_IN;
	if (rg_state_counter$EN)
	  rg_state_counter <= `BSV_ASSIGNMENT_DELAY rg_state_counter$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    partial_prod = 65'h0AAAAAAAAAAAAAAAA;
    rg_state_counter = 6'h2A;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (EN__start && rg_state_counter != 6'd0)
	$display("Division. Partial :%h Sub: %h Counter: %d",
		 IF_IF_IF_IF_IF_IF_IF_IF_partial_prod_0_BITS_62_ETC___d103,
		 sub__h262,
		 rg_state_counter);
  end
  // synopsys translate_on
endmodule  // mkmuldiv
