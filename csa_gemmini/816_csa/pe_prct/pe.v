module PE_64(clock,io_in_a,io_in_b,io_in_d,io_out_a,io_out_b,io_out_c,io_in_control_propagate,io_in_control_shift,io_out_control_propagate,io_out_control_shift,io_in_valid,io_out_valid); // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165467.2]
`include "parameters.v"

  input         clock; // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165468.4]
  //input 		RST,
  input  [7:0]  io_in_a; // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input  [18:0] io_in_b; // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input  [(dbits-1):0]  io_in_d; // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  
  output [7:0]  io_out_a; // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output [18:0] io_out_b;//s,d,n,pze,nze[19:0]-- 20 bit 
  output [(dbits-1):0]  io_out_c;//round_reg,sum, carry [19:0], [19:0] -- 38 bit 
  input         io_in_control_propagate; // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input  [3:0]  io_in_control_shift; // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output        io_out_control_propagate; // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output [3:0]  io_out_control_shift; // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input         io_in_valid; // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output        io_out_valid; // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  
  
	reg  last_s;
	reg [(acc_wl-1):0] c1; // @[PE.scala 44:15:example.TestHarness.GemminiSocTest1RocketConfig.fir@165472.4]
	reg [31:0] _RAND_00;
	reg [(acc_wl-1):0] c2; // @[PE.scala 45:15:example.TestHarness.GemminiSocTest1RocketConfig.fir@165473.4]
	reg [31:0] _RAND_01;	
	wire [7:0] _T_36; // @[Arithmetic.scala 81:47:example.TestHarness.GemminiSocTest1RocketConfig.fir@165525.8]
	wire [7:0] _T_37; // @[Arithmetic.scala 81:71:example.TestHarness.GemminiSocTest1RocketConfig.fir@165526.8]
    //Multiplier Output
	wire [(acc_wl-1):0] _T_38_s; // @[Arithmetic.scala 65:49:example.TestHarness.GemminiSocTest1RocketConfig.fir@165527.8]
	wire [(acc_wl-1):0] _T_38_c;  
  //Acc 
	wire [(acc_wl-1):0] _T_40;
	wire [(acc_wl-1):0] _T_41;  // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165530.8]  
	wire [(dbits-1):0] _GEN_13; // @[PE.scala 69:95:example.TestHarness.GemminiSocTest1RocketConfig.fir@165488.4]
	//wire [21:0] _GEN_14; // @[PE.scala 69:95:example.TestHarness.GemminiSocTest1RocketConfig.fir@165488.4]
	wire  _T_99; // @[PE.scala 97:9:example.TestHarness.GemminiSocTest1RocketConfig.fir@165619.4]
	assign _T_36 = io_in_b [7:0]; // @[Arithmetic.scala 81:47:example.TestHarness.GemminiSocTest1RocketConfig.fir@165525.8]
	assign _T_37 = $signed(_T_36); // @[Arithmetic.scala 81:71:example.TestHarness.GemminiSocTest1RocketConfig.fir@165526.8]

/*********************DesignDetails*********************************************/

  /********************MULTIPLIER**********************************/
  
	r4_mb8 MULTuut(.mx($signed(io_in_a)),.my($signed(_T_37)),.CLK(clock),.RST(), .sum(_T_38_s), .carry(_T_38_c)); 
   
//feedback
	wire [(acc_wl-1):0] c_fb;
	wire [(acc_wl-1):0] c_out;
	
	wire[(acc_wl-1):0] _T_38_s1,_T_38_c1;
	assign _T_38_s1 = _T_38_s;
	assign _T_38_c1 = _T_38_c;
/******************CSA 3:2****************************************/
	wire[(acc_wl-1):0] sum_csa00,carry_csa00;
	//wire[(acc_wl-1):0] _sum_csa00,_carry_csa00;  
	compressor_3_2_group  ADD00($signed(c_fb), $signed(_T_38_c1),$signed(_T_38_s1) , sum_csa00,carry_csa00);  
	//assign _sum_csa00=sum_csa00;
	//assign _carry_csa00 = carry_csa00<<1;	
	assign _T_40 = $signed(sum_csa00)+$signed({carry_csa00[(acc_wl-2):0],1'b0});   
	assign _T_41 = _T_40;
	
	wire [(dbits-1):0] _T_35;
	
	
	rounding Ruut(.clock(clock),.c1(c_out),.last_s(last_s),.io_in_control_shift(io_in_control_shift),.io_in_control_propagate(io_out_control_propagate),._T_35(_T_35) );
	
	
	assign _GEN_13 = $signed(_T_35); //SUM 	
	assign _T_99 = io_in_valid == 1'h0; // @[PE.scala 97:9:example.TestHarness.GemminiSocTest1RocketConfig.fir@165619.4]	
	assign io_out_a = io_in_a; // @[PE.scala 51:12:example.TestHarness.GemminiSocTest1RocketConfig.fir@165474.4]
	assign io_out_b = io_in_b; // @[PE.scala 72:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165524.8 PE.scala 77:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165568.8 	
	assign io_out_c = $signed(_GEN_13); // @[PE.scala 71:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165523.8 PE.scala 76:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165567.8 PE.scala 83:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165586.10 PE.scala:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165597.10]	
	assign io_out_control_propagate = io_in_control_propagate; // @[PE.scala 53:28:example.TestHarness.GemminiSocTest1RocketConfig.fir@165476.4]	
	assign io_out_control_shift = io_in_control_shift; // @[PE.scala 54:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165477.4]	
	assign io_out_valid = io_in_valid; // @[PE.scala 55:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165478.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_00 = {1{`RANDOM}};
  c1 = _RAND_00[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_01 = {1{`RANDOM}};
  c2= _RAND_01[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
//wire [5:0] round_bits;//1+1+4
//assign round_bits={io_in_valid,io_in_control_propagate,io_in_control_propagate};
always @(posedge clock) 
begin
    if (!(_T_99)) 
	begin
      if (io_in_control_propagate)
	  begin
        c1 <= io_in_d[15:0];
      end 
	  else 
	  begin
        c1<= _T_41;
      end

    end
	
    if (!(_T_99)) 
	begin
      if (!io_in_control_propagate) 
	   begin
        c2 <= io_in_d[15:0];
      end 
	  else 
	  begin
        c2 <= _T_41;
      end
	end
	
	 if (io_in_valid) begin
      last_s <= io_in_control_propagate;
    end
	
end
	
	
	
	assign c_fb=io_in_control_propagate? c2:c1;
	assign c_out=!io_in_control_propagate?c2 : c1;
	
	

endmodule
module compressor_3_2_group(in1, in2, in3, s, c);
  `include "parameters.v"
    
  input [GRP_WIDTH-1:0] in1, in2, in3;
  output [GRP_WIDTH-1:0] s, c;
  
  compressor_3_2 compress[GRP_WIDTH-1:0](in1, in2,in3, s, c);

endmodule

module compressor_3_2(in1, in2, in3, s, c);
  input in1, in2, in3;
  output s,c;
  
  assign c = (in1 & in2) | (in2 & in3) | (in3 & in1); 
  assign s = (in1 & in2 & in3) | (in1 & ~in2 & ~in3) |
                                 (~in1 & in2 & ~in3) |
                                 (~in1 & ~in2 & in3);
  
  
  
endmodule

//////////////////////////Round/Shift////////////////////////////////////////////////////////


module rounding(
input         clock,
input [15:0] c1,
input last_s,
input  [3:0]  io_in_control_shift,
input io_in_control_propagate,
output [18:0] _T_35
 );
  //wires
  wire  flip; // @[PE.scala 58:21:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165099.4]
  wire [3:0] shift_offset; // @[PE.scala 59:25:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165100.4]
  wire  _T_4; // @[Arithmetic.scala 72:32:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165107.8]
  wire [3:0] _T_6; // @[Arithmetic.scala 72:53:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165109.8]
  wire [15:0] _T_7; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165110.8]
  wire  _T_8; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165111.8]
  wire  _T_9; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165112.8]
  wire  _T_10; // @[Arithmetic.scala 73:27:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165113.8]
  wire [15:0] _T_11; // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165114.8]
  wire [15:0] _T_14; // @[Arithmetic.scala 73:62:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165117.8]
  wire [15:0] _T_16; // @[Arithmetic.scala 73:85:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165119.8]
  wire [15:0] _T_17; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165120.8]
  wire [15:0] _T_18; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165121.8]
  wire  _T_19; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165122.8]
  wire [15:0] _T_20; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165123.8]
  wire  _T_21; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165124.8]
  wire  _T_22; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165125.8]
  wire  _T_23; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165126.8]
  wire [1:0] _T_26; // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165129.8]
  wire [15:0] _GEN_19; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165130.8]
  wire [15:0] _T_28; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165131.8]
  wire [15:0] _T_29; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165132.8]
  wire [18:0] _T_32; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165135.8]
  wire [18:0] _T_34; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165137.8]
  //logic  
  assign flip = last_s != io_in_control_propagate; // @[PE.scala 58:21:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165099.4]
  assign shift_offset = flip ? io_in_control_shift : 4'h0; // @[PE.scala 59:25:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165100.4]
  assign _T_4 = shift_offset == 4'h0; // @[Arithmetic.scala 72:32:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165107.8]
  assign _T_6 = shift_offset - 4'h1; // @[Arithmetic.scala 72:53:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165109.8]
  assign _T_7 = $signed(c1) >>> _T_6; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165110.8]
  assign _T_8 = _T_7[0]; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165111.8]
  assign _T_9 = _T_4 ? 1'h0 : _T_8; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165112.8]
  assign _T_10 = shift_offset <= 4'h1; // @[Arithmetic.scala 73:27:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165113.8]
  assign _T_11 = $unsigned(c1); // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165114.8]
  assign _T_14 = 16'h1 << _T_6; // @[Arithmetic.scala 73:62:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165117.8]
  assign _T_16 = _T_14 - 16'h1; // @[Arithmetic.scala 73:85:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165119.8]
  assign _T_17 = _T_11 & _T_16; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165120.8]
  assign _T_18 = _T_10 ? 16'h0 : _T_17; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165121.8]
  assign _T_19 = _T_18 != 16'h0; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165122.8]
  assign _T_20 = $signed(c1) >>> shift_offset; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165123.8]
  assign _T_21 = _T_20[0]; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165124.8]
  assign _T_22 = _T_19 | _T_21; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165125.8]
  assign _T_23 = _T_9 & _T_22; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165126.8]
  assign _T_26 = _T_23 ? $signed(2'sh1) : $signed(2'sh0); // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165129.8]
  assign _GEN_19 = {{14{_T_26[1]}},_T_26}; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165130.8]
  assign _T_28 = $signed(_T_20) + $signed(_GEN_19); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165131.8]
  assign _T_29 = $signed(_T_28); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165132.8]
  assign _T_32 = {{3{_T_29[15]}},_T_29}; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165135.8]
  assign _T_34 = $unsigned(_T_32); // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165137.8]
  assign _T_35 = $signed(_T_34); // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165138.8]
  
endmodule