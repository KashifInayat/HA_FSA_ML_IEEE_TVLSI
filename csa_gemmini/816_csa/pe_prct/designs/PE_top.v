/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Mon Jun 21 17:34:27 2021
/////////////////////////////////////////////////////////////


module r4_mb8 ( mx, my, CLK, RST, sum, carry );
  input [7:0] mx;
  input [7:0] my;
  output [15:0] sum;
  output [15:0] carry;
  input CLK, RST;
  wire   carry_1, \b_e0/w1 , \b_selector[0].bs/N2 , net3582, net3592, net3600,
         net3605, net3607, net3608, net3613, net3616, net3620, net3621,
         net3625, net3626, net3628, net3635, net3637, net3642, net3645,
         net3648, net3668, net3669, net3671, net3693, net3695, net3701,
         net3705, net3706, net3707, net3708, net3709, net3716, net3723,
         net3730, net3735, net3742, net3753, net3776, net3777, net3783,
         net3785, net3799, net3802, net3803, net3813, net3818, net3829,
         net3859, net3863, net3864, net3865, net3868, net3933, net3943,
         net3828, net3787, net3782, net3734, net3703, net3623, net3733,
         net3732, net3815, net3811, net3806, net3805, net3704, net3808,
         net3804, net3595, net3594, net3786, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171;
  wire   [3:0] n;
  assign carry[1] = carry_1;
  assign n[3] = mx[7];
  assign n[2] = mx[5];
  assign n[1] = mx[3];
  assign n[0] = mx[1];
  assign \b_e0/w1  = mx[0];
  assign sum[0] = \b_selector[0].bs/N2 ;
  assign carry[0] = 1'b0;
  assign carry[2] = 1'b0;

  XOR3X1_HVT U3 ( .A1(net3628), .A2(n166), .A3(n165), .Y(sum[12]) );
  XOR3X1_HVT U4 ( .A1(n67), .A2(n66), .A3(n65), .Y(n148) );
  XOR2X1_HVT U5 ( .A1(net3811), .A2(net3592), .Y(n3) );
  XOR2X1_HVT U6 ( .A1(net3813), .A2(net3592), .Y(n13) );
  XOR3X1_HVT U7 ( .A1(n69), .A2(n28), .A3(n68), .Y(n74) );
  XOR3X1_HVT U8 ( .A1(net3742), .A2(n28), .A3(n88), .Y(n91) );
  XOR2X1_HVT U9 ( .A1(net3703), .A2(net3671), .Y(n7) );
  XOR2X1_HVT U10 ( .A1(net3777), .A2(n5), .Y(net3776) );
  INVX1_HVT U11 ( .A(net3671), .Y(n5) );
  INVX1_HVT U12 ( .A(net3786), .Y(n11) );
  OR2X2_HVT U13 ( .A1(n[0]), .A2(mx[2]), .Y(net3786) );
  OR2X2_HVT U14 ( .A1(n39), .A2(n45), .Y(net3753) );
  AO21X1_HVT U15 ( .A1(n154), .A2(net3671), .A3(n38), .Y(net3943) );
  NBUFFX2_HVT U16 ( .A(n[1]), .Y(n2) );
  XOR3X2_HVT U17 ( .A1(net3594), .A2(net3595), .A3(n3), .Y(sum[10]) );
  INVX1_HVT U18 ( .A(n30), .Y(n27) );
  OR2X2_HVT U19 ( .A1(net3669), .A2(n23), .Y(net3628) );
  INVX1_HVT U20 ( .A(n[1]), .Y(n12) );
  NBUFFX2_HVT U21 ( .A(net3802), .Y(n4) );
  OR2X1_HVT U22 ( .A1(my[1]), .A2(my[0]), .Y(n82) );
  XOR2X1_HVT U23 ( .A1(n100), .A2(n113), .Y(n85) );
  XOR2X1_HVT U24 ( .A1(n[3]), .A2(n[2]), .Y(net3592) );
  INVX2_HVT U25 ( .A(mx[6]), .Y(n30) );
  INVX0_HVT U26 ( .A(my[7]), .Y(net3787) );
  INVX0_HVT U27 ( .A(n130), .Y(n18) );
  NAND3X0_HVT U28 ( .A1(n5), .A2(net3582), .A3(n154), .Y(n156) );
  INVX0_HVT U29 ( .A(n17), .Y(n16) );
  INVX0_HVT U30 ( .A(net3669), .Y(net3864) );
  NOR2X0_HVT U31 ( .A1(net3671), .A2(sum[4]), .Y(carry[5]) );
  OA22X1_HVT U32 ( .A1(net3607), .A2(net3787), .A3(net3608), .A4(net3753), .Y(
        n158) );
  INVX0_HVT U33 ( .A(n124), .Y(n61) );
  INVX0_HVT U34 ( .A(net3753), .Y(net3863) );
  INVX0_HVT U35 ( .A(net3709), .Y(net3708) );
  NAND2X0_HVT U36 ( .A1(n99), .A2(net3582), .Y(n130) );
  INVX0_HVT U37 ( .A(n28), .Y(n163) );
  AND2X1_HVT U38 ( .A1(n[3]), .A2(n80), .Y(n81) );
  AO21X1_HVT U39 ( .A1(net3582), .A2(net3786), .A3(n6), .Y(net3783) );
  NBUFFX2_HVT U40 ( .A(net3933), .Y(net3868) );
  OR2X1_HVT U41 ( .A1(net3828), .A2(net3829), .Y(net3782) );
  AO21X1_HVT U42 ( .A1(my[1]), .A2(n32), .A3(net3671), .Y(n97) );
  XNOR2X2_HVT U43 ( .A1(net3716), .A2(n2), .Y(n28) );
  INVX0_HVT U44 ( .A(my[5]), .Y(net3623) );
  INVX0_HVT U45 ( .A(mx[6]), .Y(n94) );
  INVX1_HVT U46 ( .A(my[0]), .Y(n160) );
  NBUFFX2_HVT U47 ( .A(n[1]), .Y(n6) );
  OA21X1_HVT U48 ( .A1(net3828), .A2(net3829), .A3(n6), .Y(n17) );
  AND3X1_HVT U49 ( .A1(my[7]), .A2(\b_e0/w1 ), .A3(net3716), .Y(net3829) );
  INVX2_HVT U50 ( .A(n[0]), .Y(net3716) );
  AND2X1_HVT U51 ( .A1(net3787), .A2(net3933), .Y(net3828) );
  FADDX1_HVT U52 ( .A(net3782), .B(net3808), .CI(n7), .CO(net3594) );
  XOR2X2_HVT U53 ( .A1(n9), .A2(net3742), .Y(n107) );
  XOR2X1_HVT U54 ( .A1(n64), .A2(n9), .Y(n65) );
  XOR3X2_HVT U55 ( .A1(n8), .A2(n113), .A3(n112), .Y(n120) );
  INVX0_HVT U56 ( .A(n9), .Y(n8) );
  XNOR2X2_HVT U57 ( .A1(n161), .A2(net3671), .Y(n9) );
  XOR3X2_HVT U58 ( .A1(n130), .A2(n9), .A3(n129), .Y(n134) );
  XOR2X2_HVT U59 ( .A1(n10), .A2(net3592), .Y(n60) );
  XOR2X1_HVT U60 ( .A1(n10), .A2(net3671), .Y(n122) );
  OA22X1_HVT U61 ( .A1(net3787), .A2(net3625), .A3(net3608), .A4(net3626), .Y(
        n10) );
  NAND2X0_HVT U62 ( .A1(net3786), .A2(n2), .Y(net3732) );
  OA21X1_HVT U63 ( .A1(n12), .A2(n11), .A3(net3733), .Y(net3799) );
  AO21X1_HVT U64 ( .A1(mx[2]), .A2(n[0]), .A3(n[1]), .Y(net3733) );
  XOR3X2_HVT U65 ( .A1(n14), .A2(n13), .A3(net3811), .Y(net3806) );
  OA21X1_HVT U66 ( .A1(net3637), .A2(net3799), .A3(net3582), .Y(net3813) );
  XNOR2X2_HVT U67 ( .A1(net3716), .A2(mx[2]), .Y(net3637) );
  XOR2X2_HVT U68 ( .A1(net3705), .A2(net3777), .Y(n14) );
  OA22X1_HVT U69 ( .A1(net3608), .A2(net3625), .A3(net3623), .A4(net3943), .Y(
        net3777) );
  NAND2X0_HVT U70 ( .A1(n16), .A2(n15), .Y(net3705) );
  OR3X1_HVT U71 ( .A1(n6), .A2(net3828), .A3(net3829), .Y(n15) );
  XNOR2X2_HVT U72 ( .A1(n133), .A2(n131), .Y(sum[8]) );
  XOR3X2_HVT U73 ( .A1(n129), .A2(n18), .A3(n34), .Y(n133) );
  AO22X1_HVT U74 ( .A1(net3695), .A2(n19), .A3(net3693), .A4(net3782), .Y(
        net3642) );
  XOR3X2_HVT U75 ( .A1(n130), .A2(n28), .A3(n104), .Y(n19) );
  OR2X1_HVT U76 ( .A1(\b_e0/w1 ), .A2(net3868), .Y(n99) );
  XOR2X2_HVT U77 ( .A1(n112), .A2(n28), .Y(n35) );
  XOR2X2_HVT U78 ( .A1(n29), .A2(n101), .Y(n112) );
  AO21X1_HVT U79 ( .A1(net3600), .A2(my[6]), .A3(n77), .Y(n101) );
  AND2X1_HVT U80 ( .A1(net3803), .A2(net3933), .Y(net3600) );
  AND2X1_HVT U81 ( .A1(n21), .A2(n20), .Y(n29) );
  NAND3X0_HVT U82 ( .A1(net3733), .A2(net3732), .A3(my[4]), .Y(n20) );
  NAND2X0_HVT U83 ( .A1(net3637), .A2(my[5]), .Y(n21) );
  NAND2X0_HVT U84 ( .A1(net3783), .A2(n59), .Y(n22) );
  OA21X1_HVT U85 ( .A1(n[3]), .A2(net3708), .A3(n136), .Y(n138) );
  INVX4_HVT U86 ( .A(n[2]), .Y(net3671) );
  OA21X1_HVT U87 ( .A1(mx[4]), .A2(n[1]), .A3(n[2]), .Y(n38) );
  INVX0_HVT U88 ( .A(my[3]), .Y(net3735) );
  INVX1_HVT U89 ( .A(net3716), .Y(net3933) );
  INVX0_HVT U90 ( .A(my[1]), .Y(n78) );
  INVX0_HVT U91 ( .A(my[2]), .Y(n143) );
  INVX0_HVT U92 ( .A(n48), .Y(n64) );
  INVX0_HVT U93 ( .A(n49), .Y(n53) );
  INVX0_HVT U94 ( .A(net3782), .Y(net3620) );
  INVX0_HVT U95 ( .A(my[6]), .Y(net3608) );
  INVX1_HVT U96 ( .A(n[3]), .Y(net3605) );
  INVX0_HVT U97 ( .A(net3818), .Y(net3815) );
  INVX0_HVT U98 ( .A(my[4]), .Y(net3734) );
  INVX0_HVT U99 ( .A(\b_e0/w1 ), .Y(net3803) );
  INVX0_HVT U100 ( .A(net3600), .Y(net3635) );
  INVX0_HVT U101 ( .A(n94), .Y(n32) );
  XNOR2X1_HVT U102 ( .A1(n29), .A2(n12), .Y(n102) );
  XOR2X1_HVT U103 ( .A1(n67), .A2(n12), .Y(n56) );
  INVX0_HVT U104 ( .A(n79), .Y(n46) );
  XOR2X1_HVT U105 ( .A1(n88), .A2(n12), .Y(n89) );
  NAND2X0_HVT U106 ( .A1(n25), .A2(n23), .Y(net3811) );
  XOR2X1_HVT U107 ( .A1(n158), .A2(net3605), .Y(n169) );
  XOR2X1_HVT U108 ( .A1(net3613), .A2(net3605), .Y(n155) );
  NBUFFX2_HVT U109 ( .A(my[7]), .Y(net3582) );
  INVX0_HVT U110 ( .A(\b_selector[0].bs/N2 ), .Y(n105) );
  INVX0_HVT U111 ( .A(net3628), .Y(net3616) );
  INVX0_HVT U112 ( .A(n166), .Y(n153) );
  XOR3X1_HVT U113 ( .A1(n164), .A2(n163), .A3(n162), .Y(sum[3]) );
  XOR2X1_HVT U114 ( .A1(n74), .A2(n63), .Y(sum[4]) );
  INVX0_HVT U115 ( .A(n72), .Y(n63) );
  XOR2X1_HVT U116 ( .A1(n148), .A2(n147), .Y(sum[5]) );
  XOR3X1_HVT U117 ( .A1(n169), .A2(n168), .A3(n167), .Y(sum[13]) );
  INVX0_HVT U118 ( .A(carry[15]), .Y(sum[14]) );
  NAND2X0_HVT U119 ( .A1(net3933), .A2(mx[2]), .Y(net3785) );
  AO22X1_HVT U120 ( .A1(net3804), .A2(net3805), .A3(net3806), .A4(net3594), 
        .Y(carry[11]) );
  XOR2X2_HVT U121 ( .A1(net3704), .A2(n6), .Y(net3808) );
  XOR3X2_HVT U122 ( .A1(net3777), .A2(net3813), .A3(net3705), .Y(net3595) );
  XNOR2X2_HVT U123 ( .A1(net3595), .A2(net3671), .Y(net3804) );
  XNOR2X2_HVT U124 ( .A1(net3621), .A2(net3782), .Y(net3668) );
  XOR3X2_HVT U125 ( .A1(net3703), .A2(net3704), .A3(net3705), .Y(net3645) );
  AO22X1_HVT U126 ( .A1(my[7]), .A2(net3637), .A3(net3799), .A4(my[6]), .Y(
        net3704) );
  NAND2X0_HVT U127 ( .A1(net3811), .A2(n[3]), .Y(n24) );
  NAND2X0_HVT U128 ( .A1(n26), .A2(net3815), .Y(n25) );
  OA21X1_HVT U129 ( .A1(n[3]), .A2(net3815), .A3(n24), .Y(net3805) );
  INVX0_HVT U130 ( .A(net3707), .Y(n26) );
  AO21X1_HVT U131 ( .A1(net3818), .A2(net3707), .A3(net3864), .Y(net3865) );
  NAND2X0_HVT U132 ( .A1(net3707), .A2(net3818), .Y(n23) );
  AO21X1_HVT U133 ( .A1(net3708), .A2(net3706), .A3(net3707), .Y(net3648) );
  NAND3X0_HVT U134 ( .A1(net3732), .A2(my[5]), .A3(net3733), .Y(net3730) );
  OA22X1_HVT U135 ( .A1(net3623), .A2(net3625), .A3(net3734), .A4(net3626), 
        .Y(net3703) );
  OA22X1_HVT U136 ( .A1(net3625), .A2(net3734), .A3(net3735), .A4(net3626), 
        .Y(net3701) );
  OA22X1_HVT U137 ( .A1(net3735), .A2(net3753), .A3(net3734), .A4(net3607), 
        .Y(net3818) );
  OA22X1_HVT U138 ( .A1(net3803), .A2(net3608), .A3(net3623), .A4(net3635), 
        .Y(net3742) );
  OA22X1_HVT U139 ( .A1(net3608), .A2(net3607), .A3(net3623), .A4(net3753), 
        .Y(net3613) );
  INVX0_HVT U140 ( .A(net3829), .Y(net3859) );
  XOR2X1_HVT U141 ( .A1(n88), .A2(n86), .Y(n108) );
  OA22X1_HVT U142 ( .A1(n[3]), .A2(net3669), .A3(net3668), .A4(n122), .Y(n123)
         );
  XNOR2X1_HVT U143 ( .A1(n104), .A2(n6), .Y(net3693) );
  OA22X1_HVT U144 ( .A1(net3625), .A2(net3735), .A3(n143), .A4(net3626), .Y(
        n113) );
  OA22X1_HVT U145 ( .A1(n78), .A2(net3625), .A3(n160), .A4(net3943), .Y(n66)
         );
  OA22X1_HVT U146 ( .A1(n143), .A2(net3625), .A3(n78), .A4(net3943), .Y(n86)
         );
  OR2X1_HVT U147 ( .A1(net3607), .A2(n160), .Y(n79) );
  INVX2_HVT U148 ( .A(net3802), .Y(net3607) );
  XNOR2X1_HVT U149 ( .A1(net3716), .A2(n[1]), .Y(n161) );
  XNOR2X2_HVT U150 ( .A1(n[2]), .A2(n30), .Y(net3802) );
  AND3X1_HVT U151 ( .A1(n31), .A2(n[3]), .A3(n80), .Y(n41) );
  NAND2X0_HVT U152 ( .A1(my[0]), .A2(n94), .Y(n80) );
  NAND2X0_HVT U153 ( .A1(net3671), .A2(my[1]), .Y(n31) );
  XNOR2X2_HVT U154 ( .A1(net3701), .A2(n104), .Y(n129) );
  AND2X1_HVT U155 ( .A1(n93), .A2(net3730), .Y(n104) );
  OR3X1_HVT U156 ( .A1(my[2]), .A2(my[1]), .A3(my[0]), .Y(n40) );
  XOR2X1_HVT U157 ( .A1(net3645), .A2(n5), .Y(n137) );
  OA21X1_HVT U158 ( .A1(n5), .A2(n32), .A3(net3605), .Y(n170) );
  AO21X1_HVT U159 ( .A1(n32), .A2(n5), .A3(net3787), .Y(n171) );
  XOR2X2_HVT U160 ( .A1(n127), .A2(n100), .Y(n34) );
  XOR2X2_HVT U161 ( .A1(n28), .A2(net3592), .Y(n100) );
  AND2X1_HVT U162 ( .A1(n33), .A2(net3706), .Y(n127) );
  NAND2X0_HVT U163 ( .A1(n98), .A2(n128), .Y(n33) );
  OA22X1_HVT U164 ( .A1(n103), .A2(n102), .A3(n36), .A4(n35), .Y(n131) );
  XOR2X1_HVT U165 ( .A1(n113), .A2(n5), .Y(n36) );
  NAND2X0_HVT U166 ( .A1(net3628), .A2(net3865), .Y(n121) );
  AO22X1_HVT U167 ( .A1(my[5]), .A2(n4), .A3(net3863), .A4(my[4]), .Y(net3669)
         );
  AND2X1_HVT U168 ( .A1(net3723), .A2(net3709), .Y(net3707) );
  OAI22X1_HVT U169 ( .A1(n37), .A2(n124), .A3(n125), .A4(n126), .Y(carry[12])
         );
  XNOR2X2_HVT U170 ( .A1(n37), .A2(n61), .Y(sum[11]) );
  XOR3X2_HVT U171 ( .A1(n60), .A2(net3668), .A3(n121), .Y(n37) );
  OA21X1_HVT U172 ( .A1(net3716), .A2(n101), .A3(net3859), .Y(n103) );
  AO21X1_HVT U173 ( .A1(n154), .A2(net3671), .A3(n38), .Y(net3626) );
  NAND2X0_HVT U174 ( .A1(n[1]), .A2(mx[4]), .Y(n154) );
  OA22X1_HVT U175 ( .A1(n45), .A2(n44), .A3(net3735), .A4(net3607), .Y(net3709) );
  XNOR2X2_HVT U176 ( .A1(mx[4]), .A2(n[1]), .Y(net3625) );
  OR2X1_HVT U177 ( .A1(n27), .A2(n[3]), .Y(n43) );
  INVX0_HVT U178 ( .A(n43), .Y(n39) );
  MUX21X1_HVT U179 ( .A1(n27), .A2(n[3]), .S0(n[2]), .Y(n45) );
  NAND2X0_HVT U180 ( .A1(n40), .A2(net3802), .Y(n42) );
  AND2X1_HVT U181 ( .A1(n42), .A2(n41), .Y(net3723) );
  NAND2X0_HVT U182 ( .A1(n43), .A2(my[2]), .Y(n44) );
  XNOR2X2_HVT U183 ( .A1(n107), .A2(n46), .Y(n58) );
  AO22X1_HVT U184 ( .A1(my[4]), .A2(net3637), .A3(net3799), .A4(my[3]), .Y(n88) );
  AO22X1_HVT U185 ( .A1(\b_e0/w1 ), .A2(my[5]), .A3(net3600), .A4(my[4]), .Y(
        n48) );
  MUX21X1_HVT U186 ( .A1(my[5]), .A2(n64), .S0(net3868), .Y(n47) );
  NAND2X0_HVT U187 ( .A1(n47), .A2(n99), .Y(n57) );
  NAND2X0_HVT U188 ( .A1(my[2]), .A2(net3799), .Y(n51) );
  NAND2X0_HVT U189 ( .A1(net3637), .A2(my[3]), .Y(n50) );
  NAND2X0_HVT U190 ( .A1(n51), .A2(n50), .Y(n67) );
  XOR2X1_HVT U191 ( .A1(n66), .A2(n5), .Y(n55) );
  XOR2X1_HVT U192 ( .A1(n48), .A2(n28), .Y(n49) );
  AO21X1_HVT U193 ( .A1(n51), .A2(n50), .A3(n49), .Y(n52) );
  OA21X1_HVT U194 ( .A1(n53), .A2(n67), .A3(n52), .Y(n54) );
  OA22X1_HVT U195 ( .A1(n57), .A2(n56), .A3(n55), .A4(n54), .Y(n106) );
  XOR3X2_HVT U196 ( .A1(n58), .A2(n108), .A3(n106), .Y(sum[6]) );
  NAND3X0_HVT U197 ( .A1(net3582), .A2(net3785), .A3(n6), .Y(n59) );
  NAND2X0_HVT U198 ( .A1(net3783), .A2(n59), .Y(net3621) );
  FADDX1_HVT U199 ( .A(net3620), .B(net3776), .CI(n22), .CO(n124) );
  XOR2X1_HVT U200 ( .A1(my[2]), .A2(net3868), .Y(n62) );
  AO22X1_HVT U201 ( .A1(net3600), .A2(n78), .A3(n62), .A4(\b_e0/w1 ), .Y(n141)
         );
  AND2X1_HVT U202 ( .A1(net3637), .A2(my[0]), .Y(n140) );
  XOR2X1_HVT U203 ( .A1(n141), .A2(n140), .Y(sum[2]) );
  AND2X1_HVT U204 ( .A1(\b_e0/w1 ), .A2(my[4]), .Y(n71) );
  AO21X1_HVT U205 ( .A1(net3600), .A2(my[3]), .A3(n71), .Y(n69) );
  AO22X1_HVT U206 ( .A1(my[2]), .A2(net3637), .A3(net3799), .A4(my[1]), .Y(n68) );
  OR2X1_HVT U207 ( .A1(n160), .A2(net3625), .Y(n72) );
  XOR2X1_HVT U208 ( .A1(n6), .A2(n68), .Y(n76) );
  INVX0_HVT U209 ( .A(n69), .Y(n70) );
  MUX21X1_HVT U210 ( .A1(n71), .A2(n70), .S0(net3868), .Y(n75) );
  XOR2X1_HVT U211 ( .A1(n72), .A2(net3671), .Y(n73) );
  AO22X1_HVT U212 ( .A1(n76), .A2(n75), .A3(n74), .A4(n73), .Y(n147) );
  AND2X1_HVT U213 ( .A1(\b_e0/w1 ), .A2(net3582), .Y(n77) );
  OA22X1_HVT U214 ( .A1(n160), .A2(net3753), .A3(n78), .A4(net3607), .Y(n116)
         );
  AND2X1_HVT U215 ( .A1(n79), .A2(n[3]), .Y(n84) );
  NAND2X0_HVT U216 ( .A1(n4), .A2(n82), .Y(n83) );
  NAND2X0_HVT U217 ( .A1(n81), .A2(n83), .Y(n98) );
  OA21X1_HVT U218 ( .A1(n116), .A2(n84), .A3(n98), .Y(n114) );
  XOR3X2_HVT U219 ( .A1(n112), .A2(n114), .A3(n85), .Y(n117) );
  XOR2X1_HVT U220 ( .A1(n86), .A2(n5), .Y(n92) );
  MUX21X1_HVT U221 ( .A1(my[6]), .A2(net3742), .S0(net3868), .Y(n87) );
  NAND2X0_HVT U222 ( .A1(n87), .A2(n99), .Y(n90) );
  OA22X1_HVT U223 ( .A1(n92), .A2(n91), .A3(n90), .A4(n89), .Y(n118) );
  XOR2X2_HVT U224 ( .A1(n117), .A2(n118), .Y(sum[7]) );
  NAND2X0_HVT U225 ( .A1(net3637), .A2(my[6]), .Y(n93) );
  NAND3X0_HVT U226 ( .A1(n94), .A2(my[1]), .A3(n[3]), .Y(n95) );
  NAND2X0_HVT U227 ( .A1(n95), .A2(net3671), .Y(n96) );
  AO22X1_HVT U228 ( .A1(n97), .A2(n96), .A3(n4), .A4(my[2]), .Y(n128) );
  INVX0_HVT U229 ( .A(net3723), .Y(net3706) );
  XOR3X2_HVT U230 ( .A1(net3648), .A2(net3592), .A3(net3645), .Y(n139) );
  XOR2X1_HVT U231 ( .A1(net3701), .A2(net3671), .Y(net3695) );
  XOR2X2_HVT U232 ( .A1(n139), .A2(net3642), .Y(sum[9]) );
  AND2X1_HVT U233 ( .A1(\b_e0/w1 ), .A2(my[0]), .Y(\b_selector[0].bs/N2 ) );
  AND2X1_HVT U234 ( .A1(net3868), .A2(n105), .Y(carry_1) );
  INVX0_HVT U235 ( .A(n106), .Y(n111) );
  NAND2X0_HVT U236 ( .A1(n106), .A2(n79), .Y(n110) );
  XOR2X1_HVT U237 ( .A1(n107), .A2(n108), .Y(n109) );
  AO22X1_HVT U238 ( .A1(n111), .A2(n46), .A3(n110), .A4(n109), .Y(carry[7]) );
  INVX0_HVT U239 ( .A(n114), .Y(n115) );
  MUX21X1_HVT U240 ( .A1(n116), .A2(n115), .S0(n[3]), .Y(n119) );
  OAI22X1_HVT U241 ( .A1(n120), .A2(n119), .A3(n118), .A4(n117), .Y(carry[8])
         );
  AND2X1_HVT U242 ( .A1(n[3]), .A2(n121), .Y(n126) );
  NAND2X0_HVT U243 ( .A1(n122), .A2(net3668), .Y(n152) );
  NAND2X0_HVT U244 ( .A1(n123), .A2(n152), .Y(n125) );
  MUX21X1_HVT U245 ( .A1(n128), .A2(n127), .S0(n[3]), .Y(n135) );
  INVX0_HVT U246 ( .A(n131), .Y(n132) );
  AO22X1_HVT U247 ( .A1(n135), .A2(n134), .A3(n133), .A4(n132), .Y(carry[9])
         );
  NAND2X0_HVT U248 ( .A1(net3648), .A2(n[3]), .Y(n136) );
  AO22X1_HVT U249 ( .A1(net3642), .A2(n139), .A3(n138), .A4(n137), .Y(
        carry[10]) );
  MUX21X1_HVT U250 ( .A1(n6), .A2(n141), .S0(n140), .Y(carry[3]) );
  AO22X1_HVT U251 ( .A1(my[1]), .A2(net3637), .A3(net3799), .A4(my[0]), .Y(
        n162) );
  XOR2X1_HVT U252 ( .A1(n6), .A2(n162), .Y(n146) );
  NAND2X0_HVT U253 ( .A1(\b_e0/w1 ), .A2(my[3]), .Y(n142) );
  INVX0_HVT U254 ( .A(n142), .Y(n144) );
  OA21X1_HVT U255 ( .A1(n143), .A2(net3635), .A3(n142), .Y(n164) );
  MUX21X1_HVT U256 ( .A1(n144), .A2(n164), .S0(net3868), .Y(n145) );
  AND2X1_HVT U257 ( .A1(n146), .A2(n145), .Y(carry[4]) );
  AND2X1_HVT U258 ( .A1(n148), .A2(n147), .Y(carry[6]) );
  NAND2X0_HVT U259 ( .A1(net3625), .A2(net3943), .Y(n149) );
  NAND2X0_HVT U260 ( .A1(n149), .A2(net3582), .Y(n150) );
  XOR3X2_HVT U261 ( .A1(n150), .A2(net3592), .A3(net3613), .Y(n166) );
  NAND2X0_HVT U262 ( .A1(net3620), .A2(net3621), .Y(n151) );
  NAND2X0_HVT U263 ( .A1(n152), .A2(n151), .Y(n165) );
  FADDX1_HVT U264 ( .A(net3616), .B(n153), .CI(n165), .CO(carry[13]) );
  AO221X1_HVT U265 ( .A1(net3582), .A2(mx[4]), .A3(n6), .A4(net3582), .A5(n5), 
        .Y(n157) );
  AO21X1_HVT U266 ( .A1(n157), .A2(n156), .A3(n155), .Y(n167) );
  NAND2X0_HVT U267 ( .A1(n157), .A2(n156), .Y(n168) );
  AO21X1_HVT U268 ( .A1(n167), .A2(n168), .A3(n169), .Y(carry[14]) );
  AO22X1_HVT U269 ( .A1(n170), .A2(net3582), .A3(n[3]), .A4(n171), .Y(
        carry[15]) );
  XOR2X1_HVT U270 ( .A1(my[1]), .A2(net3868), .Y(n159) );
  AO22X1_HVT U271 ( .A1(net3600), .A2(n160), .A3(n159), .A4(\b_e0/w1 ), .Y(
        sum[1]) );
  OAI22X1_HVT U272 ( .A1(n[3]), .A2(net3582), .A3(n171), .A4(n170), .Y(sum[15]) );
