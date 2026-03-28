/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Wed Mar 25 23:20:23 2026
/////////////////////////////////////////////////////////////


module shift_20d_sv ( xin, xout, clock );
  input [7:0] xin;
  output [7:0] xout;
  input clock;

  wire   [159:8] shift_reg;

  DFFPOSX1 \shift_reg_reg[159]  ( .D(xin[7]), .CLK(clock), .Q(shift_reg[159])
         );
  DFFPOSX1 \shift_reg_reg[158]  ( .D(xin[6]), .CLK(clock), .Q(shift_reg[158])
         );
  DFFPOSX1 \shift_reg_reg[157]  ( .D(xin[5]), .CLK(clock), .Q(shift_reg[157])
         );
  DFFPOSX1 \shift_reg_reg[156]  ( .D(xin[4]), .CLK(clock), .Q(shift_reg[156])
         );
  DFFPOSX1 \shift_reg_reg[155]  ( .D(xin[3]), .CLK(clock), .Q(shift_reg[155])
         );
  DFFPOSX1 \shift_reg_reg[154]  ( .D(xin[2]), .CLK(clock), .Q(shift_reg[154])
         );
  DFFPOSX1 \shift_reg_reg[153]  ( .D(xin[1]), .CLK(clock), .Q(shift_reg[153])
         );
  DFFPOSX1 \shift_reg_reg[152]  ( .D(xin[0]), .CLK(clock), .Q(shift_reg[152])
         );
  DFFPOSX1 \shift_reg_reg[151]  ( .D(shift_reg[159]), .CLK(clock), .Q(
        shift_reg[151]) );
  DFFPOSX1 \shift_reg_reg[150]  ( .D(shift_reg[158]), .CLK(clock), .Q(
        shift_reg[150]) );
  DFFPOSX1 \shift_reg_reg[149]  ( .D(shift_reg[157]), .CLK(clock), .Q(
        shift_reg[149]) );
  DFFPOSX1 \shift_reg_reg[148]  ( .D(shift_reg[156]), .CLK(clock), .Q(
        shift_reg[148]) );
  DFFPOSX1 \shift_reg_reg[147]  ( .D(shift_reg[155]), .CLK(clock), .Q(
        shift_reg[147]) );
  DFFPOSX1 \shift_reg_reg[146]  ( .D(shift_reg[154]), .CLK(clock), .Q(
        shift_reg[146]) );
  DFFPOSX1 \shift_reg_reg[145]  ( .D(shift_reg[153]), .CLK(clock), .Q(
        shift_reg[145]) );
  DFFPOSX1 \shift_reg_reg[144]  ( .D(shift_reg[152]), .CLK(clock), .Q(
        shift_reg[144]) );
  DFFPOSX1 \shift_reg_reg[143]  ( .D(shift_reg[151]), .CLK(clock), .Q(
        shift_reg[143]) );
  DFFPOSX1 \shift_reg_reg[142]  ( .D(shift_reg[150]), .CLK(clock), .Q(
        shift_reg[142]) );
  DFFPOSX1 \shift_reg_reg[141]  ( .D(shift_reg[149]), .CLK(clock), .Q(
        shift_reg[141]) );
  DFFPOSX1 \shift_reg_reg[140]  ( .D(shift_reg[148]), .CLK(clock), .Q(
        shift_reg[140]) );
  DFFPOSX1 \shift_reg_reg[139]  ( .D(shift_reg[147]), .CLK(clock), .Q(
        shift_reg[139]) );
  DFFPOSX1 \shift_reg_reg[138]  ( .D(shift_reg[146]), .CLK(clock), .Q(
        shift_reg[138]) );
  DFFPOSX1 \shift_reg_reg[137]  ( .D(shift_reg[145]), .CLK(clock), .Q(
        shift_reg[137]) );
  DFFPOSX1 \shift_reg_reg[136]  ( .D(shift_reg[144]), .CLK(clock), .Q(
        shift_reg[136]) );
  DFFPOSX1 \shift_reg_reg[135]  ( .D(shift_reg[143]), .CLK(clock), .Q(
        shift_reg[135]) );
  DFFPOSX1 \shift_reg_reg[134]  ( .D(shift_reg[142]), .CLK(clock), .Q(
        shift_reg[134]) );
  DFFPOSX1 \shift_reg_reg[133]  ( .D(shift_reg[141]), .CLK(clock), .Q(
        shift_reg[133]) );
  DFFPOSX1 \shift_reg_reg[132]  ( .D(shift_reg[140]), .CLK(clock), .Q(
        shift_reg[132]) );
  DFFPOSX1 \shift_reg_reg[131]  ( .D(shift_reg[139]), .CLK(clock), .Q(
        shift_reg[131]) );
  DFFPOSX1 \shift_reg_reg[130]  ( .D(shift_reg[138]), .CLK(clock), .Q(
        shift_reg[130]) );
  DFFPOSX1 \shift_reg_reg[129]  ( .D(shift_reg[137]), .CLK(clock), .Q(
        shift_reg[129]) );
  DFFPOSX1 \shift_reg_reg[128]  ( .D(shift_reg[136]), .CLK(clock), .Q(
        shift_reg[128]) );
  DFFPOSX1 \shift_reg_reg[127]  ( .D(shift_reg[135]), .CLK(clock), .Q(
        shift_reg[127]) );
  DFFPOSX1 \shift_reg_reg[126]  ( .D(shift_reg[134]), .CLK(clock), .Q(
        shift_reg[126]) );
  DFFPOSX1 \shift_reg_reg[125]  ( .D(shift_reg[133]), .CLK(clock), .Q(
        shift_reg[125]) );
  DFFPOSX1 \shift_reg_reg[124]  ( .D(shift_reg[132]), .CLK(clock), .Q(
        shift_reg[124]) );
  DFFPOSX1 \shift_reg_reg[123]  ( .D(shift_reg[131]), .CLK(clock), .Q(
        shift_reg[123]) );
  DFFPOSX1 \shift_reg_reg[122]  ( .D(shift_reg[130]), .CLK(clock), .Q(
        shift_reg[122]) );
  DFFPOSX1 \shift_reg_reg[121]  ( .D(shift_reg[129]), .CLK(clock), .Q(
        shift_reg[121]) );
  DFFPOSX1 \shift_reg_reg[120]  ( .D(shift_reg[128]), .CLK(clock), .Q(
        shift_reg[120]) );
  DFFPOSX1 \shift_reg_reg[119]  ( .D(shift_reg[127]), .CLK(clock), .Q(
        shift_reg[119]) );
  DFFPOSX1 \shift_reg_reg[118]  ( .D(shift_reg[126]), .CLK(clock), .Q(
        shift_reg[118]) );
  DFFPOSX1 \shift_reg_reg[117]  ( .D(shift_reg[125]), .CLK(clock), .Q(
        shift_reg[117]) );
  DFFPOSX1 \shift_reg_reg[116]  ( .D(shift_reg[124]), .CLK(clock), .Q(
        shift_reg[116]) );
  DFFPOSX1 \shift_reg_reg[115]  ( .D(shift_reg[123]), .CLK(clock), .Q(
        shift_reg[115]) );
  DFFPOSX1 \shift_reg_reg[114]  ( .D(shift_reg[122]), .CLK(clock), .Q(
        shift_reg[114]) );
  DFFPOSX1 \shift_reg_reg[113]  ( .D(shift_reg[121]), .CLK(clock), .Q(
        shift_reg[113]) );
  DFFPOSX1 \shift_reg_reg[112]  ( .D(shift_reg[120]), .CLK(clock), .Q(
        shift_reg[112]) );
  DFFPOSX1 \shift_reg_reg[111]  ( .D(shift_reg[119]), .CLK(clock), .Q(
        shift_reg[111]) );
  DFFPOSX1 \shift_reg_reg[110]  ( .D(shift_reg[118]), .CLK(clock), .Q(
        shift_reg[110]) );
  DFFPOSX1 \shift_reg_reg[109]  ( .D(shift_reg[117]), .CLK(clock), .Q(
        shift_reg[109]) );
  DFFPOSX1 \shift_reg_reg[108]  ( .D(shift_reg[116]), .CLK(clock), .Q(
        shift_reg[108]) );
  DFFPOSX1 \shift_reg_reg[107]  ( .D(shift_reg[115]), .CLK(clock), .Q(
        shift_reg[107]) );
  DFFPOSX1 \shift_reg_reg[106]  ( .D(shift_reg[114]), .CLK(clock), .Q(
        shift_reg[106]) );
  DFFPOSX1 \shift_reg_reg[105]  ( .D(shift_reg[113]), .CLK(clock), .Q(
        shift_reg[105]) );
  DFFPOSX1 \shift_reg_reg[104]  ( .D(shift_reg[112]), .CLK(clock), .Q(
        shift_reg[104]) );
  DFFPOSX1 \shift_reg_reg[103]  ( .D(shift_reg[111]), .CLK(clock), .Q(
        shift_reg[103]) );
  DFFPOSX1 \shift_reg_reg[102]  ( .D(shift_reg[110]), .CLK(clock), .Q(
        shift_reg[102]) );
  DFFPOSX1 \shift_reg_reg[101]  ( .D(shift_reg[109]), .CLK(clock), .Q(
        shift_reg[101]) );
  DFFPOSX1 \shift_reg_reg[100]  ( .D(shift_reg[108]), .CLK(clock), .Q(
        shift_reg[100]) );
  DFFPOSX1 \shift_reg_reg[99]  ( .D(shift_reg[107]), .CLK(clock), .Q(
        shift_reg[99]) );
  DFFPOSX1 \shift_reg_reg[98]  ( .D(shift_reg[106]), .CLK(clock), .Q(
        shift_reg[98]) );
  DFFPOSX1 \shift_reg_reg[97]  ( .D(shift_reg[105]), .CLK(clock), .Q(
        shift_reg[97]) );
  DFFPOSX1 \shift_reg_reg[96]  ( .D(shift_reg[104]), .CLK(clock), .Q(
        shift_reg[96]) );
  DFFPOSX1 \shift_reg_reg[95]  ( .D(shift_reg[103]), .CLK(clock), .Q(
        shift_reg[95]) );
  DFFPOSX1 \shift_reg_reg[94]  ( .D(shift_reg[102]), .CLK(clock), .Q(
        shift_reg[94]) );
  DFFPOSX1 \shift_reg_reg[93]  ( .D(shift_reg[101]), .CLK(clock), .Q(
        shift_reg[93]) );
  DFFPOSX1 \shift_reg_reg[92]  ( .D(shift_reg[100]), .CLK(clock), .Q(
        shift_reg[92]) );
  DFFPOSX1 \shift_reg_reg[91]  ( .D(shift_reg[99]), .CLK(clock), .Q(
        shift_reg[91]) );
  DFFPOSX1 \shift_reg_reg[90]  ( .D(shift_reg[98]), .CLK(clock), .Q(
        shift_reg[90]) );
  DFFPOSX1 \shift_reg_reg[89]  ( .D(shift_reg[97]), .CLK(clock), .Q(
        shift_reg[89]) );
  DFFPOSX1 \shift_reg_reg[88]  ( .D(shift_reg[96]), .CLK(clock), .Q(
        shift_reg[88]) );
  DFFPOSX1 \shift_reg_reg[87]  ( .D(shift_reg[95]), .CLK(clock), .Q(
        shift_reg[87]) );
  DFFPOSX1 \shift_reg_reg[86]  ( .D(shift_reg[94]), .CLK(clock), .Q(
        shift_reg[86]) );
  DFFPOSX1 \shift_reg_reg[85]  ( .D(shift_reg[93]), .CLK(clock), .Q(
        shift_reg[85]) );
  DFFPOSX1 \shift_reg_reg[84]  ( .D(shift_reg[92]), .CLK(clock), .Q(
        shift_reg[84]) );
  DFFPOSX1 \shift_reg_reg[83]  ( .D(shift_reg[91]), .CLK(clock), .Q(
        shift_reg[83]) );
  DFFPOSX1 \shift_reg_reg[82]  ( .D(shift_reg[90]), .CLK(clock), .Q(
        shift_reg[82]) );
  DFFPOSX1 \shift_reg_reg[81]  ( .D(shift_reg[89]), .CLK(clock), .Q(
        shift_reg[81]) );
  DFFPOSX1 \shift_reg_reg[80]  ( .D(shift_reg[88]), .CLK(clock), .Q(
        shift_reg[80]) );
  DFFPOSX1 \shift_reg_reg[79]  ( .D(shift_reg[87]), .CLK(clock), .Q(
        shift_reg[79]) );
  DFFPOSX1 \shift_reg_reg[78]  ( .D(shift_reg[86]), .CLK(clock), .Q(
        shift_reg[78]) );
  DFFPOSX1 \shift_reg_reg[77]  ( .D(shift_reg[85]), .CLK(clock), .Q(
        shift_reg[77]) );
  DFFPOSX1 \shift_reg_reg[76]  ( .D(shift_reg[84]), .CLK(clock), .Q(
        shift_reg[76]) );
  DFFPOSX1 \shift_reg_reg[75]  ( .D(shift_reg[83]), .CLK(clock), .Q(
        shift_reg[75]) );
  DFFPOSX1 \shift_reg_reg[74]  ( .D(shift_reg[82]), .CLK(clock), .Q(
        shift_reg[74]) );
  DFFPOSX1 \shift_reg_reg[73]  ( .D(shift_reg[81]), .CLK(clock), .Q(
        shift_reg[73]) );
  DFFPOSX1 \shift_reg_reg[72]  ( .D(shift_reg[80]), .CLK(clock), .Q(
        shift_reg[72]) );
  DFFPOSX1 \shift_reg_reg[71]  ( .D(shift_reg[79]), .CLK(clock), .Q(
        shift_reg[71]) );
  DFFPOSX1 \shift_reg_reg[70]  ( .D(shift_reg[78]), .CLK(clock), .Q(
        shift_reg[70]) );
  DFFPOSX1 \shift_reg_reg[69]  ( .D(shift_reg[77]), .CLK(clock), .Q(
        shift_reg[69]) );
  DFFPOSX1 \shift_reg_reg[68]  ( .D(shift_reg[76]), .CLK(clock), .Q(
        shift_reg[68]) );
  DFFPOSX1 \shift_reg_reg[67]  ( .D(shift_reg[75]), .CLK(clock), .Q(
        shift_reg[67]) );
  DFFPOSX1 \shift_reg_reg[66]  ( .D(shift_reg[74]), .CLK(clock), .Q(
        shift_reg[66]) );
  DFFPOSX1 \shift_reg_reg[65]  ( .D(shift_reg[73]), .CLK(clock), .Q(
        shift_reg[65]) );
  DFFPOSX1 \shift_reg_reg[64]  ( .D(shift_reg[72]), .CLK(clock), .Q(
        shift_reg[64]) );
  DFFPOSX1 \shift_reg_reg[63]  ( .D(shift_reg[71]), .CLK(clock), .Q(
        shift_reg[63]) );
  DFFPOSX1 \shift_reg_reg[62]  ( .D(shift_reg[70]), .CLK(clock), .Q(
        shift_reg[62]) );
  DFFPOSX1 \shift_reg_reg[61]  ( .D(shift_reg[69]), .CLK(clock), .Q(
        shift_reg[61]) );
  DFFPOSX1 \shift_reg_reg[60]  ( .D(shift_reg[68]), .CLK(clock), .Q(
        shift_reg[60]) );
  DFFPOSX1 \shift_reg_reg[59]  ( .D(shift_reg[67]), .CLK(clock), .Q(
        shift_reg[59]) );
  DFFPOSX1 \shift_reg_reg[58]  ( .D(shift_reg[66]), .CLK(clock), .Q(
        shift_reg[58]) );
  DFFPOSX1 \shift_reg_reg[57]  ( .D(shift_reg[65]), .CLK(clock), .Q(
        shift_reg[57]) );
  DFFPOSX1 \shift_reg_reg[56]  ( .D(shift_reg[64]), .CLK(clock), .Q(
        shift_reg[56]) );
  DFFPOSX1 \shift_reg_reg[55]  ( .D(shift_reg[63]), .CLK(clock), .Q(
        shift_reg[55]) );
  DFFPOSX1 \shift_reg_reg[54]  ( .D(shift_reg[62]), .CLK(clock), .Q(
        shift_reg[54]) );
  DFFPOSX1 \shift_reg_reg[53]  ( .D(shift_reg[61]), .CLK(clock), .Q(
        shift_reg[53]) );
  DFFPOSX1 \shift_reg_reg[52]  ( .D(shift_reg[60]), .CLK(clock), .Q(
        shift_reg[52]) );
  DFFPOSX1 \shift_reg_reg[51]  ( .D(shift_reg[59]), .CLK(clock), .Q(
        shift_reg[51]) );
  DFFPOSX1 \shift_reg_reg[50]  ( .D(shift_reg[58]), .CLK(clock), .Q(
        shift_reg[50]) );
  DFFPOSX1 \shift_reg_reg[49]  ( .D(shift_reg[57]), .CLK(clock), .Q(
        shift_reg[49]) );
  DFFPOSX1 \shift_reg_reg[48]  ( .D(shift_reg[56]), .CLK(clock), .Q(
        shift_reg[48]) );
  DFFPOSX1 \shift_reg_reg[47]  ( .D(shift_reg[55]), .CLK(clock), .Q(
        shift_reg[47]) );
  DFFPOSX1 \shift_reg_reg[46]  ( .D(shift_reg[54]), .CLK(clock), .Q(
        shift_reg[46]) );
  DFFPOSX1 \shift_reg_reg[45]  ( .D(shift_reg[53]), .CLK(clock), .Q(
        shift_reg[45]) );
  DFFPOSX1 \shift_reg_reg[44]  ( .D(shift_reg[52]), .CLK(clock), .Q(
        shift_reg[44]) );
  DFFPOSX1 \shift_reg_reg[43]  ( .D(shift_reg[51]), .CLK(clock), .Q(
        shift_reg[43]) );
  DFFPOSX1 \shift_reg_reg[42]  ( .D(shift_reg[50]), .CLK(clock), .Q(
        shift_reg[42]) );
  DFFPOSX1 \shift_reg_reg[41]  ( .D(shift_reg[49]), .CLK(clock), .Q(
        shift_reg[41]) );
  DFFPOSX1 \shift_reg_reg[40]  ( .D(shift_reg[48]), .CLK(clock), .Q(
        shift_reg[40]) );
  DFFPOSX1 \shift_reg_reg[39]  ( .D(shift_reg[47]), .CLK(clock), .Q(
        shift_reg[39]) );
  DFFPOSX1 \shift_reg_reg[38]  ( .D(shift_reg[46]), .CLK(clock), .Q(
        shift_reg[38]) );
  DFFPOSX1 \shift_reg_reg[37]  ( .D(shift_reg[45]), .CLK(clock), .Q(
        shift_reg[37]) );
  DFFPOSX1 \shift_reg_reg[36]  ( .D(shift_reg[44]), .CLK(clock), .Q(
        shift_reg[36]) );
  DFFPOSX1 \shift_reg_reg[35]  ( .D(shift_reg[43]), .CLK(clock), .Q(
        shift_reg[35]) );
  DFFPOSX1 \shift_reg_reg[34]  ( .D(shift_reg[42]), .CLK(clock), .Q(
        shift_reg[34]) );
  DFFPOSX1 \shift_reg_reg[33]  ( .D(shift_reg[41]), .CLK(clock), .Q(
        shift_reg[33]) );
  DFFPOSX1 \shift_reg_reg[32]  ( .D(shift_reg[40]), .CLK(clock), .Q(
        shift_reg[32]) );
  DFFPOSX1 \shift_reg_reg[31]  ( .D(shift_reg[39]), .CLK(clock), .Q(
        shift_reg[31]) );
  DFFPOSX1 \shift_reg_reg[30]  ( .D(shift_reg[38]), .CLK(clock), .Q(
        shift_reg[30]) );
  DFFPOSX1 \shift_reg_reg[29]  ( .D(shift_reg[37]), .CLK(clock), .Q(
        shift_reg[29]) );
  DFFPOSX1 \shift_reg_reg[28]  ( .D(shift_reg[36]), .CLK(clock), .Q(
        shift_reg[28]) );
  DFFPOSX1 \shift_reg_reg[27]  ( .D(shift_reg[35]), .CLK(clock), .Q(
        shift_reg[27]) );
  DFFPOSX1 \shift_reg_reg[26]  ( .D(shift_reg[34]), .CLK(clock), .Q(
        shift_reg[26]) );
  DFFPOSX1 \shift_reg_reg[25]  ( .D(shift_reg[33]), .CLK(clock), .Q(
        shift_reg[25]) );
  DFFPOSX1 \shift_reg_reg[24]  ( .D(shift_reg[32]), .CLK(clock), .Q(
        shift_reg[24]) );
  DFFPOSX1 \shift_reg_reg[23]  ( .D(shift_reg[31]), .CLK(clock), .Q(
        shift_reg[23]) );
  DFFPOSX1 \shift_reg_reg[22]  ( .D(shift_reg[30]), .CLK(clock), .Q(
        shift_reg[22]) );
  DFFPOSX1 \shift_reg_reg[21]  ( .D(shift_reg[29]), .CLK(clock), .Q(
        shift_reg[21]) );
  DFFPOSX1 \shift_reg_reg[20]  ( .D(shift_reg[28]), .CLK(clock), .Q(
        shift_reg[20]) );
  DFFPOSX1 \shift_reg_reg[19]  ( .D(shift_reg[27]), .CLK(clock), .Q(
        shift_reg[19]) );
  DFFPOSX1 \shift_reg_reg[18]  ( .D(shift_reg[26]), .CLK(clock), .Q(
        shift_reg[18]) );
  DFFPOSX1 \shift_reg_reg[17]  ( .D(shift_reg[25]), .CLK(clock), .Q(
        shift_reg[17]) );
  DFFPOSX1 \shift_reg_reg[16]  ( .D(shift_reg[24]), .CLK(clock), .Q(
        shift_reg[16]) );
  DFFPOSX1 \shift_reg_reg[15]  ( .D(shift_reg[23]), .CLK(clock), .Q(
        shift_reg[15]) );
  DFFPOSX1 \shift_reg_reg[14]  ( .D(shift_reg[22]), .CLK(clock), .Q(
        shift_reg[14]) );
  DFFPOSX1 \shift_reg_reg[13]  ( .D(shift_reg[21]), .CLK(clock), .Q(
        shift_reg[13]) );
  DFFPOSX1 \shift_reg_reg[12]  ( .D(shift_reg[20]), .CLK(clock), .Q(
        shift_reg[12]) );
  DFFPOSX1 \shift_reg_reg[11]  ( .D(shift_reg[19]), .CLK(clock), .Q(
        shift_reg[11]) );
  DFFPOSX1 \shift_reg_reg[10]  ( .D(shift_reg[18]), .CLK(clock), .Q(
        shift_reg[10]) );
  DFFPOSX1 \shift_reg_reg[9]  ( .D(shift_reg[17]), .CLK(clock), .Q(
        shift_reg[9]) );
  DFFPOSX1 \shift_reg_reg[8]  ( .D(shift_reg[16]), .CLK(clock), .Q(
        shift_reg[8]) );
  DFFPOSX1 \shift_reg_reg[7]  ( .D(shift_reg[15]), .CLK(clock), .Q(xout[7]) );
  DFFPOSX1 \shift_reg_reg[6]  ( .D(shift_reg[14]), .CLK(clock), .Q(xout[6]) );
  DFFPOSX1 \shift_reg_reg[5]  ( .D(shift_reg[13]), .CLK(clock), .Q(xout[5]) );
  DFFPOSX1 \shift_reg_reg[4]  ( .D(shift_reg[12]), .CLK(clock), .Q(xout[4]) );
  DFFPOSX1 \shift_reg_reg[3]  ( .D(shift_reg[11]), .CLK(clock), .Q(xout[3]) );
  DFFPOSX1 \shift_reg_reg[2]  ( .D(shift_reg[10]), .CLK(clock), .Q(xout[2]) );
  DFFPOSX1 \shift_reg_reg[1]  ( .D(shift_reg[9]), .CLK(clock), .Q(xout[1]) );
  DFFPOSX1 \shift_reg_reg[0]  ( .D(shift_reg[8]), .CLK(clock), .Q(xout[0]) );
endmodule


module shift_21d_sv ( xin, x_N_out, x_1_out, clock );
  input [7:0] xin;
  output [7:0] x_N_out;
  output [7:0] x_1_out;
  input clock;

  wire   [159:8] shift_reg;

  DFFPOSX1 \shift_reg_reg[167]  ( .D(xin[7]), .CLK(clock), .Q(x_1_out[7]) );
  DFFPOSX1 \shift_reg_reg[166]  ( .D(xin[6]), .CLK(clock), .Q(x_1_out[6]) );
  DFFPOSX1 \shift_reg_reg[165]  ( .D(xin[5]), .CLK(clock), .Q(x_1_out[5]) );
  DFFPOSX1 \shift_reg_reg[164]  ( .D(xin[4]), .CLK(clock), .Q(x_1_out[4]) );
  DFFPOSX1 \shift_reg_reg[163]  ( .D(xin[3]), .CLK(clock), .Q(x_1_out[3]) );
  DFFPOSX1 \shift_reg_reg[162]  ( .D(xin[2]), .CLK(clock), .Q(x_1_out[2]) );
  DFFPOSX1 \shift_reg_reg[161]  ( .D(xin[1]), .CLK(clock), .Q(x_1_out[1]) );
  DFFPOSX1 \shift_reg_reg[160]  ( .D(xin[0]), .CLK(clock), .Q(x_1_out[0]) );
  DFFPOSX1 \shift_reg_reg[159]  ( .D(x_1_out[7]), .CLK(clock), .Q(
        shift_reg[159]) );
  DFFPOSX1 \shift_reg_reg[158]  ( .D(x_1_out[6]), .CLK(clock), .Q(
        shift_reg[158]) );
  DFFPOSX1 \shift_reg_reg[157]  ( .D(x_1_out[5]), .CLK(clock), .Q(
        shift_reg[157]) );
  DFFPOSX1 \shift_reg_reg[156]  ( .D(x_1_out[4]), .CLK(clock), .Q(
        shift_reg[156]) );
  DFFPOSX1 \shift_reg_reg[155]  ( .D(x_1_out[3]), .CLK(clock), .Q(
        shift_reg[155]) );
  DFFPOSX1 \shift_reg_reg[154]  ( .D(x_1_out[2]), .CLK(clock), .Q(
        shift_reg[154]) );
  DFFPOSX1 \shift_reg_reg[153]  ( .D(x_1_out[1]), .CLK(clock), .Q(
        shift_reg[153]) );
  DFFPOSX1 \shift_reg_reg[152]  ( .D(x_1_out[0]), .CLK(clock), .Q(
        shift_reg[152]) );
  DFFPOSX1 \shift_reg_reg[151]  ( .D(shift_reg[159]), .CLK(clock), .Q(
        shift_reg[151]) );
  DFFPOSX1 \shift_reg_reg[150]  ( .D(shift_reg[158]), .CLK(clock), .Q(
        shift_reg[150]) );
  DFFPOSX1 \shift_reg_reg[149]  ( .D(shift_reg[157]), .CLK(clock), .Q(
        shift_reg[149]) );
  DFFPOSX1 \shift_reg_reg[148]  ( .D(shift_reg[156]), .CLK(clock), .Q(
        shift_reg[148]) );
  DFFPOSX1 \shift_reg_reg[147]  ( .D(shift_reg[155]), .CLK(clock), .Q(
        shift_reg[147]) );
  DFFPOSX1 \shift_reg_reg[146]  ( .D(shift_reg[154]), .CLK(clock), .Q(
        shift_reg[146]) );
  DFFPOSX1 \shift_reg_reg[145]  ( .D(shift_reg[153]), .CLK(clock), .Q(
        shift_reg[145]) );
  DFFPOSX1 \shift_reg_reg[144]  ( .D(shift_reg[152]), .CLK(clock), .Q(
        shift_reg[144]) );
  DFFPOSX1 \shift_reg_reg[143]  ( .D(shift_reg[151]), .CLK(clock), .Q(
        shift_reg[143]) );
  DFFPOSX1 \shift_reg_reg[142]  ( .D(shift_reg[150]), .CLK(clock), .Q(
        shift_reg[142]) );
  DFFPOSX1 \shift_reg_reg[141]  ( .D(shift_reg[149]), .CLK(clock), .Q(
        shift_reg[141]) );
  DFFPOSX1 \shift_reg_reg[140]  ( .D(shift_reg[148]), .CLK(clock), .Q(
        shift_reg[140]) );
  DFFPOSX1 \shift_reg_reg[139]  ( .D(shift_reg[147]), .CLK(clock), .Q(
        shift_reg[139]) );
  DFFPOSX1 \shift_reg_reg[138]  ( .D(shift_reg[146]), .CLK(clock), .Q(
        shift_reg[138]) );
  DFFPOSX1 \shift_reg_reg[137]  ( .D(shift_reg[145]), .CLK(clock), .Q(
        shift_reg[137]) );
  DFFPOSX1 \shift_reg_reg[136]  ( .D(shift_reg[144]), .CLK(clock), .Q(
        shift_reg[136]) );
  DFFPOSX1 \shift_reg_reg[135]  ( .D(shift_reg[143]), .CLK(clock), .Q(
        shift_reg[135]) );
  DFFPOSX1 \shift_reg_reg[134]  ( .D(shift_reg[142]), .CLK(clock), .Q(
        shift_reg[134]) );
  DFFPOSX1 \shift_reg_reg[133]  ( .D(shift_reg[141]), .CLK(clock), .Q(
        shift_reg[133]) );
  DFFPOSX1 \shift_reg_reg[132]  ( .D(shift_reg[140]), .CLK(clock), .Q(
        shift_reg[132]) );
  DFFPOSX1 \shift_reg_reg[131]  ( .D(shift_reg[139]), .CLK(clock), .Q(
        shift_reg[131]) );
  DFFPOSX1 \shift_reg_reg[130]  ( .D(shift_reg[138]), .CLK(clock), .Q(
        shift_reg[130]) );
  DFFPOSX1 \shift_reg_reg[129]  ( .D(shift_reg[137]), .CLK(clock), .Q(
        shift_reg[129]) );
  DFFPOSX1 \shift_reg_reg[128]  ( .D(shift_reg[136]), .CLK(clock), .Q(
        shift_reg[128]) );
  DFFPOSX1 \shift_reg_reg[127]  ( .D(shift_reg[135]), .CLK(clock), .Q(
        shift_reg[127]) );
  DFFPOSX1 \shift_reg_reg[126]  ( .D(shift_reg[134]), .CLK(clock), .Q(
        shift_reg[126]) );
  DFFPOSX1 \shift_reg_reg[125]  ( .D(shift_reg[133]), .CLK(clock), .Q(
        shift_reg[125]) );
  DFFPOSX1 \shift_reg_reg[124]  ( .D(shift_reg[132]), .CLK(clock), .Q(
        shift_reg[124]) );
  DFFPOSX1 \shift_reg_reg[123]  ( .D(shift_reg[131]), .CLK(clock), .Q(
        shift_reg[123]) );
  DFFPOSX1 \shift_reg_reg[122]  ( .D(shift_reg[130]), .CLK(clock), .Q(
        shift_reg[122]) );
  DFFPOSX1 \shift_reg_reg[121]  ( .D(shift_reg[129]), .CLK(clock), .Q(
        shift_reg[121]) );
  DFFPOSX1 \shift_reg_reg[120]  ( .D(shift_reg[128]), .CLK(clock), .Q(
        shift_reg[120]) );
  DFFPOSX1 \shift_reg_reg[119]  ( .D(shift_reg[127]), .CLK(clock), .Q(
        shift_reg[119]) );
  DFFPOSX1 \shift_reg_reg[118]  ( .D(shift_reg[126]), .CLK(clock), .Q(
        shift_reg[118]) );
  DFFPOSX1 \shift_reg_reg[117]  ( .D(shift_reg[125]), .CLK(clock), .Q(
        shift_reg[117]) );
  DFFPOSX1 \shift_reg_reg[116]  ( .D(shift_reg[124]), .CLK(clock), .Q(
        shift_reg[116]) );
  DFFPOSX1 \shift_reg_reg[115]  ( .D(shift_reg[123]), .CLK(clock), .Q(
        shift_reg[115]) );
  DFFPOSX1 \shift_reg_reg[114]  ( .D(shift_reg[122]), .CLK(clock), .Q(
        shift_reg[114]) );
  DFFPOSX1 \shift_reg_reg[113]  ( .D(shift_reg[121]), .CLK(clock), .Q(
        shift_reg[113]) );
  DFFPOSX1 \shift_reg_reg[112]  ( .D(shift_reg[120]), .CLK(clock), .Q(
        shift_reg[112]) );
  DFFPOSX1 \shift_reg_reg[111]  ( .D(shift_reg[119]), .CLK(clock), .Q(
        shift_reg[111]) );
  DFFPOSX1 \shift_reg_reg[110]  ( .D(shift_reg[118]), .CLK(clock), .Q(
        shift_reg[110]) );
  DFFPOSX1 \shift_reg_reg[109]  ( .D(shift_reg[117]), .CLK(clock), .Q(
        shift_reg[109]) );
  DFFPOSX1 \shift_reg_reg[108]  ( .D(shift_reg[116]), .CLK(clock), .Q(
        shift_reg[108]) );
  DFFPOSX1 \shift_reg_reg[107]  ( .D(shift_reg[115]), .CLK(clock), .Q(
        shift_reg[107]) );
  DFFPOSX1 \shift_reg_reg[106]  ( .D(shift_reg[114]), .CLK(clock), .Q(
        shift_reg[106]) );
  DFFPOSX1 \shift_reg_reg[105]  ( .D(shift_reg[113]), .CLK(clock), .Q(
        shift_reg[105]) );
  DFFPOSX1 \shift_reg_reg[104]  ( .D(shift_reg[112]), .CLK(clock), .Q(
        shift_reg[104]) );
  DFFPOSX1 \shift_reg_reg[103]  ( .D(shift_reg[111]), .CLK(clock), .Q(
        shift_reg[103]) );
  DFFPOSX1 \shift_reg_reg[102]  ( .D(shift_reg[110]), .CLK(clock), .Q(
        shift_reg[102]) );
  DFFPOSX1 \shift_reg_reg[101]  ( .D(shift_reg[109]), .CLK(clock), .Q(
        shift_reg[101]) );
  DFFPOSX1 \shift_reg_reg[100]  ( .D(shift_reg[108]), .CLK(clock), .Q(
        shift_reg[100]) );
  DFFPOSX1 \shift_reg_reg[99]  ( .D(shift_reg[107]), .CLK(clock), .Q(
        shift_reg[99]) );
  DFFPOSX1 \shift_reg_reg[98]  ( .D(shift_reg[106]), .CLK(clock), .Q(
        shift_reg[98]) );
  DFFPOSX1 \shift_reg_reg[97]  ( .D(shift_reg[105]), .CLK(clock), .Q(
        shift_reg[97]) );
  DFFPOSX1 \shift_reg_reg[96]  ( .D(shift_reg[104]), .CLK(clock), .Q(
        shift_reg[96]) );
  DFFPOSX1 \shift_reg_reg[95]  ( .D(shift_reg[103]), .CLK(clock), .Q(
        shift_reg[95]) );
  DFFPOSX1 \shift_reg_reg[94]  ( .D(shift_reg[102]), .CLK(clock), .Q(
        shift_reg[94]) );
  DFFPOSX1 \shift_reg_reg[93]  ( .D(shift_reg[101]), .CLK(clock), .Q(
        shift_reg[93]) );
  DFFPOSX1 \shift_reg_reg[92]  ( .D(shift_reg[100]), .CLK(clock), .Q(
        shift_reg[92]) );
  DFFPOSX1 \shift_reg_reg[91]  ( .D(shift_reg[99]), .CLK(clock), .Q(
        shift_reg[91]) );
  DFFPOSX1 \shift_reg_reg[90]  ( .D(shift_reg[98]), .CLK(clock), .Q(
        shift_reg[90]) );
  DFFPOSX1 \shift_reg_reg[89]  ( .D(shift_reg[97]), .CLK(clock), .Q(
        shift_reg[89]) );
  DFFPOSX1 \shift_reg_reg[88]  ( .D(shift_reg[96]), .CLK(clock), .Q(
        shift_reg[88]) );
  DFFPOSX1 \shift_reg_reg[87]  ( .D(shift_reg[95]), .CLK(clock), .Q(
        shift_reg[87]) );
  DFFPOSX1 \shift_reg_reg[86]  ( .D(shift_reg[94]), .CLK(clock), .Q(
        shift_reg[86]) );
  DFFPOSX1 \shift_reg_reg[85]  ( .D(shift_reg[93]), .CLK(clock), .Q(
        shift_reg[85]) );
  DFFPOSX1 \shift_reg_reg[84]  ( .D(shift_reg[92]), .CLK(clock), .Q(
        shift_reg[84]) );
  DFFPOSX1 \shift_reg_reg[83]  ( .D(shift_reg[91]), .CLK(clock), .Q(
        shift_reg[83]) );
  DFFPOSX1 \shift_reg_reg[82]  ( .D(shift_reg[90]), .CLK(clock), .Q(
        shift_reg[82]) );
  DFFPOSX1 \shift_reg_reg[81]  ( .D(shift_reg[89]), .CLK(clock), .Q(
        shift_reg[81]) );
  DFFPOSX1 \shift_reg_reg[80]  ( .D(shift_reg[88]), .CLK(clock), .Q(
        shift_reg[80]) );
  DFFPOSX1 \shift_reg_reg[79]  ( .D(shift_reg[87]), .CLK(clock), .Q(
        shift_reg[79]) );
  DFFPOSX1 \shift_reg_reg[78]  ( .D(shift_reg[86]), .CLK(clock), .Q(
        shift_reg[78]) );
  DFFPOSX1 \shift_reg_reg[77]  ( .D(shift_reg[85]), .CLK(clock), .Q(
        shift_reg[77]) );
  DFFPOSX1 \shift_reg_reg[76]  ( .D(shift_reg[84]), .CLK(clock), .Q(
        shift_reg[76]) );
  DFFPOSX1 \shift_reg_reg[75]  ( .D(shift_reg[83]), .CLK(clock), .Q(
        shift_reg[75]) );
  DFFPOSX1 \shift_reg_reg[74]  ( .D(shift_reg[82]), .CLK(clock), .Q(
        shift_reg[74]) );
  DFFPOSX1 \shift_reg_reg[73]  ( .D(shift_reg[81]), .CLK(clock), .Q(
        shift_reg[73]) );
  DFFPOSX1 \shift_reg_reg[72]  ( .D(shift_reg[80]), .CLK(clock), .Q(
        shift_reg[72]) );
  DFFPOSX1 \shift_reg_reg[71]  ( .D(shift_reg[79]), .CLK(clock), .Q(
        shift_reg[71]) );
  DFFPOSX1 \shift_reg_reg[70]  ( .D(shift_reg[78]), .CLK(clock), .Q(
        shift_reg[70]) );
  DFFPOSX1 \shift_reg_reg[69]  ( .D(shift_reg[77]), .CLK(clock), .Q(
        shift_reg[69]) );
  DFFPOSX1 \shift_reg_reg[68]  ( .D(shift_reg[76]), .CLK(clock), .Q(
        shift_reg[68]) );
  DFFPOSX1 \shift_reg_reg[67]  ( .D(shift_reg[75]), .CLK(clock), .Q(
        shift_reg[67]) );
  DFFPOSX1 \shift_reg_reg[66]  ( .D(shift_reg[74]), .CLK(clock), .Q(
        shift_reg[66]) );
  DFFPOSX1 \shift_reg_reg[65]  ( .D(shift_reg[73]), .CLK(clock), .Q(
        shift_reg[65]) );
  DFFPOSX1 \shift_reg_reg[64]  ( .D(shift_reg[72]), .CLK(clock), .Q(
        shift_reg[64]) );
  DFFPOSX1 \shift_reg_reg[63]  ( .D(shift_reg[71]), .CLK(clock), .Q(
        shift_reg[63]) );
  DFFPOSX1 \shift_reg_reg[62]  ( .D(shift_reg[70]), .CLK(clock), .Q(
        shift_reg[62]) );
  DFFPOSX1 \shift_reg_reg[61]  ( .D(shift_reg[69]), .CLK(clock), .Q(
        shift_reg[61]) );
  DFFPOSX1 \shift_reg_reg[60]  ( .D(shift_reg[68]), .CLK(clock), .Q(
        shift_reg[60]) );
  DFFPOSX1 \shift_reg_reg[59]  ( .D(shift_reg[67]), .CLK(clock), .Q(
        shift_reg[59]) );
  DFFPOSX1 \shift_reg_reg[58]  ( .D(shift_reg[66]), .CLK(clock), .Q(
        shift_reg[58]) );
  DFFPOSX1 \shift_reg_reg[57]  ( .D(shift_reg[65]), .CLK(clock), .Q(
        shift_reg[57]) );
  DFFPOSX1 \shift_reg_reg[56]  ( .D(shift_reg[64]), .CLK(clock), .Q(
        shift_reg[56]) );
  DFFPOSX1 \shift_reg_reg[55]  ( .D(shift_reg[63]), .CLK(clock), .Q(
        shift_reg[55]) );
  DFFPOSX1 \shift_reg_reg[54]  ( .D(shift_reg[62]), .CLK(clock), .Q(
        shift_reg[54]) );
  DFFPOSX1 \shift_reg_reg[53]  ( .D(shift_reg[61]), .CLK(clock), .Q(
        shift_reg[53]) );
  DFFPOSX1 \shift_reg_reg[52]  ( .D(shift_reg[60]), .CLK(clock), .Q(
        shift_reg[52]) );
  DFFPOSX1 \shift_reg_reg[51]  ( .D(shift_reg[59]), .CLK(clock), .Q(
        shift_reg[51]) );
  DFFPOSX1 \shift_reg_reg[50]  ( .D(shift_reg[58]), .CLK(clock), .Q(
        shift_reg[50]) );
  DFFPOSX1 \shift_reg_reg[49]  ( .D(shift_reg[57]), .CLK(clock), .Q(
        shift_reg[49]) );
  DFFPOSX1 \shift_reg_reg[48]  ( .D(shift_reg[56]), .CLK(clock), .Q(
        shift_reg[48]) );
  DFFPOSX1 \shift_reg_reg[47]  ( .D(shift_reg[55]), .CLK(clock), .Q(
        shift_reg[47]) );
  DFFPOSX1 \shift_reg_reg[46]  ( .D(shift_reg[54]), .CLK(clock), .Q(
        shift_reg[46]) );
  DFFPOSX1 \shift_reg_reg[45]  ( .D(shift_reg[53]), .CLK(clock), .Q(
        shift_reg[45]) );
  DFFPOSX1 \shift_reg_reg[44]  ( .D(shift_reg[52]), .CLK(clock), .Q(
        shift_reg[44]) );
  DFFPOSX1 \shift_reg_reg[43]  ( .D(shift_reg[51]), .CLK(clock), .Q(
        shift_reg[43]) );
  DFFPOSX1 \shift_reg_reg[42]  ( .D(shift_reg[50]), .CLK(clock), .Q(
        shift_reg[42]) );
  DFFPOSX1 \shift_reg_reg[41]  ( .D(shift_reg[49]), .CLK(clock), .Q(
        shift_reg[41]) );
  DFFPOSX1 \shift_reg_reg[40]  ( .D(shift_reg[48]), .CLK(clock), .Q(
        shift_reg[40]) );
  DFFPOSX1 \shift_reg_reg[39]  ( .D(shift_reg[47]), .CLK(clock), .Q(
        shift_reg[39]) );
  DFFPOSX1 \shift_reg_reg[38]  ( .D(shift_reg[46]), .CLK(clock), .Q(
        shift_reg[38]) );
  DFFPOSX1 \shift_reg_reg[37]  ( .D(shift_reg[45]), .CLK(clock), .Q(
        shift_reg[37]) );
  DFFPOSX1 \shift_reg_reg[36]  ( .D(shift_reg[44]), .CLK(clock), .Q(
        shift_reg[36]) );
  DFFPOSX1 \shift_reg_reg[35]  ( .D(shift_reg[43]), .CLK(clock), .Q(
        shift_reg[35]) );
  DFFPOSX1 \shift_reg_reg[34]  ( .D(shift_reg[42]), .CLK(clock), .Q(
        shift_reg[34]) );
  DFFPOSX1 \shift_reg_reg[33]  ( .D(shift_reg[41]), .CLK(clock), .Q(
        shift_reg[33]) );
  DFFPOSX1 \shift_reg_reg[32]  ( .D(shift_reg[40]), .CLK(clock), .Q(
        shift_reg[32]) );
  DFFPOSX1 \shift_reg_reg[31]  ( .D(shift_reg[39]), .CLK(clock), .Q(
        shift_reg[31]) );
  DFFPOSX1 \shift_reg_reg[30]  ( .D(shift_reg[38]), .CLK(clock), .Q(
        shift_reg[30]) );
  DFFPOSX1 \shift_reg_reg[29]  ( .D(shift_reg[37]), .CLK(clock), .Q(
        shift_reg[29]) );
  DFFPOSX1 \shift_reg_reg[28]  ( .D(shift_reg[36]), .CLK(clock), .Q(
        shift_reg[28]) );
  DFFPOSX1 \shift_reg_reg[27]  ( .D(shift_reg[35]), .CLK(clock), .Q(
        shift_reg[27]) );
  DFFPOSX1 \shift_reg_reg[26]  ( .D(shift_reg[34]), .CLK(clock), .Q(
        shift_reg[26]) );
  DFFPOSX1 \shift_reg_reg[25]  ( .D(shift_reg[33]), .CLK(clock), .Q(
        shift_reg[25]) );
  DFFPOSX1 \shift_reg_reg[24]  ( .D(shift_reg[32]), .CLK(clock), .Q(
        shift_reg[24]) );
  DFFPOSX1 \shift_reg_reg[23]  ( .D(shift_reg[31]), .CLK(clock), .Q(
        shift_reg[23]) );
  DFFPOSX1 \shift_reg_reg[22]  ( .D(shift_reg[30]), .CLK(clock), .Q(
        shift_reg[22]) );
  DFFPOSX1 \shift_reg_reg[21]  ( .D(shift_reg[29]), .CLK(clock), .Q(
        shift_reg[21]) );
  DFFPOSX1 \shift_reg_reg[20]  ( .D(shift_reg[28]), .CLK(clock), .Q(
        shift_reg[20]) );
  DFFPOSX1 \shift_reg_reg[19]  ( .D(shift_reg[27]), .CLK(clock), .Q(
        shift_reg[19]) );
  DFFPOSX1 \shift_reg_reg[18]  ( .D(shift_reg[26]), .CLK(clock), .Q(
        shift_reg[18]) );
  DFFPOSX1 \shift_reg_reg[17]  ( .D(shift_reg[25]), .CLK(clock), .Q(
        shift_reg[17]) );
  DFFPOSX1 \shift_reg_reg[16]  ( .D(shift_reg[24]), .CLK(clock), .Q(
        shift_reg[16]) );
  DFFPOSX1 \shift_reg_reg[15]  ( .D(shift_reg[23]), .CLK(clock), .Q(
        shift_reg[15]) );
  DFFPOSX1 \shift_reg_reg[14]  ( .D(shift_reg[22]), .CLK(clock), .Q(
        shift_reg[14]) );
  DFFPOSX1 \shift_reg_reg[13]  ( .D(shift_reg[21]), .CLK(clock), .Q(
        shift_reg[13]) );
  DFFPOSX1 \shift_reg_reg[12]  ( .D(shift_reg[20]), .CLK(clock), .Q(
        shift_reg[12]) );
  DFFPOSX1 \shift_reg_reg[11]  ( .D(shift_reg[19]), .CLK(clock), .Q(
        shift_reg[11]) );
  DFFPOSX1 \shift_reg_reg[10]  ( .D(shift_reg[18]), .CLK(clock), .Q(
        shift_reg[10]) );
  DFFPOSX1 \shift_reg_reg[9]  ( .D(shift_reg[17]), .CLK(clock), .Q(
        shift_reg[9]) );
  DFFPOSX1 \shift_reg_reg[8]  ( .D(shift_reg[16]), .CLK(clock), .Q(
        shift_reg[8]) );
  DFFPOSX1 \shift_reg_reg[7]  ( .D(shift_reg[15]), .CLK(clock), .Q(x_N_out[7])
         );
  DFFPOSX1 \shift_reg_reg[6]  ( .D(shift_reg[14]), .CLK(clock), .Q(x_N_out[6])
         );
  DFFPOSX1 \shift_reg_reg[5]  ( .D(shift_reg[13]), .CLK(clock), .Q(x_N_out[5])
         );
  DFFPOSX1 \shift_reg_reg[4]  ( .D(shift_reg[12]), .CLK(clock), .Q(x_N_out[4])
         );
  DFFPOSX1 \shift_reg_reg[3]  ( .D(shift_reg[11]), .CLK(clock), .Q(x_N_out[3])
         );
  DFFPOSX1 \shift_reg_reg[2]  ( .D(shift_reg[10]), .CLK(clock), .Q(x_N_out[2])
         );
  DFFPOSX1 \shift_reg_reg[1]  ( .D(shift_reg[9]), .CLK(clock), .Q(x_N_out[1])
         );
  DFFPOSX1 \shift_reg_reg[0]  ( .D(shift_reg[8]), .CLK(clock), .Q(x_N_out[0])
         );
endmodule


module mul8_sv_9 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_2/A[9] , \intadd_2/A[7] , \intadd_2/A[6] , \intadd_2/A[5] ,
         \intadd_2/A[4] , \intadd_2/A[3] , \intadd_2/A[2] , \intadd_2/A[1] ,
         \intadd_2/A[0] , \intadd_2/B[9] , \intadd_2/B[8] , \intadd_2/B[7] ,
         \intadd_2/B[6] , \intadd_2/B[5] , \intadd_2/B[4] , \intadd_2/B[3] ,
         \intadd_2/B[2] , \intadd_2/B[1] , \intadd_2/B[0] , \intadd_2/CI ,
         \intadd_2/SUM[0] , \intadd_2/n10 , \intadd_2/n9 , \intadd_2/n8 ,
         \intadd_2/n7 , \intadd_2/n6 , \intadd_2/n5 , \intadd_2/n4 ,
         \intadd_2/n3 , \intadd_2/n2 , \intadd_2/n1 , n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227;

  FAX1 \intadd_2/U11  ( .A(n65), .B(n44), .C(n23), .YC(\intadd_2/n10 ), .YS(
        \intadd_2/SUM[0] ) );
  FAX1 \intadd_2/U10  ( .A(\intadd_2/B[1] ), .B(\intadd_2/A[1] ), .C(
        \intadd_2/n10 ), .YC(\intadd_2/n9 ), .YS(d_out[6]) );
  FAX1 \intadd_2/U9  ( .A(\intadd_2/B[2] ), .B(\intadd_2/A[2] ), .C(
        \intadd_2/n9 ), .YC(\intadd_2/n8 ), .YS(d_out[7]) );
  FAX1 \intadd_2/U8  ( .A(\intadd_2/B[3] ), .B(\intadd_2/A[3] ), .C(
        \intadd_2/n8 ), .YC(\intadd_2/n7 ), .YS(d_out[8]) );
  FAX1 \intadd_2/U7  ( .A(\intadd_2/B[4] ), .B(\intadd_2/A[4] ), .C(
        \intadd_2/n7 ), .YC(\intadd_2/n6 ), .YS(d_out[9]) );
  FAX1 \intadd_2/U6  ( .A(\intadd_2/B[5] ), .B(\intadd_2/A[5] ), .C(
        \intadd_2/n6 ), .YC(\intadd_2/n5 ), .YS(d_out[10]) );
  FAX1 \intadd_2/U5  ( .A(\intadd_2/B[6] ), .B(\intadd_2/A[6] ), .C(
        \intadd_2/n5 ), .YC(\intadd_2/n4 ), .YS(d_out[11]) );
  FAX1 \intadd_2/U4  ( .A(\intadd_2/B[7] ), .B(\intadd_2/A[7] ), .C(
        \intadd_2/n4 ), .YC(\intadd_2/n3 ), .YS(d_out[12]) );
  FAX1 \intadd_2/U3  ( .A(\intadd_2/B[8] ), .B(n80), .C(\intadd_2/n3 ), .YC(
        \intadd_2/n2 ), .YS(d_out[13]) );
  FAX1 \intadd_2/U2  ( .A(n81), .B(n78), .C(\intadd_2/n2 ), .YC(\intadd_2/n1 ), 
        .YS(d_out[14]) );
  OR2X1 U1 ( .A(d1_in[3]), .B(n85), .Y(n205) );
  AND2X1 U2 ( .A(n84), .B(n38), .Y(n187) );
  OR2X1 U3 ( .A(n69), .B(n39), .Y(n181) );
  AND2X1 U4 ( .A(n150), .B(n37), .Y(n156) );
  AND2X1 U5 ( .A(n72), .B(n36), .Y(n133) );
  AND2X1 U6 ( .A(n83), .B(n73), .Y(n217) );
  AND2X1 U7 ( .A(n25), .B(n92), .Y(n139) );
  BUFX2 U8 ( .A(n198), .Y(n1) );
  BUFX2 U9 ( .A(n213), .Y(n2) );
  BUFX2 U10 ( .A(n125), .Y(n3) );
  BUFX2 U11 ( .A(n168), .Y(n4) );
  BUFX2 U12 ( .A(n174), .Y(n5) );
  BUFX2 U13 ( .A(n197), .Y(n6) );
  BUFX2 U14 ( .A(n212), .Y(n7) );
  BUFX2 U15 ( .A(n140), .Y(n8) );
  BUFX2 U16 ( .A(n178), .Y(n9) );
  BUFX2 U17 ( .A(n183), .Y(n10) );
  INVX1 U18 ( .A(n124), .Y(n11) );
  AND2X1 U19 ( .A(d1_in[1]), .B(n169), .Y(n124) );
  INVX1 U20 ( .A(n126), .Y(n12) );
  OR2X1 U21 ( .A(n170), .B(d2_in[6]), .Y(n126) );
  INVX1 U22 ( .A(n167), .Y(n13) );
  AND2X1 U23 ( .A(d1_in[1]), .B(n208), .Y(n167) );
  AND2X1 U24 ( .A(d1_in[1]), .B(n195), .Y(n196) );
  INVX1 U25 ( .A(n196), .Y(n14) );
  INVX1 U26 ( .A(n211), .Y(n15) );
  AND2X1 U27 ( .A(d1_in[1]), .B(n209), .Y(n211) );
  BUFX2 U28 ( .A(n204), .Y(n16) );
  INVX1 U29 ( .A(n147), .Y(n17) );
  AND2X1 U30 ( .A(d2_in[0]), .B(n139), .Y(n147) );
  INVX1 U31 ( .A(n186), .Y(n18) );
  AND2X1 U32 ( .A(d2_in[0]), .B(n185), .Y(n186) );
  INVX1 U33 ( .A(n92), .Y(n19) );
  OR2X1 U34 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n92) );
  BUFX2 U35 ( .A(n106), .Y(n20) );
  BUFX2 U36 ( .A(n130), .Y(n21) );
  BUFX2 U37 ( .A(n151), .Y(n22) );
  BUFX2 U38 ( .A(\intadd_2/CI ), .Y(n23) );
  AND2X1 U39 ( .A(n217), .B(n74), .Y(n224) );
  INVX1 U40 ( .A(n224), .Y(n24) );
  INVX1 U41 ( .A(n93), .Y(n25) );
  AND2X1 U42 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n93) );
  BUFX2 U43 ( .A(n121), .Y(n26) );
  INVX1 U44 ( .A(n28), .Y(n27) );
  BUFX2 U45 ( .A(n146), .Y(n28) );
  INVX1 U46 ( .A(n30), .Y(n29) );
  BUFX2 U47 ( .A(n179), .Y(n30) );
  INVX1 U48 ( .A(n32), .Y(n31) );
  BUFX2 U49 ( .A(n184), .Y(n32) );
  INVX1 U50 ( .A(n137), .Y(n33) );
  AND2X1 U51 ( .A(n96), .B(n95), .Y(n137) );
  INVX1 U52 ( .A(n35), .Y(n34) );
  BUFX2 U53 ( .A(n142), .Y(n35) );
  BUFX2 U54 ( .A(n135), .Y(n36) );
  BUFX2 U55 ( .A(n149), .Y(n37) );
  BUFX2 U56 ( .A(n188), .Y(n38) );
  BUFX2 U57 ( .A(n182), .Y(n39) );
  BUFX2 U58 ( .A(n109), .Y(n40) );
  BUFX2 U59 ( .A(n118), .Y(n41) );
  BUFX2 U60 ( .A(n152), .Y(n42) );
  BUFX2 U61 ( .A(n175), .Y(n43) );
  BUFX2 U62 ( .A(\intadd_2/A[0] ), .Y(n44) );
  OR2X1 U63 ( .A(n89), .B(n67), .Y(n131) );
  INVX1 U64 ( .A(n131), .Y(n45) );
  BUFX2 U65 ( .A(n200), .Y(n46) );
  BUFX2 U66 ( .A(n94), .Y(n47) );
  BUFX2 U67 ( .A(n105), .Y(n48) );
  BUFX2 U68 ( .A(n101), .Y(n49) );
  BUFX2 U69 ( .A(n104), .Y(n50) );
  BUFX2 U70 ( .A(n113), .Y(n51) );
  BUFX2 U71 ( .A(n114), .Y(n52) );
  BUFX2 U72 ( .A(n122), .Y(n53) );
  BUFX2 U73 ( .A(n127), .Y(n54) );
  BUFX2 U74 ( .A(n141), .Y(n55) );
  BUFX2 U75 ( .A(n138), .Y(n56) );
  BUFX2 U76 ( .A(n166), .Y(n57) );
  BUFX2 U77 ( .A(n180), .Y(n58) );
  BUFX2 U78 ( .A(n99), .Y(n59) );
  BUFX2 U79 ( .A(n110), .Y(n60) );
  BUFX2 U80 ( .A(n119), .Y(n61) );
  BUFX2 U81 ( .A(n132), .Y(n62) );
  BUFX2 U82 ( .A(n153), .Y(n63) );
  BUFX2 U83 ( .A(n164), .Y(n64) );
  BUFX2 U84 ( .A(\intadd_2/B[0] ), .Y(n65) );
  BUFX2 U85 ( .A(n191), .Y(n66) );
  BUFX2 U86 ( .A(n155), .Y(n67) );
  BUFX2 U87 ( .A(n100), .Y(n68) );
  INVX1 U88 ( .A(n187), .Y(n69) );
  INVX1 U89 ( .A(n171), .Y(n70) );
  AND2X1 U90 ( .A(n170), .B(d1_in[0]), .Y(n171) );
  BUFX2 U91 ( .A(n112), .Y(n71) );
  BUFX2 U92 ( .A(n134), .Y(n72) );
  BUFX2 U93 ( .A(n206), .Y(n73) );
  BUFX2 U94 ( .A(n218), .Y(n74) );
  INVX1 U95 ( .A(n76), .Y(n75) );
  BUFX2 U96 ( .A(n116), .Y(n76) );
  INVX1 U97 ( .A(n133), .Y(n77) );
  BUFX2 U98 ( .A(\intadd_2/A[9] ), .Y(n78) );
  BUFX2 U99 ( .A(n98), .Y(n79) );
  INVX1 U100 ( .A(n81), .Y(n80) );
  BUFX2 U101 ( .A(\intadd_2/B[9] ), .Y(n81) );
  INVX1 U102 ( .A(n83), .Y(n82) );
  BUFX2 U103 ( .A(n207), .Y(n83) );
  BUFX2 U104 ( .A(n97), .Y(n84) );
  OR2X1 U105 ( .A(d1_in[2]), .B(d1_in[1]), .Y(n102) );
  INVX1 U106 ( .A(n102), .Y(n85) );
  AND2X1 U107 ( .A(n203), .B(d2_in[0]), .Y(n192) );
  INVX1 U108 ( .A(n192), .Y(n86) );
  INVX1 U109 ( .A(n181), .Y(n87) );
  INVX1 U110 ( .A(n217), .Y(n88) );
  INVX1 U111 ( .A(n156), .Y(n89) );
  INVX1 U112 ( .A(n139), .Y(n90) );
  OR2X1 U113 ( .A(d1_in[7]), .B(n19), .Y(n91) );
  INVX1 U114 ( .A(n91), .Y(n148) );
  AND2X1 U115 ( .A(d1_in[7]), .B(n25), .Y(n150) );
  INVX1 U116 ( .A(d2_in[7]), .Y(n120) );
  AOI22X1 U117 ( .A(d2_in[7]), .B(n148), .C(n150), .D(n120), .Y(
        \intadd_2/A[9] ) );
  INVX1 U118 ( .A(d2_in[6]), .Y(n123) );
  AOI22X1 U119 ( .A(d2_in[6]), .B(n148), .C(n150), .D(n123), .Y(n94) );
  AOI22X1 U120 ( .A(n139), .B(n78), .C(n47), .D(n90), .Y(\intadd_2/B[9] ) );
  INVX1 U121 ( .A(d2_in[5]), .Y(n169) );
  AOI22X1 U122 ( .A(d2_in[5]), .B(n148), .C(n150), .D(n169), .Y(n105) );
  AOI22X1 U123 ( .A(n139), .B(n47), .C(n48), .D(n90), .Y(n99) );
  INVX1 U124 ( .A(d1_in[5]), .Y(n96) );
  OR2X1 U125 ( .A(d1_in[3]), .B(d1_in[4]), .Y(n95) );
  AOI21X1 U126 ( .A(d1_in[3]), .B(d1_in[4]), .C(n96), .Y(n97) );
  INVX1 U127 ( .A(n84), .Y(n136) );
  AOI22X1 U128 ( .A(d2_in[7]), .B(n137), .C(n84), .D(n120), .Y(n98) );
  INVX1 U129 ( .A(d1_in[3]), .Y(n103) );
  MUX2X1 U130 ( .B(d1_in[3]), .A(n103), .S(d1_in[4]), .Y(n177) );
  INVX1 U131 ( .A(n177), .Y(n185) );
  AOI22X1 U132 ( .A(d2_in[6]), .B(n137), .C(n84), .D(n123), .Y(n101) );
  AOI22X1 U133 ( .A(n185), .B(n79), .C(n49), .D(n177), .Y(n100) );
  FAX1 U134 ( .A(n59), .B(n79), .C(n68), .YC(\intadd_2/B[8] ), .YS(
        \intadd_2/A[7] ) );
  INVX1 U135 ( .A(n68), .Y(n108) );
  INVX1 U136 ( .A(d2_in[4]), .Y(n172) );
  AOI22X1 U137 ( .A(d2_in[4]), .B(n148), .C(n150), .D(n172), .Y(n104) );
  INVX1 U138 ( .A(d2_in[3]), .Y(n208) );
  AOI22X1 U139 ( .A(d2_in[3]), .B(n148), .C(n150), .D(n208), .Y(n113) );
  AOI22X1 U140 ( .A(n139), .B(n50), .C(n51), .D(n90), .Y(n110) );
  AOI22X1 U141 ( .A(d2_in[5]), .B(n137), .C(n84), .D(n169), .Y(n114) );
  AOI22X1 U142 ( .A(n185), .B(n49), .C(n52), .D(n177), .Y(n109) );
  INVX1 U143 ( .A(n205), .Y(n193) );
  AOI21X1 U144 ( .A(d1_in[2]), .B(d1_in[1]), .C(n103), .Y(n207) );
  AOI22X1 U145 ( .A(d2_in[7]), .B(n193), .C(n83), .D(n120), .Y(n112) );
  AOI22X1 U146 ( .A(n139), .B(n48), .C(n50), .D(n90), .Y(n106) );
  FAX1 U147 ( .A(n108), .B(n107), .C(n20), .YC(\intadd_2/B[7] ), .YS(
        \intadd_2/A[6] ) );
  FAX1 U148 ( .A(n60), .B(n40), .C(n71), .YC(n107), .YS(n117) );
  INVX1 U149 ( .A(d1_in[1]), .Y(n170) );
  MUX2X1 U150 ( .B(d1_in[1]), .A(n170), .S(d1_in[2]), .Y(n202) );
  INVX1 U151 ( .A(n202), .Y(n203) );
  AOI22X1 U152 ( .A(d2_in[6]), .B(n205), .C(n82), .D(n123), .Y(n121) );
  INVX1 U153 ( .A(n26), .Y(n111) );
  AOI22X1 U154 ( .A(n203), .B(n71), .C(n111), .D(n202), .Y(n116) );
  INVX1 U155 ( .A(d2_in[2]), .Y(n209) );
  AOI22X1 U156 ( .A(d2_in[2]), .B(n148), .C(n150), .D(n209), .Y(n122) );
  AOI22X1 U157 ( .A(n139), .B(n51), .C(n53), .D(n90), .Y(n119) );
  AOI22X1 U158 ( .A(d2_in[4]), .B(n137), .C(n84), .D(n172), .Y(n127) );
  AOI22X1 U159 ( .A(n185), .B(n52), .C(n54), .D(n177), .Y(n118) );
  FAX1 U160 ( .A(n117), .B(n76), .C(n115), .YC(\intadd_2/B[6] ), .YS(
        \intadd_2/A[5] ) );
  FAX1 U161 ( .A(n61), .B(n41), .C(n75), .YC(n115), .YS(n129) );
  AOI22X1 U162 ( .A(d2_in[7]), .B(n70), .C(n170), .D(n120), .Y(n134) );
  AOI22X1 U163 ( .A(d2_in[5]), .B(n205), .C(n82), .D(n169), .Y(n142) );
  AOI22X1 U164 ( .A(n203), .B(n26), .C(n35), .D(n202), .Y(n135) );
  INVX1 U165 ( .A(d2_in[1]), .Y(n195) );
  AOI22X1 U166 ( .A(d2_in[1]), .B(n148), .C(n150), .D(n195), .Y(n141) );
  AOI22X1 U167 ( .A(n139), .B(n53), .C(n55), .D(n90), .Y(n132) );
  AOI22X1 U168 ( .A(d2_in[6]), .B(n171), .C(d1_in[1]), .D(n123), .Y(n125) );
  INVX1 U169 ( .A(d1_in[0]), .Y(n210) );
  AOI22X1 U170 ( .A(d1_in[0]), .B(n3), .C(n11), .D(n210), .Y(n149) );
  AOI22X1 U171 ( .A(d1_in[0]), .B(n72), .C(n12), .D(n210), .Y(n155) );
  AOI22X1 U172 ( .A(d2_in[3]), .B(n137), .C(n84), .D(n208), .Y(n138) );
  AOI22X1 U173 ( .A(n185), .B(n54), .C(n56), .D(n177), .Y(n130) );
  FAX1 U174 ( .A(n129), .B(n77), .C(n128), .YC(\intadd_2/B[5] ), .YS(
        \intadd_2/A[4] ) );
  FAX1 U175 ( .A(n62), .B(n45), .C(n21), .YC(n128), .YS(n145) );
  OAI21X1 U176 ( .A(n36), .B(n72), .C(n77), .Y(n144) );
  AOI22X1 U177 ( .A(d2_in[2]), .B(n33), .C(n136), .D(n209), .Y(n146) );
  AOI22X1 U178 ( .A(n185), .B(n56), .C(n27), .D(n177), .Y(n153) );
  INVX1 U179 ( .A(d2_in[0]), .Y(n194) );
  AOI22X1 U180 ( .A(d2_in[0]), .B(n148), .C(n150), .D(n194), .Y(n140) );
  AOI22X1 U181 ( .A(n139), .B(n55), .C(n8), .D(n90), .Y(n152) );
  AOI22X1 U182 ( .A(d2_in[4]), .B(n193), .C(n83), .D(n172), .Y(n166) );
  AOI22X1 U183 ( .A(n203), .B(n34), .C(n57), .D(n202), .Y(n151) );
  FAX1 U184 ( .A(n145), .B(n144), .C(n143), .YC(\intadd_2/B[4] ), .YS(
        \intadd_2/A[3] ) );
  AOI22X1 U185 ( .A(d2_in[1]), .B(n137), .C(n84), .D(n195), .Y(n179) );
  AOI22X1 U186 ( .A(n185), .B(n28), .C(n29), .D(n177), .Y(n164) );
  MUX2X1 U187 ( .B(n148), .A(n150), .S(n17), .Y(n163) );
  OAI21X1 U188 ( .A(n150), .B(n37), .C(n89), .Y(n162) );
  FAX1 U189 ( .A(n63), .B(n42), .C(n22), .YC(n143), .YS(n154) );
  INVX1 U190 ( .A(n154), .Y(n159) );
  MUX2X1 U191 ( .B(n89), .A(n156), .S(n67), .Y(n158) );
  INVX1 U192 ( .A(n157), .Y(\intadd_2/B[3] ) );
  FAX1 U193 ( .A(n160), .B(n159), .C(n158), .YC(n157), .YS(n161) );
  INVX1 U194 ( .A(n161), .Y(\intadd_2/A[2] ) );
  FAX1 U195 ( .A(n64), .B(n163), .C(n162), .YC(n160), .YS(n165) );
  INVX1 U196 ( .A(n165), .Y(n176) );
  AOI22X1 U197 ( .A(d2_in[3]), .B(n193), .C(n83), .D(n208), .Y(n180) );
  AOI22X1 U198 ( .A(n203), .B(n57), .C(n58), .D(n202), .Y(n175) );
  AOI22X1 U199 ( .A(d2_in[4]), .B(n171), .C(d1_in[1]), .D(n172), .Y(n168) );
  AOI22X1 U200 ( .A(d1_in[0]), .B(n4), .C(n13), .D(n210), .Y(n188) );
  AOI22X1 U201 ( .A(d2_in[5]), .B(n70), .C(n170), .D(n169), .Y(n174) );
  AND2X1 U202 ( .A(n172), .B(d1_in[1]), .Y(n173) );
  AOI22X1 U203 ( .A(d1_in[0]), .B(n5), .C(n173), .D(n210), .Y(n182) );
  FAX1 U204 ( .A(n176), .B(n43), .C(n87), .YC(\intadd_2/B[2] ), .YS(
        \intadd_2/A[1] ) );
  AOI22X1 U205 ( .A(d2_in[0]), .B(n137), .C(n84), .D(n194), .Y(n178) );
  AOI22X1 U206 ( .A(n185), .B(n30), .C(n9), .D(n177), .Y(\intadd_2/A[0] ) );
  AOI22X1 U207 ( .A(d2_in[2]), .B(n205), .C(n82), .D(n209), .Y(n184) );
  AOI22X1 U208 ( .A(n203), .B(n58), .C(n31), .D(n202), .Y(\intadd_2/B[0] ) );
  AOI21X1 U209 ( .A(n69), .B(n39), .C(n87), .Y(\intadd_2/CI ) );
  INVX1 U210 ( .A(\intadd_2/SUM[0] ), .Y(n222) );
  AOI22X1 U211 ( .A(d2_in[1]), .B(n205), .C(n82), .D(n195), .Y(n183) );
  AOI22X1 U212 ( .A(n203), .B(n32), .C(n10), .D(n202), .Y(n191) );
  MUX2X1 U213 ( .B(n137), .A(n84), .S(n18), .Y(n190) );
  OAI21X1 U214 ( .A(n84), .B(n38), .C(n69), .Y(n189) );
  FAX1 U215 ( .A(n66), .B(n190), .C(n189), .YC(n221), .YS(n226) );
  MUX2X1 U216 ( .B(n193), .A(n83), .S(n86), .Y(n201) );
  NAND3X1 U217 ( .A(d1_in[1]), .B(n194), .C(n195), .Y(n200) );
  AOI22X1 U218 ( .A(d2_in[2]), .B(n171), .C(d1_in[1]), .D(n209), .Y(n197) );
  AOI22X1 U219 ( .A(d1_in[0]), .B(n6), .C(n14), .D(n210), .Y(n206) );
  AOI22X1 U220 ( .A(n201), .B(n46), .C(n83), .D(n73), .Y(n198) );
  OAI21X1 U221 ( .A(n83), .B(n73), .C(n1), .Y(n199) );
  OAI21X1 U222 ( .A(n201), .B(n46), .C(n199), .Y(n216) );
  AOI22X1 U223 ( .A(n203), .B(d2_in[1]), .C(d2_in[0]), .D(n202), .Y(n204) );
  MUX2X1 U224 ( .B(n205), .A(n82), .S(n16), .Y(n215) );
  AOI22X1 U225 ( .A(d2_in[3]), .B(n171), .C(d1_in[1]), .D(n208), .Y(n212) );
  AOI22X1 U226 ( .A(d1_in[0]), .B(n7), .C(n15), .D(n210), .Y(n218) );
  AOI22X1 U227 ( .A(n216), .B(n215), .C(n88), .D(n74), .Y(n213) );
  OAI21X1 U228 ( .A(n88), .B(n74), .C(n2), .Y(n214) );
  OAI21X1 U229 ( .A(n216), .B(n215), .C(n214), .Y(n225) );
  INVX1 U230 ( .A(n219), .Y(\intadd_2/B[1] ) );
  FAX1 U231 ( .A(n222), .B(n221), .C(n220), .YC(n219), .YS(n223) );
  INVX1 U232 ( .A(n223), .Y(d_out[5]) );
  FAX1 U233 ( .A(n226), .B(n225), .C(n24), .YC(n220), .YS(n227) );
  INVX1 U234 ( .A(n227), .Y(d_out[4]) );
  INVX1 U235 ( .A(\intadd_2/n1 ), .Y(d_out[15]) );
endmodule


module u_scaling_sv_4 ( d_in, d_out, clock );
  input [15:0] d_in;
  output [15:0] d_out;
  input clock;


  DFFPOSX1 \d_out_reg_reg[11]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[14]) );
  DFFPOSX1 \d_out_reg_reg[10]  ( .D(d_in[14]), .CLK(clock), .Q(d_out[10]) );
  DFFPOSX1 \d_out_reg_reg[9]  ( .D(d_in[13]), .CLK(clock), .Q(d_out[9]) );
  DFFPOSX1 \d_out_reg_reg[8]  ( .D(d_in[12]), .CLK(clock), .Q(d_out[8]) );
  DFFPOSX1 \d_out_reg_reg[7]  ( .D(d_in[11]), .CLK(clock), .Q(d_out[7]) );
  DFFPOSX1 \d_out_reg_reg[6]  ( .D(d_in[10]), .CLK(clock), .Q(d_out[6]) );
  DFFPOSX1 \d_out_reg_reg[5]  ( .D(d_in[9]), .CLK(clock), .Q(d_out[5]) );
  DFFPOSX1 \d_out_reg_reg[4]  ( .D(d_in[8]), .CLK(clock), .Q(d_out[4]) );
  DFFPOSX1 \d_out_reg_reg[3]  ( .D(d_in[7]), .CLK(clock), .Q(d_out[3]) );
  DFFPOSX1 \d_out_reg_reg[2]  ( .D(d_in[6]), .CLK(clock), .Q(d_out[2]) );
  DFFPOSX1 \d_out_reg_reg[1]  ( .D(d_in[5]), .CLK(clock), .Q(d_out[1]) );
  DFFPOSX1 \d_out_reg_reg[0]  ( .D(d_in[4]), .CLK(clock), .Q(d_out[0]) );
endmodule


module add16_sv_4 ( d1_in, d2_in, d_out );
  input [15:0] d1_in;
  input [15:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_3/A[12] , \intadd_3/B[12] , \intadd_3/CI , \intadd_3/n13 ,
         \intadd_3/n12 , \intadd_3/n11 , \intadd_3/n10 , \intadd_3/n9 ,
         \intadd_3/n8 , \intadd_3/n7 , \intadd_3/n6 , \intadd_3/n5 ,
         \intadd_3/n4 , \intadd_3/n3 , \intadd_3/n2 , \intadd_3/n1 , n1, n2;
  assign d_out[15] = d_out[14];

  FAX1 \intadd_3/U14  ( .A(d2_in[1]), .B(d1_in[1]), .C(\intadd_3/CI ), .YC(
        \intadd_3/n13 ), .YS(d_out[1]) );
  FAX1 \intadd_3/U13  ( .A(d2_in[2]), .B(d1_in[2]), .C(\intadd_3/n13 ), .YC(
        \intadd_3/n12 ), .YS(d_out[2]) );
  FAX1 \intadd_3/U12  ( .A(d2_in[3]), .B(d1_in[3]), .C(\intadd_3/n12 ), .YC(
        \intadd_3/n11 ), .YS(d_out[3]) );
  FAX1 \intadd_3/U11  ( .A(d2_in[4]), .B(d1_in[4]), .C(\intadd_3/n11 ), .YC(
        \intadd_3/n10 ), .YS(d_out[4]) );
  FAX1 \intadd_3/U10  ( .A(d2_in[5]), .B(d1_in[5]), .C(\intadd_3/n10 ), .YC(
        \intadd_3/n9 ), .YS(d_out[5]) );
  FAX1 \intadd_3/U9  ( .A(d2_in[6]), .B(d1_in[6]), .C(\intadd_3/n9 ), .YC(
        \intadd_3/n8 ), .YS(d_out[6]) );
  FAX1 \intadd_3/U8  ( .A(d2_in[7]), .B(d1_in[7]), .C(\intadd_3/n8 ), .YC(
        \intadd_3/n7 ), .YS(d_out[7]) );
  FAX1 \intadd_3/U7  ( .A(d2_in[8]), .B(d1_in[8]), .C(\intadd_3/n7 ), .YC(
        \intadd_3/n6 ), .YS(d_out[8]) );
  FAX1 \intadd_3/U6  ( .A(d2_in[9]), .B(d1_in[9]), .C(\intadd_3/n6 ), .YC(
        \intadd_3/n5 ), .YS(d_out[9]) );
  FAX1 \intadd_3/U5  ( .A(d2_in[10]), .B(d1_in[10]), .C(\intadd_3/n5 ), .YC(
        \intadd_3/n4 ), .YS(d_out[10]) );
  FAX1 \intadd_3/U4  ( .A(d1_in[14]), .B(d2_in[11]), .C(\intadd_3/n4 ), .YC(
        \intadd_3/n3 ), .YS(d_out[11]) );
  FAX1 \intadd_3/U3  ( .A(d1_in[14]), .B(d2_in[12]), .C(\intadd_3/n3 ), .YC(
        \intadd_3/n2 ), .YS(d_out[12]) );
  FAX1 \intadd_3/U2  ( .A(\intadd_3/B[12] ), .B(\intadd_3/A[12] ), .C(
        \intadd_3/n2 ), .YC(\intadd_3/n1 ), .YS(d_out[13]) );
  AND2X1 U1 ( .A(d2_in[0]), .B(d1_in[0]), .Y(\intadd_3/CI ) );
  INVX1 U2 ( .A(d1_in[14]), .Y(\intadd_3/A[12] ) );
  INVX1 U3 ( .A(d2_in[14]), .Y(\intadd_3/B[12] ) );
  INVX1 U4 ( .A(\intadd_3/n1 ), .Y(d_out[14]) );
  INVX1 U5 ( .A(\intadd_3/CI ), .Y(n1) );
  OAI21X1 U6 ( .A(d2_in[0]), .B(d1_in[0]), .C(n1), .Y(n2) );
  INVX1 U7 ( .A(n2), .Y(d_out[0]) );
endmodule


module shift_1d_16_sv_4 ( xin, xout, clock );
  input [15:0] xin;
  output [15:0] xout;
  input clock;


  DFFPOSX1 \shift_reg_reg[15]  ( .D(xin[15]), .CLK(clock), .Q(xout[15]) );
  DFFPOSX1 \shift_reg_reg[14]  ( .D(xin[14]), .CLK(clock), .Q(xout[14]) );
  DFFPOSX1 \shift_reg_reg[13]  ( .D(xin[13]), .CLK(clock), .Q(xout[13]) );
  DFFPOSX1 \shift_reg_reg[12]  ( .D(xin[12]), .CLK(clock), .Q(xout[12]) );
  DFFPOSX1 \shift_reg_reg[11]  ( .D(xin[11]), .CLK(clock), .Q(xout[11]) );
  DFFPOSX1 \shift_reg_reg[10]  ( .D(xin[10]), .CLK(clock), .Q(xout[10]) );
  DFFPOSX1 \shift_reg_reg[9]  ( .D(xin[9]), .CLK(clock), .Q(xout[9]) );
  DFFPOSX1 \shift_reg_reg[8]  ( .D(xin[8]), .CLK(clock), .Q(xout[8]) );
  DFFPOSX1 \shift_reg_reg[7]  ( .D(xin[7]), .CLK(clock), .Q(xout[7]) );
  DFFPOSX1 \shift_reg_reg[6]  ( .D(xin[6]), .CLK(clock), .Q(xout[6]) );
  DFFPOSX1 \shift_reg_reg[5]  ( .D(xin[5]), .CLK(clock), .Q(xout[5]) );
  DFFPOSX1 \shift_reg_reg[4]  ( .D(xin[4]), .CLK(clock), .Q(xout[4]) );
  DFFPOSX1 \shift_reg_reg[3]  ( .D(xin[3]), .CLK(clock), .Q(xout[3]) );
  DFFPOSX1 \shift_reg_reg[2]  ( .D(xin[2]), .CLK(clock), .Q(xout[2]) );
  DFFPOSX1 \shift_reg_reg[1]  ( .D(xin[1]), .CLK(clock), .Q(xout[1]) );
  DFFPOSX1 \shift_reg_reg[0]  ( .D(xin[0]), .CLK(clock), .Q(xout[0]) );
endmodule


module saturation_sv_4 ( d_in, d_out );
  input [15:0] d_in;
  output [15:0] d_out;
  wire   n7, n2, n3, n4, n5, n6;
  assign d_out[13] = d_in[15];
  assign d_out[14] = d_in[15];

  INVX1 U3 ( .A(n7), .Y(d_out[12]) );
  AND2X1 U4 ( .A(n5), .B(n3), .Y(n7) );
  BUFX2 U5 ( .A(n4), .Y(n2) );
  INVX1 U6 ( .A(d_in[15]), .Y(n5) );
  NOR3X1 U7 ( .A(d_in[13]), .B(d_in[12]), .C(d_in[14]), .Y(n3) );
  NAND3X1 U8 ( .A(d_in[14]), .B(d_in[13]), .C(d_in[12]), .Y(n4) );
  OAI21X1 U9 ( .A(n5), .B(n2), .C(d_out[12]), .Y(n6) );
  AND2X1 U10 ( .A(d_in[7]), .B(n6), .Y(d_out[7]) );
  AND2X1 U11 ( .A(d_in[0]), .B(n6), .Y(d_out[0]) );
  AND2X1 U12 ( .A(d_in[1]), .B(n6), .Y(d_out[1]) );
  AND2X1 U13 ( .A(d_in[2]), .B(n6), .Y(d_out[2]) );
  AND2X1 U14 ( .A(d_in[3]), .B(n6), .Y(d_out[3]) );
  AND2X1 U15 ( .A(d_in[4]), .B(n6), .Y(d_out[4]) );
  AND2X1 U16 ( .A(d_in[5]), .B(n6), .Y(d_out[5]) );
  AND2X1 U17 ( .A(d_in[6]), .B(n6), .Y(d_out[6]) );
  AND2X1 U18 ( .A(d_in[8]), .B(n6), .Y(d_out[8]) );
  AND2X1 U19 ( .A(d_in[11]), .B(n6), .Y(d_out[11]) );
  AND2X1 U20 ( .A(d_in[10]), .B(n6), .Y(d_out[10]) );
  AND2X1 U21 ( .A(d_in[9]), .B(n6), .Y(d_out[9]) );
endmodule


module truncation_sv_9 ( d_in, d_out );
  input [15:0] d_in;
  output [7:0] d_out;
  wire   \d_in[13] , \d_in[12] , \d_in[11] , \d_in[10] , \d_in[9] , \d_in[8] ,
         \d_in[7] , \d_in[6] ;
  assign d_out[7] = \d_in[13] ;
  assign \d_in[13]  = d_in[13];
  assign d_out[6] = \d_in[12] ;
  assign \d_in[12]  = d_in[12];
  assign d_out[5] = \d_in[11] ;
  assign \d_in[11]  = d_in[11];
  assign d_out[4] = \d_in[10] ;
  assign \d_in[10]  = d_in[10];
  assign d_out[3] = \d_in[9] ;
  assign \d_in[9]  = d_in[9];
  assign d_out[2] = \d_in[8] ;
  assign \d_in[8]  = d_in[8];
  assign d_out[1] = \d_in[7] ;
  assign \d_in[7]  = d_in[7];
  assign d_out[0] = \d_in[6] ;
  assign \d_in[6]  = d_in[6];

endmodule


module mul8_sv_8 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_4/A[7] , \intadd_4/A[6] , \intadd_4/A[5] , \intadd_4/A[4] ,
         \intadd_4/A[3] , \intadd_4/A[2] , \intadd_4/A[1] , \intadd_4/A[0] ,
         \intadd_4/B[7] , \intadd_4/B[6] , \intadd_4/B[5] , \intadd_4/B[4] ,
         \intadd_4/B[3] , \intadd_4/B[2] , \intadd_4/B[1] , \intadd_4/B[0] ,
         \intadd_4/CI , \intadd_4/SUM[0] , \intadd_4/n9 , \intadd_4/n8 ,
         \intadd_4/n7 , \intadd_4/n6 , \intadd_4/n5 , \intadd_4/n4 ,
         \intadd_4/n3 , \intadd_4/n2 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231;

  FAX1 \intadd_4/U10  ( .A(n67), .B(n46), .C(n27), .YC(\intadd_4/n9 ), .YS(
        \intadd_4/SUM[0] ) );
  FAX1 \intadd_4/U9  ( .A(n82), .B(\intadd_4/A[1] ), .C(\intadd_4/n9 ), .YC(
        \intadd_4/n8 ), .YS(d_out[6]) );
  FAX1 \intadd_4/U8  ( .A(\intadd_4/B[2] ), .B(\intadd_4/A[2] ), .C(
        \intadd_4/n8 ), .YC(\intadd_4/n7 ), .YS(d_out[7]) );
  FAX1 \intadd_4/U7  ( .A(\intadd_4/B[3] ), .B(\intadd_4/A[3] ), .C(
        \intadd_4/n7 ), .YC(\intadd_4/n6 ), .YS(d_out[8]) );
  FAX1 \intadd_4/U6  ( .A(\intadd_4/B[4] ), .B(\intadd_4/A[4] ), .C(
        \intadd_4/n6 ), .YC(\intadd_4/n5 ), .YS(d_out[9]) );
  FAX1 \intadd_4/U5  ( .A(\intadd_4/B[5] ), .B(\intadd_4/A[5] ), .C(
        \intadd_4/n5 ), .YC(\intadd_4/n4 ), .YS(d_out[10]) );
  FAX1 \intadd_4/U4  ( .A(\intadd_4/B[6] ), .B(\intadd_4/A[6] ), .C(
        \intadd_4/n4 ), .YC(\intadd_4/n3 ), .YS(d_out[11]) );
  FAX1 \intadd_4/U3  ( .A(\intadd_4/B[7] ), .B(\intadd_4/A[7] ), .C(
        \intadd_4/n3 ), .YC(\intadd_4/n2 ), .YS(d_out[12]) );
  OR2X1 U1 ( .A(n40), .B(n41), .Y(n182) );
  AND2X1 U2 ( .A(n76), .B(n37), .Y(n137) );
  OR2X1 U3 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n92) );
  AND2X1 U4 ( .A(n218), .B(n39), .Y(n219) );
  AND2X1 U5 ( .A(n228), .B(n3), .Y(\intadd_4/B[1] ) );
  AND2X1 U6 ( .A(n23), .B(n92), .Y(n141) );
  AND2X1 U7 ( .A(d1_in[7]), .B(n23), .Y(n98) );
  OR2X1 U8 ( .A(d1_in[3]), .B(n4), .Y(n202) );
  AND2X1 U9 ( .A(n2), .B(n60), .Y(n221) );
  AND2X1 U10 ( .A(n98), .B(n38), .Y(n157) );
  BUFX2 U11 ( .A(n97), .Y(n1) );
  BUFX2 U12 ( .A(n108), .Y(n2) );
  INVX1 U13 ( .A(n227), .Y(n3) );
  AND2X1 U14 ( .A(\intadd_4/SUM[0] ), .B(n226), .Y(n227) );
  INVX1 U15 ( .A(n106), .Y(n4) );
  OR2X1 U16 ( .A(d1_in[2]), .B(d1_in[1]), .Y(n106) );
  BUFX2 U17 ( .A(n101), .Y(n5) );
  BUFX2 U18 ( .A(n128), .Y(n6) );
  BUFX2 U19 ( .A(n170), .Y(n7) );
  BUFX2 U20 ( .A(n174), .Y(n8) );
  BUFX2 U21 ( .A(n186), .Y(n9) );
  BUFX2 U22 ( .A(n199), .Y(n10) );
  BUFX2 U23 ( .A(n142), .Y(n11) );
  BUFX2 U24 ( .A(n179), .Y(n12) );
  BUFX2 U25 ( .A(n188), .Y(n13) );
  BUFX2 U26 ( .A(n213), .Y(n14) );
  INVX1 U27 ( .A(n127), .Y(n15) );
  AND2X1 U28 ( .A(d1_in[1]), .B(n171), .Y(n127) );
  INVX1 U29 ( .A(n169), .Y(n16) );
  AND2X1 U30 ( .A(d1_in[1]), .B(n195), .Y(n169) );
  INVX1 U31 ( .A(n173), .Y(n17) );
  OR2X1 U32 ( .A(d2_in[4]), .B(n204), .Y(n173) );
  INVX1 U33 ( .A(n198), .Y(n18) );
  AND2X1 U34 ( .A(d1_in[1]), .B(n196), .Y(n198) );
  BUFX2 U35 ( .A(n201), .Y(n19) );
  INVX1 U36 ( .A(n150), .Y(n20) );
  AND2X1 U37 ( .A(d2_in[0]), .B(n141), .Y(n150) );
  INVX1 U38 ( .A(n192), .Y(n21) );
  AND2X1 U39 ( .A(d2_in[0]), .B(n191), .Y(n192) );
  BUFX2 U40 ( .A(n102), .Y(n22) );
  INVX1 U41 ( .A(n94), .Y(n23) );
  AND2X1 U42 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n94) );
  BUFX2 U43 ( .A(n111), .Y(n24) );
  BUFX2 U44 ( .A(n134), .Y(n25) );
  BUFX2 U45 ( .A(n152), .Y(n26) );
  BUFX2 U46 ( .A(\intadd_4/CI ), .Y(n27) );
  INVX1 U47 ( .A(n29), .Y(n28) );
  BUFX2 U48 ( .A(n125), .Y(n29) );
  INVX1 U49 ( .A(n31), .Y(n30) );
  BUFX2 U50 ( .A(n149), .Y(n31) );
  INVX1 U51 ( .A(n33), .Y(n32) );
  BUFX2 U52 ( .A(n180), .Y(n33) );
  INVX1 U53 ( .A(n35), .Y(n34) );
  BUFX2 U54 ( .A(n100), .Y(n35) );
  BUFX2 U55 ( .A(n144), .Y(n36) );
  BUFX2 U56 ( .A(n139), .Y(n37) );
  BUFX2 U57 ( .A(n151), .Y(n38) );
  BUFX2 U58 ( .A(n217), .Y(n39) );
  INVX1 U59 ( .A(n184), .Y(n40) );
  AND2X1 U60 ( .A(n1), .B(n61), .Y(n184) );
  BUFX2 U61 ( .A(n183), .Y(n41) );
  BUFX2 U62 ( .A(n114), .Y(n42) );
  BUFX2 U63 ( .A(n122), .Y(n43) );
  BUFX2 U64 ( .A(n153), .Y(n44) );
  BUFX2 U65 ( .A(n175), .Y(n45) );
  BUFX2 U66 ( .A(\intadd_4/A[0] ), .Y(n46) );
  OR2X1 U67 ( .A(n89), .B(n69), .Y(n135) );
  INVX1 U68 ( .A(n135), .Y(n47) );
  BUFX2 U69 ( .A(n110), .Y(n48) );
  BUFX2 U70 ( .A(n105), .Y(n49) );
  BUFX2 U71 ( .A(n109), .Y(n50) );
  BUFX2 U72 ( .A(n117), .Y(n51) );
  BUFX2 U73 ( .A(n118), .Y(n52) );
  BUFX2 U74 ( .A(n126), .Y(n53) );
  BUFX2 U75 ( .A(n131), .Y(n54) );
  BUFX2 U76 ( .A(n143), .Y(n55) );
  BUFX2 U77 ( .A(n140), .Y(n56) );
  BUFX2 U78 ( .A(n167), .Y(n57) );
  BUFX2 U79 ( .A(n181), .Y(n58) );
  BUFX2 U80 ( .A(n189), .Y(n59) );
  BUFX2 U81 ( .A(n203), .Y(n60) );
  BUFX2 U82 ( .A(n190), .Y(n61) );
  BUFX2 U83 ( .A(n231), .Y(n62) );
  BUFX2 U84 ( .A(n115), .Y(n63) );
  BUFX2 U85 ( .A(n123), .Y(n64) );
  BUFX2 U86 ( .A(n136), .Y(n65) );
  BUFX2 U87 ( .A(n154), .Y(n66) );
  BUFX2 U88 ( .A(\intadd_4/B[0] ), .Y(n67) );
  BUFX2 U89 ( .A(n224), .Y(n68) );
  BUFX2 U90 ( .A(n156), .Y(n69) );
  INVX1 U91 ( .A(n221), .Y(n70) );
  BUFX2 U92 ( .A(n229), .Y(n71) );
  INVX1 U93 ( .A(n194), .Y(n72) );
  AND2X1 U94 ( .A(n96), .B(n95), .Y(n194) );
  INVX1 U95 ( .A(n172), .Y(n73) );
  AND2X1 U96 ( .A(n204), .B(d1_in[0]), .Y(n172) );
  INVX1 U97 ( .A(n98), .Y(n74) );
  BUFX2 U98 ( .A(n116), .Y(n75) );
  BUFX2 U99 ( .A(n138), .Y(n76) );
  INVX1 U100 ( .A(n78), .Y(n77) );
  BUFX2 U101 ( .A(n120), .Y(n78) );
  INVX1 U102 ( .A(n219), .Y(n79) );
  AND2X1 U103 ( .A(d1_in[1]), .B(n187), .Y(n185) );
  INVX1 U104 ( .A(n185), .Y(n80) );
  AND2X1 U105 ( .A(n205), .B(d2_in[0]), .Y(n206) );
  INVX1 U106 ( .A(n206), .Y(n81) );
  INVX1 U107 ( .A(\intadd_4/B[1] ), .Y(n82) );
  BUFX2 U108 ( .A(n165), .Y(n83) );
  BUFX2 U109 ( .A(n216), .Y(n84) );
  INVX1 U110 ( .A(n182), .Y(n85) );
  AND2X1 U111 ( .A(n93), .B(n92), .Y(n99) );
  INVX1 U112 ( .A(n99), .Y(n86) );
  INVX1 U113 ( .A(n137), .Y(n87) );
  BUFX2 U114 ( .A(n230), .Y(n88) );
  INVX1 U115 ( .A(n157), .Y(n89) );
  INVX1 U116 ( .A(n202), .Y(n90) );
  INVX1 U117 ( .A(n141), .Y(n91) );
  INVX1 U118 ( .A(d1_in[7]), .Y(n93) );
  INVX1 U119 ( .A(d2_in[6]), .Y(n129) );
  AOI22X1 U120 ( .A(d2_in[6]), .B(n86), .C(n74), .D(n129), .Y(n100) );
  INVX1 U121 ( .A(d2_in[5]), .Y(n171) );
  AOI22X1 U122 ( .A(d2_in[5]), .B(n99), .C(n98), .D(n171), .Y(n110) );
  AOI22X1 U123 ( .A(n141), .B(n34), .C(n48), .D(n91), .Y(n231) );
  INVX1 U124 ( .A(d1_in[5]), .Y(n96) );
  OR2X1 U125 ( .A(d1_in[3]), .B(d1_in[4]), .Y(n95) );
  AOI21X1 U126 ( .A(d1_in[3]), .B(d1_in[4]), .C(n96), .Y(n97) );
  INVX1 U127 ( .A(n1), .Y(n193) );
  INVX1 U128 ( .A(d2_in[7]), .Y(n124) );
  AOI22X1 U129 ( .A(d2_in[7]), .B(n194), .C(n1), .D(n124), .Y(n230) );
  INVX1 U130 ( .A(d1_in[3]), .Y(n107) );
  MUX2X1 U131 ( .B(n107), .A(d1_in[3]), .S(d1_in[4]), .Y(n191) );
  AOI22X1 U132 ( .A(d2_in[6]), .B(n194), .C(n1), .D(n129), .Y(n105) );
  INVX1 U133 ( .A(n191), .Y(n178) );
  AOI22X1 U134 ( .A(n191), .B(n88), .C(n49), .D(n178), .Y(n229) );
  AOI22X1 U135 ( .A(d2_in[7]), .B(n86), .C(n74), .D(n124), .Y(n101) );
  AOI22X1 U136 ( .A(n141), .B(n5), .C(n35), .D(n91), .Y(n102) );
  XOR2X1 U137 ( .A(n103), .B(n22), .Y(n104) );
  XOR2X1 U138 ( .A(\intadd_4/n2 ), .B(n104), .Y(d_out[13]) );
  INVX1 U139 ( .A(n71), .Y(n113) );
  INVX1 U140 ( .A(d2_in[4]), .Y(n168) );
  AOI22X1 U141 ( .A(d2_in[4]), .B(n99), .C(n98), .D(n168), .Y(n109) );
  INVX1 U142 ( .A(d2_in[3]), .Y(n195) );
  AOI22X1 U143 ( .A(d2_in[3]), .B(n99), .C(n98), .D(n195), .Y(n117) );
  AOI22X1 U144 ( .A(n141), .B(n50), .C(n51), .D(n91), .Y(n115) );
  AOI22X1 U145 ( .A(d2_in[5]), .B(n194), .C(n1), .D(n171), .Y(n118) );
  AOI22X1 U146 ( .A(n191), .B(n49), .C(n52), .D(n178), .Y(n114) );
  AOI21X1 U147 ( .A(d1_in[2]), .B(d1_in[1]), .C(n107), .Y(n108) );
  INVX1 U148 ( .A(n2), .Y(n207) );
  AOI22X1 U149 ( .A(d2_in[7]), .B(n90), .C(n2), .D(n124), .Y(n116) );
  AOI22X1 U150 ( .A(n141), .B(n48), .C(n50), .D(n91), .Y(n111) );
  FAX1 U151 ( .A(n113), .B(n112), .C(n24), .YC(\intadd_4/B[7] ), .YS(
        \intadd_4/A[6] ) );
  FAX1 U152 ( .A(n63), .B(n42), .C(n75), .YC(n112), .YS(n121) );
  INVX1 U153 ( .A(d1_in[1]), .Y(n204) );
  MUX2X1 U154 ( .B(n204), .A(d1_in[1]), .S(d1_in[2]), .Y(n205) );
  AOI22X1 U155 ( .A(d2_in[6]), .B(n202), .C(n207), .D(n129), .Y(n125) );
  INVX1 U156 ( .A(n205), .Y(n200) );
  AOI22X1 U157 ( .A(n205), .B(n75), .C(n28), .D(n200), .Y(n120) );
  INVX1 U158 ( .A(d2_in[2]), .Y(n196) );
  AOI22X1 U159 ( .A(d2_in[2]), .B(n99), .C(n98), .D(n196), .Y(n126) );
  AOI22X1 U160 ( .A(n141), .B(n51), .C(n53), .D(n91), .Y(n123) );
  AOI22X1 U161 ( .A(d2_in[4]), .B(n194), .C(n1), .D(n168), .Y(n131) );
  AOI22X1 U162 ( .A(n191), .B(n52), .C(n54), .D(n178), .Y(n122) );
  FAX1 U163 ( .A(n121), .B(n78), .C(n119), .YC(\intadd_4/B[6] ), .YS(
        \intadd_4/A[5] ) );
  FAX1 U164 ( .A(n64), .B(n43), .C(n77), .YC(n119), .YS(n133) );
  AOI22X1 U165 ( .A(d2_in[7]), .B(n73), .C(n204), .D(n124), .Y(n138) );
  AOI22X1 U166 ( .A(d2_in[5]), .B(n202), .C(n207), .D(n171), .Y(n144) );
  AOI22X1 U167 ( .A(n205), .B(n29), .C(n36), .D(n200), .Y(n139) );
  INVX1 U168 ( .A(d2_in[1]), .Y(n187) );
  AOI22X1 U169 ( .A(d2_in[1]), .B(n99), .C(n98), .D(n187), .Y(n143) );
  AOI22X1 U170 ( .A(n141), .B(n53), .C(n55), .D(n91), .Y(n136) );
  AOI22X1 U171 ( .A(d2_in[6]), .B(n172), .C(d1_in[1]), .D(n129), .Y(n128) );
  INVX1 U172 ( .A(d1_in[0]), .Y(n197) );
  AOI22X1 U173 ( .A(d1_in[0]), .B(n6), .C(n15), .D(n197), .Y(n151) );
  AND2X1 U174 ( .A(d1_in[1]), .B(n129), .Y(n130) );
  AOI22X1 U175 ( .A(d1_in[0]), .B(n76), .C(n130), .D(n197), .Y(n156) );
  AOI22X1 U176 ( .A(d2_in[3]), .B(n194), .C(n1), .D(n195), .Y(n140) );
  AOI22X1 U177 ( .A(n191), .B(n54), .C(n56), .D(n178), .Y(n134) );
  FAX1 U178 ( .A(n133), .B(n87), .C(n132), .YC(\intadd_4/B[5] ), .YS(
        \intadd_4/A[4] ) );
  FAX1 U179 ( .A(n65), .B(n47), .C(n25), .YC(n132), .YS(n148) );
  OAI21X1 U180 ( .A(n37), .B(n76), .C(n87), .Y(n147) );
  AOI22X1 U181 ( .A(d2_in[2]), .B(n72), .C(n193), .D(n196), .Y(n149) );
  AOI22X1 U182 ( .A(n191), .B(n56), .C(n30), .D(n178), .Y(n154) );
  INVX1 U183 ( .A(d2_in[0]), .Y(n177) );
  AOI22X1 U184 ( .A(d2_in[0]), .B(n99), .C(n98), .D(n177), .Y(n142) );
  AOI22X1 U185 ( .A(n141), .B(n55), .C(n11), .D(n91), .Y(n153) );
  INVX1 U186 ( .A(n36), .Y(n145) );
  AOI22X1 U187 ( .A(d2_in[4]), .B(n90), .C(n2), .D(n168), .Y(n167) );
  AOI22X1 U188 ( .A(n205), .B(n145), .C(n57), .D(n200), .Y(n152) );
  FAX1 U189 ( .A(n148), .B(n147), .C(n146), .YC(\intadd_4/B[4] ), .YS(
        \intadd_4/A[3] ) );
  AOI22X1 U190 ( .A(d2_in[1]), .B(n194), .C(n1), .D(n187), .Y(n180) );
  AOI22X1 U191 ( .A(n191), .B(n31), .C(n32), .D(n178), .Y(n165) );
  MUX2X1 U192 ( .B(n99), .A(n98), .S(n20), .Y(n164) );
  OAI21X1 U193 ( .A(n98), .B(n38), .C(n89), .Y(n163) );
  FAX1 U194 ( .A(n66), .B(n44), .C(n26), .YC(n146), .YS(n155) );
  INVX1 U195 ( .A(n155), .Y(n160) );
  MUX2X1 U196 ( .B(n89), .A(n157), .S(n69), .Y(n159) );
  INVX1 U197 ( .A(n158), .Y(\intadd_4/B[3] ) );
  FAX1 U198 ( .A(n161), .B(n160), .C(n159), .YC(n158), .YS(n162) );
  INVX1 U199 ( .A(n162), .Y(\intadd_4/A[2] ) );
  FAX1 U200 ( .A(n83), .B(n164), .C(n163), .YC(n161), .YS(n166) );
  INVX1 U201 ( .A(n166), .Y(n176) );
  AOI22X1 U202 ( .A(d2_in[3]), .B(n90), .C(n2), .D(n195), .Y(n181) );
  AOI22X1 U203 ( .A(n205), .B(n57), .C(n58), .D(n200), .Y(n175) );
  AOI22X1 U204 ( .A(d2_in[4]), .B(n172), .C(d1_in[1]), .D(n168), .Y(n170) );
  AOI22X1 U205 ( .A(d1_in[0]), .B(n7), .C(n16), .D(n197), .Y(n190) );
  AOI22X1 U206 ( .A(d2_in[5]), .B(n73), .C(n204), .D(n171), .Y(n174) );
  AOI22X1 U207 ( .A(d1_in[0]), .B(n8), .C(n17), .D(n197), .Y(n183) );
  FAX1 U208 ( .A(n176), .B(n45), .C(n85), .YC(\intadd_4/B[2] ), .YS(
        \intadd_4/A[1] ) );
  AOI22X1 U209 ( .A(d2_in[0]), .B(n194), .C(n1), .D(n177), .Y(n179) );
  AOI22X1 U210 ( .A(n191), .B(n33), .C(n12), .D(n178), .Y(\intadd_4/A[0] ) );
  AOI22X1 U211 ( .A(d2_in[2]), .B(n90), .C(n2), .D(n196), .Y(n189) );
  AOI22X1 U212 ( .A(n205), .B(n58), .C(n59), .D(n200), .Y(\intadd_4/B[0] ) );
  AOI21X1 U213 ( .A(n40), .B(n41), .C(n85), .Y(\intadd_4/CI ) );
  AOI22X1 U214 ( .A(d2_in[2]), .B(n172), .C(d1_in[1]), .D(n196), .Y(n186) );
  AOI22X1 U215 ( .A(d1_in[0]), .B(n9), .C(n80), .D(n197), .Y(n203) );
  AOI22X1 U216 ( .A(d2_in[1]), .B(n90), .C(n2), .D(n187), .Y(n188) );
  AOI22X1 U217 ( .A(n205), .B(n59), .C(n13), .D(n200), .Y(n224) );
  MUX2X1 U218 ( .B(n193), .A(n1), .S(n61), .Y(n223) );
  MUX2X1 U219 ( .B(n72), .A(n193), .S(n21), .Y(n222) );
  AOI22X1 U220 ( .A(d2_in[3]), .B(n172), .C(d1_in[1]), .D(n195), .Y(n199) );
  AOI22X1 U221 ( .A(d1_in[0]), .B(n10), .C(n18), .D(n197), .Y(n216) );
  HAX1 U222 ( .A(n84), .B(n70), .YS(n215) );
  AOI22X1 U223 ( .A(n205), .B(d2_in[1]), .C(d2_in[0]), .D(n200), .Y(n201) );
  MUX2X1 U224 ( .B(n90), .A(n2), .S(n19), .Y(n214) );
  MUX2X1 U225 ( .B(n207), .A(n2), .S(n60), .Y(n211) );
  NOR3X1 U226 ( .A(d2_in[1]), .B(d2_in[0]), .C(n204), .Y(n210) );
  MUX2X1 U227 ( .B(n202), .A(n207), .S(n81), .Y(n209) );
  OR2X1 U228 ( .A(n211), .B(n210), .Y(n208) );
  AOI22X1 U229 ( .A(n211), .B(n210), .C(n209), .D(n208), .Y(n213) );
  OR2X1 U230 ( .A(n215), .B(n214), .Y(n212) );
  AOI22X1 U231 ( .A(n215), .B(n214), .C(n14), .D(n212), .Y(n217) );
  OAI21X1 U232 ( .A(n218), .B(n39), .C(n84), .Y(n220) );
  OAI21X1 U233 ( .A(n70), .B(n220), .C(n79), .Y(n226) );
  FAX1 U234 ( .A(n68), .B(n223), .C(n222), .YC(n225), .YS(n218) );
  OAI21X1 U235 ( .A(\intadd_4/SUM[0] ), .B(n226), .C(n225), .Y(n228) );
  FAX1 U236 ( .A(n62), .B(n88), .C(n71), .YC(n103), .YS(\intadd_4/A[7] ) );
endmodule


module truncation_sv_8 ( d_in, d_out );
  input [15:0] d_in;
  output [7:0] d_out;
  wire   \d_in[13] , \d_in[12] , \d_in[11] , \d_in[10] , \d_in[9] , \d_in[8] ,
         \d_in[7] , \d_in[6] ;
  assign d_out[7] = \d_in[13] ;
  assign \d_in[13]  = d_in[13];
  assign d_out[6] = \d_in[12] ;
  assign \d_in[12]  = d_in[12];
  assign d_out[5] = \d_in[11] ;
  assign \d_in[11]  = d_in[11];
  assign d_out[4] = \d_in[10] ;
  assign \d_in[10]  = d_in[10];
  assign d_out[3] = \d_in[9] ;
  assign \d_in[9]  = d_in[9];
  assign d_out[2] = \d_in[8] ;
  assign \d_in[8]  = d_in[8];
  assign d_out[1] = \d_in[7] ;
  assign \d_in[7]  = d_in[7];
  assign d_out[0] = \d_in[6] ;
  assign \d_in[6]  = d_in[6];

endmodule


module unit_calc_sv_4 ( x_in, x_N_in, ue_in, y_in, x_out, x_N_out, ue_out, 
        y_out, clock );
  input [7:0] x_in;
  input [7:0] x_N_in;
  input [7:0] ue_in;
  input [7:0] y_in;
  output [7:0] x_out;
  output [7:0] x_N_out;
  output [7:0] ue_out;
  output [7:0] y_out;
  input clock;

  wire   [31:8] shiftx;
  wire   [31:8] shiftxn;
  wire   [23:8] shiftue;
  wire   [7:0] y_out8;
  wire   [15:0] xnin_ue;
  wire   [15:0] xnin_ue_scaled;
  wire   [15:0] coeff16;
  wire   [15:0] new_coeff_true;
  wire   [15:0] delayed_new_coeff_true;
  wire   [7:0] coeff8;
  wire   [15:0] y_out16;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16;
  assign y_out[7] = y_out8[7];
  assign y_out[6] = y_out8[6];
  assign y_out[5] = y_out8[5];
  assign y_out[4] = y_out8[4];
  assign y_out[3] = y_out8[3];
  assign y_out[2] = y_out8[2];
  assign y_out[1] = y_out8[1];
  assign y_out[0] = y_out8[0];

  mul8_sv_9 mul_xnin_ue ( .d1_in(x_N_in), .d2_in(ue_in), .d_out({xnin_ue[15:4], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
  u_scaling_sv_4 u1 ( .d_in({xnin_ue[15:4], 1'b0, 1'b0, 1'b0, 1'b0}), .d_out({
        SYNOPSYS_UNCONNECTED__4, xnin_ue_scaled[14], SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, xnin_ue_scaled[10:0]}), .clock(clock) );
  add16_sv_4 add1 ( .d1_in({1'b0, xnin_ue_scaled[14], 1'b0, 1'b0, 1'b0, 
        xnin_ue_scaled[10:0]}), .d2_in({1'b0, coeff16[14], 1'b0, coeff16[12:0]}), .d_out(new_coeff_true) );
  shift_1d_16_sv_4 delay_2 ( .xin(new_coeff_true), .xout(
        delayed_new_coeff_true), .clock(clock) );
  saturation_sv_4 sat_1 ( .d_in(delayed_new_coeff_true), .d_out({
        SYNOPSYS_UNCONNECTED__8, coeff16[14:0]}) );
  truncation_sv_9 trunc_1 ( .d_in({1'b0, 1'b0, coeff16[13:6], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .d_out(coeff8) );
  mul8_sv_8 mul_coeff_x_in ( .d1_in(coeff8), .d2_in(shiftx[31:24]), .d_out({
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, y_out16[13:6], 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16}) );
  truncation_sv_8 trunc_2 ( .d_in({1'b0, 1'b0, y_out16[13:6], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .d_out(y_out8) );
  DFFPOSX1 \shiftx_reg[31]  ( .D(x_in[7]), .CLK(clock), .Q(shiftx[31]) );
  DFFPOSX1 \shiftx_reg[30]  ( .D(x_in[6]), .CLK(clock), .Q(shiftx[30]) );
  DFFPOSX1 \shiftx_reg[29]  ( .D(x_in[5]), .CLK(clock), .Q(shiftx[29]) );
  DFFPOSX1 \shiftx_reg[28]  ( .D(x_in[4]), .CLK(clock), .Q(shiftx[28]) );
  DFFPOSX1 \shiftx_reg[27]  ( .D(x_in[3]), .CLK(clock), .Q(shiftx[27]) );
  DFFPOSX1 \shiftx_reg[26]  ( .D(x_in[2]), .CLK(clock), .Q(shiftx[26]) );
  DFFPOSX1 \shiftx_reg[25]  ( .D(x_in[1]), .CLK(clock), .Q(shiftx[25]) );
  DFFPOSX1 \shiftx_reg[24]  ( .D(x_in[0]), .CLK(clock), .Q(shiftx[24]) );
  DFFPOSX1 \shiftx_reg[23]  ( .D(shiftx[31]), .CLK(clock), .Q(shiftx[23]) );
  DFFPOSX1 \shiftx_reg[22]  ( .D(shiftx[30]), .CLK(clock), .Q(shiftx[22]) );
  DFFPOSX1 \shiftx_reg[21]  ( .D(shiftx[29]), .CLK(clock), .Q(shiftx[21]) );
  DFFPOSX1 \shiftx_reg[20]  ( .D(shiftx[28]), .CLK(clock), .Q(shiftx[20]) );
  DFFPOSX1 \shiftx_reg[19]  ( .D(shiftx[27]), .CLK(clock), .Q(shiftx[19]) );
  DFFPOSX1 \shiftx_reg[18]  ( .D(shiftx[26]), .CLK(clock), .Q(shiftx[18]) );
  DFFPOSX1 \shiftx_reg[17]  ( .D(shiftx[25]), .CLK(clock), .Q(shiftx[17]) );
  DFFPOSX1 \shiftx_reg[16]  ( .D(shiftx[24]), .CLK(clock), .Q(shiftx[16]) );
  DFFPOSX1 \shiftx_reg[15]  ( .D(shiftx[23]), .CLK(clock), .Q(shiftx[15]) );
  DFFPOSX1 \shiftx_reg[14]  ( .D(shiftx[22]), .CLK(clock), .Q(shiftx[14]) );
  DFFPOSX1 \shiftx_reg[13]  ( .D(shiftx[21]), .CLK(clock), .Q(shiftx[13]) );
  DFFPOSX1 \shiftx_reg[12]  ( .D(shiftx[20]), .CLK(clock), .Q(shiftx[12]) );
  DFFPOSX1 \shiftx_reg[11]  ( .D(shiftx[19]), .CLK(clock), .Q(shiftx[11]) );
  DFFPOSX1 \shiftx_reg[10]  ( .D(shiftx[18]), .CLK(clock), .Q(shiftx[10]) );
  DFFPOSX1 \shiftx_reg[9]  ( .D(shiftx[17]), .CLK(clock), .Q(shiftx[9]) );
  DFFPOSX1 \shiftx_reg[8]  ( .D(shiftx[16]), .CLK(clock), .Q(shiftx[8]) );
  DFFPOSX1 \shiftx_reg[7]  ( .D(shiftx[15]), .CLK(clock), .Q(x_out[7]) );
  DFFPOSX1 \shiftx_reg[6]  ( .D(shiftx[14]), .CLK(clock), .Q(x_out[6]) );
  DFFPOSX1 \shiftx_reg[5]  ( .D(shiftx[13]), .CLK(clock), .Q(x_out[5]) );
  DFFPOSX1 \shiftx_reg[4]  ( .D(shiftx[12]), .CLK(clock), .Q(x_out[4]) );
  DFFPOSX1 \shiftx_reg[3]  ( .D(shiftx[11]), .CLK(clock), .Q(x_out[3]) );
  DFFPOSX1 \shiftx_reg[2]  ( .D(shiftx[10]), .CLK(clock), .Q(x_out[2]) );
  DFFPOSX1 \shiftx_reg[1]  ( .D(shiftx[9]), .CLK(clock), .Q(x_out[1]) );
  DFFPOSX1 \shiftx_reg[0]  ( .D(shiftx[8]), .CLK(clock), .Q(x_out[0]) );
  DFFPOSX1 \shiftxn_reg[31]  ( .D(x_N_in[7]), .CLK(clock), .Q(shiftxn[31]) );
  DFFPOSX1 \shiftxn_reg[30]  ( .D(x_N_in[6]), .CLK(clock), .Q(shiftxn[30]) );
  DFFPOSX1 \shiftxn_reg[29]  ( .D(x_N_in[5]), .CLK(clock), .Q(shiftxn[29]) );
  DFFPOSX1 \shiftxn_reg[28]  ( .D(x_N_in[4]), .CLK(clock), .Q(shiftxn[28]) );
  DFFPOSX1 \shiftxn_reg[27]  ( .D(x_N_in[3]), .CLK(clock), .Q(shiftxn[27]) );
  DFFPOSX1 \shiftxn_reg[26]  ( .D(x_N_in[2]), .CLK(clock), .Q(shiftxn[26]) );
  DFFPOSX1 \shiftxn_reg[25]  ( .D(x_N_in[1]), .CLK(clock), .Q(shiftxn[25]) );
  DFFPOSX1 \shiftxn_reg[24]  ( .D(x_N_in[0]), .CLK(clock), .Q(shiftxn[24]) );
  DFFPOSX1 \shiftxn_reg[23]  ( .D(shiftxn[31]), .CLK(clock), .Q(shiftxn[23])
         );
  DFFPOSX1 \shiftxn_reg[22]  ( .D(shiftxn[30]), .CLK(clock), .Q(shiftxn[22])
         );
  DFFPOSX1 \shiftxn_reg[21]  ( .D(shiftxn[29]), .CLK(clock), .Q(shiftxn[21])
         );
  DFFPOSX1 \shiftxn_reg[20]  ( .D(shiftxn[28]), .CLK(clock), .Q(shiftxn[20])
         );
  DFFPOSX1 \shiftxn_reg[19]  ( .D(shiftxn[27]), .CLK(clock), .Q(shiftxn[19])
         );
  DFFPOSX1 \shiftxn_reg[18]  ( .D(shiftxn[26]), .CLK(clock), .Q(shiftxn[18])
         );
  DFFPOSX1 \shiftxn_reg[17]  ( .D(shiftxn[25]), .CLK(clock), .Q(shiftxn[17])
         );
  DFFPOSX1 \shiftxn_reg[16]  ( .D(shiftxn[24]), .CLK(clock), .Q(shiftxn[16])
         );
  DFFPOSX1 \shiftxn_reg[15]  ( .D(shiftxn[23]), .CLK(clock), .Q(shiftxn[15])
         );
  DFFPOSX1 \shiftxn_reg[14]  ( .D(shiftxn[22]), .CLK(clock), .Q(shiftxn[14])
         );
  DFFPOSX1 \shiftxn_reg[13]  ( .D(shiftxn[21]), .CLK(clock), .Q(shiftxn[13])
         );
  DFFPOSX1 \shiftxn_reg[12]  ( .D(shiftxn[20]), .CLK(clock), .Q(shiftxn[12])
         );
  DFFPOSX1 \shiftxn_reg[11]  ( .D(shiftxn[19]), .CLK(clock), .Q(shiftxn[11])
         );
  DFFPOSX1 \shiftxn_reg[10]  ( .D(shiftxn[18]), .CLK(clock), .Q(shiftxn[10])
         );
  DFFPOSX1 \shiftxn_reg[9]  ( .D(shiftxn[17]), .CLK(clock), .Q(shiftxn[9]) );
  DFFPOSX1 \shiftxn_reg[8]  ( .D(shiftxn[16]), .CLK(clock), .Q(shiftxn[8]) );
  DFFPOSX1 \shiftxn_reg[7]  ( .D(shiftxn[15]), .CLK(clock), .Q(x_N_out[7]) );
  DFFPOSX1 \shiftxn_reg[6]  ( .D(shiftxn[14]), .CLK(clock), .Q(x_N_out[6]) );
  DFFPOSX1 \shiftxn_reg[5]  ( .D(shiftxn[13]), .CLK(clock), .Q(x_N_out[5]) );
  DFFPOSX1 \shiftxn_reg[4]  ( .D(shiftxn[12]), .CLK(clock), .Q(x_N_out[4]) );
  DFFPOSX1 \shiftxn_reg[3]  ( .D(shiftxn[11]), .CLK(clock), .Q(x_N_out[3]) );
  DFFPOSX1 \shiftxn_reg[2]  ( .D(shiftxn[10]), .CLK(clock), .Q(x_N_out[2]) );
  DFFPOSX1 \shiftxn_reg[1]  ( .D(shiftxn[9]), .CLK(clock), .Q(x_N_out[1]) );
  DFFPOSX1 \shiftxn_reg[0]  ( .D(shiftxn[8]), .CLK(clock), .Q(x_N_out[0]) );
  DFFPOSX1 \shiftue_reg[23]  ( .D(ue_in[7]), .CLK(clock), .Q(shiftue[23]) );
  DFFPOSX1 \shiftue_reg[22]  ( .D(ue_in[6]), .CLK(clock), .Q(shiftue[22]) );
  DFFPOSX1 \shiftue_reg[21]  ( .D(ue_in[5]), .CLK(clock), .Q(shiftue[21]) );
  DFFPOSX1 \shiftue_reg[20]  ( .D(ue_in[4]), .CLK(clock), .Q(shiftue[20]) );
  DFFPOSX1 \shiftue_reg[19]  ( .D(ue_in[3]), .CLK(clock), .Q(shiftue[19]) );
  DFFPOSX1 \shiftue_reg[18]  ( .D(ue_in[2]), .CLK(clock), .Q(shiftue[18]) );
  DFFPOSX1 \shiftue_reg[17]  ( .D(ue_in[1]), .CLK(clock), .Q(shiftue[17]) );
  DFFPOSX1 \shiftue_reg[16]  ( .D(ue_in[0]), .CLK(clock), .Q(shiftue[16]) );
  DFFPOSX1 \shiftue_reg[15]  ( .D(shiftue[23]), .CLK(clock), .Q(shiftue[15])
         );
  DFFPOSX1 \shiftue_reg[14]  ( .D(shiftue[22]), .CLK(clock), .Q(shiftue[14])
         );
  DFFPOSX1 \shiftue_reg[13]  ( .D(shiftue[21]), .CLK(clock), .Q(shiftue[13])
         );
  DFFPOSX1 \shiftue_reg[12]  ( .D(shiftue[20]), .CLK(clock), .Q(shiftue[12])
         );
  DFFPOSX1 \shiftue_reg[11]  ( .D(shiftue[19]), .CLK(clock), .Q(shiftue[11])
         );
  DFFPOSX1 \shiftue_reg[10]  ( .D(shiftue[18]), .CLK(clock), .Q(shiftue[10])
         );
  DFFPOSX1 \shiftue_reg[9]  ( .D(shiftue[17]), .CLK(clock), .Q(shiftue[9]) );
  DFFPOSX1 \shiftue_reg[8]  ( .D(shiftue[16]), .CLK(clock), .Q(shiftue[8]) );
  DFFPOSX1 \shiftue_reg[7]  ( .D(shiftue[15]), .CLK(clock), .Q(ue_out[7]) );
  DFFPOSX1 \shiftue_reg[6]  ( .D(shiftue[14]), .CLK(clock), .Q(ue_out[6]) );
  DFFPOSX1 \shiftue_reg[5]  ( .D(shiftue[13]), .CLK(clock), .Q(ue_out[5]) );
  DFFPOSX1 \shiftue_reg[4]  ( .D(shiftue[12]), .CLK(clock), .Q(ue_out[4]) );
  DFFPOSX1 \shiftue_reg[3]  ( .D(shiftue[11]), .CLK(clock), .Q(ue_out[3]) );
  DFFPOSX1 \shiftue_reg[2]  ( .D(shiftue[10]), .CLK(clock), .Q(ue_out[2]) );
  DFFPOSX1 \shiftue_reg[1]  ( .D(shiftue[9]), .CLK(clock), .Q(ue_out[1]) );
  DFFPOSX1 \shiftue_reg[0]  ( .D(shiftue[8]), .CLK(clock), .Q(ue_out[0]) );
endmodule


module shift_1d_16_sv_3 ( xin, xout, clock );
  input [15:0] xin;
  output [15:0] xout;
  input clock;


  DFFPOSX1 \shift_reg_reg[15]  ( .D(xin[15]), .CLK(clock), .Q(xout[15]) );
  DFFPOSX1 \shift_reg_reg[14]  ( .D(xin[14]), .CLK(clock), .Q(xout[14]) );
  DFFPOSX1 \shift_reg_reg[13]  ( .D(xin[13]), .CLK(clock), .Q(xout[13]) );
  DFFPOSX1 \shift_reg_reg[12]  ( .D(xin[12]), .CLK(clock), .Q(xout[12]) );
  DFFPOSX1 \shift_reg_reg[11]  ( .D(xin[11]), .CLK(clock), .Q(xout[11]) );
  DFFPOSX1 \shift_reg_reg[10]  ( .D(xin[10]), .CLK(clock), .Q(xout[10]) );
  DFFPOSX1 \shift_reg_reg[9]  ( .D(xin[9]), .CLK(clock), .Q(xout[9]) );
  DFFPOSX1 \shift_reg_reg[8]  ( .D(xin[8]), .CLK(clock), .Q(xout[8]) );
  DFFPOSX1 \shift_reg_reg[7]  ( .D(xin[7]), .CLK(clock), .Q(xout[7]) );
  DFFPOSX1 \shift_reg_reg[6]  ( .D(xin[6]), .CLK(clock), .Q(xout[6]) );
  DFFPOSX1 \shift_reg_reg[5]  ( .D(xin[5]), .CLK(clock), .Q(xout[5]) );
  DFFPOSX1 \shift_reg_reg[4]  ( .D(xin[4]), .CLK(clock), .Q(xout[4]) );
  DFFPOSX1 \shift_reg_reg[3]  ( .D(xin[3]), .CLK(clock), .Q(xout[3]) );
  DFFPOSX1 \shift_reg_reg[2]  ( .D(xin[2]), .CLK(clock), .Q(xout[2]) );
  DFFPOSX1 \shift_reg_reg[1]  ( .D(xin[1]), .CLK(clock), .Q(xout[1]) );
  DFFPOSX1 \shift_reg_reg[0]  ( .D(xin[0]), .CLK(clock), .Q(xout[0]) );
endmodule


module u_scaling_sv_3 ( d_in, d_out, clock );
  input [15:0] d_in;
  output [15:0] d_out;
  input clock;


  DFFPOSX1 \d_out_reg_reg[11]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[14]) );
  DFFPOSX1 \d_out_reg_reg[10]  ( .D(d_in[14]), .CLK(clock), .Q(d_out[10]) );
  DFFPOSX1 \d_out_reg_reg[9]  ( .D(d_in[13]), .CLK(clock), .Q(d_out[9]) );
  DFFPOSX1 \d_out_reg_reg[8]  ( .D(d_in[12]), .CLK(clock), .Q(d_out[8]) );
  DFFPOSX1 \d_out_reg_reg[7]  ( .D(d_in[11]), .CLK(clock), .Q(d_out[7]) );
  DFFPOSX1 \d_out_reg_reg[6]  ( .D(d_in[10]), .CLK(clock), .Q(d_out[6]) );
  DFFPOSX1 \d_out_reg_reg[5]  ( .D(d_in[9]), .CLK(clock), .Q(d_out[5]) );
  DFFPOSX1 \d_out_reg_reg[4]  ( .D(d_in[8]), .CLK(clock), .Q(d_out[4]) );
  DFFPOSX1 \d_out_reg_reg[3]  ( .D(d_in[7]), .CLK(clock), .Q(d_out[3]) );
  DFFPOSX1 \d_out_reg_reg[2]  ( .D(d_in[6]), .CLK(clock), .Q(d_out[2]) );
  DFFPOSX1 \d_out_reg_reg[1]  ( .D(d_in[5]), .CLK(clock), .Q(d_out[1]) );
  DFFPOSX1 \d_out_reg_reg[0]  ( .D(d_in[4]), .CLK(clock), .Q(d_out[0]) );
endmodule


module saturation_sv_3 ( d_in, d_out );
  input [15:0] d_in;
  output [15:0] d_out;
  wire   n2, n3, n4, n5, n6, n7;
  assign d_out[13] = d_in[15];
  assign d_out[14] = d_in[15];

  INVX1 U3 ( .A(n7), .Y(d_out[12]) );
  AND2X1 U4 ( .A(n5), .B(n3), .Y(n7) );
  BUFX2 U5 ( .A(n4), .Y(n2) );
  INVX1 U6 ( .A(d_in[15]), .Y(n5) );
  NOR3X1 U7 ( .A(d_in[13]), .B(d_in[12]), .C(d_in[14]), .Y(n3) );
  NAND3X1 U8 ( .A(d_in[14]), .B(d_in[13]), .C(d_in[12]), .Y(n4) );
  OAI21X1 U9 ( .A(n5), .B(n2), .C(d_out[12]), .Y(n6) );
  AND2X1 U10 ( .A(d_in[7]), .B(n6), .Y(d_out[7]) );
  AND2X1 U11 ( .A(d_in[1]), .B(n6), .Y(d_out[1]) );
  AND2X1 U12 ( .A(d_in[2]), .B(n6), .Y(d_out[2]) );
  AND2X1 U13 ( .A(d_in[3]), .B(n6), .Y(d_out[3]) );
  AND2X1 U14 ( .A(d_in[4]), .B(n6), .Y(d_out[4]) );
  AND2X1 U15 ( .A(d_in[5]), .B(n6), .Y(d_out[5]) );
  AND2X1 U16 ( .A(d_in[6]), .B(n6), .Y(d_out[6]) );
  AND2X1 U17 ( .A(d_in[8]), .B(n6), .Y(d_out[8]) );
  AND2X1 U18 ( .A(d_in[11]), .B(n6), .Y(d_out[11]) );
  AND2X1 U19 ( .A(d_in[10]), .B(n6), .Y(d_out[10]) );
  AND2X1 U20 ( .A(d_in[9]), .B(n6), .Y(d_out[9]) );
  AND2X1 U21 ( .A(d_in[0]), .B(n6), .Y(d_out[0]) );
endmodule


module add16_sv_3 ( d1_in, d2_in, d_out );
  input [15:0] d1_in;
  input [15:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_10/A[12] , \intadd_10/B[12] , \intadd_10/CI , \intadd_10/n13 ,
         \intadd_10/n12 , \intadd_10/n11 , \intadd_10/n10 , \intadd_10/n9 ,
         \intadd_10/n8 , \intadd_10/n7 , \intadd_10/n6 , \intadd_10/n5 ,
         \intadd_10/n4 , \intadd_10/n3 , \intadd_10/n2 , \intadd_10/n1 , n1,
         n2;
  assign d_out[15] = d_out[14];

  FAX1 \intadd_10/U14  ( .A(d2_in[1]), .B(d1_in[1]), .C(\intadd_10/CI ), .YC(
        \intadd_10/n13 ), .YS(d_out[1]) );
  FAX1 \intadd_10/U13  ( .A(d2_in[2]), .B(d1_in[2]), .C(\intadd_10/n13 ), .YC(
        \intadd_10/n12 ), .YS(d_out[2]) );
  FAX1 \intadd_10/U12  ( .A(d2_in[3]), .B(d1_in[3]), .C(\intadd_10/n12 ), .YC(
        \intadd_10/n11 ), .YS(d_out[3]) );
  FAX1 \intadd_10/U11  ( .A(d2_in[4]), .B(d1_in[4]), .C(\intadd_10/n11 ), .YC(
        \intadd_10/n10 ), .YS(d_out[4]) );
  FAX1 \intadd_10/U10  ( .A(d2_in[5]), .B(d1_in[5]), .C(\intadd_10/n10 ), .YC(
        \intadd_10/n9 ), .YS(d_out[5]) );
  FAX1 \intadd_10/U9  ( .A(d2_in[6]), .B(d1_in[6]), .C(\intadd_10/n9 ), .YC(
        \intadd_10/n8 ), .YS(d_out[6]) );
  FAX1 \intadd_10/U8  ( .A(d2_in[7]), .B(d1_in[7]), .C(\intadd_10/n8 ), .YC(
        \intadd_10/n7 ), .YS(d_out[7]) );
  FAX1 \intadd_10/U7  ( .A(d2_in[8]), .B(d1_in[8]), .C(\intadd_10/n7 ), .YC(
        \intadd_10/n6 ), .YS(d_out[8]) );
  FAX1 \intadd_10/U6  ( .A(d2_in[9]), .B(d1_in[9]), .C(\intadd_10/n6 ), .YC(
        \intadd_10/n5 ), .YS(d_out[9]) );
  FAX1 \intadd_10/U5  ( .A(d2_in[10]), .B(d1_in[10]), .C(\intadd_10/n5 ), .YC(
        \intadd_10/n4 ), .YS(d_out[10]) );
  FAX1 \intadd_10/U4  ( .A(d1_in[14]), .B(d2_in[11]), .C(\intadd_10/n4 ), .YC(
        \intadd_10/n3 ), .YS(d_out[11]) );
  FAX1 \intadd_10/U3  ( .A(d1_in[14]), .B(d2_in[12]), .C(\intadd_10/n3 ), .YC(
        \intadd_10/n2 ), .YS(d_out[12]) );
  FAX1 \intadd_10/U2  ( .A(\intadd_10/B[12] ), .B(\intadd_10/A[12] ), .C(
        \intadd_10/n2 ), .YC(\intadd_10/n1 ), .YS(d_out[13]) );
  AND2X1 U1 ( .A(d2_in[0]), .B(d1_in[0]), .Y(\intadd_10/CI ) );
  INVX1 U2 ( .A(d1_in[14]), .Y(\intadd_10/A[12] ) );
  INVX1 U3 ( .A(d2_in[14]), .Y(\intadd_10/B[12] ) );
  INVX1 U4 ( .A(\intadd_10/n1 ), .Y(d_out[14]) );
  INVX1 U5 ( .A(\intadd_10/CI ), .Y(n1) );
  OAI21X1 U6 ( .A(d2_in[0]), .B(d1_in[0]), .C(n1), .Y(n2) );
  INVX1 U7 ( .A(n2), .Y(d_out[0]) );
endmodule


module mul8_sv_7 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_14/A[9] , \intadd_14/A[7] , \intadd_14/A[6] ,
         \intadd_14/A[5] , \intadd_14/A[4] , \intadd_14/A[3] ,
         \intadd_14/A[2] , \intadd_14/A[1] , \intadd_14/A[0] ,
         \intadd_14/B[9] , \intadd_14/B[8] , \intadd_14/B[7] ,
         \intadd_14/B[6] , \intadd_14/B[5] , \intadd_14/B[4] ,
         \intadd_14/B[3] , \intadd_14/B[2] , \intadd_14/B[1] ,
         \intadd_14/B[0] , \intadd_14/CI , \intadd_14/SUM[0] , \intadd_14/n10 ,
         \intadd_14/n9 , \intadd_14/n8 , \intadd_14/n7 , \intadd_14/n6 ,
         \intadd_14/n5 , \intadd_14/n4 , \intadd_14/n3 , \intadd_14/n2 ,
         \intadd_14/n1 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227;

  FAX1 \intadd_14/U11  ( .A(n65), .B(n45), .C(n25), .YC(\intadd_14/n10 ), .YS(
        \intadd_14/SUM[0] ) );
  FAX1 \intadd_14/U10  ( .A(\intadd_14/B[1] ), .B(\intadd_14/A[1] ), .C(
        \intadd_14/n10 ), .YC(\intadd_14/n9 ), .YS(d_out[6]) );
  FAX1 \intadd_14/U9  ( .A(\intadd_14/B[2] ), .B(\intadd_14/A[2] ), .C(
        \intadd_14/n9 ), .YC(\intadd_14/n8 ), .YS(d_out[7]) );
  FAX1 \intadd_14/U8  ( .A(\intadd_14/B[3] ), .B(\intadd_14/A[3] ), .C(
        \intadd_14/n8 ), .YC(\intadd_14/n7 ), .YS(d_out[8]) );
  FAX1 \intadd_14/U7  ( .A(\intadd_14/B[4] ), .B(\intadd_14/A[4] ), .C(
        \intadd_14/n7 ), .YC(\intadd_14/n6 ), .YS(d_out[9]) );
  FAX1 \intadd_14/U6  ( .A(\intadd_14/B[5] ), .B(\intadd_14/A[5] ), .C(
        \intadd_14/n6 ), .YC(\intadd_14/n5 ), .YS(d_out[10]) );
  FAX1 \intadd_14/U5  ( .A(\intadd_14/B[6] ), .B(\intadd_14/A[6] ), .C(
        \intadd_14/n5 ), .YC(\intadd_14/n4 ), .YS(d_out[11]) );
  FAX1 \intadd_14/U4  ( .A(\intadd_14/B[7] ), .B(\intadd_14/A[7] ), .C(
        \intadd_14/n4 ), .YC(\intadd_14/n3 ), .YS(d_out[12]) );
  FAX1 \intadd_14/U3  ( .A(\intadd_14/B[8] ), .B(n77), .C(\intadd_14/n3 ), 
        .YC(\intadd_14/n2 ), .YS(d_out[13]) );
  FAX1 \intadd_14/U2  ( .A(n78), .B(n76), .C(\intadd_14/n2 ), .YC(
        \intadd_14/n1 ), .YS(d_out[14]) );
  AND2X1 U1 ( .A(n1), .B(n39), .Y(n186) );
  OR2X1 U2 ( .A(n69), .B(n40), .Y(n180) );
  AND2X1 U3 ( .A(n73), .B(n37), .Y(n130) );
  AND2X1 U4 ( .A(n27), .B(n90), .Y(n136) );
  AND2X1 U5 ( .A(n148), .B(n38), .Y(n154) );
  BUFX2 U6 ( .A(n95), .Y(n1) );
  BUFX2 U7 ( .A(n197), .Y(n2) );
  BUFX2 U8 ( .A(n213), .Y(n3) );
  INVX1 U9 ( .A(n100), .Y(n4) );
  OR2X1 U10 ( .A(d1_in[2]), .B(d1_in[1]), .Y(n100) );
  BUFX2 U11 ( .A(n122), .Y(n5) );
  BUFX2 U12 ( .A(n166), .Y(n6) );
  BUFX2 U13 ( .A(n172), .Y(n7) );
  BUFX2 U14 ( .A(n196), .Y(n8) );
  BUFX2 U15 ( .A(n212), .Y(n9) );
  BUFX2 U16 ( .A(n137), .Y(n10) );
  BUFX2 U17 ( .A(n176), .Y(n11) );
  BUFX2 U18 ( .A(n182), .Y(n12) );
  INVX1 U19 ( .A(n121), .Y(n13) );
  AND2X1 U20 ( .A(d1_in[1]), .B(n167), .Y(n121) );
  INVX1 U21 ( .A(n165), .Y(n14) );
  AND2X1 U22 ( .A(d1_in[1]), .B(n208), .Y(n165) );
  INVX1 U23 ( .A(n195), .Y(n15) );
  AND2X1 U24 ( .A(d1_in[1]), .B(n194), .Y(n195) );
  INVX1 U25 ( .A(n211), .Y(n16) );
  AND2X1 U26 ( .A(d1_in[1]), .B(n209), .Y(n211) );
  BUFX2 U27 ( .A(n203), .Y(n17) );
  INVX1 U28 ( .A(n145), .Y(n18) );
  AND2X1 U29 ( .A(d2_in[0]), .B(n136), .Y(n145) );
  INVX1 U30 ( .A(n185), .Y(n19) );
  AND2X1 U31 ( .A(d2_in[0]), .B(n184), .Y(n185) );
  INVX1 U32 ( .A(n191), .Y(n20) );
  AND2X1 U33 ( .A(n202), .B(d2_in[0]), .Y(n191) );
  INVX1 U34 ( .A(n90), .Y(n21) );
  OR2X1 U35 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n90) );
  BUFX2 U36 ( .A(n104), .Y(n22) );
  BUFX2 U37 ( .A(n127), .Y(n23) );
  BUFX2 U38 ( .A(n149), .Y(n24) );
  BUFX2 U39 ( .A(\intadd_14/CI ), .Y(n25) );
  INVX1 U40 ( .A(n224), .Y(n26) );
  AND2X1 U41 ( .A(n217), .B(n83), .Y(n224) );
  INVX1 U42 ( .A(n91), .Y(n27) );
  AND2X1 U43 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n91) );
  INVX1 U44 ( .A(n29), .Y(n28) );
  BUFX2 U45 ( .A(n118), .Y(n29) );
  INVX1 U46 ( .A(n31), .Y(n30) );
  BUFX2 U47 ( .A(n144), .Y(n31) );
  INVX1 U48 ( .A(n33), .Y(n32) );
  BUFX2 U49 ( .A(n177), .Y(n33) );
  BUFX2 U50 ( .A(n183), .Y(n34) );
  INVX1 U51 ( .A(n134), .Y(n35) );
  AND2X1 U52 ( .A(n94), .B(n93), .Y(n134) );
  BUFX2 U53 ( .A(n139), .Y(n36) );
  BUFX2 U54 ( .A(n132), .Y(n37) );
  BUFX2 U55 ( .A(n147), .Y(n38) );
  BUFX2 U56 ( .A(n187), .Y(n39) );
  BUFX2 U57 ( .A(n181), .Y(n40) );
  BUFX2 U58 ( .A(n106), .Y(n41) );
  BUFX2 U59 ( .A(n115), .Y(n42) );
  BUFX2 U60 ( .A(n150), .Y(n43) );
  BUFX2 U61 ( .A(n173), .Y(n44) );
  BUFX2 U62 ( .A(\intadd_14/A[0] ), .Y(n45) );
  INVX1 U63 ( .A(n128), .Y(n46) );
  OR2X1 U64 ( .A(n86), .B(n66), .Y(n128) );
  BUFX2 U65 ( .A(n199), .Y(n47) );
  BUFX2 U66 ( .A(n92), .Y(n48) );
  BUFX2 U67 ( .A(n103), .Y(n49) );
  BUFX2 U68 ( .A(n99), .Y(n50) );
  BUFX2 U69 ( .A(n102), .Y(n51) );
  BUFX2 U70 ( .A(n109), .Y(n52) );
  BUFX2 U71 ( .A(n110), .Y(n53) );
  BUFX2 U72 ( .A(n119), .Y(n54) );
  BUFX2 U73 ( .A(n124), .Y(n55) );
  BUFX2 U74 ( .A(n138), .Y(n56) );
  BUFX2 U75 ( .A(n135), .Y(n57) );
  BUFX2 U76 ( .A(n164), .Y(n58) );
  BUFX2 U77 ( .A(n179), .Y(n59) );
  BUFX2 U78 ( .A(n97), .Y(n60) );
  BUFX2 U79 ( .A(n107), .Y(n61) );
  BUFX2 U80 ( .A(n116), .Y(n62) );
  BUFX2 U81 ( .A(n129), .Y(n63) );
  BUFX2 U82 ( .A(n151), .Y(n64) );
  BUFX2 U83 ( .A(\intadd_14/B[0] ), .Y(n65) );
  BUFX2 U84 ( .A(n153), .Y(n66) );
  INVX1 U85 ( .A(n68), .Y(n67) );
  BUFX2 U86 ( .A(n98), .Y(n68) );
  INVX1 U87 ( .A(n186), .Y(n69) );
  INVX1 U88 ( .A(n169), .Y(n70) );
  AND2X1 U89 ( .A(n168), .B(d1_in[0]), .Y(n169) );
  INVX1 U90 ( .A(n217), .Y(n71) );
  AND2X1 U91 ( .A(n87), .B(n74), .Y(n217) );
  BUFX2 U92 ( .A(n108), .Y(n72) );
  BUFX2 U93 ( .A(n131), .Y(n73) );
  BUFX2 U94 ( .A(n206), .Y(n74) );
  BUFX2 U95 ( .A(n112), .Y(n75) );
  BUFX2 U96 ( .A(\intadd_14/A[9] ), .Y(n76) );
  INVX1 U97 ( .A(n78), .Y(n77) );
  BUFX2 U98 ( .A(\intadd_14/B[9] ), .Y(n78) );
  OR2X1 U99 ( .A(n168), .B(d2_in[6]), .Y(n123) );
  INVX1 U100 ( .A(n123), .Y(n79) );
  BUFX2 U101 ( .A(n190), .Y(n80) );
  BUFX2 U102 ( .A(n162), .Y(n81) );
  INVX1 U103 ( .A(n180), .Y(n82) );
  BUFX2 U104 ( .A(n218), .Y(n83) );
  INVX1 U105 ( .A(n130), .Y(n84) );
  BUFX2 U106 ( .A(n96), .Y(n85) );
  INVX1 U107 ( .A(n154), .Y(n86) );
  BUFX2 U108 ( .A(n207), .Y(n87) );
  INVX1 U109 ( .A(n136), .Y(n88) );
  OR2X1 U110 ( .A(d1_in[7]), .B(n21), .Y(n89) );
  INVX1 U111 ( .A(n89), .Y(n146) );
  AND2X1 U112 ( .A(d1_in[7]), .B(n27), .Y(n148) );
  INVX1 U113 ( .A(d2_in[7]), .Y(n117) );
  AOI22X1 U114 ( .A(d2_in[7]), .B(n146), .C(n148), .D(n117), .Y(
        \intadd_14/A[9] ) );
  INVX1 U115 ( .A(d2_in[6]), .Y(n120) );
  AOI22X1 U116 ( .A(d2_in[6]), .B(n146), .C(n148), .D(n120), .Y(n92) );
  AOI22X1 U117 ( .A(n136), .B(n76), .C(n48), .D(n88), .Y(\intadd_14/B[9] ) );
  INVX1 U118 ( .A(d2_in[5]), .Y(n167) );
  AOI22X1 U119 ( .A(d2_in[5]), .B(n146), .C(n148), .D(n167), .Y(n103) );
  AOI22X1 U120 ( .A(n136), .B(n48), .C(n49), .D(n88), .Y(n97) );
  INVX1 U121 ( .A(d1_in[5]), .Y(n94) );
  OR2X1 U122 ( .A(d1_in[3]), .B(d1_in[4]), .Y(n93) );
  AOI21X1 U123 ( .A(d1_in[3]), .B(d1_in[4]), .C(n94), .Y(n95) );
  INVX1 U124 ( .A(n1), .Y(n133) );
  AOI22X1 U125 ( .A(d2_in[7]), .B(n134), .C(n1), .D(n117), .Y(n96) );
  INVX1 U126 ( .A(d1_in[3]), .Y(n101) );
  MUX2X1 U127 ( .B(d1_in[3]), .A(n101), .S(d1_in[4]), .Y(n175) );
  INVX1 U128 ( .A(n175), .Y(n184) );
  AOI22X1 U129 ( .A(d2_in[6]), .B(n134), .C(n1), .D(n120), .Y(n99) );
  AOI22X1 U130 ( .A(n184), .B(n85), .C(n50), .D(n175), .Y(n98) );
  FAX1 U131 ( .A(n60), .B(n85), .C(n68), .YC(\intadd_14/B[8] ), .YS(
        \intadd_14/A[7] ) );
  INVX1 U132 ( .A(d2_in[4]), .Y(n170) );
  AOI22X1 U133 ( .A(d2_in[4]), .B(n146), .C(n148), .D(n170), .Y(n102) );
  INVX1 U134 ( .A(d2_in[3]), .Y(n208) );
  AOI22X1 U135 ( .A(d2_in[3]), .B(n146), .C(n148), .D(n208), .Y(n109) );
  AOI22X1 U136 ( .A(n136), .B(n51), .C(n52), .D(n88), .Y(n107) );
  AOI22X1 U137 ( .A(d2_in[5]), .B(n134), .C(n1), .D(n167), .Y(n110) );
  AOI22X1 U138 ( .A(n184), .B(n50), .C(n53), .D(n175), .Y(n106) );
  OR2X1 U139 ( .A(d1_in[3]), .B(n4), .Y(n205) );
  INVX1 U140 ( .A(n205), .Y(n192) );
  AOI21X1 U141 ( .A(d1_in[2]), .B(d1_in[1]), .C(n101), .Y(n207) );
  AOI22X1 U142 ( .A(d2_in[7]), .B(n192), .C(n87), .D(n117), .Y(n108) );
  AOI22X1 U143 ( .A(n136), .B(n49), .C(n51), .D(n88), .Y(n104) );
  FAX1 U144 ( .A(n67), .B(n105), .C(n22), .YC(\intadd_14/B[7] ), .YS(
        \intadd_14/A[6] ) );
  FAX1 U145 ( .A(n61), .B(n41), .C(n72), .YC(n105), .YS(n113) );
  INVX1 U146 ( .A(d1_in[1]), .Y(n168) );
  MUX2X1 U147 ( .B(d1_in[1]), .A(n168), .S(d1_in[2]), .Y(n201) );
  INVX1 U148 ( .A(n201), .Y(n202) );
  INVX1 U149 ( .A(n87), .Y(n204) );
  AOI22X1 U150 ( .A(d2_in[6]), .B(n205), .C(n204), .D(n120), .Y(n118) );
  AOI22X1 U151 ( .A(n202), .B(n72), .C(n28), .D(n201), .Y(n112) );
  INVX1 U152 ( .A(d2_in[2]), .Y(n209) );
  AOI22X1 U153 ( .A(d2_in[2]), .B(n146), .C(n148), .D(n209), .Y(n119) );
  AOI22X1 U154 ( .A(n136), .B(n52), .C(n54), .D(n88), .Y(n116) );
  AOI22X1 U155 ( .A(d2_in[4]), .B(n134), .C(n1), .D(n170), .Y(n124) );
  AOI22X1 U156 ( .A(n184), .B(n53), .C(n55), .D(n175), .Y(n115) );
  INVX1 U157 ( .A(n75), .Y(n114) );
  FAX1 U158 ( .A(n113), .B(n75), .C(n111), .YC(\intadd_14/B[6] ), .YS(
        \intadd_14/A[5] ) );
  FAX1 U159 ( .A(n62), .B(n42), .C(n114), .YC(n111), .YS(n126) );
  AOI22X1 U160 ( .A(d2_in[7]), .B(n70), .C(n168), .D(n117), .Y(n131) );
  AOI22X1 U161 ( .A(d2_in[5]), .B(n205), .C(n204), .D(n167), .Y(n139) );
  AOI22X1 U162 ( .A(n202), .B(n29), .C(n36), .D(n201), .Y(n132) );
  INVX1 U163 ( .A(d2_in[1]), .Y(n194) );
  AOI22X1 U164 ( .A(d2_in[1]), .B(n146), .C(n148), .D(n194), .Y(n138) );
  AOI22X1 U165 ( .A(n136), .B(n54), .C(n56), .D(n88), .Y(n129) );
  AOI22X1 U166 ( .A(d2_in[6]), .B(n169), .C(d1_in[1]), .D(n120), .Y(n122) );
  INVX1 U167 ( .A(d1_in[0]), .Y(n210) );
  AOI22X1 U168 ( .A(d1_in[0]), .B(n5), .C(n13), .D(n210), .Y(n147) );
  AOI22X1 U169 ( .A(d1_in[0]), .B(n73), .C(n79), .D(n210), .Y(n153) );
  AOI22X1 U170 ( .A(d2_in[3]), .B(n134), .C(n1), .D(n208), .Y(n135) );
  AOI22X1 U171 ( .A(n184), .B(n55), .C(n57), .D(n175), .Y(n127) );
  FAX1 U172 ( .A(n126), .B(n84), .C(n125), .YC(\intadd_14/B[5] ), .YS(
        \intadd_14/A[4] ) );
  FAX1 U173 ( .A(n63), .B(n46), .C(n23), .YC(n125), .YS(n143) );
  OAI21X1 U174 ( .A(n37), .B(n73), .C(n84), .Y(n142) );
  AOI22X1 U175 ( .A(d2_in[2]), .B(n35), .C(n133), .D(n209), .Y(n144) );
  AOI22X1 U176 ( .A(n184), .B(n57), .C(n30), .D(n175), .Y(n151) );
  INVX1 U177 ( .A(d2_in[0]), .Y(n193) );
  AOI22X1 U178 ( .A(d2_in[0]), .B(n146), .C(n148), .D(n193), .Y(n137) );
  AOI22X1 U179 ( .A(n136), .B(n56), .C(n10), .D(n88), .Y(n150) );
  INVX1 U180 ( .A(n36), .Y(n140) );
  AOI22X1 U181 ( .A(d2_in[4]), .B(n192), .C(n87), .D(n170), .Y(n164) );
  AOI22X1 U182 ( .A(n202), .B(n140), .C(n58), .D(n201), .Y(n149) );
  FAX1 U183 ( .A(n143), .B(n142), .C(n141), .YC(\intadd_14/B[4] ), .YS(
        \intadd_14/A[3] ) );
  AOI22X1 U184 ( .A(d2_in[1]), .B(n134), .C(n1), .D(n194), .Y(n177) );
  AOI22X1 U185 ( .A(n184), .B(n31), .C(n32), .D(n175), .Y(n162) );
  MUX2X1 U186 ( .B(n146), .A(n148), .S(n18), .Y(n161) );
  OAI21X1 U187 ( .A(n148), .B(n38), .C(n86), .Y(n160) );
  FAX1 U188 ( .A(n64), .B(n43), .C(n24), .YC(n141), .YS(n152) );
  INVX1 U189 ( .A(n152), .Y(n157) );
  MUX2X1 U190 ( .B(n86), .A(n154), .S(n66), .Y(n156) );
  INVX1 U191 ( .A(n155), .Y(\intadd_14/B[3] ) );
  FAX1 U192 ( .A(n158), .B(n157), .C(n156), .YC(n155), .YS(n159) );
  INVX1 U193 ( .A(n159), .Y(\intadd_14/A[2] ) );
  FAX1 U194 ( .A(n81), .B(n161), .C(n160), .YC(n158), .YS(n163) );
  INVX1 U195 ( .A(n163), .Y(n174) );
  AOI22X1 U196 ( .A(d2_in[3]), .B(n192), .C(n87), .D(n208), .Y(n179) );
  AOI22X1 U197 ( .A(n202), .B(n58), .C(n59), .D(n201), .Y(n173) );
  AOI22X1 U198 ( .A(d2_in[4]), .B(n169), .C(d1_in[1]), .D(n170), .Y(n166) );
  AOI22X1 U199 ( .A(d1_in[0]), .B(n6), .C(n14), .D(n210), .Y(n187) );
  AOI22X1 U200 ( .A(d2_in[5]), .B(n70), .C(n168), .D(n167), .Y(n172) );
  AND2X1 U201 ( .A(n170), .B(d1_in[1]), .Y(n171) );
  AOI22X1 U202 ( .A(d1_in[0]), .B(n7), .C(n171), .D(n210), .Y(n181) );
  FAX1 U203 ( .A(n174), .B(n44), .C(n82), .YC(\intadd_14/B[2] ), .YS(
        \intadd_14/A[1] ) );
  AOI22X1 U204 ( .A(d2_in[0]), .B(n134), .C(n1), .D(n193), .Y(n176) );
  AOI22X1 U205 ( .A(n184), .B(n33), .C(n11), .D(n175), .Y(\intadd_14/A[0] ) );
  AOI22X1 U206 ( .A(d2_in[2]), .B(n205), .C(n204), .D(n209), .Y(n183) );
  INVX1 U207 ( .A(n34), .Y(n178) );
  AOI22X1 U208 ( .A(n202), .B(n59), .C(n178), .D(n201), .Y(\intadd_14/B[0] )
         );
  AOI21X1 U209 ( .A(n69), .B(n40), .C(n82), .Y(\intadd_14/CI ) );
  INVX1 U210 ( .A(\intadd_14/SUM[0] ), .Y(n222) );
  AOI22X1 U211 ( .A(d2_in[1]), .B(n205), .C(n204), .D(n194), .Y(n182) );
  AOI22X1 U212 ( .A(n202), .B(n34), .C(n12), .D(n201), .Y(n190) );
  MUX2X1 U213 ( .B(n134), .A(n1), .S(n19), .Y(n189) );
  OAI21X1 U214 ( .A(n1), .B(n39), .C(n69), .Y(n188) );
  FAX1 U215 ( .A(n80), .B(n189), .C(n188), .YC(n221), .YS(n226) );
  MUX2X1 U216 ( .B(n192), .A(n87), .S(n20), .Y(n200) );
  NAND3X1 U217 ( .A(d1_in[1]), .B(n193), .C(n194), .Y(n199) );
  AOI22X1 U218 ( .A(d2_in[2]), .B(n169), .C(d1_in[1]), .D(n209), .Y(n196) );
  AOI22X1 U219 ( .A(d1_in[0]), .B(n8), .C(n15), .D(n210), .Y(n206) );
  AOI22X1 U220 ( .A(n200), .B(n47), .C(n87), .D(n74), .Y(n197) );
  OAI21X1 U221 ( .A(n87), .B(n74), .C(n2), .Y(n198) );
  OAI21X1 U222 ( .A(n200), .B(n47), .C(n198), .Y(n216) );
  AOI22X1 U223 ( .A(n202), .B(d2_in[1]), .C(d2_in[0]), .D(n201), .Y(n203) );
  MUX2X1 U224 ( .B(n205), .A(n204), .S(n17), .Y(n215) );
  AOI22X1 U225 ( .A(d2_in[3]), .B(n169), .C(d1_in[1]), .D(n208), .Y(n212) );
  AOI22X1 U226 ( .A(d1_in[0]), .B(n9), .C(n16), .D(n210), .Y(n218) );
  AOI22X1 U227 ( .A(n216), .B(n215), .C(n71), .D(n83), .Y(n213) );
  OAI21X1 U228 ( .A(n71), .B(n83), .C(n3), .Y(n214) );
  OAI21X1 U229 ( .A(n216), .B(n215), .C(n214), .Y(n225) );
  INVX1 U230 ( .A(n219), .Y(\intadd_14/B[1] ) );
  FAX1 U231 ( .A(n222), .B(n221), .C(n220), .YC(n219), .YS(n223) );
  INVX1 U232 ( .A(n223), .Y(d_out[5]) );
  FAX1 U233 ( .A(n226), .B(n225), .C(n26), .YC(n220), .YS(n227) );
  INVX1 U234 ( .A(n227), .Y(d_out[4]) );
  INVX1 U235 ( .A(\intadd_14/n1 ), .Y(d_out[15]) );
endmodule


module mul8_sv_6 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_18/A[7] , \intadd_18/A[6] , \intadd_18/A[5] ,
         \intadd_18/A[4] , \intadd_18/A[3] , \intadd_18/A[2] ,
         \intadd_18/A[1] , \intadd_18/A[0] , \intadd_18/B[7] ,
         \intadd_18/B[6] , \intadd_18/B[5] , \intadd_18/B[4] ,
         \intadd_18/B[3] , \intadd_18/B[2] , \intadd_18/B[1] ,
         \intadd_18/B[0] , \intadd_18/CI , \intadd_18/SUM[0] , \intadd_18/n9 ,
         \intadd_18/n8 , \intadd_18/n7 , \intadd_18/n6 , \intadd_18/n5 ,
         \intadd_18/n4 , \intadd_18/n3 , \intadd_18/n2 , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231;

  FAX1 \intadd_18/U10  ( .A(n66), .B(n45), .C(n27), .YC(\intadd_18/n9 ), .YS(
        \intadd_18/SUM[0] ) );
  FAX1 \intadd_18/U9  ( .A(n82), .B(\intadd_18/A[1] ), .C(\intadd_18/n9 ), 
        .YC(\intadd_18/n8 ), .YS(d_out[6]) );
  FAX1 \intadd_18/U8  ( .A(\intadd_18/B[2] ), .B(\intadd_18/A[2] ), .C(
        \intadd_18/n8 ), .YC(\intadd_18/n7 ), .YS(d_out[7]) );
  FAX1 \intadd_18/U7  ( .A(\intadd_18/B[3] ), .B(\intadd_18/A[3] ), .C(
        \intadd_18/n7 ), .YC(\intadd_18/n6 ), .YS(d_out[8]) );
  FAX1 \intadd_18/U6  ( .A(\intadd_18/B[4] ), .B(\intadd_18/A[4] ), .C(
        \intadd_18/n6 ), .YC(\intadd_18/n5 ), .YS(d_out[9]) );
  FAX1 \intadd_18/U5  ( .A(\intadd_18/B[5] ), .B(\intadd_18/A[5] ), .C(
        \intadd_18/n5 ), .YC(\intadd_18/n4 ), .YS(d_out[10]) );
  FAX1 \intadd_18/U4  ( .A(\intadd_18/B[6] ), .B(\intadd_18/A[6] ), .C(
        \intadd_18/n4 ), .YC(\intadd_18/n3 ), .YS(d_out[11]) );
  FAX1 \intadd_18/U3  ( .A(\intadd_18/B[7] ), .B(\intadd_18/A[7] ), .C(
        \intadd_18/n3 ), .YC(\intadd_18/n2 ), .YS(d_out[12]) );
  OR2X1 U1 ( .A(n39), .B(n40), .Y(n182) );
  AND2X1 U2 ( .A(n76), .B(n36), .Y(n136) );
  OR2X1 U3 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n92) );
  AND2X1 U4 ( .A(n218), .B(n38), .Y(n219) );
  AND2X1 U5 ( .A(n228), .B(n3), .Y(\intadd_18/B[1] ) );
  AND2X1 U6 ( .A(n23), .B(n92), .Y(n140) );
  AND2X1 U7 ( .A(d1_in[7]), .B(n23), .Y(n98) );
  OR2X1 U8 ( .A(d1_in[3]), .B(n4), .Y(n202) );
  AND2X1 U9 ( .A(n2), .B(n59), .Y(n221) );
  AND2X1 U10 ( .A(n98), .B(n37), .Y(n157) );
  BUFX2 U11 ( .A(n97), .Y(n1) );
  BUFX2 U12 ( .A(n108), .Y(n2) );
  INVX1 U13 ( .A(n227), .Y(n3) );
  AND2X1 U14 ( .A(\intadd_18/SUM[0] ), .B(n226), .Y(n227) );
  INVX1 U15 ( .A(n106), .Y(n4) );
  OR2X1 U16 ( .A(d1_in[2]), .B(d1_in[1]), .Y(n106) );
  BUFX2 U17 ( .A(n101), .Y(n5) );
  BUFX2 U18 ( .A(n127), .Y(n6) );
  BUFX2 U19 ( .A(n170), .Y(n7) );
  BUFX2 U20 ( .A(n174), .Y(n8) );
  BUFX2 U21 ( .A(n186), .Y(n9) );
  BUFX2 U22 ( .A(n199), .Y(n10) );
  BUFX2 U23 ( .A(n141), .Y(n11) );
  BUFX2 U24 ( .A(n179), .Y(n12) );
  BUFX2 U25 ( .A(n188), .Y(n13) );
  BUFX2 U26 ( .A(n213), .Y(n14) );
  INVX1 U27 ( .A(n126), .Y(n15) );
  AND2X1 U28 ( .A(d1_in[1]), .B(n171), .Y(n126) );
  INVX1 U29 ( .A(n169), .Y(n16) );
  AND2X1 U30 ( .A(d1_in[1]), .B(n195), .Y(n169) );
  INVX1 U31 ( .A(n173), .Y(n17) );
  OR2X1 U32 ( .A(d2_in[4]), .B(n204), .Y(n173) );
  INVX1 U33 ( .A(n198), .Y(n18) );
  AND2X1 U34 ( .A(d1_in[1]), .B(n196), .Y(n198) );
  BUFX2 U35 ( .A(n201), .Y(n19) );
  INVX1 U36 ( .A(n150), .Y(n20) );
  AND2X1 U37 ( .A(d2_in[0]), .B(n140), .Y(n150) );
  INVX1 U38 ( .A(n192), .Y(n21) );
  AND2X1 U39 ( .A(d2_in[0]), .B(n191), .Y(n192) );
  BUFX2 U40 ( .A(n102), .Y(n22) );
  INVX1 U41 ( .A(n94), .Y(n23) );
  AND2X1 U42 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n94) );
  BUFX2 U43 ( .A(n111), .Y(n24) );
  BUFX2 U44 ( .A(n133), .Y(n25) );
  BUFX2 U45 ( .A(n152), .Y(n26) );
  BUFX2 U46 ( .A(\intadd_18/CI ), .Y(n27) );
  INVX1 U47 ( .A(n29), .Y(n28) );
  BUFX2 U48 ( .A(n124), .Y(n29) );
  INVX1 U49 ( .A(n31), .Y(n30) );
  BUFX2 U50 ( .A(n149), .Y(n31) );
  BUFX2 U51 ( .A(n180), .Y(n32) );
  INVX1 U52 ( .A(n34), .Y(n33) );
  BUFX2 U53 ( .A(n100), .Y(n34) );
  BUFX2 U54 ( .A(n143), .Y(n35) );
  BUFX2 U55 ( .A(n138), .Y(n36) );
  BUFX2 U56 ( .A(n151), .Y(n37) );
  BUFX2 U57 ( .A(n217), .Y(n38) );
  INVX1 U58 ( .A(n184), .Y(n39) );
  AND2X1 U59 ( .A(n1), .B(n60), .Y(n184) );
  BUFX2 U60 ( .A(n183), .Y(n40) );
  BUFX2 U61 ( .A(n113), .Y(n41) );
  BUFX2 U62 ( .A(n121), .Y(n42) );
  BUFX2 U63 ( .A(n153), .Y(n43) );
  BUFX2 U64 ( .A(n175), .Y(n44) );
  BUFX2 U65 ( .A(\intadd_18/A[0] ), .Y(n45) );
  OR2X1 U66 ( .A(n89), .B(n68), .Y(n134) );
  INVX1 U67 ( .A(n134), .Y(n46) );
  BUFX2 U68 ( .A(n110), .Y(n47) );
  BUFX2 U69 ( .A(n105), .Y(n48) );
  BUFX2 U70 ( .A(n109), .Y(n49) );
  BUFX2 U71 ( .A(n116), .Y(n50) );
  BUFX2 U72 ( .A(n117), .Y(n51) );
  BUFX2 U73 ( .A(n125), .Y(n52) );
  BUFX2 U74 ( .A(n130), .Y(n53) );
  BUFX2 U75 ( .A(n142), .Y(n54) );
  BUFX2 U76 ( .A(n139), .Y(n55) );
  BUFX2 U77 ( .A(n167), .Y(n56) );
  BUFX2 U78 ( .A(n181), .Y(n57) );
  BUFX2 U79 ( .A(n189), .Y(n58) );
  BUFX2 U80 ( .A(n203), .Y(n59) );
  BUFX2 U81 ( .A(n190), .Y(n60) );
  BUFX2 U82 ( .A(n231), .Y(n61) );
  BUFX2 U83 ( .A(n114), .Y(n62) );
  BUFX2 U84 ( .A(n122), .Y(n63) );
  BUFX2 U85 ( .A(n135), .Y(n64) );
  BUFX2 U86 ( .A(n154), .Y(n65) );
  BUFX2 U87 ( .A(\intadd_18/B[0] ), .Y(n66) );
  BUFX2 U88 ( .A(n224), .Y(n67) );
  BUFX2 U89 ( .A(n156), .Y(n68) );
  INVX1 U90 ( .A(n221), .Y(n69) );
  INVX1 U91 ( .A(n71), .Y(n70) );
  BUFX2 U92 ( .A(n229), .Y(n71) );
  INVX1 U93 ( .A(n194), .Y(n72) );
  AND2X1 U94 ( .A(n96), .B(n95), .Y(n194) );
  INVX1 U95 ( .A(n172), .Y(n73) );
  AND2X1 U96 ( .A(n204), .B(d1_in[0]), .Y(n172) );
  INVX1 U97 ( .A(n98), .Y(n74) );
  BUFX2 U98 ( .A(n115), .Y(n75) );
  BUFX2 U99 ( .A(n137), .Y(n76) );
  INVX1 U100 ( .A(n78), .Y(n77) );
  BUFX2 U101 ( .A(n119), .Y(n78) );
  INVX1 U102 ( .A(n219), .Y(n79) );
  AND2X1 U103 ( .A(d1_in[1]), .B(n187), .Y(n185) );
  INVX1 U104 ( .A(n185), .Y(n80) );
  AND2X1 U105 ( .A(n205), .B(d2_in[0]), .Y(n206) );
  INVX1 U106 ( .A(n206), .Y(n81) );
  INVX1 U107 ( .A(\intadd_18/B[1] ), .Y(n82) );
  BUFX2 U108 ( .A(n165), .Y(n83) );
  BUFX2 U109 ( .A(n216), .Y(n84) );
  INVX1 U110 ( .A(n182), .Y(n85) );
  AND2X1 U111 ( .A(n93), .B(n92), .Y(n99) );
  INVX1 U112 ( .A(n99), .Y(n86) );
  INVX1 U113 ( .A(n136), .Y(n87) );
  BUFX2 U114 ( .A(n230), .Y(n88) );
  INVX1 U115 ( .A(n157), .Y(n89) );
  INVX1 U116 ( .A(n202), .Y(n90) );
  INVX1 U117 ( .A(n140), .Y(n91) );
  INVX1 U118 ( .A(d1_in[7]), .Y(n93) );
  INVX1 U119 ( .A(d2_in[6]), .Y(n128) );
  AOI22X1 U120 ( .A(d2_in[6]), .B(n86), .C(n74), .D(n128), .Y(n100) );
  INVX1 U121 ( .A(d2_in[5]), .Y(n171) );
  AOI22X1 U122 ( .A(d2_in[5]), .B(n99), .C(n98), .D(n171), .Y(n110) );
  AOI22X1 U123 ( .A(n140), .B(n33), .C(n47), .D(n91), .Y(n231) );
  INVX1 U124 ( .A(d1_in[5]), .Y(n96) );
  OR2X1 U125 ( .A(d1_in[3]), .B(d1_in[4]), .Y(n95) );
  AOI21X1 U126 ( .A(d1_in[3]), .B(d1_in[4]), .C(n96), .Y(n97) );
  INVX1 U127 ( .A(n1), .Y(n193) );
  INVX1 U128 ( .A(d2_in[7]), .Y(n123) );
  AOI22X1 U129 ( .A(d2_in[7]), .B(n194), .C(n1), .D(n123), .Y(n230) );
  INVX1 U130 ( .A(d1_in[3]), .Y(n107) );
  MUX2X1 U131 ( .B(n107), .A(d1_in[3]), .S(d1_in[4]), .Y(n191) );
  AOI22X1 U132 ( .A(d2_in[6]), .B(n194), .C(n1), .D(n128), .Y(n105) );
  INVX1 U133 ( .A(n191), .Y(n178) );
  AOI22X1 U134 ( .A(n191), .B(n88), .C(n48), .D(n178), .Y(n229) );
  AOI22X1 U135 ( .A(d2_in[7]), .B(n86), .C(n74), .D(n123), .Y(n101) );
  AOI22X1 U136 ( .A(n140), .B(n5), .C(n34), .D(n91), .Y(n102) );
  XOR2X1 U137 ( .A(n103), .B(n22), .Y(n104) );
  XOR2X1 U138 ( .A(\intadd_18/n2 ), .B(n104), .Y(d_out[13]) );
  INVX1 U139 ( .A(d2_in[4]), .Y(n168) );
  AOI22X1 U140 ( .A(d2_in[4]), .B(n99), .C(n98), .D(n168), .Y(n109) );
  INVX1 U141 ( .A(d2_in[3]), .Y(n195) );
  AOI22X1 U142 ( .A(d2_in[3]), .B(n99), .C(n98), .D(n195), .Y(n116) );
  AOI22X1 U143 ( .A(n140), .B(n49), .C(n50), .D(n91), .Y(n114) );
  AOI22X1 U144 ( .A(d2_in[5]), .B(n194), .C(n1), .D(n171), .Y(n117) );
  AOI22X1 U145 ( .A(n191), .B(n48), .C(n51), .D(n178), .Y(n113) );
  AOI21X1 U146 ( .A(d1_in[2]), .B(d1_in[1]), .C(n107), .Y(n108) );
  INVX1 U147 ( .A(n2), .Y(n207) );
  AOI22X1 U148 ( .A(d2_in[7]), .B(n90), .C(n2), .D(n123), .Y(n115) );
  AOI22X1 U149 ( .A(n140), .B(n47), .C(n49), .D(n91), .Y(n111) );
  FAX1 U150 ( .A(n70), .B(n112), .C(n24), .YC(\intadd_18/B[7] ), .YS(
        \intadd_18/A[6] ) );
  FAX1 U151 ( .A(n62), .B(n41), .C(n75), .YC(n112), .YS(n120) );
  INVX1 U152 ( .A(d1_in[1]), .Y(n204) );
  MUX2X1 U153 ( .B(n204), .A(d1_in[1]), .S(d1_in[2]), .Y(n205) );
  AOI22X1 U154 ( .A(d2_in[6]), .B(n202), .C(n207), .D(n128), .Y(n124) );
  INVX1 U155 ( .A(n205), .Y(n200) );
  AOI22X1 U156 ( .A(n205), .B(n75), .C(n28), .D(n200), .Y(n119) );
  INVX1 U157 ( .A(d2_in[2]), .Y(n196) );
  AOI22X1 U158 ( .A(d2_in[2]), .B(n99), .C(n98), .D(n196), .Y(n125) );
  AOI22X1 U159 ( .A(n140), .B(n50), .C(n52), .D(n91), .Y(n122) );
  AOI22X1 U160 ( .A(d2_in[4]), .B(n194), .C(n1), .D(n168), .Y(n130) );
  AOI22X1 U161 ( .A(n191), .B(n51), .C(n53), .D(n178), .Y(n121) );
  FAX1 U162 ( .A(n120), .B(n78), .C(n118), .YC(\intadd_18/B[6] ), .YS(
        \intadd_18/A[5] ) );
  FAX1 U163 ( .A(n63), .B(n42), .C(n77), .YC(n118), .YS(n132) );
  AOI22X1 U164 ( .A(d2_in[7]), .B(n73), .C(n204), .D(n123), .Y(n137) );
  AOI22X1 U165 ( .A(d2_in[5]), .B(n202), .C(n207), .D(n171), .Y(n143) );
  AOI22X1 U166 ( .A(n205), .B(n29), .C(n35), .D(n200), .Y(n138) );
  INVX1 U167 ( .A(d2_in[1]), .Y(n187) );
  AOI22X1 U168 ( .A(d2_in[1]), .B(n99), .C(n98), .D(n187), .Y(n142) );
  AOI22X1 U169 ( .A(n140), .B(n52), .C(n54), .D(n91), .Y(n135) );
  AOI22X1 U170 ( .A(d2_in[6]), .B(n172), .C(d1_in[1]), .D(n128), .Y(n127) );
  INVX1 U171 ( .A(d1_in[0]), .Y(n197) );
  AOI22X1 U172 ( .A(d1_in[0]), .B(n6), .C(n15), .D(n197), .Y(n151) );
  AND2X1 U173 ( .A(d1_in[1]), .B(n128), .Y(n129) );
  AOI22X1 U174 ( .A(d1_in[0]), .B(n76), .C(n129), .D(n197), .Y(n156) );
  AOI22X1 U175 ( .A(d2_in[3]), .B(n194), .C(n1), .D(n195), .Y(n139) );
  AOI22X1 U176 ( .A(n191), .B(n53), .C(n55), .D(n178), .Y(n133) );
  FAX1 U177 ( .A(n132), .B(n87), .C(n131), .YC(\intadd_18/B[5] ), .YS(
        \intadd_18/A[4] ) );
  FAX1 U178 ( .A(n64), .B(n46), .C(n25), .YC(n131), .YS(n147) );
  OAI21X1 U179 ( .A(n36), .B(n76), .C(n87), .Y(n146) );
  AOI22X1 U180 ( .A(d2_in[2]), .B(n72), .C(n193), .D(n196), .Y(n149) );
  AOI22X1 U181 ( .A(n191), .B(n55), .C(n30), .D(n178), .Y(n154) );
  INVX1 U182 ( .A(d2_in[0]), .Y(n177) );
  AOI22X1 U183 ( .A(d2_in[0]), .B(n99), .C(n98), .D(n177), .Y(n141) );
  AOI22X1 U184 ( .A(n140), .B(n54), .C(n11), .D(n91), .Y(n153) );
  INVX1 U185 ( .A(n35), .Y(n144) );
  AOI22X1 U186 ( .A(d2_in[4]), .B(n90), .C(n2), .D(n168), .Y(n167) );
  AOI22X1 U187 ( .A(n205), .B(n144), .C(n56), .D(n200), .Y(n152) );
  FAX1 U188 ( .A(n147), .B(n146), .C(n145), .YC(\intadd_18/B[4] ), .YS(
        \intadd_18/A[3] ) );
  AOI22X1 U189 ( .A(d2_in[1]), .B(n194), .C(n1), .D(n187), .Y(n180) );
  INVX1 U190 ( .A(n32), .Y(n148) );
  AOI22X1 U191 ( .A(n191), .B(n31), .C(n148), .D(n178), .Y(n165) );
  MUX2X1 U192 ( .B(n99), .A(n98), .S(n20), .Y(n164) );
  OAI21X1 U193 ( .A(n98), .B(n37), .C(n89), .Y(n163) );
  FAX1 U194 ( .A(n65), .B(n43), .C(n26), .YC(n145), .YS(n155) );
  INVX1 U195 ( .A(n155), .Y(n160) );
  MUX2X1 U196 ( .B(n89), .A(n157), .S(n68), .Y(n159) );
  INVX1 U197 ( .A(n158), .Y(\intadd_18/B[3] ) );
  FAX1 U198 ( .A(n161), .B(n160), .C(n159), .YC(n158), .YS(n162) );
  INVX1 U199 ( .A(n162), .Y(\intadd_18/A[2] ) );
  FAX1 U200 ( .A(n83), .B(n164), .C(n163), .YC(n161), .YS(n166) );
  INVX1 U201 ( .A(n166), .Y(n176) );
  AOI22X1 U202 ( .A(d2_in[3]), .B(n90), .C(n2), .D(n195), .Y(n181) );
  AOI22X1 U203 ( .A(n205), .B(n56), .C(n57), .D(n200), .Y(n175) );
  AOI22X1 U204 ( .A(d2_in[4]), .B(n172), .C(d1_in[1]), .D(n168), .Y(n170) );
  AOI22X1 U205 ( .A(d1_in[0]), .B(n7), .C(n16), .D(n197), .Y(n190) );
  AOI22X1 U206 ( .A(d2_in[5]), .B(n73), .C(n204), .D(n171), .Y(n174) );
  AOI22X1 U207 ( .A(d1_in[0]), .B(n8), .C(n17), .D(n197), .Y(n183) );
  FAX1 U208 ( .A(n176), .B(n44), .C(n85), .YC(\intadd_18/B[2] ), .YS(
        \intadd_18/A[1] ) );
  AOI22X1 U209 ( .A(d2_in[0]), .B(n194), .C(n1), .D(n177), .Y(n179) );
  AOI22X1 U210 ( .A(n191), .B(n32), .C(n12), .D(n178), .Y(\intadd_18/A[0] ) );
  AOI22X1 U211 ( .A(d2_in[2]), .B(n90), .C(n2), .D(n196), .Y(n189) );
  AOI22X1 U212 ( .A(n205), .B(n57), .C(n58), .D(n200), .Y(\intadd_18/B[0] ) );
  AOI21X1 U213 ( .A(n39), .B(n40), .C(n85), .Y(\intadd_18/CI ) );
  AOI22X1 U214 ( .A(d2_in[2]), .B(n172), .C(d1_in[1]), .D(n196), .Y(n186) );
  AOI22X1 U215 ( .A(d1_in[0]), .B(n9), .C(n80), .D(n197), .Y(n203) );
  AOI22X1 U216 ( .A(d2_in[1]), .B(n90), .C(n2), .D(n187), .Y(n188) );
  AOI22X1 U217 ( .A(n205), .B(n58), .C(n13), .D(n200), .Y(n224) );
  MUX2X1 U218 ( .B(n193), .A(n1), .S(n60), .Y(n223) );
  MUX2X1 U219 ( .B(n72), .A(n193), .S(n21), .Y(n222) );
  AOI22X1 U220 ( .A(d2_in[3]), .B(n172), .C(d1_in[1]), .D(n195), .Y(n199) );
  AOI22X1 U221 ( .A(d1_in[0]), .B(n10), .C(n18), .D(n197), .Y(n216) );
  HAX1 U222 ( .A(n84), .B(n69), .YS(n215) );
  AOI22X1 U223 ( .A(n205), .B(d2_in[1]), .C(d2_in[0]), .D(n200), .Y(n201) );
  MUX2X1 U224 ( .B(n90), .A(n2), .S(n19), .Y(n214) );
  MUX2X1 U225 ( .B(n207), .A(n2), .S(n59), .Y(n211) );
  NOR3X1 U226 ( .A(d2_in[1]), .B(d2_in[0]), .C(n204), .Y(n210) );
  MUX2X1 U227 ( .B(n202), .A(n207), .S(n81), .Y(n209) );
  OR2X1 U228 ( .A(n211), .B(n210), .Y(n208) );
  AOI22X1 U229 ( .A(n211), .B(n210), .C(n209), .D(n208), .Y(n213) );
  OR2X1 U230 ( .A(n215), .B(n214), .Y(n212) );
  AOI22X1 U231 ( .A(n215), .B(n214), .C(n14), .D(n212), .Y(n217) );
  OAI21X1 U232 ( .A(n218), .B(n38), .C(n84), .Y(n220) );
  OAI21X1 U233 ( .A(n69), .B(n220), .C(n79), .Y(n226) );
  FAX1 U234 ( .A(n67), .B(n223), .C(n222), .YC(n225), .YS(n218) );
  OAI21X1 U235 ( .A(\intadd_18/SUM[0] ), .B(n226), .C(n225), .Y(n228) );
  FAX1 U236 ( .A(n61), .B(n88), .C(n71), .YC(n103), .YS(\intadd_18/A[7] ) );
endmodule


module truncation_sv_6 ( d_in, d_out );
  input [15:0] d_in;
  output [7:0] d_out;
  wire   \d_in[13] , \d_in[12] , \d_in[11] , \d_in[10] , \d_in[9] , \d_in[8] ,
         \d_in[7] , \d_in[6] ;
  assign d_out[7] = \d_in[13] ;
  assign \d_in[13]  = d_in[13];
  assign d_out[6] = \d_in[12] ;
  assign \d_in[12]  = d_in[12];
  assign d_out[5] = \d_in[11] ;
  assign \d_in[11]  = d_in[11];
  assign d_out[4] = \d_in[10] ;
  assign \d_in[10]  = d_in[10];
  assign d_out[3] = \d_in[9] ;
  assign \d_in[9]  = d_in[9];
  assign d_out[2] = \d_in[8] ;
  assign \d_in[8]  = d_in[8];
  assign d_out[1] = \d_in[7] ;
  assign \d_in[7]  = d_in[7];
  assign d_out[0] = \d_in[6] ;
  assign \d_in[6]  = d_in[6];

endmodule


module truncation_sv_7 ( d_in, d_out );
  input [15:0] d_in;
  output [7:0] d_out;
  wire   \d_in[13] , \d_in[12] , \d_in[11] , \d_in[10] , \d_in[9] , \d_in[8] ,
         \d_in[7] , \d_in[6] ;
  assign d_out[7] = \d_in[13] ;
  assign \d_in[13]  = d_in[13];
  assign d_out[6] = \d_in[12] ;
  assign \d_in[12]  = d_in[12];
  assign d_out[5] = \d_in[11] ;
  assign \d_in[11]  = d_in[11];
  assign d_out[4] = \d_in[10] ;
  assign \d_in[10]  = d_in[10];
  assign d_out[3] = \d_in[9] ;
  assign \d_in[9]  = d_in[9];
  assign d_out[2] = \d_in[8] ;
  assign \d_in[8]  = d_in[8];
  assign d_out[1] = \d_in[7] ;
  assign \d_in[7]  = d_in[7];
  assign d_out[0] = \d_in[6] ;
  assign \d_in[6]  = d_in[6];

endmodule


module unit_calc_sv_3 ( x_in, x_N_in, ue_in, y_in, x_out, x_N_out, ue_out, 
        y_out, clock );
  input [7:0] x_in;
  input [7:0] x_N_in;
  input [7:0] ue_in;
  input [7:0] y_in;
  output [7:0] x_out;
  output [7:0] x_N_out;
  output [7:0] ue_out;
  output [7:0] y_out;
  input clock;
  wire   \intadd_0/CI , \intadd_0/n7 , \intadd_0/n6 , \intadd_0/n5 ,
         \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 , n27, n28, n29;
  wire   [31:8] shiftx;
  wire   [31:8] shiftxn;
  wire   [23:8] shiftue;
  wire   [15:0] shifty;
  wire   [7:0] y_out8;
  wire   [15:0] xnin_ue;
  wire   [15:0] xnin_ue_scaled;
  wire   [15:0] coeff16;
  wire   [15:0] new_coeff_true;
  wire   [15:0] delayed_new_coeff_true;
  wire   [7:0] coeff8;
  wire   [15:0] y_out16;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16;

  mul8_sv_7 mul_xnin_ue ( .d1_in(x_N_in), .d2_in(ue_in), .d_out({xnin_ue[15:4], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
  u_scaling_sv_3 u1 ( .d_in({xnin_ue[15:4], 1'b0, 1'b0, 1'b0, 1'b0}), .d_out({
        SYNOPSYS_UNCONNECTED__4, xnin_ue_scaled[14], SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, xnin_ue_scaled[10:0]}), .clock(clock) );
  add16_sv_3 add1 ( .d1_in({1'b0, xnin_ue_scaled[14], 1'b0, 1'b0, 1'b0, 
        xnin_ue_scaled[10:0]}), .d2_in({1'b0, coeff16[14], 1'b0, coeff16[12:0]}), .d_out(new_coeff_true) );
  shift_1d_16_sv_3 delay_2 ( .xin(new_coeff_true), .xout(
        delayed_new_coeff_true), .clock(clock) );
  saturation_sv_3 sat_1 ( .d_in(delayed_new_coeff_true), .d_out({
        SYNOPSYS_UNCONNECTED__8, coeff16[14:0]}) );
  truncation_sv_7 trunc_1 ( .d_in({1'b0, 1'b0, coeff16[13:6], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .d_out(coeff8) );
  mul8_sv_6 mul_coeff_x_in ( .d1_in(coeff8), .d2_in(shiftx[31:24]), .d_out({
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, y_out16[13:6], 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16}) );
  truncation_sv_6 trunc_2 ( .d_in({1'b0, 1'b0, y_out16[13:6], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .d_out(y_out8) );
  DFFPOSX1 \shiftx_reg[31]  ( .D(x_in[7]), .CLK(clock), .Q(shiftx[31]) );
  DFFPOSX1 \shiftx_reg[30]  ( .D(x_in[6]), .CLK(clock), .Q(shiftx[30]) );
  DFFPOSX1 \shiftx_reg[29]  ( .D(x_in[5]), .CLK(clock), .Q(shiftx[29]) );
  DFFPOSX1 \shiftx_reg[28]  ( .D(x_in[4]), .CLK(clock), .Q(shiftx[28]) );
  DFFPOSX1 \shiftx_reg[27]  ( .D(x_in[3]), .CLK(clock), .Q(shiftx[27]) );
  DFFPOSX1 \shiftx_reg[26]  ( .D(x_in[2]), .CLK(clock), .Q(shiftx[26]) );
  DFFPOSX1 \shiftx_reg[25]  ( .D(x_in[1]), .CLK(clock), .Q(shiftx[25]) );
  DFFPOSX1 \shiftx_reg[24]  ( .D(x_in[0]), .CLK(clock), .Q(shiftx[24]) );
  DFFPOSX1 \shiftx_reg[23]  ( .D(shiftx[31]), .CLK(clock), .Q(shiftx[23]) );
  DFFPOSX1 \shiftx_reg[22]  ( .D(shiftx[30]), .CLK(clock), .Q(shiftx[22]) );
  DFFPOSX1 \shiftx_reg[21]  ( .D(shiftx[29]), .CLK(clock), .Q(shiftx[21]) );
  DFFPOSX1 \shiftx_reg[20]  ( .D(shiftx[28]), .CLK(clock), .Q(shiftx[20]) );
  DFFPOSX1 \shiftx_reg[19]  ( .D(shiftx[27]), .CLK(clock), .Q(shiftx[19]) );
  DFFPOSX1 \shiftx_reg[18]  ( .D(shiftx[26]), .CLK(clock), .Q(shiftx[18]) );
  DFFPOSX1 \shiftx_reg[17]  ( .D(shiftx[25]), .CLK(clock), .Q(shiftx[17]) );
  DFFPOSX1 \shiftx_reg[16]  ( .D(shiftx[24]), .CLK(clock), .Q(shiftx[16]) );
  DFFPOSX1 \shiftx_reg[15]  ( .D(shiftx[23]), .CLK(clock), .Q(shiftx[15]) );
  DFFPOSX1 \shiftx_reg[14]  ( .D(shiftx[22]), .CLK(clock), .Q(shiftx[14]) );
  DFFPOSX1 \shiftx_reg[13]  ( .D(shiftx[21]), .CLK(clock), .Q(shiftx[13]) );
  DFFPOSX1 \shiftx_reg[12]  ( .D(shiftx[20]), .CLK(clock), .Q(shiftx[12]) );
  DFFPOSX1 \shiftx_reg[11]  ( .D(shiftx[19]), .CLK(clock), .Q(shiftx[11]) );
  DFFPOSX1 \shiftx_reg[10]  ( .D(shiftx[18]), .CLK(clock), .Q(shiftx[10]) );
  DFFPOSX1 \shiftx_reg[9]  ( .D(shiftx[17]), .CLK(clock), .Q(shiftx[9]) );
  DFFPOSX1 \shiftx_reg[8]  ( .D(shiftx[16]), .CLK(clock), .Q(shiftx[8]) );
  DFFPOSX1 \shiftx_reg[7]  ( .D(shiftx[15]), .CLK(clock), .Q(x_out[7]) );
  DFFPOSX1 \shiftx_reg[6]  ( .D(shiftx[14]), .CLK(clock), .Q(x_out[6]) );
  DFFPOSX1 \shiftx_reg[5]  ( .D(shiftx[13]), .CLK(clock), .Q(x_out[5]) );
  DFFPOSX1 \shiftx_reg[4]  ( .D(shiftx[12]), .CLK(clock), .Q(x_out[4]) );
  DFFPOSX1 \shiftx_reg[3]  ( .D(shiftx[11]), .CLK(clock), .Q(x_out[3]) );
  DFFPOSX1 \shiftx_reg[2]  ( .D(shiftx[10]), .CLK(clock), .Q(x_out[2]) );
  DFFPOSX1 \shiftx_reg[1]  ( .D(shiftx[9]), .CLK(clock), .Q(x_out[1]) );
  DFFPOSX1 \shiftx_reg[0]  ( .D(shiftx[8]), .CLK(clock), .Q(x_out[0]) );
  DFFPOSX1 \shiftxn_reg[31]  ( .D(x_N_in[7]), .CLK(clock), .Q(shiftxn[31]) );
  DFFPOSX1 \shiftxn_reg[30]  ( .D(x_N_in[6]), .CLK(clock), .Q(shiftxn[30]) );
  DFFPOSX1 \shiftxn_reg[29]  ( .D(x_N_in[5]), .CLK(clock), .Q(shiftxn[29]) );
  DFFPOSX1 \shiftxn_reg[28]  ( .D(x_N_in[4]), .CLK(clock), .Q(shiftxn[28]) );
  DFFPOSX1 \shiftxn_reg[27]  ( .D(x_N_in[3]), .CLK(clock), .Q(shiftxn[27]) );
  DFFPOSX1 \shiftxn_reg[26]  ( .D(x_N_in[2]), .CLK(clock), .Q(shiftxn[26]) );
  DFFPOSX1 \shiftxn_reg[25]  ( .D(x_N_in[1]), .CLK(clock), .Q(shiftxn[25]) );
  DFFPOSX1 \shiftxn_reg[24]  ( .D(x_N_in[0]), .CLK(clock), .Q(shiftxn[24]) );
  DFFPOSX1 \shiftxn_reg[23]  ( .D(shiftxn[31]), .CLK(clock), .Q(shiftxn[23])
         );
  DFFPOSX1 \shiftxn_reg[22]  ( .D(shiftxn[30]), .CLK(clock), .Q(shiftxn[22])
         );
  DFFPOSX1 \shiftxn_reg[21]  ( .D(shiftxn[29]), .CLK(clock), .Q(shiftxn[21])
         );
  DFFPOSX1 \shiftxn_reg[20]  ( .D(shiftxn[28]), .CLK(clock), .Q(shiftxn[20])
         );
  DFFPOSX1 \shiftxn_reg[19]  ( .D(shiftxn[27]), .CLK(clock), .Q(shiftxn[19])
         );
  DFFPOSX1 \shiftxn_reg[18]  ( .D(shiftxn[26]), .CLK(clock), .Q(shiftxn[18])
         );
  DFFPOSX1 \shiftxn_reg[17]  ( .D(shiftxn[25]), .CLK(clock), .Q(shiftxn[17])
         );
  DFFPOSX1 \shiftxn_reg[16]  ( .D(shiftxn[24]), .CLK(clock), .Q(shiftxn[16])
         );
  DFFPOSX1 \shiftxn_reg[15]  ( .D(shiftxn[23]), .CLK(clock), .Q(shiftxn[15])
         );
  DFFPOSX1 \shiftxn_reg[14]  ( .D(shiftxn[22]), .CLK(clock), .Q(shiftxn[14])
         );
  DFFPOSX1 \shiftxn_reg[13]  ( .D(shiftxn[21]), .CLK(clock), .Q(shiftxn[13])
         );
  DFFPOSX1 \shiftxn_reg[12]  ( .D(shiftxn[20]), .CLK(clock), .Q(shiftxn[12])
         );
  DFFPOSX1 \shiftxn_reg[11]  ( .D(shiftxn[19]), .CLK(clock), .Q(shiftxn[11])
         );
  DFFPOSX1 \shiftxn_reg[10]  ( .D(shiftxn[18]), .CLK(clock), .Q(shiftxn[10])
         );
  DFFPOSX1 \shiftxn_reg[9]  ( .D(shiftxn[17]), .CLK(clock), .Q(shiftxn[9]) );
  DFFPOSX1 \shiftxn_reg[8]  ( .D(shiftxn[16]), .CLK(clock), .Q(shiftxn[8]) );
  DFFPOSX1 \shiftxn_reg[7]  ( .D(shiftxn[15]), .CLK(clock), .Q(x_N_out[7]) );
  DFFPOSX1 \shiftxn_reg[6]  ( .D(shiftxn[14]), .CLK(clock), .Q(x_N_out[6]) );
  DFFPOSX1 \shiftxn_reg[5]  ( .D(shiftxn[13]), .CLK(clock), .Q(x_N_out[5]) );
  DFFPOSX1 \shiftxn_reg[4]  ( .D(shiftxn[12]), .CLK(clock), .Q(x_N_out[4]) );
  DFFPOSX1 \shiftxn_reg[3]  ( .D(shiftxn[11]), .CLK(clock), .Q(x_N_out[3]) );
  DFFPOSX1 \shiftxn_reg[2]  ( .D(shiftxn[10]), .CLK(clock), .Q(x_N_out[2]) );
  DFFPOSX1 \shiftxn_reg[1]  ( .D(shiftxn[9]), .CLK(clock), .Q(x_N_out[1]) );
  DFFPOSX1 \shiftxn_reg[0]  ( .D(shiftxn[8]), .CLK(clock), .Q(x_N_out[0]) );
  DFFPOSX1 \shiftue_reg[23]  ( .D(ue_in[7]), .CLK(clock), .Q(shiftue[23]) );
  DFFPOSX1 \shiftue_reg[22]  ( .D(ue_in[6]), .CLK(clock), .Q(shiftue[22]) );
  DFFPOSX1 \shiftue_reg[21]  ( .D(ue_in[5]), .CLK(clock), .Q(shiftue[21]) );
  DFFPOSX1 \shiftue_reg[20]  ( .D(ue_in[4]), .CLK(clock), .Q(shiftue[20]) );
  DFFPOSX1 \shiftue_reg[19]  ( .D(ue_in[3]), .CLK(clock), .Q(shiftue[19]) );
  DFFPOSX1 \shiftue_reg[18]  ( .D(ue_in[2]), .CLK(clock), .Q(shiftue[18]) );
  DFFPOSX1 \shiftue_reg[17]  ( .D(ue_in[1]), .CLK(clock), .Q(shiftue[17]) );
  DFFPOSX1 \shiftue_reg[16]  ( .D(ue_in[0]), .CLK(clock), .Q(shiftue[16]) );
  DFFPOSX1 \shiftue_reg[15]  ( .D(shiftue[23]), .CLK(clock), .Q(shiftue[15])
         );
  DFFPOSX1 \shiftue_reg[14]  ( .D(shiftue[22]), .CLK(clock), .Q(shiftue[14])
         );
  DFFPOSX1 \shiftue_reg[13]  ( .D(shiftue[21]), .CLK(clock), .Q(shiftue[13])
         );
  DFFPOSX1 \shiftue_reg[12]  ( .D(shiftue[20]), .CLK(clock), .Q(shiftue[12])
         );
  DFFPOSX1 \shiftue_reg[11]  ( .D(shiftue[19]), .CLK(clock), .Q(shiftue[11])
         );
  DFFPOSX1 \shiftue_reg[10]  ( .D(shiftue[18]), .CLK(clock), .Q(shiftue[10])
         );
  DFFPOSX1 \shiftue_reg[9]  ( .D(shiftue[17]), .CLK(clock), .Q(shiftue[9]) );
  DFFPOSX1 \shiftue_reg[8]  ( .D(shiftue[16]), .CLK(clock), .Q(shiftue[8]) );
  DFFPOSX1 \shiftue_reg[7]  ( .D(shiftue[15]), .CLK(clock), .Q(ue_out[7]) );
  DFFPOSX1 \shiftue_reg[6]  ( .D(shiftue[14]), .CLK(clock), .Q(ue_out[6]) );
  DFFPOSX1 \shiftue_reg[5]  ( .D(shiftue[13]), .CLK(clock), .Q(ue_out[5]) );
  DFFPOSX1 \shiftue_reg[4]  ( .D(shiftue[12]), .CLK(clock), .Q(ue_out[4]) );
  DFFPOSX1 \shiftue_reg[3]  ( .D(shiftue[11]), .CLK(clock), .Q(ue_out[3]) );
  DFFPOSX1 \shiftue_reg[2]  ( .D(shiftue[10]), .CLK(clock), .Q(ue_out[2]) );
  DFFPOSX1 \shiftue_reg[1]  ( .D(shiftue[9]), .CLK(clock), .Q(ue_out[1]) );
  DFFPOSX1 \shiftue_reg[0]  ( .D(shiftue[8]), .CLK(clock), .Q(ue_out[0]) );
  DFFPOSX1 \shifty_reg[15]  ( .D(y_in[7]), .CLK(clock), .Q(shifty[15]) );
  DFFPOSX1 \shifty_reg[14]  ( .D(y_in[6]), .CLK(clock), .Q(shifty[14]) );
  DFFPOSX1 \shifty_reg[13]  ( .D(y_in[5]), .CLK(clock), .Q(shifty[13]) );
  DFFPOSX1 \shifty_reg[12]  ( .D(y_in[4]), .CLK(clock), .Q(shifty[12]) );
  DFFPOSX1 \shifty_reg[11]  ( .D(y_in[3]), .CLK(clock), .Q(shifty[11]) );
  DFFPOSX1 \shifty_reg[10]  ( .D(y_in[2]), .CLK(clock), .Q(shifty[10]) );
  DFFPOSX1 \shifty_reg[9]  ( .D(y_in[1]), .CLK(clock), .Q(shifty[9]) );
  DFFPOSX1 \shifty_reg[8]  ( .D(y_in[0]), .CLK(clock), .Q(shifty[8]) );
  DFFPOSX1 \shifty_reg[7]  ( .D(shifty[15]), .CLK(clock), .Q(shifty[7]) );
  DFFPOSX1 \shifty_reg[6]  ( .D(shifty[14]), .CLK(clock), .Q(shifty[6]) );
  DFFPOSX1 \shifty_reg[5]  ( .D(shifty[13]), .CLK(clock), .Q(shifty[5]) );
  DFFPOSX1 \shifty_reg[4]  ( .D(shifty[12]), .CLK(clock), .Q(shifty[4]) );
  DFFPOSX1 \shifty_reg[3]  ( .D(shifty[11]), .CLK(clock), .Q(shifty[3]) );
  DFFPOSX1 \shifty_reg[2]  ( .D(shifty[10]), .CLK(clock), .Q(shifty[2]) );
  DFFPOSX1 \shifty_reg[1]  ( .D(shifty[9]), .CLK(clock), .Q(shifty[1]) );
  DFFPOSX1 \shifty_reg[0]  ( .D(shifty[8]), .CLK(clock), .Q(shifty[0]) );
  FAX1 \intadd_0/U8  ( .A(shifty[1]), .B(y_out8[1]), .C(\intadd_0/CI ), .YC(
        \intadd_0/n7 ), .YS(y_out[1]) );
  FAX1 \intadd_0/U7  ( .A(shifty[2]), .B(y_out8[2]), .C(\intadd_0/n7 ), .YC(
        \intadd_0/n6 ), .YS(y_out[2]) );
  FAX1 \intadd_0/U6  ( .A(shifty[3]), .B(y_out8[3]), .C(\intadd_0/n6 ), .YC(
        \intadd_0/n5 ), .YS(y_out[3]) );
  FAX1 \intadd_0/U5  ( .A(shifty[4]), .B(y_out8[4]), .C(\intadd_0/n5 ), .YC(
        \intadd_0/n4 ), .YS(y_out[4]) );
  FAX1 \intadd_0/U4  ( .A(shifty[5]), .B(y_out8[5]), .C(\intadd_0/n4 ), .YC(
        \intadd_0/n3 ), .YS(y_out[5]) );
  FAX1 \intadd_0/U3  ( .A(shifty[6]), .B(y_out8[6]), .C(\intadd_0/n3 ), .YC(
        \intadd_0/n2 ), .YS(y_out[6]) );
  AND2X1 U9 ( .A(shifty[0]), .B(y_out8[0]), .Y(\intadd_0/CI ) );
  XOR2X1 U10 ( .A(shifty[7]), .B(y_out8[7]), .Y(n27) );
  XOR2X1 U11 ( .A(\intadd_0/n2 ), .B(n27), .Y(y_out[7]) );
  INVX1 U12 ( .A(\intadd_0/CI ), .Y(n28) );
  OAI21X1 U13 ( .A(shifty[0]), .B(y_out8[0]), .C(n28), .Y(n29) );
  INVX1 U14 ( .A(n29), .Y(y_out[0]) );
endmodule


module shift_1d_16_sv_0 ( xin, xout, clock );
  input [15:0] xin;
  output [15:0] xout;
  input clock;


  DFFPOSX1 \shift_reg_reg[15]  ( .D(xin[15]), .CLK(clock), .Q(xout[15]) );
  DFFPOSX1 \shift_reg_reg[14]  ( .D(xin[14]), .CLK(clock), .Q(xout[14]) );
  DFFPOSX1 \shift_reg_reg[13]  ( .D(xin[13]), .CLK(clock), .Q(xout[13]) );
  DFFPOSX1 \shift_reg_reg[12]  ( .D(xin[12]), .CLK(clock), .Q(xout[12]) );
  DFFPOSX1 \shift_reg_reg[11]  ( .D(xin[11]), .CLK(clock), .Q(xout[11]) );
  DFFPOSX1 \shift_reg_reg[10]  ( .D(xin[10]), .CLK(clock), .Q(xout[10]) );
  DFFPOSX1 \shift_reg_reg[9]  ( .D(xin[9]), .CLK(clock), .Q(xout[9]) );
  DFFPOSX1 \shift_reg_reg[8]  ( .D(xin[8]), .CLK(clock), .Q(xout[8]) );
  DFFPOSX1 \shift_reg_reg[7]  ( .D(xin[7]), .CLK(clock), .Q(xout[7]) );
  DFFPOSX1 \shift_reg_reg[6]  ( .D(xin[6]), .CLK(clock), .Q(xout[6]) );
  DFFPOSX1 \shift_reg_reg[5]  ( .D(xin[5]), .CLK(clock), .Q(xout[5]) );
  DFFPOSX1 \shift_reg_reg[4]  ( .D(xin[4]), .CLK(clock), .Q(xout[4]) );
  DFFPOSX1 \shift_reg_reg[3]  ( .D(xin[3]), .CLK(clock), .Q(xout[3]) );
  DFFPOSX1 \shift_reg_reg[2]  ( .D(xin[2]), .CLK(clock), .Q(xout[2]) );
  DFFPOSX1 \shift_reg_reg[1]  ( .D(xin[1]), .CLK(clock), .Q(xout[1]) );
  DFFPOSX1 \shift_reg_reg[0]  ( .D(xin[0]), .CLK(clock), .Q(xout[0]) );
endmodule


module u_scaling_sv_0 ( d_in, d_out, clock );
  input [15:0] d_in;
  output [15:0] d_out;
  input clock;


  DFFPOSX1 \d_out_reg_reg[11]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[14]) );
  DFFPOSX1 \d_out_reg_reg[10]  ( .D(d_in[14]), .CLK(clock), .Q(d_out[10]) );
  DFFPOSX1 \d_out_reg_reg[9]  ( .D(d_in[13]), .CLK(clock), .Q(d_out[9]) );
  DFFPOSX1 \d_out_reg_reg[8]  ( .D(d_in[12]), .CLK(clock), .Q(d_out[8]) );
  DFFPOSX1 \d_out_reg_reg[7]  ( .D(d_in[11]), .CLK(clock), .Q(d_out[7]) );
  DFFPOSX1 \d_out_reg_reg[6]  ( .D(d_in[10]), .CLK(clock), .Q(d_out[6]) );
  DFFPOSX1 \d_out_reg_reg[5]  ( .D(d_in[9]), .CLK(clock), .Q(d_out[5]) );
  DFFPOSX1 \d_out_reg_reg[4]  ( .D(d_in[8]), .CLK(clock), .Q(d_out[4]) );
  DFFPOSX1 \d_out_reg_reg[3]  ( .D(d_in[7]), .CLK(clock), .Q(d_out[3]) );
  DFFPOSX1 \d_out_reg_reg[2]  ( .D(d_in[6]), .CLK(clock), .Q(d_out[2]) );
  DFFPOSX1 \d_out_reg_reg[1]  ( .D(d_in[5]), .CLK(clock), .Q(d_out[1]) );
  DFFPOSX1 \d_out_reg_reg[0]  ( .D(d_in[4]), .CLK(clock), .Q(d_out[0]) );
endmodule


module saturation_sv_0 ( d_in, d_out );
  input [15:0] d_in;
  output [15:0] d_out;
  wire   n2, n3, n4, n5, n6, n7;
  assign d_out[13] = d_in[15];
  assign d_out[14] = d_in[15];

  INVX1 U3 ( .A(n7), .Y(d_out[12]) );
  AND2X1 U4 ( .A(n5), .B(n3), .Y(n7) );
  BUFX2 U5 ( .A(n4), .Y(n2) );
  INVX1 U6 ( .A(d_in[15]), .Y(n5) );
  NOR3X1 U7 ( .A(d_in[13]), .B(d_in[12]), .C(d_in[14]), .Y(n3) );
  NAND3X1 U8 ( .A(d_in[14]), .B(d_in[13]), .C(d_in[12]), .Y(n4) );
  OAI21X1 U9 ( .A(n5), .B(n2), .C(d_out[12]), .Y(n6) );
  AND2X1 U10 ( .A(d_in[6]), .B(n6), .Y(d_out[6]) );
  AND2X1 U11 ( .A(d_in[7]), .B(n6), .Y(d_out[7]) );
  AND2X1 U12 ( .A(d_in[9]), .B(n6), .Y(d_out[9]) );
  AND2X1 U13 ( .A(d_in[1]), .B(n6), .Y(d_out[1]) );
  AND2X1 U14 ( .A(d_in[2]), .B(n6), .Y(d_out[2]) );
  AND2X1 U15 ( .A(d_in[3]), .B(n6), .Y(d_out[3]) );
  AND2X1 U16 ( .A(d_in[4]), .B(n6), .Y(d_out[4]) );
  AND2X1 U17 ( .A(d_in[5]), .B(n6), .Y(d_out[5]) );
  AND2X1 U18 ( .A(d_in[8]), .B(n6), .Y(d_out[8]) );
  AND2X1 U19 ( .A(d_in[11]), .B(n6), .Y(d_out[11]) );
  AND2X1 U20 ( .A(d_in[10]), .B(n6), .Y(d_out[10]) );
  AND2X1 U21 ( .A(d_in[0]), .B(n6), .Y(d_out[0]) );
endmodule


module add16_sv_0 ( d1_in, d2_in, d_out );
  input [15:0] d1_in;
  input [15:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_7/A[12] , \intadd_7/B[12] , \intadd_7/CI , \intadd_7/n13 ,
         \intadd_7/n12 , \intadd_7/n11 , \intadd_7/n10 , \intadd_7/n9 ,
         \intadd_7/n8 , \intadd_7/n7 , \intadd_7/n6 , \intadd_7/n5 ,
         \intadd_7/n4 , \intadd_7/n3 , \intadd_7/n2 , \intadd_7/n1 , n1, n2;
  assign d_out[15] = d_out[14];

  FAX1 \intadd_7/U14  ( .A(d2_in[1]), .B(d1_in[1]), .C(\intadd_7/CI ), .YC(
        \intadd_7/n13 ), .YS(d_out[1]) );
  FAX1 \intadd_7/U13  ( .A(d2_in[2]), .B(d1_in[2]), .C(\intadd_7/n13 ), .YC(
        \intadd_7/n12 ), .YS(d_out[2]) );
  FAX1 \intadd_7/U12  ( .A(d2_in[3]), .B(d1_in[3]), .C(\intadd_7/n12 ), .YC(
        \intadd_7/n11 ), .YS(d_out[3]) );
  FAX1 \intadd_7/U11  ( .A(d2_in[4]), .B(d1_in[4]), .C(\intadd_7/n11 ), .YC(
        \intadd_7/n10 ), .YS(d_out[4]) );
  FAX1 \intadd_7/U10  ( .A(d2_in[5]), .B(d1_in[5]), .C(\intadd_7/n10 ), .YC(
        \intadd_7/n9 ), .YS(d_out[5]) );
  FAX1 \intadd_7/U9  ( .A(d2_in[6]), .B(d1_in[6]), .C(\intadd_7/n9 ), .YC(
        \intadd_7/n8 ), .YS(d_out[6]) );
  FAX1 \intadd_7/U8  ( .A(d2_in[7]), .B(d1_in[7]), .C(\intadd_7/n8 ), .YC(
        \intadd_7/n7 ), .YS(d_out[7]) );
  FAX1 \intadd_7/U7  ( .A(d2_in[8]), .B(d1_in[8]), .C(\intadd_7/n7 ), .YC(
        \intadd_7/n6 ), .YS(d_out[8]) );
  FAX1 \intadd_7/U6  ( .A(d2_in[9]), .B(d1_in[9]), .C(\intadd_7/n6 ), .YC(
        \intadd_7/n5 ), .YS(d_out[9]) );
  FAX1 \intadd_7/U5  ( .A(d2_in[10]), .B(d1_in[10]), .C(\intadd_7/n5 ), .YC(
        \intadd_7/n4 ), .YS(d_out[10]) );
  FAX1 \intadd_7/U4  ( .A(d1_in[14]), .B(d2_in[11]), .C(\intadd_7/n4 ), .YC(
        \intadd_7/n3 ), .YS(d_out[11]) );
  FAX1 \intadd_7/U3  ( .A(d1_in[14]), .B(d2_in[12]), .C(\intadd_7/n3 ), .YC(
        \intadd_7/n2 ), .YS(d_out[12]) );
  FAX1 \intadd_7/U2  ( .A(\intadd_7/B[12] ), .B(\intadd_7/A[12] ), .C(
        \intadd_7/n2 ), .YC(\intadd_7/n1 ), .YS(d_out[13]) );
  AND2X1 U1 ( .A(d2_in[0]), .B(d1_in[0]), .Y(\intadd_7/CI ) );
  INVX1 U2 ( .A(d1_in[14]), .Y(\intadd_7/A[12] ) );
  INVX1 U3 ( .A(d2_in[14]), .Y(\intadd_7/B[12] ) );
  INVX1 U4 ( .A(\intadd_7/n1 ), .Y(d_out[14]) );
  INVX1 U5 ( .A(\intadd_7/CI ), .Y(n1) );
  OAI21X1 U6 ( .A(d2_in[0]), .B(d1_in[0]), .C(n1), .Y(n2) );
  INVX1 U7 ( .A(n2), .Y(d_out[0]) );
endmodule


module mul8_sv_1 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_11/A[9] , \intadd_11/A[8] , \intadd_11/A[7] ,
         \intadd_11/A[6] , \intadd_11/A[5] , \intadd_11/A[4] ,
         \intadd_11/A[3] , \intadd_11/A[2] , \intadd_11/A[1] ,
         \intadd_11/A[0] , \intadd_11/B[9] , \intadd_11/B[8] ,
         \intadd_11/B[7] , \intadd_11/B[6] , \intadd_11/B[5] ,
         \intadd_11/B[4] , \intadd_11/B[3] , \intadd_11/B[2] ,
         \intadd_11/B[1] , \intadd_11/B[0] , \intadd_11/CI ,
         \intadd_11/SUM[0] , \intadd_11/n10 , \intadd_11/n9 , \intadd_11/n8 ,
         \intadd_11/n7 , \intadd_11/n6 , \intadd_11/n5 , \intadd_11/n4 ,
         \intadd_11/n3 , \intadd_11/n2 , \intadd_11/n1 , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226;

  FAX1 \intadd_11/U11  ( .A(n66), .B(n46), .C(n25), .YC(\intadd_11/n10 ), .YS(
        \intadd_11/SUM[0] ) );
  FAX1 \intadd_11/U10  ( .A(\intadd_11/B[1] ), .B(\intadd_11/A[1] ), .C(
        \intadd_11/n10 ), .YC(\intadd_11/n9 ), .YS(d_out[6]) );
  FAX1 \intadd_11/U9  ( .A(\intadd_11/B[2] ), .B(\intadd_11/A[2] ), .C(
        \intadd_11/n9 ), .YC(\intadd_11/n8 ), .YS(d_out[7]) );
  FAX1 \intadd_11/U8  ( .A(\intadd_11/B[3] ), .B(\intadd_11/A[3] ), .C(
        \intadd_11/n8 ), .YC(\intadd_11/n7 ), .YS(d_out[8]) );
  FAX1 \intadd_11/U7  ( .A(\intadd_11/B[4] ), .B(\intadd_11/A[4] ), .C(
        \intadd_11/n7 ), .YC(\intadd_11/n6 ), .YS(d_out[9]) );
  FAX1 \intadd_11/U6  ( .A(\intadd_11/B[5] ), .B(\intadd_11/A[5] ), .C(
        \intadd_11/n6 ), .YC(\intadd_11/n5 ), .YS(d_out[10]) );
  FAX1 \intadd_11/U5  ( .A(\intadd_11/B[6] ), .B(\intadd_11/A[6] ), .C(
        \intadd_11/n5 ), .YC(\intadd_11/n4 ), .YS(d_out[11]) );
  FAX1 \intadd_11/U4  ( .A(\intadd_11/B[7] ), .B(\intadd_11/A[7] ), .C(
        \intadd_11/n4 ), .YC(\intadd_11/n3 ), .YS(d_out[12]) );
  FAX1 \intadd_11/U3  ( .A(\intadd_11/B[8] ), .B(\intadd_11/A[8] ), .C(
        \intadd_11/n3 ), .YC(\intadd_11/n2 ), .YS(d_out[13]) );
  FAX1 \intadd_11/U2  ( .A(n78), .B(n77), .C(\intadd_11/n2 ), .YC(
        \intadd_11/n1 ), .YS(d_out[14]) );
  OR2X1 U1 ( .A(n70), .B(n41), .Y(n179) );
  AND2X1 U2 ( .A(n74), .B(n38), .Y(n131) );
  AND2X1 U3 ( .A(n27), .B(n90), .Y(n137) );
  AND2X1 U4 ( .A(n148), .B(n39), .Y(n154) );
  AND2X1 U5 ( .A(n1), .B(n40), .Y(n185) );
  BUFX2 U6 ( .A(n95), .Y(n1) );
  BUFX2 U7 ( .A(n196), .Y(n2) );
  BUFX2 U8 ( .A(n212), .Y(n3) );
  INVX1 U9 ( .A(n100), .Y(n4) );
  OR2X1 U10 ( .A(d1_in[2]), .B(d1_in[1]), .Y(n100) );
  BUFX2 U11 ( .A(n123), .Y(n5) );
  BUFX2 U12 ( .A(n166), .Y(n6) );
  BUFX2 U13 ( .A(n172), .Y(n7) );
  BUFX2 U14 ( .A(n195), .Y(n8) );
  BUFX2 U15 ( .A(n211), .Y(n9) );
  BUFX2 U16 ( .A(n138), .Y(n10) );
  BUFX2 U17 ( .A(n176), .Y(n11) );
  BUFX2 U18 ( .A(n181), .Y(n12) );
  INVX1 U19 ( .A(n122), .Y(n13) );
  AND2X1 U20 ( .A(d1_in[1]), .B(n167), .Y(n122) );
  INVX1 U21 ( .A(n165), .Y(n14) );
  AND2X1 U22 ( .A(d1_in[1]), .B(n207), .Y(n165) );
  INVX1 U23 ( .A(n194), .Y(n15) );
  AND2X1 U24 ( .A(d1_in[1]), .B(n193), .Y(n194) );
  INVX1 U25 ( .A(n210), .Y(n16) );
  AND2X1 U26 ( .A(d1_in[1]), .B(n208), .Y(n210) );
  BUFX2 U27 ( .A(n202), .Y(n17) );
  INVX1 U28 ( .A(n145), .Y(n18) );
  AND2X1 U29 ( .A(d2_in[0]), .B(n137), .Y(n145) );
  INVX1 U30 ( .A(n184), .Y(n19) );
  AND2X1 U31 ( .A(d2_in[0]), .B(n183), .Y(n184) );
  INVX1 U32 ( .A(n190), .Y(n20) );
  AND2X1 U33 ( .A(n201), .B(d2_in[0]), .Y(n190) );
  OR2X1 U34 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n90) );
  INVX1 U35 ( .A(n90), .Y(n21) );
  BUFX2 U36 ( .A(n104), .Y(n22) );
  BUFX2 U37 ( .A(n128), .Y(n23) );
  BUFX2 U38 ( .A(n149), .Y(n24) );
  BUFX2 U39 ( .A(\intadd_11/CI ), .Y(n25) );
  INVX1 U40 ( .A(n223), .Y(n26) );
  AND2X1 U41 ( .A(n216), .B(n83), .Y(n223) );
  INVX1 U42 ( .A(n91), .Y(n27) );
  AND2X1 U43 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n91) );
  BUFX2 U44 ( .A(n119), .Y(n28) );
  INVX1 U45 ( .A(n30), .Y(n29) );
  BUFX2 U46 ( .A(n144), .Y(n30) );
  INVX1 U47 ( .A(n32), .Y(n31) );
  BUFX2 U48 ( .A(n177), .Y(n32) );
  INVX1 U49 ( .A(n34), .Y(n33) );
  BUFX2 U50 ( .A(n182), .Y(n34) );
  INVX1 U51 ( .A(n135), .Y(n35) );
  AND2X1 U52 ( .A(n94), .B(n93), .Y(n135) );
  INVX1 U53 ( .A(n37), .Y(n36) );
  BUFX2 U54 ( .A(n140), .Y(n37) );
  BUFX2 U55 ( .A(n133), .Y(n38) );
  BUFX2 U56 ( .A(n147), .Y(n39) );
  BUFX2 U57 ( .A(n186), .Y(n40) );
  BUFX2 U58 ( .A(n180), .Y(n41) );
  BUFX2 U59 ( .A(n106), .Y(n42) );
  BUFX2 U60 ( .A(n116), .Y(n43) );
  BUFX2 U61 ( .A(n150), .Y(n44) );
  BUFX2 U62 ( .A(n173), .Y(n45) );
  BUFX2 U63 ( .A(\intadd_11/A[0] ), .Y(n46) );
  INVX1 U64 ( .A(n129), .Y(n47) );
  OR2X1 U65 ( .A(n86), .B(n67), .Y(n129) );
  BUFX2 U66 ( .A(n198), .Y(n48) );
  BUFX2 U67 ( .A(n92), .Y(n49) );
  BUFX2 U68 ( .A(n103), .Y(n50) );
  BUFX2 U69 ( .A(n99), .Y(n51) );
  BUFX2 U70 ( .A(n102), .Y(n52) );
  BUFX2 U71 ( .A(n110), .Y(n53) );
  BUFX2 U72 ( .A(n111), .Y(n54) );
  BUFX2 U73 ( .A(n120), .Y(n55) );
  BUFX2 U74 ( .A(n125), .Y(n56) );
  BUFX2 U75 ( .A(n139), .Y(n57) );
  BUFX2 U76 ( .A(n136), .Y(n58) );
  BUFX2 U77 ( .A(n164), .Y(n59) );
  BUFX2 U78 ( .A(n178), .Y(n60) );
  BUFX2 U79 ( .A(n97), .Y(n61) );
  BUFX2 U80 ( .A(n107), .Y(n62) );
  BUFX2 U81 ( .A(n117), .Y(n63) );
  BUFX2 U82 ( .A(n130), .Y(n64) );
  BUFX2 U83 ( .A(n151), .Y(n65) );
  BUFX2 U84 ( .A(\intadd_11/B[0] ), .Y(n66) );
  BUFX2 U85 ( .A(n153), .Y(n67) );
  INVX1 U86 ( .A(n69), .Y(n68) );
  BUFX2 U87 ( .A(n98), .Y(n69) );
  INVX1 U88 ( .A(n185), .Y(n70) );
  INVX1 U89 ( .A(n169), .Y(n71) );
  AND2X1 U90 ( .A(n168), .B(d1_in[0]), .Y(n169) );
  INVX1 U91 ( .A(n216), .Y(n72) );
  AND2X1 U92 ( .A(n87), .B(n75), .Y(n216) );
  BUFX2 U93 ( .A(n109), .Y(n73) );
  BUFX2 U94 ( .A(n132), .Y(n74) );
  BUFX2 U95 ( .A(n205), .Y(n75) );
  BUFX2 U96 ( .A(n113), .Y(n76) );
  BUFX2 U97 ( .A(\intadd_11/A[9] ), .Y(n77) );
  BUFX2 U98 ( .A(\intadd_11/B[9] ), .Y(n78) );
  OR2X1 U99 ( .A(n168), .B(d2_in[6]), .Y(n124) );
  INVX1 U100 ( .A(n124), .Y(n79) );
  BUFX2 U101 ( .A(n189), .Y(n80) );
  BUFX2 U102 ( .A(n162), .Y(n81) );
  INVX1 U103 ( .A(n179), .Y(n82) );
  BUFX2 U104 ( .A(n217), .Y(n83) );
  INVX1 U105 ( .A(n131), .Y(n84) );
  BUFX2 U106 ( .A(n96), .Y(n85) );
  INVX1 U107 ( .A(n154), .Y(n86) );
  BUFX2 U108 ( .A(n206), .Y(n87) );
  INVX1 U109 ( .A(n137), .Y(n88) );
  OR2X1 U110 ( .A(d1_in[7]), .B(n21), .Y(n89) );
  INVX1 U111 ( .A(n89), .Y(n146) );
  AND2X1 U112 ( .A(d1_in[7]), .B(n27), .Y(n148) );
  INVX1 U113 ( .A(d2_in[7]), .Y(n118) );
  AOI22X1 U114 ( .A(d2_in[7]), .B(n146), .C(n148), .D(n118), .Y(
        \intadd_11/A[9] ) );
  INVX1 U115 ( .A(d2_in[6]), .Y(n121) );
  AOI22X1 U116 ( .A(d2_in[6]), .B(n146), .C(n148), .D(n121), .Y(n92) );
  AOI22X1 U117 ( .A(n137), .B(n77), .C(n49), .D(n88), .Y(\intadd_11/B[9] ) );
  INVX1 U118 ( .A(n78), .Y(\intadd_11/A[8] ) );
  INVX1 U119 ( .A(d2_in[5]), .Y(n167) );
  AOI22X1 U120 ( .A(d2_in[5]), .B(n146), .C(n148), .D(n167), .Y(n103) );
  AOI22X1 U121 ( .A(n137), .B(n49), .C(n50), .D(n88), .Y(n97) );
  INVX1 U122 ( .A(d1_in[5]), .Y(n94) );
  OR2X1 U123 ( .A(d1_in[3]), .B(d1_in[4]), .Y(n93) );
  AOI21X1 U124 ( .A(d1_in[3]), .B(d1_in[4]), .C(n94), .Y(n95) );
  INVX1 U125 ( .A(n1), .Y(n134) );
  AOI22X1 U126 ( .A(d2_in[7]), .B(n135), .C(n1), .D(n118), .Y(n96) );
  INVX1 U127 ( .A(d1_in[3]), .Y(n101) );
  MUX2X1 U128 ( .B(d1_in[3]), .A(n101), .S(d1_in[4]), .Y(n175) );
  INVX1 U129 ( .A(n175), .Y(n183) );
  AOI22X1 U130 ( .A(d2_in[6]), .B(n135), .C(n1), .D(n121), .Y(n99) );
  AOI22X1 U131 ( .A(n183), .B(n85), .C(n51), .D(n175), .Y(n98) );
  FAX1 U132 ( .A(n61), .B(n85), .C(n69), .YC(\intadd_11/B[8] ), .YS(
        \intadd_11/A[7] ) );
  INVX1 U133 ( .A(d2_in[4]), .Y(n170) );
  AOI22X1 U134 ( .A(d2_in[4]), .B(n146), .C(n148), .D(n170), .Y(n102) );
  INVX1 U135 ( .A(d2_in[3]), .Y(n207) );
  AOI22X1 U136 ( .A(d2_in[3]), .B(n146), .C(n148), .D(n207), .Y(n110) );
  AOI22X1 U137 ( .A(n137), .B(n52), .C(n53), .D(n88), .Y(n107) );
  AOI22X1 U138 ( .A(d2_in[5]), .B(n135), .C(n1), .D(n167), .Y(n111) );
  AOI22X1 U139 ( .A(n183), .B(n51), .C(n54), .D(n175), .Y(n106) );
  OR2X1 U140 ( .A(d1_in[3]), .B(n4), .Y(n204) );
  INVX1 U141 ( .A(n204), .Y(n191) );
  AOI21X1 U142 ( .A(d1_in[2]), .B(d1_in[1]), .C(n101), .Y(n206) );
  AOI22X1 U143 ( .A(d2_in[7]), .B(n191), .C(n87), .D(n118), .Y(n109) );
  AOI22X1 U144 ( .A(n137), .B(n50), .C(n52), .D(n88), .Y(n104) );
  FAX1 U145 ( .A(n68), .B(n105), .C(n22), .YC(\intadd_11/B[7] ), .YS(
        \intadd_11/A[6] ) );
  FAX1 U146 ( .A(n62), .B(n42), .C(n73), .YC(n105), .YS(n114) );
  INVX1 U147 ( .A(d1_in[1]), .Y(n168) );
  MUX2X1 U148 ( .B(d1_in[1]), .A(n168), .S(d1_in[2]), .Y(n200) );
  INVX1 U149 ( .A(n200), .Y(n201) );
  INVX1 U150 ( .A(n87), .Y(n203) );
  AOI22X1 U151 ( .A(d2_in[6]), .B(n204), .C(n203), .D(n121), .Y(n119) );
  INVX1 U152 ( .A(n28), .Y(n108) );
  AOI22X1 U153 ( .A(n201), .B(n73), .C(n108), .D(n200), .Y(n113) );
  INVX1 U154 ( .A(d2_in[2]), .Y(n208) );
  AOI22X1 U155 ( .A(d2_in[2]), .B(n146), .C(n148), .D(n208), .Y(n120) );
  AOI22X1 U156 ( .A(n137), .B(n53), .C(n55), .D(n88), .Y(n117) );
  AOI22X1 U157 ( .A(d2_in[4]), .B(n135), .C(n1), .D(n170), .Y(n125) );
  AOI22X1 U158 ( .A(n183), .B(n54), .C(n56), .D(n175), .Y(n116) );
  INVX1 U159 ( .A(n76), .Y(n115) );
  FAX1 U160 ( .A(n114), .B(n76), .C(n112), .YC(\intadd_11/B[6] ), .YS(
        \intadd_11/A[5] ) );
  FAX1 U161 ( .A(n63), .B(n43), .C(n115), .YC(n112), .YS(n127) );
  AOI22X1 U162 ( .A(d2_in[7]), .B(n71), .C(n168), .D(n118), .Y(n132) );
  AOI22X1 U163 ( .A(d2_in[5]), .B(n204), .C(n203), .D(n167), .Y(n140) );
  AOI22X1 U164 ( .A(n201), .B(n28), .C(n37), .D(n200), .Y(n133) );
  INVX1 U165 ( .A(d2_in[1]), .Y(n193) );
  AOI22X1 U166 ( .A(d2_in[1]), .B(n146), .C(n148), .D(n193), .Y(n139) );
  AOI22X1 U167 ( .A(n137), .B(n55), .C(n57), .D(n88), .Y(n130) );
  AOI22X1 U168 ( .A(d2_in[6]), .B(n169), .C(d1_in[1]), .D(n121), .Y(n123) );
  INVX1 U169 ( .A(d1_in[0]), .Y(n209) );
  AOI22X1 U170 ( .A(d1_in[0]), .B(n5), .C(n13), .D(n209), .Y(n147) );
  AOI22X1 U171 ( .A(d1_in[0]), .B(n74), .C(n79), .D(n209), .Y(n153) );
  AOI22X1 U172 ( .A(d2_in[3]), .B(n135), .C(n1), .D(n207), .Y(n136) );
  AOI22X1 U173 ( .A(n183), .B(n56), .C(n58), .D(n175), .Y(n128) );
  FAX1 U174 ( .A(n127), .B(n84), .C(n126), .YC(\intadd_11/B[5] ), .YS(
        \intadd_11/A[4] ) );
  FAX1 U175 ( .A(n64), .B(n47), .C(n23), .YC(n126), .YS(n143) );
  OAI21X1 U176 ( .A(n38), .B(n74), .C(n84), .Y(n142) );
  AOI22X1 U177 ( .A(d2_in[2]), .B(n35), .C(n134), .D(n208), .Y(n144) );
  AOI22X1 U178 ( .A(n183), .B(n58), .C(n29), .D(n175), .Y(n151) );
  INVX1 U179 ( .A(d2_in[0]), .Y(n192) );
  AOI22X1 U180 ( .A(d2_in[0]), .B(n146), .C(n148), .D(n192), .Y(n138) );
  AOI22X1 U181 ( .A(n137), .B(n57), .C(n10), .D(n88), .Y(n150) );
  AOI22X1 U182 ( .A(d2_in[4]), .B(n191), .C(n87), .D(n170), .Y(n164) );
  AOI22X1 U183 ( .A(n201), .B(n36), .C(n59), .D(n200), .Y(n149) );
  FAX1 U184 ( .A(n143), .B(n142), .C(n141), .YC(\intadd_11/B[4] ), .YS(
        \intadd_11/A[3] ) );
  AOI22X1 U185 ( .A(d2_in[1]), .B(n135), .C(n1), .D(n193), .Y(n177) );
  AOI22X1 U186 ( .A(n183), .B(n30), .C(n31), .D(n175), .Y(n162) );
  MUX2X1 U187 ( .B(n146), .A(n148), .S(n18), .Y(n161) );
  OAI21X1 U188 ( .A(n148), .B(n39), .C(n86), .Y(n160) );
  FAX1 U189 ( .A(n65), .B(n44), .C(n24), .YC(n141), .YS(n152) );
  INVX1 U190 ( .A(n152), .Y(n157) );
  MUX2X1 U191 ( .B(n86), .A(n154), .S(n67), .Y(n156) );
  INVX1 U192 ( .A(n155), .Y(\intadd_11/B[3] ) );
  FAX1 U193 ( .A(n158), .B(n157), .C(n156), .YC(n155), .YS(n159) );
  INVX1 U194 ( .A(n159), .Y(\intadd_11/A[2] ) );
  FAX1 U195 ( .A(n81), .B(n161), .C(n160), .YC(n158), .YS(n163) );
  INVX1 U196 ( .A(n163), .Y(n174) );
  AOI22X1 U197 ( .A(d2_in[3]), .B(n191), .C(n87), .D(n207), .Y(n178) );
  AOI22X1 U198 ( .A(n201), .B(n59), .C(n60), .D(n200), .Y(n173) );
  AOI22X1 U199 ( .A(d2_in[4]), .B(n169), .C(d1_in[1]), .D(n170), .Y(n166) );
  AOI22X1 U200 ( .A(d1_in[0]), .B(n6), .C(n14), .D(n209), .Y(n186) );
  AOI22X1 U201 ( .A(d2_in[5]), .B(n71), .C(n168), .D(n167), .Y(n172) );
  AND2X1 U202 ( .A(n170), .B(d1_in[1]), .Y(n171) );
  AOI22X1 U203 ( .A(d1_in[0]), .B(n7), .C(n171), .D(n209), .Y(n180) );
  FAX1 U204 ( .A(n174), .B(n45), .C(n82), .YC(\intadd_11/B[2] ), .YS(
        \intadd_11/A[1] ) );
  AOI22X1 U205 ( .A(d2_in[0]), .B(n135), .C(n1), .D(n192), .Y(n176) );
  AOI22X1 U206 ( .A(n183), .B(n32), .C(n11), .D(n175), .Y(\intadd_11/A[0] ) );
  AOI22X1 U207 ( .A(d2_in[2]), .B(n204), .C(n203), .D(n208), .Y(n182) );
  AOI22X1 U208 ( .A(n201), .B(n60), .C(n33), .D(n200), .Y(\intadd_11/B[0] ) );
  AOI21X1 U209 ( .A(n70), .B(n41), .C(n82), .Y(\intadd_11/CI ) );
  INVX1 U210 ( .A(\intadd_11/SUM[0] ), .Y(n221) );
  AOI22X1 U211 ( .A(d2_in[1]), .B(n204), .C(n203), .D(n193), .Y(n181) );
  AOI22X1 U212 ( .A(n201), .B(n34), .C(n12), .D(n200), .Y(n189) );
  MUX2X1 U213 ( .B(n135), .A(n1), .S(n19), .Y(n188) );
  OAI21X1 U214 ( .A(n1), .B(n40), .C(n70), .Y(n187) );
  FAX1 U215 ( .A(n80), .B(n188), .C(n187), .YC(n220), .YS(n225) );
  MUX2X1 U216 ( .B(n191), .A(n87), .S(n20), .Y(n199) );
  NAND3X1 U217 ( .A(d1_in[1]), .B(n192), .C(n193), .Y(n198) );
  AOI22X1 U218 ( .A(d2_in[2]), .B(n169), .C(d1_in[1]), .D(n208), .Y(n195) );
  AOI22X1 U219 ( .A(d1_in[0]), .B(n8), .C(n15), .D(n209), .Y(n205) );
  AOI22X1 U220 ( .A(n199), .B(n48), .C(n87), .D(n75), .Y(n196) );
  OAI21X1 U221 ( .A(n87), .B(n75), .C(n2), .Y(n197) );
  OAI21X1 U222 ( .A(n199), .B(n48), .C(n197), .Y(n215) );
  AOI22X1 U223 ( .A(n201), .B(d2_in[1]), .C(d2_in[0]), .D(n200), .Y(n202) );
  MUX2X1 U224 ( .B(n204), .A(n203), .S(n17), .Y(n214) );
  AOI22X1 U225 ( .A(d2_in[3]), .B(n169), .C(d1_in[1]), .D(n207), .Y(n211) );
  AOI22X1 U226 ( .A(d1_in[0]), .B(n9), .C(n16), .D(n209), .Y(n217) );
  AOI22X1 U227 ( .A(n215), .B(n214), .C(n72), .D(n83), .Y(n212) );
  OAI21X1 U228 ( .A(n72), .B(n83), .C(n3), .Y(n213) );
  OAI21X1 U229 ( .A(n215), .B(n214), .C(n213), .Y(n224) );
  INVX1 U230 ( .A(n218), .Y(\intadd_11/B[1] ) );
  FAX1 U231 ( .A(n221), .B(n220), .C(n219), .YC(n218), .YS(n222) );
  INVX1 U232 ( .A(n222), .Y(d_out[5]) );
  FAX1 U233 ( .A(n225), .B(n224), .C(n26), .YC(n219), .YS(n226) );
  INVX1 U234 ( .A(n226), .Y(d_out[4]) );
  INVX1 U235 ( .A(\intadd_11/n1 ), .Y(d_out[15]) );
endmodule


module mul8_sv_0 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_15/A[7] , \intadd_15/A[6] , \intadd_15/A[5] ,
         \intadd_15/A[4] , \intadd_15/A[3] , \intadd_15/A[2] ,
         \intadd_15/A[1] , \intadd_15/A[0] , \intadd_15/B[7] ,
         \intadd_15/B[6] , \intadd_15/B[5] , \intadd_15/B[4] ,
         \intadd_15/B[3] , \intadd_15/B[2] , \intadd_15/B[1] ,
         \intadd_15/B[0] , \intadd_15/CI , \intadd_15/SUM[0] , \intadd_15/n9 ,
         \intadd_15/n8 , \intadd_15/n7 , \intadd_15/n6 , \intadd_15/n5 ,
         \intadd_15/n4 , \intadd_15/n3 , \intadd_15/n2 , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231;

  FAX1 \intadd_15/U10  ( .A(n66), .B(n45), .C(n27), .YC(\intadd_15/n9 ), .YS(
        \intadd_15/SUM[0] ) );
  FAX1 \intadd_15/U9  ( .A(n80), .B(\intadd_15/A[1] ), .C(\intadd_15/n9 ), 
        .YC(\intadd_15/n8 ), .YS(d_out[6]) );
  FAX1 \intadd_15/U8  ( .A(\intadd_15/B[2] ), .B(\intadd_15/A[2] ), .C(
        \intadd_15/n8 ), .YC(\intadd_15/n7 ), .YS(d_out[7]) );
  FAX1 \intadd_15/U7  ( .A(\intadd_15/B[3] ), .B(\intadd_15/A[3] ), .C(
        \intadd_15/n7 ), .YC(\intadd_15/n6 ), .YS(d_out[8]) );
  FAX1 \intadd_15/U6  ( .A(\intadd_15/B[4] ), .B(\intadd_15/A[4] ), .C(
        \intadd_15/n6 ), .YC(\intadd_15/n5 ), .YS(d_out[9]) );
  FAX1 \intadd_15/U5  ( .A(\intadd_15/B[5] ), .B(\intadd_15/A[5] ), .C(
        \intadd_15/n5 ), .YC(\intadd_15/n4 ), .YS(d_out[10]) );
  FAX1 \intadd_15/U4  ( .A(\intadd_15/B[6] ), .B(\intadd_15/A[6] ), .C(
        \intadd_15/n4 ), .YC(\intadd_15/n3 ), .YS(d_out[11]) );
  FAX1 \intadd_15/U3  ( .A(\intadd_15/B[7] ), .B(\intadd_15/A[7] ), .C(
        \intadd_15/n3 ), .YC(\intadd_15/n2 ), .YS(d_out[12]) );
  AND2X1 U1 ( .A(n2), .B(n59), .Y(n221) );
  OR2X1 U2 ( .A(n39), .B(n40), .Y(n182) );
  AND2X1 U3 ( .A(n75), .B(n36), .Y(n138) );
  OR2X1 U4 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n90) );
  AND2X1 U5 ( .A(n218), .B(n38), .Y(n219) );
  AND2X1 U6 ( .A(n228), .B(n3), .Y(\intadd_15/B[1] ) );
  AND2X1 U7 ( .A(n23), .B(n90), .Y(n142) );
  OR2X1 U8 ( .A(d1_in[3]), .B(n4), .Y(n202) );
  AND2X1 U9 ( .A(d1_in[7]), .B(n23), .Y(n97) );
  AND2X1 U10 ( .A(n97), .B(n37), .Y(n157) );
  BUFX2 U11 ( .A(n96), .Y(n1) );
  BUFX2 U12 ( .A(n107), .Y(n2) );
  INVX1 U13 ( .A(n227), .Y(n3) );
  AND2X1 U14 ( .A(\intadd_15/SUM[0] ), .B(n226), .Y(n227) );
  INVX1 U15 ( .A(n105), .Y(n4) );
  OR2X1 U16 ( .A(d1_in[2]), .B(d1_in[1]), .Y(n105) );
  BUFX2 U17 ( .A(n100), .Y(n5) );
  BUFX2 U18 ( .A(n129), .Y(n6) );
  BUFX2 U19 ( .A(n170), .Y(n7) );
  BUFX2 U20 ( .A(n174), .Y(n8) );
  BUFX2 U21 ( .A(n186), .Y(n9) );
  BUFX2 U22 ( .A(n199), .Y(n10) );
  BUFX2 U23 ( .A(n143), .Y(n11) );
  BUFX2 U24 ( .A(n179), .Y(n12) );
  BUFX2 U25 ( .A(n188), .Y(n13) );
  BUFX2 U26 ( .A(n213), .Y(n14) );
  INVX1 U27 ( .A(n128), .Y(n15) );
  AND2X1 U28 ( .A(d1_in[1]), .B(n171), .Y(n128) );
  INVX1 U29 ( .A(n169), .Y(n16) );
  AND2X1 U30 ( .A(d1_in[1]), .B(n195), .Y(n169) );
  INVX1 U31 ( .A(n173), .Y(n17) );
  OR2X1 U32 ( .A(d2_in[4]), .B(n204), .Y(n173) );
  INVX1 U33 ( .A(n198), .Y(n18) );
  AND2X1 U34 ( .A(d1_in[1]), .B(n196), .Y(n198) );
  BUFX2 U35 ( .A(n201), .Y(n19) );
  INVX1 U36 ( .A(n150), .Y(n20) );
  AND2X1 U37 ( .A(d2_in[0]), .B(n142), .Y(n150) );
  INVX1 U38 ( .A(n192), .Y(n21) );
  AND2X1 U39 ( .A(d2_in[0]), .B(n191), .Y(n192) );
  BUFX2 U40 ( .A(n101), .Y(n22) );
  AND2X1 U41 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n92) );
  INVX1 U42 ( .A(n92), .Y(n23) );
  BUFX2 U43 ( .A(n110), .Y(n24) );
  BUFX2 U44 ( .A(n135), .Y(n25) );
  BUFX2 U45 ( .A(n152), .Y(n26) );
  BUFX2 U46 ( .A(\intadd_15/CI ), .Y(n27) );
  BUFX2 U47 ( .A(n126), .Y(n28) );
  INVX1 U48 ( .A(n30), .Y(n29) );
  BUFX2 U49 ( .A(n149), .Y(n30) );
  INVX1 U50 ( .A(n32), .Y(n31) );
  BUFX2 U51 ( .A(n180), .Y(n32) );
  BUFX2 U52 ( .A(n99), .Y(n33) );
  INVX1 U53 ( .A(n35), .Y(n34) );
  BUFX2 U54 ( .A(n145), .Y(n35) );
  BUFX2 U55 ( .A(n140), .Y(n36) );
  BUFX2 U56 ( .A(n151), .Y(n37) );
  BUFX2 U57 ( .A(n217), .Y(n38) );
  INVX1 U58 ( .A(n184), .Y(n39) );
  AND2X1 U59 ( .A(n1), .B(n60), .Y(n184) );
  BUFX2 U60 ( .A(n183), .Y(n40) );
  BUFX2 U61 ( .A(n113), .Y(n41) );
  BUFX2 U62 ( .A(n123), .Y(n42) );
  BUFX2 U63 ( .A(n153), .Y(n43) );
  BUFX2 U64 ( .A(n175), .Y(n44) );
  BUFX2 U65 ( .A(\intadd_15/A[0] ), .Y(n45) );
  INVX1 U66 ( .A(n136), .Y(n46) );
  OR2X1 U67 ( .A(n87), .B(n68), .Y(n136) );
  BUFX2 U68 ( .A(n109), .Y(n47) );
  BUFX2 U69 ( .A(n104), .Y(n48) );
  BUFX2 U70 ( .A(n108), .Y(n49) );
  BUFX2 U71 ( .A(n117), .Y(n50) );
  BUFX2 U72 ( .A(n118), .Y(n51) );
  BUFX2 U73 ( .A(n127), .Y(n52) );
  BUFX2 U74 ( .A(n132), .Y(n53) );
  BUFX2 U75 ( .A(n144), .Y(n54) );
  BUFX2 U76 ( .A(n141), .Y(n55) );
  BUFX2 U77 ( .A(n167), .Y(n56) );
  BUFX2 U78 ( .A(n181), .Y(n57) );
  BUFX2 U79 ( .A(n189), .Y(n58) );
  BUFX2 U80 ( .A(n203), .Y(n59) );
  BUFX2 U81 ( .A(n190), .Y(n60) );
  BUFX2 U82 ( .A(n231), .Y(n61) );
  BUFX2 U83 ( .A(n114), .Y(n62) );
  BUFX2 U84 ( .A(n124), .Y(n63) );
  BUFX2 U85 ( .A(n137), .Y(n64) );
  BUFX2 U86 ( .A(n154), .Y(n65) );
  BUFX2 U87 ( .A(\intadd_15/B[0] ), .Y(n66) );
  BUFX2 U88 ( .A(n224), .Y(n67) );
  BUFX2 U89 ( .A(n156), .Y(n68) );
  INVX1 U90 ( .A(n221), .Y(n69) );
  BUFX2 U91 ( .A(n229), .Y(n70) );
  AND2X1 U92 ( .A(n95), .B(n94), .Y(n194) );
  INVX1 U93 ( .A(n194), .Y(n71) );
  AND2X1 U94 ( .A(n204), .B(d1_in[0]), .Y(n172) );
  INVX1 U95 ( .A(n172), .Y(n72) );
  INVX1 U96 ( .A(n97), .Y(n73) );
  BUFX2 U97 ( .A(n116), .Y(n74) );
  BUFX2 U98 ( .A(n139), .Y(n75) );
  BUFX2 U99 ( .A(n120), .Y(n76) );
  INVX1 U100 ( .A(n219), .Y(n77) );
  AND2X1 U101 ( .A(d1_in[1]), .B(n187), .Y(n185) );
  INVX1 U102 ( .A(n185), .Y(n78) );
  AND2X1 U103 ( .A(n205), .B(d2_in[0]), .Y(n206) );
  INVX1 U104 ( .A(n206), .Y(n79) );
  INVX1 U105 ( .A(\intadd_15/B[1] ), .Y(n80) );
  BUFX2 U106 ( .A(n165), .Y(n81) );
  BUFX2 U107 ( .A(n216), .Y(n82) );
  INVX1 U108 ( .A(n182), .Y(n83) );
  AND2X1 U109 ( .A(n91), .B(n90), .Y(n98) );
  INVX1 U110 ( .A(n98), .Y(n84) );
  INVX1 U111 ( .A(n138), .Y(n85) );
  BUFX2 U112 ( .A(n230), .Y(n86) );
  INVX1 U113 ( .A(n157), .Y(n87) );
  INVX1 U114 ( .A(n202), .Y(n88) );
  INVX1 U115 ( .A(n142), .Y(n89) );
  INVX1 U116 ( .A(d1_in[7]), .Y(n91) );
  INVX1 U117 ( .A(d2_in[6]), .Y(n130) );
  AOI22X1 U118 ( .A(d2_in[6]), .B(n84), .C(n73), .D(n130), .Y(n99) );
  INVX1 U119 ( .A(n33), .Y(n93) );
  INVX1 U120 ( .A(d2_in[5]), .Y(n171) );
  AOI22X1 U121 ( .A(d2_in[5]), .B(n98), .C(n97), .D(n171), .Y(n109) );
  AOI22X1 U122 ( .A(n142), .B(n93), .C(n47), .D(n89), .Y(n231) );
  INVX1 U123 ( .A(d1_in[5]), .Y(n95) );
  OR2X1 U124 ( .A(d1_in[3]), .B(d1_in[4]), .Y(n94) );
  AOI21X1 U125 ( .A(d1_in[3]), .B(d1_in[4]), .C(n95), .Y(n96) );
  INVX1 U126 ( .A(n1), .Y(n193) );
  INVX1 U127 ( .A(d2_in[7]), .Y(n125) );
  AOI22X1 U128 ( .A(d2_in[7]), .B(n194), .C(n1), .D(n125), .Y(n230) );
  INVX1 U129 ( .A(d1_in[3]), .Y(n106) );
  MUX2X1 U130 ( .B(n106), .A(d1_in[3]), .S(d1_in[4]), .Y(n191) );
  AOI22X1 U131 ( .A(d2_in[6]), .B(n194), .C(n1), .D(n130), .Y(n104) );
  INVX1 U132 ( .A(n191), .Y(n178) );
  AOI22X1 U133 ( .A(n191), .B(n86), .C(n48), .D(n178), .Y(n229) );
  AOI22X1 U134 ( .A(d2_in[7]), .B(n84), .C(n73), .D(n125), .Y(n100) );
  AOI22X1 U135 ( .A(n142), .B(n5), .C(n33), .D(n89), .Y(n101) );
  XOR2X1 U136 ( .A(n102), .B(n22), .Y(n103) );
  XOR2X1 U137 ( .A(\intadd_15/n2 ), .B(n103), .Y(d_out[13]) );
  INVX1 U138 ( .A(n70), .Y(n112) );
  INVX1 U139 ( .A(d2_in[4]), .Y(n168) );
  AOI22X1 U140 ( .A(d2_in[4]), .B(n98), .C(n97), .D(n168), .Y(n108) );
  INVX1 U141 ( .A(d2_in[3]), .Y(n195) );
  AOI22X1 U142 ( .A(d2_in[3]), .B(n98), .C(n97), .D(n195), .Y(n117) );
  AOI22X1 U143 ( .A(n142), .B(n49), .C(n50), .D(n89), .Y(n114) );
  AOI22X1 U144 ( .A(d2_in[5]), .B(n194), .C(n1), .D(n171), .Y(n118) );
  AOI22X1 U145 ( .A(n191), .B(n48), .C(n51), .D(n178), .Y(n113) );
  AOI21X1 U146 ( .A(d1_in[2]), .B(d1_in[1]), .C(n106), .Y(n107) );
  INVX1 U147 ( .A(n2), .Y(n207) );
  AOI22X1 U148 ( .A(d2_in[7]), .B(n88), .C(n2), .D(n125), .Y(n116) );
  AOI22X1 U149 ( .A(n142), .B(n47), .C(n49), .D(n89), .Y(n110) );
  FAX1 U150 ( .A(n112), .B(n111), .C(n24), .YC(\intadd_15/B[7] ), .YS(
        \intadd_15/A[6] ) );
  FAX1 U151 ( .A(n62), .B(n41), .C(n74), .YC(n111), .YS(n121) );
  INVX1 U152 ( .A(d1_in[1]), .Y(n204) );
  MUX2X1 U153 ( .B(n204), .A(d1_in[1]), .S(d1_in[2]), .Y(n205) );
  AOI22X1 U154 ( .A(d2_in[6]), .B(n202), .C(n207), .D(n130), .Y(n126) );
  INVX1 U155 ( .A(n28), .Y(n115) );
  INVX1 U156 ( .A(n205), .Y(n200) );
  AOI22X1 U157 ( .A(n205), .B(n74), .C(n115), .D(n200), .Y(n120) );
  INVX1 U158 ( .A(d2_in[2]), .Y(n196) );
  AOI22X1 U159 ( .A(d2_in[2]), .B(n98), .C(n97), .D(n196), .Y(n127) );
  AOI22X1 U160 ( .A(n142), .B(n50), .C(n52), .D(n89), .Y(n124) );
  AOI22X1 U161 ( .A(d2_in[4]), .B(n194), .C(n1), .D(n168), .Y(n132) );
  AOI22X1 U162 ( .A(n191), .B(n51), .C(n53), .D(n178), .Y(n123) );
  INVX1 U163 ( .A(n76), .Y(n122) );
  FAX1 U164 ( .A(n121), .B(n76), .C(n119), .YC(\intadd_15/B[6] ), .YS(
        \intadd_15/A[5] ) );
  FAX1 U165 ( .A(n63), .B(n42), .C(n122), .YC(n119), .YS(n134) );
  AOI22X1 U166 ( .A(d2_in[7]), .B(n72), .C(n204), .D(n125), .Y(n139) );
  AOI22X1 U167 ( .A(d2_in[5]), .B(n202), .C(n207), .D(n171), .Y(n145) );
  AOI22X1 U168 ( .A(n205), .B(n28), .C(n35), .D(n200), .Y(n140) );
  INVX1 U169 ( .A(d2_in[1]), .Y(n187) );
  AOI22X1 U170 ( .A(d2_in[1]), .B(n98), .C(n97), .D(n187), .Y(n144) );
  AOI22X1 U171 ( .A(n142), .B(n52), .C(n54), .D(n89), .Y(n137) );
  AOI22X1 U172 ( .A(d2_in[6]), .B(n172), .C(d1_in[1]), .D(n130), .Y(n129) );
  INVX1 U173 ( .A(d1_in[0]), .Y(n197) );
  AOI22X1 U174 ( .A(d1_in[0]), .B(n6), .C(n15), .D(n197), .Y(n151) );
  AND2X1 U175 ( .A(d1_in[1]), .B(n130), .Y(n131) );
  AOI22X1 U176 ( .A(d1_in[0]), .B(n75), .C(n131), .D(n197), .Y(n156) );
  AOI22X1 U177 ( .A(d2_in[3]), .B(n194), .C(n1), .D(n195), .Y(n141) );
  AOI22X1 U178 ( .A(n191), .B(n53), .C(n55), .D(n178), .Y(n135) );
  FAX1 U179 ( .A(n134), .B(n85), .C(n133), .YC(\intadd_15/B[5] ), .YS(
        \intadd_15/A[4] ) );
  FAX1 U180 ( .A(n64), .B(n46), .C(n25), .YC(n133), .YS(n148) );
  OAI21X1 U181 ( .A(n36), .B(n75), .C(n85), .Y(n147) );
  AOI22X1 U182 ( .A(d2_in[2]), .B(n71), .C(n193), .D(n196), .Y(n149) );
  AOI22X1 U183 ( .A(n191), .B(n55), .C(n29), .D(n178), .Y(n154) );
  INVX1 U184 ( .A(d2_in[0]), .Y(n177) );
  AOI22X1 U185 ( .A(d2_in[0]), .B(n98), .C(n97), .D(n177), .Y(n143) );
  AOI22X1 U186 ( .A(n142), .B(n54), .C(n11), .D(n89), .Y(n153) );
  AOI22X1 U187 ( .A(d2_in[4]), .B(n88), .C(n2), .D(n168), .Y(n167) );
  AOI22X1 U188 ( .A(n205), .B(n34), .C(n56), .D(n200), .Y(n152) );
  FAX1 U189 ( .A(n148), .B(n147), .C(n146), .YC(\intadd_15/B[4] ), .YS(
        \intadd_15/A[3] ) );
  AOI22X1 U190 ( .A(d2_in[1]), .B(n194), .C(n1), .D(n187), .Y(n180) );
  AOI22X1 U191 ( .A(n191), .B(n30), .C(n31), .D(n178), .Y(n165) );
  MUX2X1 U192 ( .B(n98), .A(n97), .S(n20), .Y(n164) );
  OAI21X1 U193 ( .A(n97), .B(n37), .C(n87), .Y(n163) );
  FAX1 U194 ( .A(n65), .B(n43), .C(n26), .YC(n146), .YS(n155) );
  INVX1 U195 ( .A(n155), .Y(n160) );
  MUX2X1 U196 ( .B(n87), .A(n157), .S(n68), .Y(n159) );
  INVX1 U197 ( .A(n158), .Y(\intadd_15/B[3] ) );
  FAX1 U198 ( .A(n161), .B(n160), .C(n159), .YC(n158), .YS(n162) );
  INVX1 U199 ( .A(n162), .Y(\intadd_15/A[2] ) );
  FAX1 U200 ( .A(n81), .B(n164), .C(n163), .YC(n161), .YS(n166) );
  INVX1 U201 ( .A(n166), .Y(n176) );
  AOI22X1 U202 ( .A(d2_in[3]), .B(n88), .C(n2), .D(n195), .Y(n181) );
  AOI22X1 U203 ( .A(n205), .B(n56), .C(n57), .D(n200), .Y(n175) );
  AOI22X1 U204 ( .A(d2_in[4]), .B(n172), .C(d1_in[1]), .D(n168), .Y(n170) );
  AOI22X1 U205 ( .A(d1_in[0]), .B(n7), .C(n16), .D(n197), .Y(n190) );
  AOI22X1 U206 ( .A(d2_in[5]), .B(n72), .C(n204), .D(n171), .Y(n174) );
  AOI22X1 U207 ( .A(d1_in[0]), .B(n8), .C(n17), .D(n197), .Y(n183) );
  FAX1 U208 ( .A(n176), .B(n44), .C(n83), .YC(\intadd_15/B[2] ), .YS(
        \intadd_15/A[1] ) );
  AOI22X1 U209 ( .A(d2_in[0]), .B(n194), .C(n1), .D(n177), .Y(n179) );
  AOI22X1 U210 ( .A(n191), .B(n32), .C(n12), .D(n178), .Y(\intadd_15/A[0] ) );
  AOI22X1 U211 ( .A(d2_in[2]), .B(n88), .C(n2), .D(n196), .Y(n189) );
  AOI22X1 U212 ( .A(n205), .B(n57), .C(n58), .D(n200), .Y(\intadd_15/B[0] ) );
  AOI21X1 U213 ( .A(n39), .B(n40), .C(n83), .Y(\intadd_15/CI ) );
  AOI22X1 U214 ( .A(d2_in[2]), .B(n172), .C(d1_in[1]), .D(n196), .Y(n186) );
  AOI22X1 U215 ( .A(d1_in[0]), .B(n9), .C(n78), .D(n197), .Y(n203) );
  AOI22X1 U216 ( .A(d2_in[1]), .B(n88), .C(n2), .D(n187), .Y(n188) );
  AOI22X1 U217 ( .A(n205), .B(n58), .C(n13), .D(n200), .Y(n224) );
  MUX2X1 U218 ( .B(n193), .A(n1), .S(n60), .Y(n223) );
  MUX2X1 U219 ( .B(n71), .A(n193), .S(n21), .Y(n222) );
  AOI22X1 U220 ( .A(d2_in[3]), .B(n172), .C(d1_in[1]), .D(n195), .Y(n199) );
  AOI22X1 U221 ( .A(d1_in[0]), .B(n10), .C(n18), .D(n197), .Y(n216) );
  HAX1 U222 ( .A(n82), .B(n69), .YS(n215) );
  AOI22X1 U223 ( .A(n205), .B(d2_in[1]), .C(d2_in[0]), .D(n200), .Y(n201) );
  MUX2X1 U224 ( .B(n88), .A(n2), .S(n19), .Y(n214) );
  MUX2X1 U225 ( .B(n207), .A(n2), .S(n59), .Y(n211) );
  NOR3X1 U226 ( .A(d2_in[1]), .B(d2_in[0]), .C(n204), .Y(n210) );
  MUX2X1 U227 ( .B(n202), .A(n207), .S(n79), .Y(n209) );
  OR2X1 U228 ( .A(n211), .B(n210), .Y(n208) );
  AOI22X1 U229 ( .A(n211), .B(n210), .C(n209), .D(n208), .Y(n213) );
  OR2X1 U230 ( .A(n215), .B(n214), .Y(n212) );
  AOI22X1 U231 ( .A(n215), .B(n214), .C(n14), .D(n212), .Y(n217) );
  OAI21X1 U232 ( .A(n218), .B(n38), .C(n82), .Y(n220) );
  OAI21X1 U233 ( .A(n69), .B(n220), .C(n77), .Y(n226) );
  FAX1 U234 ( .A(n67), .B(n223), .C(n222), .YC(n225), .YS(n218) );
  OAI21X1 U235 ( .A(\intadd_15/SUM[0] ), .B(n226), .C(n225), .Y(n228) );
  FAX1 U236 ( .A(n61), .B(n86), .C(n70), .YC(n102), .YS(\intadd_15/A[7] ) );
endmodule


module truncation_sv_0 ( d_in, d_out );
  input [15:0] d_in;
  output [7:0] d_out;
  wire   \d_in[13] , \d_in[12] , \d_in[11] , \d_in[10] , \d_in[9] , \d_in[8] ,
         \d_in[7] , \d_in[6] ;
  assign d_out[7] = \d_in[13] ;
  assign \d_in[13]  = d_in[13];
  assign d_out[6] = \d_in[12] ;
  assign \d_in[12]  = d_in[12];
  assign d_out[5] = \d_in[11] ;
  assign \d_in[11]  = d_in[11];
  assign d_out[4] = \d_in[10] ;
  assign \d_in[10]  = d_in[10];
  assign d_out[3] = \d_in[9] ;
  assign \d_in[9]  = d_in[9];
  assign d_out[2] = \d_in[8] ;
  assign \d_in[8]  = d_in[8];
  assign d_out[1] = \d_in[7] ;
  assign \d_in[7]  = d_in[7];
  assign d_out[0] = \d_in[6] ;
  assign \d_in[6]  = d_in[6];

endmodule


module truncation_sv_1 ( d_in, d_out );
  input [15:0] d_in;
  output [7:0] d_out;
  wire   \d_in[13] , \d_in[12] , \d_in[11] , \d_in[10] , \d_in[9] , \d_in[8] ,
         \d_in[7] , \d_in[6] ;
  assign d_out[7] = \d_in[13] ;
  assign \d_in[13]  = d_in[13];
  assign d_out[6] = \d_in[12] ;
  assign \d_in[12]  = d_in[12];
  assign d_out[5] = \d_in[11] ;
  assign \d_in[11]  = d_in[11];
  assign d_out[4] = \d_in[10] ;
  assign \d_in[10]  = d_in[10];
  assign d_out[3] = \d_in[9] ;
  assign \d_in[9]  = d_in[9];
  assign d_out[2] = \d_in[8] ;
  assign \d_in[8]  = d_in[8];
  assign d_out[1] = \d_in[7] ;
  assign \d_in[7]  = d_in[7];
  assign d_out[0] = \d_in[6] ;
  assign \d_in[6]  = d_in[6];

endmodule


module unit_calc_sv_0 ( x_in, x_N_in, ue_in, y_in, x_out, x_N_out, ue_out, 
        clock, \y_out[7] , \y_out[6] , \y_out[5] , \y_out[4] , \y_out[3] , 
        \y_out[2] , \y_out[1] , \y_out[0]_BAR  );
  input [7:0] x_in;
  input [7:0] x_N_in;
  input [7:0] ue_in;
  input [7:0] y_in;
  output [7:0] x_out;
  output [7:0] x_N_out;
  output [7:0] ue_out;
  input clock;
  output \y_out[7] , \y_out[6] , \y_out[5] , \y_out[4] , \y_out[3] ,
         \y_out[2] , \y_out[1] , \y_out[0]_BAR ;
  wire   \intadd_1/CI , \intadd_1/n7 , \intadd_1/n6 , \intadd_1/n5 ,
         \intadd_1/n4 , \intadd_1/n3 , \intadd_1/n2 , n27, n28;
  wire   [7:0] y_out;
  wire   [31:8] shiftx;
  wire   [15:0] shifty;
  wire   [7:0] y_out8;
  wire   [15:0] xnin_ue;
  wire   [15:0] xnin_ue_scaled;
  wire   [15:0] coeff16;
  wire   [15:0] new_coeff_true;
  wire   [15:0] delayed_new_coeff_true;
  wire   [7:0] coeff8;
  wire   [15:0] y_out16;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16;
  assign \y_out[7]  = y_out[7];
  assign \y_out[6]  = y_out[6];
  assign \y_out[5]  = y_out[5];
  assign \y_out[4]  = y_out[4];
  assign \y_out[3]  = y_out[3];
  assign \y_out[2]  = y_out[2];
  assign \y_out[1]  = y_out[1];

  mul8_sv_1 mul_xnin_ue ( .d1_in(x_N_in), .d2_in(ue_in), .d_out({xnin_ue[15:4], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
  u_scaling_sv_0 u1 ( .d_in({xnin_ue[15:4], 1'b0, 1'b0, 1'b0, 1'b0}), .d_out({
        SYNOPSYS_UNCONNECTED__4, xnin_ue_scaled[14], SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, xnin_ue_scaled[10:0]}), .clock(clock) );
  add16_sv_0 add1 ( .d1_in({1'b0, xnin_ue_scaled[14], 1'b0, 1'b0, 1'b0, 
        xnin_ue_scaled[10:0]}), .d2_in({1'b0, coeff16[14], 1'b0, coeff16[12:0]}), .d_out(new_coeff_true) );
  shift_1d_16_sv_0 delay_2 ( .xin(new_coeff_true), .xout(
        delayed_new_coeff_true), .clock(clock) );
  saturation_sv_0 sat_1 ( .d_in(delayed_new_coeff_true), .d_out({
        SYNOPSYS_UNCONNECTED__8, coeff16[14:0]}) );
  truncation_sv_1 trunc_1 ( .d_in({1'b0, 1'b0, coeff16[13:6], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .d_out(coeff8) );
  mul8_sv_0 mul_coeff_x_in ( .d1_in(coeff8), .d2_in(shiftx[31:24]), .d_out({
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, y_out16[13:6], 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16}) );
  truncation_sv_0 trunc_2 ( .d_in({1'b0, 1'b0, y_out16[13:6], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .d_out(y_out8) );
  DFFPOSX1 \shiftx_reg[31]  ( .D(x_in[7]), .CLK(clock), .Q(shiftx[31]) );
  DFFPOSX1 \shiftx_reg[30]  ( .D(x_in[6]), .CLK(clock), .Q(shiftx[30]) );
  DFFPOSX1 \shiftx_reg[29]  ( .D(x_in[5]), .CLK(clock), .Q(shiftx[29]) );
  DFFPOSX1 \shiftx_reg[28]  ( .D(x_in[4]), .CLK(clock), .Q(shiftx[28]) );
  DFFPOSX1 \shiftx_reg[27]  ( .D(x_in[3]), .CLK(clock), .Q(shiftx[27]) );
  DFFPOSX1 \shiftx_reg[26]  ( .D(x_in[2]), .CLK(clock), .Q(shiftx[26]) );
  DFFPOSX1 \shiftx_reg[25]  ( .D(x_in[1]), .CLK(clock), .Q(shiftx[25]) );
  DFFPOSX1 \shiftx_reg[24]  ( .D(x_in[0]), .CLK(clock), .Q(shiftx[24]) );
  DFFPOSX1 \shifty_reg[15]  ( .D(y_in[7]), .CLK(clock), .Q(shifty[15]) );
  DFFPOSX1 \shifty_reg[14]  ( .D(y_in[6]), .CLK(clock), .Q(shifty[14]) );
  DFFPOSX1 \shifty_reg[13]  ( .D(y_in[5]), .CLK(clock), .Q(shifty[13]) );
  DFFPOSX1 \shifty_reg[12]  ( .D(y_in[4]), .CLK(clock), .Q(shifty[12]) );
  DFFPOSX1 \shifty_reg[11]  ( .D(y_in[3]), .CLK(clock), .Q(shifty[11]) );
  DFFPOSX1 \shifty_reg[10]  ( .D(y_in[2]), .CLK(clock), .Q(shifty[10]) );
  DFFPOSX1 \shifty_reg[9]  ( .D(y_in[1]), .CLK(clock), .Q(shifty[9]) );
  DFFPOSX1 \shifty_reg[8]  ( .D(y_in[0]), .CLK(clock), .Q(shifty[8]) );
  DFFPOSX1 \shifty_reg[7]  ( .D(shifty[15]), .CLK(clock), .Q(shifty[7]) );
  DFFPOSX1 \shifty_reg[6]  ( .D(shifty[14]), .CLK(clock), .Q(shifty[6]) );
  DFFPOSX1 \shifty_reg[5]  ( .D(shifty[13]), .CLK(clock), .Q(shifty[5]) );
  DFFPOSX1 \shifty_reg[4]  ( .D(shifty[12]), .CLK(clock), .Q(shifty[4]) );
  DFFPOSX1 \shifty_reg[3]  ( .D(shifty[11]), .CLK(clock), .Q(shifty[3]) );
  DFFPOSX1 \shifty_reg[2]  ( .D(shifty[10]), .CLK(clock), .Q(shifty[2]) );
  DFFPOSX1 \shifty_reg[1]  ( .D(shifty[9]), .CLK(clock), .Q(shifty[1]) );
  DFFPOSX1 \shifty_reg[0]  ( .D(shifty[8]), .CLK(clock), .Q(shifty[0]) );
  FAX1 \intadd_1/U8  ( .A(shifty[1]), .B(y_out8[1]), .C(\intadd_1/CI ), .YC(
        \intadd_1/n7 ), .YS(y_out[1]) );
  FAX1 \intadd_1/U7  ( .A(shifty[2]), .B(y_out8[2]), .C(\intadd_1/n7 ), .YC(
        \intadd_1/n6 ), .YS(y_out[2]) );
  FAX1 \intadd_1/U6  ( .A(shifty[3]), .B(y_out8[3]), .C(\intadd_1/n6 ), .YC(
        \intadd_1/n5 ), .YS(y_out[3]) );
  FAX1 \intadd_1/U5  ( .A(shifty[4]), .B(y_out8[4]), .C(\intadd_1/n5 ), .YC(
        \intadd_1/n4 ), .YS(y_out[4]) );
  FAX1 \intadd_1/U4  ( .A(shifty[5]), .B(y_out8[5]), .C(\intadd_1/n4 ), .YC(
        \intadd_1/n3 ), .YS(y_out[5]) );
  FAX1 \intadd_1/U3  ( .A(shifty[6]), .B(y_out8[6]), .C(\intadd_1/n3 ), .YC(
        \intadd_1/n2 ), .YS(y_out[6]) );
  AND2X1 U9 ( .A(shifty[0]), .B(y_out8[0]), .Y(\intadd_1/CI ) );
  XOR2X1 U10 ( .A(shifty[7]), .B(y_out8[7]), .Y(n27) );
  XOR2X1 U11 ( .A(\intadd_1/n2 ), .B(n27), .Y(y_out[7]) );
  INVX1 U12 ( .A(\intadd_1/CI ), .Y(n28) );
  OAI21X1 U13 ( .A(shifty[0]), .B(y_out8[0]), .C(n28), .Y(\y_out[0]_BAR ) );
endmodule


module shift_1d_16_sv_1 ( xin, xout, clock );
  input [15:0] xin;
  output [15:0] xout;
  input clock;


  DFFPOSX1 \shift_reg_reg[15]  ( .D(xin[15]), .CLK(clock), .Q(xout[15]) );
  DFFPOSX1 \shift_reg_reg[14]  ( .D(xin[14]), .CLK(clock), .Q(xout[14]) );
  DFFPOSX1 \shift_reg_reg[13]  ( .D(xin[13]), .CLK(clock), .Q(xout[13]) );
  DFFPOSX1 \shift_reg_reg[12]  ( .D(xin[12]), .CLK(clock), .Q(xout[12]) );
  DFFPOSX1 \shift_reg_reg[11]  ( .D(xin[11]), .CLK(clock), .Q(xout[11]) );
  DFFPOSX1 \shift_reg_reg[10]  ( .D(xin[10]), .CLK(clock), .Q(xout[10]) );
  DFFPOSX1 \shift_reg_reg[9]  ( .D(xin[9]), .CLK(clock), .Q(xout[9]) );
  DFFPOSX1 \shift_reg_reg[8]  ( .D(xin[8]), .CLK(clock), .Q(xout[8]) );
  DFFPOSX1 \shift_reg_reg[7]  ( .D(xin[7]), .CLK(clock), .Q(xout[7]) );
  DFFPOSX1 \shift_reg_reg[6]  ( .D(xin[6]), .CLK(clock), .Q(xout[6]) );
  DFFPOSX1 \shift_reg_reg[5]  ( .D(xin[5]), .CLK(clock), .Q(xout[5]) );
  DFFPOSX1 \shift_reg_reg[4]  ( .D(xin[4]), .CLK(clock), .Q(xout[4]) );
  DFFPOSX1 \shift_reg_reg[3]  ( .D(xin[3]), .CLK(clock), .Q(xout[3]) );
  DFFPOSX1 \shift_reg_reg[2]  ( .D(xin[2]), .CLK(clock), .Q(xout[2]) );
  DFFPOSX1 \shift_reg_reg[1]  ( .D(xin[1]), .CLK(clock), .Q(xout[1]) );
  DFFPOSX1 \shift_reg_reg[0]  ( .D(xin[0]), .CLK(clock), .Q(xout[0]) );
endmodule


module u_scaling_sv_1 ( d_in, d_out, clock );
  input [15:0] d_in;
  output [15:0] d_out;
  input clock;


  DFFPOSX1 \d_out_reg_reg[11]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[14]) );
  DFFPOSX1 \d_out_reg_reg[10]  ( .D(d_in[14]), .CLK(clock), .Q(d_out[10]) );
  DFFPOSX1 \d_out_reg_reg[9]  ( .D(d_in[13]), .CLK(clock), .Q(d_out[9]) );
  DFFPOSX1 \d_out_reg_reg[8]  ( .D(d_in[12]), .CLK(clock), .Q(d_out[8]) );
  DFFPOSX1 \d_out_reg_reg[7]  ( .D(d_in[11]), .CLK(clock), .Q(d_out[7]) );
  DFFPOSX1 \d_out_reg_reg[6]  ( .D(d_in[10]), .CLK(clock), .Q(d_out[6]) );
  DFFPOSX1 \d_out_reg_reg[5]  ( .D(d_in[9]), .CLK(clock), .Q(d_out[5]) );
  DFFPOSX1 \d_out_reg_reg[4]  ( .D(d_in[8]), .CLK(clock), .Q(d_out[4]) );
  DFFPOSX1 \d_out_reg_reg[3]  ( .D(d_in[7]), .CLK(clock), .Q(d_out[3]) );
  DFFPOSX1 \d_out_reg_reg[2]  ( .D(d_in[6]), .CLK(clock), .Q(d_out[2]) );
  DFFPOSX1 \d_out_reg_reg[1]  ( .D(d_in[5]), .CLK(clock), .Q(d_out[1]) );
  DFFPOSX1 \d_out_reg_reg[0]  ( .D(d_in[4]), .CLK(clock), .Q(d_out[0]) );
endmodule


module saturation_sv_1 ( d_in, d_out );
  input [15:0] d_in;
  output [15:0] d_out;
  wire   n2, n3, n4, n5, n6, n7;
  assign d_out[13] = d_in[15];
  assign d_out[14] = d_in[15];

  INVX1 U3 ( .A(n7), .Y(d_out[12]) );
  AND2X1 U4 ( .A(n5), .B(n3), .Y(n7) );
  BUFX2 U5 ( .A(n4), .Y(n2) );
  INVX1 U6 ( .A(d_in[15]), .Y(n5) );
  NOR3X1 U7 ( .A(d_in[13]), .B(d_in[12]), .C(d_in[14]), .Y(n3) );
  NAND3X1 U8 ( .A(d_in[14]), .B(d_in[13]), .C(d_in[12]), .Y(n4) );
  OAI21X1 U9 ( .A(n5), .B(n2), .C(d_out[12]), .Y(n6) );
  AND2X1 U10 ( .A(d_in[7]), .B(n6), .Y(d_out[7]) );
  AND2X1 U11 ( .A(d_in[1]), .B(n6), .Y(d_out[1]) );
  AND2X1 U12 ( .A(d_in[2]), .B(n6), .Y(d_out[2]) );
  AND2X1 U13 ( .A(d_in[3]), .B(n6), .Y(d_out[3]) );
  AND2X1 U14 ( .A(d_in[4]), .B(n6), .Y(d_out[4]) );
  AND2X1 U15 ( .A(d_in[5]), .B(n6), .Y(d_out[5]) );
  AND2X1 U16 ( .A(d_in[6]), .B(n6), .Y(d_out[6]) );
  AND2X1 U17 ( .A(d_in[8]), .B(n6), .Y(d_out[8]) );
  AND2X1 U18 ( .A(d_in[11]), .B(n6), .Y(d_out[11]) );
  AND2X1 U19 ( .A(d_in[10]), .B(n6), .Y(d_out[10]) );
  AND2X1 U20 ( .A(d_in[9]), .B(n6), .Y(d_out[9]) );
  AND2X1 U21 ( .A(d_in[0]), .B(n6), .Y(d_out[0]) );
endmodule


module add16_sv_1 ( d1_in, d2_in, d_out );
  input [15:0] d1_in;
  input [15:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_8/A[12] , \intadd_8/B[12] , \intadd_8/CI , \intadd_8/n13 ,
         \intadd_8/n12 , \intadd_8/n11 , \intadd_8/n10 , \intadd_8/n9 ,
         \intadd_8/n8 , \intadd_8/n7 , \intadd_8/n6 , \intadd_8/n5 ,
         \intadd_8/n4 , \intadd_8/n3 , \intadd_8/n2 , \intadd_8/n1 , n1, n2;
  assign d_out[15] = d_out[14];

  FAX1 \intadd_8/U14  ( .A(d2_in[1]), .B(d1_in[1]), .C(\intadd_8/CI ), .YC(
        \intadd_8/n13 ), .YS(d_out[1]) );
  FAX1 \intadd_8/U13  ( .A(d2_in[2]), .B(d1_in[2]), .C(\intadd_8/n13 ), .YC(
        \intadd_8/n12 ), .YS(d_out[2]) );
  FAX1 \intadd_8/U12  ( .A(d2_in[3]), .B(d1_in[3]), .C(\intadd_8/n12 ), .YC(
        \intadd_8/n11 ), .YS(d_out[3]) );
  FAX1 \intadd_8/U11  ( .A(d2_in[4]), .B(d1_in[4]), .C(\intadd_8/n11 ), .YC(
        \intadd_8/n10 ), .YS(d_out[4]) );
  FAX1 \intadd_8/U10  ( .A(d2_in[5]), .B(d1_in[5]), .C(\intadd_8/n10 ), .YC(
        \intadd_8/n9 ), .YS(d_out[5]) );
  FAX1 \intadd_8/U9  ( .A(d2_in[6]), .B(d1_in[6]), .C(\intadd_8/n9 ), .YC(
        \intadd_8/n8 ), .YS(d_out[6]) );
  FAX1 \intadd_8/U8  ( .A(d2_in[7]), .B(d1_in[7]), .C(\intadd_8/n8 ), .YC(
        \intadd_8/n7 ), .YS(d_out[7]) );
  FAX1 \intadd_8/U7  ( .A(d2_in[8]), .B(d1_in[8]), .C(\intadd_8/n7 ), .YC(
        \intadd_8/n6 ), .YS(d_out[8]) );
  FAX1 \intadd_8/U6  ( .A(d2_in[9]), .B(d1_in[9]), .C(\intadd_8/n6 ), .YC(
        \intadd_8/n5 ), .YS(d_out[9]) );
  FAX1 \intadd_8/U5  ( .A(d2_in[10]), .B(d1_in[10]), .C(\intadd_8/n5 ), .YC(
        \intadd_8/n4 ), .YS(d_out[10]) );
  FAX1 \intadd_8/U4  ( .A(d1_in[14]), .B(d2_in[11]), .C(\intadd_8/n4 ), .YC(
        \intadd_8/n3 ), .YS(d_out[11]) );
  FAX1 \intadd_8/U3  ( .A(d1_in[14]), .B(d2_in[12]), .C(\intadd_8/n3 ), .YC(
        \intadd_8/n2 ), .YS(d_out[12]) );
  FAX1 \intadd_8/U2  ( .A(\intadd_8/B[12] ), .B(\intadd_8/A[12] ), .C(
        \intadd_8/n2 ), .YC(\intadd_8/n1 ), .YS(d_out[13]) );
  AND2X1 U1 ( .A(d2_in[0]), .B(d1_in[0]), .Y(\intadd_8/CI ) );
  INVX1 U2 ( .A(d1_in[14]), .Y(\intadd_8/A[12] ) );
  INVX1 U3 ( .A(d2_in[14]), .Y(\intadd_8/B[12] ) );
  INVX1 U4 ( .A(\intadd_8/n1 ), .Y(d_out[14]) );
  INVX1 U5 ( .A(\intadd_8/CI ), .Y(n1) );
  OAI21X1 U6 ( .A(d2_in[0]), .B(d1_in[0]), .C(n1), .Y(n2) );
  INVX1 U7 ( .A(n2), .Y(d_out[0]) );
endmodule


module mul8_sv_3 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_12/A[9] , \intadd_12/A[7] , \intadd_12/A[6] ,
         \intadd_12/A[5] , \intadd_12/A[4] , \intadd_12/A[3] ,
         \intadd_12/A[2] , \intadd_12/A[1] , \intadd_12/A[0] ,
         \intadd_12/B[9] , \intadd_12/B[8] , \intadd_12/B[7] ,
         \intadd_12/B[6] , \intadd_12/B[5] , \intadd_12/B[4] ,
         \intadd_12/B[3] , \intadd_12/B[2] , \intadd_12/B[1] ,
         \intadd_12/B[0] , \intadd_12/CI , \intadd_12/SUM[0] , \intadd_12/n10 ,
         \intadd_12/n9 , \intadd_12/n8 , \intadd_12/n7 , \intadd_12/n6 ,
         \intadd_12/n5 , \intadd_12/n4 , \intadd_12/n3 , \intadd_12/n2 ,
         \intadd_12/n1 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227;

  FAX1 \intadd_12/U11  ( .A(n65), .B(n45), .C(n25), .YC(\intadd_12/n10 ), .YS(
        \intadd_12/SUM[0] ) );
  FAX1 \intadd_12/U10  ( .A(\intadd_12/B[1] ), .B(\intadd_12/A[1] ), .C(
        \intadd_12/n10 ), .YC(\intadd_12/n9 ), .YS(d_out[6]) );
  FAX1 \intadd_12/U9  ( .A(\intadd_12/B[2] ), .B(\intadd_12/A[2] ), .C(
        \intadd_12/n9 ), .YC(\intadd_12/n8 ), .YS(d_out[7]) );
  FAX1 \intadd_12/U8  ( .A(\intadd_12/B[3] ), .B(\intadd_12/A[3] ), .C(
        \intadd_12/n8 ), .YC(\intadd_12/n7 ), .YS(d_out[8]) );
  FAX1 \intadd_12/U7  ( .A(\intadd_12/B[4] ), .B(\intadd_12/A[4] ), .C(
        \intadd_12/n7 ), .YC(\intadd_12/n6 ), .YS(d_out[9]) );
  FAX1 \intadd_12/U6  ( .A(\intadd_12/B[5] ), .B(\intadd_12/A[5] ), .C(
        \intadd_12/n6 ), .YC(\intadd_12/n5 ), .YS(d_out[10]) );
  FAX1 \intadd_12/U5  ( .A(\intadd_12/B[6] ), .B(\intadd_12/A[6] ), .C(
        \intadd_12/n5 ), .YC(\intadd_12/n4 ), .YS(d_out[11]) );
  FAX1 \intadd_12/U4  ( .A(\intadd_12/B[7] ), .B(\intadd_12/A[7] ), .C(
        \intadd_12/n4 ), .YC(\intadd_12/n3 ), .YS(d_out[12]) );
  FAX1 \intadd_12/U3  ( .A(\intadd_12/B[8] ), .B(n77), .C(\intadd_12/n3 ), 
        .YC(\intadd_12/n2 ), .YS(d_out[13]) );
  FAX1 \intadd_12/U2  ( .A(n78), .B(n76), .C(\intadd_12/n2 ), .YC(
        \intadd_12/n1 ), .YS(d_out[14]) );
  AND2X1 U1 ( .A(n1), .B(n39), .Y(n186) );
  OR2X1 U2 ( .A(n69), .B(n40), .Y(n180) );
  AND2X1 U3 ( .A(n73), .B(n37), .Y(n130) );
  AND2X1 U4 ( .A(n27), .B(n90), .Y(n136) );
  AND2X1 U5 ( .A(n148), .B(n38), .Y(n154) );
  BUFX2 U6 ( .A(n95), .Y(n1) );
  BUFX2 U7 ( .A(n197), .Y(n2) );
  BUFX2 U8 ( .A(n213), .Y(n3) );
  INVX1 U9 ( .A(n100), .Y(n4) );
  OR2X1 U10 ( .A(d1_in[2]), .B(d1_in[1]), .Y(n100) );
  BUFX2 U11 ( .A(n122), .Y(n5) );
  BUFX2 U12 ( .A(n166), .Y(n6) );
  BUFX2 U13 ( .A(n172), .Y(n7) );
  BUFX2 U14 ( .A(n196), .Y(n8) );
  BUFX2 U15 ( .A(n212), .Y(n9) );
  BUFX2 U16 ( .A(n137), .Y(n10) );
  BUFX2 U17 ( .A(n176), .Y(n11) );
  BUFX2 U18 ( .A(n182), .Y(n12) );
  INVX1 U19 ( .A(n121), .Y(n13) );
  AND2X1 U20 ( .A(d1_in[1]), .B(n167), .Y(n121) );
  INVX1 U21 ( .A(n165), .Y(n14) );
  AND2X1 U22 ( .A(d1_in[1]), .B(n208), .Y(n165) );
  INVX1 U23 ( .A(n195), .Y(n15) );
  AND2X1 U24 ( .A(d1_in[1]), .B(n194), .Y(n195) );
  INVX1 U25 ( .A(n211), .Y(n16) );
  AND2X1 U26 ( .A(d1_in[1]), .B(n209), .Y(n211) );
  BUFX2 U27 ( .A(n203), .Y(n17) );
  INVX1 U28 ( .A(n145), .Y(n18) );
  AND2X1 U29 ( .A(d2_in[0]), .B(n136), .Y(n145) );
  INVX1 U30 ( .A(n185), .Y(n19) );
  AND2X1 U31 ( .A(d2_in[0]), .B(n184), .Y(n185) );
  INVX1 U32 ( .A(n191), .Y(n20) );
  AND2X1 U33 ( .A(n202), .B(d2_in[0]), .Y(n191) );
  INVX1 U34 ( .A(n90), .Y(n21) );
  OR2X1 U35 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n90) );
  BUFX2 U36 ( .A(n104), .Y(n22) );
  BUFX2 U37 ( .A(n127), .Y(n23) );
  BUFX2 U38 ( .A(n149), .Y(n24) );
  BUFX2 U39 ( .A(\intadd_12/CI ), .Y(n25) );
  INVX1 U40 ( .A(n224), .Y(n26) );
  AND2X1 U41 ( .A(n217), .B(n83), .Y(n224) );
  INVX1 U42 ( .A(n91), .Y(n27) );
  AND2X1 U43 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n91) );
  INVX1 U44 ( .A(n29), .Y(n28) );
  BUFX2 U45 ( .A(n118), .Y(n29) );
  INVX1 U46 ( .A(n31), .Y(n30) );
  BUFX2 U47 ( .A(n144), .Y(n31) );
  INVX1 U48 ( .A(n33), .Y(n32) );
  BUFX2 U49 ( .A(n177), .Y(n33) );
  BUFX2 U50 ( .A(n183), .Y(n34) );
  INVX1 U51 ( .A(n134), .Y(n35) );
  AND2X1 U52 ( .A(n94), .B(n93), .Y(n134) );
  BUFX2 U53 ( .A(n139), .Y(n36) );
  BUFX2 U54 ( .A(n132), .Y(n37) );
  BUFX2 U55 ( .A(n147), .Y(n38) );
  BUFX2 U56 ( .A(n187), .Y(n39) );
  BUFX2 U57 ( .A(n181), .Y(n40) );
  BUFX2 U58 ( .A(n106), .Y(n41) );
  BUFX2 U59 ( .A(n115), .Y(n42) );
  BUFX2 U60 ( .A(n150), .Y(n43) );
  BUFX2 U61 ( .A(n173), .Y(n44) );
  BUFX2 U62 ( .A(\intadd_12/A[0] ), .Y(n45) );
  INVX1 U63 ( .A(n128), .Y(n46) );
  OR2X1 U64 ( .A(n86), .B(n66), .Y(n128) );
  BUFX2 U65 ( .A(n199), .Y(n47) );
  BUFX2 U66 ( .A(n92), .Y(n48) );
  BUFX2 U67 ( .A(n103), .Y(n49) );
  BUFX2 U68 ( .A(n99), .Y(n50) );
  BUFX2 U69 ( .A(n102), .Y(n51) );
  BUFX2 U70 ( .A(n109), .Y(n52) );
  BUFX2 U71 ( .A(n110), .Y(n53) );
  BUFX2 U72 ( .A(n119), .Y(n54) );
  BUFX2 U73 ( .A(n124), .Y(n55) );
  BUFX2 U74 ( .A(n138), .Y(n56) );
  BUFX2 U75 ( .A(n135), .Y(n57) );
  BUFX2 U76 ( .A(n164), .Y(n58) );
  BUFX2 U77 ( .A(n179), .Y(n59) );
  BUFX2 U78 ( .A(n97), .Y(n60) );
  BUFX2 U79 ( .A(n107), .Y(n61) );
  BUFX2 U80 ( .A(n116), .Y(n62) );
  BUFX2 U81 ( .A(n129), .Y(n63) );
  BUFX2 U82 ( .A(n151), .Y(n64) );
  BUFX2 U83 ( .A(\intadd_12/B[0] ), .Y(n65) );
  BUFX2 U84 ( .A(n153), .Y(n66) );
  INVX1 U85 ( .A(n68), .Y(n67) );
  BUFX2 U86 ( .A(n98), .Y(n68) );
  INVX1 U87 ( .A(n186), .Y(n69) );
  INVX1 U88 ( .A(n169), .Y(n70) );
  AND2X1 U89 ( .A(n168), .B(d1_in[0]), .Y(n169) );
  INVX1 U90 ( .A(n217), .Y(n71) );
  AND2X1 U91 ( .A(n87), .B(n74), .Y(n217) );
  BUFX2 U92 ( .A(n108), .Y(n72) );
  BUFX2 U93 ( .A(n131), .Y(n73) );
  BUFX2 U94 ( .A(n206), .Y(n74) );
  BUFX2 U95 ( .A(n112), .Y(n75) );
  BUFX2 U96 ( .A(\intadd_12/A[9] ), .Y(n76) );
  INVX1 U97 ( .A(n78), .Y(n77) );
  BUFX2 U98 ( .A(\intadd_12/B[9] ), .Y(n78) );
  OR2X1 U99 ( .A(n168), .B(d2_in[6]), .Y(n123) );
  INVX1 U100 ( .A(n123), .Y(n79) );
  BUFX2 U101 ( .A(n190), .Y(n80) );
  BUFX2 U102 ( .A(n162), .Y(n81) );
  INVX1 U103 ( .A(n180), .Y(n82) );
  BUFX2 U104 ( .A(n218), .Y(n83) );
  INVX1 U105 ( .A(n130), .Y(n84) );
  BUFX2 U106 ( .A(n96), .Y(n85) );
  INVX1 U107 ( .A(n154), .Y(n86) );
  BUFX2 U108 ( .A(n207), .Y(n87) );
  INVX1 U109 ( .A(n136), .Y(n88) );
  OR2X1 U110 ( .A(d1_in[7]), .B(n21), .Y(n89) );
  INVX1 U111 ( .A(n89), .Y(n146) );
  AND2X1 U112 ( .A(d1_in[7]), .B(n27), .Y(n148) );
  INVX1 U113 ( .A(d2_in[7]), .Y(n117) );
  AOI22X1 U114 ( .A(d2_in[7]), .B(n146), .C(n148), .D(n117), .Y(
        \intadd_12/A[9] ) );
  INVX1 U115 ( .A(d2_in[6]), .Y(n120) );
  AOI22X1 U116 ( .A(d2_in[6]), .B(n146), .C(n148), .D(n120), .Y(n92) );
  AOI22X1 U117 ( .A(n136), .B(n76), .C(n48), .D(n88), .Y(\intadd_12/B[9] ) );
  INVX1 U118 ( .A(d2_in[5]), .Y(n167) );
  AOI22X1 U119 ( .A(d2_in[5]), .B(n146), .C(n148), .D(n167), .Y(n103) );
  AOI22X1 U120 ( .A(n136), .B(n48), .C(n49), .D(n88), .Y(n97) );
  INVX1 U121 ( .A(d1_in[5]), .Y(n94) );
  OR2X1 U122 ( .A(d1_in[3]), .B(d1_in[4]), .Y(n93) );
  AOI21X1 U123 ( .A(d1_in[3]), .B(d1_in[4]), .C(n94), .Y(n95) );
  INVX1 U124 ( .A(n1), .Y(n133) );
  AOI22X1 U125 ( .A(d2_in[7]), .B(n134), .C(n1), .D(n117), .Y(n96) );
  INVX1 U126 ( .A(d1_in[3]), .Y(n101) );
  MUX2X1 U127 ( .B(d1_in[3]), .A(n101), .S(d1_in[4]), .Y(n175) );
  INVX1 U128 ( .A(n175), .Y(n184) );
  AOI22X1 U129 ( .A(d2_in[6]), .B(n134), .C(n1), .D(n120), .Y(n99) );
  AOI22X1 U130 ( .A(n184), .B(n85), .C(n50), .D(n175), .Y(n98) );
  FAX1 U131 ( .A(n60), .B(n85), .C(n68), .YC(\intadd_12/B[8] ), .YS(
        \intadd_12/A[7] ) );
  INVX1 U132 ( .A(d2_in[4]), .Y(n170) );
  AOI22X1 U133 ( .A(d2_in[4]), .B(n146), .C(n148), .D(n170), .Y(n102) );
  INVX1 U134 ( .A(d2_in[3]), .Y(n208) );
  AOI22X1 U135 ( .A(d2_in[3]), .B(n146), .C(n148), .D(n208), .Y(n109) );
  AOI22X1 U136 ( .A(n136), .B(n51), .C(n52), .D(n88), .Y(n107) );
  AOI22X1 U137 ( .A(d2_in[5]), .B(n134), .C(n1), .D(n167), .Y(n110) );
  AOI22X1 U138 ( .A(n184), .B(n50), .C(n53), .D(n175), .Y(n106) );
  OR2X1 U139 ( .A(d1_in[3]), .B(n4), .Y(n205) );
  INVX1 U140 ( .A(n205), .Y(n192) );
  AOI21X1 U141 ( .A(d1_in[2]), .B(d1_in[1]), .C(n101), .Y(n207) );
  AOI22X1 U142 ( .A(d2_in[7]), .B(n192), .C(n87), .D(n117), .Y(n108) );
  AOI22X1 U143 ( .A(n136), .B(n49), .C(n51), .D(n88), .Y(n104) );
  FAX1 U144 ( .A(n67), .B(n105), .C(n22), .YC(\intadd_12/B[7] ), .YS(
        \intadd_12/A[6] ) );
  FAX1 U145 ( .A(n61), .B(n41), .C(n72), .YC(n105), .YS(n113) );
  INVX1 U146 ( .A(d1_in[1]), .Y(n168) );
  MUX2X1 U147 ( .B(d1_in[1]), .A(n168), .S(d1_in[2]), .Y(n201) );
  INVX1 U148 ( .A(n201), .Y(n202) );
  INVX1 U149 ( .A(n87), .Y(n204) );
  AOI22X1 U150 ( .A(d2_in[6]), .B(n205), .C(n204), .D(n120), .Y(n118) );
  AOI22X1 U151 ( .A(n202), .B(n72), .C(n28), .D(n201), .Y(n112) );
  INVX1 U152 ( .A(d2_in[2]), .Y(n209) );
  AOI22X1 U153 ( .A(d2_in[2]), .B(n146), .C(n148), .D(n209), .Y(n119) );
  AOI22X1 U154 ( .A(n136), .B(n52), .C(n54), .D(n88), .Y(n116) );
  AOI22X1 U155 ( .A(d2_in[4]), .B(n134), .C(n1), .D(n170), .Y(n124) );
  AOI22X1 U156 ( .A(n184), .B(n53), .C(n55), .D(n175), .Y(n115) );
  INVX1 U157 ( .A(n75), .Y(n114) );
  FAX1 U158 ( .A(n113), .B(n75), .C(n111), .YC(\intadd_12/B[6] ), .YS(
        \intadd_12/A[5] ) );
  FAX1 U159 ( .A(n62), .B(n42), .C(n114), .YC(n111), .YS(n126) );
  AOI22X1 U160 ( .A(d2_in[7]), .B(n70), .C(n168), .D(n117), .Y(n131) );
  AOI22X1 U161 ( .A(d2_in[5]), .B(n205), .C(n204), .D(n167), .Y(n139) );
  AOI22X1 U162 ( .A(n202), .B(n29), .C(n36), .D(n201), .Y(n132) );
  INVX1 U163 ( .A(d2_in[1]), .Y(n194) );
  AOI22X1 U164 ( .A(d2_in[1]), .B(n146), .C(n148), .D(n194), .Y(n138) );
  AOI22X1 U165 ( .A(n136), .B(n54), .C(n56), .D(n88), .Y(n129) );
  AOI22X1 U166 ( .A(d2_in[6]), .B(n169), .C(d1_in[1]), .D(n120), .Y(n122) );
  INVX1 U167 ( .A(d1_in[0]), .Y(n210) );
  AOI22X1 U168 ( .A(d1_in[0]), .B(n5), .C(n13), .D(n210), .Y(n147) );
  AOI22X1 U169 ( .A(d1_in[0]), .B(n73), .C(n79), .D(n210), .Y(n153) );
  AOI22X1 U170 ( .A(d2_in[3]), .B(n134), .C(n1), .D(n208), .Y(n135) );
  AOI22X1 U171 ( .A(n184), .B(n55), .C(n57), .D(n175), .Y(n127) );
  FAX1 U172 ( .A(n126), .B(n84), .C(n125), .YC(\intadd_12/B[5] ), .YS(
        \intadd_12/A[4] ) );
  FAX1 U173 ( .A(n63), .B(n46), .C(n23), .YC(n125), .YS(n143) );
  OAI21X1 U174 ( .A(n37), .B(n73), .C(n84), .Y(n142) );
  AOI22X1 U175 ( .A(d2_in[2]), .B(n35), .C(n133), .D(n209), .Y(n144) );
  AOI22X1 U176 ( .A(n184), .B(n57), .C(n30), .D(n175), .Y(n151) );
  INVX1 U177 ( .A(d2_in[0]), .Y(n193) );
  AOI22X1 U178 ( .A(d2_in[0]), .B(n146), .C(n148), .D(n193), .Y(n137) );
  AOI22X1 U179 ( .A(n136), .B(n56), .C(n10), .D(n88), .Y(n150) );
  INVX1 U180 ( .A(n36), .Y(n140) );
  AOI22X1 U181 ( .A(d2_in[4]), .B(n192), .C(n87), .D(n170), .Y(n164) );
  AOI22X1 U182 ( .A(n202), .B(n140), .C(n58), .D(n201), .Y(n149) );
  FAX1 U183 ( .A(n143), .B(n142), .C(n141), .YC(\intadd_12/B[4] ), .YS(
        \intadd_12/A[3] ) );
  AOI22X1 U184 ( .A(d2_in[1]), .B(n134), .C(n1), .D(n194), .Y(n177) );
  AOI22X1 U185 ( .A(n184), .B(n31), .C(n32), .D(n175), .Y(n162) );
  MUX2X1 U186 ( .B(n146), .A(n148), .S(n18), .Y(n161) );
  OAI21X1 U187 ( .A(n148), .B(n38), .C(n86), .Y(n160) );
  FAX1 U188 ( .A(n64), .B(n43), .C(n24), .YC(n141), .YS(n152) );
  INVX1 U189 ( .A(n152), .Y(n157) );
  MUX2X1 U190 ( .B(n86), .A(n154), .S(n66), .Y(n156) );
  INVX1 U191 ( .A(n155), .Y(\intadd_12/B[3] ) );
  FAX1 U192 ( .A(n158), .B(n157), .C(n156), .YC(n155), .YS(n159) );
  INVX1 U193 ( .A(n159), .Y(\intadd_12/A[2] ) );
  FAX1 U194 ( .A(n81), .B(n161), .C(n160), .YC(n158), .YS(n163) );
  INVX1 U195 ( .A(n163), .Y(n174) );
  AOI22X1 U196 ( .A(d2_in[3]), .B(n192), .C(n87), .D(n208), .Y(n179) );
  AOI22X1 U197 ( .A(n202), .B(n58), .C(n59), .D(n201), .Y(n173) );
  AOI22X1 U198 ( .A(d2_in[4]), .B(n169), .C(d1_in[1]), .D(n170), .Y(n166) );
  AOI22X1 U199 ( .A(d1_in[0]), .B(n6), .C(n14), .D(n210), .Y(n187) );
  AOI22X1 U200 ( .A(d2_in[5]), .B(n70), .C(n168), .D(n167), .Y(n172) );
  AND2X1 U201 ( .A(n170), .B(d1_in[1]), .Y(n171) );
  AOI22X1 U202 ( .A(d1_in[0]), .B(n7), .C(n171), .D(n210), .Y(n181) );
  FAX1 U203 ( .A(n174), .B(n44), .C(n82), .YC(\intadd_12/B[2] ), .YS(
        \intadd_12/A[1] ) );
  AOI22X1 U204 ( .A(d2_in[0]), .B(n134), .C(n1), .D(n193), .Y(n176) );
  AOI22X1 U205 ( .A(n184), .B(n33), .C(n11), .D(n175), .Y(\intadd_12/A[0] ) );
  AOI22X1 U206 ( .A(d2_in[2]), .B(n205), .C(n204), .D(n209), .Y(n183) );
  INVX1 U207 ( .A(n34), .Y(n178) );
  AOI22X1 U208 ( .A(n202), .B(n59), .C(n178), .D(n201), .Y(\intadd_12/B[0] )
         );
  AOI21X1 U209 ( .A(n69), .B(n40), .C(n82), .Y(\intadd_12/CI ) );
  INVX1 U210 ( .A(\intadd_12/SUM[0] ), .Y(n222) );
  AOI22X1 U211 ( .A(d2_in[1]), .B(n205), .C(n204), .D(n194), .Y(n182) );
  AOI22X1 U212 ( .A(n202), .B(n34), .C(n12), .D(n201), .Y(n190) );
  MUX2X1 U213 ( .B(n134), .A(n1), .S(n19), .Y(n189) );
  OAI21X1 U214 ( .A(n1), .B(n39), .C(n69), .Y(n188) );
  FAX1 U215 ( .A(n80), .B(n189), .C(n188), .YC(n221), .YS(n226) );
  MUX2X1 U216 ( .B(n192), .A(n87), .S(n20), .Y(n200) );
  NAND3X1 U217 ( .A(d1_in[1]), .B(n193), .C(n194), .Y(n199) );
  AOI22X1 U218 ( .A(d2_in[2]), .B(n169), .C(d1_in[1]), .D(n209), .Y(n196) );
  AOI22X1 U219 ( .A(d1_in[0]), .B(n8), .C(n15), .D(n210), .Y(n206) );
  AOI22X1 U220 ( .A(n200), .B(n47), .C(n87), .D(n74), .Y(n197) );
  OAI21X1 U221 ( .A(n87), .B(n74), .C(n2), .Y(n198) );
  OAI21X1 U222 ( .A(n200), .B(n47), .C(n198), .Y(n216) );
  AOI22X1 U223 ( .A(n202), .B(d2_in[1]), .C(d2_in[0]), .D(n201), .Y(n203) );
  MUX2X1 U224 ( .B(n205), .A(n204), .S(n17), .Y(n215) );
  AOI22X1 U225 ( .A(d2_in[3]), .B(n169), .C(d1_in[1]), .D(n208), .Y(n212) );
  AOI22X1 U226 ( .A(d1_in[0]), .B(n9), .C(n16), .D(n210), .Y(n218) );
  AOI22X1 U227 ( .A(n216), .B(n215), .C(n71), .D(n83), .Y(n213) );
  OAI21X1 U228 ( .A(n71), .B(n83), .C(n3), .Y(n214) );
  OAI21X1 U229 ( .A(n216), .B(n215), .C(n214), .Y(n225) );
  INVX1 U230 ( .A(n219), .Y(\intadd_12/B[1] ) );
  FAX1 U231 ( .A(n222), .B(n221), .C(n220), .YC(n219), .YS(n223) );
  INVX1 U232 ( .A(n223), .Y(d_out[5]) );
  FAX1 U233 ( .A(n226), .B(n225), .C(n26), .YC(n220), .YS(n227) );
  INVX1 U234 ( .A(n227), .Y(d_out[4]) );
  INVX1 U235 ( .A(\intadd_12/n1 ), .Y(d_out[15]) );
endmodule


module mul8_sv_2 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_16/A[7] , \intadd_16/A[6] , \intadd_16/A[5] ,
         \intadd_16/A[4] , \intadd_16/A[3] , \intadd_16/A[2] ,
         \intadd_16/A[1] , \intadd_16/A[0] , \intadd_16/B[7] ,
         \intadd_16/B[6] , \intadd_16/B[5] , \intadd_16/B[4] ,
         \intadd_16/B[3] , \intadd_16/B[2] , \intadd_16/B[1] ,
         \intadd_16/B[0] , \intadd_16/CI , \intadd_16/SUM[0] , \intadd_16/n9 ,
         \intadd_16/n8 , \intadd_16/n7 , \intadd_16/n6 , \intadd_16/n5 ,
         \intadd_16/n4 , \intadd_16/n3 , \intadd_16/n2 , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231;

  FAX1 \intadd_16/U10  ( .A(n66), .B(n45), .C(n27), .YC(\intadd_16/n9 ), .YS(
        \intadd_16/SUM[0] ) );
  FAX1 \intadd_16/U9  ( .A(n82), .B(\intadd_16/A[1] ), .C(\intadd_16/n9 ), 
        .YC(\intadd_16/n8 ), .YS(d_out[6]) );
  FAX1 \intadd_16/U8  ( .A(\intadd_16/B[2] ), .B(\intadd_16/A[2] ), .C(
        \intadd_16/n8 ), .YC(\intadd_16/n7 ), .YS(d_out[7]) );
  FAX1 \intadd_16/U7  ( .A(\intadd_16/B[3] ), .B(\intadd_16/A[3] ), .C(
        \intadd_16/n7 ), .YC(\intadd_16/n6 ), .YS(d_out[8]) );
  FAX1 \intadd_16/U6  ( .A(\intadd_16/B[4] ), .B(\intadd_16/A[4] ), .C(
        \intadd_16/n6 ), .YC(\intadd_16/n5 ), .YS(d_out[9]) );
  FAX1 \intadd_16/U5  ( .A(\intadd_16/B[5] ), .B(\intadd_16/A[5] ), .C(
        \intadd_16/n5 ), .YC(\intadd_16/n4 ), .YS(d_out[10]) );
  FAX1 \intadd_16/U4  ( .A(\intadd_16/B[6] ), .B(\intadd_16/A[6] ), .C(
        \intadd_16/n4 ), .YC(\intadd_16/n3 ), .YS(d_out[11]) );
  FAX1 \intadd_16/U3  ( .A(\intadd_16/B[7] ), .B(\intadd_16/A[7] ), .C(
        \intadd_16/n3 ), .YC(\intadd_16/n2 ), .YS(d_out[12]) );
  OR2X1 U1 ( .A(n39), .B(n40), .Y(n182) );
  AND2X1 U2 ( .A(n76), .B(n36), .Y(n136) );
  OR2X1 U3 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n92) );
  AND2X1 U4 ( .A(n218), .B(n38), .Y(n219) );
  AND2X1 U5 ( .A(n228), .B(n3), .Y(\intadd_16/B[1] ) );
  AND2X1 U6 ( .A(n23), .B(n92), .Y(n140) );
  AND2X1 U7 ( .A(d1_in[7]), .B(n23), .Y(n98) );
  OR2X1 U8 ( .A(d1_in[3]), .B(n4), .Y(n202) );
  AND2X1 U9 ( .A(n2), .B(n59), .Y(n221) );
  AND2X1 U10 ( .A(n98), .B(n37), .Y(n157) );
  BUFX2 U11 ( .A(n97), .Y(n1) );
  BUFX2 U12 ( .A(n108), .Y(n2) );
  INVX1 U13 ( .A(n227), .Y(n3) );
  AND2X1 U14 ( .A(\intadd_16/SUM[0] ), .B(n226), .Y(n227) );
  INVX1 U15 ( .A(n106), .Y(n4) );
  OR2X1 U16 ( .A(d1_in[2]), .B(d1_in[1]), .Y(n106) );
  BUFX2 U17 ( .A(n101), .Y(n5) );
  BUFX2 U18 ( .A(n127), .Y(n6) );
  BUFX2 U19 ( .A(n170), .Y(n7) );
  BUFX2 U20 ( .A(n174), .Y(n8) );
  BUFX2 U21 ( .A(n186), .Y(n9) );
  BUFX2 U22 ( .A(n199), .Y(n10) );
  BUFX2 U23 ( .A(n141), .Y(n11) );
  BUFX2 U24 ( .A(n179), .Y(n12) );
  BUFX2 U25 ( .A(n188), .Y(n13) );
  BUFX2 U26 ( .A(n213), .Y(n14) );
  INVX1 U27 ( .A(n126), .Y(n15) );
  AND2X1 U28 ( .A(d1_in[1]), .B(n171), .Y(n126) );
  INVX1 U29 ( .A(n169), .Y(n16) );
  AND2X1 U30 ( .A(d1_in[1]), .B(n195), .Y(n169) );
  INVX1 U31 ( .A(n173), .Y(n17) );
  OR2X1 U32 ( .A(d2_in[4]), .B(n204), .Y(n173) );
  INVX1 U33 ( .A(n198), .Y(n18) );
  AND2X1 U34 ( .A(d1_in[1]), .B(n196), .Y(n198) );
  BUFX2 U35 ( .A(n201), .Y(n19) );
  INVX1 U36 ( .A(n150), .Y(n20) );
  AND2X1 U37 ( .A(d2_in[0]), .B(n140), .Y(n150) );
  INVX1 U38 ( .A(n192), .Y(n21) );
  AND2X1 U39 ( .A(d2_in[0]), .B(n191), .Y(n192) );
  BUFX2 U40 ( .A(n102), .Y(n22) );
  INVX1 U41 ( .A(n94), .Y(n23) );
  AND2X1 U42 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n94) );
  BUFX2 U43 ( .A(n111), .Y(n24) );
  BUFX2 U44 ( .A(n133), .Y(n25) );
  BUFX2 U45 ( .A(n152), .Y(n26) );
  BUFX2 U46 ( .A(\intadd_16/CI ), .Y(n27) );
  INVX1 U47 ( .A(n29), .Y(n28) );
  BUFX2 U48 ( .A(n124), .Y(n29) );
  INVX1 U49 ( .A(n31), .Y(n30) );
  BUFX2 U50 ( .A(n149), .Y(n31) );
  BUFX2 U51 ( .A(n180), .Y(n32) );
  INVX1 U52 ( .A(n34), .Y(n33) );
  BUFX2 U53 ( .A(n100), .Y(n34) );
  BUFX2 U54 ( .A(n143), .Y(n35) );
  BUFX2 U55 ( .A(n138), .Y(n36) );
  BUFX2 U56 ( .A(n151), .Y(n37) );
  BUFX2 U57 ( .A(n217), .Y(n38) );
  INVX1 U58 ( .A(n184), .Y(n39) );
  AND2X1 U59 ( .A(n1), .B(n60), .Y(n184) );
  BUFX2 U60 ( .A(n183), .Y(n40) );
  BUFX2 U61 ( .A(n113), .Y(n41) );
  BUFX2 U62 ( .A(n121), .Y(n42) );
  BUFX2 U63 ( .A(n153), .Y(n43) );
  BUFX2 U64 ( .A(n175), .Y(n44) );
  BUFX2 U65 ( .A(\intadd_16/A[0] ), .Y(n45) );
  OR2X1 U66 ( .A(n89), .B(n68), .Y(n134) );
  INVX1 U67 ( .A(n134), .Y(n46) );
  BUFX2 U68 ( .A(n110), .Y(n47) );
  BUFX2 U69 ( .A(n105), .Y(n48) );
  BUFX2 U70 ( .A(n109), .Y(n49) );
  BUFX2 U71 ( .A(n116), .Y(n50) );
  BUFX2 U72 ( .A(n117), .Y(n51) );
  BUFX2 U73 ( .A(n125), .Y(n52) );
  BUFX2 U74 ( .A(n130), .Y(n53) );
  BUFX2 U75 ( .A(n142), .Y(n54) );
  BUFX2 U76 ( .A(n139), .Y(n55) );
  BUFX2 U77 ( .A(n167), .Y(n56) );
  BUFX2 U78 ( .A(n181), .Y(n57) );
  BUFX2 U79 ( .A(n189), .Y(n58) );
  BUFX2 U80 ( .A(n203), .Y(n59) );
  BUFX2 U81 ( .A(n190), .Y(n60) );
  BUFX2 U82 ( .A(n231), .Y(n61) );
  BUFX2 U83 ( .A(n114), .Y(n62) );
  BUFX2 U84 ( .A(n122), .Y(n63) );
  BUFX2 U85 ( .A(n135), .Y(n64) );
  BUFX2 U86 ( .A(n154), .Y(n65) );
  BUFX2 U87 ( .A(\intadd_16/B[0] ), .Y(n66) );
  BUFX2 U88 ( .A(n224), .Y(n67) );
  BUFX2 U89 ( .A(n156), .Y(n68) );
  INVX1 U90 ( .A(n221), .Y(n69) );
  INVX1 U91 ( .A(n71), .Y(n70) );
  BUFX2 U92 ( .A(n229), .Y(n71) );
  INVX1 U93 ( .A(n194), .Y(n72) );
  AND2X1 U94 ( .A(n96), .B(n95), .Y(n194) );
  INVX1 U95 ( .A(n172), .Y(n73) );
  AND2X1 U96 ( .A(n204), .B(d1_in[0]), .Y(n172) );
  INVX1 U97 ( .A(n98), .Y(n74) );
  BUFX2 U98 ( .A(n115), .Y(n75) );
  BUFX2 U99 ( .A(n137), .Y(n76) );
  INVX1 U100 ( .A(n78), .Y(n77) );
  BUFX2 U101 ( .A(n119), .Y(n78) );
  INVX1 U102 ( .A(n219), .Y(n79) );
  AND2X1 U103 ( .A(d1_in[1]), .B(n187), .Y(n185) );
  INVX1 U104 ( .A(n185), .Y(n80) );
  AND2X1 U105 ( .A(n205), .B(d2_in[0]), .Y(n206) );
  INVX1 U106 ( .A(n206), .Y(n81) );
  INVX1 U107 ( .A(\intadd_16/B[1] ), .Y(n82) );
  BUFX2 U108 ( .A(n165), .Y(n83) );
  BUFX2 U109 ( .A(n216), .Y(n84) );
  INVX1 U110 ( .A(n182), .Y(n85) );
  AND2X1 U111 ( .A(n93), .B(n92), .Y(n99) );
  INVX1 U112 ( .A(n99), .Y(n86) );
  INVX1 U113 ( .A(n136), .Y(n87) );
  BUFX2 U114 ( .A(n230), .Y(n88) );
  INVX1 U115 ( .A(n157), .Y(n89) );
  INVX1 U116 ( .A(n202), .Y(n90) );
  INVX1 U117 ( .A(n140), .Y(n91) );
  INVX1 U118 ( .A(d1_in[7]), .Y(n93) );
  INVX1 U119 ( .A(d2_in[6]), .Y(n128) );
  AOI22X1 U120 ( .A(d2_in[6]), .B(n86), .C(n74), .D(n128), .Y(n100) );
  INVX1 U121 ( .A(d2_in[5]), .Y(n171) );
  AOI22X1 U122 ( .A(d2_in[5]), .B(n99), .C(n98), .D(n171), .Y(n110) );
  AOI22X1 U123 ( .A(n140), .B(n33), .C(n47), .D(n91), .Y(n231) );
  INVX1 U124 ( .A(d1_in[5]), .Y(n96) );
  OR2X1 U125 ( .A(d1_in[3]), .B(d1_in[4]), .Y(n95) );
  AOI21X1 U126 ( .A(d1_in[3]), .B(d1_in[4]), .C(n96), .Y(n97) );
  INVX1 U127 ( .A(n1), .Y(n193) );
  INVX1 U128 ( .A(d2_in[7]), .Y(n123) );
  AOI22X1 U129 ( .A(d2_in[7]), .B(n194), .C(n1), .D(n123), .Y(n230) );
  INVX1 U130 ( .A(d1_in[3]), .Y(n107) );
  MUX2X1 U131 ( .B(n107), .A(d1_in[3]), .S(d1_in[4]), .Y(n191) );
  AOI22X1 U132 ( .A(d2_in[6]), .B(n194), .C(n1), .D(n128), .Y(n105) );
  INVX1 U133 ( .A(n191), .Y(n178) );
  AOI22X1 U134 ( .A(n191), .B(n88), .C(n48), .D(n178), .Y(n229) );
  AOI22X1 U135 ( .A(d2_in[7]), .B(n86), .C(n74), .D(n123), .Y(n101) );
  AOI22X1 U136 ( .A(n140), .B(n5), .C(n34), .D(n91), .Y(n102) );
  XOR2X1 U137 ( .A(n103), .B(n22), .Y(n104) );
  XOR2X1 U138 ( .A(\intadd_16/n2 ), .B(n104), .Y(d_out[13]) );
  INVX1 U139 ( .A(d2_in[4]), .Y(n168) );
  AOI22X1 U140 ( .A(d2_in[4]), .B(n99), .C(n98), .D(n168), .Y(n109) );
  INVX1 U141 ( .A(d2_in[3]), .Y(n195) );
  AOI22X1 U142 ( .A(d2_in[3]), .B(n99), .C(n98), .D(n195), .Y(n116) );
  AOI22X1 U143 ( .A(n140), .B(n49), .C(n50), .D(n91), .Y(n114) );
  AOI22X1 U144 ( .A(d2_in[5]), .B(n194), .C(n1), .D(n171), .Y(n117) );
  AOI22X1 U145 ( .A(n191), .B(n48), .C(n51), .D(n178), .Y(n113) );
  AOI21X1 U146 ( .A(d1_in[2]), .B(d1_in[1]), .C(n107), .Y(n108) );
  INVX1 U147 ( .A(n2), .Y(n207) );
  AOI22X1 U148 ( .A(d2_in[7]), .B(n90), .C(n2), .D(n123), .Y(n115) );
  AOI22X1 U149 ( .A(n140), .B(n47), .C(n49), .D(n91), .Y(n111) );
  FAX1 U150 ( .A(n70), .B(n112), .C(n24), .YC(\intadd_16/B[7] ), .YS(
        \intadd_16/A[6] ) );
  FAX1 U151 ( .A(n62), .B(n41), .C(n75), .YC(n112), .YS(n120) );
  INVX1 U152 ( .A(d1_in[1]), .Y(n204) );
  MUX2X1 U153 ( .B(n204), .A(d1_in[1]), .S(d1_in[2]), .Y(n205) );
  AOI22X1 U154 ( .A(d2_in[6]), .B(n202), .C(n207), .D(n128), .Y(n124) );
  INVX1 U155 ( .A(n205), .Y(n200) );
  AOI22X1 U156 ( .A(n205), .B(n75), .C(n28), .D(n200), .Y(n119) );
  INVX1 U157 ( .A(d2_in[2]), .Y(n196) );
  AOI22X1 U158 ( .A(d2_in[2]), .B(n99), .C(n98), .D(n196), .Y(n125) );
  AOI22X1 U159 ( .A(n140), .B(n50), .C(n52), .D(n91), .Y(n122) );
  AOI22X1 U160 ( .A(d2_in[4]), .B(n194), .C(n1), .D(n168), .Y(n130) );
  AOI22X1 U161 ( .A(n191), .B(n51), .C(n53), .D(n178), .Y(n121) );
  FAX1 U162 ( .A(n120), .B(n78), .C(n118), .YC(\intadd_16/B[6] ), .YS(
        \intadd_16/A[5] ) );
  FAX1 U163 ( .A(n63), .B(n42), .C(n77), .YC(n118), .YS(n132) );
  AOI22X1 U164 ( .A(d2_in[7]), .B(n73), .C(n204), .D(n123), .Y(n137) );
  AOI22X1 U165 ( .A(d2_in[5]), .B(n202), .C(n207), .D(n171), .Y(n143) );
  AOI22X1 U166 ( .A(n205), .B(n29), .C(n35), .D(n200), .Y(n138) );
  INVX1 U167 ( .A(d2_in[1]), .Y(n187) );
  AOI22X1 U168 ( .A(d2_in[1]), .B(n99), .C(n98), .D(n187), .Y(n142) );
  AOI22X1 U169 ( .A(n140), .B(n52), .C(n54), .D(n91), .Y(n135) );
  AOI22X1 U170 ( .A(d2_in[6]), .B(n172), .C(d1_in[1]), .D(n128), .Y(n127) );
  INVX1 U171 ( .A(d1_in[0]), .Y(n197) );
  AOI22X1 U172 ( .A(d1_in[0]), .B(n6), .C(n15), .D(n197), .Y(n151) );
  AND2X1 U173 ( .A(d1_in[1]), .B(n128), .Y(n129) );
  AOI22X1 U174 ( .A(d1_in[0]), .B(n76), .C(n129), .D(n197), .Y(n156) );
  AOI22X1 U175 ( .A(d2_in[3]), .B(n194), .C(n1), .D(n195), .Y(n139) );
  AOI22X1 U176 ( .A(n191), .B(n53), .C(n55), .D(n178), .Y(n133) );
  FAX1 U177 ( .A(n132), .B(n87), .C(n131), .YC(\intadd_16/B[5] ), .YS(
        \intadd_16/A[4] ) );
  FAX1 U178 ( .A(n64), .B(n46), .C(n25), .YC(n131), .YS(n147) );
  OAI21X1 U179 ( .A(n36), .B(n76), .C(n87), .Y(n146) );
  AOI22X1 U180 ( .A(d2_in[2]), .B(n72), .C(n193), .D(n196), .Y(n149) );
  AOI22X1 U181 ( .A(n191), .B(n55), .C(n30), .D(n178), .Y(n154) );
  INVX1 U182 ( .A(d2_in[0]), .Y(n177) );
  AOI22X1 U183 ( .A(d2_in[0]), .B(n99), .C(n98), .D(n177), .Y(n141) );
  AOI22X1 U184 ( .A(n140), .B(n54), .C(n11), .D(n91), .Y(n153) );
  INVX1 U185 ( .A(n35), .Y(n144) );
  AOI22X1 U186 ( .A(d2_in[4]), .B(n90), .C(n2), .D(n168), .Y(n167) );
  AOI22X1 U187 ( .A(n205), .B(n144), .C(n56), .D(n200), .Y(n152) );
  FAX1 U188 ( .A(n147), .B(n146), .C(n145), .YC(\intadd_16/B[4] ), .YS(
        \intadd_16/A[3] ) );
  AOI22X1 U189 ( .A(d2_in[1]), .B(n194), .C(n1), .D(n187), .Y(n180) );
  INVX1 U190 ( .A(n32), .Y(n148) );
  AOI22X1 U191 ( .A(n191), .B(n31), .C(n148), .D(n178), .Y(n165) );
  MUX2X1 U192 ( .B(n99), .A(n98), .S(n20), .Y(n164) );
  OAI21X1 U193 ( .A(n98), .B(n37), .C(n89), .Y(n163) );
  FAX1 U194 ( .A(n65), .B(n43), .C(n26), .YC(n145), .YS(n155) );
  INVX1 U195 ( .A(n155), .Y(n160) );
  MUX2X1 U196 ( .B(n89), .A(n157), .S(n68), .Y(n159) );
  INVX1 U197 ( .A(n158), .Y(\intadd_16/B[3] ) );
  FAX1 U198 ( .A(n161), .B(n160), .C(n159), .YC(n158), .YS(n162) );
  INVX1 U199 ( .A(n162), .Y(\intadd_16/A[2] ) );
  FAX1 U200 ( .A(n83), .B(n164), .C(n163), .YC(n161), .YS(n166) );
  INVX1 U201 ( .A(n166), .Y(n176) );
  AOI22X1 U202 ( .A(d2_in[3]), .B(n90), .C(n2), .D(n195), .Y(n181) );
  AOI22X1 U203 ( .A(n205), .B(n56), .C(n57), .D(n200), .Y(n175) );
  AOI22X1 U204 ( .A(d2_in[4]), .B(n172), .C(d1_in[1]), .D(n168), .Y(n170) );
  AOI22X1 U205 ( .A(d1_in[0]), .B(n7), .C(n16), .D(n197), .Y(n190) );
  AOI22X1 U206 ( .A(d2_in[5]), .B(n73), .C(n204), .D(n171), .Y(n174) );
  AOI22X1 U207 ( .A(d1_in[0]), .B(n8), .C(n17), .D(n197), .Y(n183) );
  FAX1 U208 ( .A(n176), .B(n44), .C(n85), .YC(\intadd_16/B[2] ), .YS(
        \intadd_16/A[1] ) );
  AOI22X1 U209 ( .A(d2_in[0]), .B(n194), .C(n1), .D(n177), .Y(n179) );
  AOI22X1 U210 ( .A(n191), .B(n32), .C(n12), .D(n178), .Y(\intadd_16/A[0] ) );
  AOI22X1 U211 ( .A(d2_in[2]), .B(n90), .C(n2), .D(n196), .Y(n189) );
  AOI22X1 U212 ( .A(n205), .B(n57), .C(n58), .D(n200), .Y(\intadd_16/B[0] ) );
  AOI21X1 U213 ( .A(n39), .B(n40), .C(n85), .Y(\intadd_16/CI ) );
  AOI22X1 U214 ( .A(d2_in[2]), .B(n172), .C(d1_in[1]), .D(n196), .Y(n186) );
  AOI22X1 U215 ( .A(d1_in[0]), .B(n9), .C(n80), .D(n197), .Y(n203) );
  AOI22X1 U216 ( .A(d2_in[1]), .B(n90), .C(n2), .D(n187), .Y(n188) );
  AOI22X1 U217 ( .A(n205), .B(n58), .C(n13), .D(n200), .Y(n224) );
  MUX2X1 U218 ( .B(n193), .A(n1), .S(n60), .Y(n223) );
  MUX2X1 U219 ( .B(n72), .A(n193), .S(n21), .Y(n222) );
  AOI22X1 U220 ( .A(d2_in[3]), .B(n172), .C(d1_in[1]), .D(n195), .Y(n199) );
  AOI22X1 U221 ( .A(d1_in[0]), .B(n10), .C(n18), .D(n197), .Y(n216) );
  HAX1 U222 ( .A(n84), .B(n69), .YS(n215) );
  AOI22X1 U223 ( .A(n205), .B(d2_in[1]), .C(d2_in[0]), .D(n200), .Y(n201) );
  MUX2X1 U224 ( .B(n90), .A(n2), .S(n19), .Y(n214) );
  MUX2X1 U225 ( .B(n207), .A(n2), .S(n59), .Y(n211) );
  NOR3X1 U226 ( .A(d2_in[1]), .B(d2_in[0]), .C(n204), .Y(n210) );
  MUX2X1 U227 ( .B(n202), .A(n207), .S(n81), .Y(n209) );
  OR2X1 U228 ( .A(n211), .B(n210), .Y(n208) );
  AOI22X1 U229 ( .A(n211), .B(n210), .C(n209), .D(n208), .Y(n213) );
  OR2X1 U230 ( .A(n215), .B(n214), .Y(n212) );
  AOI22X1 U231 ( .A(n215), .B(n214), .C(n14), .D(n212), .Y(n217) );
  OAI21X1 U232 ( .A(n218), .B(n38), .C(n84), .Y(n220) );
  OAI21X1 U233 ( .A(n69), .B(n220), .C(n79), .Y(n226) );
  FAX1 U234 ( .A(n67), .B(n223), .C(n222), .YC(n225), .YS(n218) );
  OAI21X1 U235 ( .A(\intadd_16/SUM[0] ), .B(n226), .C(n225), .Y(n228) );
  FAX1 U236 ( .A(n61), .B(n88), .C(n71), .YC(n103), .YS(\intadd_16/A[7] ) );
endmodule


module truncation_sv_2 ( d_in, d_out );
  input [15:0] d_in;
  output [7:0] d_out;
  wire   \d_in[13] , \d_in[12] , \d_in[11] , \d_in[10] , \d_in[9] , \d_in[8] ,
         \d_in[7] , \d_in[6] ;
  assign d_out[7] = \d_in[13] ;
  assign \d_in[13]  = d_in[13];
  assign d_out[6] = \d_in[12] ;
  assign \d_in[12]  = d_in[12];
  assign d_out[5] = \d_in[11] ;
  assign \d_in[11]  = d_in[11];
  assign d_out[4] = \d_in[10] ;
  assign \d_in[10]  = d_in[10];
  assign d_out[3] = \d_in[9] ;
  assign \d_in[9]  = d_in[9];
  assign d_out[2] = \d_in[8] ;
  assign \d_in[8]  = d_in[8];
  assign d_out[1] = \d_in[7] ;
  assign \d_in[7]  = d_in[7];
  assign d_out[0] = \d_in[6] ;
  assign \d_in[6]  = d_in[6];

endmodule


module truncation_sv_3 ( d_in, d_out );
  input [15:0] d_in;
  output [7:0] d_out;
  wire   \d_in[13] , \d_in[12] , \d_in[11] , \d_in[10] , \d_in[9] , \d_in[8] ,
         \d_in[7] , \d_in[6] ;
  assign d_out[7] = \d_in[13] ;
  assign \d_in[13]  = d_in[13];
  assign d_out[6] = \d_in[12] ;
  assign \d_in[12]  = d_in[12];
  assign d_out[5] = \d_in[11] ;
  assign \d_in[11]  = d_in[11];
  assign d_out[4] = \d_in[10] ;
  assign \d_in[10]  = d_in[10];
  assign d_out[3] = \d_in[9] ;
  assign \d_in[9]  = d_in[9];
  assign d_out[2] = \d_in[8] ;
  assign \d_in[8]  = d_in[8];
  assign d_out[1] = \d_in[7] ;
  assign \d_in[7]  = d_in[7];
  assign d_out[0] = \d_in[6] ;
  assign \d_in[6]  = d_in[6];

endmodule


module unit_calc_sv_1 ( x_in, x_N_in, ue_in, y_in, x_out, x_N_out, ue_out, 
        y_out, clock );
  input [7:0] x_in;
  input [7:0] x_N_in;
  input [7:0] ue_in;
  input [7:0] y_in;
  output [7:0] x_out;
  output [7:0] x_N_out;
  output [7:0] ue_out;
  output [7:0] y_out;
  input clock;
  wire   \intadd_5/CI , \intadd_5/n7 , \intadd_5/n6 , \intadd_5/n5 ,
         \intadd_5/n4 , \intadd_5/n3 , \intadd_5/n2 , n27, n28, n29;
  wire   [31:8] shiftx;
  wire   [31:8] shiftxn;
  wire   [23:8] shiftue;
  wire   [15:0] shifty;
  wire   [7:0] y_out8;
  wire   [15:0] xnin_ue;
  wire   [15:0] xnin_ue_scaled;
  wire   [15:0] coeff16;
  wire   [15:0] new_coeff_true;
  wire   [15:0] delayed_new_coeff_true;
  wire   [7:0] coeff8;
  wire   [15:0] y_out16;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16;

  mul8_sv_3 mul_xnin_ue ( .d1_in(x_N_in), .d2_in(ue_in), .d_out({xnin_ue[15:4], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
  u_scaling_sv_1 u1 ( .d_in({xnin_ue[15:4], 1'b0, 1'b0, 1'b0, 1'b0}), .d_out({
        SYNOPSYS_UNCONNECTED__4, xnin_ue_scaled[14], SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, xnin_ue_scaled[10:0]}), .clock(clock) );
  add16_sv_1 add1 ( .d1_in({1'b0, xnin_ue_scaled[14], 1'b0, 1'b0, 1'b0, 
        xnin_ue_scaled[10:0]}), .d2_in({1'b0, coeff16[14], 1'b0, coeff16[12:0]}), .d_out(new_coeff_true) );
  shift_1d_16_sv_1 delay_2 ( .xin(new_coeff_true), .xout(
        delayed_new_coeff_true), .clock(clock) );
  saturation_sv_1 sat_1 ( .d_in(delayed_new_coeff_true), .d_out({
        SYNOPSYS_UNCONNECTED__8, coeff16[14:0]}) );
  truncation_sv_3 trunc_1 ( .d_in({1'b0, 1'b0, coeff16[13:6], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .d_out(coeff8) );
  mul8_sv_2 mul_coeff_x_in ( .d1_in(coeff8), .d2_in(shiftx[31:24]), .d_out({
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, y_out16[13:6], 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16}) );
  truncation_sv_2 trunc_2 ( .d_in({1'b0, 1'b0, y_out16[13:6], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .d_out(y_out8) );
  DFFPOSX1 \shiftx_reg[31]  ( .D(x_in[7]), .CLK(clock), .Q(shiftx[31]) );
  DFFPOSX1 \shiftx_reg[30]  ( .D(x_in[6]), .CLK(clock), .Q(shiftx[30]) );
  DFFPOSX1 \shiftx_reg[29]  ( .D(x_in[5]), .CLK(clock), .Q(shiftx[29]) );
  DFFPOSX1 \shiftx_reg[28]  ( .D(x_in[4]), .CLK(clock), .Q(shiftx[28]) );
  DFFPOSX1 \shiftx_reg[27]  ( .D(x_in[3]), .CLK(clock), .Q(shiftx[27]) );
  DFFPOSX1 \shiftx_reg[26]  ( .D(x_in[2]), .CLK(clock), .Q(shiftx[26]) );
  DFFPOSX1 \shiftx_reg[25]  ( .D(x_in[1]), .CLK(clock), .Q(shiftx[25]) );
  DFFPOSX1 \shiftx_reg[24]  ( .D(x_in[0]), .CLK(clock), .Q(shiftx[24]) );
  DFFPOSX1 \shiftx_reg[23]  ( .D(shiftx[31]), .CLK(clock), .Q(shiftx[23]) );
  DFFPOSX1 \shiftx_reg[22]  ( .D(shiftx[30]), .CLK(clock), .Q(shiftx[22]) );
  DFFPOSX1 \shiftx_reg[21]  ( .D(shiftx[29]), .CLK(clock), .Q(shiftx[21]) );
  DFFPOSX1 \shiftx_reg[20]  ( .D(shiftx[28]), .CLK(clock), .Q(shiftx[20]) );
  DFFPOSX1 \shiftx_reg[19]  ( .D(shiftx[27]), .CLK(clock), .Q(shiftx[19]) );
  DFFPOSX1 \shiftx_reg[18]  ( .D(shiftx[26]), .CLK(clock), .Q(shiftx[18]) );
  DFFPOSX1 \shiftx_reg[17]  ( .D(shiftx[25]), .CLK(clock), .Q(shiftx[17]) );
  DFFPOSX1 \shiftx_reg[16]  ( .D(shiftx[24]), .CLK(clock), .Q(shiftx[16]) );
  DFFPOSX1 \shiftx_reg[15]  ( .D(shiftx[23]), .CLK(clock), .Q(shiftx[15]) );
  DFFPOSX1 \shiftx_reg[14]  ( .D(shiftx[22]), .CLK(clock), .Q(shiftx[14]) );
  DFFPOSX1 \shiftx_reg[13]  ( .D(shiftx[21]), .CLK(clock), .Q(shiftx[13]) );
  DFFPOSX1 \shiftx_reg[12]  ( .D(shiftx[20]), .CLK(clock), .Q(shiftx[12]) );
  DFFPOSX1 \shiftx_reg[11]  ( .D(shiftx[19]), .CLK(clock), .Q(shiftx[11]) );
  DFFPOSX1 \shiftx_reg[10]  ( .D(shiftx[18]), .CLK(clock), .Q(shiftx[10]) );
  DFFPOSX1 \shiftx_reg[9]  ( .D(shiftx[17]), .CLK(clock), .Q(shiftx[9]) );
  DFFPOSX1 \shiftx_reg[8]  ( .D(shiftx[16]), .CLK(clock), .Q(shiftx[8]) );
  DFFPOSX1 \shiftx_reg[7]  ( .D(shiftx[15]), .CLK(clock), .Q(x_out[7]) );
  DFFPOSX1 \shiftx_reg[6]  ( .D(shiftx[14]), .CLK(clock), .Q(x_out[6]) );
  DFFPOSX1 \shiftx_reg[5]  ( .D(shiftx[13]), .CLK(clock), .Q(x_out[5]) );
  DFFPOSX1 \shiftx_reg[4]  ( .D(shiftx[12]), .CLK(clock), .Q(x_out[4]) );
  DFFPOSX1 \shiftx_reg[3]  ( .D(shiftx[11]), .CLK(clock), .Q(x_out[3]) );
  DFFPOSX1 \shiftx_reg[2]  ( .D(shiftx[10]), .CLK(clock), .Q(x_out[2]) );
  DFFPOSX1 \shiftx_reg[1]  ( .D(shiftx[9]), .CLK(clock), .Q(x_out[1]) );
  DFFPOSX1 \shiftx_reg[0]  ( .D(shiftx[8]), .CLK(clock), .Q(x_out[0]) );
  DFFPOSX1 \shiftxn_reg[31]  ( .D(x_N_in[7]), .CLK(clock), .Q(shiftxn[31]) );
  DFFPOSX1 \shiftxn_reg[30]  ( .D(x_N_in[6]), .CLK(clock), .Q(shiftxn[30]) );
  DFFPOSX1 \shiftxn_reg[29]  ( .D(x_N_in[5]), .CLK(clock), .Q(shiftxn[29]) );
  DFFPOSX1 \shiftxn_reg[28]  ( .D(x_N_in[4]), .CLK(clock), .Q(shiftxn[28]) );
  DFFPOSX1 \shiftxn_reg[27]  ( .D(x_N_in[3]), .CLK(clock), .Q(shiftxn[27]) );
  DFFPOSX1 \shiftxn_reg[26]  ( .D(x_N_in[2]), .CLK(clock), .Q(shiftxn[26]) );
  DFFPOSX1 \shiftxn_reg[25]  ( .D(x_N_in[1]), .CLK(clock), .Q(shiftxn[25]) );
  DFFPOSX1 \shiftxn_reg[24]  ( .D(x_N_in[0]), .CLK(clock), .Q(shiftxn[24]) );
  DFFPOSX1 \shiftxn_reg[23]  ( .D(shiftxn[31]), .CLK(clock), .Q(shiftxn[23])
         );
  DFFPOSX1 \shiftxn_reg[22]  ( .D(shiftxn[30]), .CLK(clock), .Q(shiftxn[22])
         );
  DFFPOSX1 \shiftxn_reg[21]  ( .D(shiftxn[29]), .CLK(clock), .Q(shiftxn[21])
         );
  DFFPOSX1 \shiftxn_reg[20]  ( .D(shiftxn[28]), .CLK(clock), .Q(shiftxn[20])
         );
  DFFPOSX1 \shiftxn_reg[19]  ( .D(shiftxn[27]), .CLK(clock), .Q(shiftxn[19])
         );
  DFFPOSX1 \shiftxn_reg[18]  ( .D(shiftxn[26]), .CLK(clock), .Q(shiftxn[18])
         );
  DFFPOSX1 \shiftxn_reg[17]  ( .D(shiftxn[25]), .CLK(clock), .Q(shiftxn[17])
         );
  DFFPOSX1 \shiftxn_reg[16]  ( .D(shiftxn[24]), .CLK(clock), .Q(shiftxn[16])
         );
  DFFPOSX1 \shiftxn_reg[15]  ( .D(shiftxn[23]), .CLK(clock), .Q(shiftxn[15])
         );
  DFFPOSX1 \shiftxn_reg[14]  ( .D(shiftxn[22]), .CLK(clock), .Q(shiftxn[14])
         );
  DFFPOSX1 \shiftxn_reg[13]  ( .D(shiftxn[21]), .CLK(clock), .Q(shiftxn[13])
         );
  DFFPOSX1 \shiftxn_reg[12]  ( .D(shiftxn[20]), .CLK(clock), .Q(shiftxn[12])
         );
  DFFPOSX1 \shiftxn_reg[11]  ( .D(shiftxn[19]), .CLK(clock), .Q(shiftxn[11])
         );
  DFFPOSX1 \shiftxn_reg[10]  ( .D(shiftxn[18]), .CLK(clock), .Q(shiftxn[10])
         );
  DFFPOSX1 \shiftxn_reg[9]  ( .D(shiftxn[17]), .CLK(clock), .Q(shiftxn[9]) );
  DFFPOSX1 \shiftxn_reg[8]  ( .D(shiftxn[16]), .CLK(clock), .Q(shiftxn[8]) );
  DFFPOSX1 \shiftxn_reg[7]  ( .D(shiftxn[15]), .CLK(clock), .Q(x_N_out[7]) );
  DFFPOSX1 \shiftxn_reg[6]  ( .D(shiftxn[14]), .CLK(clock), .Q(x_N_out[6]) );
  DFFPOSX1 \shiftxn_reg[5]  ( .D(shiftxn[13]), .CLK(clock), .Q(x_N_out[5]) );
  DFFPOSX1 \shiftxn_reg[4]  ( .D(shiftxn[12]), .CLK(clock), .Q(x_N_out[4]) );
  DFFPOSX1 \shiftxn_reg[3]  ( .D(shiftxn[11]), .CLK(clock), .Q(x_N_out[3]) );
  DFFPOSX1 \shiftxn_reg[2]  ( .D(shiftxn[10]), .CLK(clock), .Q(x_N_out[2]) );
  DFFPOSX1 \shiftxn_reg[1]  ( .D(shiftxn[9]), .CLK(clock), .Q(x_N_out[1]) );
  DFFPOSX1 \shiftxn_reg[0]  ( .D(shiftxn[8]), .CLK(clock), .Q(x_N_out[0]) );
  DFFPOSX1 \shiftue_reg[23]  ( .D(ue_in[7]), .CLK(clock), .Q(shiftue[23]) );
  DFFPOSX1 \shiftue_reg[22]  ( .D(ue_in[6]), .CLK(clock), .Q(shiftue[22]) );
  DFFPOSX1 \shiftue_reg[21]  ( .D(ue_in[5]), .CLK(clock), .Q(shiftue[21]) );
  DFFPOSX1 \shiftue_reg[20]  ( .D(ue_in[4]), .CLK(clock), .Q(shiftue[20]) );
  DFFPOSX1 \shiftue_reg[19]  ( .D(ue_in[3]), .CLK(clock), .Q(shiftue[19]) );
  DFFPOSX1 \shiftue_reg[18]  ( .D(ue_in[2]), .CLK(clock), .Q(shiftue[18]) );
  DFFPOSX1 \shiftue_reg[17]  ( .D(ue_in[1]), .CLK(clock), .Q(shiftue[17]) );
  DFFPOSX1 \shiftue_reg[16]  ( .D(ue_in[0]), .CLK(clock), .Q(shiftue[16]) );
  DFFPOSX1 \shiftue_reg[15]  ( .D(shiftue[23]), .CLK(clock), .Q(shiftue[15])
         );
  DFFPOSX1 \shiftue_reg[14]  ( .D(shiftue[22]), .CLK(clock), .Q(shiftue[14])
         );
  DFFPOSX1 \shiftue_reg[13]  ( .D(shiftue[21]), .CLK(clock), .Q(shiftue[13])
         );
  DFFPOSX1 \shiftue_reg[12]  ( .D(shiftue[20]), .CLK(clock), .Q(shiftue[12])
         );
  DFFPOSX1 \shiftue_reg[11]  ( .D(shiftue[19]), .CLK(clock), .Q(shiftue[11])
         );
  DFFPOSX1 \shiftue_reg[10]  ( .D(shiftue[18]), .CLK(clock), .Q(shiftue[10])
         );
  DFFPOSX1 \shiftue_reg[9]  ( .D(shiftue[17]), .CLK(clock), .Q(shiftue[9]) );
  DFFPOSX1 \shiftue_reg[8]  ( .D(shiftue[16]), .CLK(clock), .Q(shiftue[8]) );
  DFFPOSX1 \shiftue_reg[7]  ( .D(shiftue[15]), .CLK(clock), .Q(ue_out[7]) );
  DFFPOSX1 \shiftue_reg[6]  ( .D(shiftue[14]), .CLK(clock), .Q(ue_out[6]) );
  DFFPOSX1 \shiftue_reg[5]  ( .D(shiftue[13]), .CLK(clock), .Q(ue_out[5]) );
  DFFPOSX1 \shiftue_reg[4]  ( .D(shiftue[12]), .CLK(clock), .Q(ue_out[4]) );
  DFFPOSX1 \shiftue_reg[3]  ( .D(shiftue[11]), .CLK(clock), .Q(ue_out[3]) );
  DFFPOSX1 \shiftue_reg[2]  ( .D(shiftue[10]), .CLK(clock), .Q(ue_out[2]) );
  DFFPOSX1 \shiftue_reg[1]  ( .D(shiftue[9]), .CLK(clock), .Q(ue_out[1]) );
  DFFPOSX1 \shiftue_reg[0]  ( .D(shiftue[8]), .CLK(clock), .Q(ue_out[0]) );
  DFFPOSX1 \shifty_reg[15]  ( .D(y_in[7]), .CLK(clock), .Q(shifty[15]) );
  DFFPOSX1 \shifty_reg[14]  ( .D(y_in[6]), .CLK(clock), .Q(shifty[14]) );
  DFFPOSX1 \shifty_reg[13]  ( .D(y_in[5]), .CLK(clock), .Q(shifty[13]) );
  DFFPOSX1 \shifty_reg[12]  ( .D(y_in[4]), .CLK(clock), .Q(shifty[12]) );
  DFFPOSX1 \shifty_reg[11]  ( .D(y_in[3]), .CLK(clock), .Q(shifty[11]) );
  DFFPOSX1 \shifty_reg[10]  ( .D(y_in[2]), .CLK(clock), .Q(shifty[10]) );
  DFFPOSX1 \shifty_reg[9]  ( .D(y_in[1]), .CLK(clock), .Q(shifty[9]) );
  DFFPOSX1 \shifty_reg[8]  ( .D(y_in[0]), .CLK(clock), .Q(shifty[8]) );
  DFFPOSX1 \shifty_reg[7]  ( .D(shifty[15]), .CLK(clock), .Q(shifty[7]) );
  DFFPOSX1 \shifty_reg[6]  ( .D(shifty[14]), .CLK(clock), .Q(shifty[6]) );
  DFFPOSX1 \shifty_reg[5]  ( .D(shifty[13]), .CLK(clock), .Q(shifty[5]) );
  DFFPOSX1 \shifty_reg[4]  ( .D(shifty[12]), .CLK(clock), .Q(shifty[4]) );
  DFFPOSX1 \shifty_reg[3]  ( .D(shifty[11]), .CLK(clock), .Q(shifty[3]) );
  DFFPOSX1 \shifty_reg[2]  ( .D(shifty[10]), .CLK(clock), .Q(shifty[2]) );
  DFFPOSX1 \shifty_reg[1]  ( .D(shifty[9]), .CLK(clock), .Q(shifty[1]) );
  DFFPOSX1 \shifty_reg[0]  ( .D(shifty[8]), .CLK(clock), .Q(shifty[0]) );
  FAX1 \intadd_5/U8  ( .A(shifty[1]), .B(y_out8[1]), .C(\intadd_5/CI ), .YC(
        \intadd_5/n7 ), .YS(y_out[1]) );
  FAX1 \intadd_5/U7  ( .A(shifty[2]), .B(y_out8[2]), .C(\intadd_5/n7 ), .YC(
        \intadd_5/n6 ), .YS(y_out[2]) );
  FAX1 \intadd_5/U6  ( .A(shifty[3]), .B(y_out8[3]), .C(\intadd_5/n6 ), .YC(
        \intadd_5/n5 ), .YS(y_out[3]) );
  FAX1 \intadd_5/U5  ( .A(shifty[4]), .B(y_out8[4]), .C(\intadd_5/n5 ), .YC(
        \intadd_5/n4 ), .YS(y_out[4]) );
  FAX1 \intadd_5/U4  ( .A(shifty[5]), .B(y_out8[5]), .C(\intadd_5/n4 ), .YC(
        \intadd_5/n3 ), .YS(y_out[5]) );
  FAX1 \intadd_5/U3  ( .A(shifty[6]), .B(y_out8[6]), .C(\intadd_5/n3 ), .YC(
        \intadd_5/n2 ), .YS(y_out[6]) );
  AND2X1 U9 ( .A(shifty[0]), .B(y_out8[0]), .Y(\intadd_5/CI ) );
  XOR2X1 U10 ( .A(shifty[7]), .B(y_out8[7]), .Y(n27) );
  XOR2X1 U11 ( .A(\intadd_5/n2 ), .B(n27), .Y(y_out[7]) );
  INVX1 U12 ( .A(\intadd_5/CI ), .Y(n28) );
  OAI21X1 U13 ( .A(shifty[0]), .B(y_out8[0]), .C(n28), .Y(n29) );
  INVX1 U14 ( .A(n29), .Y(y_out[0]) );
endmodule


module shift_1d_16_sv_2 ( xin, xout, clock );
  input [15:0] xin;
  output [15:0] xout;
  input clock;


  DFFPOSX1 \shift_reg_reg[15]  ( .D(xin[15]), .CLK(clock), .Q(xout[15]) );
  DFFPOSX1 \shift_reg_reg[14]  ( .D(xin[14]), .CLK(clock), .Q(xout[14]) );
  DFFPOSX1 \shift_reg_reg[13]  ( .D(xin[13]), .CLK(clock), .Q(xout[13]) );
  DFFPOSX1 \shift_reg_reg[12]  ( .D(xin[12]), .CLK(clock), .Q(xout[12]) );
  DFFPOSX1 \shift_reg_reg[11]  ( .D(xin[11]), .CLK(clock), .Q(xout[11]) );
  DFFPOSX1 \shift_reg_reg[10]  ( .D(xin[10]), .CLK(clock), .Q(xout[10]) );
  DFFPOSX1 \shift_reg_reg[9]  ( .D(xin[9]), .CLK(clock), .Q(xout[9]) );
  DFFPOSX1 \shift_reg_reg[8]  ( .D(xin[8]), .CLK(clock), .Q(xout[8]) );
  DFFPOSX1 \shift_reg_reg[7]  ( .D(xin[7]), .CLK(clock), .Q(xout[7]) );
  DFFPOSX1 \shift_reg_reg[6]  ( .D(xin[6]), .CLK(clock), .Q(xout[6]) );
  DFFPOSX1 \shift_reg_reg[5]  ( .D(xin[5]), .CLK(clock), .Q(xout[5]) );
  DFFPOSX1 \shift_reg_reg[4]  ( .D(xin[4]), .CLK(clock), .Q(xout[4]) );
  DFFPOSX1 \shift_reg_reg[3]  ( .D(xin[3]), .CLK(clock), .Q(xout[3]) );
  DFFPOSX1 \shift_reg_reg[2]  ( .D(xin[2]), .CLK(clock), .Q(xout[2]) );
  DFFPOSX1 \shift_reg_reg[1]  ( .D(xin[1]), .CLK(clock), .Q(xout[1]) );
  DFFPOSX1 \shift_reg_reg[0]  ( .D(xin[0]), .CLK(clock), .Q(xout[0]) );
endmodule


module u_scaling_sv_2 ( d_in, d_out, clock );
  input [15:0] d_in;
  output [15:0] d_out;
  input clock;


  DFFPOSX1 \d_out_reg_reg[11]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[14]) );
  DFFPOSX1 \d_out_reg_reg[10]  ( .D(d_in[14]), .CLK(clock), .Q(d_out[10]) );
  DFFPOSX1 \d_out_reg_reg[9]  ( .D(d_in[13]), .CLK(clock), .Q(d_out[9]) );
  DFFPOSX1 \d_out_reg_reg[8]  ( .D(d_in[12]), .CLK(clock), .Q(d_out[8]) );
  DFFPOSX1 \d_out_reg_reg[7]  ( .D(d_in[11]), .CLK(clock), .Q(d_out[7]) );
  DFFPOSX1 \d_out_reg_reg[6]  ( .D(d_in[10]), .CLK(clock), .Q(d_out[6]) );
  DFFPOSX1 \d_out_reg_reg[5]  ( .D(d_in[9]), .CLK(clock), .Q(d_out[5]) );
  DFFPOSX1 \d_out_reg_reg[4]  ( .D(d_in[8]), .CLK(clock), .Q(d_out[4]) );
  DFFPOSX1 \d_out_reg_reg[3]  ( .D(d_in[7]), .CLK(clock), .Q(d_out[3]) );
  DFFPOSX1 \d_out_reg_reg[2]  ( .D(d_in[6]), .CLK(clock), .Q(d_out[2]) );
  DFFPOSX1 \d_out_reg_reg[1]  ( .D(d_in[5]), .CLK(clock), .Q(d_out[1]) );
  DFFPOSX1 \d_out_reg_reg[0]  ( .D(d_in[4]), .CLK(clock), .Q(d_out[0]) );
endmodule


module saturation_sv_2 ( d_in, d_out );
  input [15:0] d_in;
  output [15:0] d_out;
  wire   n2, n3, n4, n5, n6, n7;
  assign d_out[13] = d_in[15];
  assign d_out[14] = d_in[15];

  INVX1 U3 ( .A(n7), .Y(d_out[12]) );
  AND2X1 U4 ( .A(n5), .B(n3), .Y(n7) );
  BUFX2 U5 ( .A(n4), .Y(n2) );
  INVX1 U6 ( .A(d_in[15]), .Y(n5) );
  NOR3X1 U7 ( .A(d_in[13]), .B(d_in[12]), .C(d_in[14]), .Y(n3) );
  NAND3X1 U8 ( .A(d_in[14]), .B(d_in[13]), .C(d_in[12]), .Y(n4) );
  OAI21X1 U9 ( .A(n5), .B(n2), .C(d_out[12]), .Y(n6) );
  AND2X1 U10 ( .A(d_in[7]), .B(n6), .Y(d_out[7]) );
  AND2X1 U11 ( .A(d_in[1]), .B(n6), .Y(d_out[1]) );
  AND2X1 U12 ( .A(d_in[2]), .B(n6), .Y(d_out[2]) );
  AND2X1 U13 ( .A(d_in[3]), .B(n6), .Y(d_out[3]) );
  AND2X1 U14 ( .A(d_in[4]), .B(n6), .Y(d_out[4]) );
  AND2X1 U15 ( .A(d_in[5]), .B(n6), .Y(d_out[5]) );
  AND2X1 U16 ( .A(d_in[6]), .B(n6), .Y(d_out[6]) );
  AND2X1 U17 ( .A(d_in[8]), .B(n6), .Y(d_out[8]) );
  AND2X1 U18 ( .A(d_in[11]), .B(n6), .Y(d_out[11]) );
  AND2X1 U19 ( .A(d_in[10]), .B(n6), .Y(d_out[10]) );
  AND2X1 U20 ( .A(d_in[9]), .B(n6), .Y(d_out[9]) );
  AND2X1 U21 ( .A(d_in[0]), .B(n6), .Y(d_out[0]) );
endmodule


module add16_sv_2 ( d1_in, d2_in, d_out );
  input [15:0] d1_in;
  input [15:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_9/A[12] , \intadd_9/B[12] , \intadd_9/CI , \intadd_9/n13 ,
         \intadd_9/n12 , \intadd_9/n11 , \intadd_9/n10 , \intadd_9/n9 ,
         \intadd_9/n8 , \intadd_9/n7 , \intadd_9/n6 , \intadd_9/n5 ,
         \intadd_9/n4 , \intadd_9/n3 , \intadd_9/n2 , \intadd_9/n1 , n1, n2;
  assign d_out[15] = d_out[14];

  FAX1 \intadd_9/U14  ( .A(d2_in[1]), .B(d1_in[1]), .C(\intadd_9/CI ), .YC(
        \intadd_9/n13 ), .YS(d_out[1]) );
  FAX1 \intadd_9/U13  ( .A(d2_in[2]), .B(d1_in[2]), .C(\intadd_9/n13 ), .YC(
        \intadd_9/n12 ), .YS(d_out[2]) );
  FAX1 \intadd_9/U12  ( .A(d2_in[3]), .B(d1_in[3]), .C(\intadd_9/n12 ), .YC(
        \intadd_9/n11 ), .YS(d_out[3]) );
  FAX1 \intadd_9/U11  ( .A(d2_in[4]), .B(d1_in[4]), .C(\intadd_9/n11 ), .YC(
        \intadd_9/n10 ), .YS(d_out[4]) );
  FAX1 \intadd_9/U10  ( .A(d2_in[5]), .B(d1_in[5]), .C(\intadd_9/n10 ), .YC(
        \intadd_9/n9 ), .YS(d_out[5]) );
  FAX1 \intadd_9/U9  ( .A(d2_in[6]), .B(d1_in[6]), .C(\intadd_9/n9 ), .YC(
        \intadd_9/n8 ), .YS(d_out[6]) );
  FAX1 \intadd_9/U8  ( .A(d2_in[7]), .B(d1_in[7]), .C(\intadd_9/n8 ), .YC(
        \intadd_9/n7 ), .YS(d_out[7]) );
  FAX1 \intadd_9/U7  ( .A(d2_in[8]), .B(d1_in[8]), .C(\intadd_9/n7 ), .YC(
        \intadd_9/n6 ), .YS(d_out[8]) );
  FAX1 \intadd_9/U6  ( .A(d2_in[9]), .B(d1_in[9]), .C(\intadd_9/n6 ), .YC(
        \intadd_9/n5 ), .YS(d_out[9]) );
  FAX1 \intadd_9/U5  ( .A(d2_in[10]), .B(d1_in[10]), .C(\intadd_9/n5 ), .YC(
        \intadd_9/n4 ), .YS(d_out[10]) );
  FAX1 \intadd_9/U4  ( .A(d1_in[14]), .B(d2_in[11]), .C(\intadd_9/n4 ), .YC(
        \intadd_9/n3 ), .YS(d_out[11]) );
  FAX1 \intadd_9/U3  ( .A(d1_in[14]), .B(d2_in[12]), .C(\intadd_9/n3 ), .YC(
        \intadd_9/n2 ), .YS(d_out[12]) );
  FAX1 \intadd_9/U2  ( .A(\intadd_9/B[12] ), .B(\intadd_9/A[12] ), .C(
        \intadd_9/n2 ), .YC(\intadd_9/n1 ), .YS(d_out[13]) );
  AND2X1 U1 ( .A(d2_in[0]), .B(d1_in[0]), .Y(\intadd_9/CI ) );
  INVX1 U2 ( .A(d1_in[14]), .Y(\intadd_9/A[12] ) );
  INVX1 U3 ( .A(d2_in[14]), .Y(\intadd_9/B[12] ) );
  INVX1 U4 ( .A(\intadd_9/n1 ), .Y(d_out[14]) );
  INVX1 U5 ( .A(\intadd_9/CI ), .Y(n1) );
  OAI21X1 U6 ( .A(d2_in[0]), .B(d1_in[0]), .C(n1), .Y(n2) );
  INVX1 U7 ( .A(n2), .Y(d_out[0]) );
endmodule


module mul8_sv_5 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_13/A[9] , \intadd_13/A[7] , \intadd_13/A[6] ,
         \intadd_13/A[5] , \intadd_13/A[4] , \intadd_13/A[3] ,
         \intadd_13/A[2] , \intadd_13/A[1] , \intadd_13/A[0] ,
         \intadd_13/B[9] , \intadd_13/B[8] , \intadd_13/B[7] ,
         \intadd_13/B[6] , \intadd_13/B[5] , \intadd_13/B[4] ,
         \intadd_13/B[3] , \intadd_13/B[2] , \intadd_13/B[1] ,
         \intadd_13/B[0] , \intadd_13/CI , \intadd_13/SUM[0] , \intadd_13/n10 ,
         \intadd_13/n9 , \intadd_13/n8 , \intadd_13/n7 , \intadd_13/n6 ,
         \intadd_13/n5 , \intadd_13/n4 , \intadd_13/n3 , \intadd_13/n2 ,
         \intadd_13/n1 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227;

  FAX1 \intadd_13/U11  ( .A(n65), .B(n45), .C(n25), .YC(\intadd_13/n10 ), .YS(
        \intadd_13/SUM[0] ) );
  FAX1 \intadd_13/U10  ( .A(\intadd_13/B[1] ), .B(\intadd_13/A[1] ), .C(
        \intadd_13/n10 ), .YC(\intadd_13/n9 ), .YS(d_out[6]) );
  FAX1 \intadd_13/U9  ( .A(\intadd_13/B[2] ), .B(\intadd_13/A[2] ), .C(
        \intadd_13/n9 ), .YC(\intadd_13/n8 ), .YS(d_out[7]) );
  FAX1 \intadd_13/U8  ( .A(\intadd_13/B[3] ), .B(\intadd_13/A[3] ), .C(
        \intadd_13/n8 ), .YC(\intadd_13/n7 ), .YS(d_out[8]) );
  FAX1 \intadd_13/U7  ( .A(\intadd_13/B[4] ), .B(\intadd_13/A[4] ), .C(
        \intadd_13/n7 ), .YC(\intadd_13/n6 ), .YS(d_out[9]) );
  FAX1 \intadd_13/U6  ( .A(\intadd_13/B[5] ), .B(\intadd_13/A[5] ), .C(
        \intadd_13/n6 ), .YC(\intadd_13/n5 ), .YS(d_out[10]) );
  FAX1 \intadd_13/U5  ( .A(\intadd_13/B[6] ), .B(\intadd_13/A[6] ), .C(
        \intadd_13/n5 ), .YC(\intadd_13/n4 ), .YS(d_out[11]) );
  FAX1 \intadd_13/U4  ( .A(\intadd_13/B[7] ), .B(\intadd_13/A[7] ), .C(
        \intadd_13/n4 ), .YC(\intadd_13/n3 ), .YS(d_out[12]) );
  FAX1 \intadd_13/U3  ( .A(\intadd_13/B[8] ), .B(n77), .C(\intadd_13/n3 ), 
        .YC(\intadd_13/n2 ), .YS(d_out[13]) );
  FAX1 \intadd_13/U2  ( .A(n78), .B(n76), .C(\intadd_13/n2 ), .YC(
        \intadd_13/n1 ), .YS(d_out[14]) );
  AND2X1 U1 ( .A(n1), .B(n39), .Y(n186) );
  OR2X1 U2 ( .A(n69), .B(n40), .Y(n180) );
  AND2X1 U3 ( .A(n73), .B(n37), .Y(n130) );
  AND2X1 U4 ( .A(n27), .B(n90), .Y(n136) );
  AND2X1 U5 ( .A(n148), .B(n38), .Y(n154) );
  BUFX2 U6 ( .A(n95), .Y(n1) );
  BUFX2 U7 ( .A(n197), .Y(n2) );
  BUFX2 U8 ( .A(n213), .Y(n3) );
  INVX1 U9 ( .A(n100), .Y(n4) );
  OR2X1 U10 ( .A(d1_in[2]), .B(d1_in[1]), .Y(n100) );
  BUFX2 U11 ( .A(n122), .Y(n5) );
  BUFX2 U12 ( .A(n166), .Y(n6) );
  BUFX2 U13 ( .A(n172), .Y(n7) );
  BUFX2 U14 ( .A(n196), .Y(n8) );
  BUFX2 U15 ( .A(n212), .Y(n9) );
  BUFX2 U16 ( .A(n137), .Y(n10) );
  BUFX2 U17 ( .A(n176), .Y(n11) );
  BUFX2 U18 ( .A(n182), .Y(n12) );
  INVX1 U19 ( .A(n121), .Y(n13) );
  AND2X1 U20 ( .A(d1_in[1]), .B(n167), .Y(n121) );
  INVX1 U21 ( .A(n165), .Y(n14) );
  AND2X1 U22 ( .A(d1_in[1]), .B(n208), .Y(n165) );
  INVX1 U23 ( .A(n195), .Y(n15) );
  AND2X1 U24 ( .A(d1_in[1]), .B(n194), .Y(n195) );
  INVX1 U25 ( .A(n211), .Y(n16) );
  AND2X1 U26 ( .A(d1_in[1]), .B(n209), .Y(n211) );
  BUFX2 U27 ( .A(n203), .Y(n17) );
  INVX1 U28 ( .A(n145), .Y(n18) );
  AND2X1 U29 ( .A(d2_in[0]), .B(n136), .Y(n145) );
  INVX1 U30 ( .A(n185), .Y(n19) );
  AND2X1 U31 ( .A(d2_in[0]), .B(n184), .Y(n185) );
  INVX1 U32 ( .A(n191), .Y(n20) );
  AND2X1 U33 ( .A(n202), .B(d2_in[0]), .Y(n191) );
  INVX1 U34 ( .A(n90), .Y(n21) );
  OR2X1 U35 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n90) );
  BUFX2 U36 ( .A(n104), .Y(n22) );
  BUFX2 U37 ( .A(n127), .Y(n23) );
  BUFX2 U38 ( .A(n149), .Y(n24) );
  BUFX2 U39 ( .A(\intadd_13/CI ), .Y(n25) );
  INVX1 U40 ( .A(n224), .Y(n26) );
  AND2X1 U41 ( .A(n217), .B(n83), .Y(n224) );
  INVX1 U42 ( .A(n91), .Y(n27) );
  AND2X1 U43 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n91) );
  INVX1 U44 ( .A(n29), .Y(n28) );
  BUFX2 U45 ( .A(n118), .Y(n29) );
  INVX1 U46 ( .A(n31), .Y(n30) );
  BUFX2 U47 ( .A(n144), .Y(n31) );
  INVX1 U48 ( .A(n33), .Y(n32) );
  BUFX2 U49 ( .A(n177), .Y(n33) );
  BUFX2 U50 ( .A(n183), .Y(n34) );
  INVX1 U51 ( .A(n134), .Y(n35) );
  AND2X1 U52 ( .A(n94), .B(n93), .Y(n134) );
  BUFX2 U53 ( .A(n139), .Y(n36) );
  BUFX2 U54 ( .A(n132), .Y(n37) );
  BUFX2 U55 ( .A(n147), .Y(n38) );
  BUFX2 U56 ( .A(n187), .Y(n39) );
  BUFX2 U57 ( .A(n181), .Y(n40) );
  BUFX2 U58 ( .A(n106), .Y(n41) );
  BUFX2 U59 ( .A(n115), .Y(n42) );
  BUFX2 U60 ( .A(n150), .Y(n43) );
  BUFX2 U61 ( .A(n173), .Y(n44) );
  BUFX2 U62 ( .A(\intadd_13/A[0] ), .Y(n45) );
  INVX1 U63 ( .A(n128), .Y(n46) );
  OR2X1 U64 ( .A(n86), .B(n66), .Y(n128) );
  BUFX2 U65 ( .A(n199), .Y(n47) );
  BUFX2 U66 ( .A(n92), .Y(n48) );
  BUFX2 U67 ( .A(n103), .Y(n49) );
  BUFX2 U68 ( .A(n99), .Y(n50) );
  BUFX2 U69 ( .A(n102), .Y(n51) );
  BUFX2 U70 ( .A(n109), .Y(n52) );
  BUFX2 U71 ( .A(n110), .Y(n53) );
  BUFX2 U72 ( .A(n119), .Y(n54) );
  BUFX2 U73 ( .A(n124), .Y(n55) );
  BUFX2 U74 ( .A(n138), .Y(n56) );
  BUFX2 U75 ( .A(n135), .Y(n57) );
  BUFX2 U76 ( .A(n164), .Y(n58) );
  BUFX2 U77 ( .A(n179), .Y(n59) );
  BUFX2 U78 ( .A(n97), .Y(n60) );
  BUFX2 U79 ( .A(n107), .Y(n61) );
  BUFX2 U80 ( .A(n116), .Y(n62) );
  BUFX2 U81 ( .A(n129), .Y(n63) );
  BUFX2 U82 ( .A(n151), .Y(n64) );
  BUFX2 U83 ( .A(\intadd_13/B[0] ), .Y(n65) );
  BUFX2 U84 ( .A(n153), .Y(n66) );
  INVX1 U85 ( .A(n68), .Y(n67) );
  BUFX2 U86 ( .A(n98), .Y(n68) );
  INVX1 U87 ( .A(n186), .Y(n69) );
  INVX1 U88 ( .A(n169), .Y(n70) );
  AND2X1 U89 ( .A(n168), .B(d1_in[0]), .Y(n169) );
  INVX1 U90 ( .A(n217), .Y(n71) );
  AND2X1 U91 ( .A(n87), .B(n74), .Y(n217) );
  BUFX2 U92 ( .A(n108), .Y(n72) );
  BUFX2 U93 ( .A(n131), .Y(n73) );
  BUFX2 U94 ( .A(n206), .Y(n74) );
  BUFX2 U95 ( .A(n112), .Y(n75) );
  BUFX2 U96 ( .A(\intadd_13/A[9] ), .Y(n76) );
  INVX1 U97 ( .A(n78), .Y(n77) );
  BUFX2 U98 ( .A(\intadd_13/B[9] ), .Y(n78) );
  OR2X1 U99 ( .A(n168), .B(d2_in[6]), .Y(n123) );
  INVX1 U100 ( .A(n123), .Y(n79) );
  BUFX2 U101 ( .A(n190), .Y(n80) );
  BUFX2 U102 ( .A(n162), .Y(n81) );
  INVX1 U103 ( .A(n180), .Y(n82) );
  BUFX2 U104 ( .A(n218), .Y(n83) );
  INVX1 U105 ( .A(n130), .Y(n84) );
  BUFX2 U106 ( .A(n96), .Y(n85) );
  INVX1 U107 ( .A(n154), .Y(n86) );
  BUFX2 U108 ( .A(n207), .Y(n87) );
  INVX1 U109 ( .A(n136), .Y(n88) );
  OR2X1 U110 ( .A(d1_in[7]), .B(n21), .Y(n89) );
  INVX1 U111 ( .A(n89), .Y(n146) );
  AND2X1 U112 ( .A(d1_in[7]), .B(n27), .Y(n148) );
  INVX1 U113 ( .A(d2_in[7]), .Y(n117) );
  AOI22X1 U114 ( .A(d2_in[7]), .B(n146), .C(n148), .D(n117), .Y(
        \intadd_13/A[9] ) );
  INVX1 U115 ( .A(d2_in[6]), .Y(n120) );
  AOI22X1 U116 ( .A(d2_in[6]), .B(n146), .C(n148), .D(n120), .Y(n92) );
  AOI22X1 U117 ( .A(n136), .B(n76), .C(n48), .D(n88), .Y(\intadd_13/B[9] ) );
  INVX1 U118 ( .A(d2_in[5]), .Y(n167) );
  AOI22X1 U119 ( .A(d2_in[5]), .B(n146), .C(n148), .D(n167), .Y(n103) );
  AOI22X1 U120 ( .A(n136), .B(n48), .C(n49), .D(n88), .Y(n97) );
  INVX1 U121 ( .A(d1_in[5]), .Y(n94) );
  OR2X1 U122 ( .A(d1_in[3]), .B(d1_in[4]), .Y(n93) );
  AOI21X1 U123 ( .A(d1_in[3]), .B(d1_in[4]), .C(n94), .Y(n95) );
  INVX1 U124 ( .A(n1), .Y(n133) );
  AOI22X1 U125 ( .A(d2_in[7]), .B(n134), .C(n1), .D(n117), .Y(n96) );
  INVX1 U126 ( .A(d1_in[3]), .Y(n101) );
  MUX2X1 U127 ( .B(d1_in[3]), .A(n101), .S(d1_in[4]), .Y(n175) );
  INVX1 U128 ( .A(n175), .Y(n184) );
  AOI22X1 U129 ( .A(d2_in[6]), .B(n134), .C(n1), .D(n120), .Y(n99) );
  AOI22X1 U130 ( .A(n184), .B(n85), .C(n50), .D(n175), .Y(n98) );
  FAX1 U131 ( .A(n60), .B(n85), .C(n68), .YC(\intadd_13/B[8] ), .YS(
        \intadd_13/A[7] ) );
  INVX1 U132 ( .A(d2_in[4]), .Y(n170) );
  AOI22X1 U133 ( .A(d2_in[4]), .B(n146), .C(n148), .D(n170), .Y(n102) );
  INVX1 U134 ( .A(d2_in[3]), .Y(n208) );
  AOI22X1 U135 ( .A(d2_in[3]), .B(n146), .C(n148), .D(n208), .Y(n109) );
  AOI22X1 U136 ( .A(n136), .B(n51), .C(n52), .D(n88), .Y(n107) );
  AOI22X1 U137 ( .A(d2_in[5]), .B(n134), .C(n1), .D(n167), .Y(n110) );
  AOI22X1 U138 ( .A(n184), .B(n50), .C(n53), .D(n175), .Y(n106) );
  OR2X1 U139 ( .A(d1_in[3]), .B(n4), .Y(n205) );
  INVX1 U140 ( .A(n205), .Y(n192) );
  AOI21X1 U141 ( .A(d1_in[2]), .B(d1_in[1]), .C(n101), .Y(n207) );
  AOI22X1 U142 ( .A(d2_in[7]), .B(n192), .C(n87), .D(n117), .Y(n108) );
  AOI22X1 U143 ( .A(n136), .B(n49), .C(n51), .D(n88), .Y(n104) );
  FAX1 U144 ( .A(n67), .B(n105), .C(n22), .YC(\intadd_13/B[7] ), .YS(
        \intadd_13/A[6] ) );
  FAX1 U145 ( .A(n61), .B(n41), .C(n72), .YC(n105), .YS(n113) );
  INVX1 U146 ( .A(d1_in[1]), .Y(n168) );
  MUX2X1 U147 ( .B(d1_in[1]), .A(n168), .S(d1_in[2]), .Y(n201) );
  INVX1 U148 ( .A(n201), .Y(n202) );
  INVX1 U149 ( .A(n87), .Y(n204) );
  AOI22X1 U150 ( .A(d2_in[6]), .B(n205), .C(n204), .D(n120), .Y(n118) );
  AOI22X1 U151 ( .A(n202), .B(n72), .C(n28), .D(n201), .Y(n112) );
  INVX1 U152 ( .A(d2_in[2]), .Y(n209) );
  AOI22X1 U153 ( .A(d2_in[2]), .B(n146), .C(n148), .D(n209), .Y(n119) );
  AOI22X1 U154 ( .A(n136), .B(n52), .C(n54), .D(n88), .Y(n116) );
  AOI22X1 U155 ( .A(d2_in[4]), .B(n134), .C(n1), .D(n170), .Y(n124) );
  AOI22X1 U156 ( .A(n184), .B(n53), .C(n55), .D(n175), .Y(n115) );
  INVX1 U157 ( .A(n75), .Y(n114) );
  FAX1 U158 ( .A(n113), .B(n75), .C(n111), .YC(\intadd_13/B[6] ), .YS(
        \intadd_13/A[5] ) );
  FAX1 U159 ( .A(n62), .B(n42), .C(n114), .YC(n111), .YS(n126) );
  AOI22X1 U160 ( .A(d2_in[7]), .B(n70), .C(n168), .D(n117), .Y(n131) );
  AOI22X1 U161 ( .A(d2_in[5]), .B(n205), .C(n204), .D(n167), .Y(n139) );
  AOI22X1 U162 ( .A(n202), .B(n29), .C(n36), .D(n201), .Y(n132) );
  INVX1 U163 ( .A(d2_in[1]), .Y(n194) );
  AOI22X1 U164 ( .A(d2_in[1]), .B(n146), .C(n148), .D(n194), .Y(n138) );
  AOI22X1 U165 ( .A(n136), .B(n54), .C(n56), .D(n88), .Y(n129) );
  AOI22X1 U166 ( .A(d2_in[6]), .B(n169), .C(d1_in[1]), .D(n120), .Y(n122) );
  INVX1 U167 ( .A(d1_in[0]), .Y(n210) );
  AOI22X1 U168 ( .A(d1_in[0]), .B(n5), .C(n13), .D(n210), .Y(n147) );
  AOI22X1 U169 ( .A(d1_in[0]), .B(n73), .C(n79), .D(n210), .Y(n153) );
  AOI22X1 U170 ( .A(d2_in[3]), .B(n134), .C(n1), .D(n208), .Y(n135) );
  AOI22X1 U171 ( .A(n184), .B(n55), .C(n57), .D(n175), .Y(n127) );
  FAX1 U172 ( .A(n126), .B(n84), .C(n125), .YC(\intadd_13/B[5] ), .YS(
        \intadd_13/A[4] ) );
  FAX1 U173 ( .A(n63), .B(n46), .C(n23), .YC(n125), .YS(n143) );
  OAI21X1 U174 ( .A(n37), .B(n73), .C(n84), .Y(n142) );
  AOI22X1 U175 ( .A(d2_in[2]), .B(n35), .C(n133), .D(n209), .Y(n144) );
  AOI22X1 U176 ( .A(n184), .B(n57), .C(n30), .D(n175), .Y(n151) );
  INVX1 U177 ( .A(d2_in[0]), .Y(n193) );
  AOI22X1 U178 ( .A(d2_in[0]), .B(n146), .C(n148), .D(n193), .Y(n137) );
  AOI22X1 U179 ( .A(n136), .B(n56), .C(n10), .D(n88), .Y(n150) );
  INVX1 U180 ( .A(n36), .Y(n140) );
  AOI22X1 U181 ( .A(d2_in[4]), .B(n192), .C(n87), .D(n170), .Y(n164) );
  AOI22X1 U182 ( .A(n202), .B(n140), .C(n58), .D(n201), .Y(n149) );
  FAX1 U183 ( .A(n143), .B(n142), .C(n141), .YC(\intadd_13/B[4] ), .YS(
        \intadd_13/A[3] ) );
  AOI22X1 U184 ( .A(d2_in[1]), .B(n134), .C(n1), .D(n194), .Y(n177) );
  AOI22X1 U185 ( .A(n184), .B(n31), .C(n32), .D(n175), .Y(n162) );
  MUX2X1 U186 ( .B(n146), .A(n148), .S(n18), .Y(n161) );
  OAI21X1 U187 ( .A(n148), .B(n38), .C(n86), .Y(n160) );
  FAX1 U188 ( .A(n64), .B(n43), .C(n24), .YC(n141), .YS(n152) );
  INVX1 U189 ( .A(n152), .Y(n157) );
  MUX2X1 U190 ( .B(n86), .A(n154), .S(n66), .Y(n156) );
  INVX1 U191 ( .A(n155), .Y(\intadd_13/B[3] ) );
  FAX1 U192 ( .A(n158), .B(n157), .C(n156), .YC(n155), .YS(n159) );
  INVX1 U193 ( .A(n159), .Y(\intadd_13/A[2] ) );
  FAX1 U194 ( .A(n81), .B(n161), .C(n160), .YC(n158), .YS(n163) );
  INVX1 U195 ( .A(n163), .Y(n174) );
  AOI22X1 U196 ( .A(d2_in[3]), .B(n192), .C(n87), .D(n208), .Y(n179) );
  AOI22X1 U197 ( .A(n202), .B(n58), .C(n59), .D(n201), .Y(n173) );
  AOI22X1 U198 ( .A(d2_in[4]), .B(n169), .C(d1_in[1]), .D(n170), .Y(n166) );
  AOI22X1 U199 ( .A(d1_in[0]), .B(n6), .C(n14), .D(n210), .Y(n187) );
  AOI22X1 U200 ( .A(d2_in[5]), .B(n70), .C(n168), .D(n167), .Y(n172) );
  AND2X1 U201 ( .A(n170), .B(d1_in[1]), .Y(n171) );
  AOI22X1 U202 ( .A(d1_in[0]), .B(n7), .C(n171), .D(n210), .Y(n181) );
  FAX1 U203 ( .A(n174), .B(n44), .C(n82), .YC(\intadd_13/B[2] ), .YS(
        \intadd_13/A[1] ) );
  AOI22X1 U204 ( .A(d2_in[0]), .B(n134), .C(n1), .D(n193), .Y(n176) );
  AOI22X1 U205 ( .A(n184), .B(n33), .C(n11), .D(n175), .Y(\intadd_13/A[0] ) );
  AOI22X1 U206 ( .A(d2_in[2]), .B(n205), .C(n204), .D(n209), .Y(n183) );
  INVX1 U207 ( .A(n34), .Y(n178) );
  AOI22X1 U208 ( .A(n202), .B(n59), .C(n178), .D(n201), .Y(\intadd_13/B[0] )
         );
  AOI21X1 U209 ( .A(n69), .B(n40), .C(n82), .Y(\intadd_13/CI ) );
  INVX1 U210 ( .A(\intadd_13/SUM[0] ), .Y(n222) );
  AOI22X1 U211 ( .A(d2_in[1]), .B(n205), .C(n204), .D(n194), .Y(n182) );
  AOI22X1 U212 ( .A(n202), .B(n34), .C(n12), .D(n201), .Y(n190) );
  MUX2X1 U213 ( .B(n134), .A(n1), .S(n19), .Y(n189) );
  OAI21X1 U214 ( .A(n1), .B(n39), .C(n69), .Y(n188) );
  FAX1 U215 ( .A(n80), .B(n189), .C(n188), .YC(n221), .YS(n226) );
  MUX2X1 U216 ( .B(n192), .A(n87), .S(n20), .Y(n200) );
  NAND3X1 U217 ( .A(d1_in[1]), .B(n193), .C(n194), .Y(n199) );
  AOI22X1 U218 ( .A(d2_in[2]), .B(n169), .C(d1_in[1]), .D(n209), .Y(n196) );
  AOI22X1 U219 ( .A(d1_in[0]), .B(n8), .C(n15), .D(n210), .Y(n206) );
  AOI22X1 U220 ( .A(n200), .B(n47), .C(n87), .D(n74), .Y(n197) );
  OAI21X1 U221 ( .A(n87), .B(n74), .C(n2), .Y(n198) );
  OAI21X1 U222 ( .A(n200), .B(n47), .C(n198), .Y(n216) );
  AOI22X1 U223 ( .A(n202), .B(d2_in[1]), .C(d2_in[0]), .D(n201), .Y(n203) );
  MUX2X1 U224 ( .B(n205), .A(n204), .S(n17), .Y(n215) );
  AOI22X1 U225 ( .A(d2_in[3]), .B(n169), .C(d1_in[1]), .D(n208), .Y(n212) );
  AOI22X1 U226 ( .A(d1_in[0]), .B(n9), .C(n16), .D(n210), .Y(n218) );
  AOI22X1 U227 ( .A(n216), .B(n215), .C(n71), .D(n83), .Y(n213) );
  OAI21X1 U228 ( .A(n71), .B(n83), .C(n3), .Y(n214) );
  OAI21X1 U229 ( .A(n216), .B(n215), .C(n214), .Y(n225) );
  INVX1 U230 ( .A(n219), .Y(\intadd_13/B[1] ) );
  FAX1 U231 ( .A(n222), .B(n221), .C(n220), .YC(n219), .YS(n223) );
  INVX1 U232 ( .A(n223), .Y(d_out[5]) );
  FAX1 U233 ( .A(n226), .B(n225), .C(n26), .YC(n220), .YS(n227) );
  INVX1 U234 ( .A(n227), .Y(d_out[4]) );
  INVX1 U235 ( .A(\intadd_13/n1 ), .Y(d_out[15]) );
endmodule


module mul8_sv_4 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;
  wire   \intadd_17/A[7] , \intadd_17/A[6] , \intadd_17/A[5] ,
         \intadd_17/A[4] , \intadd_17/A[3] , \intadd_17/A[2] ,
         \intadd_17/A[1] , \intadd_17/A[0] , \intadd_17/B[7] ,
         \intadd_17/B[6] , \intadd_17/B[5] , \intadd_17/B[4] ,
         \intadd_17/B[3] , \intadd_17/B[2] , \intadd_17/B[1] ,
         \intadd_17/B[0] , \intadd_17/CI , \intadd_17/SUM[0] , \intadd_17/n9 ,
         \intadd_17/n8 , \intadd_17/n7 , \intadd_17/n6 , \intadd_17/n5 ,
         \intadd_17/n4 , \intadd_17/n3 , \intadd_17/n2 , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231;

  FAX1 \intadd_17/U10  ( .A(n66), .B(n45), .C(n27), .YC(\intadd_17/n9 ), .YS(
        \intadd_17/SUM[0] ) );
  FAX1 \intadd_17/U9  ( .A(n82), .B(\intadd_17/A[1] ), .C(\intadd_17/n9 ), 
        .YC(\intadd_17/n8 ), .YS(d_out[6]) );
  FAX1 \intadd_17/U8  ( .A(\intadd_17/B[2] ), .B(\intadd_17/A[2] ), .C(
        \intadd_17/n8 ), .YC(\intadd_17/n7 ), .YS(d_out[7]) );
  FAX1 \intadd_17/U7  ( .A(\intadd_17/B[3] ), .B(\intadd_17/A[3] ), .C(
        \intadd_17/n7 ), .YC(\intadd_17/n6 ), .YS(d_out[8]) );
  FAX1 \intadd_17/U6  ( .A(\intadd_17/B[4] ), .B(\intadd_17/A[4] ), .C(
        \intadd_17/n6 ), .YC(\intadd_17/n5 ), .YS(d_out[9]) );
  FAX1 \intadd_17/U5  ( .A(\intadd_17/B[5] ), .B(\intadd_17/A[5] ), .C(
        \intadd_17/n5 ), .YC(\intadd_17/n4 ), .YS(d_out[10]) );
  FAX1 \intadd_17/U4  ( .A(\intadd_17/B[6] ), .B(\intadd_17/A[6] ), .C(
        \intadd_17/n4 ), .YC(\intadd_17/n3 ), .YS(d_out[11]) );
  FAX1 \intadd_17/U3  ( .A(\intadd_17/B[7] ), .B(\intadd_17/A[7] ), .C(
        \intadd_17/n3 ), .YC(\intadd_17/n2 ), .YS(d_out[12]) );
  OR2X1 U1 ( .A(n39), .B(n40), .Y(n182) );
  AND2X1 U2 ( .A(n76), .B(n36), .Y(n136) );
  OR2X1 U3 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n92) );
  AND2X1 U4 ( .A(n218), .B(n38), .Y(n219) );
  AND2X1 U5 ( .A(n228), .B(n3), .Y(\intadd_17/B[1] ) );
  AND2X1 U6 ( .A(n23), .B(n92), .Y(n140) );
  AND2X1 U7 ( .A(d1_in[7]), .B(n23), .Y(n98) );
  OR2X1 U8 ( .A(d1_in[3]), .B(n4), .Y(n202) );
  AND2X1 U9 ( .A(n2), .B(n59), .Y(n221) );
  AND2X1 U10 ( .A(n98), .B(n37), .Y(n157) );
  BUFX2 U11 ( .A(n97), .Y(n1) );
  BUFX2 U12 ( .A(n108), .Y(n2) );
  INVX1 U13 ( .A(n227), .Y(n3) );
  AND2X1 U14 ( .A(\intadd_17/SUM[0] ), .B(n226), .Y(n227) );
  INVX1 U15 ( .A(n106), .Y(n4) );
  OR2X1 U16 ( .A(d1_in[2]), .B(d1_in[1]), .Y(n106) );
  BUFX2 U17 ( .A(n101), .Y(n5) );
  BUFX2 U18 ( .A(n127), .Y(n6) );
  BUFX2 U19 ( .A(n170), .Y(n7) );
  BUFX2 U20 ( .A(n174), .Y(n8) );
  BUFX2 U21 ( .A(n186), .Y(n9) );
  BUFX2 U22 ( .A(n199), .Y(n10) );
  BUFX2 U23 ( .A(n141), .Y(n11) );
  BUFX2 U24 ( .A(n179), .Y(n12) );
  BUFX2 U25 ( .A(n188), .Y(n13) );
  BUFX2 U26 ( .A(n213), .Y(n14) );
  INVX1 U27 ( .A(n126), .Y(n15) );
  AND2X1 U28 ( .A(d1_in[1]), .B(n171), .Y(n126) );
  INVX1 U29 ( .A(n169), .Y(n16) );
  AND2X1 U30 ( .A(d1_in[1]), .B(n195), .Y(n169) );
  INVX1 U31 ( .A(n173), .Y(n17) );
  OR2X1 U32 ( .A(d2_in[4]), .B(n204), .Y(n173) );
  INVX1 U33 ( .A(n198), .Y(n18) );
  AND2X1 U34 ( .A(d1_in[1]), .B(n196), .Y(n198) );
  BUFX2 U35 ( .A(n201), .Y(n19) );
  INVX1 U36 ( .A(n150), .Y(n20) );
  AND2X1 U37 ( .A(d2_in[0]), .B(n140), .Y(n150) );
  INVX1 U38 ( .A(n192), .Y(n21) );
  AND2X1 U39 ( .A(d2_in[0]), .B(n191), .Y(n192) );
  BUFX2 U40 ( .A(n102), .Y(n22) );
  INVX1 U41 ( .A(n94), .Y(n23) );
  AND2X1 U42 ( .A(d1_in[5]), .B(d1_in[6]), .Y(n94) );
  BUFX2 U43 ( .A(n111), .Y(n24) );
  BUFX2 U44 ( .A(n133), .Y(n25) );
  BUFX2 U45 ( .A(n152), .Y(n26) );
  BUFX2 U46 ( .A(\intadd_17/CI ), .Y(n27) );
  INVX1 U47 ( .A(n29), .Y(n28) );
  BUFX2 U48 ( .A(n124), .Y(n29) );
  INVX1 U49 ( .A(n31), .Y(n30) );
  BUFX2 U50 ( .A(n149), .Y(n31) );
  BUFX2 U51 ( .A(n180), .Y(n32) );
  INVX1 U52 ( .A(n34), .Y(n33) );
  BUFX2 U53 ( .A(n100), .Y(n34) );
  BUFX2 U54 ( .A(n143), .Y(n35) );
  BUFX2 U55 ( .A(n138), .Y(n36) );
  BUFX2 U56 ( .A(n151), .Y(n37) );
  BUFX2 U57 ( .A(n217), .Y(n38) );
  INVX1 U58 ( .A(n184), .Y(n39) );
  AND2X1 U59 ( .A(n1), .B(n60), .Y(n184) );
  BUFX2 U60 ( .A(n183), .Y(n40) );
  BUFX2 U61 ( .A(n113), .Y(n41) );
  BUFX2 U62 ( .A(n121), .Y(n42) );
  BUFX2 U63 ( .A(n153), .Y(n43) );
  BUFX2 U64 ( .A(n175), .Y(n44) );
  BUFX2 U65 ( .A(\intadd_17/A[0] ), .Y(n45) );
  OR2X1 U66 ( .A(n89), .B(n68), .Y(n134) );
  INVX1 U67 ( .A(n134), .Y(n46) );
  BUFX2 U68 ( .A(n110), .Y(n47) );
  BUFX2 U69 ( .A(n105), .Y(n48) );
  BUFX2 U70 ( .A(n109), .Y(n49) );
  BUFX2 U71 ( .A(n116), .Y(n50) );
  BUFX2 U72 ( .A(n117), .Y(n51) );
  BUFX2 U73 ( .A(n125), .Y(n52) );
  BUFX2 U74 ( .A(n130), .Y(n53) );
  BUFX2 U75 ( .A(n142), .Y(n54) );
  BUFX2 U76 ( .A(n139), .Y(n55) );
  BUFX2 U77 ( .A(n167), .Y(n56) );
  BUFX2 U78 ( .A(n181), .Y(n57) );
  BUFX2 U79 ( .A(n189), .Y(n58) );
  BUFX2 U80 ( .A(n203), .Y(n59) );
  BUFX2 U81 ( .A(n190), .Y(n60) );
  BUFX2 U82 ( .A(n231), .Y(n61) );
  BUFX2 U83 ( .A(n114), .Y(n62) );
  BUFX2 U84 ( .A(n122), .Y(n63) );
  BUFX2 U85 ( .A(n135), .Y(n64) );
  BUFX2 U86 ( .A(n154), .Y(n65) );
  BUFX2 U87 ( .A(\intadd_17/B[0] ), .Y(n66) );
  BUFX2 U88 ( .A(n224), .Y(n67) );
  BUFX2 U89 ( .A(n156), .Y(n68) );
  INVX1 U90 ( .A(n221), .Y(n69) );
  INVX1 U91 ( .A(n71), .Y(n70) );
  BUFX2 U92 ( .A(n229), .Y(n71) );
  INVX1 U93 ( .A(n194), .Y(n72) );
  AND2X1 U94 ( .A(n96), .B(n95), .Y(n194) );
  INVX1 U95 ( .A(n172), .Y(n73) );
  AND2X1 U96 ( .A(n204), .B(d1_in[0]), .Y(n172) );
  INVX1 U97 ( .A(n98), .Y(n74) );
  BUFX2 U98 ( .A(n115), .Y(n75) );
  BUFX2 U99 ( .A(n137), .Y(n76) );
  INVX1 U100 ( .A(n78), .Y(n77) );
  BUFX2 U101 ( .A(n119), .Y(n78) );
  INVX1 U102 ( .A(n219), .Y(n79) );
  AND2X1 U103 ( .A(d1_in[1]), .B(n187), .Y(n185) );
  INVX1 U104 ( .A(n185), .Y(n80) );
  AND2X1 U105 ( .A(n205), .B(d2_in[0]), .Y(n206) );
  INVX1 U106 ( .A(n206), .Y(n81) );
  INVX1 U107 ( .A(\intadd_17/B[1] ), .Y(n82) );
  BUFX2 U108 ( .A(n165), .Y(n83) );
  BUFX2 U109 ( .A(n216), .Y(n84) );
  INVX1 U110 ( .A(n182), .Y(n85) );
  AND2X1 U111 ( .A(n93), .B(n92), .Y(n99) );
  INVX1 U112 ( .A(n99), .Y(n86) );
  INVX1 U113 ( .A(n136), .Y(n87) );
  BUFX2 U114 ( .A(n230), .Y(n88) );
  INVX1 U115 ( .A(n157), .Y(n89) );
  INVX1 U116 ( .A(n202), .Y(n90) );
  INVX1 U117 ( .A(n140), .Y(n91) );
  INVX1 U118 ( .A(d1_in[7]), .Y(n93) );
  INVX1 U119 ( .A(d2_in[6]), .Y(n128) );
  AOI22X1 U120 ( .A(d2_in[6]), .B(n86), .C(n74), .D(n128), .Y(n100) );
  INVX1 U121 ( .A(d2_in[5]), .Y(n171) );
  AOI22X1 U122 ( .A(d2_in[5]), .B(n99), .C(n98), .D(n171), .Y(n110) );
  AOI22X1 U123 ( .A(n140), .B(n33), .C(n47), .D(n91), .Y(n231) );
  INVX1 U124 ( .A(d1_in[5]), .Y(n96) );
  OR2X1 U125 ( .A(d1_in[3]), .B(d1_in[4]), .Y(n95) );
  AOI21X1 U126 ( .A(d1_in[3]), .B(d1_in[4]), .C(n96), .Y(n97) );
  INVX1 U127 ( .A(n1), .Y(n193) );
  INVX1 U128 ( .A(d2_in[7]), .Y(n123) );
  AOI22X1 U129 ( .A(d2_in[7]), .B(n194), .C(n1), .D(n123), .Y(n230) );
  INVX1 U130 ( .A(d1_in[3]), .Y(n107) );
  MUX2X1 U131 ( .B(n107), .A(d1_in[3]), .S(d1_in[4]), .Y(n191) );
  AOI22X1 U132 ( .A(d2_in[6]), .B(n194), .C(n1), .D(n128), .Y(n105) );
  INVX1 U133 ( .A(n191), .Y(n178) );
  AOI22X1 U134 ( .A(n191), .B(n88), .C(n48), .D(n178), .Y(n229) );
  AOI22X1 U135 ( .A(d2_in[7]), .B(n86), .C(n74), .D(n123), .Y(n101) );
  AOI22X1 U136 ( .A(n140), .B(n5), .C(n34), .D(n91), .Y(n102) );
  XOR2X1 U137 ( .A(n103), .B(n22), .Y(n104) );
  XOR2X1 U138 ( .A(\intadd_17/n2 ), .B(n104), .Y(d_out[13]) );
  INVX1 U139 ( .A(d2_in[4]), .Y(n168) );
  AOI22X1 U140 ( .A(d2_in[4]), .B(n99), .C(n98), .D(n168), .Y(n109) );
  INVX1 U141 ( .A(d2_in[3]), .Y(n195) );
  AOI22X1 U142 ( .A(d2_in[3]), .B(n99), .C(n98), .D(n195), .Y(n116) );
  AOI22X1 U143 ( .A(n140), .B(n49), .C(n50), .D(n91), .Y(n114) );
  AOI22X1 U144 ( .A(d2_in[5]), .B(n194), .C(n1), .D(n171), .Y(n117) );
  AOI22X1 U145 ( .A(n191), .B(n48), .C(n51), .D(n178), .Y(n113) );
  AOI21X1 U146 ( .A(d1_in[2]), .B(d1_in[1]), .C(n107), .Y(n108) );
  INVX1 U147 ( .A(n2), .Y(n207) );
  AOI22X1 U148 ( .A(d2_in[7]), .B(n90), .C(n2), .D(n123), .Y(n115) );
  AOI22X1 U149 ( .A(n140), .B(n47), .C(n49), .D(n91), .Y(n111) );
  FAX1 U150 ( .A(n70), .B(n112), .C(n24), .YC(\intadd_17/B[7] ), .YS(
        \intadd_17/A[6] ) );
  FAX1 U151 ( .A(n62), .B(n41), .C(n75), .YC(n112), .YS(n120) );
  INVX1 U152 ( .A(d1_in[1]), .Y(n204) );
  MUX2X1 U153 ( .B(n204), .A(d1_in[1]), .S(d1_in[2]), .Y(n205) );
  AOI22X1 U154 ( .A(d2_in[6]), .B(n202), .C(n207), .D(n128), .Y(n124) );
  INVX1 U155 ( .A(n205), .Y(n200) );
  AOI22X1 U156 ( .A(n205), .B(n75), .C(n28), .D(n200), .Y(n119) );
  INVX1 U157 ( .A(d2_in[2]), .Y(n196) );
  AOI22X1 U158 ( .A(d2_in[2]), .B(n99), .C(n98), .D(n196), .Y(n125) );
  AOI22X1 U159 ( .A(n140), .B(n50), .C(n52), .D(n91), .Y(n122) );
  AOI22X1 U160 ( .A(d2_in[4]), .B(n194), .C(n1), .D(n168), .Y(n130) );
  AOI22X1 U161 ( .A(n191), .B(n51), .C(n53), .D(n178), .Y(n121) );
  FAX1 U162 ( .A(n120), .B(n78), .C(n118), .YC(\intadd_17/B[6] ), .YS(
        \intadd_17/A[5] ) );
  FAX1 U163 ( .A(n63), .B(n42), .C(n77), .YC(n118), .YS(n132) );
  AOI22X1 U164 ( .A(d2_in[7]), .B(n73), .C(n204), .D(n123), .Y(n137) );
  AOI22X1 U165 ( .A(d2_in[5]), .B(n202), .C(n207), .D(n171), .Y(n143) );
  AOI22X1 U166 ( .A(n205), .B(n29), .C(n35), .D(n200), .Y(n138) );
  INVX1 U167 ( .A(d2_in[1]), .Y(n187) );
  AOI22X1 U168 ( .A(d2_in[1]), .B(n99), .C(n98), .D(n187), .Y(n142) );
  AOI22X1 U169 ( .A(n140), .B(n52), .C(n54), .D(n91), .Y(n135) );
  AOI22X1 U170 ( .A(d2_in[6]), .B(n172), .C(d1_in[1]), .D(n128), .Y(n127) );
  INVX1 U171 ( .A(d1_in[0]), .Y(n197) );
  AOI22X1 U172 ( .A(d1_in[0]), .B(n6), .C(n15), .D(n197), .Y(n151) );
  AND2X1 U173 ( .A(d1_in[1]), .B(n128), .Y(n129) );
  AOI22X1 U174 ( .A(d1_in[0]), .B(n76), .C(n129), .D(n197), .Y(n156) );
  AOI22X1 U175 ( .A(d2_in[3]), .B(n194), .C(n1), .D(n195), .Y(n139) );
  AOI22X1 U176 ( .A(n191), .B(n53), .C(n55), .D(n178), .Y(n133) );
  FAX1 U177 ( .A(n132), .B(n87), .C(n131), .YC(\intadd_17/B[5] ), .YS(
        \intadd_17/A[4] ) );
  FAX1 U178 ( .A(n64), .B(n46), .C(n25), .YC(n131), .YS(n147) );
  OAI21X1 U179 ( .A(n36), .B(n76), .C(n87), .Y(n146) );
  AOI22X1 U180 ( .A(d2_in[2]), .B(n72), .C(n193), .D(n196), .Y(n149) );
  AOI22X1 U181 ( .A(n191), .B(n55), .C(n30), .D(n178), .Y(n154) );
  INVX1 U182 ( .A(d2_in[0]), .Y(n177) );
  AOI22X1 U183 ( .A(d2_in[0]), .B(n99), .C(n98), .D(n177), .Y(n141) );
  AOI22X1 U184 ( .A(n140), .B(n54), .C(n11), .D(n91), .Y(n153) );
  INVX1 U185 ( .A(n35), .Y(n144) );
  AOI22X1 U186 ( .A(d2_in[4]), .B(n90), .C(n2), .D(n168), .Y(n167) );
  AOI22X1 U187 ( .A(n205), .B(n144), .C(n56), .D(n200), .Y(n152) );
  FAX1 U188 ( .A(n147), .B(n146), .C(n145), .YC(\intadd_17/B[4] ), .YS(
        \intadd_17/A[3] ) );
  AOI22X1 U189 ( .A(d2_in[1]), .B(n194), .C(n1), .D(n187), .Y(n180) );
  INVX1 U190 ( .A(n32), .Y(n148) );
  AOI22X1 U191 ( .A(n191), .B(n31), .C(n148), .D(n178), .Y(n165) );
  MUX2X1 U192 ( .B(n99), .A(n98), .S(n20), .Y(n164) );
  OAI21X1 U193 ( .A(n98), .B(n37), .C(n89), .Y(n163) );
  FAX1 U194 ( .A(n65), .B(n43), .C(n26), .YC(n145), .YS(n155) );
  INVX1 U195 ( .A(n155), .Y(n160) );
  MUX2X1 U196 ( .B(n89), .A(n157), .S(n68), .Y(n159) );
  INVX1 U197 ( .A(n158), .Y(\intadd_17/B[3] ) );
  FAX1 U198 ( .A(n161), .B(n160), .C(n159), .YC(n158), .YS(n162) );
  INVX1 U199 ( .A(n162), .Y(\intadd_17/A[2] ) );
  FAX1 U200 ( .A(n83), .B(n164), .C(n163), .YC(n161), .YS(n166) );
  INVX1 U201 ( .A(n166), .Y(n176) );
  AOI22X1 U202 ( .A(d2_in[3]), .B(n90), .C(n2), .D(n195), .Y(n181) );
  AOI22X1 U203 ( .A(n205), .B(n56), .C(n57), .D(n200), .Y(n175) );
  AOI22X1 U204 ( .A(d2_in[4]), .B(n172), .C(d1_in[1]), .D(n168), .Y(n170) );
  AOI22X1 U205 ( .A(d1_in[0]), .B(n7), .C(n16), .D(n197), .Y(n190) );
  AOI22X1 U206 ( .A(d2_in[5]), .B(n73), .C(n204), .D(n171), .Y(n174) );
  AOI22X1 U207 ( .A(d1_in[0]), .B(n8), .C(n17), .D(n197), .Y(n183) );
  FAX1 U208 ( .A(n176), .B(n44), .C(n85), .YC(\intadd_17/B[2] ), .YS(
        \intadd_17/A[1] ) );
  AOI22X1 U209 ( .A(d2_in[0]), .B(n194), .C(n1), .D(n177), .Y(n179) );
  AOI22X1 U210 ( .A(n191), .B(n32), .C(n12), .D(n178), .Y(\intadd_17/A[0] ) );
  AOI22X1 U211 ( .A(d2_in[2]), .B(n90), .C(n2), .D(n196), .Y(n189) );
  AOI22X1 U212 ( .A(n205), .B(n57), .C(n58), .D(n200), .Y(\intadd_17/B[0] ) );
  AOI21X1 U213 ( .A(n39), .B(n40), .C(n85), .Y(\intadd_17/CI ) );
  AOI22X1 U214 ( .A(d2_in[2]), .B(n172), .C(d1_in[1]), .D(n196), .Y(n186) );
  AOI22X1 U215 ( .A(d1_in[0]), .B(n9), .C(n80), .D(n197), .Y(n203) );
  AOI22X1 U216 ( .A(d2_in[1]), .B(n90), .C(n2), .D(n187), .Y(n188) );
  AOI22X1 U217 ( .A(n205), .B(n58), .C(n13), .D(n200), .Y(n224) );
  MUX2X1 U218 ( .B(n193), .A(n1), .S(n60), .Y(n223) );
  MUX2X1 U219 ( .B(n72), .A(n193), .S(n21), .Y(n222) );
  AOI22X1 U220 ( .A(d2_in[3]), .B(n172), .C(d1_in[1]), .D(n195), .Y(n199) );
  AOI22X1 U221 ( .A(d1_in[0]), .B(n10), .C(n18), .D(n197), .Y(n216) );
  HAX1 U222 ( .A(n84), .B(n69), .YS(n215) );
  AOI22X1 U223 ( .A(n205), .B(d2_in[1]), .C(d2_in[0]), .D(n200), .Y(n201) );
  MUX2X1 U224 ( .B(n90), .A(n2), .S(n19), .Y(n214) );
  MUX2X1 U225 ( .B(n207), .A(n2), .S(n59), .Y(n211) );
  NOR3X1 U226 ( .A(d2_in[1]), .B(d2_in[0]), .C(n204), .Y(n210) );
  MUX2X1 U227 ( .B(n202), .A(n207), .S(n81), .Y(n209) );
  OR2X1 U228 ( .A(n211), .B(n210), .Y(n208) );
  AOI22X1 U229 ( .A(n211), .B(n210), .C(n209), .D(n208), .Y(n213) );
  OR2X1 U230 ( .A(n215), .B(n214), .Y(n212) );
  AOI22X1 U231 ( .A(n215), .B(n214), .C(n14), .D(n212), .Y(n217) );
  OAI21X1 U232 ( .A(n218), .B(n38), .C(n84), .Y(n220) );
  OAI21X1 U233 ( .A(n69), .B(n220), .C(n79), .Y(n226) );
  FAX1 U234 ( .A(n67), .B(n223), .C(n222), .YC(n225), .YS(n218) );
  OAI21X1 U235 ( .A(\intadd_17/SUM[0] ), .B(n226), .C(n225), .Y(n228) );
  FAX1 U236 ( .A(n61), .B(n88), .C(n71), .YC(n103), .YS(\intadd_17/A[7] ) );
endmodule


module truncation_sv_4 ( d_in, d_out );
  input [15:0] d_in;
  output [7:0] d_out;
  wire   \d_in[13] , \d_in[12] , \d_in[11] , \d_in[10] , \d_in[9] , \d_in[8] ,
         \d_in[7] , \d_in[6] ;
  assign d_out[7] = \d_in[13] ;
  assign \d_in[13]  = d_in[13];
  assign d_out[6] = \d_in[12] ;
  assign \d_in[12]  = d_in[12];
  assign d_out[5] = \d_in[11] ;
  assign \d_in[11]  = d_in[11];
  assign d_out[4] = \d_in[10] ;
  assign \d_in[10]  = d_in[10];
  assign d_out[3] = \d_in[9] ;
  assign \d_in[9]  = d_in[9];
  assign d_out[2] = \d_in[8] ;
  assign \d_in[8]  = d_in[8];
  assign d_out[1] = \d_in[7] ;
  assign \d_in[7]  = d_in[7];
  assign d_out[0] = \d_in[6] ;
  assign \d_in[6]  = d_in[6];

endmodule


module truncation_sv_5 ( d_in, d_out );
  input [15:0] d_in;
  output [7:0] d_out;
  wire   \d_in[13] , \d_in[12] , \d_in[11] , \d_in[10] , \d_in[9] , \d_in[8] ,
         \d_in[7] , \d_in[6] ;
  assign d_out[7] = \d_in[13] ;
  assign \d_in[13]  = d_in[13];
  assign d_out[6] = \d_in[12] ;
  assign \d_in[12]  = d_in[12];
  assign d_out[5] = \d_in[11] ;
  assign \d_in[11]  = d_in[11];
  assign d_out[4] = \d_in[10] ;
  assign \d_in[10]  = d_in[10];
  assign d_out[3] = \d_in[9] ;
  assign \d_in[9]  = d_in[9];
  assign d_out[2] = \d_in[8] ;
  assign \d_in[8]  = d_in[8];
  assign d_out[1] = \d_in[7] ;
  assign \d_in[7]  = d_in[7];
  assign d_out[0] = \d_in[6] ;
  assign \d_in[6]  = d_in[6];

endmodule


module unit_calc_sv_2 ( x_in, x_N_in, ue_in, y_in, x_out, x_N_out, ue_out, 
        y_out, clock );
  input [7:0] x_in;
  input [7:0] x_N_in;
  input [7:0] ue_in;
  input [7:0] y_in;
  output [7:0] x_out;
  output [7:0] x_N_out;
  output [7:0] ue_out;
  output [7:0] y_out;
  input clock;
  wire   \intadd_6/CI , \intadd_6/n7 , \intadd_6/n6 , \intadd_6/n5 ,
         \intadd_6/n4 , \intadd_6/n3 , \intadd_6/n2 , n27, n28, n29;
  wire   [31:8] shiftx;
  wire   [31:8] shiftxn;
  wire   [23:8] shiftue;
  wire   [15:0] shifty;
  wire   [7:0] y_out8;
  wire   [15:0] xnin_ue;
  wire   [15:0] xnin_ue_scaled;
  wire   [15:0] coeff16;
  wire   [15:0] new_coeff_true;
  wire   [15:0] delayed_new_coeff_true;
  wire   [7:0] coeff8;
  wire   [15:0] y_out16;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16;

  mul8_sv_5 mul_xnin_ue ( .d1_in(x_N_in), .d2_in(ue_in), .d_out({xnin_ue[15:4], 
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3}) );
  u_scaling_sv_2 u1 ( .d_in({xnin_ue[15:4], 1'b0, 1'b0, 1'b0, 1'b0}), .d_out({
        SYNOPSYS_UNCONNECTED__4, xnin_ue_scaled[14], SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, xnin_ue_scaled[10:0]}), .clock(clock) );
  add16_sv_2 add1 ( .d1_in({1'b0, xnin_ue_scaled[14], 1'b0, 1'b0, 1'b0, 
        xnin_ue_scaled[10:0]}), .d2_in({1'b0, coeff16[14], 1'b0, coeff16[12:0]}), .d_out(new_coeff_true) );
  shift_1d_16_sv_2 delay_2 ( .xin(new_coeff_true), .xout(
        delayed_new_coeff_true), .clock(clock) );
  saturation_sv_2 sat_1 ( .d_in(delayed_new_coeff_true), .d_out({
        SYNOPSYS_UNCONNECTED__8, coeff16[14:0]}) );
  truncation_sv_5 trunc_1 ( .d_in({1'b0, 1'b0, coeff16[13:6], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .d_out(coeff8) );
  mul8_sv_4 mul_coeff_x_in ( .d1_in(coeff8), .d2_in(shiftx[31:24]), .d_out({
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, y_out16[13:6], 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, 
        SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16}) );
  truncation_sv_4 trunc_2 ( .d_in({1'b0, 1'b0, y_out16[13:6], 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .d_out(y_out8) );
  DFFPOSX1 \shiftx_reg[31]  ( .D(x_in[7]), .CLK(clock), .Q(shiftx[31]) );
  DFFPOSX1 \shiftx_reg[30]  ( .D(x_in[6]), .CLK(clock), .Q(shiftx[30]) );
  DFFPOSX1 \shiftx_reg[29]  ( .D(x_in[5]), .CLK(clock), .Q(shiftx[29]) );
  DFFPOSX1 \shiftx_reg[28]  ( .D(x_in[4]), .CLK(clock), .Q(shiftx[28]) );
  DFFPOSX1 \shiftx_reg[27]  ( .D(x_in[3]), .CLK(clock), .Q(shiftx[27]) );
  DFFPOSX1 \shiftx_reg[26]  ( .D(x_in[2]), .CLK(clock), .Q(shiftx[26]) );
  DFFPOSX1 \shiftx_reg[25]  ( .D(x_in[1]), .CLK(clock), .Q(shiftx[25]) );
  DFFPOSX1 \shiftx_reg[24]  ( .D(x_in[0]), .CLK(clock), .Q(shiftx[24]) );
  DFFPOSX1 \shiftx_reg[23]  ( .D(shiftx[31]), .CLK(clock), .Q(shiftx[23]) );
  DFFPOSX1 \shiftx_reg[22]  ( .D(shiftx[30]), .CLK(clock), .Q(shiftx[22]) );
  DFFPOSX1 \shiftx_reg[21]  ( .D(shiftx[29]), .CLK(clock), .Q(shiftx[21]) );
  DFFPOSX1 \shiftx_reg[20]  ( .D(shiftx[28]), .CLK(clock), .Q(shiftx[20]) );
  DFFPOSX1 \shiftx_reg[19]  ( .D(shiftx[27]), .CLK(clock), .Q(shiftx[19]) );
  DFFPOSX1 \shiftx_reg[18]  ( .D(shiftx[26]), .CLK(clock), .Q(shiftx[18]) );
  DFFPOSX1 \shiftx_reg[17]  ( .D(shiftx[25]), .CLK(clock), .Q(shiftx[17]) );
  DFFPOSX1 \shiftx_reg[16]  ( .D(shiftx[24]), .CLK(clock), .Q(shiftx[16]) );
  DFFPOSX1 \shiftx_reg[15]  ( .D(shiftx[23]), .CLK(clock), .Q(shiftx[15]) );
  DFFPOSX1 \shiftx_reg[14]  ( .D(shiftx[22]), .CLK(clock), .Q(shiftx[14]) );
  DFFPOSX1 \shiftx_reg[13]  ( .D(shiftx[21]), .CLK(clock), .Q(shiftx[13]) );
  DFFPOSX1 \shiftx_reg[12]  ( .D(shiftx[20]), .CLK(clock), .Q(shiftx[12]) );
  DFFPOSX1 \shiftx_reg[11]  ( .D(shiftx[19]), .CLK(clock), .Q(shiftx[11]) );
  DFFPOSX1 \shiftx_reg[10]  ( .D(shiftx[18]), .CLK(clock), .Q(shiftx[10]) );
  DFFPOSX1 \shiftx_reg[9]  ( .D(shiftx[17]), .CLK(clock), .Q(shiftx[9]) );
  DFFPOSX1 \shiftx_reg[8]  ( .D(shiftx[16]), .CLK(clock), .Q(shiftx[8]) );
  DFFPOSX1 \shiftx_reg[7]  ( .D(shiftx[15]), .CLK(clock), .Q(x_out[7]) );
  DFFPOSX1 \shiftx_reg[6]  ( .D(shiftx[14]), .CLK(clock), .Q(x_out[6]) );
  DFFPOSX1 \shiftx_reg[5]  ( .D(shiftx[13]), .CLK(clock), .Q(x_out[5]) );
  DFFPOSX1 \shiftx_reg[4]  ( .D(shiftx[12]), .CLK(clock), .Q(x_out[4]) );
  DFFPOSX1 \shiftx_reg[3]  ( .D(shiftx[11]), .CLK(clock), .Q(x_out[3]) );
  DFFPOSX1 \shiftx_reg[2]  ( .D(shiftx[10]), .CLK(clock), .Q(x_out[2]) );
  DFFPOSX1 \shiftx_reg[1]  ( .D(shiftx[9]), .CLK(clock), .Q(x_out[1]) );
  DFFPOSX1 \shiftx_reg[0]  ( .D(shiftx[8]), .CLK(clock), .Q(x_out[0]) );
  DFFPOSX1 \shiftxn_reg[31]  ( .D(x_N_in[7]), .CLK(clock), .Q(shiftxn[31]) );
  DFFPOSX1 \shiftxn_reg[30]  ( .D(x_N_in[6]), .CLK(clock), .Q(shiftxn[30]) );
  DFFPOSX1 \shiftxn_reg[29]  ( .D(x_N_in[5]), .CLK(clock), .Q(shiftxn[29]) );
  DFFPOSX1 \shiftxn_reg[28]  ( .D(x_N_in[4]), .CLK(clock), .Q(shiftxn[28]) );
  DFFPOSX1 \shiftxn_reg[27]  ( .D(x_N_in[3]), .CLK(clock), .Q(shiftxn[27]) );
  DFFPOSX1 \shiftxn_reg[26]  ( .D(x_N_in[2]), .CLK(clock), .Q(shiftxn[26]) );
  DFFPOSX1 \shiftxn_reg[25]  ( .D(x_N_in[1]), .CLK(clock), .Q(shiftxn[25]) );
  DFFPOSX1 \shiftxn_reg[24]  ( .D(x_N_in[0]), .CLK(clock), .Q(shiftxn[24]) );
  DFFPOSX1 \shiftxn_reg[23]  ( .D(shiftxn[31]), .CLK(clock), .Q(shiftxn[23])
         );
  DFFPOSX1 \shiftxn_reg[22]  ( .D(shiftxn[30]), .CLK(clock), .Q(shiftxn[22])
         );
  DFFPOSX1 \shiftxn_reg[21]  ( .D(shiftxn[29]), .CLK(clock), .Q(shiftxn[21])
         );
  DFFPOSX1 \shiftxn_reg[20]  ( .D(shiftxn[28]), .CLK(clock), .Q(shiftxn[20])
         );
  DFFPOSX1 \shiftxn_reg[19]  ( .D(shiftxn[27]), .CLK(clock), .Q(shiftxn[19])
         );
  DFFPOSX1 \shiftxn_reg[18]  ( .D(shiftxn[26]), .CLK(clock), .Q(shiftxn[18])
         );
  DFFPOSX1 \shiftxn_reg[17]  ( .D(shiftxn[25]), .CLK(clock), .Q(shiftxn[17])
         );
  DFFPOSX1 \shiftxn_reg[16]  ( .D(shiftxn[24]), .CLK(clock), .Q(shiftxn[16])
         );
  DFFPOSX1 \shiftxn_reg[15]  ( .D(shiftxn[23]), .CLK(clock), .Q(shiftxn[15])
         );
  DFFPOSX1 \shiftxn_reg[14]  ( .D(shiftxn[22]), .CLK(clock), .Q(shiftxn[14])
         );
  DFFPOSX1 \shiftxn_reg[13]  ( .D(shiftxn[21]), .CLK(clock), .Q(shiftxn[13])
         );
  DFFPOSX1 \shiftxn_reg[12]  ( .D(shiftxn[20]), .CLK(clock), .Q(shiftxn[12])
         );
  DFFPOSX1 \shiftxn_reg[11]  ( .D(shiftxn[19]), .CLK(clock), .Q(shiftxn[11])
         );
  DFFPOSX1 \shiftxn_reg[10]  ( .D(shiftxn[18]), .CLK(clock), .Q(shiftxn[10])
         );
  DFFPOSX1 \shiftxn_reg[9]  ( .D(shiftxn[17]), .CLK(clock), .Q(shiftxn[9]) );
  DFFPOSX1 \shiftxn_reg[8]  ( .D(shiftxn[16]), .CLK(clock), .Q(shiftxn[8]) );
  DFFPOSX1 \shiftxn_reg[7]  ( .D(shiftxn[15]), .CLK(clock), .Q(x_N_out[7]) );
  DFFPOSX1 \shiftxn_reg[6]  ( .D(shiftxn[14]), .CLK(clock), .Q(x_N_out[6]) );
  DFFPOSX1 \shiftxn_reg[5]  ( .D(shiftxn[13]), .CLK(clock), .Q(x_N_out[5]) );
  DFFPOSX1 \shiftxn_reg[4]  ( .D(shiftxn[12]), .CLK(clock), .Q(x_N_out[4]) );
  DFFPOSX1 \shiftxn_reg[3]  ( .D(shiftxn[11]), .CLK(clock), .Q(x_N_out[3]) );
  DFFPOSX1 \shiftxn_reg[2]  ( .D(shiftxn[10]), .CLK(clock), .Q(x_N_out[2]) );
  DFFPOSX1 \shiftxn_reg[1]  ( .D(shiftxn[9]), .CLK(clock), .Q(x_N_out[1]) );
  DFFPOSX1 \shiftxn_reg[0]  ( .D(shiftxn[8]), .CLK(clock), .Q(x_N_out[0]) );
  DFFPOSX1 \shiftue_reg[23]  ( .D(ue_in[7]), .CLK(clock), .Q(shiftue[23]) );
  DFFPOSX1 \shiftue_reg[22]  ( .D(ue_in[6]), .CLK(clock), .Q(shiftue[22]) );
  DFFPOSX1 \shiftue_reg[21]  ( .D(ue_in[5]), .CLK(clock), .Q(shiftue[21]) );
  DFFPOSX1 \shiftue_reg[20]  ( .D(ue_in[4]), .CLK(clock), .Q(shiftue[20]) );
  DFFPOSX1 \shiftue_reg[19]  ( .D(ue_in[3]), .CLK(clock), .Q(shiftue[19]) );
  DFFPOSX1 \shiftue_reg[18]  ( .D(ue_in[2]), .CLK(clock), .Q(shiftue[18]) );
  DFFPOSX1 \shiftue_reg[17]  ( .D(ue_in[1]), .CLK(clock), .Q(shiftue[17]) );
  DFFPOSX1 \shiftue_reg[16]  ( .D(ue_in[0]), .CLK(clock), .Q(shiftue[16]) );
  DFFPOSX1 \shiftue_reg[15]  ( .D(shiftue[23]), .CLK(clock), .Q(shiftue[15])
         );
  DFFPOSX1 \shiftue_reg[14]  ( .D(shiftue[22]), .CLK(clock), .Q(shiftue[14])
         );
  DFFPOSX1 \shiftue_reg[13]  ( .D(shiftue[21]), .CLK(clock), .Q(shiftue[13])
         );
  DFFPOSX1 \shiftue_reg[12]  ( .D(shiftue[20]), .CLK(clock), .Q(shiftue[12])
         );
  DFFPOSX1 \shiftue_reg[11]  ( .D(shiftue[19]), .CLK(clock), .Q(shiftue[11])
         );
  DFFPOSX1 \shiftue_reg[10]  ( .D(shiftue[18]), .CLK(clock), .Q(shiftue[10])
         );
  DFFPOSX1 \shiftue_reg[9]  ( .D(shiftue[17]), .CLK(clock), .Q(shiftue[9]) );
  DFFPOSX1 \shiftue_reg[8]  ( .D(shiftue[16]), .CLK(clock), .Q(shiftue[8]) );
  DFFPOSX1 \shiftue_reg[7]  ( .D(shiftue[15]), .CLK(clock), .Q(ue_out[7]) );
  DFFPOSX1 \shiftue_reg[6]  ( .D(shiftue[14]), .CLK(clock), .Q(ue_out[6]) );
  DFFPOSX1 \shiftue_reg[5]  ( .D(shiftue[13]), .CLK(clock), .Q(ue_out[5]) );
  DFFPOSX1 \shiftue_reg[4]  ( .D(shiftue[12]), .CLK(clock), .Q(ue_out[4]) );
  DFFPOSX1 \shiftue_reg[3]  ( .D(shiftue[11]), .CLK(clock), .Q(ue_out[3]) );
  DFFPOSX1 \shiftue_reg[2]  ( .D(shiftue[10]), .CLK(clock), .Q(ue_out[2]) );
  DFFPOSX1 \shiftue_reg[1]  ( .D(shiftue[9]), .CLK(clock), .Q(ue_out[1]) );
  DFFPOSX1 \shiftue_reg[0]  ( .D(shiftue[8]), .CLK(clock), .Q(ue_out[0]) );
  DFFPOSX1 \shifty_reg[15]  ( .D(y_in[7]), .CLK(clock), .Q(shifty[15]) );
  DFFPOSX1 \shifty_reg[14]  ( .D(y_in[6]), .CLK(clock), .Q(shifty[14]) );
  DFFPOSX1 \shifty_reg[13]  ( .D(y_in[5]), .CLK(clock), .Q(shifty[13]) );
  DFFPOSX1 \shifty_reg[12]  ( .D(y_in[4]), .CLK(clock), .Q(shifty[12]) );
  DFFPOSX1 \shifty_reg[11]  ( .D(y_in[3]), .CLK(clock), .Q(shifty[11]) );
  DFFPOSX1 \shifty_reg[10]  ( .D(y_in[2]), .CLK(clock), .Q(shifty[10]) );
  DFFPOSX1 \shifty_reg[9]  ( .D(y_in[1]), .CLK(clock), .Q(shifty[9]) );
  DFFPOSX1 \shifty_reg[8]  ( .D(y_in[0]), .CLK(clock), .Q(shifty[8]) );
  DFFPOSX1 \shifty_reg[7]  ( .D(shifty[15]), .CLK(clock), .Q(shifty[7]) );
  DFFPOSX1 \shifty_reg[6]  ( .D(shifty[14]), .CLK(clock), .Q(shifty[6]) );
  DFFPOSX1 \shifty_reg[5]  ( .D(shifty[13]), .CLK(clock), .Q(shifty[5]) );
  DFFPOSX1 \shifty_reg[4]  ( .D(shifty[12]), .CLK(clock), .Q(shifty[4]) );
  DFFPOSX1 \shifty_reg[3]  ( .D(shifty[11]), .CLK(clock), .Q(shifty[3]) );
  DFFPOSX1 \shifty_reg[2]  ( .D(shifty[10]), .CLK(clock), .Q(shifty[2]) );
  DFFPOSX1 \shifty_reg[1]  ( .D(shifty[9]), .CLK(clock), .Q(shifty[1]) );
  DFFPOSX1 \shifty_reg[0]  ( .D(shifty[8]), .CLK(clock), .Q(shifty[0]) );
  FAX1 \intadd_6/U8  ( .A(shifty[1]), .B(y_out8[1]), .C(\intadd_6/CI ), .YC(
        \intadd_6/n7 ), .YS(y_out[1]) );
  FAX1 \intadd_6/U7  ( .A(shifty[2]), .B(y_out8[2]), .C(\intadd_6/n7 ), .YC(
        \intadd_6/n6 ), .YS(y_out[2]) );
  FAX1 \intadd_6/U6  ( .A(shifty[3]), .B(y_out8[3]), .C(\intadd_6/n6 ), .YC(
        \intadd_6/n5 ), .YS(y_out[3]) );
  FAX1 \intadd_6/U5  ( .A(shifty[4]), .B(y_out8[4]), .C(\intadd_6/n5 ), .YC(
        \intadd_6/n4 ), .YS(y_out[4]) );
  FAX1 \intadd_6/U4  ( .A(shifty[5]), .B(y_out8[5]), .C(\intadd_6/n4 ), .YC(
        \intadd_6/n3 ), .YS(y_out[5]) );
  FAX1 \intadd_6/U3  ( .A(shifty[6]), .B(y_out8[6]), .C(\intadd_6/n3 ), .YC(
        \intadd_6/n2 ), .YS(y_out[6]) );
  AND2X1 U9 ( .A(shifty[0]), .B(y_out8[0]), .Y(\intadd_6/CI ) );
  XOR2X1 U10 ( .A(shifty[7]), .B(y_out8[7]), .Y(n27) );
  XOR2X1 U11 ( .A(\intadd_6/n2 ), .B(n27), .Y(y_out[7]) );
  INVX1 U12 ( .A(\intadd_6/CI ), .Y(n28) );
  OAI21X1 U13 ( .A(shifty[0]), .B(y_out8[0]), .C(n28), .Y(n29) );
  INVX1 U14 ( .A(n29), .Y(y_out[0]) );
endmodule


module core_filt_sv ( x_in, x_N_in, ue_in, clock, \y_out[7] , \y_out[6] , 
        \y_out[5] , \y_out[4] , \y_out[3] , \y_out[2] , \y_out[1] , 
        \y_out[0]_BAR  );
  input [7:0] x_in;
  input [7:0] x_N_in;
  input [7:0] ue_in;
  input clock;
  output \y_out[7] , \y_out[6] , \y_out[5] , \y_out[4] , \y_out[3] ,
         \y_out[2] , \y_out[1] , \y_out[0]_BAR ;

  wire   [7:0] y_out;
  wire   [7:0] x_out_t1;
  wire   [7:0] x_N_out_t1;
  wire   [7:0] ue_out_t1;
  wire   [7:0] y_out_t1;
  wire   [7:0] x_out_t2;
  wire   [7:0] x_N_out_t2;
  wire   [7:0] ue_out_t2;
  wire   [7:0] y_out_t2;
  wire   [7:0] x_out_t3;
  wire   [7:0] x_N_out_t3;
  wire   [7:0] ue_out_t3;
  wire   [7:0] y_out_t3;
  wire   [7:0] x_out_t4;
  wire   [7:0] x_N_out_t4;
  wire   [7:0] ue_out_t4;
  wire   [7:0] y_out_t4;
  assign \y_out[7]  = y_out[7];
  assign \y_out[6]  = y_out[6];
  assign \y_out[5]  = y_out[5];
  assign \y_out[4]  = y_out[4];
  assign \y_out[3]  = y_out[3];
  assign \y_out[2]  = y_out[2];
  assign \y_out[1]  = y_out[1];
  assign \y_out[0]_BAR  = y_out[0];

  unit_calc_sv_4 tap1 ( .x_in(x_in), .x_N_in(x_N_in), .ue_in(ue_in), .y_in({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .x_out(x_out_t1), 
        .x_N_out(x_N_out_t1), .ue_out(ue_out_t1), .y_out(y_out_t1), .clock(
        clock) );
  unit_calc_sv_3 tap2 ( .x_in(x_out_t1), .x_N_in(x_N_out_t1), .ue_in(ue_out_t1), .y_in(y_out_t1), .x_out(x_out_t2), .x_N_out(x_N_out_t2), .ue_out(ue_out_t2), 
        .y_out(y_out_t2), .clock(clock) );
  unit_calc_sv_2 tap3 ( .x_in(x_out_t2), .x_N_in(x_N_out_t2), .ue_in(ue_out_t2), .y_in(y_out_t2), .x_out(x_out_t3), .x_N_out(x_N_out_t3), .ue_out(ue_out_t3), 
        .y_out(y_out_t3), .clock(clock) );
  unit_calc_sv_1 tap4 ( .x_in(x_out_t3), .x_N_in(x_N_out_t3), .ue_in(ue_out_t3), .y_in(y_out_t3), .x_out(x_out_t4), .x_N_out(x_N_out_t4), .ue_out(ue_out_t4), 
        .y_out(y_out_t4), .clock(clock) );
  unit_calc_sv_0 tap5 ( .x_in(x_out_t4), .x_N_in(x_N_out_t4), .ue_in(ue_out_t4), .y_in(y_out_t4), .clock(clock), .\y_out[7] (y_out[7]), .\y_out[6] (y_out[6]), 
        .\y_out[5] (y_out[5]), .\y_out[4] (y_out[4]), .\y_out[3] (y_out[3]), 
        .\y_out[2] (y_out[2]), .\y_out[1] (y_out[1]), .\y_out[0]_BAR (y_out[0]) );
endmodule


module tf_lms_sv ( xin, dxin, clock, err, yout, adapt_en );
  input [7:0] xin;
  input [7:0] dxin;
  output [7:0] err;
  output [7:0] yout;
  input clock, adapt_en;
  wire   n82, n83, n84, n85, n86, n87, n88, n89, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n32, n33, n34, n36, n37, n38, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81;
  wire   [7:0] e_t;
  wire   [7:0] x_N;
  wire   [7:0] x_1;

  shift_20d_sv shift_1 ( .xin(dxin), .xout(e_t), .clock(clock) );
  shift_21d_sv shift_2 ( .xin(xin), .x_N_out(x_N), .x_1_out(x_1), .clock(clock) );
  core_filt_sv cflt ( .x_in(x_1), .x_N_in(x_N), .ue_in(err), .clock(clock), 
        .\y_out[7] (yout[7]), .\y_out[6] (yout[6]), .\y_out[5] (yout[5]), 
        .\y_out[4] (yout[4]), .\y_out[3] (yout[3]), .\y_out[2] (yout[2]), 
        .\y_out[1] (yout[1]), .\y_out[0]_BAR (n89) );
  INVX1 U11 ( .A(n89), .Y(yout[0]) );
  AND2X1 U12 ( .A(n13), .B(n47), .Y(n45) );
  AND2X1 U13 ( .A(n15), .B(n71), .Y(n68) );
  AND2X1 U14 ( .A(n14), .B(n59), .Y(n56) );
  AND2X1 U15 ( .A(n7), .B(n5), .Y(n84) );
  INVX1 U16 ( .A(n84), .Y(err[5]) );
  AND2X1 U17 ( .A(n8), .B(n6), .Y(n86) );
  INVX1 U18 ( .A(n86), .Y(err[3]) );
  INVX1 U19 ( .A(n33), .Y(n5) );
  AND2X1 U20 ( .A(n34), .B(n28), .Y(n33) );
  INVX1 U21 ( .A(n37), .Y(n6) );
  AND2X1 U22 ( .A(n38), .B(n26), .Y(n37) );
  INVX1 U23 ( .A(n32), .Y(n7) );
  AND2X1 U24 ( .A(n34), .B(n68), .Y(n32) );
  INVX1 U25 ( .A(n36), .Y(n8) );
  AND2X1 U26 ( .A(n38), .B(n56), .Y(n36) );
  AND2X1 U27 ( .A(e_t[2]), .B(n50), .Y(n52) );
  INVX1 U28 ( .A(n52), .Y(n9) );
  INVX1 U29 ( .A(n64), .Y(n10) );
  AND2X1 U30 ( .A(e_t[4]), .B(n62), .Y(n64) );
  INVX1 U31 ( .A(n76), .Y(n11) );
  AND2X1 U32 ( .A(e_t[6]), .B(n74), .Y(n76) );
  AND2X1 U33 ( .A(e_t[0]), .B(n89), .Y(n42) );
  INVX1 U34 ( .A(n42), .Y(n12) );
  INVX1 U35 ( .A(n46), .Y(n13) );
  AND2X1 U36 ( .A(yout[1]), .B(n43), .Y(n46) );
  INVX1 U37 ( .A(n57), .Y(n14) );
  AND2X1 U38 ( .A(yout[3]), .B(n54), .Y(n57) );
  INVX1 U39 ( .A(n69), .Y(n15) );
  AND2X1 U40 ( .A(yout[5]), .B(n66), .Y(n69) );
  INVX1 U41 ( .A(n59), .Y(n16) );
  OR2X1 U42 ( .A(n54), .B(yout[3]), .Y(n59) );
  OR2X1 U43 ( .A(n66), .B(yout[5]), .Y(n71) );
  INVX1 U44 ( .A(n71), .Y(n17) );
  OR2X1 U45 ( .A(n43), .B(yout[1]), .Y(n47) );
  INVX1 U46 ( .A(n47), .Y(n18) );
  INVX1 U47 ( .A(n56), .Y(n19) );
  INVX1 U48 ( .A(n68), .Y(n20) );
  BUFX2 U49 ( .A(n49), .Y(n21) );
  BUFX2 U50 ( .A(n61), .Y(n22) );
  BUFX2 U51 ( .A(n73), .Y(n23) );
  BUFX2 U52 ( .A(n81), .Y(n24) );
  INVX1 U53 ( .A(n45), .Y(n25) );
  INVX1 U54 ( .A(n27), .Y(n26) );
  BUFX2 U55 ( .A(n58), .Y(n27) );
  INVX1 U56 ( .A(n29), .Y(n28) );
  BUFX2 U57 ( .A(n70), .Y(n29) );
  BUFX2 U58 ( .A(n88), .Y(err[1]) );
  BUFX2 U59 ( .A(n82), .Y(err[7]) );
  INVX1 U60 ( .A(n67), .Y(n34) );
  BUFX2 U61 ( .A(n85), .Y(err[4]) );
  INVX1 U62 ( .A(n55), .Y(n38) );
  BUFX2 U63 ( .A(n87), .Y(err[2]) );
  BUFX2 U64 ( .A(n83), .Y(err[6]) );
  OAI21X1 U65 ( .A(e_t[0]), .B(n89), .C(n12), .Y(n41) );
  AND2X1 U66 ( .A(adapt_en), .B(n41), .Y(err[0]) );
  INVX1 U67 ( .A(e_t[1]), .Y(n43) );
  OAI21X1 U68 ( .A(n42), .B(n25), .C(adapt_en), .Y(n44) );
  AOI21X1 U69 ( .A(n42), .B(n25), .C(n44), .Y(n88) );
  INVX1 U70 ( .A(yout[2]), .Y(n50) );
  INVX1 U71 ( .A(e_t[2]), .Y(n53) );
  AOI22X1 U72 ( .A(e_t[2]), .B(n50), .C(yout[2]), .D(n53), .Y(n49) );
  OAI21X1 U73 ( .A(n42), .B(n18), .C(n13), .Y(n51) );
  OAI21X1 U74 ( .A(n21), .B(n51), .C(adapt_en), .Y(n48) );
  AOI21X1 U75 ( .A(n21), .B(n51), .C(n48), .Y(n87) );
  AOI22X1 U76 ( .A(yout[2]), .B(n53), .C(n9), .D(n51), .Y(n58) );
  INVX1 U77 ( .A(e_t[3]), .Y(n54) );
  OAI21X1 U78 ( .A(n27), .B(n19), .C(adapt_en), .Y(n55) );
  INVX1 U79 ( .A(yout[4]), .Y(n62) );
  INVX1 U80 ( .A(e_t[4]), .Y(n65) );
  AOI22X1 U81 ( .A(e_t[4]), .B(n62), .C(yout[4]), .D(n65), .Y(n61) );
  OAI21X1 U82 ( .A(n16), .B(n27), .C(n14), .Y(n63) );
  OAI21X1 U83 ( .A(n22), .B(n63), .C(adapt_en), .Y(n60) );
  AOI21X1 U84 ( .A(n22), .B(n63), .C(n60), .Y(n85) );
  AOI22X1 U85 ( .A(yout[4]), .B(n65), .C(n10), .D(n63), .Y(n70) );
  INVX1 U86 ( .A(e_t[5]), .Y(n66) );
  OAI21X1 U87 ( .A(n29), .B(n20), .C(adapt_en), .Y(n67) );
  INVX1 U88 ( .A(yout[6]), .Y(n74) );
  INVX1 U89 ( .A(e_t[6]), .Y(n77) );
  AOI22X1 U90 ( .A(e_t[6]), .B(n74), .C(yout[6]), .D(n77), .Y(n73) );
  OAI21X1 U91 ( .A(n17), .B(n29), .C(n15), .Y(n75) );
  OAI21X1 U92 ( .A(n23), .B(n75), .C(adapt_en), .Y(n72) );
  AOI21X1 U93 ( .A(n23), .B(n75), .C(n72), .Y(n83) );
  AOI22X1 U94 ( .A(yout[6]), .B(n77), .C(n11), .D(n75), .Y(n81) );
  INVX1 U95 ( .A(yout[7]), .Y(n78) );
  MUX2X1 U96 ( .B(n78), .A(yout[7]), .S(e_t[7]), .Y(n80) );
  OAI21X1 U97 ( .A(n24), .B(n80), .C(adapt_en), .Y(n79) );
  AOI21X1 U98 ( .A(n24), .B(n80), .C(n79), .Y(n82) );
endmodule

