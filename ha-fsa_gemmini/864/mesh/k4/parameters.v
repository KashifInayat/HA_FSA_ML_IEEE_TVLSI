 parameter k=4;//cpacutset
 parameter acc_wl=64;//Accumulator_WIDTH
 parameter ctl=8;//CTL Bits
 //parameter WIDTH = 8;
 //parameter ht=1;
 parameter GRP_WIDTH= acc_wl-k;
 parameter dbits=2*(acc_wl-k)+ctl+k;
 `define P_W 68