endmodule


module SNPS_CLOCK_GATE_HIGH_PE_64 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CGLPPRX2_HVT latch ( .CLK(CLK), .EN(EN), .SE(TE), .GCLK(ENCLK) );
endmodule


module PE_64 ( clock, io_in_a, io_in_b, io_in_d, io_out_a, io_out_b, io_out_c, 
        io_in_control_propagate, io_in_control_shift, io_out_control_propagate, 
        io_out_control_shift, io_in_valid, io_out_valid );
  input [7:0] io_in_a;
  input [18:0] io_in_b;
  input [18:0] io_in_d;
  output [7:0] io_out_a;
  output [18:0] io_out_b;
  output [18:0] io_out_c;
  input [3:0] io_in_control_shift;
  output [3:0] io_out_control_shift;
  input clock, io_in_control_propagate, io_in_valid;
  output io_out_control_propagate, io_out_valid;
  wire   io_in_valid, last_s, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19,
         N20, N21, N22, N23, N24, N25, N28, N29, N30, N31, N32, N33, N34, N35,
         N36, N37, N38, N39, N40, N41, N42, N43, net144, n1, n2, n3, n4, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n466, n470, n471, n472,
         n473, n474;
  wire   [15:0] _T_38_s;
  wire   [15:0] _T_38_c;
  wire   [15:0] c1;
  wire   [15:0] c2;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign io_out_a[7] = io_in_a[7];
  assign io_out_a[6] = io_in_a[6];
  assign io_out_a[5] = io_in_a[5];
  assign io_out_a[4] = io_in_a[4];
  assign io_out_a[3] = io_in_a[3];
  assign io_out_a[2] = io_in_a[2];
  assign io_out_a[1] = io_in_a[1];
  assign io_out_a[0] = io_in_a[0];
  assign io_out_b[18] = io_in_b[18];
  assign io_out_b[17] = io_in_b[17];
  assign io_out_b[16] = io_in_b[16];
  assign io_out_b[15] = io_in_b[15];
  assign io_out_b[14] = io_in_b[14];
  assign io_out_b[13] = io_in_b[13];
  assign io_out_b[12] = io_in_b[12];
  assign io_out_b[11] = io_in_b[11];
  assign io_out_b[10] = io_in_b[10];
  assign io_out_b[9] = io_in_b[9];
  assign io_out_b[8] = io_in_b[8];
  assign io_out_b[7] = io_in_b[7];
  assign io_out_b[6] = io_in_b[6];
  assign io_out_b[5] = io_in_b[5];
  assign io_out_b[4] = io_in_b[4];
  assign io_out_b[3] = io_in_b[3];
  assign io_out_b[2] = io_in_b[2];
  assign io_out_b[1] = io_in_b[1];
  assign io_out_b[0] = io_in_b[0];
  assign io_out_control_shift[3] = io_in_control_shift[3];
  assign io_out_control_shift[2] = io_in_control_shift[2];
  assign io_out_control_shift[1] = io_in_control_shift[1];
  assign io_out_control_shift[0] = io_in_control_shift[0];
  assign io_out_valid = io_in_valid;

  r4_mb8 MULTuut ( .mx(io_in_a), .my(io_in_b[7:0]), .CLK(clock), .RST(1'b0), 
        .sum(_T_38_s), .carry({_T_38_c[15:3], SYNOPSYS_UNCONNECTED__0, 
        _T_38_c[1], SYNOPSYS_UNCONNECTED__1}) );
  SNPS_CLOCK_GATE_HIGH_PE_64 clk_gate_last_s_reg ( .CLK(clock), .EN(
        io_in_valid), .ENCLK(net144), .TE(1'b0) );
  DFFX1_HVT last_s_reg ( .D(n54), .CLK(net144), .Q(last_s) );
  DFFX1_HVT \c1_reg[15]  ( .D(N25), .CLK(net144), .QN(n466) );
  DFFX1_HVT \c1_reg[14]  ( .D(N24), .CLK(net144), .QN(n470) );
  DFFX1_HVT \c1_reg[13]  ( .D(N23), .CLK(net144), .Q(c1[13]) );
  DFFX1_HVT \c1_reg[12]  ( .D(N22), .CLK(net144), .Q(c1[12]) );
  DFFX1_HVT \c1_reg[11]  ( .D(N21), .CLK(net144), .Q(c1[11]) );
  DFFX1_HVT \c1_reg[10]  ( .D(N20), .CLK(net144), .Q(c1[10]) );
  DFFX1_HVT \c1_reg[9]  ( .D(N19), .CLK(net144), .Q(c1[9]) );
  DFFX1_HVT \c1_reg[8]  ( .D(N18), .CLK(net144), .Q(c1[8]) );
  DFFX1_HVT \c1_reg[7]  ( .D(N17), .CLK(net144), .Q(c1[7]) );
  DFFX1_HVT \c1_reg[6]  ( .D(N16), .CLK(net144), .Q(c1[6]) );
  DFFX1_HVT \c1_reg[5]  ( .D(N15), .CLK(net144), .Q(c1[5]) );
  DFFX1_HVT \c1_reg[4]  ( .D(N14), .CLK(net144), .Q(c1[4]), .QN(n464) );
  DFFX1_HVT \c1_reg[3]  ( .D(N13), .CLK(net144), .Q(c1[3]), .QN(n463) );
  DFFX1_HVT \c1_reg[2]  ( .D(N12), .CLK(net144), .Q(c1[2]) );
  DFFX1_HVT \c1_reg[1]  ( .D(N11), .CLK(net144), .Q(c1[1]), .QN(n462) );
  DFFX1_HVT \c1_reg[0]  ( .D(N10), .CLK(net144), .Q(c1[0]), .QN(n471) );
  DFFX1_HVT \c2_reg[15]  ( .D(N43), .CLK(net144), .QN(n459) );
  DFFX1_HVT \c2_reg[14]  ( .D(N42), .CLK(net144), .QN(n460) );
  DFFX1_HVT \c2_reg[13]  ( .D(N41), .CLK(net144), .Q(c2[13]) );
  DFFX1_HVT \c2_reg[12]  ( .D(N40), .CLK(net144), .Q(c2[12]) );
  DFFX1_HVT \c2_reg[11]  ( .D(N39), .CLK(net144), .Q(c2[11]) );
  DFFX1_HVT \c2_reg[10]  ( .D(N38), .CLK(net144), .Q(c2[10]) );
  DFFX1_HVT \c2_reg[9]  ( .D(N37), .CLK(net144), .Q(c2[9]) );
  DFFX1_HVT \c2_reg[8]  ( .D(N36), .CLK(net144), .Q(c2[8]) );
  DFFX1_HVT \c2_reg[7]  ( .D(N35), .CLK(net144), .Q(c2[7]) );
  DFFX1_HVT \c2_reg[6]  ( .D(N34), .CLK(net144), .Q(c2[6]) );
  DFFX1_HVT \c2_reg[5]  ( .D(N33), .CLK(net144), .Q(c2[5]) );
  DFFX1_HVT \c2_reg[4]  ( .D(N32), .CLK(net144), .Q(c2[4]), .QN(n474) );
  DFFX1_HVT \c2_reg[3]  ( .D(N31), .CLK(net144), .Q(c2[3]), .QN(n473) );
  DFFX1_HVT \c2_reg[2]  ( .D(N30), .CLK(net144), .Q(c2[2]) );
  DFFX1_HVT \c2_reg[1]  ( .D(N29), .CLK(net144), .Q(c2[1]), .QN(n472) );
  DFFX1_HVT \c2_reg[0]  ( .D(N28), .CLK(net144), .Q(c2[0]), .QN(n461) );
  OAI21X1_HVT U2 ( .A1(n281), .A2(n342), .A3(n343), .Y(n412) );
  OAI21X2_HVT U3 ( .A1(n378), .A2(n332), .A3(n333), .Y(n1) );
  OA21X2_HVT U4 ( .A1(n382), .A2(n46), .A3(n386), .Y(n395) );
  INVX1_HVT U5 ( .A(n386), .Y(n12) );
  XNOR2X1_HVT U6 ( .A1(n377), .A2(n380), .Y(n381) );
  INVX0_HVT U7 ( .A(n11), .Y(n393) );
  INVX4_HVT U8 ( .A(n54), .Y(n425) );
  OA21X1_HVT U9 ( .A1(n449), .A2(n448), .A3(n237), .Y(io_out_c[10]) );
  NOR2X0_HVT U10 ( .A1(n332), .A2(n331), .Y(n325) );
  NAND4X0_HVT U11 ( .A1(n44), .A2(n451), .A3(n18), .A4(n365), .Y(n13) );
  INVX0_HVT U12 ( .A(n382), .Y(n24) );
  NAND3X0_HVT U13 ( .A1(n237), .A2(n455), .A3(n452), .Y(n453) );
  INVX0_HVT U14 ( .A(n237), .Y(n44) );
  INVX0_HVT U15 ( .A(n389), .Y(n10) );
  OR2X1_HVT U16 ( .A1(n399), .A2(n23), .Y(n382) );
  XNOR2X1_HVT U17 ( .A1(n8), .A2(n357), .Y(n415) );
  INVX0_HVT U18 ( .A(n26), .Y(n383) );
  OR2X1_HVT U19 ( .A1(n291), .A2(n290), .Y(n254) );
  INVX0_HVT U20 ( .A(n281), .Y(n385) );
  INVX0_HVT U21 ( .A(n297), .Y(n2) );
  INVX0_HVT U22 ( .A(n248), .Y(n7) );
  INVX0_HVT U23 ( .A(n410), .Y(n408) );
  INVX0_HVT U24 ( .A(n288), .Y(n6) );
  AND2X1_HVT U25 ( .A1(n356), .A2(n355), .Y(n357) );
  INVX0_HVT U26 ( .A(n278), .Y(n353) );
  INVX0_HVT U27 ( .A(_T_38_c[10]), .Y(n31) );
  INVX0_HVT U28 ( .A(n293), .Y(n3) );
  INVX0_HVT U29 ( .A(n286), .Y(n29) );
  NAND3X0_HVT U30 ( .A1(n221), .A2(n220), .A3(n229), .Y(n442) );
  INVX0_HVT U31 ( .A(_T_38_s[6]), .Y(n33) );
  INVX0_HVT U32 ( .A(n279), .Y(n27) );
  INVX0_HVT U33 ( .A(n19), .Y(n280) );
  INVX0_HVT U34 ( .A(n456), .Y(n45) );
  INVX0_HVT U35 ( .A(n238), .Y(n364) );
  INVX2_HVT U36 ( .A(n15), .Y(n4) );
  INVX4_HVT U37 ( .A(n425), .Y(io_out_control_propagate) );
  INVX1_HVT U38 ( .A(io_in_control_propagate), .Y(n339) );
  AND2X1_HVT U39 ( .A1(n6), .A2(n248), .Y(n399) );
  NAND2X0_HVT U40 ( .A1(n7), .A2(n288), .Y(n400) );
  OR2X1_HVT U41 ( .A1(n2), .A2(n244), .Y(n333) );
  XNOR3X2_HVT U42 ( .A1(_T_38_c[12]), .A2(n243), .A3(_T_38_s[12]), .Y(n244) );
  OA21X1_HVT U43 ( .A1(n354), .A2(n8), .A3(n355), .Y(n281) );
  OA21X1_HVT U44 ( .A1(n278), .A2(n349), .A3(n350), .Y(n8) );
  OA21X1_HVT U45 ( .A1(n397), .A2(n399), .A3(n400), .Y(n386) );
  AO21X1_HVT U46 ( .A1(n289), .A2(n12), .A3(n9), .Y(n47) );
  AO21X1_HVT U47 ( .A1(n11), .A2(n292), .A3(n10), .Y(n9) );
  OR2X1_HVT U48 ( .A1(n28), .A2(n3), .Y(n389) );
  AND2X1_HVT U49 ( .A1(n290), .A2(n291), .Y(n11) );
  AND2X1_HVT U50 ( .A1(n292), .A2(n254), .Y(n289) );
  NAND2X0_HVT U51 ( .A1(n28), .A2(n3), .Y(n292) );
  XOR2X1_HVT U52 ( .A1(io_in_control_propagate), .A2(last_s), .Y(n62) );
  AO21X1_HVT U53 ( .A1(n239), .A2(n450), .A3(n14), .Y(n241) );
  AOI21X1_HVT U54 ( .A1(n13), .A2(n458), .A3(n14), .Y(io_out_c[13]) );
  INVX0_HVT U55 ( .A(n211), .Y(n126) );
  OR2X1_HVT U56 ( .A1(n284), .A2(n285), .Y(n410) );
  INVX0_HVT U57 ( .A(n138), .Y(n80) );
  OR2X1_HVT U58 ( .A1(n126), .A2(n4), .Y(n100) );
  INVX0_HVT U59 ( .A(n55), .Y(n217) );
  INVX0_HVT U60 ( .A(n178), .Y(n123) );
  INVX0_HVT U61 ( .A(io_in_control_shift[3]), .Y(n40) );
  MUX21X1_HVT U62 ( .A1(c2[4]), .A2(c1[4]), .S0(n67), .Y(n169) );
  INVX0_HVT U63 ( .A(_T_38_s[4]), .Y(n256) );
  INVX0_HVT U64 ( .A(_T_38_c[4]), .Y(n257) );
  INVX0_HVT U65 ( .A(n287), .Y(n30) );
  XNOR3X1_HVT U66 ( .A1(_T_38_s[14]), .A2(_T_38_c[14]), .A3(n316), .Y(n305) );
  INVX0_HVT U67 ( .A(n188), .Y(n111) );
  NAND3X0_HVT U68 ( .A1(n192), .A2(n191), .A3(n190), .Y(n193) );
  INVX0_HVT U69 ( .A(n169), .Y(n133) );
  INVX0_HVT U70 ( .A(n183), .Y(n137) );
  INVX0_HVT U71 ( .A(n167), .Y(n139) );
  INVX0_HVT U72 ( .A(n176), .Y(n125) );
  INVX0_HVT U73 ( .A(n104), .Y(n87) );
  INVX0_HVT U74 ( .A(n56), .Y(n37) );
  INVX0_HVT U75 ( .A(n326), .Y(n328) );
  INVX0_HVT U76 ( .A(n200), .Y(n143) );
  INVX0_HVT U77 ( .A(n168), .Y(n136) );
  OR2X1_HVT U78 ( .A1(n123), .A2(n196), .Y(n82) );
  INVX1_HVT U79 ( .A(n457), .Y(n450) );
  OR2X1_HVT U80 ( .A1(n181), .A2(n225), .Y(n199) );
  NAND3X0_HVT U81 ( .A1(n170), .A2(n225), .A3(n198), .Y(n166) );
  INVX0_HVT U82 ( .A(_T_38_s[1]), .Y(n267) );
  INVX0_HVT U83 ( .A(_T_38_c[1]), .Y(n268) );
  INVX0_HVT U84 ( .A(_T_38_s[2]), .Y(n270) );
  INVX0_HVT U85 ( .A(_T_38_s[3]), .Y(n262) );
  INVX0_HVT U86 ( .A(_T_38_s[8]), .Y(n247) );
  INVX0_HVT U87 ( .A(_T_38_s[11]), .Y(n245) );
  XNOR3X1_HVT U88 ( .A1(_T_38_c[13]), .A2(n242), .A3(n303), .Y(n299) );
  INVX0_HVT U89 ( .A(_T_38_s[13]), .Y(n242) );
  INVX0_HVT U90 ( .A(n230), .Y(n163) );
  INVX0_HVT U91 ( .A(n189), .Y(n88) );
  OR2X1_HVT U92 ( .A1(n165), .A2(n166), .Y(n210) );
  OR2X1_HVT U93 ( .A1(n457), .A2(n181), .Y(n131) );
  INVX0_HVT U94 ( .A(io_in_control_shift[0]), .Y(n41) );
  INVX0_HVT U95 ( .A(io_in_control_shift[2]), .Y(n42) );
  INVX0_HVT U96 ( .A(n105), .Y(n38) );
  INVX0_HVT U97 ( .A(n397), .Y(n398) );
  INVX0_HVT U98 ( .A(n254), .Y(n392) );
  INVX0_HVT U99 ( .A(n296), .Y(n378) );
  INVX0_HVT U100 ( .A(n331), .Y(n379) );
  INVX0_HVT U101 ( .A(_T_38_c[14]), .Y(n318) );
  INVX0_HVT U102 ( .A(_T_38_s[14]), .Y(n319) );
  XNOR3X1_HVT U103 ( .A1(_T_38_s[15]), .A2(_T_38_c[15]), .A3(n315), .Y(n320)
         );
  INVX0_HVT U104 ( .A(n118), .Y(n135) );
  NAND3X0_HVT U105 ( .A1(n93), .A2(n92), .A3(n91), .Y(n94) );
  OR2X1_HVT U106 ( .A1(n231), .A2(n4), .Y(n91) );
  OR2X1_HVT U107 ( .A1(n143), .A2(n196), .Y(n93) );
  INVX0_HVT U108 ( .A(n210), .Y(n177) );
  NAND3X0_HVT U109 ( .A1(n212), .A2(n178), .A3(n196), .Y(n215) );
  INVX0_HVT U110 ( .A(n185), .Y(n144) );
  INVX0_HVT U111 ( .A(n195), .Y(n132) );
  OR2X1_HVT U112 ( .A1(n457), .A2(n138), .Y(n186) );
  INVX0_HVT U113 ( .A(n180), .Y(n165) );
  NAND3X0_HVT U114 ( .A1(n61), .A2(n60), .A3(n59), .Y(n149) );
  OR2X1_HVT U115 ( .A1(n231), .A2(n138), .Y(n59) );
  OR2X1_HVT U116 ( .A1(n104), .A2(n38), .Y(n180) );
  OR2X1_HVT U117 ( .A1(n139), .A2(n138), .Y(n140) );
  OR2X1_HVT U118 ( .A1(n457), .A2(n4), .Y(n230) );
  INVX0_HVT U119 ( .A(n197), .Y(n231) );
  NAND3X0_HVT U120 ( .A1(n65), .A2(n64), .A3(n63), .Y(n219) );
  OR2X1_HVT U121 ( .A1(n126), .A2(n138), .Y(n63) );
  INVX1_HVT U122 ( .A(n225), .Y(n228) );
  INVX0_HVT U123 ( .A(n179), .Y(n124) );
  OR2X1_HVT U124 ( .A1(n37), .A2(n217), .Y(n138) );
  INVX0_HVT U125 ( .A(n32), .Y(n342) );
  INVX0_HVT U126 ( .A(n406), .Y(n46) );
  INVX0_HVT U127 ( .A(n310), .Y(n306) );
  INVX0_HVT U128 ( .A(n361), .Y(n362) );
  INVX0_HVT U129 ( .A(n435), .Y(n375) );
  INVX0_HVT U130 ( .A(n441), .Y(n372) );
  INVX0_HVT U131 ( .A(n222), .Y(n239) );
  INVX0_HVT U132 ( .A(n447), .Y(n448) );
  NAND3X0_HVT U133 ( .A1(n98), .A2(n100), .A3(n82), .Y(n451) );
  AND4X1_HVT U134 ( .A1(n43), .A2(n44), .A3(n451), .A4(n18), .Y(n14) );
  NOR2X0_HVT U135 ( .A1(n56), .A2(n55), .Y(n15) );
  OR2X1_HVT U136 ( .A1(n58), .A2(n57), .Y(n365) );
  AND2X1_HVT U137 ( .A1(n420), .A2(n419), .Y(n17) );
  NAND2X0_HVT U138 ( .A1(n457), .A2(n238), .Y(n18) );
  XOR2X1_HVT U139 ( .A1(n395), .A2(n394), .Y(n396) );
  XOR2X1_HVT U140 ( .A1(n391), .A2(n390), .Y(n36) );
  XOR2X1_HVT U141 ( .A1(n403), .A2(n402), .Y(n427) );
  OAI21X1_HVT U142 ( .A1(n386), .A2(n392), .A3(n393), .Y(n387) );
  XOR3X2_HVT U143 ( .A1(_T_38_c[4]), .A2(_T_38_s[4]), .A3(n263), .Y(n19) );
  NBUFFX2_HVT U144 ( .A(_T_38_c[7]), .Y(n20) );
  XOR2X2_HVT U145 ( .A1(n324), .A2(n21), .Y(n341) );
  AND2X1_HVT U146 ( .A1(n323), .A2(n322), .Y(n21) );
  NBUFFX2_HVT U147 ( .A(_T_38_c[5]), .Y(n22) );
  AND2X1_HVT U148 ( .A1(n244), .A2(n2), .Y(n332) );
  INVX0_HVT U149 ( .A(n23), .Y(n404) );
  AND2X1_HVT U150 ( .A1(n30), .A2(n29), .Y(n23) );
  NAND2X0_HVT U151 ( .A1(n287), .A2(n286), .Y(n397) );
  OR2X1_HVT U152 ( .A1(n282), .A2(n283), .Y(n32) );
  AND2X1_HVT U153 ( .A1(n24), .A2(n289), .Y(n48) );
  NAND2X0_HVT U154 ( .A1(n26), .A2(n25), .Y(n49) );
  NAND2X0_HVT U155 ( .A1(n384), .A2(n385), .Y(n25) );
  OA21X1_HVT U156 ( .A1(n343), .A2(n408), .A3(n409), .Y(n26) );
  AND2X1_HVT U157 ( .A1(n328), .A2(n325), .Y(n302) );
  AND2X1_HVT U158 ( .A1(n19), .A2(n27), .Y(n354) );
  XOR3X2_HVT U159 ( .A1(_T_38_s[10]), .A2(n250), .A3(n31), .Y(n28) );
  OA21X1_HVT U160 ( .A1(n419), .A2(n345), .A3(n346), .Y(n278) );
  AND2X1_HVT U161 ( .A1(n32), .A2(n410), .Y(n384) );
  XNOR3X2_HVT U162 ( .A1(_T_38_c[6]), .A2(n259), .A3(n33), .Y(n285) );
  AO21X1_HVT U163 ( .A1(n36), .A2(io_out_control_propagate), .A3(n34), .Y(N38)
         );
  AND2X1_HVT U164 ( .A1(n425), .A2(io_in_d[10]), .Y(n34) );
  AO21X1_HVT U165 ( .A1(n36), .A2(n425), .A3(n35), .Y(N20) );
  AND2X1_HVT U166 ( .A1(n67), .A2(io_in_d[10]), .Y(n35) );
  OR2X1_HVT U167 ( .A1(n105), .A2(n87), .Y(n225) );
  AND2X1_HVT U168 ( .A1(n164), .A2(n188), .Y(n194) );
  NAND4X0_HVT U169 ( .A1(n38), .A2(n37), .A3(n104), .A4(n217), .Y(n164) );
  AND2X1_HVT U170 ( .A1(n62), .A2(io_in_control_shift[2]), .Y(n104) );
  AND2X1_HVT U171 ( .A1(n62), .A2(io_in_control_shift[3]), .Y(n105) );
  OA21X1_HVT U172 ( .A1(io_in_control_shift[3]), .A2(io_in_control_shift[2]), 
        .A3(n62), .Y(n457) );
  OR2X1_HVT U173 ( .A1(n217), .A2(n56), .Y(n196) );
  AND2X1_HVT U174 ( .A1(n62), .A2(io_in_control_shift[0]), .Y(n56) );
  AO21X1_HVT U175 ( .A1(n39), .A2(n62), .A3(n217), .Y(n188) );
  NAND3X0_HVT U176 ( .A1(n42), .A2(n41), .A3(n40), .Y(n39) );
  AND2X1_HVT U177 ( .A1(n365), .A2(n45), .Y(n43) );
  NAND3X0_HVT U178 ( .A1(n44), .A2(n451), .A3(n18), .Y(n454) );
  AO21X1_HVT U179 ( .A1(n325), .A2(n377), .A3(n1), .Y(n330) );
  AO21X1_HVT U180 ( .A1(n49), .A2(n48), .A3(n47), .Y(n377) );
  OR2X1_HVT U181 ( .A1(n55), .A2(n457), .Y(n50) );
  AOI21X1_HVT U182 ( .A1(n239), .A2(n135), .A3(n134), .Y(n51) );
  OAI21X1_HVT U183 ( .A1(n225), .A2(n222), .A3(n229), .Y(n52) );
  AND4X1_HVT U184 ( .A1(n148), .A2(n358), .A3(n361), .A4(n429), .Y(n53) );
  AO21X1_HVT U185 ( .A1(n204), .A2(n203), .A3(n202), .Y(n205) );
  OAI22X1_HVT U186 ( .A1(n268), .A2(n267), .A3(n266), .A4(n265), .Y(n274) );
  AO21X1_HVT U187 ( .A1(n178), .A2(n37), .A3(n99), .Y(n102) );
  AO21X1_HVT U188 ( .A1(n385), .A2(n384), .A3(n383), .Y(n406) );
  INVX1_HVT U189 ( .A(n339), .Y(n54) );
  AND2X1_HVT U190 ( .A1(n62), .A2(io_in_control_shift[1]), .Y(n55) );
  MUX21X1_HVT U191 ( .A1(n459), .A2(n466), .S0(io_out_control_propagate), .Y(
        n238) );
  MUX21X1_HVT U192 ( .A1(n460), .A2(n470), .S0(io_out_control_propagate), .Y(
        n130) );
  OR2X2_HVT U193 ( .A1(n55), .A2(n37), .Y(n181) );
  INVX2_HVT U194 ( .A(n339), .Y(n67) );
  MUX21X1_HVT U195 ( .A1(c2[13]), .A2(c1[13]), .S0(n67), .Y(n178) );
  OA222X1_HVT U196 ( .A1(n217), .A2(n238), .A3(n130), .A4(n181), .A5(n4), .A6(
        n123), .Y(n456) );
  OAI22X1_HVT U197 ( .A1(n130), .A2(n196), .A3(n238), .A4(n138), .Y(n58) );
  MUX21X1_HVT U198 ( .A1(c2[12]), .A2(c1[12]), .S0(n67), .Y(n179) );
  OAI22X1_HVT U199 ( .A1(n123), .A2(n181), .A3(n4), .A4(n124), .Y(n57) );
  NAND2X0_HVT U200 ( .A1(n104), .A2(io_in_control_shift[3]), .Y(n118) );
  NAND2X0_HVT U201 ( .A1(n365), .A2(n135), .Y(n74) );
  MUX21X1_HVT U202 ( .A1(c2[6]), .A2(c1[6]), .S0(n67), .Y(n168) );
  OA22X1_HVT U203 ( .A1(n133), .A2(n4), .A3(n196), .A4(n136), .Y(n61) );
  MUX21X1_HVT U204 ( .A1(c2[5]), .A2(c1[5]), .S0(n67), .Y(n200) );
  OR2X1_HVT U205 ( .A1(n143), .A2(n181), .Y(n60) );
  MUX21X1_HVT U206 ( .A1(c2[7]), .A2(c1[7]), .S0(n67), .Y(n197) );
  NAND2X0_HVT U207 ( .A1(n149), .A2(n228), .Y(n73) );
  MUX21X1_HVT U208 ( .A1(c2[8]), .A2(c1[8]), .S0(n67), .Y(n183) );
  MUX21X1_HVT U209 ( .A1(c2[10]), .A2(c1[10]), .S0(n67), .Y(n176) );
  OA22X1_HVT U210 ( .A1(n137), .A2(n4), .A3(n196), .A4(n125), .Y(n65) );
  MUX21X1_HVT U211 ( .A1(c2[9]), .A2(c1[9]), .S0(n67), .Y(n167) );
  OR2X1_HVT U212 ( .A1(n139), .A2(n181), .Y(n64) );
  MUX21X1_HVT U213 ( .A1(c2[11]), .A2(c1[11]), .S0(io_out_control_propagate), 
        .Y(n211) );
  NAND2X0_HVT U214 ( .A1(n219), .A2(n165), .Y(n72) );
  MUX21X1_HVT U215 ( .A1(c2[3]), .A2(c1[3]), .S0(n67), .Y(n195) );
  MUX21X1_HVT U216 ( .A1(c2[1]), .A2(c1[1]), .S0(n67), .Y(n189) );
  OA22X1_HVT U217 ( .A1(n132), .A2(n186), .A3(n88), .A4(n131), .Y(n70) );
  MUX21X1_HVT U218 ( .A1(n461), .A2(n471), .S0(n67), .Y(n190) );
  INVX0_HVT U219 ( .A(n190), .Y(n66) );
  NAND2X0_HVT U220 ( .A1(n163), .A2(n66), .Y(n69) );
  MUX21X1_HVT U221 ( .A1(c2[2]), .A2(c1[2]), .S0(n67), .Y(n185) );
  NAND2X0_HVT U222 ( .A1(n111), .A2(n185), .Y(n68) );
  AND3X1_HVT U223 ( .A1(n70), .A2(n69), .A3(n68), .Y(n71) );
  NAND4X0_HVT U224 ( .A1(n74), .A2(n73), .A3(n72), .A4(n71), .Y(n360) );
  OA22X1_HVT U225 ( .A1(n133), .A2(n131), .A3(n143), .A4(n188), .Y(n78) );
  INVX0_HVT U226 ( .A(n164), .Y(n75) );
  NAND2X0_HVT U227 ( .A1(n75), .A2(n197), .Y(n77) );
  NAND2X0_HVT U228 ( .A1(n105), .A2(n364), .Y(n229) );
  INVX0_HVT U229 ( .A(n229), .Y(n76) );
  NAND2X0_HVT U230 ( .A1(n104), .A2(n76), .Y(n159) );
  AND3X1_HVT U231 ( .A1(n78), .A2(n77), .A3(n159), .Y(n86) );
  INVX0_HVT U232 ( .A(n181), .Y(n81) );
  INVX0_HVT U233 ( .A(n130), .Y(n79) );
  AOI22X1_HVT U234 ( .A1(n81), .A2(n179), .A3(n80), .A4(n79), .Y(n98) );
  NAND2X0_HVT U235 ( .A1(n451), .A2(n165), .Y(n85) );
  OAI222X1_HVT U236 ( .A1(n139), .A2(n196), .A3(n137), .A4(n181), .A5(n125), 
        .A6(n138), .Y(n232) );
  NAND2X0_HVT U237 ( .A1(n232), .A2(n228), .Y(n84) );
  OA22X1_HVT U238 ( .A1(n136), .A2(n186), .A3(n132), .A4(n230), .Y(n83) );
  NAND4X0_HVT U239 ( .A1(n86), .A2(n85), .A3(n84), .A4(n83), .Y(n368) );
  AND2X1_HVT U240 ( .A1(n360), .A2(n368), .Y(n148) );
  OAI22X1_HVT U241 ( .A1(n132), .A2(n4), .A3(n181), .A4(n190), .Y(n97) );
  XNOR2X1_HVT U242 ( .A1(n4), .A2(n87), .Y(n99) );
  OR2X1_HVT U243 ( .A1(n144), .A2(n138), .Y(n90) );
  OR2X1_HVT U244 ( .A1(n88), .A2(n196), .Y(n89) );
  NAND3X0_HVT U245 ( .A1(n99), .A2(n90), .A3(n89), .Y(n96) );
  OAI22X1_HVT U246 ( .A1(n133), .A2(n181), .A3(n138), .A4(n136), .Y(n95) );
  INVX0_HVT U247 ( .A(n99), .Y(n92) );
  OA22X1_HVT U248 ( .A1(n97), .A2(n96), .A3(n95), .A4(n94), .Y(n108) );
  INVX0_HVT U249 ( .A(n98), .Y(n103) );
  NAND2X0_HVT U250 ( .A1(n100), .A2(n99), .Y(n101) );
  OA22X1_HVT U251 ( .A1(n103), .A2(n102), .A3(n232), .A4(n101), .Y(n107) );
  OR2X1_HVT U252 ( .A1(n104), .A2(n4), .Y(n198) );
  AND2X1_HVT U253 ( .A1(n198), .A2(n105), .Y(n106) );
  MUX21X1_HVT U254 ( .A1(n108), .A2(n107), .S0(n106), .Y(n358) );
  OAI22X1_HVT U255 ( .A1(n125), .A2(n181), .A3(n124), .A4(n138), .Y(n110) );
  OAI22X1_HVT U256 ( .A1(n126), .A2(n196), .A3(n4), .A4(n139), .Y(n109) );
  OR2X1_HVT U257 ( .A1(n110), .A2(n109), .Y(n224) );
  NAND2X0_HVT U258 ( .A1(n224), .A2(n165), .Y(n122) );
  OA22X1_HVT U259 ( .A1(n133), .A2(n186), .A3(n144), .A4(n131), .Y(n114) );
  NAND2X0_HVT U260 ( .A1(n163), .A2(n189), .Y(n113) );
  NAND2X0_HVT U261 ( .A1(n111), .A2(n195), .Y(n112) );
  AND3X1_HVT U262 ( .A1(n114), .A2(n113), .A3(n112), .Y(n121) );
  OA22X1_HVT U263 ( .A1(n143), .A2(n4), .A3(n196), .A4(n231), .Y(n117) );
  OR2X1_HVT U264 ( .A1(n137), .A2(n138), .Y(n116) );
  OR2X1_HVT U265 ( .A1(n136), .A2(n181), .Y(n115) );
  NAND3X0_HVT U266 ( .A1(n117), .A2(n116), .A3(n115), .Y(n153) );
  NAND2X0_HVT U267 ( .A1(n153), .A2(n228), .Y(n120) );
  OR2X1_HVT U268 ( .A1(n118), .A2(n456), .Y(n119) );
  NAND4X0_HVT U269 ( .A1(n122), .A2(n121), .A3(n120), .A4(n119), .Y(n361) );
  OAI22X1_HVT U270 ( .A1(n124), .A2(n196), .A3(n123), .A4(n138), .Y(n128) );
  OAI22X1_HVT U271 ( .A1(n126), .A2(n181), .A3(n4), .A4(n125), .Y(n127) );
  OR2X1_HVT U272 ( .A1(n128), .A2(n127), .Y(n223) );
  NAND2X0_HVT U273 ( .A1(n223), .A2(n165), .Y(n147) );
  AND2X1_HVT U274 ( .A1(n4), .A2(n238), .Y(n129) );
  AO21X1_HVT U275 ( .A1(n15), .A2(n130), .A3(n129), .Y(n222) );
  OAI22X1_HVT U276 ( .A1(n133), .A2(n188), .A3(n132), .A4(n131), .Y(n134) );
  OA22X1_HVT U277 ( .A1(n136), .A2(n4), .A3(n181), .A4(n231), .Y(n142) );
  OR2X1_HVT U278 ( .A1(n137), .A2(n196), .Y(n141) );
  NAND3X0_HVT U279 ( .A1(n142), .A2(n141), .A3(n140), .Y(n157) );
  NAND2X0_HVT U280 ( .A1(n157), .A2(n228), .Y(n146) );
  OA22X1_HVT U281 ( .A1(n144), .A2(n230), .A3(n143), .A4(n186), .Y(n145) );
  NAND4X0_HVT U282 ( .A1(n147), .A2(n51), .A3(n146), .A4(n145), .Y(n429) );
  NAND2X0_HVT U283 ( .A1(n365), .A2(n165), .Y(n152) );
  NAND2X0_HVT U284 ( .A1(n149), .A2(n450), .Y(n151) );
  NAND2X0_HVT U285 ( .A1(n219), .A2(n228), .Y(n150) );
  NAND4X0_HVT U286 ( .A1(n152), .A2(n151), .A3(n150), .A4(n159), .Y(n433) );
  NAND2X0_HVT U287 ( .A1(n224), .A2(n228), .Y(n156) );
  NAND2X0_HVT U288 ( .A1(n153), .A2(n450), .Y(n155) );
  OR2X1_HVT U289 ( .A1(n180), .A2(n456), .Y(n154) );
  NAND4X0_HVT U290 ( .A1(n156), .A2(n155), .A3(n159), .A4(n154), .Y(n374) );
  NAND2X0_HVT U291 ( .A1(n223), .A2(n228), .Y(n161) );
  NAND2X0_HVT U292 ( .A1(n157), .A2(n450), .Y(n160) );
  OR2X1_HVT U293 ( .A1(n180), .A2(n222), .Y(n158) );
  NAND4X0_HVT U294 ( .A1(n161), .A2(n160), .A3(n159), .A4(n158), .Y(n438) );
  AND3X1_HVT U295 ( .A1(n433), .A2(n374), .A3(n438), .Y(n162) );
  AND2X1_HVT U296 ( .A1(n53), .A2(n162), .Y(n370) );
  AND2X1_HVT U297 ( .A1(n194), .A2(n186), .Y(n170) );
  INVX0_HVT U298 ( .A(n166), .Y(n184) );
  OA21X1_HVT U299 ( .A1(n196), .A2(n180), .A3(n167), .Y(n174) );
  NAND2X0_HVT U300 ( .A1(n225), .A2(n168), .Y(n172) );
  NAND2X0_HVT U301 ( .A1(n199), .A2(n169), .Y(n171) );
  INVX0_HVT U302 ( .A(n170), .Y(n202) );
  AOI21X1_HVT U303 ( .A1(n172), .A2(n171), .A3(n202), .Y(n173) );
  AO21X1_HVT U304 ( .A1(n184), .A2(n174), .A3(n173), .Y(n175) );
  AOI21X1_HVT U305 ( .A1(n177), .A2(n176), .A3(n175), .Y(n216) );
  AND2X1_HVT U306 ( .A1(n177), .A2(n4), .Y(n212) );
  NAND2X0_HVT U307 ( .A1(n181), .A2(n179), .Y(n209) );
  OR2X1_HVT U308 ( .A1(n181), .A2(n180), .Y(n182) );
  NAND3X0_HVT U309 ( .A1(n184), .A2(n183), .A3(n182), .Y(n207) );
  NAND2X0_HVT U310 ( .A1(n186), .A2(n185), .Y(n192) );
  NAND2X0_HVT U311 ( .A1(n189), .A2(n188), .Y(n191) );
  AOI21X1_HVT U312 ( .A1(n195), .A2(n194), .A3(n193), .Y(n206) );
  OR2X1_HVT U313 ( .A1(n196), .A2(n225), .Y(n201) );
  NAND4X0_HVT U314 ( .A1(n199), .A2(n201), .A3(n198), .A4(n197), .Y(n204) );
  NAND2X0_HVT U315 ( .A1(n201), .A2(n200), .Y(n203) );
  AND3X1_HVT U316 ( .A1(n207), .A2(n206), .A3(n205), .Y(n208) );
  OA21X1_HVT U317 ( .A1(n210), .A2(n209), .A3(n208), .Y(n214) );
  NAND2X0_HVT U318 ( .A1(n212), .A2(n211), .Y(n213) );
  NAND4X0_HVT U319 ( .A1(n216), .A2(n215), .A3(n214), .A4(n213), .Y(n218) );
  AO22X1_HVT U320 ( .A1(n230), .A2(n360), .A3(n218), .A4(n50), .Y(n371) );
  NAND2X0_HVT U321 ( .A1(n365), .A2(n228), .Y(n221) );
  NAND2X0_HVT U322 ( .A1(n219), .A2(n450), .Y(n220) );
  AO21X1_HVT U323 ( .A1(n223), .A2(n450), .A3(n52), .Y(n449) );
  AND2X1_HVT U324 ( .A1(n442), .A2(n449), .Y(n236) );
  NAND2X0_HVT U325 ( .A1(n224), .A2(n450), .Y(n227) );
  OR2X1_HVT U326 ( .A1(n225), .A2(n456), .Y(n226) );
  NAND3X0_HVT U327 ( .A1(n227), .A2(n226), .A3(n229), .Y(n446) );
  NAND2X0_HVT U328 ( .A1(n451), .A2(n228), .Y(n235) );
  OA21X1_HVT U329 ( .A1(n231), .A2(n230), .A3(n229), .Y(n234) );
  NAND2X0_HVT U330 ( .A1(n232), .A2(n450), .Y(n233) );
  NAND3X0_HVT U331 ( .A1(n235), .A2(n234), .A3(n233), .Y(n439) );
  AND2X1_HVT U332 ( .A1(n446), .A2(n439), .Y(n443) );
  NAND4X0_HVT U333 ( .A1(n370), .A2(n371), .A3(n236), .A4(n443), .Y(n237) );
  NAND2X0_HVT U334 ( .A1(n14), .A2(n239), .Y(n240) );
  AND2X1_HVT U335 ( .A1(n240), .A2(n364), .Y(io_out_c[18]) );
  AO22X1_HVT U336 ( .A1(n241), .A2(n240), .A3(io_out_c[18]), .A4(n457), .Y(
        io_out_c[14]) );
  MUX21X1_HVT U337 ( .A1(c1[12]), .A2(c2[12]), .S0(io_out_control_propagate), 
        .Y(n243) );
  FADDX1_HVT U338 ( .A(n243), .B(_T_38_s[12]), .CI(_T_38_c[12]), .CO(n298) );
  MUX21X1_HVT U339 ( .A1(c1[13]), .A2(c2[13]), .S0(io_out_control_propagate), 
        .Y(n303) );
  NOR2X0_HVT U340 ( .A1(n298), .A2(n299), .Y(n326) );
  MUX21X1_HVT U341 ( .A1(c1[11]), .A2(c2[11]), .S0(io_out_control_propagate), 
        .Y(n246) );
  FADDX1_HVT U342 ( .A(_T_38_c[11]), .B(_T_38_s[11]), .CI(n246), .CO(n297) );
  MUX21X1_HVT U343 ( .A1(c1[10]), .A2(c2[10]), .S0(io_out_control_propagate), 
        .Y(n250) );
  FADDX1_HVT U344 ( .A(_T_38_s[10]), .B(_T_38_c[10]), .CI(n250), .CO(n294) );
  XNOR3X2_HVT U345 ( .A1(_T_38_c[11]), .A2(n246), .A3(n245), .Y(n295) );
  NOR2X0_HVT U346 ( .A1(n294), .A2(n295), .Y(n331) );
  MUX21X1_HVT U347 ( .A1(c1[7]), .A2(c2[7]), .S0(io_out_control_propagate), 
        .Y(n249) );
  XOR3X2_HVT U348 ( .A1(_T_38_c[7]), .A2(n249), .A3(_T_38_s[7]), .Y(n287) );
  MUX21X1_HVT U349 ( .A1(c1[6]), .A2(c2[6]), .S0(io_out_control_propagate), 
        .Y(n259) );
  FADDX1_HVT U350 ( .A(_T_38_c[6]), .B(_T_38_s[6]), .CI(n259), .CO(n286) );
  MUX21X1_HVT U351 ( .A1(c1[8]), .A2(c2[8]), .S0(io_out_control_propagate), 
        .Y(n251) );
  XOR3X2_HVT U352 ( .A1(_T_38_c[8]), .A2(n251), .A3(n247), .Y(n248) );
  FADDX1_HVT U353 ( .A(n249), .B(_T_38_s[7]), .CI(n20), .CO(n288) );
  MUX21X1_HVT U354 ( .A1(c1[9]), .A2(c2[9]), .S0(io_out_control_propagate), 
        .Y(n253) );
  FADDX1_HVT U355 ( .A(_T_38_c[9]), .B(_T_38_s[9]), .CI(n253), .CO(n293) );
  NBUFFX2_HVT U356 ( .A(_T_38_c[8]), .Y(n252) );
  FADDX1_HVT U357 ( .A(n252), .B(n251), .CI(_T_38_s[8]), .CO(n291) );
  XOR3X2_HVT U358 ( .A1(_T_38_c[9]), .A2(n253), .A3(_T_38_s[9]), .Y(n290) );
  MUX21X1_HVT U359 ( .A1(c1[5]), .A2(c2[5]), .S0(io_out_control_propagate), 
        .Y(n258) );
  XOR3X2_HVT U360 ( .A1(_T_38_c[5]), .A2(n258), .A3(_T_38_s[5]), .Y(n283) );
  AND2X1_HVT U361 ( .A1(n256), .A2(n257), .Y(n255) );
  MUX21X1_HVT U362 ( .A1(n464), .A2(n474), .S0(io_out_control_propagate), .Y(
        n263) );
  OAI22X1_HVT U363 ( .A1(n257), .A2(n256), .A3(n255), .A4(n263), .Y(n282) );
  FADDX1_HVT U364 ( .A(n22), .B(_T_38_s[5]), .CI(n258), .CO(n284) );
  INVX0_HVT U365 ( .A(_T_38_c[3]), .Y(n261) );
  AND2X1_HVT U366 ( .A1(n262), .A2(n261), .Y(n260) );
  MUX21X1_HVT U367 ( .A1(n463), .A2(n473), .S0(io_out_control_propagate), .Y(
        n264) );
  OAI22X1_HVT U368 ( .A1(n262), .A2(n261), .A3(n260), .A4(n264), .Y(n279) );
  MUX21X1_HVT U369 ( .A1(c1[2]), .A2(c2[2]), .S0(io_out_control_propagate), 
        .Y(n269) );
  AND2X1_HVT U370 ( .A1(n269), .A2(_T_38_s[2]), .Y(n276) );
  XNOR3X2_HVT U371 ( .A1(_T_38_s[3]), .A2(_T_38_c[3]), .A3(n264), .Y(n277) );
  NOR2X0_HVT U372 ( .A1(n276), .A2(n277), .Y(n349) );
  MUX21X1_HVT U373 ( .A1(n462), .A2(n472), .S0(io_out_control_propagate), .Y(
        n265) );
  XNOR3X2_HVT U374 ( .A1(_T_38_c[1]), .A2(_T_38_s[1]), .A3(n265), .Y(n418) );
  MUX21X1_HVT U375 ( .A1(c1[0]), .A2(c2[0]), .S0(io_out_control_propagate), 
        .Y(n421) );
  AND2X1_HVT U376 ( .A1(n421), .A2(_T_38_s[0]), .Y(n422) );
  NAND2X0_HVT U377 ( .A1(n418), .A2(n422), .Y(n419) );
  AND2X1_HVT U378 ( .A1(n267), .A2(n268), .Y(n266) );
  INVX0_HVT U379 ( .A(n274), .Y(n272) );
  INVX0_HVT U380 ( .A(n269), .Y(n271) );
  AO21X1_HVT U381 ( .A1(n271), .A2(n270), .A3(n276), .Y(n273) );
  AND2X1_HVT U382 ( .A1(n272), .A2(n273), .Y(n345) );
  INVX0_HVT U383 ( .A(n273), .Y(n275) );
  NAND2X0_HVT U384 ( .A1(n275), .A2(n274), .Y(n346) );
  NAND2X0_HVT U385 ( .A1(n277), .A2(n276), .Y(n350) );
  NAND2X0_HVT U386 ( .A1(n280), .A2(n279), .Y(n355) );
  NAND2X0_HVT U387 ( .A1(n283), .A2(n282), .Y(n343) );
  NAND2X0_HVT U388 ( .A1(n285), .A2(n284), .Y(n409) );
  AND2X1_HVT U389 ( .A1(n295), .A2(n294), .Y(n296) );
  NAND2X0_HVT U390 ( .A1(n299), .A2(n298), .Y(n327) );
  INVX0_HVT U391 ( .A(n327), .Y(n300) );
  AO21X1_HVT U392 ( .A1(n328), .A2(n1), .A3(n300), .Y(n301) );
  AO21X1_HVT U393 ( .A1(n302), .A2(n377), .A3(n301), .Y(n308) );
  FADDX1_HVT U394 ( .A(_T_38_c[13]), .B(_T_38_s[13]), .CI(n303), .CO(n304) );
  MUX21X1_HVT U395 ( .A1(n470), .A2(n460), .S0(io_out_control_propagate), .Y(
        n316) );
  NOR2X0_HVT U396 ( .A1(n304), .A2(n305), .Y(n310) );
  NAND2X0_HVT U397 ( .A1(n305), .A2(n304), .Y(n309) );
  AND2X1_HVT U398 ( .A1(n306), .A2(n309), .Y(n307) );
  XOR2X2_HVT U399 ( .A1(n308), .A2(n307), .Y(n337) );
  AO22X1_HVT U400 ( .A1(n425), .A2(io_in_d[14]), .A3(n337), .A4(
        io_out_control_propagate), .Y(N42) );
  NOR2X0_HVT U401 ( .A1(n310), .A2(n326), .Y(n312) );
  AND2X1_HVT U402 ( .A1(n325), .A2(n312), .Y(n314) );
  OAI21X1_HVT U403 ( .A1(n310), .A2(n327), .A3(n309), .Y(n311) );
  AO21X1_HVT U404 ( .A1(n1), .A2(n312), .A3(n311), .Y(n313) );
  AO21X1_HVT U405 ( .A1(n314), .A2(n377), .A3(n313), .Y(n324) );
  MUX21X1_HVT U406 ( .A1(n466), .A2(n459), .S0(n67), .Y(n315) );
  AND2X1_HVT U407 ( .A1(n318), .A2(n319), .Y(n317) );
  OAI22X1_HVT U408 ( .A1(n319), .A2(n318), .A3(n317), .A4(n316), .Y(n321) );
  OR2X1_HVT U409 ( .A1(n320), .A2(n321), .Y(n323) );
  NAND2X0_HVT U410 ( .A1(n321), .A2(n320), .Y(n322) );
  AO22X1_HVT U411 ( .A1(n425), .A2(io_in_d[15]), .A3(n341), .A4(
        io_out_control_propagate), .Y(N43) );
  AND2X1_HVT U412 ( .A1(n328), .A2(n327), .Y(n329) );
  XOR2X2_HVT U413 ( .A1(n330), .A2(n329), .Y(n338) );
  AO22X1_HVT U414 ( .A1(n425), .A2(io_in_d[13]), .A3(n338), .A4(
        io_out_control_propagate), .Y(N41) );
  AO21X1_HVT U415 ( .A1(n377), .A2(n379), .A3(n296), .Y(n336) );
  INVX0_HVT U416 ( .A(n332), .Y(n334) );
  AND2X1_HVT U417 ( .A1(n334), .A2(n333), .Y(n335) );
  XOR2X2_HVT U418 ( .A1(n336), .A2(n335), .Y(n340) );
  AO22X1_HVT U419 ( .A1(io_in_d[12]), .A2(n425), .A3(n340), .A4(
        io_out_control_propagate), .Y(N40) );
  AO22X1_HVT U420 ( .A1(io_in_d[14]), .A2(n67), .A3(n337), .A4(n425), .Y(N24)
         );
  AO22X1_HVT U421 ( .A1(io_in_d[13]), .A2(n67), .A3(n338), .A4(n425), .Y(N23)
         );
  AO22X1_HVT U422 ( .A1(io_in_d[12]), .A2(n67), .A3(n340), .A4(n339), .Y(N22)
         );
  AO22X1_HVT U423 ( .A1(io_in_d[15]), .A2(n67), .A3(n341), .A4(n425), .Y(N25)
         );
  NAND2X0_HVT U424 ( .A1(n32), .A2(n343), .Y(n344) );
  XOR2X1_HVT U425 ( .A1(n281), .A2(n344), .Y(n414) );
  MUX21X1_HVT U426 ( .A1(io_in_d[5]), .A2(n414), .S0(io_out_control_propagate), 
        .Y(N33) );
  INVX0_HVT U427 ( .A(n345), .Y(n347) );
  NAND2X0_HVT U428 ( .A1(n347), .A2(n346), .Y(n348) );
  XOR2X1_HVT U429 ( .A1(n348), .A2(n419), .Y(n417) );
  MUX21X1_HVT U430 ( .A1(io_in_d[2]), .A2(n417), .S0(io_out_control_propagate), 
        .Y(N30) );
  INVX0_HVT U431 ( .A(n349), .Y(n351) );
  NAND2X0_HVT U432 ( .A1(n351), .A2(n350), .Y(n352) );
  XNOR2X1_HVT U433 ( .A1(n353), .A2(n352), .Y(n416) );
  MUX21X1_HVT U434 ( .A1(n416), .A2(io_in_d[3]), .S0(io_out_control_propagate), 
        .Y(N13) );
  INVX0_HVT U435 ( .A(n354), .Y(n356) );
  MUX21X1_HVT U436 ( .A1(io_in_d[4]), .A2(n415), .S0(io_out_control_propagate), 
        .Y(N32) );
  AND2X1_HVT U437 ( .A1(n371), .A2(n358), .Y(n359) );
  NAND3X0_HVT U438 ( .A1(n371), .A2(n358), .A3(n360), .Y(n363) );
  OA21X1_HVT U439 ( .A1(n360), .A2(n359), .A3(n363), .Y(io_out_c[0]) );
  NOR2X0_HVT U440 ( .A1(n362), .A2(n363), .Y(n428) );
  AOI21X1_HVT U441 ( .A1(n363), .A2(n362), .A3(n428), .Y(io_out_c[1]) );
  NAND2X0_HVT U442 ( .A1(n457), .A2(n364), .Y(n455) );
  NAND2X0_HVT U443 ( .A1(n365), .A2(n450), .Y(n366) );
  NAND3X0_HVT U444 ( .A1(n454), .A2(n455), .A3(n366), .Y(n367) );
  AND2X1_HVT U445 ( .A1(n13), .A2(n367), .Y(io_out_c[12]) );
  NAND2X0_HVT U446 ( .A1(n428), .A2(n429), .Y(n431) );
  INVX0_HVT U447 ( .A(n368), .Y(n369) );
  AND2X1_HVT U448 ( .A1(n371), .A2(n53), .Y(n432) );
  AOI21X1_HVT U449 ( .A1(n431), .A2(n369), .A3(n432), .Y(io_out_c[3]) );
  AND2X1_HVT U450 ( .A1(n371), .A2(n370), .Y(n444) );
  NAND2X0_HVT U451 ( .A1(n444), .A2(n439), .Y(n441) );
  INVX0_HVT U452 ( .A(n442), .Y(n373) );
  AND2X1_HVT U453 ( .A1(n372), .A2(n442), .Y(n445) );
  AOI21X1_HVT U454 ( .A1(n441), .A2(n373), .A3(n445), .Y(io_out_c[8]) );
  NAND2X0_HVT U455 ( .A1(n432), .A2(n433), .Y(n435) );
  INVX0_HVT U456 ( .A(n374), .Y(n376) );
  AND2X1_HVT U457 ( .A1(n375), .A2(n374), .Y(n437) );
  AOI21X1_HVT U458 ( .A1(n435), .A2(n376), .A3(n437), .Y(io_out_c[5]) );
  NAND2X0_HVT U459 ( .A1(n379), .A2(n378), .Y(n380) );
  MUX21X1_HVT U460 ( .A1(n381), .A2(io_in_d[11]), .S0(io_out_control_propagate), .Y(N21) );
  MUX21X1_HVT U461 ( .A1(n381), .A2(io_in_d[11]), .S0(n425), .Y(N39) );
  NOR2X0_HVT U462 ( .A1(n382), .A2(n392), .Y(n388) );
  AOI21X1_HVT U463 ( .A1(n388), .A2(n406), .A3(n387), .Y(n391) );
  NAND2X0_HVT U464 ( .A1(n389), .A2(n292), .Y(n390) );
  NAND2X0_HVT U465 ( .A1(n254), .A2(n393), .Y(n394) );
  MUX21X1_HVT U466 ( .A1(io_in_d[9]), .A2(n396), .S0(n425), .Y(N19) );
  MUX21X1_HVT U467 ( .A1(io_in_d[9]), .A2(n396), .S0(io_out_control_propagate), 
        .Y(N37) );
  AOI21X1_HVT U468 ( .A1(n406), .A2(n404), .A3(n398), .Y(n403) );
  INVX0_HVT U469 ( .A(n399), .Y(n401) );
  NAND2X0_HVT U470 ( .A1(n401), .A2(n400), .Y(n402) );
  MUX21X1_HVT U471 ( .A1(io_in_d[8]), .A2(n427), .S0(n425), .Y(N18) );
  NAND2X0_HVT U472 ( .A1(n404), .A2(n397), .Y(n405) );
  XNOR2X1_HVT U473 ( .A1(n406), .A2(n405), .Y(n407) );
  MUX21X1_HVT U474 ( .A1(n407), .A2(io_in_d[7]), .S0(io_out_control_propagate), 
        .Y(N17) );
  MUX21X1_HVT U475 ( .A1(io_in_d[7]), .A2(n407), .S0(io_out_control_propagate), 
        .Y(N35) );
  NAND2X0_HVT U476 ( .A1(n410), .A2(n409), .Y(n411) );
  XNOR2X1_HVT U477 ( .A1(n412), .A2(n411), .Y(n413) );
  MUX21X1_HVT U478 ( .A1(n413), .A2(io_in_d[6]), .S0(io_out_control_propagate), 
        .Y(N16) );
  MUX21X1_HVT U479 ( .A1(n413), .A2(io_in_d[6]), .S0(n425), .Y(N34) );
  MUX21X1_HVT U480 ( .A1(io_in_d[5]), .A2(n414), .S0(n425), .Y(N15) );
  MUX21X1_HVT U481 ( .A1(io_in_d[4]), .A2(n415), .S0(n425), .Y(N14) );
  MUX21X1_HVT U482 ( .A1(n416), .A2(io_in_d[3]), .S0(n425), .Y(N31) );
  MUX21X1_HVT U483 ( .A1(io_in_d[2]), .A2(n417), .S0(n425), .Y(N12) );
  OR2X1_HVT U484 ( .A1(n422), .A2(n418), .Y(n420) );
  MUX21X1_HVT U485 ( .A1(io_in_d[1]), .A2(n17), .S0(n425), .Y(N11) );
  MUX21X1_HVT U486 ( .A1(io_in_d[1]), .A2(n17), .S0(io_out_control_propagate), 
        .Y(N29) );
  INVX0_HVT U487 ( .A(n421), .Y(n424) );
  INVX0_HVT U488 ( .A(_T_38_s[0]), .Y(n423) );
  AOI21X1_HVT U489 ( .A1(n424), .A2(n423), .A3(n422), .Y(n426) );
  MUX21X1_HVT U490 ( .A1(io_in_d[0]), .A2(n426), .S0(n425), .Y(N10) );
  MUX21X1_HVT U491 ( .A1(io_in_d[0]), .A2(n426), .S0(io_out_control_propagate), 
        .Y(N28) );
  MUX21X1_HVT U492 ( .A1(io_in_d[8]), .A2(n427), .S0(io_out_control_propagate), 
        .Y(N36) );
  OR2X1_HVT U493 ( .A1(n429), .A2(n428), .Y(n430) );
  AND2X1_HVT U494 ( .A1(n431), .A2(n430), .Y(io_out_c[2]) );
  OR2X1_HVT U495 ( .A1(n433), .A2(n432), .Y(n434) );
  AND2X1_HVT U496 ( .A1(n435), .A2(n434), .Y(io_out_c[4]) );
  INVX0_HVT U497 ( .A(n444), .Y(n436) );
  OA21X1_HVT U498 ( .A1(n438), .A2(n437), .A3(n436), .Y(io_out_c[6]) );
  OR2X1_HVT U499 ( .A1(n439), .A2(n444), .Y(n440) );
  AND2X1_HVT U500 ( .A1(n441), .A2(n440), .Y(io_out_c[7]) );
  NAND3X0_HVT U501 ( .A1(n444), .A2(n443), .A3(n442), .Y(n447) );
  OA21X1_HVT U502 ( .A1(n446), .A2(n445), .A3(n447), .Y(io_out_c[9]) );
  NAND2X0_HVT U503 ( .A1(n451), .A2(n450), .Y(n452) );
  AND2X1_HVT U504 ( .A1(n454), .A2(n453), .Y(io_out_c[11]) );
  OA21X1_HVT U505 ( .A1(n457), .A2(n456), .A3(n455), .Y(n458) );
endmodule


module top_PE_64 ( CLK, io_in_a1, io_in_b1, io_in_d1, io_in_valid1, 
        io_in_control_shift1, io_in_control_propagate1, io_out_a1, io_out_b1, 
        io_out_c1, io_out_control_propagate1, io_out_control_shift1, 
        io_out_valid1 );
  input [7:0] io_in_a1;
  input [18:0] io_in_b1;
  input [18:0] io_in_d1;
  input [3:0] io_in_control_shift1;
  output [7:0] io_out_a1;
  output [18:0] io_out_b1;
  output [18:0] io_out_c1;
  output [3:0] io_out_control_shift1;
  input CLK, io_in_valid1, io_in_control_propagate1;
  output io_out_control_propagate1, io_out_valid1;
  wire   \io_in_a[4] , io_in_valid, io_out_valid, n4, n5, n12, n13, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23;
  wire   [18:0] io_in_b;
  wire   [18:0] io_in_d;
  wire   [3:0] io_in_control_shift;
  wire   [7:0] io_out_a;
  wire   [18:0] io_out_b;
  wire   [18:0] io_out_c;
  wire   [3:0] io_out_control_shift;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2;
  assign io_out_c1[15] = io_out_c1[18];
  assign io_out_c1[16] = io_out_c1[18];
  assign io_out_c1[17] = io_out_c1[18];

  PE_64 uut ( .clock(CLK), .io_in_a({n16, n18, n23, \io_in_a[4] , n20, n14, 
        n21, n12}), .io_in_b(io_in_b), .io_in_d({1'b0, 1'b0, 1'b0, 
        io_in_d[15:0]}), .io_out_a(io_out_a), .io_out_b(io_out_b), .io_out_c({
        io_out_c[18], SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, io_out_c[14:0]}), .io_in_control_propagate(n5), .io_in_control_shift(io_in_control_shift), .io_out_control_propagate(n4), 
        .io_out_control_shift(io_out_control_shift), .io_in_valid(io_in_valid), 
        .io_out_valid(io_out_valid) );
  DFFX1_HVT \io_in_a_reg[4]  ( .D(io_in_a1[4]), .CLK(CLK), .Q(\io_in_a[4] ) );
  DFFX1_HVT \io_in_b_reg[18]  ( .D(io_in_b1[18]), .CLK(CLK), .Q(io_in_b[18])
         );
  DFFX1_HVT \io_in_b_reg[17]  ( .D(io_in_b1[17]), .CLK(CLK), .Q(io_in_b[17])
         );
  DFFX1_HVT \io_in_b_reg[16]  ( .D(io_in_b1[16]), .CLK(CLK), .Q(io_in_b[16])
         );
  DFFX1_HVT \io_in_b_reg[15]  ( .D(io_in_b1[15]), .CLK(CLK), .Q(io_in_b[15])
         );
  DFFX1_HVT \io_in_b_reg[14]  ( .D(io_in_b1[14]), .CLK(CLK), .Q(io_in_b[14])
         );
  DFFX1_HVT \io_in_b_reg[13]  ( .D(io_in_b1[13]), .CLK(CLK), .Q(io_in_b[13])
         );
  DFFX1_HVT \io_in_b_reg[12]  ( .D(io_in_b1[12]), .CLK(CLK), .Q(io_in_b[12])
         );
  DFFX1_HVT \io_in_b_reg[11]  ( .D(io_in_b1[11]), .CLK(CLK), .Q(io_in_b[11])
         );
  DFFX1_HVT \io_in_b_reg[10]  ( .D(io_in_b1[10]), .CLK(CLK), .Q(io_in_b[10])
         );
  DFFX1_HVT \io_in_b_reg[9]  ( .D(io_in_b1[9]), .CLK(CLK), .Q(io_in_b[9]) );
  DFFX1_HVT \io_in_b_reg[8]  ( .D(io_in_b1[8]), .CLK(CLK), .Q(io_in_b[8]) );
  DFFX1_HVT \io_in_b_reg[7]  ( .D(io_in_b1[7]), .CLK(CLK), .Q(io_in_b[7]) );
  DFFX1_HVT \io_in_b_reg[6]  ( .D(io_in_b1[6]), .CLK(CLK), .Q(io_in_b[6]) );
  DFFX1_HVT \io_in_b_reg[5]  ( .D(io_in_b1[5]), .CLK(CLK), .Q(io_in_b[5]) );
  DFFX1_HVT \io_in_b_reg[4]  ( .D(io_in_b1[4]), .CLK(CLK), .Q(io_in_b[4]) );
  DFFX1_HVT \io_in_b_reg[3]  ( .D(io_in_b1[3]), .CLK(CLK), .Q(io_in_b[3]) );
  DFFX1_HVT \io_in_d_reg[15]  ( .D(io_in_d1[15]), .CLK(CLK), .Q(io_in_d[15])
         );
  DFFX1_HVT \io_in_d_reg[14]  ( .D(io_in_d1[14]), .CLK(CLK), .Q(io_in_d[14])
         );
  DFFX1_HVT \io_in_d_reg[13]  ( .D(io_in_d1[13]), .CLK(CLK), .Q(io_in_d[13])
         );
  DFFX1_HVT \io_in_d_reg[12]  ( .D(io_in_d1[12]), .CLK(CLK), .Q(io_in_d[12])
         );
  DFFX1_HVT \io_in_d_reg[11]  ( .D(io_in_d1[11]), .CLK(CLK), .Q(io_in_d[11])
         );
  DFFX1_HVT \io_in_d_reg[10]  ( .D(io_in_d1[10]), .CLK(CLK), .Q(io_in_d[10])
         );
  DFFX1_HVT \io_in_d_reg[9]  ( .D(io_in_d1[9]), .CLK(CLK), .Q(io_in_d[9]) );
  DFFX1_HVT \io_in_d_reg[8]  ( .D(io_in_d1[8]), .CLK(CLK), .Q(io_in_d[8]) );
  DFFX1_HVT \io_in_d_reg[7]  ( .D(io_in_d1[7]), .CLK(CLK), .Q(io_in_d[7]) );
  DFFX1_HVT \io_in_d_reg[6]  ( .D(io_in_d1[6]), .CLK(CLK), .Q(io_in_d[6]) );
  DFFX1_HVT \io_in_d_reg[5]  ( .D(io_in_d1[5]), .CLK(CLK), .Q(io_in_d[5]) );
  DFFX1_HVT \io_in_d_reg[4]  ( .D(io_in_d1[4]), .CLK(CLK), .Q(io_in_d[4]) );
  DFFX1_HVT \io_in_d_reg[3]  ( .D(io_in_d1[3]), .CLK(CLK), .Q(io_in_d[3]) );
  DFFX1_HVT \io_in_d_reg[2]  ( .D(io_in_d1[2]), .CLK(CLK), .Q(io_in_d[2]) );
  DFFX1_HVT \io_in_d_reg[1]  ( .D(io_in_d1[1]), .CLK(CLK), .Q(io_in_d[1]) );
  DFFX1_HVT \io_in_d_reg[0]  ( .D(io_in_d1[0]), .CLK(CLK), .Q(io_in_d[0]) );
  DFFX1_HVT io_in_valid_reg ( .D(io_in_valid1), .CLK(CLK), .Q(io_in_valid) );
  DFFX1_HVT \io_in_control_shift_reg[3]  ( .D(io_in_control_shift1[3]), .CLK(
        CLK), .Q(io_in_control_shift[3]) );
  DFFX1_HVT \io_in_control_shift_reg[2]  ( .D(io_in_control_shift1[2]), .CLK(
        CLK), .Q(io_in_control_shift[2]) );
  DFFX1_HVT \io_in_control_shift_reg[1]  ( .D(io_in_control_shift1[1]), .CLK(
        CLK), .Q(io_in_control_shift[1]) );
  DFFX1_HVT \io_in_control_shift_reg[0]  ( .D(io_in_control_shift1[0]), .CLK(
        CLK), .Q(io_in_control_shift[0]) );
  DFFX1_HVT \io_out_a1_reg[6]  ( .D(io_out_a[6]), .CLK(CLK), .Q(io_out_a1[6])
         );
  DFFX1_HVT \io_out_a1_reg[5]  ( .D(io_out_a[5]), .CLK(CLK), .Q(io_out_a1[5])
         );
  DFFX1_HVT \io_out_a1_reg[3]  ( .D(io_out_a[3]), .CLK(CLK), .Q(io_out_a1[3])
         );
  DFFX1_HVT \io_out_a1_reg[2]  ( .D(io_out_a[2]), .CLK(CLK), .Q(io_out_a1[2])
         );
  DFFX1_HVT \io_out_a1_reg[1]  ( .D(io_out_a[1]), .CLK(CLK), .Q(io_out_a1[1])
         );
  DFFX1_HVT \io_out_a1_reg[0]  ( .D(io_out_a[0]), .CLK(CLK), .Q(io_out_a1[0])
         );
  DFFX1_HVT \io_out_b1_reg[18]  ( .D(io_out_b[18]), .CLK(CLK), .Q(
        io_out_b1[18]) );
  DFFX1_HVT \io_out_b1_reg[17]  ( .D(io_out_b[17]), .CLK(CLK), .Q(
        io_out_b1[17]) );
  DFFX1_HVT \io_out_b1_reg[16]  ( .D(io_out_b[16]), .CLK(CLK), .Q(
        io_out_b1[16]) );
  DFFX1_HVT \io_out_b1_reg[15]  ( .D(io_out_b[15]), .CLK(CLK), .Q(
        io_out_b1[15]) );
  DFFX1_HVT \io_out_b1_reg[14]  ( .D(io_out_b[14]), .CLK(CLK), .Q(
        io_out_b1[14]) );
  DFFX1_HVT \io_out_b1_reg[13]  ( .D(io_out_b[13]), .CLK(CLK), .Q(
        io_out_b1[13]) );
  DFFX1_HVT \io_out_b1_reg[12]  ( .D(io_out_b[12]), .CLK(CLK), .Q(
        io_out_b1[12]) );
  DFFX1_HVT \io_out_b1_reg[11]  ( .D(io_out_b[11]), .CLK(CLK), .Q(
        io_out_b1[11]) );
  DFFX1_HVT \io_out_b1_reg[10]  ( .D(io_out_b[10]), .CLK(CLK), .Q(
        io_out_b1[10]) );
  DFFX1_HVT \io_out_b1_reg[9]  ( .D(io_out_b[9]), .CLK(CLK), .Q(io_out_b1[9])
         );
  DFFX1_HVT \io_out_b1_reg[8]  ( .D(io_out_b[8]), .CLK(CLK), .Q(io_out_b1[8])
         );
  DFFX1_HVT \io_out_c1_reg[18]  ( .D(io_out_c[18]), .CLK(CLK), .Q(
        io_out_c1[18]) );
  DFFX1_HVT \io_out_c1_reg[14]  ( .D(io_out_c[14]), .CLK(CLK), .Q(
        io_out_c1[14]) );
  DFFX1_HVT \io_out_c1_reg[13]  ( .D(io_out_c[13]), .CLK(CLK), .Q(
        io_out_c1[13]) );
  DFFX1_HVT \io_out_c1_reg[12]  ( .D(io_out_c[12]), .CLK(CLK), .Q(
        io_out_c1[12]) );
  DFFX1_HVT \io_out_c1_reg[11]  ( .D(io_out_c[11]), .CLK(CLK), .Q(
        io_out_c1[11]) );
  DFFX1_HVT \io_out_c1_reg[10]  ( .D(io_out_c[10]), .CLK(CLK), .Q(
        io_out_c1[10]) );
  DFFX1_HVT \io_out_c1_reg[9]  ( .D(io_out_c[9]), .CLK(CLK), .Q(io_out_c1[9])
         );
  DFFX1_HVT \io_out_c1_reg[8]  ( .D(io_out_c[8]), .CLK(CLK), .Q(io_out_c1[8])
         );
  DFFX1_HVT \io_out_c1_reg[7]  ( .D(io_out_c[7]), .CLK(CLK), .Q(io_out_c1[7])
         );
  DFFX1_HVT \io_out_c1_reg[6]  ( .D(io_out_c[6]), .CLK(CLK), .Q(io_out_c1[6])
         );
  DFFX1_HVT \io_out_c1_reg[5]  ( .D(io_out_c[5]), .CLK(CLK), .Q(io_out_c1[5])
         );
  DFFX1_HVT \io_out_c1_reg[4]  ( .D(io_out_c[4]), .CLK(CLK), .Q(io_out_c1[4])
         );
  DFFX1_HVT \io_out_c1_reg[3]  ( .D(io_out_c[3]), .CLK(CLK), .Q(io_out_c1[3])
         );
  DFFX1_HVT \io_out_c1_reg[2]  ( .D(io_out_c[2]), .CLK(CLK), .Q(io_out_c1[2])
         );
  DFFX1_HVT \io_out_c1_reg[1]  ( .D(io_out_c[1]), .CLK(CLK), .Q(io_out_c1[1])
         );
  DFFX1_HVT \io_out_c1_reg[0]  ( .D(io_out_c[0]), .CLK(CLK), .Q(io_out_c1[0])
         );
  DFFX1_HVT io_out_control_propagate1_reg ( .D(n4), .CLK(CLK), .Q(
        io_out_control_propagate1) );
  DFFX1_HVT \io_out_control_shift1_reg[3]  ( .D(io_out_control_shift[3]), 
        .CLK(CLK), .Q(io_out_control_shift1[3]) );
  DFFX1_HVT \io_out_control_shift1_reg[2]  ( .D(io_out_control_shift[2]), 
        .CLK(CLK), .Q(io_out_control_shift1[2]) );
  DFFX1_HVT \io_out_control_shift1_reg[1]  ( .D(io_out_control_shift[1]), 
        .CLK(CLK), .Q(io_out_control_shift1[1]) );
  DFFX1_HVT \io_out_control_shift1_reg[0]  ( .D(io_out_control_shift[0]), 
        .CLK(CLK), .Q(io_out_control_shift1[0]) );
  DFFX1_HVT io_out_valid1_reg ( .D(io_out_valid), .CLK(CLK), .Q(io_out_valid1)
         );
  DFFX1_HVT io_in_control_propagate_reg ( .D(io_in_control_propagate1), .CLK(
        CLK), .Q(n5) );
  DFFX1_HVT \io_out_a1_reg[7]  ( .D(io_out_a[7]), .CLK(CLK), .Q(io_out_a1[7])
         );
  DFFX1_HVT \io_out_a1_reg[4]  ( .D(io_out_a[4]), .CLK(CLK), .Q(io_out_a1[4])
         );
  DFFX1_HVT \io_out_b1_reg[7]  ( .D(io_out_b[7]), .CLK(CLK), .Q(io_out_b1[7])
         );
  DFFX1_HVT \io_out_b1_reg[6]  ( .D(io_out_b[6]), .CLK(CLK), .Q(io_out_b1[6])
         );
  DFFX1_HVT \io_out_b1_reg[5]  ( .D(io_out_b[5]), .CLK(CLK), .Q(io_out_b1[5])
         );
  DFFX1_HVT \io_out_b1_reg[4]  ( .D(io_out_b[4]), .CLK(CLK), .Q(io_out_b1[4])
         );
  DFFX1_HVT \io_out_b1_reg[3]  ( .D(io_out_b[3]), .CLK(CLK), .Q(io_out_b1[3])
         );
  DFFX1_HVT \io_out_b1_reg[2]  ( .D(io_out_b[2]), .CLK(CLK), .Q(io_out_b1[2])
         );
  DFFX1_HVT \io_out_b1_reg[1]  ( .D(io_out_b[1]), .CLK(CLK), .Q(io_out_b1[1])
         );
  DFFX1_HVT \io_out_b1_reg[0]  ( .D(io_out_b[0]), .CLK(CLK), .Q(io_out_b1[0])
         );
  DFFX1_HVT \io_in_b_reg[2]  ( .D(io_in_b1[2]), .CLK(CLK), .Q(io_in_b[2]) );
  DFFX1_HVT \io_in_b_reg[0]  ( .D(io_in_b1[0]), .CLK(CLK), .Q(io_in_b[0]) );
  DFFX2_HVT \io_in_a_reg[3]  ( .D(io_in_a1[3]), .CLK(CLK), .QN(n19) );
  DFFSSRX1_HVT \io_in_b_reg[1]  ( .D(1'b0), .SETB(io_in_b1[1]), .RSTB(1'b1), 
        .CLK(CLK), .QN(io_in_b[1]) );
  DFFSSRX2_HVT \io_in_a_reg[1]  ( .D(1'b0), .SETB(io_in_a1[1]), .RSTB(1'b1), 
        .CLK(CLK), .QN(n21) );
  DFFX2_HVT \io_in_a_reg[2]  ( .D(io_in_a1[2]), .CLK(CLK), .QN(n13) );
  DFFX1_HVT \io_in_a_reg[5]  ( .D(io_in_a1[5]), .CLK(CLK), .QN(n22) );
  DFFX1_HVT \io_in_a_reg[7]  ( .D(io_in_a1[7]), .CLK(CLK), .QN(n15) );
  DFFSSRX1_HVT \io_in_a_reg[0]  ( .D(1'b0), .SETB(io_in_a1[0]), .RSTB(1'b1), 
        .CLK(CLK), .QN(n12) );
  DFFX1_HVT \io_in_a_reg[6]  ( .D(io_in_a1[6]), .CLK(CLK), .QN(n17) );
  INVX4_HVT U4 ( .A(n19), .Y(n20) );
  INVX4_HVT U5 ( .A(n13), .Y(n14) );
  INVX1_HVT U6 ( .A(n17), .Y(n18) );
  INVX2_HVT U7 ( .A(n15), .Y(n16) );
  INVX2_HVT U8 ( .A(n22), .Y(n23) );
endmodule

