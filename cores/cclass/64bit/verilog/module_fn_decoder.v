//
// Generated by Bluespec Compiler, version 2015.09.beta2 (build 34689, 2015-09-07)
//
// On Mon Dec 19 16:36:46 IST 2016
//
//
// Ports:
// Name                         I/O  size props
// fn_decoder                     O    79
// fn_decoder__instruction        I    32
// fn_decoder_pred_type           I     1
//
// Combinational paths from inputs to outputs:
//   (fn_decoder__instruction, fn_decoder_pred_type) -> fn_decoder
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

module module_fn_decoder(fn_decoder__instruction,
			 fn_decoder_pred_type,
			 fn_decoder);
  // value method fn_decoder
  input  [31 : 0] fn_decoder__instruction;
  input  fn_decoder_pred_type;
  output [78 : 0] fn_decoder;

  // signals for module outputs
  wire [78 : 0] fn_decoder;

  // remaining internal signals
  reg [19 : 0] IF_fn_decoder__instruction_BITS_6_TO_2_EQ_0b11_ETC___d97;
  reg [4 : 0] x__h389, x__h714;
  reg [2 : 0] CASE_fn_decoder__instruction_BITS_6_TO_4_0b100_ETC__q2;
  wire [19 : 0] immediate_value___1__h1348,
		immediate_value___1__h1454,
		immediate_value___1__h1563,
		immediate_value__h28;
  wire [11 : 0] fn_decoder__instruction_BITS_31_TO_20__q1, x__h1458, x__h1566;
  wire [4 : 0] x__h491, x__h671;

  // value method fn_decoder
  assign fn_decoder =
	     { (fn_decoder__instruction[6:2] == 5'b11100) ?
		 3'd4 :
		 ((fn_decoder__instruction == 32'h0000006F) ?
		    3'd3 :
		    CASE_fn_decoder__instruction_BITS_6_TO_4_0b100_ETC__q2),
	       x__h389,
	       x__h491,
	       x__h671,
	       x__h714,
	       fn_decoder__instruction[6:2] == 5'b00001 ||
	       fn_decoder__instruction[6:4] == 3'b100 ||
	       fn_decoder__instruction[6:4] == 3'b101 &&
	       fn_decoder__instruction[31:28] != 4'b1101 &&
	       fn_decoder__instruction[31:28] != 4'b1110,
	       fn_decoder__instruction[6:2] == 5'b01001 ||
	       fn_decoder__instruction[6:4] == 3'b100 ||
	       fn_decoder__instruction[6:4] == 3'b101 &&
	       fn_decoder__instruction[31:28] != 4'b1101 &&
	       fn_decoder__instruction[31:28] != 4'b1111,
	       1'd0,
	       fn_decoder__instruction[6:2],
	       fn_decoder__instruction[14:12],
	       fn_decoder__instruction[31:25],
	       IF_fn_decoder__instruction_BITS_6_TO_2_EQ_0b11_ETC___d97,
	       fn_decoder__instruction[6:2] == 5'b01101 ||
	       fn_decoder__instruction[6:4] == 3'b110 ||
	       fn_decoder__instruction[6:2] == 5'd0 ||
	       fn_decoder__instruction[6:4] == 3'b010 ||
	       fn_decoder__instruction[6:4] == 3'b001,
	       fn_decoder__instruction[14:12],
	       fn_decoder__instruction[31:20],
	       fn_decoder__instruction[14],
	       fn_decoder_pred_type } ;

  // remaining internal signals
  assign fn_decoder__instruction_BITS_31_TO_20__q1 =
	     fn_decoder__instruction[31:20] ;
  assign immediate_value___1__h1348 =
	     { fn_decoder__instruction[31],
	       fn_decoder__instruction[19:12],
	       fn_decoder__instruction[20],
	       fn_decoder__instruction[30:21] } ;
  assign immediate_value___1__h1454 = { {8{x__h1458[11]}}, x__h1458 } ;
  assign immediate_value___1__h1563 = { {8{x__h1566[11]}}, x__h1566 } ;
  assign immediate_value__h28 =
	     { {8{fn_decoder__instruction_BITS_31_TO_20__q1[11]}},
	       fn_decoder__instruction_BITS_31_TO_20__q1 } ;
  assign x__h1458 =
	     { fn_decoder__instruction[31],
	       fn_decoder__instruction[7],
	       fn_decoder__instruction[30:25],
	       fn_decoder__instruction[11:8] } ;
  assign x__h1566 =
	     { fn_decoder__instruction[31:25],
	       fn_decoder__instruction[11:7] } ;
  assign x__h491 =
	     (fn_decoder__instruction[6:2] == 5'b01101 ||
	      fn_decoder__instruction[6:4] == 3'b001 ||
	      fn_decoder__instruction[6:2] == 5'b11011 ||
	      fn_decoder__instruction[6:2] == 5'd0 ||
	      fn_decoder__instruction[6:4] == 3'b101 &&
	      fn_decoder__instruction[31:30] == 2'b11) ?
	       5'd0 :
	       fn_decoder__instruction[24:20] ;
  assign x__h671 =
	     (fn_decoder__instruction[6:4] == 3'b100) ?
	       fn_decoder__instruction[31:27] :
	       5'd0 ;
  always@(fn_decoder__instruction)
  begin
    case (fn_decoder__instruction[6:2])
      5'b00101, 5'b01101, 5'b11011: x__h389 = 5'd0;
      default: x__h389 = fn_decoder__instruction[19:15];
    endcase
  end
  always@(fn_decoder__instruction)
  begin
    case (fn_decoder__instruction[6:2])
      5'b01000, 5'b01001, 5'b11000: x__h714 = 5'd0;
      default: x__h714 = fn_decoder__instruction[11:7];
    endcase
  end
  always@(fn_decoder__instruction or
	  immediate_value__h28 or
	  immediate_value___1__h1563 or
	  immediate_value___1__h1454 or immediate_value___1__h1348)
  begin
    case (fn_decoder__instruction[6:2])
      5'b00101, 5'b01101:
	  IF_fn_decoder__instruction_BITS_6_TO_2_EQ_0b11_ETC___d97 =
	      fn_decoder__instruction[31:12];
      5'b01000:
	  IF_fn_decoder__instruction_BITS_6_TO_2_EQ_0b11_ETC___d97 =
	      immediate_value___1__h1563;
      5'b11000:
	  IF_fn_decoder__instruction_BITS_6_TO_2_EQ_0b11_ETC___d97 =
	      immediate_value___1__h1454;
      5'b11011:
	  IF_fn_decoder__instruction_BITS_6_TO_2_EQ_0b11_ETC___d97 =
	      immediate_value___1__h1348;
      default: IF_fn_decoder__instruction_BITS_6_TO_2_EQ_0b11_ETC___d97 =
		   immediate_value__h28;
    endcase
  end
  always@(fn_decoder__instruction)
  begin
    case (fn_decoder__instruction[6:4])
      3'b100, 3'b101:
	  CASE_fn_decoder__instruction_BITS_6_TO_4_0b100_ETC__q2 = 3'd1;
      default: CASE_fn_decoder__instruction_BITS_6_TO_4_0b100_ETC__q2 =
		   (fn_decoder__instruction[6:4] == 3'b110 ||
		    fn_decoder__instruction[6:4] == 3'b001 ||
		    fn_decoder__instruction[6:4] == 3'b0 ||
		    fn_decoder__instruction[6:4] == 3'b010 ||
		    fn_decoder__instruction[6:2] == 5'b01101 ||
		    fn_decoder__instruction[6:4] == 3'b011 &&
		    !fn_decoder__instruction[25] ||
		    fn_decoder__instruction[6:4] == 3'b011 &&
		    fn_decoder__instruction[25]) ?
		     3'd0 :
		     ((fn_decoder__instruction[6:2] == 5'b11111) ?
			3'd3 :
			3'd2);
    endcase
  end
endmodule  // module_fn_decoder
