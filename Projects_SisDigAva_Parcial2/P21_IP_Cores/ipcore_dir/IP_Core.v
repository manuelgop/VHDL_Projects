////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.68d
//  \   \         Application: netgen
//  /   /         Filename: IP_Core.v
// /___/   /\     Timestamp: Thu Oct 17 08:35:50 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog D:/Projects_SisDigAva/P21_IP_Cores/ipcore_dir/tmp/_cg/IP_Core.ngc D:/Projects_SisDigAva/P21_IP_Cores/ipcore_dir/tmp/_cg/IP_Core.v 
// Device	: 6slx16csg324-3
// Input file	: D:/Projects_SisDigAva/P21_IP_Cores/ipcore_dir/tmp/_cg/IP_Core.ngc
// Output file	: D:/Projects_SisDigAva/P21_IP_Cores/ipcore_dir/tmp/_cg/IP_Core.v
// # of Modules	: 1
// Design Name	: IP_Core
// Xilinx        : C:\Xilinx\14.6\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module IP_Core (
  clk, rdy, x_in, x_out
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  output rdy;
  input [7 : 0] x_in;
  output [4 : 0] x_out;
  
  // synthesis translate_off
  
  wire \U0/i_synth/gen_sqrt.square_root/gen_iterations[5].gen_last.gen_no_round.gen_sqrt_tmp/gen_rtl.gen_reg.d_reg<3> ;
  wire \U0/i_synth/gen_sqrt.square_root/gen_iterations[5].gen_last.gen_no_round.gen_sqrt_tmp/gen_rtl.gen_reg.d_reg<2> ;
  wire \U0/i_synth/gen_sqrt.square_root/gen_iterations[5].gen_last.gen_no_round.gen_sqrt_tmp/gen_rtl.gen_reg.d_reg<1> ;
  wire \U0/i_synth/gen_sqrt.square_root/gen_iterations[5].gen_last.gen_no_round.gen_sqrt_tmp/gen_rtl.gen_reg.d_reg<0> ;
  wire \U0/i_synth/gen_sqrt.square_root/gen_rdy_delay.gen_rdy/gen_rtl.gen_reg.d_reg ;
  wire sig00000001;
  wire sig00000002;
  wire sig00000003;
  wire sig00000004;
  wire sig00000005;
  wire sig00000006;
  wire sig00000007;
  wire sig00000008;
  wire sig00000009;
  wire sig0000000a;
  wire sig0000000b;
  wire sig0000000c;
  wire sig0000000d;
  wire sig0000000e;
  wire sig0000000f;
  wire sig00000010;
  wire sig00000011;
  wire sig00000012;
  wire sig00000013;
  wire sig00000014;
  wire sig00000015;
  wire sig00000016;
  wire sig00000017;
  wire sig00000018;
  wire sig00000019;
  wire sig0000001a;
  wire sig0000001b;
  wire sig0000001c;
  wire sig0000001d;
  wire sig0000001e;
  wire sig0000001f;
  wire sig00000020;
  wire sig00000021;
  wire sig00000022;
  wire sig00000023;
  wire sig00000024;
  wire sig00000025;
  wire sig00000026;
  wire sig00000027;
  wire sig00000028;
  wire sig00000029;
  wire sig0000002a;
  wire sig0000002b;
  wire sig0000002c;
  wire sig0000002d;
  wire sig0000002e;
  wire sig0000002f;
  wire sig00000030;
  wire sig00000031;
  wire sig00000032;
  wire sig00000033;
  wire sig00000034;
  wire sig00000035;
  wire sig00000036;
  wire sig00000037;
  wire sig00000038;
  wire sig00000039;
  wire sig0000003a;
  wire sig0000003b;
  wire sig0000003c;
  wire sig0000003d;
  wire sig0000003e;
  wire sig0000003f;
  wire \blk00000022/sig00000059 ;
  wire \blk00000022/sig00000058 ;
  wire \blk00000022/sig00000057 ;
  wire \blk00000022/sig00000056 ;
  wire \blk00000022/sig00000055 ;
  wire \blk00000022/sig00000054 ;
  wire \blk00000022/sig00000053 ;
  wire \blk00000022/sig00000052 ;
  wire \blk00000022/sig00000051 ;
  wire \blk00000022/sig00000050 ;
  wire \blk00000022/sig0000004f ;
  wire \blk00000022/sig0000004e ;
  wire \blk00000022/sig00000049 ;
  wire \blk00000022/sig00000047 ;
  wire \blk00000036/sig0000007a ;
  wire \blk00000036/sig00000079 ;
  wire \blk00000036/sig00000078 ;
  wire \blk00000036/sig00000077 ;
  wire \blk00000036/sig00000076 ;
  wire \blk00000036/sig00000075 ;
  wire \blk00000036/sig00000074 ;
  wire \blk00000036/sig00000073 ;
  wire \blk00000036/sig00000072 ;
  wire \blk00000036/sig00000071 ;
  wire \blk00000036/sig00000070 ;
  wire \blk00000036/sig0000006f ;
  wire \blk00000036/sig0000006e ;
  wire \blk00000036/sig0000006d ;
  wire \blk00000036/sig0000006c ;
  wire \blk00000036/sig00000066 ;
  wire \blk00000036/sig00000064 ;
  wire \blk0000004e/sig000000a0 ;
  wire \blk0000004e/sig0000009f ;
  wire \blk0000004e/sig0000009e ;
  wire \blk0000004e/sig0000009d ;
  wire \blk0000004e/sig0000009c ;
  wire \blk0000004e/sig0000009b ;
  wire \blk0000004e/sig0000009a ;
  wire \blk0000004e/sig00000099 ;
  wire \blk0000004e/sig00000098 ;
  wire \blk0000004e/sig00000097 ;
  wire \blk0000004e/sig00000096 ;
  wire \blk0000004e/sig00000095 ;
  wire \blk0000004e/sig00000094 ;
  wire \blk0000004e/sig00000093 ;
  wire \blk0000004e/sig00000092 ;
  wire \blk0000004e/sig00000091 ;
  wire \blk0000004e/sig00000090 ;
  wire \blk0000004e/sig0000008f ;
  wire \blk0000004e/sig0000008e ;
  wire \blk0000004e/sig0000008d ;
  wire \blk0000004e/sig0000008c ;
  wire \blk0000004e/sig0000008b ;
  wire \blk0000004e/sig0000008a ;
  wire \blk0000004e/sig00000089 ;
  wire \blk0000004e/sig00000087 ;
  wire NLW_blk00000079_Q15_UNCONNECTED;
  wire NLW_blk0000007b_Q15_UNCONNECTED;
  wire NLW_blk0000007d_Q15_UNCONNECTED;
  wire NLW_blk0000007f_Q15_UNCONNECTED;
  wire [4 : 4] NlwRenamedSig_OI_x_out;
  assign
    x_out[4] = NlwRenamedSig_OI_x_out[4],
    x_out[3] = \U0/i_synth/gen_sqrt.square_root/gen_iterations[5].gen_last.gen_no_round.gen_sqrt_tmp/gen_rtl.gen_reg.d_reg<3> ,
    x_out[2] = \U0/i_synth/gen_sqrt.square_root/gen_iterations[5].gen_last.gen_no_round.gen_sqrt_tmp/gen_rtl.gen_reg.d_reg<2> ,
    x_out[1] = \U0/i_synth/gen_sqrt.square_root/gen_iterations[5].gen_last.gen_no_round.gen_sqrt_tmp/gen_rtl.gen_reg.d_reg<1> ,
    x_out[0] = \U0/i_synth/gen_sqrt.square_root/gen_iterations[5].gen_last.gen_no_round.gen_sqrt_tmp/gen_rtl.gen_reg.d_reg<0> ,
    rdy = \U0/i_synth/gen_sqrt.square_root/gen_rdy_delay.gen_rdy/gen_rtl.gen_reg.d_reg ;
  VCC   blk00000001 (
    .P(sig00000001)
  );
  GND   blk00000002 (
    .G(NlwRenamedSig_OI_x_out[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000003 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000002a),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig00000027)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000004 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000029),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig00000026)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000005 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000028),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig00000025)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000006 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000004),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig00000024)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000007 (
    .C(clk),
    .CE(sig00000037),
    .D(sig00000020),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(\U0/i_synth/gen_sqrt.square_root/gen_iterations[5].gen_last.gen_no_round.gen_sqrt_tmp/gen_rtl.gen_reg.d_reg<0> )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000008 (
    .C(clk),
    .CE(sig00000037),
    .D(sig00000021),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(\U0/i_synth/gen_sqrt.square_root/gen_iterations[5].gen_last.gen_no_round.gen_sqrt_tmp/gen_rtl.gen_reg.d_reg<1> )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000009 (
    .C(clk),
    .CE(sig00000037),
    .D(sig00000022),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(\U0/i_synth/gen_sqrt.square_root/gen_iterations[5].gen_last.gen_no_round.gen_sqrt_tmp/gen_rtl.gen_reg.d_reg<2> )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000000a (
    .C(clk),
    .CE(sig00000037),
    .D(sig00000023),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(\U0/i_synth/gen_sqrt.square_root/gen_iterations[5].gen_last.gen_no_round.gen_sqrt_tmp/gen_rtl.gen_reg.d_reg<3> )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000000b (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000011),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig0000002b)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000000c (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000010),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig0000002c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000000d (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000000f),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig0000002d)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000000e (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000000e),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig0000002e)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000000f (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000000d),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig0000002f)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000010 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000032),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig0000001c)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000011 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000031),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig0000002a)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000012 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000030),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig00000029)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000013 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000007),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig00000028)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000014 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000001a),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig00000033)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000015 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000019),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig00000034)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000016 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000018),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig00000035)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk00000017 (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000017),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(sig00000036)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000018 (
    .C(clk),
    .D(sig00000012),
    .Q(sig00000030)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000019 (
    .C(clk),
    .D(sig0000001d),
    .Q(sig00000031)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001a (
    .C(clk),
    .D(sig00000001),
    .Q(sig00000032)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001b (
    .C(clk),
    .D(sig0000001c),
    .Q(sig0000001b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001c (
    .C(clk),
    .D(sig0000001b),
    .Q(sig00000037)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  blk0000001d (
    .C(clk),
    .CE(sig00000001),
    .D(sig00000037),
    .R(NlwRenamedSig_OI_x_out[4]),
    .Q(\U0/i_synth/gen_sqrt.square_root/gen_rdy_delay.gen_rdy/gen_rtl.gen_reg.d_reg )
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001e (
    .C(clk),
    .D(x_in[7]),
    .Q(sig0000003b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000001f (
    .C(clk),
    .D(x_in[6]),
    .Q(sig0000003a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000020 (
    .C(clk),
    .D(x_in[5]),
    .Q(sig00000039)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000021 (
    .C(clk),
    .D(x_in[4]),
    .Q(sig00000038)
  );
  LUT4 #(
    .INIT ( 16'h22F0 ))
  blk00000069 (
    .I0(sig0000003b),
    .I1(sig0000003a),
    .I2(sig00000014),
    .I3(sig00000012),
    .O(sig00000018)
  );
  LUT4 #(
    .INIT ( 16'h88F0 ))
  blk0000006a (
    .I0(sig0000003b),
    .I1(sig0000003a),
    .I2(sig00000013),
    .I3(sig00000012),
    .O(sig00000017)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000006b (
    .I0(sig00000038),
    .I1(sig00000016),
    .I2(sig00000012),
    .O(sig0000001a)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000006c (
    .I0(sig00000039),
    .I1(sig00000015),
    .I2(sig00000012),
    .O(sig00000019)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000006d (
    .I0(sig00000006),
    .I1(sig0000000c),
    .I2(sig00000007),
    .O(sig00000011)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000006e (
    .I0(sig00000005),
    .I1(sig0000000b),
    .I2(sig00000007),
    .O(sig00000010)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000006f (
    .I0(sig00000033),
    .I1(sig0000000a),
    .I2(sig00000007),
    .O(sig0000000f)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000070 (
    .I0(sig00000034),
    .I1(sig00000009),
    .I2(sig00000007),
    .O(sig0000000e)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk00000071 (
    .I0(sig00000035),
    .I1(sig00000008),
    .I2(sig00000007),
    .O(sig0000000d)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk00000072 (
    .I0(sig0000003a),
    .I1(sig0000003b),
    .O(sig0000001d)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  blk00000073 (
    .I0(sig0000003a),
    .I1(sig0000003b),
    .O(sig0000001e)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk00000074 (
    .I0(sig0000003a),
    .I1(sig0000003b),
    .O(sig0000001f)
  );
  INV   blk00000075 (
    .I(sig00000024),
    .O(sig00000020)
  );
  INV   blk00000076 (
    .I(sig00000025),
    .O(sig00000021)
  );
  INV   blk00000077 (
    .I(sig00000026),
    .O(sig00000022)
  );
  INV   blk00000078 (
    .I(sig00000027),
    .O(sig00000023)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk00000079 (
    .A0(sig00000001),
    .A1(NlwRenamedSig_OI_x_out[4]),
    .A2(NlwRenamedSig_OI_x_out[4]),
    .A3(NlwRenamedSig_OI_x_out[4]),
    .CE(sig00000001),
    .CLK(clk),
    .D(x_in[0]),
    .Q(sig0000003c),
    .Q15(NLW_blk00000079_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000007a (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000003c),
    .Q(sig00000003)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000007b (
    .A0(sig00000001),
    .A1(NlwRenamedSig_OI_x_out[4]),
    .A2(NlwRenamedSig_OI_x_out[4]),
    .A3(NlwRenamedSig_OI_x_out[4]),
    .CE(sig00000001),
    .CLK(clk),
    .D(x_in[1]),
    .Q(sig0000003d),
    .Q15(NLW_blk0000007b_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000007c (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000003d),
    .Q(sig00000002)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000007d (
    .A0(NlwRenamedSig_OI_x_out[4]),
    .A1(NlwRenamedSig_OI_x_out[4]),
    .A2(NlwRenamedSig_OI_x_out[4]),
    .A3(NlwRenamedSig_OI_x_out[4]),
    .CE(sig00000001),
    .CLK(clk),
    .D(x_in[2]),
    .Q(sig0000003e),
    .Q15(NLW_blk0000007d_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000007e (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000003e),
    .Q(sig00000006)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  blk0000007f (
    .A0(NlwRenamedSig_OI_x_out[4]),
    .A1(NlwRenamedSig_OI_x_out[4]),
    .A2(NlwRenamedSig_OI_x_out[4]),
    .A3(NlwRenamedSig_OI_x_out[4]),
    .CE(sig00000001),
    .CLK(clk),
    .D(x_in[3]),
    .Q(sig0000003f),
    .Q15(NLW_blk0000007f_Q15_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000080 (
    .C(clk),
    .CE(sig00000001),
    .D(sig0000003f),
    .Q(sig00000005)
  );
  INV   \blk00000022/blk00000035  (
    .I(sig0000001f),
    .O(\blk00000022/sig00000050 )
  );
  INV   \blk00000022/blk00000034  (
    .I(sig00000039),
    .O(\blk00000022/sig00000052 )
  );
  INV   \blk00000022/blk00000033  (
    .I(sig00000038),
    .O(\blk00000022/sig00000053 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000022/blk00000032  (
    .I0(sig0000001e),
    .I1(sig0000001d),
    .O(\blk00000022/sig00000051 )
  );
  MUXCY   \blk00000022/blk00000031  (
    .CI(\blk00000022/sig0000004f ),
    .DI(sig00000038),
    .S(\blk00000022/sig00000053 ),
    .O(\blk00000022/sig00000059 )
  );
  MUXCY   \blk00000022/blk00000030  (
    .CI(\blk00000022/sig00000059 ),
    .DI(sig00000039),
    .S(\blk00000022/sig00000052 ),
    .O(\blk00000022/sig00000058 )
  );
  MUXCY   \blk00000022/blk0000002f  (
    .CI(\blk00000022/sig00000058 ),
    .DI(sig0000001e),
    .S(\blk00000022/sig00000051 ),
    .O(\blk00000022/sig00000057 )
  );
  MUXCY   \blk00000022/blk0000002e  (
    .CI(\blk00000022/sig00000057 ),
    .DI(sig0000001f),
    .S(\blk00000022/sig00000050 ),
    .O(\blk00000022/sig00000056 )
  );
  MUXCY   \blk00000022/blk0000002d  (
    .CI(\blk00000022/sig00000056 ),
    .DI(NlwRenamedSig_OI_x_out[4]),
    .S(\blk00000022/sig0000004e ),
    .O(\blk00000022/sig00000055 )
  );
  MUXCY   \blk00000022/blk0000002c  (
    .CI(\blk00000022/sig00000055 ),
    .DI(NlwRenamedSig_OI_x_out[4]),
    .S(\blk00000022/sig0000004e ),
    .O(\blk00000022/sig00000054 )
  );
  XORCY   \blk00000022/blk0000002b  (
    .CI(\blk00000022/sig00000059 ),
    .LI(\blk00000022/sig00000052 ),
    .O(sig00000015)
  );
  XORCY   \blk00000022/blk0000002a  (
    .CI(\blk00000022/sig00000058 ),
    .LI(\blk00000022/sig00000051 ),
    .O(sig00000014)
  );
  XORCY   \blk00000022/blk00000029  (
    .CI(\blk00000022/sig00000057 ),
    .LI(\blk00000022/sig00000050 ),
    .O(sig00000013)
  );
  XORCY   \blk00000022/blk00000028  (
    .CI(\blk00000022/sig00000056 ),
    .LI(\blk00000022/sig0000004e ),
    .O(\blk00000022/sig00000049 )
  );
  XORCY   \blk00000022/blk00000027  (
    .CI(\blk00000022/sig00000055 ),
    .LI(\blk00000022/sig0000004e ),
    .O(sig00000012)
  );
  XORCY   \blk00000022/blk00000026  (
    .CI(\blk00000022/sig00000054 ),
    .LI(\blk00000022/sig0000004e ),
    .O(\blk00000022/sig00000047 )
  );
  XORCY   \blk00000022/blk00000025  (
    .CI(\blk00000022/sig0000004f ),
    .LI(\blk00000022/sig00000053 ),
    .O(sig00000016)
  );
  GND   \blk00000022/blk00000024  (
    .G(\blk00000022/sig0000004f )
  );
  VCC   \blk00000022/blk00000023  (
    .P(\blk00000022/sig0000004e )
  );
  INV   \blk00000036/blk0000004d  (
    .I(sig00000036),
    .O(\blk00000036/sig0000006e )
  );
  INV   \blk00000036/blk0000004c  (
    .I(sig00000005),
    .O(\blk00000036/sig00000072 )
  );
  INV   \blk00000036/blk0000004b  (
    .I(sig00000006),
    .O(\blk00000036/sig00000073 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000036/blk0000004a  (
    .I0(sig00000035),
    .I1(sig00000032),
    .O(\blk00000036/sig0000006f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000036/blk00000049  (
    .I0(sig00000034),
    .I1(sig00000031),
    .O(\blk00000036/sig00000070 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000036/blk00000048  (
    .I0(sig00000033),
    .I1(sig00000030),
    .O(\blk00000036/sig00000071 )
  );
  MUXCY   \blk00000036/blk00000047  (
    .CI(\blk00000036/sig0000006d ),
    .DI(sig00000006),
    .S(\blk00000036/sig00000073 ),
    .O(\blk00000036/sig0000007a )
  );
  MUXCY   \blk00000036/blk00000046  (
    .CI(\blk00000036/sig0000007a ),
    .DI(sig00000005),
    .S(\blk00000036/sig00000072 ),
    .O(\blk00000036/sig00000079 )
  );
  MUXCY   \blk00000036/blk00000045  (
    .CI(\blk00000036/sig00000079 ),
    .DI(sig00000033),
    .S(\blk00000036/sig00000071 ),
    .O(\blk00000036/sig00000078 )
  );
  MUXCY   \blk00000036/blk00000044  (
    .CI(\blk00000036/sig00000078 ),
    .DI(sig00000034),
    .S(\blk00000036/sig00000070 ),
    .O(\blk00000036/sig00000077 )
  );
  MUXCY   \blk00000036/blk00000043  (
    .CI(\blk00000036/sig00000077 ),
    .DI(sig00000035),
    .S(\blk00000036/sig0000006f ),
    .O(\blk00000036/sig00000076 )
  );
  MUXCY   \blk00000036/blk00000042  (
    .CI(\blk00000036/sig00000076 ),
    .DI(sig00000036),
    .S(\blk00000036/sig0000006e ),
    .O(\blk00000036/sig00000075 )
  );
  MUXCY   \blk00000036/blk00000041  (
    .CI(\blk00000036/sig00000075 ),
    .DI(NlwRenamedSig_OI_x_out[4]),
    .S(\blk00000036/sig0000006c ),
    .O(\blk00000036/sig00000074 )
  );
  XORCY   \blk00000036/blk00000040  (
    .CI(\blk00000036/sig0000007a ),
    .LI(\blk00000036/sig00000072 ),
    .O(sig0000000b)
  );
  XORCY   \blk00000036/blk0000003f  (
    .CI(\blk00000036/sig00000079 ),
    .LI(\blk00000036/sig00000071 ),
    .O(sig0000000a)
  );
  XORCY   \blk00000036/blk0000003e  (
    .CI(\blk00000036/sig00000078 ),
    .LI(\blk00000036/sig00000070 ),
    .O(sig00000009)
  );
  XORCY   \blk00000036/blk0000003d  (
    .CI(\blk00000036/sig00000077 ),
    .LI(\blk00000036/sig0000006f ),
    .O(sig00000008)
  );
  XORCY   \blk00000036/blk0000003c  (
    .CI(\blk00000036/sig00000076 ),
    .LI(\blk00000036/sig0000006e ),
    .O(\blk00000036/sig00000066 )
  );
  XORCY   \blk00000036/blk0000003b  (
    .CI(\blk00000036/sig00000075 ),
    .LI(\blk00000036/sig0000006c ),
    .O(sig00000007)
  );
  XORCY   \blk00000036/blk0000003a  (
    .CI(\blk00000036/sig00000074 ),
    .LI(\blk00000036/sig0000006c ),
    .O(\blk00000036/sig00000064 )
  );
  XORCY   \blk00000036/blk00000039  (
    .CI(\blk00000036/sig0000006d ),
    .LI(\blk00000036/sig00000073 ),
    .O(sig0000000c)
  );
  GND   \blk00000036/blk00000038  (
    .G(\blk00000036/sig0000006d )
  );
  VCC   \blk00000036/blk00000037  (
    .P(\blk00000036/sig0000006c )
  );
  INV   \blk0000004e/blk00000068  (
    .I(sig0000002f),
    .O(\blk0000004e/sig00000092 )
  );
  INV   \blk0000004e/blk00000067  (
    .I(sig00000002),
    .O(\blk0000004e/sig00000097 )
  );
  INV   \blk0000004e/blk00000066  (
    .I(sig00000003),
    .O(\blk0000004e/sig00000098 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000004e/blk00000065  (
    .I0(sig0000002e),
    .I1(sig0000001c),
    .O(\blk0000004e/sig00000093 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000004e/blk00000064  (
    .I0(sig0000002d),
    .I1(sig0000002a),
    .O(\blk0000004e/sig00000094 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000004e/blk00000063  (
    .I0(sig0000002c),
    .I1(sig00000029),
    .O(\blk0000004e/sig00000095 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk0000004e/blk00000062  (
    .I0(sig0000002b),
    .I1(sig00000028),
    .O(\blk0000004e/sig00000096 )
  );
  MUXCY   \blk0000004e/blk00000061  (
    .CI(\blk0000004e/sig00000091 ),
    .DI(sig00000003),
    .S(\blk0000004e/sig00000098 ),
    .O(\blk0000004e/sig000000a0 )
  );
  MUXCY   \blk0000004e/blk00000060  (
    .CI(\blk0000004e/sig000000a0 ),
    .DI(sig00000002),
    .S(\blk0000004e/sig00000097 ),
    .O(\blk0000004e/sig0000009f )
  );
  MUXCY   \blk0000004e/blk0000005f  (
    .CI(\blk0000004e/sig0000009f ),
    .DI(sig0000002b),
    .S(\blk0000004e/sig00000096 ),
    .O(\blk0000004e/sig0000009e )
  );
  MUXCY   \blk0000004e/blk0000005e  (
    .CI(\blk0000004e/sig0000009e ),
    .DI(sig0000002c),
    .S(\blk0000004e/sig00000095 ),
    .O(\blk0000004e/sig0000009d )
  );
  MUXCY   \blk0000004e/blk0000005d  (
    .CI(\blk0000004e/sig0000009d ),
    .DI(sig0000002d),
    .S(\blk0000004e/sig00000094 ),
    .O(\blk0000004e/sig0000009c )
  );
  MUXCY   \blk0000004e/blk0000005c  (
    .CI(\blk0000004e/sig0000009c ),
    .DI(sig0000002e),
    .S(\blk0000004e/sig00000093 ),
    .O(\blk0000004e/sig0000009b )
  );
  MUXCY   \blk0000004e/blk0000005b  (
    .CI(\blk0000004e/sig0000009b ),
    .DI(sig0000002f),
    .S(\blk0000004e/sig00000092 ),
    .O(\blk0000004e/sig0000009a )
  );
  MUXCY   \blk0000004e/blk0000005a  (
    .CI(\blk0000004e/sig0000009a ),
    .DI(NlwRenamedSig_OI_x_out[4]),
    .S(\blk0000004e/sig00000090 ),
    .O(\blk0000004e/sig00000099 )
  );
  XORCY   \blk0000004e/blk00000059  (
    .CI(\blk0000004e/sig000000a0 ),
    .LI(\blk0000004e/sig00000097 ),
    .O(\blk0000004e/sig0000008e )
  );
  XORCY   \blk0000004e/blk00000058  (
    .CI(\blk0000004e/sig0000009f ),
    .LI(\blk0000004e/sig00000096 ),
    .O(\blk0000004e/sig0000008d )
  );
  XORCY   \blk0000004e/blk00000057  (
    .CI(\blk0000004e/sig0000009e ),
    .LI(\blk0000004e/sig00000095 ),
    .O(\blk0000004e/sig0000008c )
  );
  XORCY   \blk0000004e/blk00000056  (
    .CI(\blk0000004e/sig0000009d ),
    .LI(\blk0000004e/sig00000094 ),
    .O(\blk0000004e/sig0000008b )
  );
  XORCY   \blk0000004e/blk00000055  (
    .CI(\blk0000004e/sig0000009c ),
    .LI(\blk0000004e/sig00000093 ),
    .O(\blk0000004e/sig0000008a )
  );
  XORCY   \blk0000004e/blk00000054  (
    .CI(\blk0000004e/sig0000009b ),
    .LI(\blk0000004e/sig00000092 ),
    .O(\blk0000004e/sig00000089 )
  );
  XORCY   \blk0000004e/blk00000053  (
    .CI(\blk0000004e/sig0000009a ),
    .LI(\blk0000004e/sig00000090 ),
    .O(sig00000004)
  );
  XORCY   \blk0000004e/blk00000052  (
    .CI(\blk0000004e/sig00000099 ),
    .LI(\blk0000004e/sig00000090 ),
    .O(\blk0000004e/sig00000087 )
  );
  XORCY   \blk0000004e/blk00000051  (
    .CI(\blk0000004e/sig00000091 ),
    .LI(\blk0000004e/sig00000098 ),
    .O(\blk0000004e/sig0000008f )
  );
  GND   \blk0000004e/blk00000050  (
    .G(\blk0000004e/sig00000091 )
  );
  VCC   \blk0000004e/blk0000004f  (
    .P(\blk0000004e/sig00000090 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
