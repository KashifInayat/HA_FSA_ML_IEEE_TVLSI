/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : K-2015.06-SP2-1
// Date      : Wed Mar 17 16:55:32 2021
/////////////////////////////////////////////////////////////


module r4_mb8 ( mx, my, sum, carry );
  input [7:0] mx;
  input [7:0] my;
  output [15:0] sum;
  output [15:0] carry;
  wire   carry_1, \b_e0/w1 , \b_selector[0].bs/N2 , net3580, net3590, net3598,
         net3603, net3605, net3606, net3611, net3614, net3618, net3619,
         net3623, net3624, net3626, net3633, net3635, net3640, net3643,
         net3646, net3666, net3667, net3669, net3691, net3693, net3699,
         net3703, net3704, net3705, net3706, net3707, net3714, net3721,
         net3728, net3733, net3740, net3751, net3774, net3775, net3781,
         net3783, net3797, net3800, net3801, net3811, net3816, net3827,
         net3857, net3861, net3862, net3863, net3866, net3931, net3941,
         net3826, net3785, net3780, net3732, net3701, net3621, net3731,
         net3730, net3813, net3809, net3804, net3803, net3702, net3806,
         net3802, net3593, net3592, net3784, n2, n3, n4, n5, n6, n7, n8, n9,
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

  XOR3X1_HVT U3 ( .A1(net3626), .A2(n166), .A3(n165), .Y(sum[12]) );
  XOR3X1_HVT U4 ( .A1(n67), .A2(n66), .A3(n65), .Y(n148) );
  XOR2X1_HVT U5 ( .A1(net3809), .A2(net3590), .Y(n3) );
  XOR2X1_HVT U6 ( .A1(net3811), .A2(net3590), .Y(n13) );
  XOR3X1_HVT U7 ( .A1(n69), .A2(n28), .A3(n68), .Y(n74) );
  XOR3X1_HVT U8 ( .A1(net3740), .A2(n28), .A3(n88), .Y(n91) );
  XOR2X1_HVT U9 ( .A1(net3701), .A2(net3669), .Y(n7) );
  XOR2X1_HVT U10 ( .A1(net3775), .A2(n5), .Y(net3774) );
  INVX1_HVT U11 ( .A(net3669), .Y(n5) );
  INVX1_HVT U12 ( .A(net3784), .Y(n11) );
  OR2X2_HVT U13 ( .A1(n[0]), .A2(mx[2]), .Y(net3784) );
  OR2X2_HVT U14 ( .A1(n39), .A2(n45), .Y(net3751) );
  AO21X1_HVT U15 ( .A1(n154), .A2(net3669), .A3(n38), .Y(net3941) );
  NBUFFX2_HVT U16 ( .A(n[1]), .Y(n2) );
  XOR3X2_HVT U17 ( .A1(net3592), .A2(net3593), .A3(n3), .Y(sum[10]) );
  INVX1_HVT U18 ( .A(n30), .Y(n27) );
  OR2X2_HVT U19 ( .A1(net3667), .A2(n23), .Y(net3626) );
  INVX1_HVT U20 ( .A(n[1]), .Y(n12) );
  NBUFFX2_HVT U21 ( .A(net3800), .Y(n4) );
  OR2X1_HVT U22 ( .A1(my[1]), .A2(my[0]), .Y(n82) );
  XOR2X1_HVT U23 ( .A1(n100), .A2(n113), .Y(n85) );
  XOR2X1_HVT U24 ( .A1(n[3]), .A2(n[2]), .Y(net3590) );
  INVX2_HVT U25 ( .A(mx[6]), .Y(n30) );
  INVX0_HVT U26 ( .A(my[7]), .Y(net3785) );
  INVX0_HVT U27 ( .A(n130), .Y(n18) );
  NAND3X0_HVT U28 ( .A1(n5), .A2(net3580), .A3(n154), .Y(n156) );
  INVX0_HVT U29 ( .A(n17), .Y(n16) );
  INVX0_HVT U30 ( .A(net3667), .Y(net3862) );
  NOR2X0_HVT U31 ( .A1(net3669), .A2(sum[4]), .Y(carry[5]) );
  OA22X1_HVT U32 ( .A1(net3605), .A2(net3785), .A3(net3606), .A4(net3751), .Y(
        n158) );
  INVX0_HVT U33 ( .A(n124), .Y(n61) );
  INVX0_HVT U34 ( .A(net3751), .Y(net3861) );
  INVX0_HVT U35 ( .A(net3707), .Y(net3706) );
  NAND2X0_HVT U36 ( .A1(n99), .A2(net3580), .Y(n130) );
  AO21X1_HVT U37 ( .A1(my[1]), .A2(n32), .A3(net3669), .Y(n97) );
  AO21X1_HVT U38 ( .A1(net3580), .A2(net3784), .A3(n6), .Y(net3781) );
  OR2X1_HVT U39 ( .A1(net3826), .A2(net3827), .Y(net3780) );
  AND2X1_HVT U40 ( .A1(n[3]), .A2(n80), .Y(n81) );
  INVX0_HVT U41 ( .A(n28), .Y(n163) );
  NBUFFX2_HVT U42 ( .A(net3931), .Y(net3866) );
  XNOR2X2_HVT U43 ( .A1(net3714), .A2(n2), .Y(n28) );
  INVX0_HVT U44 ( .A(my[5]), .Y(net3621) );
  INVX0_HVT U45 ( .A(mx[6]), .Y(n94) );
  INVX1_HVT U46 ( .A(my[0]), .Y(n160) );
  NBUFFX2_HVT U47 ( .A(n[1]), .Y(n6) );
  OA21X1_HVT U48 ( .A1(net3826), .A2(net3827), .A3(n6), .Y(n17) );
  AND3X1_HVT U49 ( .A1(my[7]), .A2(\b_e0/w1 ), .A3(net3714), .Y(net3827) );
  INVX2_HVT U50 ( .A(n[0]), .Y(net3714) );
  AND2X1_HVT U51 ( .A1(net3785), .A2(net3931), .Y(net3826) );
  FADDX1_HVT U52 ( .A(net3780), .B(net3806), .CI(n7), .CO(net3592) );
  XOR2X2_HVT U53 ( .A1(n9), .A2(net3740), .Y(n107) );
  XOR2X1_HVT U54 ( .A1(n64), .A2(n9), .Y(n65) );
  XOR3X2_HVT U55 ( .A1(n8), .A2(n113), .A3(n112), .Y(n120) );
  INVX0_HVT U56 ( .A(n9), .Y(n8) );
  XNOR2X2_HVT U57 ( .A1(n161), .A2(net3669), .Y(n9) );
  XOR3X2_HVT U58 ( .A1(n130), .A2(n9), .A3(n129), .Y(n134) );
  XOR2X2_HVT U59 ( .A1(n10), .A2(net3590), .Y(n60) );
  XOR2X1_HVT U60 ( .A1(n10), .A2(net3669), .Y(n122) );
  OA22X1_HVT U61 ( .A1(net3785), .A2(net3623), .A3(net3606), .A4(net3624), .Y(
        n10) );
  NAND2X0_HVT U62 ( .A1(net3784), .A2(n2), .Y(net3730) );
  OA21X1_HVT U63 ( .A1(n12), .A2(n11), .A3(net3731), .Y(net3797) );
  AO21X1_HVT U64 ( .A1(mx[2]), .A2(n[0]), .A3(n[1]), .Y(net3731) );
  XOR3X2_HVT U65 ( .A1(n14), .A2(n13), .A3(net3809), .Y(net3804) );
  OA21X1_HVT U66 ( .A1(net3635), .A2(net3797), .A3(net3580), .Y(net3811) );
  XNOR2X2_HVT U67 ( .A1(net3714), .A2(mx[2]), .Y(net3635) );
  XOR2X2_HVT U68 ( .A1(net3703), .A2(net3775), .Y(n14) );
  OA22X1_HVT U69 ( .A1(net3606), .A2(net3623), .A3(net3621), .A4(net3941), .Y(
        net3775) );
  NAND2X0_HVT U70 ( .A1(n16), .A2(n15), .Y(net3703) );
  OR3X1_HVT U71 ( .A1(n6), .A2(net3826), .A3(net3827), .Y(n15) );
  XNOR2X2_HVT U72 ( .A1(n133), .A2(n131), .Y(sum[8]) );
  XOR3X2_HVT U73 ( .A1(n129), .A2(n18), .A3(n34), .Y(n133) );
  AO22X1_HVT U74 ( .A1(net3693), .A2(n19), .A3(net3691), .A4(net3780), .Y(
        net3640) );
  XOR3X2_HVT U75 ( .A1(n130), .A2(n28), .A3(n104), .Y(n19) );
  OR2X1_HVT U76 ( .A1(\b_e0/w1 ), .A2(net3866), .Y(n99) );
  XOR2X2_HVT U77 ( .A1(n112), .A2(n28), .Y(n35) );
  XOR2X2_HVT U78 ( .A1(n29), .A2(n101), .Y(n112) );
  AO21X1_HVT U79 ( .A1(net3598), .A2(my[6]), .A3(n77), .Y(n101) );
  AND2X1_HVT U80 ( .A1(net3801), .A2(net3931), .Y(net3598) );
  AND2X1_HVT U81 ( .A1(n21), .A2(n20), .Y(n29) );
  NAND3X0_HVT U82 ( .A1(net3731), .A2(net3730), .A3(my[4]), .Y(n20) );
  NAND2X0_HVT U83 ( .A1(net3635), .A2(my[5]), .Y(n21) );
  NAND2X0_HVT U84 ( .A1(net3781), .A2(n59), .Y(n22) );
  OA21X1_HVT U85 ( .A1(n[3]), .A2(net3706), .A3(n136), .Y(n138) );
  INVX4_HVT U86 ( .A(n[2]), .Y(net3669) );
  OA21X1_HVT U87 ( .A1(mx[4]), .A2(n[1]), .A3(n[2]), .Y(n38) );
  INVX0_HVT U88 ( .A(my[3]), .Y(net3733) );
  INVX1_HVT U89 ( .A(net3714), .Y(net3931) );
  INVX0_HVT U90 ( .A(my[1]), .Y(n78) );
  INVX0_HVT U91 ( .A(my[2]), .Y(n143) );
  INVX0_HVT U92 ( .A(n48), .Y(n64) );
  INVX0_HVT U93 ( .A(n49), .Y(n53) );
  INVX0_HVT U94 ( .A(net3780), .Y(net3618) );
  INVX0_HVT U95 ( .A(my[6]), .Y(net3606) );
  INVX1_HVT U96 ( .A(n[3]), .Y(net3603) );
  INVX0_HVT U97 ( .A(net3816), .Y(net3813) );
  INVX0_HVT U98 ( .A(my[4]), .Y(net3732) );
  INVX0_HVT U99 ( .A(\b_e0/w1 ), .Y(net3801) );
  INVX0_HVT U100 ( .A(net3598), .Y(net3633) );
  INVX0_HVT U101 ( .A(n94), .Y(n32) );
  XNOR2X1_HVT U102 ( .A1(n29), .A2(n12), .Y(n102) );
  XOR2X1_HVT U103 ( .A1(n67), .A2(n12), .Y(n56) );
  INVX0_HVT U104 ( .A(n79), .Y(n46) );
  XOR2X1_HVT U105 ( .A1(n88), .A2(n12), .Y(n89) );
  NAND2X0_HVT U106 ( .A1(n25), .A2(n23), .Y(net3809) );
  XOR2X1_HVT U107 ( .A1(n158), .A2(net3603), .Y(n169) );
  XOR2X1_HVT U108 ( .A1(net3611), .A2(net3603), .Y(n155) );
  NBUFFX2_HVT U109 ( .A(my[7]), .Y(net3580) );
  INVX0_HVT U110 ( .A(\b_selector[0].bs/N2 ), .Y(n105) );
  INVX0_HVT U111 ( .A(net3626), .Y(net3614) );
  INVX0_HVT U112 ( .A(n166), .Y(n153) );
  XOR3X1_HVT U113 ( .A1(n164), .A2(n163), .A3(n162), .Y(sum[3]) );
  XOR2X1_HVT U114 ( .A1(n74), .A2(n63), .Y(sum[4]) );
  INVX0_HVT U115 ( .A(n72), .Y(n63) );
  XOR2X1_HVT U116 ( .A1(n148), .A2(n147), .Y(sum[5]) );
  XOR3X1_HVT U117 ( .A1(n169), .A2(n168), .A3(n167), .Y(sum[13]) );
  INVX0_HVT U118 ( .A(carry[15]), .Y(sum[14]) );
  NAND2X0_HVT U119 ( .A1(net3931), .A2(mx[2]), .Y(net3783) );
  AO22X1_HVT U120 ( .A1(net3802), .A2(net3803), .A3(net3804), .A4(net3592), 
        .Y(carry[11]) );
  XOR2X2_HVT U121 ( .A1(net3702), .A2(n6), .Y(net3806) );
  XOR3X2_HVT U122 ( .A1(net3775), .A2(net3811), .A3(net3703), .Y(net3593) );
  XNOR2X2_HVT U123 ( .A1(net3593), .A2(net3669), .Y(net3802) );
  XNOR2X2_HVT U124 ( .A1(net3619), .A2(net3780), .Y(net3666) );
  XOR3X2_HVT U125 ( .A1(net3701), .A2(net3702), .A3(net3703), .Y(net3643) );
  AO22X1_HVT U126 ( .A1(my[7]), .A2(net3635), .A3(net3797), .A4(my[6]), .Y(
        net3702) );
  NAND2X0_HVT U127 ( .A1(net3809), .A2(n[3]), .Y(n24) );
  NAND2X0_HVT U128 ( .A1(n26), .A2(net3813), .Y(n25) );
  OA21X1_HVT U129 ( .A1(n[3]), .A2(net3813), .A3(n24), .Y(net3803) );
  INVX0_HVT U130 ( .A(net3705), .Y(n26) );
  AO21X1_HVT U131 ( .A1(net3816), .A2(net3705), .A3(net3862), .Y(net3863) );
  NAND2X0_HVT U132 ( .A1(net3705), .A2(net3816), .Y(n23) );
  AO21X1_HVT U133 ( .A1(net3706), .A2(net3704), .A3(net3705), .Y(net3646) );
  NAND3X0_HVT U134 ( .A1(net3730), .A2(my[5]), .A3(net3731), .Y(net3728) );
  OA22X1_HVT U135 ( .A1(net3621), .A2(net3623), .A3(net3732), .A4(net3624), 
        .Y(net3701) );
  OA22X1_HVT U136 ( .A1(net3623), .A2(net3732), .A3(net3733), .A4(net3624), 
        .Y(net3699) );
  OA22X1_HVT U137 ( .A1(net3733), .A2(net3751), .A3(net3732), .A4(net3605), 
        .Y(net3816) );
  OA22X1_HVT U138 ( .A1(net3801), .A2(net3606), .A3(net3621), .A4(net3633), 
        .Y(net3740) );
  OA22X1_HVT U139 ( .A1(net3606), .A2(net3605), .A3(net3621), .A4(net3751), 
        .Y(net3611) );
  INVX0_HVT U140 ( .A(net3827), .Y(net3857) );
  XOR2X1_HVT U141 ( .A1(n88), .A2(n86), .Y(n108) );
  OA22X1_HVT U142 ( .A1(n[3]), .A2(net3667), .A3(net3666), .A4(n122), .Y(n123)
         );
  XNOR2X1_HVT U143 ( .A1(n104), .A2(n6), .Y(net3691) );
  OA22X1_HVT U144 ( .A1(net3623), .A2(net3733), .A3(n143), .A4(net3624), .Y(
        n113) );
  OA22X1_HVT U145 ( .A1(n78), .A2(net3623), .A3(n160), .A4(net3941), .Y(n66)
         );
  OA22X1_HVT U146 ( .A1(n143), .A2(net3623), .A3(n78), .A4(net3941), .Y(n86)
         );
  OR2X1_HVT U147 ( .A1(net3605), .A2(n160), .Y(n79) );
  INVX2_HVT U148 ( .A(net3800), .Y(net3605) );
  XNOR2X1_HVT U149 ( .A1(net3714), .A2(n[1]), .Y(n161) );
  XNOR2X2_HVT U150 ( .A1(n[2]), .A2(n30), .Y(net3800) );
  AND3X1_HVT U151 ( .A1(n31), .A2(n[3]), .A3(n80), .Y(n41) );
  NAND2X0_HVT U152 ( .A1(my[0]), .A2(n94), .Y(n80) );
  NAND2X0_HVT U153 ( .A1(net3669), .A2(my[1]), .Y(n31) );
  XNOR2X2_HVT U154 ( .A1(net3699), .A2(n104), .Y(n129) );
  AND2X1_HVT U155 ( .A1(n93), .A2(net3728), .Y(n104) );
  OR3X1_HVT U156 ( .A1(my[2]), .A2(my[1]), .A3(my[0]), .Y(n40) );
  XOR2X1_HVT U157 ( .A1(net3643), .A2(n5), .Y(n137) );
  OA21X1_HVT U158 ( .A1(n5), .A2(n32), .A3(net3603), .Y(n170) );
  AO21X1_HVT U159 ( .A1(n32), .A2(n5), .A3(net3785), .Y(n171) );
  XOR2X2_HVT U160 ( .A1(n127), .A2(n100), .Y(n34) );
  XOR2X2_HVT U161 ( .A1(n28), .A2(net3590), .Y(n100) );
  AND2X1_HVT U162 ( .A1(n33), .A2(net3704), .Y(n127) );
  NAND2X0_HVT U163 ( .A1(n98), .A2(n128), .Y(n33) );
  OA22X1_HVT U164 ( .A1(n103), .A2(n102), .A3(n36), .A4(n35), .Y(n131) );
  XOR2X1_HVT U165 ( .A1(n113), .A2(n5), .Y(n36) );
  NAND2X0_HVT U166 ( .A1(net3626), .A2(net3863), .Y(n121) );
  AO22X1_HVT U167 ( .A1(my[5]), .A2(n4), .A3(net3861), .A4(my[4]), .Y(net3667)
         );
  AND2X1_HVT U168 ( .A1(net3721), .A2(net3707), .Y(net3705) );
  OAI22X1_HVT U169 ( .A1(n37), .A2(n124), .A3(n125), .A4(n126), .Y(carry[12])
         );
  XNOR2X2_HVT U170 ( .A1(n37), .A2(n61), .Y(sum[11]) );
  XOR3X2_HVT U171 ( .A1(n60), .A2(net3666), .A3(n121), .Y(n37) );
  OA21X1_HVT U172 ( .A1(net3714), .A2(n101), .A3(net3857), .Y(n103) );
  AO21X1_HVT U173 ( .A1(n154), .A2(net3669), .A3(n38), .Y(net3624) );
  NAND2X0_HVT U174 ( .A1(n[1]), .A2(mx[4]), .Y(n154) );
  OA22X1_HVT U175 ( .A1(n45), .A2(n44), .A3(net3733), .A4(net3605), .Y(net3707) );
  XNOR2X2_HVT U176 ( .A1(mx[4]), .A2(n[1]), .Y(net3623) );
  OR2X1_HVT U177 ( .A1(n27), .A2(n[3]), .Y(n43) );
  INVX0_HVT U178 ( .A(n43), .Y(n39) );
  MUX21X1_HVT U179 ( .A1(n27), .A2(n[3]), .S0(n[2]), .Y(n45) );
  NAND2X0_HVT U180 ( .A1(n40), .A2(net3800), .Y(n42) );
  AND2X1_HVT U181 ( .A1(n42), .A2(n41), .Y(net3721) );
  NAND2X0_HVT U182 ( .A1(n43), .A2(my[2]), .Y(n44) );
  XNOR2X2_HVT U183 ( .A1(n107), .A2(n46), .Y(n58) );
  AO22X1_HVT U184 ( .A1(my[4]), .A2(net3635), .A3(net3797), .A4(my[3]), .Y(n88) );
  AO22X1_HVT U185 ( .A1(\b_e0/w1 ), .A2(my[5]), .A3(net3598), .A4(my[4]), .Y(
        n48) );
  MUX21X1_HVT U186 ( .A1(my[5]), .A2(n64), .S0(net3866), .Y(n47) );
  NAND2X0_HVT U187 ( .A1(n47), .A2(n99), .Y(n57) );
  NAND2X0_HVT U188 ( .A1(my[2]), .A2(net3797), .Y(n51) );
  NAND2X0_HVT U189 ( .A1(net3635), .A2(my[3]), .Y(n50) );
  NAND2X0_HVT U190 ( .A1(n51), .A2(n50), .Y(n67) );
  XOR2X1_HVT U191 ( .A1(n66), .A2(n5), .Y(n55) );
  XOR2X1_HVT U192 ( .A1(n48), .A2(n28), .Y(n49) );
  AO21X1_HVT U193 ( .A1(n51), .A2(n50), .A3(n49), .Y(n52) );
  OA21X1_HVT U194 ( .A1(n53), .A2(n67), .A3(n52), .Y(n54) );
  OA22X1_HVT U195 ( .A1(n57), .A2(n56), .A3(n55), .A4(n54), .Y(n106) );
  XOR3X2_HVT U196 ( .A1(n58), .A2(n108), .A3(n106), .Y(sum[6]) );
  NAND3X0_HVT U197 ( .A1(net3580), .A2(net3783), .A3(n6), .Y(n59) );
  NAND2X0_HVT U198 ( .A1(net3781), .A2(n59), .Y(net3619) );
  FADDX1_HVT U199 ( .A(net3618), .B(net3774), .CI(n22), .CO(n124) );
  XOR2X1_HVT U200 ( .A1(my[2]), .A2(net3866), .Y(n62) );
  AO22X1_HVT U201 ( .A1(net3598), .A2(n78), .A3(n62), .A4(\b_e0/w1 ), .Y(n141)
         );
  AND2X1_HVT U202 ( .A1(net3635), .A2(my[0]), .Y(n140) );
  XOR2X1_HVT U203 ( .A1(n141), .A2(n140), .Y(sum[2]) );
  AND2X1_HVT U204 ( .A1(\b_e0/w1 ), .A2(my[4]), .Y(n71) );
  AO21X1_HVT U205 ( .A1(net3598), .A2(my[3]), .A3(n71), .Y(n69) );
  AO22X1_HVT U206 ( .A1(my[2]), .A2(net3635), .A3(net3797), .A4(my[1]), .Y(n68) );
  OR2X1_HVT U207 ( .A1(n160), .A2(net3623), .Y(n72) );
  XOR2X1_HVT U208 ( .A1(n6), .A2(n68), .Y(n76) );
  INVX0_HVT U209 ( .A(n69), .Y(n70) );
  MUX21X1_HVT U210 ( .A1(n71), .A2(n70), .S0(net3866), .Y(n75) );
  XOR2X1_HVT U211 ( .A1(n72), .A2(net3669), .Y(n73) );
  AO22X1_HVT U212 ( .A1(n76), .A2(n75), .A3(n74), .A4(n73), .Y(n147) );
  AND2X1_HVT U213 ( .A1(\b_e0/w1 ), .A2(net3580), .Y(n77) );
  OA22X1_HVT U214 ( .A1(n160), .A2(net3751), .A3(n78), .A4(net3605), .Y(n116)
         );
  AND2X1_HVT U215 ( .A1(n79), .A2(n[3]), .Y(n84) );
  NAND2X0_HVT U216 ( .A1(n4), .A2(n82), .Y(n83) );
  NAND2X0_HVT U217 ( .A1(n81), .A2(n83), .Y(n98) );
  OA21X1_HVT U218 ( .A1(n116), .A2(n84), .A3(n98), .Y(n114) );
  XOR3X2_HVT U219 ( .A1(n112), .A2(n114), .A3(n85), .Y(n117) );
  XOR2X1_HVT U220 ( .A1(n86), .A2(n5), .Y(n92) );
  MUX21X1_HVT U221 ( .A1(my[6]), .A2(net3740), .S0(net3866), .Y(n87) );
  NAND2X0_HVT U222 ( .A1(n87), .A2(n99), .Y(n90) );
  OA22X1_HVT U223 ( .A1(n92), .A2(n91), .A3(n90), .A4(n89), .Y(n118) );
  XOR2X2_HVT U224 ( .A1(n117), .A2(n118), .Y(sum[7]) );
  NAND2X0_HVT U225 ( .A1(net3635), .A2(my[6]), .Y(n93) );
  NAND3X0_HVT U226 ( .A1(n94), .A2(my[1]), .A3(n[3]), .Y(n95) );
  NAND2X0_HVT U227 ( .A1(n95), .A2(net3669), .Y(n96) );
  AO22X1_HVT U228 ( .A1(n97), .A2(n96), .A3(n4), .A4(my[2]), .Y(n128) );
  INVX0_HVT U229 ( .A(net3721), .Y(net3704) );
  XOR3X2_HVT U230 ( .A1(net3646), .A2(net3590), .A3(net3643), .Y(n139) );
  XOR2X1_HVT U231 ( .A1(net3699), .A2(net3669), .Y(net3693) );
  XOR2X2_HVT U232 ( .A1(n139), .A2(net3640), .Y(sum[9]) );
  AND2X1_HVT U233 ( .A1(\b_e0/w1 ), .A2(my[0]), .Y(\b_selector[0].bs/N2 ) );
  AND2X1_HVT U234 ( .A1(net3866), .A2(n105), .Y(carry_1) );
  INVX0_HVT U235 ( .A(n106), .Y(n111) );
  NAND2X0_HVT U236 ( .A1(n106), .A2(n79), .Y(n110) );
  XOR2X1_HVT U237 ( .A1(n107), .A2(n108), .Y(n109) );
  AO22X1_HVT U238 ( .A1(n111), .A2(n46), .A3(n110), .A4(n109), .Y(carry[7]) );
  INVX0_HVT U239 ( .A(n114), .Y(n115) );
  MUX21X1_HVT U240 ( .A1(n116), .A2(n115), .S0(n[3]), .Y(n119) );
  OAI22X1_HVT U241 ( .A1(n120), .A2(n119), .A3(n118), .A4(n117), .Y(carry[8])
         );
  AND2X1_HVT U242 ( .A1(n[3]), .A2(n121), .Y(n126) );
  NAND2X0_HVT U243 ( .A1(n122), .A2(net3666), .Y(n152) );
  NAND2X0_HVT U244 ( .A1(n123), .A2(n152), .Y(n125) );
  MUX21X1_HVT U245 ( .A1(n128), .A2(n127), .S0(n[3]), .Y(n135) );
  INVX0_HVT U246 ( .A(n131), .Y(n132) );
  AO22X1_HVT U247 ( .A1(n135), .A2(n134), .A3(n133), .A4(n132), .Y(carry[9])
         );
  NAND2X0_HVT U248 ( .A1(net3646), .A2(n[3]), .Y(n136) );
  AO22X1_HVT U249 ( .A1(net3640), .A2(n139), .A3(n138), .A4(n137), .Y(
        carry[10]) );
  MUX21X1_HVT U250 ( .A1(n6), .A2(n141), .S0(n140), .Y(carry[3]) );
  AO22X1_HVT U251 ( .A1(my[1]), .A2(net3635), .A3(net3797), .A4(my[0]), .Y(
        n162) );
  XOR2X1_HVT U252 ( .A1(n6), .A2(n162), .Y(n146) );
  NAND2X0_HVT U253 ( .A1(\b_e0/w1 ), .A2(my[3]), .Y(n142) );
  INVX0_HVT U254 ( .A(n142), .Y(n144) );
  OA21X1_HVT U255 ( .A1(n143), .A2(net3633), .A3(n142), .Y(n164) );
  MUX21X1_HVT U256 ( .A1(n144), .A2(n164), .S0(net3866), .Y(n145) );
  AND2X1_HVT U257 ( .A1(n146), .A2(n145), .Y(carry[4]) );
  AND2X1_HVT U258 ( .A1(n148), .A2(n147), .Y(carry[6]) );
  NAND2X0_HVT U259 ( .A1(net3623), .A2(net3941), .Y(n149) );
  NAND2X0_HVT U260 ( .A1(n149), .A2(net3580), .Y(n150) );
  XOR3X2_HVT U261 ( .A1(n150), .A2(net3590), .A3(net3611), .Y(n166) );
  NAND2X0_HVT U262 ( .A1(net3618), .A2(net3619), .Y(n151) );
  NAND2X0_HVT U263 ( .A1(n152), .A2(n151), .Y(n165) );
  FADDX1_HVT U264 ( .A(net3614), .B(n153), .CI(n165), .CO(carry[13]) );
  AO221X1_HVT U265 ( .A1(net3580), .A2(mx[4]), .A3(n6), .A4(net3580), .A5(n5), 
        .Y(n157) );
  AO21X1_HVT U266 ( .A1(n157), .A2(n156), .A3(n155), .Y(n167) );
  NAND2X0_HVT U267 ( .A1(n157), .A2(n156), .Y(n168) );
  AO21X1_HVT U268 ( .A1(n167), .A2(n168), .A3(n169), .Y(carry[14]) );
  AO22X1_HVT U269 ( .A1(n170), .A2(net3580), .A3(n[3]), .A4(n171), .Y(
        carry[15]) );
  XOR2X1_HVT U270 ( .A1(my[1]), .A2(net3866), .Y(n159) );
  AO22X1_HVT U271 ( .A1(net3598), .A2(n160), .A3(n159), .A4(\b_e0/w1 ), .Y(
        sum[1]) );
  OAI22X1_HVT U272 ( .A1(n[3]), .A2(net3580), .A3(n171), .A4(n170), .Y(sum[15]) );
endmodule

