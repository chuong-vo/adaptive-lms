/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP1
// Date      : Wed Mar 25 23:19:02 2026
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


module mul8_sv_9_DW01_add_0 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43;
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AND2X1 U2 ( .A(n26), .B(n3), .Y(n24) );
  AND2X1 U3 ( .A(n41), .B(n2), .Y(n42) );
  AND2X1 U4 ( .A(n33), .B(n4), .Y(n34) );
  AND2X1 U5 ( .A(n35), .B(n10), .Y(n38) );
  INVX1 U6 ( .A(n38), .Y(n1) );
  AND2X1 U7 ( .A(B[10]), .B(A[10]), .Y(n40) );
  INVX1 U8 ( .A(n40), .Y(n2) );
  AND2X1 U9 ( .A(B[8]), .B(A[8]), .Y(n27) );
  INVX1 U10 ( .A(n27), .Y(n3) );
  AND2X1 U11 ( .A(B[12]), .B(A[12]), .Y(n32) );
  INVX1 U12 ( .A(n32), .Y(n4) );
  AND2X1 U13 ( .A(n22), .B(n13), .Y(n20) );
  INVX1 U14 ( .A(n20), .Y(n5) );
  INVX1 U15 ( .A(n42), .Y(n6) );
  BUFX2 U16 ( .A(n31), .Y(n7) );
  INVX1 U17 ( .A(n24), .Y(n8) );
  AND2X1 U18 ( .A(B[6]), .B(A[6]), .Y(n29) );
  INVX1 U19 ( .A(n29), .Y(n9) );
  AND2X1 U20 ( .A(B[11]), .B(A[11]), .Y(n37) );
  INVX1 U21 ( .A(n37), .Y(n10) );
  BUFX2 U22 ( .A(n39), .Y(n11) );
  INVX1 U23 ( .A(n34), .Y(n12) );
  AND2X1 U24 ( .A(B[9]), .B(A[9]), .Y(n23) );
  INVX1 U25 ( .A(n23), .Y(n13) );
  BUFX2 U26 ( .A(n25), .Y(n14) );
  INVX1 U27 ( .A(n41), .Y(n16) );
  INVX1 U28 ( .A(n26), .Y(n17) );
  INVX1 U29 ( .A(n43), .Y(n18) );
  INVX1 U30 ( .A(n33), .Y(n15) );
  INVX1 U31 ( .A(n28), .Y(SUM[6]) );
  XNOR2X1 U32 ( .A(n5), .B(n21), .Y(SUM[9]) );
  XOR2X1 U33 ( .A(n8), .B(n14), .Y(SUM[8]) );
  FAX1 U34 ( .A(B[7]), .B(A[7]), .C(n29), .YS(SUM[7]) );
  OAI21X1 U35 ( .A(B[6]), .B(A[6]), .C(n9), .Y(n28) );
  FAX1 U36 ( .A(B[13]), .B(A[13]), .C(n30), .YS(SUM[13]) );
  OAI21X1 U37 ( .A(n15), .B(n7), .C(n4), .Y(n30) );
  XOR2X1 U38 ( .A(n12), .B(n7), .Y(SUM[12]) );
  AOI21X1 U39 ( .A(n35), .B(n36), .C(n37), .Y(n31) );
  OR2X1 U40 ( .A(B[12]), .B(A[12]), .Y(n33) );
  XNOR2X1 U41 ( .A(n1), .B(n36), .Y(SUM[11]) );
  OAI21X1 U42 ( .A(n16), .B(n11), .C(n2), .Y(n36) );
  OR2X1 U43 ( .A(B[11]), .B(A[11]), .Y(n35) );
  XOR2X1 U44 ( .A(n6), .B(n11), .Y(SUM[10]) );
  AOI21X1 U45 ( .A(n21), .B(n22), .C(n23), .Y(n39) );
  OR2X1 U46 ( .A(B[9]), .B(A[9]), .Y(n22) );
  OAI21X1 U47 ( .A(n14), .B(n17), .C(n3), .Y(n21) );
  OR2X1 U48 ( .A(B[8]), .B(A[8]), .Y(n26) );
  AOI21X1 U49 ( .A(n29), .B(A[7]), .C(n18), .Y(n25) );
  OAI21X1 U50 ( .A(n29), .B(A[7]), .C(B[7]), .Y(n43) );
  OR2X1 U51 ( .A(B[10]), .B(A[10]), .Y(n41) );
endmodule


module mul8_sv_9_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] , \ab[0][3] ,
         \ab[0][2] , \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \CARRYB[1][0] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[7][0] ,
         \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] ,
         \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] , \SUMB[5][4] , \SUMB[5][3] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][6] ,
         \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] ,
         \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] ,
         \SUMB[1][1] , ZA, ZB, \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] ,
         \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] ,
         \A1[0] , \A2[6] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32;
  assign ZA = A[7];
  assign ZB = B[7];

  FAX1 S14_7_0 ( .A(ZA), .B(ZB), .C(\SUMB[7][0] ), .YC(\A2[6] ), .YS(\A1[5] )
         );
  FAX1 S4_0 ( .A(n10), .B(\CARRYB[6][0] ), .C(\SUMB[6][1] ), .YC(
        \CARRYB[7][0] ), .YS(\SUMB[7][0] ) );
  FAX1 S4_1 ( .A(n12), .B(\CARRYB[6][1] ), .C(\SUMB[6][2] ), .YC(
        \CARRYB[7][1] ), .YS(\SUMB[7][1] ) );
  FAX1 S4_2 ( .A(n8), .B(\CARRYB[6][2] ), .C(\SUMB[6][3] ), .YC(\CARRYB[7][2] ), .YS(\SUMB[7][2] ) );
  FAX1 S4_3 ( .A(n6), .B(\CARRYB[6][3] ), .C(\SUMB[6][4] ), .YC(\CARRYB[7][3] ), .YS(\SUMB[7][3] ) );
  FAX1 S4_4 ( .A(n4), .B(\CARRYB[6][4] ), .C(\SUMB[6][5] ), .YC(\CARRYB[7][4] ), .YS(\SUMB[7][4] ) );
  FAX1 S4_5 ( .A(n15), .B(\CARRYB[6][5] ), .C(\SUMB[6][6] ), .YC(
        \CARRYB[7][5] ), .YS(\SUMB[7][5] ) );
  FAX1 S5_6 ( .A(n13), .B(\CARRYB[6][6] ), .C(n14), .YC(\CARRYB[7][6] ), .YS(
        \SUMB[7][6] ) );
  FAX1 S14_7 ( .A(n32), .B(n31), .C(\ab[7][7] ), .YC(\CARRYB[7][7] ), .YS(
        \SUMB[7][7] ) );
  FAX1 S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .C(\SUMB[5][1] ), .YC(
        \CARRYB[6][0] ), .YS(\A1[4] ) );
  FAX1 S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .C(\SUMB[5][2] ), .YC(
        \CARRYB[6][1] ), .YS(\SUMB[6][1] ) );
  FAX1 S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .C(\SUMB[5][3] ), .YC(
        \CARRYB[6][2] ), .YS(\SUMB[6][2] ) );
  FAX1 S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .C(\SUMB[5][4] ), .YC(
        \CARRYB[6][3] ), .YS(\SUMB[6][3] ) );
  FAX1 S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .C(\SUMB[5][5] ), .YC(
        \CARRYB[6][4] ), .YS(\SUMB[6][4] ) );
  FAX1 S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .C(\SUMB[5][6] ), .YC(
        \CARRYB[6][5] ), .YS(\SUMB[6][5] ) );
  FAX1 S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .C(n5), .YC(\CARRYB[6][6] ), .YS(\SUMB[6][6] ) );
  FAX1 S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .C(\SUMB[4][1] ), .YC(
        \CARRYB[5][0] ), .YS(\A1[3] ) );
  FAX1 S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .C(\SUMB[4][2] ), .YC(
        \CARRYB[5][1] ), .YS(\SUMB[5][1] ) );
  FAX1 S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .C(\SUMB[4][3] ), .YC(
        \CARRYB[5][2] ), .YS(\SUMB[5][2] ) );
  FAX1 S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .C(\SUMB[4][4] ), .YC(
        \CARRYB[5][3] ), .YS(\SUMB[5][3] ) );
  FAX1 S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .C(\SUMB[4][5] ), .YC(
        \CARRYB[5][4] ), .YS(\SUMB[5][4] ) );
  FAX1 S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .C(\SUMB[4][6] ), .YC(
        \CARRYB[5][5] ), .YS(\SUMB[5][5] ) );
  FAX1 S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .C(n7), .YC(\CARRYB[5][6] ), .YS(\SUMB[5][6] ) );
  FAX1 S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .C(\SUMB[3][1] ), .YC(
        \CARRYB[4][0] ), .YS(\A1[2] ) );
  FAX1 S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .C(\SUMB[3][2] ), .YC(
        \CARRYB[4][1] ), .YS(\SUMB[4][1] ) );
  FAX1 S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .C(\SUMB[3][3] ), .YC(
        \CARRYB[4][2] ), .YS(\SUMB[4][2] ) );
  FAX1 S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .C(\SUMB[3][4] ), .YC(
        \CARRYB[4][3] ), .YS(\SUMB[4][3] ) );
  FAX1 S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .C(\SUMB[3][5] ), .YC(
        \CARRYB[4][4] ), .YS(\SUMB[4][4] ) );
  FAX1 S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .C(\SUMB[3][6] ), .YC(
        \CARRYB[4][5] ), .YS(\SUMB[4][5] ) );
  FAX1 S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .C(n9), .YC(\CARRYB[4][6] ), .YS(\SUMB[4][6] ) );
  FAX1 S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .C(\SUMB[2][1] ), .YC(
        \CARRYB[3][0] ), .YS(\A1[1] ) );
  FAX1 S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .C(\SUMB[2][2] ), .YC(
        \CARRYB[3][1] ), .YS(\SUMB[3][1] ) );
  FAX1 S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .C(\SUMB[2][3] ), .YC(
        \CARRYB[3][2] ), .YS(\SUMB[3][2] ) );
  FAX1 S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .C(\SUMB[2][4] ), .YC(
        \CARRYB[3][3] ), .YS(\SUMB[3][3] ) );
  FAX1 S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(\SUMB[2][5] ), .YC(
        \CARRYB[3][4] ), .YS(\SUMB[3][4] ) );
  FAX1 S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .C(\SUMB[2][6] ), .YC(
        \CARRYB[3][5] ), .YS(\SUMB[3][5] ) );
  FAX1 S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .C(n11), .YC(
        \CARRYB[3][6] ), .YS(\SUMB[3][6] ) );
  FAX1 S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .C(\SUMB[1][1] ), .YC(
        \CARRYB[2][0] ), .YS(\A1[0] ) );
  FAX1 S2_2_1 ( .A(\ab[2][1] ), .B(n24), .C(\SUMB[1][2] ), .YC(\CARRYB[2][1] ), 
        .YS(\SUMB[2][1] ) );
  FAX1 S2_2_2 ( .A(\ab[2][2] ), .B(n25), .C(\SUMB[1][3] ), .YC(\CARRYB[2][2] ), 
        .YS(\SUMB[2][2] ) );
  FAX1 S2_2_3 ( .A(\ab[2][3] ), .B(n26), .C(\SUMB[1][4] ), .YC(\CARRYB[2][3] ), 
        .YS(\SUMB[2][3] ) );
  FAX1 S2_2_4 ( .A(\ab[2][4] ), .B(n27), .C(\SUMB[1][5] ), .YC(\CARRYB[2][4] ), 
        .YS(\SUMB[2][4] ) );
  FAX1 S2_2_5 ( .A(\ab[2][5] ), .B(n28), .C(\SUMB[1][6] ), .YC(\CARRYB[2][5] ), 
        .YS(\SUMB[2][5] ) );
  FAX1 S3_2_6 ( .A(\ab[2][6] ), .B(n29), .C(n3), .YC(\CARRYB[2][6] ), .YS(
        \SUMB[2][6] ) );
  mul8_sv_9_DW01_add_0 FS_1 ( .A({n30, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , 
        \A1[0] }), .B({n23, n22, n21, n20, n19, n18, n17, \A2[6] , 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  OR2X1 U2 ( .A(n31), .B(A[1]), .Y(\ab[1][7] ) );
  INVX1 U3 ( .A(\ab[1][7] ), .Y(n3) );
  OR2X1 U4 ( .A(n32), .B(B[4]), .Y(\ab[7][4] ) );
  INVX1 U5 ( .A(\ab[7][4] ), .Y(n4) );
  OR2X1 U6 ( .A(n31), .B(A[5]), .Y(\ab[5][7] ) );
  INVX1 U7 ( .A(\ab[5][7] ), .Y(n5) );
  OR2X1 U8 ( .A(n32), .B(B[3]), .Y(\ab[7][3] ) );
  INVX1 U9 ( .A(\ab[7][3] ), .Y(n6) );
  AND2X1 U10 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(n23) );
  OR2X1 U11 ( .A(n31), .B(A[4]), .Y(\ab[4][7] ) );
  INVX1 U12 ( .A(\ab[4][7] ), .Y(n7) );
  OR2X1 U13 ( .A(n32), .B(B[2]), .Y(\ab[7][2] ) );
  INVX1 U14 ( .A(\ab[7][2] ), .Y(n8) );
  OR2X1 U15 ( .A(n31), .B(A[3]), .Y(\ab[3][7] ) );
  INVX1 U16 ( .A(\ab[3][7] ), .Y(n9) );
  OR2X1 U17 ( .A(n32), .B(B[0]), .Y(\ab[7][0] ) );
  INVX1 U18 ( .A(\ab[7][0] ), .Y(n10) );
  OR2X1 U19 ( .A(n31), .B(A[2]), .Y(\ab[2][7] ) );
  INVX1 U20 ( .A(\ab[2][7] ), .Y(n11) );
  OR2X1 U21 ( .A(n32), .B(B[1]), .Y(\ab[7][1] ) );
  INVX1 U22 ( .A(\ab[7][1] ), .Y(n12) );
  AND2X1 U23 ( .A(n16), .B(\ab[1][6] ), .Y(n29) );
  AND2X1 U24 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n28) );
  OR2X1 U25 ( .A(n32), .B(B[6]), .Y(\ab[7][6] ) );
  INVX1 U26 ( .A(\ab[7][6] ), .Y(n13) );
  OR2X1 U27 ( .A(n31), .B(A[6]), .Y(\ab[6][7] ) );
  INVX1 U28 ( .A(\ab[6][7] ), .Y(n14) );
  AND2X1 U29 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n24) );
  AND2X1 U30 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n26) );
  AND2X1 U31 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n27) );
  AND2X1 U32 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n25) );
  OR2X1 U33 ( .A(n32), .B(B[5]), .Y(\ab[7][5] ) );
  INVX1 U34 ( .A(\ab[7][5] ), .Y(n15) );
  OR2X1 U35 ( .A(n31), .B(A[0]), .Y(\ab[0][7] ) );
  INVX1 U36 ( .A(\ab[0][7] ), .Y(n16) );
  AND2X1 U37 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(n17) );
  AND2X1 U38 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(n18) );
  AND2X1 U39 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(n19) );
  AND2X1 U40 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(n20) );
  AND2X1 U41 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(n21) );
  INVX1 U42 ( .A(ZB), .Y(n31) );
  INVX1 U43 ( .A(\CARRYB[7][7] ), .Y(n30) );
  AND2X1 U44 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(n22) );
  INVX1 U45 ( .A(ZA), .Y(n32) );
  XOR2X1 U46 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(\A1[6] ) );
  XOR2X1 U47 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(\A1[7] ) );
  XOR2X1 U48 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(\A1[8] ) );
  XOR2X1 U49 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(\A1[9] ) );
  XOR2X1 U50 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(\A1[10] ) );
  XOR2X1 U51 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(\A1[11] ) );
  XOR2X1 U52 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(\A1[12] ) );
  XOR2X1 U53 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  XOR2X1 U54 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1 U55 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1 U56 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1 U57 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1 U58 ( .A(\ab[1][6] ), .B(n16), .Y(\SUMB[1][6] ) );
  AND2X1 U59 ( .A(ZA), .B(ZB), .Y(\ab[7][7] ) );
  AND2X1 U60 ( .A(B[6]), .B(A[6]), .Y(\ab[6][6] ) );
  AND2X1 U61 ( .A(B[5]), .B(A[6]), .Y(\ab[6][5] ) );
  AND2X1 U62 ( .A(B[4]), .B(A[6]), .Y(\ab[6][4] ) );
  AND2X1 U63 ( .A(B[3]), .B(A[6]), .Y(\ab[6][3] ) );
  AND2X1 U64 ( .A(B[2]), .B(A[6]), .Y(\ab[6][2] ) );
  AND2X1 U65 ( .A(B[1]), .B(A[6]), .Y(\ab[6][1] ) );
  AND2X1 U66 ( .A(B[0]), .B(A[6]), .Y(\ab[6][0] ) );
  AND2X1 U67 ( .A(A[5]), .B(B[6]), .Y(\ab[5][6] ) );
  AND2X1 U68 ( .A(A[5]), .B(B[5]), .Y(\ab[5][5] ) );
  AND2X1 U69 ( .A(A[5]), .B(B[4]), .Y(\ab[5][4] ) );
  AND2X1 U70 ( .A(A[5]), .B(B[3]), .Y(\ab[5][3] ) );
  AND2X1 U71 ( .A(A[5]), .B(B[2]), .Y(\ab[5][2] ) );
  AND2X1 U72 ( .A(A[5]), .B(B[1]), .Y(\ab[5][1] ) );
  AND2X1 U73 ( .A(A[5]), .B(B[0]), .Y(\ab[5][0] ) );
  AND2X1 U74 ( .A(A[4]), .B(B[6]), .Y(\ab[4][6] ) );
  AND2X1 U75 ( .A(A[4]), .B(B[5]), .Y(\ab[4][5] ) );
  AND2X1 U76 ( .A(A[4]), .B(B[4]), .Y(\ab[4][4] ) );
  AND2X1 U77 ( .A(A[4]), .B(B[3]), .Y(\ab[4][3] ) );
  AND2X1 U78 ( .A(A[4]), .B(B[2]), .Y(\ab[4][2] ) );
  AND2X1 U79 ( .A(A[4]), .B(B[1]), .Y(\ab[4][1] ) );
  AND2X1 U80 ( .A(A[4]), .B(B[0]), .Y(\ab[4][0] ) );
  AND2X1 U81 ( .A(A[3]), .B(B[6]), .Y(\ab[3][6] ) );
  AND2X1 U82 ( .A(A[3]), .B(B[5]), .Y(\ab[3][5] ) );
  AND2X1 U83 ( .A(A[3]), .B(B[4]), .Y(\ab[3][4] ) );
  AND2X1 U84 ( .A(A[3]), .B(B[3]), .Y(\ab[3][3] ) );
  AND2X1 U85 ( .A(A[3]), .B(B[2]), .Y(\ab[3][2] ) );
  AND2X1 U86 ( .A(A[3]), .B(B[1]), .Y(\ab[3][1] ) );
  AND2X1 U87 ( .A(A[3]), .B(B[0]), .Y(\ab[3][0] ) );
  AND2X1 U88 ( .A(A[2]), .B(B[6]), .Y(\ab[2][6] ) );
  AND2X1 U89 ( .A(A[2]), .B(B[5]), .Y(\ab[2][5] ) );
  AND2X1 U90 ( .A(A[2]), .B(B[4]), .Y(\ab[2][4] ) );
  AND2X1 U91 ( .A(A[2]), .B(B[3]), .Y(\ab[2][3] ) );
  AND2X1 U92 ( .A(A[2]), .B(B[2]), .Y(\ab[2][2] ) );
  AND2X1 U93 ( .A(A[2]), .B(B[1]), .Y(\ab[2][1] ) );
  AND2X1 U94 ( .A(A[2]), .B(B[0]), .Y(\ab[2][0] ) );
  AND2X1 U95 ( .A(A[1]), .B(B[6]), .Y(\ab[1][6] ) );
  AND2X1 U96 ( .A(A[1]), .B(B[5]), .Y(\ab[1][5] ) );
  AND2X1 U97 ( .A(A[1]), .B(B[4]), .Y(\ab[1][4] ) );
  AND2X1 U98 ( .A(A[1]), .B(B[3]), .Y(\ab[1][3] ) );
  AND2X1 U99 ( .A(A[1]), .B(B[2]), .Y(\ab[1][2] ) );
  AND2X1 U100 ( .A(A[0]), .B(B[6]), .Y(\ab[0][6] ) );
  AND2X1 U101 ( .A(A[0]), .B(B[5]), .Y(\ab[0][5] ) );
  AND2X1 U102 ( .A(A[0]), .B(B[4]), .Y(\ab[0][4] ) );
  AND2X1 U103 ( .A(A[0]), .B(B[3]), .Y(\ab[0][3] ) );
  AND2X1 U104 ( .A(A[0]), .B(B[2]), .Y(\ab[0][2] ) );
  AND2X1 U105 ( .A(PRODUCT[0]), .B(\ab[1][1] ), .Y(\CARRYB[1][0] ) );
  AND2X1 U106 ( .A(A[1]), .B(B[1]), .Y(\ab[1][1] ) );
  AND2X1 U107 ( .A(A[0]), .B(B[0]), .Y(PRODUCT[0]) );
endmodule


module mul8_sv_9 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;


  mul8_sv_9_DW02_mult_0 mult_46 ( .A(d1_in), .B(d2_in), .TC(1'b1), .PRODUCT(
        d_out) );
endmodule


module u_scaling_sv_4 ( d_in, d_out, clock );
  input [15:0] d_in;
  output [15:0] d_out;
  input clock;


  DFFPOSX1 \d_out_reg_reg[15]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[15]) );
  DFFPOSX1 \d_out_reg_reg[14]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[14]) );
  DFFPOSX1 \d_out_reg_reg[13]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[13]) );
  DFFPOSX1 \d_out_reg_reg[12]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[12]) );
  DFFPOSX1 \d_out_reg_reg[11]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[11]) );
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


module add16_sv_4_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module add16_sv_4 ( d1_in, d2_in, d_out );
  input [15:0] d1_in;
  input [15:0] d2_in;
  output [15:0] d_out;


  add16_sv_4_DW01_add_0 add_9 ( .A(d1_in), .B(d2_in), .CI(1'b0), .SUM(d_out)
         );
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
  wire   \d_in[15] , n15, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13,
         n14;
  assign d_out[15] = \d_in[15] ;
  assign \d_in[15]  = d_in[15];

  AND2X1 U3 ( .A(n1), .B(n3), .Y(n6) );
  AND2X1 U4 ( .A(\d_in[15] ), .B(n4), .Y(n8) );
  AND2X1 U5 ( .A(n2), .B(n14), .Y(n10) );
  INVX1 U6 ( .A(n10), .Y(n1) );
  BUFX2 U7 ( .A(n13), .Y(n2) );
  INVX1 U8 ( .A(n8), .Y(n3) );
  BUFX2 U9 ( .A(n12), .Y(n4) );
  AND2X1 U10 ( .A(n6), .B(n11), .Y(n15) );
  INVX1 U11 ( .A(n15), .Y(d_out[12]) );
  AND2X1 U12 ( .A(d_in[9]), .B(n6), .Y(d_out[9]) );
  AND2X1 U13 ( .A(d_in[8]), .B(n6), .Y(d_out[8]) );
  AND2X1 U14 ( .A(d_in[7]), .B(n6), .Y(d_out[7]) );
  AND2X1 U15 ( .A(d_in[6]), .B(n6), .Y(d_out[6]) );
  AND2X1 U16 ( .A(d_in[5]), .B(n6), .Y(d_out[5]) );
  AND2X1 U17 ( .A(d_in[4]), .B(n6), .Y(d_out[4]) );
  AND2X1 U18 ( .A(d_in[3]), .B(n6), .Y(d_out[3]) );
  AND2X1 U19 ( .A(d_in[2]), .B(n6), .Y(d_out[2]) );
  AND2X1 U20 ( .A(d_in[1]), .B(n6), .Y(d_out[1]) );
  OAI21X1 U21 ( .A(n10), .B(n7), .C(n3), .Y(d_out[14]) );
  OAI21X1 U22 ( .A(n10), .B(n9), .C(n3), .Y(d_out[13]) );
  AND2X1 U23 ( .A(d_in[11]), .B(n6), .Y(d_out[11]) );
  AND2X1 U24 ( .A(d_in[10]), .B(n6), .Y(d_out[10]) );
  AND2X1 U25 ( .A(d_in[0]), .B(n6), .Y(d_out[0]) );
  NAND3X1 U26 ( .A(d_in[13]), .B(d_in[12]), .C(d_in[14]), .Y(n12) );
  INVX1 U27 ( .A(\d_in[15] ), .Y(n14) );
  NAND3X1 U28 ( .A(n9), .B(n7), .C(n11), .Y(n13) );
  INVX1 U29 ( .A(d_in[12]), .Y(n11) );
  INVX1 U30 ( .A(d_in[14]), .Y(n7) );
  INVX1 U31 ( .A(d_in[13]), .Y(n9) );
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


module mul8_sv_8_DW01_add_0 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43;
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AND2X1 U2 ( .A(n26), .B(n6), .Y(n24) );
  AND2X1 U3 ( .A(n41), .B(n2), .Y(n42) );
  AND2X1 U4 ( .A(n35), .B(n13), .Y(n38) );
  INVX1 U5 ( .A(n38), .Y(n1) );
  AND2X1 U6 ( .A(B[10]), .B(A[10]), .Y(n40) );
  INVX1 U7 ( .A(n40), .Y(n2) );
  AND2X1 U8 ( .A(n22), .B(n11), .Y(n20) );
  INVX1 U9 ( .A(n20), .Y(n3) );
  AND2X1 U10 ( .A(n33), .B(n8), .Y(n34) );
  INVX1 U11 ( .A(n34), .Y(n4) );
  INVX1 U12 ( .A(n42), .Y(n5) );
  AND2X1 U13 ( .A(B[8]), .B(A[8]), .Y(n27) );
  INVX1 U14 ( .A(n27), .Y(n6) );
  INVX1 U15 ( .A(n24), .Y(n7) );
  AND2X1 U16 ( .A(B[12]), .B(A[12]), .Y(n32) );
  INVX1 U17 ( .A(n32), .Y(n8) );
  BUFX2 U18 ( .A(n39), .Y(n9) );
  AND2X1 U19 ( .A(B[6]), .B(A[6]), .Y(n29) );
  INVX1 U20 ( .A(n29), .Y(n10) );
  AND2X1 U21 ( .A(B[9]), .B(A[9]), .Y(n23) );
  INVX1 U22 ( .A(n23), .Y(n11) );
  BUFX2 U23 ( .A(n31), .Y(n12) );
  AND2X1 U24 ( .A(B[11]), .B(A[11]), .Y(n37) );
  INVX1 U25 ( .A(n37), .Y(n13) );
  BUFX2 U26 ( .A(n25), .Y(n14) );
  INVX1 U27 ( .A(n41), .Y(n16) );
  INVX1 U28 ( .A(n26), .Y(n17) );
  INVX1 U29 ( .A(n33), .Y(n15) );
  INVX1 U30 ( .A(n43), .Y(n18) );
  INVX1 U31 ( .A(n28), .Y(SUM[6]) );
  XNOR2X1 U32 ( .A(n3), .B(n21), .Y(SUM[9]) );
  XOR2X1 U33 ( .A(n7), .B(n14), .Y(SUM[8]) );
  FAX1 U34 ( .A(B[7]), .B(A[7]), .C(n29), .YS(SUM[7]) );
  OAI21X1 U35 ( .A(B[6]), .B(A[6]), .C(n10), .Y(n28) );
  FAX1 U36 ( .A(B[13]), .B(A[13]), .C(n30), .YS(SUM[13]) );
  OAI21X1 U37 ( .A(n15), .B(n12), .C(n8), .Y(n30) );
  XOR2X1 U38 ( .A(n4), .B(n12), .Y(SUM[12]) );
  AOI21X1 U39 ( .A(n35), .B(n36), .C(n37), .Y(n31) );
  OR2X1 U40 ( .A(B[12]), .B(A[12]), .Y(n33) );
  XNOR2X1 U41 ( .A(n1), .B(n36), .Y(SUM[11]) );
  OAI21X1 U42 ( .A(n16), .B(n9), .C(n2), .Y(n36) );
  OR2X1 U43 ( .A(B[11]), .B(A[11]), .Y(n35) );
  XOR2X1 U44 ( .A(n5), .B(n9), .Y(SUM[10]) );
  AOI21X1 U45 ( .A(n21), .B(n22), .C(n23), .Y(n39) );
  OR2X1 U46 ( .A(B[9]), .B(A[9]), .Y(n22) );
  OAI21X1 U47 ( .A(n14), .B(n17), .C(n6), .Y(n21) );
  OR2X1 U48 ( .A(B[8]), .B(A[8]), .Y(n26) );
  AOI21X1 U49 ( .A(n29), .B(A[7]), .C(n18), .Y(n25) );
  OAI21X1 U50 ( .A(n29), .B(A[7]), .C(B[7]), .Y(n43) );
  OR2X1 U51 ( .A(B[10]), .B(A[10]), .Y(n41) );
endmodule


module mul8_sv_8_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] , \ab[0][3] ,
         \ab[0][2] , \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \CARRYB[1][0] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[7][0] ,
         \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] ,
         \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] , \SUMB[5][4] , \SUMB[5][3] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][6] ,
         \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] ,
         \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] ,
         \SUMB[1][1] , ZA, ZB, \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] ,
         \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] ,
         \A1[0] , \A2[6] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32;
  assign ZA = A[7];
  assign ZB = B[7];

  FAX1 S14_7_0 ( .A(ZA), .B(ZB), .C(\SUMB[7][0] ), .YC(\A2[6] ), .YS(\A1[5] )
         );
  FAX1 S4_0 ( .A(n12), .B(\CARRYB[6][0] ), .C(\SUMB[6][1] ), .YC(
        \CARRYB[7][0] ), .YS(\SUMB[7][0] ) );
  FAX1 S4_1 ( .A(n14), .B(\CARRYB[6][1] ), .C(\SUMB[6][2] ), .YC(
        \CARRYB[7][1] ), .YS(\SUMB[7][1] ) );
  FAX1 S4_2 ( .A(n15), .B(\CARRYB[6][2] ), .C(\SUMB[6][3] ), .YC(
        \CARRYB[7][2] ), .YS(\SUMB[7][2] ) );
  FAX1 S4_3 ( .A(n10), .B(\CARRYB[6][3] ), .C(\SUMB[6][4] ), .YC(
        \CARRYB[7][3] ), .YS(\SUMB[7][3] ) );
  FAX1 S4_4 ( .A(n8), .B(\CARRYB[6][4] ), .C(\SUMB[6][5] ), .YC(\CARRYB[7][4] ), .YS(\SUMB[7][4] ) );
  FAX1 S4_5 ( .A(n6), .B(\CARRYB[6][5] ), .C(\SUMB[6][6] ), .YC(\CARRYB[7][5] ), .YS(\SUMB[7][5] ) );
  FAX1 S5_6 ( .A(n5), .B(\CARRYB[6][6] ), .C(n4), .YC(\CARRYB[7][6] ), .YS(
        \SUMB[7][6] ) );
  FAX1 S14_7 ( .A(n31), .B(n32), .C(\ab[7][7] ), .YC(\CARRYB[7][7] ), .YS(
        \SUMB[7][7] ) );
  FAX1 S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .C(\SUMB[5][1] ), .YC(
        \CARRYB[6][0] ), .YS(\A1[4] ) );
  FAX1 S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .C(\SUMB[5][2] ), .YC(
        \CARRYB[6][1] ), .YS(\SUMB[6][1] ) );
  FAX1 S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .C(\SUMB[5][3] ), .YC(
        \CARRYB[6][2] ), .YS(\SUMB[6][2] ) );
  FAX1 S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .C(\SUMB[5][4] ), .YC(
        \CARRYB[6][3] ), .YS(\SUMB[6][3] ) );
  FAX1 S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .C(\SUMB[5][5] ), .YC(
        \CARRYB[6][4] ), .YS(\SUMB[6][4] ) );
  FAX1 S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .C(\SUMB[5][6] ), .YC(
        \CARRYB[6][5] ), .YS(\SUMB[6][5] ) );
  FAX1 S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .C(n3), .YC(\CARRYB[6][6] ), .YS(\SUMB[6][6] ) );
  FAX1 S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .C(\SUMB[4][1] ), .YC(
        \CARRYB[5][0] ), .YS(\A1[3] ) );
  FAX1 S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .C(\SUMB[4][2] ), .YC(
        \CARRYB[5][1] ), .YS(\SUMB[5][1] ) );
  FAX1 S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .C(\SUMB[4][3] ), .YC(
        \CARRYB[5][2] ), .YS(\SUMB[5][2] ) );
  FAX1 S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .C(\SUMB[4][4] ), .YC(
        \CARRYB[5][3] ), .YS(\SUMB[5][3] ) );
  FAX1 S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .C(\SUMB[4][5] ), .YC(
        \CARRYB[5][4] ), .YS(\SUMB[5][4] ) );
  FAX1 S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .C(\SUMB[4][6] ), .YC(
        \CARRYB[5][5] ), .YS(\SUMB[5][5] ) );
  FAX1 S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .C(n7), .YC(\CARRYB[5][6] ), .YS(\SUMB[5][6] ) );
  FAX1 S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .C(\SUMB[3][1] ), .YC(
        \CARRYB[4][0] ), .YS(\A1[2] ) );
  FAX1 S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .C(\SUMB[3][2] ), .YC(
        \CARRYB[4][1] ), .YS(\SUMB[4][1] ) );
  FAX1 S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .C(\SUMB[3][3] ), .YC(
        \CARRYB[4][2] ), .YS(\SUMB[4][2] ) );
  FAX1 S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .C(\SUMB[3][4] ), .YC(
        \CARRYB[4][3] ), .YS(\SUMB[4][3] ) );
  FAX1 S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .C(\SUMB[3][5] ), .YC(
        \CARRYB[4][4] ), .YS(\SUMB[4][4] ) );
  FAX1 S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .C(\SUMB[3][6] ), .YC(
        \CARRYB[4][5] ), .YS(\SUMB[4][5] ) );
  FAX1 S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .C(n9), .YC(\CARRYB[4][6] ), .YS(\SUMB[4][6] ) );
  FAX1 S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .C(\SUMB[2][1] ), .YC(
        \CARRYB[3][0] ), .YS(\A1[1] ) );
  FAX1 S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .C(\SUMB[2][2] ), .YC(
        \CARRYB[3][1] ), .YS(\SUMB[3][1] ) );
  FAX1 S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .C(\SUMB[2][3] ), .YC(
        \CARRYB[3][2] ), .YS(\SUMB[3][2] ) );
  FAX1 S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .C(\SUMB[2][4] ), .YC(
        \CARRYB[3][3] ), .YS(\SUMB[3][3] ) );
  FAX1 S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(\SUMB[2][5] ), .YC(
        \CARRYB[3][4] ), .YS(\SUMB[3][4] ) );
  FAX1 S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .C(\SUMB[2][6] ), .YC(
        \CARRYB[3][5] ), .YS(\SUMB[3][5] ) );
  FAX1 S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .C(n11), .YC(
        \CARRYB[3][6] ), .YS(\SUMB[3][6] ) );
  FAX1 S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .C(\SUMB[1][1] ), .YC(
        \CARRYB[2][0] ), .YS(\A1[0] ) );
  FAX1 S2_2_1 ( .A(\ab[2][1] ), .B(n24), .C(\SUMB[1][2] ), .YC(\CARRYB[2][1] ), 
        .YS(\SUMB[2][1] ) );
  FAX1 S2_2_2 ( .A(\ab[2][2] ), .B(n25), .C(\SUMB[1][3] ), .YC(\CARRYB[2][2] ), 
        .YS(\SUMB[2][2] ) );
  FAX1 S2_2_3 ( .A(\ab[2][3] ), .B(n26), .C(\SUMB[1][4] ), .YC(\CARRYB[2][3] ), 
        .YS(\SUMB[2][3] ) );
  FAX1 S2_2_4 ( .A(\ab[2][4] ), .B(n27), .C(\SUMB[1][5] ), .YC(\CARRYB[2][4] ), 
        .YS(\SUMB[2][4] ) );
  FAX1 S2_2_5 ( .A(\ab[2][5] ), .B(n28), .C(\SUMB[1][6] ), .YC(\CARRYB[2][5] ), 
        .YS(\SUMB[2][5] ) );
  FAX1 S3_2_6 ( .A(\ab[2][6] ), .B(n29), .C(n13), .YC(\CARRYB[2][6] ), .YS(
        \SUMB[2][6] ) );
  mul8_sv_8_DW01_add_0 FS_1 ( .A({n30, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , 
        \A1[0] }), .B({n22, n23, n21, n20, n19, n18, n17, \A2[6] , 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  AND2X1 U2 ( .A(B[4]), .B(A[6]), .Y(\ab[6][4] ) );
  AND2X1 U3 ( .A(B[5]), .B(A[6]), .Y(\ab[6][5] ) );
  AND2X1 U4 ( .A(B[3]), .B(A[6]), .Y(\ab[6][3] ) );
  AND2X1 U5 ( .A(B[1]), .B(A[6]), .Y(\ab[6][1] ) );
  AND2X1 U6 ( .A(B[2]), .B(A[6]), .Y(\ab[6][2] ) );
  AND2X1 U7 ( .A(B[6]), .B(A[6]), .Y(\ab[6][6] ) );
  AND2X1 U8 ( .A(B[0]), .B(A[6]), .Y(\ab[6][0] ) );
  OR2X1 U9 ( .A(n32), .B(A[5]), .Y(\ab[5][7] ) );
  INVX1 U10 ( .A(\ab[5][7] ), .Y(n3) );
  OR2X1 U11 ( .A(n32), .B(A[6]), .Y(\ab[6][7] ) );
  INVX1 U12 ( .A(\ab[6][7] ), .Y(n4) );
  OR2X1 U13 ( .A(n31), .B(B[6]), .Y(\ab[7][6] ) );
  INVX1 U14 ( .A(\ab[7][6] ), .Y(n5) );
  OR2X1 U15 ( .A(n31), .B(B[5]), .Y(\ab[7][5] ) );
  INVX1 U16 ( .A(\ab[7][5] ), .Y(n6) );
  OR2X1 U17 ( .A(n32), .B(A[4]), .Y(\ab[4][7] ) );
  INVX1 U18 ( .A(\ab[4][7] ), .Y(n7) );
  OR2X1 U19 ( .A(n31), .B(B[4]), .Y(\ab[7][4] ) );
  INVX1 U20 ( .A(\ab[7][4] ), .Y(n8) );
  AND2X1 U21 ( .A(n16), .B(\ab[1][6] ), .Y(n29) );
  OR2X1 U22 ( .A(n32), .B(A[3]), .Y(\ab[3][7] ) );
  INVX1 U23 ( .A(\ab[3][7] ), .Y(n9) );
  OR2X1 U24 ( .A(n31), .B(B[3]), .Y(\ab[7][3] ) );
  INVX1 U25 ( .A(\ab[7][3] ), .Y(n10) );
  OR2X1 U26 ( .A(n32), .B(A[2]), .Y(\ab[2][7] ) );
  INVX1 U27 ( .A(\ab[2][7] ), .Y(n11) );
  OR2X1 U28 ( .A(n31), .B(B[0]), .Y(\ab[7][0] ) );
  INVX1 U29 ( .A(\ab[7][0] ), .Y(n12) );
  AND2X1 U30 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n28) );
  OR2X1 U31 ( .A(n32), .B(A[1]), .Y(\ab[1][7] ) );
  INVX1 U32 ( .A(\ab[1][7] ), .Y(n13) );
  OR2X1 U33 ( .A(n31), .B(B[1]), .Y(\ab[7][1] ) );
  INVX1 U34 ( .A(\ab[7][1] ), .Y(n14) );
  AND2X1 U35 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n26) );
  AND2X1 U36 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n27) );
  AND2X1 U37 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n25) );
  AND2X1 U38 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n24) );
  OR2X1 U39 ( .A(n31), .B(B[2]), .Y(\ab[7][2] ) );
  INVX1 U40 ( .A(\ab[7][2] ), .Y(n15) );
  OR2X1 U41 ( .A(n32), .B(A[0]), .Y(\ab[0][7] ) );
  INVX1 U42 ( .A(\ab[0][7] ), .Y(n16) );
  INVX1 U43 ( .A(ZA), .Y(n31) );
  AND2X1 U44 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(n17) );
  AND2X1 U45 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(n18) );
  AND2X1 U46 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(n19) );
  AND2X1 U47 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(n20) );
  AND2X1 U48 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(n21) );
  AND2X1 U49 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(n22) );
  INVX1 U50 ( .A(\CARRYB[7][7] ), .Y(n30) );
  AND2X1 U51 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(n23) );
  INVX1 U52 ( .A(ZB), .Y(n32) );
  XOR2X1 U53 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(\A1[6] ) );
  XOR2X1 U54 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(\A1[7] ) );
  XOR2X1 U55 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(\A1[8] ) );
  XOR2X1 U56 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(\A1[9] ) );
  XOR2X1 U57 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(\A1[10] ) );
  XOR2X1 U58 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(\A1[11] ) );
  XOR2X1 U59 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(\A1[12] ) );
  XOR2X1 U60 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  XOR2X1 U61 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1 U62 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1 U63 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1 U64 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1 U65 ( .A(\ab[1][6] ), .B(n16), .Y(\SUMB[1][6] ) );
  AND2X1 U66 ( .A(ZA), .B(ZB), .Y(\ab[7][7] ) );
  AND2X1 U67 ( .A(A[5]), .B(B[6]), .Y(\ab[5][6] ) );
  AND2X1 U68 ( .A(A[5]), .B(B[5]), .Y(\ab[5][5] ) );
  AND2X1 U69 ( .A(A[5]), .B(B[4]), .Y(\ab[5][4] ) );
  AND2X1 U70 ( .A(A[5]), .B(B[3]), .Y(\ab[5][3] ) );
  AND2X1 U71 ( .A(A[5]), .B(B[2]), .Y(\ab[5][2] ) );
  AND2X1 U72 ( .A(A[5]), .B(B[1]), .Y(\ab[5][1] ) );
  AND2X1 U73 ( .A(A[5]), .B(B[0]), .Y(\ab[5][0] ) );
  AND2X1 U74 ( .A(A[4]), .B(B[6]), .Y(\ab[4][6] ) );
  AND2X1 U75 ( .A(A[4]), .B(B[5]), .Y(\ab[4][5] ) );
  AND2X1 U76 ( .A(A[4]), .B(B[4]), .Y(\ab[4][4] ) );
  AND2X1 U77 ( .A(A[4]), .B(B[3]), .Y(\ab[4][3] ) );
  AND2X1 U78 ( .A(A[4]), .B(B[2]), .Y(\ab[4][2] ) );
  AND2X1 U79 ( .A(A[4]), .B(B[1]), .Y(\ab[4][1] ) );
  AND2X1 U80 ( .A(A[4]), .B(B[0]), .Y(\ab[4][0] ) );
  AND2X1 U81 ( .A(A[3]), .B(B[6]), .Y(\ab[3][6] ) );
  AND2X1 U82 ( .A(A[3]), .B(B[5]), .Y(\ab[3][5] ) );
  AND2X1 U83 ( .A(A[3]), .B(B[4]), .Y(\ab[3][4] ) );
  AND2X1 U84 ( .A(A[3]), .B(B[3]), .Y(\ab[3][3] ) );
  AND2X1 U85 ( .A(A[3]), .B(B[2]), .Y(\ab[3][2] ) );
  AND2X1 U86 ( .A(A[3]), .B(B[1]), .Y(\ab[3][1] ) );
  AND2X1 U87 ( .A(A[3]), .B(B[0]), .Y(\ab[3][0] ) );
  AND2X1 U88 ( .A(A[2]), .B(B[6]), .Y(\ab[2][6] ) );
  AND2X1 U89 ( .A(A[2]), .B(B[5]), .Y(\ab[2][5] ) );
  AND2X1 U90 ( .A(A[2]), .B(B[4]), .Y(\ab[2][4] ) );
  AND2X1 U91 ( .A(A[2]), .B(B[3]), .Y(\ab[2][3] ) );
  AND2X1 U92 ( .A(A[2]), .B(B[2]), .Y(\ab[2][2] ) );
  AND2X1 U93 ( .A(A[2]), .B(B[1]), .Y(\ab[2][1] ) );
  AND2X1 U94 ( .A(A[2]), .B(B[0]), .Y(\ab[2][0] ) );
  AND2X1 U95 ( .A(A[1]), .B(B[6]), .Y(\ab[1][6] ) );
  AND2X1 U96 ( .A(A[1]), .B(B[5]), .Y(\ab[1][5] ) );
  AND2X1 U97 ( .A(A[1]), .B(B[4]), .Y(\ab[1][4] ) );
  AND2X1 U98 ( .A(A[1]), .B(B[3]), .Y(\ab[1][3] ) );
  AND2X1 U99 ( .A(A[1]), .B(B[2]), .Y(\ab[1][2] ) );
  AND2X1 U100 ( .A(A[0]), .B(B[6]), .Y(\ab[0][6] ) );
  AND2X1 U101 ( .A(A[0]), .B(B[5]), .Y(\ab[0][5] ) );
  AND2X1 U102 ( .A(A[0]), .B(B[4]), .Y(\ab[0][4] ) );
  AND2X1 U103 ( .A(A[0]), .B(B[3]), .Y(\ab[0][3] ) );
  AND2X1 U104 ( .A(A[0]), .B(B[2]), .Y(\ab[0][2] ) );
  AND2X1 U105 ( .A(PRODUCT[0]), .B(\ab[1][1] ), .Y(\CARRYB[1][0] ) );
  AND2X1 U106 ( .A(A[1]), .B(B[1]), .Y(\ab[1][1] ) );
  AND2X1 U107 ( .A(A[0]), .B(B[0]), .Y(PRODUCT[0]) );
endmodule


module mul8_sv_8 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;


  mul8_sv_8_DW02_mult_0 mult_46 ( .A(d1_in), .B(d2_in), .TC(1'b1), .PRODUCT(
        d_out) );
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


module unit_calc_sv_4_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
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
  wire   [15:0] shifty;
  wire   [7:0] y_out8;
  wire   [15:0] xnin_ue;
  wire   [15:0] xnin_ue_scaled;
  wire   [15:0] coeff16;
  wire   [15:0] new_coeff_true;
  wire   [15:0] delayed_new_coeff_true;
  wire   [7:0] coeff8;
  wire   [15:0] y_out16;

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
  mul8_sv_9 mul_xnin_ue ( .d1_in(x_N_in), .d2_in(ue_in), .d_out(xnin_ue) );
  u_scaling_sv_4 u1 ( .d_in(xnin_ue), .d_out(xnin_ue_scaled), .clock(clock) );
  add16_sv_4 add1 ( .d1_in(xnin_ue_scaled), .d2_in(coeff16), .d_out(
        new_coeff_true) );
  shift_1d_16_sv_4 delay_2 ( .xin(new_coeff_true), .xout(
        delayed_new_coeff_true), .clock(clock) );
  saturation_sv_4 sat_1 ( .d_in(delayed_new_coeff_true), .d_out(coeff16) );
  truncation_sv_9 trunc_1 ( .d_in(coeff16), .d_out(coeff8) );
  mul8_sv_8 mul_coeff_x_in ( .d1_in(coeff8), .d2_in(shiftx[31:24]), .d_out(
        y_out16) );
  truncation_sv_8 trunc_2 ( .d_in(y_out16), .d_out(y_out8) );
  unit_calc_sv_4_DW01_add_0 add_321 ( .A(y_out8), .B(shifty[7:0]), .CI(1'b0), 
        .SUM(y_out) );
endmodule


module mul8_sv_7_DW01_add_0 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43;
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AND2X1 U2 ( .A(n26), .B(n3), .Y(n24) );
  AND2X1 U3 ( .A(n41), .B(n2), .Y(n42) );
  AND2X1 U4 ( .A(n33), .B(n4), .Y(n34) );
  AND2X1 U5 ( .A(n35), .B(n10), .Y(n38) );
  INVX1 U6 ( .A(n38), .Y(n1) );
  AND2X1 U7 ( .A(B[10]), .B(A[10]), .Y(n40) );
  INVX1 U8 ( .A(n40), .Y(n2) );
  AND2X1 U9 ( .A(B[8]), .B(A[8]), .Y(n27) );
  INVX1 U10 ( .A(n27), .Y(n3) );
  AND2X1 U11 ( .A(B[12]), .B(A[12]), .Y(n32) );
  INVX1 U12 ( .A(n32), .Y(n4) );
  AND2X1 U13 ( .A(n22), .B(n13), .Y(n20) );
  INVX1 U14 ( .A(n20), .Y(n5) );
  INVX1 U15 ( .A(n42), .Y(n6) );
  BUFX2 U16 ( .A(n31), .Y(n7) );
  INVX1 U17 ( .A(n24), .Y(n8) );
  AND2X1 U18 ( .A(B[6]), .B(A[6]), .Y(n29) );
  INVX1 U19 ( .A(n29), .Y(n9) );
  AND2X1 U20 ( .A(B[11]), .B(A[11]), .Y(n37) );
  INVX1 U21 ( .A(n37), .Y(n10) );
  BUFX2 U22 ( .A(n39), .Y(n11) );
  INVX1 U23 ( .A(n34), .Y(n12) );
  AND2X1 U24 ( .A(B[9]), .B(A[9]), .Y(n23) );
  INVX1 U25 ( .A(n23), .Y(n13) );
  BUFX2 U26 ( .A(n25), .Y(n14) );
  INVX1 U27 ( .A(n41), .Y(n16) );
  INVX1 U28 ( .A(n26), .Y(n17) );
  INVX1 U29 ( .A(n33), .Y(n15) );
  INVX1 U30 ( .A(n43), .Y(n18) );
  INVX1 U31 ( .A(n28), .Y(SUM[6]) );
  XNOR2X1 U32 ( .A(n5), .B(n21), .Y(SUM[9]) );
  XOR2X1 U33 ( .A(n8), .B(n14), .Y(SUM[8]) );
  FAX1 U34 ( .A(B[7]), .B(A[7]), .C(n29), .YS(SUM[7]) );
  OAI21X1 U35 ( .A(B[6]), .B(A[6]), .C(n9), .Y(n28) );
  FAX1 U36 ( .A(B[13]), .B(A[13]), .C(n30), .YS(SUM[13]) );
  OAI21X1 U37 ( .A(n15), .B(n7), .C(n4), .Y(n30) );
  XOR2X1 U38 ( .A(n12), .B(n7), .Y(SUM[12]) );
  AOI21X1 U39 ( .A(n35), .B(n36), .C(n37), .Y(n31) );
  OR2X1 U40 ( .A(B[12]), .B(A[12]), .Y(n33) );
  XNOR2X1 U41 ( .A(n1), .B(n36), .Y(SUM[11]) );
  OAI21X1 U42 ( .A(n16), .B(n11), .C(n2), .Y(n36) );
  OR2X1 U43 ( .A(B[11]), .B(A[11]), .Y(n35) );
  XOR2X1 U44 ( .A(n6), .B(n11), .Y(SUM[10]) );
  AOI21X1 U45 ( .A(n21), .B(n22), .C(n23), .Y(n39) );
  OR2X1 U46 ( .A(B[9]), .B(A[9]), .Y(n22) );
  OAI21X1 U47 ( .A(n14), .B(n17), .C(n3), .Y(n21) );
  OR2X1 U48 ( .A(B[8]), .B(A[8]), .Y(n26) );
  AOI21X1 U49 ( .A(n29), .B(A[7]), .C(n18), .Y(n25) );
  OAI21X1 U50 ( .A(n29), .B(A[7]), .C(B[7]), .Y(n43) );
  OR2X1 U51 ( .A(B[10]), .B(A[10]), .Y(n41) );
endmodule


module mul8_sv_7_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] , \ab[0][3] ,
         \ab[0][2] , \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \CARRYB[1][0] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[7][0] ,
         \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] ,
         \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] , \SUMB[5][4] , \SUMB[5][3] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][6] ,
         \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] ,
         \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] ,
         \SUMB[1][1] , ZA, ZB, \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] ,
         \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] ,
         \A1[0] , \A2[6] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32;
  assign ZA = A[7];
  assign ZB = B[7];

  FAX1 S14_7_0 ( .A(ZA), .B(ZB), .C(\SUMB[7][0] ), .YC(\A2[6] ), .YS(\A1[5] )
         );
  FAX1 S4_0 ( .A(n10), .B(\CARRYB[6][0] ), .C(\SUMB[6][1] ), .YC(
        \CARRYB[7][0] ), .YS(\SUMB[7][0] ) );
  FAX1 S4_1 ( .A(n12), .B(\CARRYB[6][1] ), .C(\SUMB[6][2] ), .YC(
        \CARRYB[7][1] ), .YS(\SUMB[7][1] ) );
  FAX1 S4_2 ( .A(n8), .B(\CARRYB[6][2] ), .C(\SUMB[6][3] ), .YC(\CARRYB[7][2] ), .YS(\SUMB[7][2] ) );
  FAX1 S4_3 ( .A(n6), .B(\CARRYB[6][3] ), .C(\SUMB[6][4] ), .YC(\CARRYB[7][3] ), .YS(\SUMB[7][3] ) );
  FAX1 S4_4 ( .A(n4), .B(\CARRYB[6][4] ), .C(\SUMB[6][5] ), .YC(\CARRYB[7][4] ), .YS(\SUMB[7][4] ) );
  FAX1 S4_5 ( .A(n15), .B(\CARRYB[6][5] ), .C(\SUMB[6][6] ), .YC(
        \CARRYB[7][5] ), .YS(\SUMB[7][5] ) );
  FAX1 S5_6 ( .A(n14), .B(\CARRYB[6][6] ), .C(n13), .YC(\CARRYB[7][6] ), .YS(
        \SUMB[7][6] ) );
  FAX1 S14_7 ( .A(n31), .B(n32), .C(\ab[7][7] ), .YC(\CARRYB[7][7] ), .YS(
        \SUMB[7][7] ) );
  FAX1 S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .C(\SUMB[5][1] ), .YC(
        \CARRYB[6][0] ), .YS(\A1[4] ) );
  FAX1 S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .C(\SUMB[5][2] ), .YC(
        \CARRYB[6][1] ), .YS(\SUMB[6][1] ) );
  FAX1 S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .C(\SUMB[5][3] ), .YC(
        \CARRYB[6][2] ), .YS(\SUMB[6][2] ) );
  FAX1 S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .C(\SUMB[5][4] ), .YC(
        \CARRYB[6][3] ), .YS(\SUMB[6][3] ) );
  FAX1 S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .C(\SUMB[5][5] ), .YC(
        \CARRYB[6][4] ), .YS(\SUMB[6][4] ) );
  FAX1 S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .C(\SUMB[5][6] ), .YC(
        \CARRYB[6][5] ), .YS(\SUMB[6][5] ) );
  FAX1 S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .C(n5), .YC(\CARRYB[6][6] ), .YS(\SUMB[6][6] ) );
  FAX1 S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .C(\SUMB[4][1] ), .YC(
        \CARRYB[5][0] ), .YS(\A1[3] ) );
  FAX1 S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .C(\SUMB[4][2] ), .YC(
        \CARRYB[5][1] ), .YS(\SUMB[5][1] ) );
  FAX1 S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .C(\SUMB[4][3] ), .YC(
        \CARRYB[5][2] ), .YS(\SUMB[5][2] ) );
  FAX1 S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .C(\SUMB[4][4] ), .YC(
        \CARRYB[5][3] ), .YS(\SUMB[5][3] ) );
  FAX1 S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .C(\SUMB[4][5] ), .YC(
        \CARRYB[5][4] ), .YS(\SUMB[5][4] ) );
  FAX1 S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .C(\SUMB[4][6] ), .YC(
        \CARRYB[5][5] ), .YS(\SUMB[5][5] ) );
  FAX1 S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .C(n7), .YC(\CARRYB[5][6] ), .YS(\SUMB[5][6] ) );
  FAX1 S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .C(\SUMB[3][1] ), .YC(
        \CARRYB[4][0] ), .YS(\A1[2] ) );
  FAX1 S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .C(\SUMB[3][2] ), .YC(
        \CARRYB[4][1] ), .YS(\SUMB[4][1] ) );
  FAX1 S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .C(\SUMB[3][3] ), .YC(
        \CARRYB[4][2] ), .YS(\SUMB[4][2] ) );
  FAX1 S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .C(\SUMB[3][4] ), .YC(
        \CARRYB[4][3] ), .YS(\SUMB[4][3] ) );
  FAX1 S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .C(\SUMB[3][5] ), .YC(
        \CARRYB[4][4] ), .YS(\SUMB[4][4] ) );
  FAX1 S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .C(\SUMB[3][6] ), .YC(
        \CARRYB[4][5] ), .YS(\SUMB[4][5] ) );
  FAX1 S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .C(n9), .YC(\CARRYB[4][6] ), .YS(\SUMB[4][6] ) );
  FAX1 S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .C(\SUMB[2][1] ), .YC(
        \CARRYB[3][0] ), .YS(\A1[1] ) );
  FAX1 S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .C(\SUMB[2][2] ), .YC(
        \CARRYB[3][1] ), .YS(\SUMB[3][1] ) );
  FAX1 S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .C(\SUMB[2][3] ), .YC(
        \CARRYB[3][2] ), .YS(\SUMB[3][2] ) );
  FAX1 S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .C(\SUMB[2][4] ), .YC(
        \CARRYB[3][3] ), .YS(\SUMB[3][3] ) );
  FAX1 S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(\SUMB[2][5] ), .YC(
        \CARRYB[3][4] ), .YS(\SUMB[3][4] ) );
  FAX1 S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .C(\SUMB[2][6] ), .YC(
        \CARRYB[3][5] ), .YS(\SUMB[3][5] ) );
  FAX1 S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .C(n11), .YC(
        \CARRYB[3][6] ), .YS(\SUMB[3][6] ) );
  FAX1 S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .C(\SUMB[1][1] ), .YC(
        \CARRYB[2][0] ), .YS(\A1[0] ) );
  FAX1 S2_2_1 ( .A(\ab[2][1] ), .B(n24), .C(\SUMB[1][2] ), .YC(\CARRYB[2][1] ), 
        .YS(\SUMB[2][1] ) );
  FAX1 S2_2_2 ( .A(\ab[2][2] ), .B(n25), .C(\SUMB[1][3] ), .YC(\CARRYB[2][2] ), 
        .YS(\SUMB[2][2] ) );
  FAX1 S2_2_3 ( .A(\ab[2][3] ), .B(n26), .C(\SUMB[1][4] ), .YC(\CARRYB[2][3] ), 
        .YS(\SUMB[2][3] ) );
  FAX1 S2_2_4 ( .A(\ab[2][4] ), .B(n27), .C(\SUMB[1][5] ), .YC(\CARRYB[2][4] ), 
        .YS(\SUMB[2][4] ) );
  FAX1 S2_2_5 ( .A(\ab[2][5] ), .B(n28), .C(\SUMB[1][6] ), .YC(\CARRYB[2][5] ), 
        .YS(\SUMB[2][5] ) );
  FAX1 S3_2_6 ( .A(\ab[2][6] ), .B(n29), .C(n3), .YC(\CARRYB[2][6] ), .YS(
        \SUMB[2][6] ) );
  mul8_sv_7_DW01_add_0 FS_1 ( .A({n30, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , 
        \A1[0] }), .B({n23, n21, n22, n20, n19, n18, n17, \A2[6] , 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  OR2X1 U2 ( .A(n32), .B(A[1]), .Y(\ab[1][7] ) );
  INVX1 U3 ( .A(\ab[1][7] ), .Y(n3) );
  OR2X1 U4 ( .A(n31), .B(B[4]), .Y(\ab[7][4] ) );
  INVX1 U5 ( .A(\ab[7][4] ), .Y(n4) );
  OR2X1 U6 ( .A(n32), .B(A[5]), .Y(\ab[5][7] ) );
  INVX1 U7 ( .A(\ab[5][7] ), .Y(n5) );
  OR2X1 U8 ( .A(n31), .B(B[3]), .Y(\ab[7][3] ) );
  INVX1 U9 ( .A(\ab[7][3] ), .Y(n6) );
  AND2X1 U10 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(n23) );
  OR2X1 U11 ( .A(n32), .B(A[4]), .Y(\ab[4][7] ) );
  INVX1 U12 ( .A(\ab[4][7] ), .Y(n7) );
  OR2X1 U13 ( .A(n31), .B(B[2]), .Y(\ab[7][2] ) );
  INVX1 U14 ( .A(\ab[7][2] ), .Y(n8) );
  OR2X1 U15 ( .A(n32), .B(A[3]), .Y(\ab[3][7] ) );
  INVX1 U16 ( .A(\ab[3][7] ), .Y(n9) );
  OR2X1 U17 ( .A(n31), .B(B[0]), .Y(\ab[7][0] ) );
  INVX1 U18 ( .A(\ab[7][0] ), .Y(n10) );
  OR2X1 U19 ( .A(n32), .B(A[2]), .Y(\ab[2][7] ) );
  INVX1 U20 ( .A(\ab[2][7] ), .Y(n11) );
  OR2X1 U21 ( .A(n31), .B(B[1]), .Y(\ab[7][1] ) );
  INVX1 U22 ( .A(\ab[7][1] ), .Y(n12) );
  AND2X1 U23 ( .A(n16), .B(\ab[1][6] ), .Y(n29) );
  AND2X1 U24 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n28) );
  OR2X1 U25 ( .A(n32), .B(A[6]), .Y(\ab[6][7] ) );
  INVX1 U26 ( .A(\ab[6][7] ), .Y(n13) );
  OR2X1 U27 ( .A(n31), .B(B[6]), .Y(\ab[7][6] ) );
  INVX1 U28 ( .A(\ab[7][6] ), .Y(n14) );
  AND2X1 U29 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n24) );
  AND2X1 U30 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n26) );
  AND2X1 U31 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n27) );
  AND2X1 U32 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n25) );
  OR2X1 U33 ( .A(n31), .B(B[5]), .Y(\ab[7][5] ) );
  INVX1 U34 ( .A(\ab[7][5] ), .Y(n15) );
  OR2X1 U35 ( .A(n32), .B(A[0]), .Y(\ab[0][7] ) );
  INVX1 U36 ( .A(\ab[0][7] ), .Y(n16) );
  INVX1 U37 ( .A(\CARRYB[7][7] ), .Y(n30) );
  AND2X1 U38 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(n17) );
  AND2X1 U39 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(n18) );
  AND2X1 U40 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(n19) );
  AND2X1 U41 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(n20) );
  AND2X1 U42 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(n21) );
  AND2X1 U43 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(n22) );
  INVX1 U44 ( .A(ZA), .Y(n31) );
  INVX1 U45 ( .A(ZB), .Y(n32) );
  XOR2X1 U46 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(\A1[6] ) );
  XOR2X1 U47 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(\A1[7] ) );
  XOR2X1 U48 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(\A1[8] ) );
  XOR2X1 U49 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(\A1[9] ) );
  XOR2X1 U50 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(\A1[10] ) );
  XOR2X1 U51 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(\A1[11] ) );
  XOR2X1 U52 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(\A1[12] ) );
  XOR2X1 U53 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  XOR2X1 U54 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1 U55 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1 U56 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1 U57 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1 U58 ( .A(\ab[1][6] ), .B(n16), .Y(\SUMB[1][6] ) );
  AND2X1 U59 ( .A(ZA), .B(ZB), .Y(\ab[7][7] ) );
  AND2X1 U60 ( .A(B[6]), .B(A[6]), .Y(\ab[6][6] ) );
  AND2X1 U61 ( .A(B[5]), .B(A[6]), .Y(\ab[6][5] ) );
  AND2X1 U62 ( .A(B[4]), .B(A[6]), .Y(\ab[6][4] ) );
  AND2X1 U63 ( .A(B[3]), .B(A[6]), .Y(\ab[6][3] ) );
  AND2X1 U64 ( .A(B[2]), .B(A[6]), .Y(\ab[6][2] ) );
  AND2X1 U65 ( .A(B[1]), .B(A[6]), .Y(\ab[6][1] ) );
  AND2X1 U66 ( .A(B[0]), .B(A[6]), .Y(\ab[6][0] ) );
  AND2X1 U67 ( .A(A[5]), .B(B[6]), .Y(\ab[5][6] ) );
  AND2X1 U68 ( .A(A[5]), .B(B[5]), .Y(\ab[5][5] ) );
  AND2X1 U69 ( .A(A[5]), .B(B[4]), .Y(\ab[5][4] ) );
  AND2X1 U70 ( .A(A[5]), .B(B[3]), .Y(\ab[5][3] ) );
  AND2X1 U71 ( .A(A[5]), .B(B[2]), .Y(\ab[5][2] ) );
  AND2X1 U72 ( .A(A[5]), .B(B[1]), .Y(\ab[5][1] ) );
  AND2X1 U73 ( .A(A[5]), .B(B[0]), .Y(\ab[5][0] ) );
  AND2X1 U74 ( .A(A[4]), .B(B[6]), .Y(\ab[4][6] ) );
  AND2X1 U75 ( .A(A[4]), .B(B[5]), .Y(\ab[4][5] ) );
  AND2X1 U76 ( .A(A[4]), .B(B[4]), .Y(\ab[4][4] ) );
  AND2X1 U77 ( .A(A[4]), .B(B[3]), .Y(\ab[4][3] ) );
  AND2X1 U78 ( .A(A[4]), .B(B[2]), .Y(\ab[4][2] ) );
  AND2X1 U79 ( .A(A[4]), .B(B[1]), .Y(\ab[4][1] ) );
  AND2X1 U80 ( .A(A[4]), .B(B[0]), .Y(\ab[4][0] ) );
  AND2X1 U81 ( .A(A[3]), .B(B[6]), .Y(\ab[3][6] ) );
  AND2X1 U82 ( .A(A[3]), .B(B[5]), .Y(\ab[3][5] ) );
  AND2X1 U83 ( .A(A[3]), .B(B[4]), .Y(\ab[3][4] ) );
  AND2X1 U84 ( .A(A[3]), .B(B[3]), .Y(\ab[3][3] ) );
  AND2X1 U85 ( .A(A[3]), .B(B[2]), .Y(\ab[3][2] ) );
  AND2X1 U86 ( .A(A[3]), .B(B[1]), .Y(\ab[3][1] ) );
  AND2X1 U87 ( .A(A[3]), .B(B[0]), .Y(\ab[3][0] ) );
  AND2X1 U88 ( .A(A[2]), .B(B[6]), .Y(\ab[2][6] ) );
  AND2X1 U89 ( .A(A[2]), .B(B[5]), .Y(\ab[2][5] ) );
  AND2X1 U90 ( .A(A[2]), .B(B[4]), .Y(\ab[2][4] ) );
  AND2X1 U91 ( .A(A[2]), .B(B[3]), .Y(\ab[2][3] ) );
  AND2X1 U92 ( .A(A[2]), .B(B[2]), .Y(\ab[2][2] ) );
  AND2X1 U93 ( .A(A[2]), .B(B[1]), .Y(\ab[2][1] ) );
  AND2X1 U94 ( .A(A[2]), .B(B[0]), .Y(\ab[2][0] ) );
  AND2X1 U95 ( .A(A[1]), .B(B[6]), .Y(\ab[1][6] ) );
  AND2X1 U96 ( .A(A[1]), .B(B[5]), .Y(\ab[1][5] ) );
  AND2X1 U97 ( .A(A[1]), .B(B[4]), .Y(\ab[1][4] ) );
  AND2X1 U98 ( .A(A[1]), .B(B[3]), .Y(\ab[1][3] ) );
  AND2X1 U99 ( .A(A[1]), .B(B[2]), .Y(\ab[1][2] ) );
  AND2X1 U100 ( .A(A[0]), .B(B[6]), .Y(\ab[0][6] ) );
  AND2X1 U101 ( .A(A[0]), .B(B[5]), .Y(\ab[0][5] ) );
  AND2X1 U102 ( .A(A[0]), .B(B[4]), .Y(\ab[0][4] ) );
  AND2X1 U103 ( .A(A[0]), .B(B[3]), .Y(\ab[0][3] ) );
  AND2X1 U104 ( .A(A[0]), .B(B[2]), .Y(\ab[0][2] ) );
  AND2X1 U105 ( .A(PRODUCT[0]), .B(\ab[1][1] ), .Y(\CARRYB[1][0] ) );
  AND2X1 U106 ( .A(A[1]), .B(B[1]), .Y(\ab[1][1] ) );
  AND2X1 U107 ( .A(A[0]), .B(B[0]), .Y(PRODUCT[0]) );
endmodule


module mul8_sv_7 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;


  mul8_sv_7_DW02_mult_0 mult_46 ( .A(d1_in), .B(d2_in), .TC(1'b1), .PRODUCT(
        d_out) );
endmodule


module u_scaling_sv_3 ( d_in, d_out, clock );
  input [15:0] d_in;
  output [15:0] d_out;
  input clock;


  DFFPOSX1 \d_out_reg_reg[15]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[15]) );
  DFFPOSX1 \d_out_reg_reg[14]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[14]) );
  DFFPOSX1 \d_out_reg_reg[13]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[13]) );
  DFFPOSX1 \d_out_reg_reg[12]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[12]) );
  DFFPOSX1 \d_out_reg_reg[11]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[11]) );
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


module add16_sv_3_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module add16_sv_3 ( d1_in, d2_in, d_out );
  input [15:0] d1_in;
  input [15:0] d2_in;
  output [15:0] d_out;


  add16_sv_3_DW01_add_0 add_9 ( .A(d1_in), .B(d2_in), .CI(1'b0), .SUM(d_out)
         );
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


module saturation_sv_3 ( d_in, d_out );
  input [15:0] d_in;
  output [15:0] d_out;
  wire   \d_in[15] , n15, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13,
         n14;
  assign d_out[15] = \d_in[15] ;
  assign \d_in[15]  = d_in[15];

  AND2X1 U3 ( .A(n1), .B(n3), .Y(n6) );
  AND2X1 U4 ( .A(\d_in[15] ), .B(n4), .Y(n8) );
  AND2X1 U5 ( .A(n2), .B(n14), .Y(n10) );
  INVX1 U6 ( .A(n10), .Y(n1) );
  BUFX2 U7 ( .A(n13), .Y(n2) );
  INVX1 U8 ( .A(n8), .Y(n3) );
  BUFX2 U9 ( .A(n12), .Y(n4) );
  AND2X1 U10 ( .A(n6), .B(n11), .Y(n15) );
  INVX1 U11 ( .A(n15), .Y(d_out[12]) );
  AND2X1 U12 ( .A(d_in[9]), .B(n6), .Y(d_out[9]) );
  AND2X1 U13 ( .A(d_in[8]), .B(n6), .Y(d_out[8]) );
  AND2X1 U14 ( .A(d_in[7]), .B(n6), .Y(d_out[7]) );
  AND2X1 U15 ( .A(d_in[6]), .B(n6), .Y(d_out[6]) );
  AND2X1 U16 ( .A(d_in[5]), .B(n6), .Y(d_out[5]) );
  AND2X1 U17 ( .A(d_in[4]), .B(n6), .Y(d_out[4]) );
  AND2X1 U18 ( .A(d_in[3]), .B(n6), .Y(d_out[3]) );
  AND2X1 U19 ( .A(d_in[2]), .B(n6), .Y(d_out[2]) );
  AND2X1 U20 ( .A(d_in[1]), .B(n6), .Y(d_out[1]) );
  OAI21X1 U21 ( .A(n10), .B(n7), .C(n3), .Y(d_out[14]) );
  OAI21X1 U22 ( .A(n10), .B(n9), .C(n3), .Y(d_out[13]) );
  AND2X1 U23 ( .A(d_in[11]), .B(n6), .Y(d_out[11]) );
  AND2X1 U24 ( .A(d_in[10]), .B(n6), .Y(d_out[10]) );
  AND2X1 U25 ( .A(d_in[0]), .B(n6), .Y(d_out[0]) );
  NAND3X1 U26 ( .A(d_in[13]), .B(d_in[12]), .C(d_in[14]), .Y(n12) );
  INVX1 U27 ( .A(\d_in[15] ), .Y(n14) );
  NAND3X1 U28 ( .A(n9), .B(n7), .C(n11), .Y(n13) );
  INVX1 U29 ( .A(d_in[12]), .Y(n11) );
  INVX1 U30 ( .A(d_in[14]), .Y(n7) );
  INVX1 U31 ( .A(d_in[13]), .Y(n9) );
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


module mul8_sv_6_DW01_add_0 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43;
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AND2X1 U2 ( .A(n26), .B(n6), .Y(n24) );
  AND2X1 U3 ( .A(n41), .B(n2), .Y(n42) );
  AND2X1 U4 ( .A(n35), .B(n13), .Y(n38) );
  INVX1 U5 ( .A(n38), .Y(n1) );
  AND2X1 U6 ( .A(B[10]), .B(A[10]), .Y(n40) );
  INVX1 U7 ( .A(n40), .Y(n2) );
  AND2X1 U8 ( .A(n22), .B(n11), .Y(n20) );
  INVX1 U9 ( .A(n20), .Y(n3) );
  AND2X1 U10 ( .A(n33), .B(n8), .Y(n34) );
  INVX1 U11 ( .A(n34), .Y(n4) );
  INVX1 U12 ( .A(n42), .Y(n5) );
  AND2X1 U13 ( .A(B[8]), .B(A[8]), .Y(n27) );
  INVX1 U14 ( .A(n27), .Y(n6) );
  INVX1 U15 ( .A(n24), .Y(n7) );
  AND2X1 U16 ( .A(B[12]), .B(A[12]), .Y(n32) );
  INVX1 U17 ( .A(n32), .Y(n8) );
  BUFX2 U18 ( .A(n39), .Y(n9) );
  AND2X1 U19 ( .A(B[6]), .B(A[6]), .Y(n29) );
  INVX1 U20 ( .A(n29), .Y(n10) );
  AND2X1 U21 ( .A(B[9]), .B(A[9]), .Y(n23) );
  INVX1 U22 ( .A(n23), .Y(n11) );
  BUFX2 U23 ( .A(n31), .Y(n12) );
  AND2X1 U24 ( .A(B[11]), .B(A[11]), .Y(n37) );
  INVX1 U25 ( .A(n37), .Y(n13) );
  BUFX2 U26 ( .A(n25), .Y(n14) );
  INVX1 U27 ( .A(n41), .Y(n16) );
  INVX1 U28 ( .A(n26), .Y(n17) );
  INVX1 U29 ( .A(n33), .Y(n15) );
  INVX1 U30 ( .A(n43), .Y(n18) );
  INVX1 U31 ( .A(n28), .Y(SUM[6]) );
  XNOR2X1 U32 ( .A(n3), .B(n21), .Y(SUM[9]) );
  XOR2X1 U33 ( .A(n7), .B(n14), .Y(SUM[8]) );
  FAX1 U34 ( .A(B[7]), .B(A[7]), .C(n29), .YS(SUM[7]) );
  OAI21X1 U35 ( .A(B[6]), .B(A[6]), .C(n10), .Y(n28) );
  FAX1 U36 ( .A(B[13]), .B(A[13]), .C(n30), .YS(SUM[13]) );
  OAI21X1 U37 ( .A(n15), .B(n12), .C(n8), .Y(n30) );
  XOR2X1 U38 ( .A(n4), .B(n12), .Y(SUM[12]) );
  AOI21X1 U39 ( .A(n35), .B(n36), .C(n37), .Y(n31) );
  OR2X1 U40 ( .A(B[12]), .B(A[12]), .Y(n33) );
  XNOR2X1 U41 ( .A(n1), .B(n36), .Y(SUM[11]) );
  OAI21X1 U42 ( .A(n16), .B(n9), .C(n2), .Y(n36) );
  OR2X1 U43 ( .A(B[11]), .B(A[11]), .Y(n35) );
  XOR2X1 U44 ( .A(n5), .B(n9), .Y(SUM[10]) );
  AOI21X1 U45 ( .A(n21), .B(n22), .C(n23), .Y(n39) );
  OR2X1 U46 ( .A(B[9]), .B(A[9]), .Y(n22) );
  OAI21X1 U47 ( .A(n14), .B(n17), .C(n6), .Y(n21) );
  OR2X1 U48 ( .A(B[8]), .B(A[8]), .Y(n26) );
  AOI21X1 U49 ( .A(n29), .B(A[7]), .C(n18), .Y(n25) );
  OAI21X1 U50 ( .A(n29), .B(A[7]), .C(B[7]), .Y(n43) );
  OR2X1 U51 ( .A(B[10]), .B(A[10]), .Y(n41) );
endmodule


module mul8_sv_6_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] , \ab[0][3] ,
         \ab[0][2] , \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \CARRYB[1][0] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[7][0] ,
         \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] ,
         \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] , \SUMB[5][4] , \SUMB[5][3] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][6] ,
         \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] ,
         \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] ,
         \SUMB[1][1] , ZA, ZB, \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] ,
         \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] ,
         \A1[0] , \A2[6] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32;
  assign ZA = A[7];
  assign ZB = B[7];

  FAX1 S14_7_0 ( .A(ZA), .B(ZB), .C(\SUMB[7][0] ), .YC(\A2[6] ), .YS(\A1[5] )
         );
  FAX1 S4_0 ( .A(n12), .B(\CARRYB[6][0] ), .C(\SUMB[6][1] ), .YC(
        \CARRYB[7][0] ), .YS(\SUMB[7][0] ) );
  FAX1 S4_1 ( .A(n14), .B(\CARRYB[6][1] ), .C(\SUMB[6][2] ), .YC(
        \CARRYB[7][1] ), .YS(\SUMB[7][1] ) );
  FAX1 S4_2 ( .A(n15), .B(\CARRYB[6][2] ), .C(\SUMB[6][3] ), .YC(
        \CARRYB[7][2] ), .YS(\SUMB[7][2] ) );
  FAX1 S4_3 ( .A(n10), .B(\CARRYB[6][3] ), .C(\SUMB[6][4] ), .YC(
        \CARRYB[7][3] ), .YS(\SUMB[7][3] ) );
  FAX1 S4_4 ( .A(n8), .B(\CARRYB[6][4] ), .C(\SUMB[6][5] ), .YC(\CARRYB[7][4] ), .YS(\SUMB[7][4] ) );
  FAX1 S4_5 ( .A(n6), .B(\CARRYB[6][5] ), .C(\SUMB[6][6] ), .YC(\CARRYB[7][5] ), .YS(\SUMB[7][5] ) );
  FAX1 S5_6 ( .A(n5), .B(\CARRYB[6][6] ), .C(n4), .YC(\CARRYB[7][6] ), .YS(
        \SUMB[7][6] ) );
  FAX1 S14_7 ( .A(n31), .B(n32), .C(\ab[7][7] ), .YC(\CARRYB[7][7] ), .YS(
        \SUMB[7][7] ) );
  FAX1 S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .C(\SUMB[5][1] ), .YC(
        \CARRYB[6][0] ), .YS(\A1[4] ) );
  FAX1 S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .C(\SUMB[5][2] ), .YC(
        \CARRYB[6][1] ), .YS(\SUMB[6][1] ) );
  FAX1 S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .C(\SUMB[5][3] ), .YC(
        \CARRYB[6][2] ), .YS(\SUMB[6][2] ) );
  FAX1 S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .C(\SUMB[5][4] ), .YC(
        \CARRYB[6][3] ), .YS(\SUMB[6][3] ) );
  FAX1 S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .C(\SUMB[5][5] ), .YC(
        \CARRYB[6][4] ), .YS(\SUMB[6][4] ) );
  FAX1 S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .C(\SUMB[5][6] ), .YC(
        \CARRYB[6][5] ), .YS(\SUMB[6][5] ) );
  FAX1 S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .C(n3), .YC(\CARRYB[6][6] ), .YS(\SUMB[6][6] ) );
  FAX1 S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .C(\SUMB[4][1] ), .YC(
        \CARRYB[5][0] ), .YS(\A1[3] ) );
  FAX1 S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .C(\SUMB[4][2] ), .YC(
        \CARRYB[5][1] ), .YS(\SUMB[5][1] ) );
  FAX1 S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .C(\SUMB[4][3] ), .YC(
        \CARRYB[5][2] ), .YS(\SUMB[5][2] ) );
  FAX1 S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .C(\SUMB[4][4] ), .YC(
        \CARRYB[5][3] ), .YS(\SUMB[5][3] ) );
  FAX1 S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .C(\SUMB[4][5] ), .YC(
        \CARRYB[5][4] ), .YS(\SUMB[5][4] ) );
  FAX1 S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .C(\SUMB[4][6] ), .YC(
        \CARRYB[5][5] ), .YS(\SUMB[5][5] ) );
  FAX1 S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .C(n7), .YC(\CARRYB[5][6] ), .YS(\SUMB[5][6] ) );
  FAX1 S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .C(\SUMB[3][1] ), .YC(
        \CARRYB[4][0] ), .YS(\A1[2] ) );
  FAX1 S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .C(\SUMB[3][2] ), .YC(
        \CARRYB[4][1] ), .YS(\SUMB[4][1] ) );
  FAX1 S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .C(\SUMB[3][3] ), .YC(
        \CARRYB[4][2] ), .YS(\SUMB[4][2] ) );
  FAX1 S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .C(\SUMB[3][4] ), .YC(
        \CARRYB[4][3] ), .YS(\SUMB[4][3] ) );
  FAX1 S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .C(\SUMB[3][5] ), .YC(
        \CARRYB[4][4] ), .YS(\SUMB[4][4] ) );
  FAX1 S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .C(\SUMB[3][6] ), .YC(
        \CARRYB[4][5] ), .YS(\SUMB[4][5] ) );
  FAX1 S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .C(n9), .YC(\CARRYB[4][6] ), .YS(\SUMB[4][6] ) );
  FAX1 S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .C(\SUMB[2][1] ), .YC(
        \CARRYB[3][0] ), .YS(\A1[1] ) );
  FAX1 S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .C(\SUMB[2][2] ), .YC(
        \CARRYB[3][1] ), .YS(\SUMB[3][1] ) );
  FAX1 S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .C(\SUMB[2][3] ), .YC(
        \CARRYB[3][2] ), .YS(\SUMB[3][2] ) );
  FAX1 S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .C(\SUMB[2][4] ), .YC(
        \CARRYB[3][3] ), .YS(\SUMB[3][3] ) );
  FAX1 S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(\SUMB[2][5] ), .YC(
        \CARRYB[3][4] ), .YS(\SUMB[3][4] ) );
  FAX1 S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .C(\SUMB[2][6] ), .YC(
        \CARRYB[3][5] ), .YS(\SUMB[3][5] ) );
  FAX1 S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .C(n11), .YC(
        \CARRYB[3][6] ), .YS(\SUMB[3][6] ) );
  FAX1 S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .C(\SUMB[1][1] ), .YC(
        \CARRYB[2][0] ), .YS(\A1[0] ) );
  FAX1 S2_2_1 ( .A(\ab[2][1] ), .B(n24), .C(\SUMB[1][2] ), .YC(\CARRYB[2][1] ), 
        .YS(\SUMB[2][1] ) );
  FAX1 S2_2_2 ( .A(\ab[2][2] ), .B(n25), .C(\SUMB[1][3] ), .YC(\CARRYB[2][2] ), 
        .YS(\SUMB[2][2] ) );
  FAX1 S2_2_3 ( .A(\ab[2][3] ), .B(n26), .C(\SUMB[1][4] ), .YC(\CARRYB[2][3] ), 
        .YS(\SUMB[2][3] ) );
  FAX1 S2_2_4 ( .A(\ab[2][4] ), .B(n27), .C(\SUMB[1][5] ), .YC(\CARRYB[2][4] ), 
        .YS(\SUMB[2][4] ) );
  FAX1 S2_2_5 ( .A(\ab[2][5] ), .B(n28), .C(\SUMB[1][6] ), .YC(\CARRYB[2][5] ), 
        .YS(\SUMB[2][5] ) );
  FAX1 S3_2_6 ( .A(\ab[2][6] ), .B(n29), .C(n13), .YC(\CARRYB[2][6] ), .YS(
        \SUMB[2][6] ) );
  mul8_sv_6_DW01_add_0 FS_1 ( .A({n30, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , 
        \A1[0] }), .B({n22, n23, n21, n20, n19, n18, n17, \A2[6] , 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  AND2X1 U2 ( .A(B[4]), .B(A[6]), .Y(\ab[6][4] ) );
  AND2X1 U3 ( .A(B[5]), .B(A[6]), .Y(\ab[6][5] ) );
  AND2X1 U4 ( .A(B[3]), .B(A[6]), .Y(\ab[6][3] ) );
  AND2X1 U5 ( .A(B[1]), .B(A[6]), .Y(\ab[6][1] ) );
  AND2X1 U6 ( .A(B[2]), .B(A[6]), .Y(\ab[6][2] ) );
  AND2X1 U7 ( .A(B[6]), .B(A[6]), .Y(\ab[6][6] ) );
  AND2X1 U8 ( .A(B[0]), .B(A[6]), .Y(\ab[6][0] ) );
  OR2X1 U9 ( .A(n32), .B(A[5]), .Y(\ab[5][7] ) );
  INVX1 U10 ( .A(\ab[5][7] ), .Y(n3) );
  OR2X1 U11 ( .A(n32), .B(A[6]), .Y(\ab[6][7] ) );
  INVX1 U12 ( .A(\ab[6][7] ), .Y(n4) );
  OR2X1 U13 ( .A(n31), .B(B[6]), .Y(\ab[7][6] ) );
  INVX1 U14 ( .A(\ab[7][6] ), .Y(n5) );
  OR2X1 U15 ( .A(n31), .B(B[5]), .Y(\ab[7][5] ) );
  INVX1 U16 ( .A(\ab[7][5] ), .Y(n6) );
  OR2X1 U17 ( .A(n32), .B(A[4]), .Y(\ab[4][7] ) );
  INVX1 U18 ( .A(\ab[4][7] ), .Y(n7) );
  OR2X1 U19 ( .A(n31), .B(B[4]), .Y(\ab[7][4] ) );
  INVX1 U20 ( .A(\ab[7][4] ), .Y(n8) );
  AND2X1 U21 ( .A(n16), .B(\ab[1][6] ), .Y(n29) );
  OR2X1 U22 ( .A(n32), .B(A[3]), .Y(\ab[3][7] ) );
  INVX1 U23 ( .A(\ab[3][7] ), .Y(n9) );
  OR2X1 U24 ( .A(n31), .B(B[3]), .Y(\ab[7][3] ) );
  INVX1 U25 ( .A(\ab[7][3] ), .Y(n10) );
  OR2X1 U26 ( .A(n32), .B(A[2]), .Y(\ab[2][7] ) );
  INVX1 U27 ( .A(\ab[2][7] ), .Y(n11) );
  OR2X1 U28 ( .A(n31), .B(B[0]), .Y(\ab[7][0] ) );
  INVX1 U29 ( .A(\ab[7][0] ), .Y(n12) );
  AND2X1 U30 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n28) );
  OR2X1 U31 ( .A(n32), .B(A[1]), .Y(\ab[1][7] ) );
  INVX1 U32 ( .A(\ab[1][7] ), .Y(n13) );
  OR2X1 U33 ( .A(n31), .B(B[1]), .Y(\ab[7][1] ) );
  INVX1 U34 ( .A(\ab[7][1] ), .Y(n14) );
  AND2X1 U35 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n26) );
  AND2X1 U36 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n27) );
  AND2X1 U37 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n25) );
  AND2X1 U38 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n24) );
  OR2X1 U39 ( .A(n31), .B(B[2]), .Y(\ab[7][2] ) );
  INVX1 U40 ( .A(\ab[7][2] ), .Y(n15) );
  OR2X1 U41 ( .A(n32), .B(A[0]), .Y(\ab[0][7] ) );
  INVX1 U42 ( .A(\ab[0][7] ), .Y(n16) );
  INVX1 U43 ( .A(ZA), .Y(n31) );
  AND2X1 U44 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(n17) );
  AND2X1 U45 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(n18) );
  AND2X1 U46 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(n19) );
  AND2X1 U47 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(n20) );
  AND2X1 U48 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(n21) );
  AND2X1 U49 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(n22) );
  INVX1 U50 ( .A(\CARRYB[7][7] ), .Y(n30) );
  AND2X1 U51 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(n23) );
  INVX1 U52 ( .A(ZB), .Y(n32) );
  XOR2X1 U53 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(\A1[6] ) );
  XOR2X1 U54 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(\A1[7] ) );
  XOR2X1 U55 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(\A1[8] ) );
  XOR2X1 U56 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(\A1[9] ) );
  XOR2X1 U57 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(\A1[10] ) );
  XOR2X1 U58 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(\A1[11] ) );
  XOR2X1 U59 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(\A1[12] ) );
  XOR2X1 U60 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  XOR2X1 U61 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1 U62 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1 U63 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1 U64 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1 U65 ( .A(\ab[1][6] ), .B(n16), .Y(\SUMB[1][6] ) );
  AND2X1 U66 ( .A(ZA), .B(ZB), .Y(\ab[7][7] ) );
  AND2X1 U67 ( .A(A[5]), .B(B[6]), .Y(\ab[5][6] ) );
  AND2X1 U68 ( .A(A[5]), .B(B[5]), .Y(\ab[5][5] ) );
  AND2X1 U69 ( .A(A[5]), .B(B[4]), .Y(\ab[5][4] ) );
  AND2X1 U70 ( .A(A[5]), .B(B[3]), .Y(\ab[5][3] ) );
  AND2X1 U71 ( .A(A[5]), .B(B[2]), .Y(\ab[5][2] ) );
  AND2X1 U72 ( .A(A[5]), .B(B[1]), .Y(\ab[5][1] ) );
  AND2X1 U73 ( .A(A[5]), .B(B[0]), .Y(\ab[5][0] ) );
  AND2X1 U74 ( .A(A[4]), .B(B[6]), .Y(\ab[4][6] ) );
  AND2X1 U75 ( .A(A[4]), .B(B[5]), .Y(\ab[4][5] ) );
  AND2X1 U76 ( .A(A[4]), .B(B[4]), .Y(\ab[4][4] ) );
  AND2X1 U77 ( .A(A[4]), .B(B[3]), .Y(\ab[4][3] ) );
  AND2X1 U78 ( .A(A[4]), .B(B[2]), .Y(\ab[4][2] ) );
  AND2X1 U79 ( .A(A[4]), .B(B[1]), .Y(\ab[4][1] ) );
  AND2X1 U80 ( .A(A[4]), .B(B[0]), .Y(\ab[4][0] ) );
  AND2X1 U81 ( .A(A[3]), .B(B[6]), .Y(\ab[3][6] ) );
  AND2X1 U82 ( .A(A[3]), .B(B[5]), .Y(\ab[3][5] ) );
  AND2X1 U83 ( .A(A[3]), .B(B[4]), .Y(\ab[3][4] ) );
  AND2X1 U84 ( .A(A[3]), .B(B[3]), .Y(\ab[3][3] ) );
  AND2X1 U85 ( .A(A[3]), .B(B[2]), .Y(\ab[3][2] ) );
  AND2X1 U86 ( .A(A[3]), .B(B[1]), .Y(\ab[3][1] ) );
  AND2X1 U87 ( .A(A[3]), .B(B[0]), .Y(\ab[3][0] ) );
  AND2X1 U88 ( .A(A[2]), .B(B[6]), .Y(\ab[2][6] ) );
  AND2X1 U89 ( .A(A[2]), .B(B[5]), .Y(\ab[2][5] ) );
  AND2X1 U90 ( .A(A[2]), .B(B[4]), .Y(\ab[2][4] ) );
  AND2X1 U91 ( .A(A[2]), .B(B[3]), .Y(\ab[2][3] ) );
  AND2X1 U92 ( .A(A[2]), .B(B[2]), .Y(\ab[2][2] ) );
  AND2X1 U93 ( .A(A[2]), .B(B[1]), .Y(\ab[2][1] ) );
  AND2X1 U94 ( .A(A[2]), .B(B[0]), .Y(\ab[2][0] ) );
  AND2X1 U95 ( .A(A[1]), .B(B[6]), .Y(\ab[1][6] ) );
  AND2X1 U96 ( .A(A[1]), .B(B[5]), .Y(\ab[1][5] ) );
  AND2X1 U97 ( .A(A[1]), .B(B[4]), .Y(\ab[1][4] ) );
  AND2X1 U98 ( .A(A[1]), .B(B[3]), .Y(\ab[1][3] ) );
  AND2X1 U99 ( .A(A[1]), .B(B[2]), .Y(\ab[1][2] ) );
  AND2X1 U100 ( .A(A[0]), .B(B[6]), .Y(\ab[0][6] ) );
  AND2X1 U101 ( .A(A[0]), .B(B[5]), .Y(\ab[0][5] ) );
  AND2X1 U102 ( .A(A[0]), .B(B[4]), .Y(\ab[0][4] ) );
  AND2X1 U103 ( .A(A[0]), .B(B[3]), .Y(\ab[0][3] ) );
  AND2X1 U104 ( .A(A[0]), .B(B[2]), .Y(\ab[0][2] ) );
  AND2X1 U105 ( .A(PRODUCT[0]), .B(\ab[1][1] ), .Y(\CARRYB[1][0] ) );
  AND2X1 U106 ( .A(A[1]), .B(B[1]), .Y(\ab[1][1] ) );
  AND2X1 U107 ( .A(A[0]), .B(B[0]), .Y(PRODUCT[0]) );
endmodule


module mul8_sv_6 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;


  mul8_sv_6_DW02_mult_0 mult_46 ( .A(d1_in), .B(d2_in), .TC(1'b1), .PRODUCT(
        d_out) );
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


module unit_calc_sv_3_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
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
  mul8_sv_7 mul_xnin_ue ( .d1_in(x_N_in), .d2_in(ue_in), .d_out(xnin_ue) );
  u_scaling_sv_3 u1 ( .d_in(xnin_ue), .d_out(xnin_ue_scaled), .clock(clock) );
  add16_sv_3 add1 ( .d1_in(xnin_ue_scaled), .d2_in(coeff16), .d_out(
        new_coeff_true) );
  shift_1d_16_sv_3 delay_2 ( .xin(new_coeff_true), .xout(
        delayed_new_coeff_true), .clock(clock) );
  saturation_sv_3 sat_1 ( .d_in(delayed_new_coeff_true), .d_out(coeff16) );
  truncation_sv_7 trunc_1 ( .d_in(coeff16), .d_out(coeff8) );
  mul8_sv_6 mul_coeff_x_in ( .d1_in(coeff8), .d2_in(shiftx[31:24]), .d_out(
        y_out16) );
  truncation_sv_6 trunc_2 ( .d_in(y_out16), .d_out(y_out8) );
  unit_calc_sv_3_DW01_add_0 add_321 ( .A(y_out8), .B(shifty[7:0]), .CI(1'b0), 
        .SUM(y_out) );
endmodule


module mul8_sv_5_DW01_add_0 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43;
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AND2X1 U2 ( .A(n26), .B(n3), .Y(n24) );
  AND2X1 U3 ( .A(n41), .B(n2), .Y(n42) );
  AND2X1 U4 ( .A(n33), .B(n4), .Y(n34) );
  AND2X1 U5 ( .A(n35), .B(n10), .Y(n38) );
  INVX1 U6 ( .A(n38), .Y(n1) );
  AND2X1 U7 ( .A(B[10]), .B(A[10]), .Y(n40) );
  INVX1 U8 ( .A(n40), .Y(n2) );
  AND2X1 U9 ( .A(B[8]), .B(A[8]), .Y(n27) );
  INVX1 U10 ( .A(n27), .Y(n3) );
  AND2X1 U11 ( .A(B[12]), .B(A[12]), .Y(n32) );
  INVX1 U12 ( .A(n32), .Y(n4) );
  AND2X1 U13 ( .A(n22), .B(n13), .Y(n20) );
  INVX1 U14 ( .A(n20), .Y(n5) );
  INVX1 U15 ( .A(n42), .Y(n6) );
  BUFX2 U16 ( .A(n31), .Y(n7) );
  INVX1 U17 ( .A(n24), .Y(n8) );
  AND2X1 U18 ( .A(B[6]), .B(A[6]), .Y(n29) );
  INVX1 U19 ( .A(n29), .Y(n9) );
  AND2X1 U20 ( .A(B[11]), .B(A[11]), .Y(n37) );
  INVX1 U21 ( .A(n37), .Y(n10) );
  BUFX2 U22 ( .A(n39), .Y(n11) );
  INVX1 U23 ( .A(n34), .Y(n12) );
  AND2X1 U24 ( .A(B[9]), .B(A[9]), .Y(n23) );
  INVX1 U25 ( .A(n23), .Y(n13) );
  BUFX2 U26 ( .A(n25), .Y(n14) );
  INVX1 U27 ( .A(n41), .Y(n16) );
  INVX1 U28 ( .A(n26), .Y(n17) );
  INVX1 U29 ( .A(n33), .Y(n15) );
  INVX1 U30 ( .A(n43), .Y(n18) );
  INVX1 U31 ( .A(n28), .Y(SUM[6]) );
  XNOR2X1 U32 ( .A(n5), .B(n21), .Y(SUM[9]) );
  XOR2X1 U33 ( .A(n8), .B(n14), .Y(SUM[8]) );
  FAX1 U34 ( .A(B[7]), .B(A[7]), .C(n29), .YS(SUM[7]) );
  OAI21X1 U35 ( .A(B[6]), .B(A[6]), .C(n9), .Y(n28) );
  FAX1 U36 ( .A(B[13]), .B(A[13]), .C(n30), .YS(SUM[13]) );
  OAI21X1 U37 ( .A(n15), .B(n7), .C(n4), .Y(n30) );
  XOR2X1 U38 ( .A(n12), .B(n7), .Y(SUM[12]) );
  AOI21X1 U39 ( .A(n35), .B(n36), .C(n37), .Y(n31) );
  OR2X1 U40 ( .A(B[12]), .B(A[12]), .Y(n33) );
  XNOR2X1 U41 ( .A(n1), .B(n36), .Y(SUM[11]) );
  OAI21X1 U42 ( .A(n16), .B(n11), .C(n2), .Y(n36) );
  OR2X1 U43 ( .A(B[11]), .B(A[11]), .Y(n35) );
  XOR2X1 U44 ( .A(n6), .B(n11), .Y(SUM[10]) );
  AOI21X1 U45 ( .A(n21), .B(n22), .C(n23), .Y(n39) );
  OR2X1 U46 ( .A(B[9]), .B(A[9]), .Y(n22) );
  OAI21X1 U47 ( .A(n14), .B(n17), .C(n3), .Y(n21) );
  OR2X1 U48 ( .A(B[8]), .B(A[8]), .Y(n26) );
  AOI21X1 U49 ( .A(n29), .B(A[7]), .C(n18), .Y(n25) );
  OAI21X1 U50 ( .A(n29), .B(A[7]), .C(B[7]), .Y(n43) );
  OR2X1 U51 ( .A(B[10]), .B(A[10]), .Y(n41) );
endmodule


module mul8_sv_5_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] , \ab[0][3] ,
         \ab[0][2] , \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \CARRYB[1][0] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[7][0] ,
         \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] ,
         \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] , \SUMB[5][4] , \SUMB[5][3] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][6] ,
         \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] ,
         \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] ,
         \SUMB[1][1] , ZA, ZB, \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] ,
         \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] ,
         \A1[0] , \A2[6] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32;
  assign ZA = A[7];
  assign ZB = B[7];

  FAX1 S14_7_0 ( .A(ZA), .B(ZB), .C(\SUMB[7][0] ), .YC(\A2[6] ), .YS(\A1[5] )
         );
  FAX1 S4_0 ( .A(n10), .B(\CARRYB[6][0] ), .C(\SUMB[6][1] ), .YC(
        \CARRYB[7][0] ), .YS(\SUMB[7][0] ) );
  FAX1 S4_1 ( .A(n12), .B(\CARRYB[6][1] ), .C(\SUMB[6][2] ), .YC(
        \CARRYB[7][1] ), .YS(\SUMB[7][1] ) );
  FAX1 S4_2 ( .A(n8), .B(\CARRYB[6][2] ), .C(\SUMB[6][3] ), .YC(\CARRYB[7][2] ), .YS(\SUMB[7][2] ) );
  FAX1 S4_3 ( .A(n6), .B(\CARRYB[6][3] ), .C(\SUMB[6][4] ), .YC(\CARRYB[7][3] ), .YS(\SUMB[7][3] ) );
  FAX1 S4_4 ( .A(n4), .B(\CARRYB[6][4] ), .C(\SUMB[6][5] ), .YC(\CARRYB[7][4] ), .YS(\SUMB[7][4] ) );
  FAX1 S4_5 ( .A(n15), .B(\CARRYB[6][5] ), .C(\SUMB[6][6] ), .YC(
        \CARRYB[7][5] ), .YS(\SUMB[7][5] ) );
  FAX1 S5_6 ( .A(n14), .B(\CARRYB[6][6] ), .C(n13), .YC(\CARRYB[7][6] ), .YS(
        \SUMB[7][6] ) );
  FAX1 S14_7 ( .A(n31), .B(n32), .C(\ab[7][7] ), .YC(\CARRYB[7][7] ), .YS(
        \SUMB[7][7] ) );
  FAX1 S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .C(\SUMB[5][1] ), .YC(
        \CARRYB[6][0] ), .YS(\A1[4] ) );
  FAX1 S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .C(\SUMB[5][2] ), .YC(
        \CARRYB[6][1] ), .YS(\SUMB[6][1] ) );
  FAX1 S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .C(\SUMB[5][3] ), .YC(
        \CARRYB[6][2] ), .YS(\SUMB[6][2] ) );
  FAX1 S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .C(\SUMB[5][4] ), .YC(
        \CARRYB[6][3] ), .YS(\SUMB[6][3] ) );
  FAX1 S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .C(\SUMB[5][5] ), .YC(
        \CARRYB[6][4] ), .YS(\SUMB[6][4] ) );
  FAX1 S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .C(\SUMB[5][6] ), .YC(
        \CARRYB[6][5] ), .YS(\SUMB[6][5] ) );
  FAX1 S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .C(n5), .YC(\CARRYB[6][6] ), .YS(\SUMB[6][6] ) );
  FAX1 S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .C(\SUMB[4][1] ), .YC(
        \CARRYB[5][0] ), .YS(\A1[3] ) );
  FAX1 S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .C(\SUMB[4][2] ), .YC(
        \CARRYB[5][1] ), .YS(\SUMB[5][1] ) );
  FAX1 S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .C(\SUMB[4][3] ), .YC(
        \CARRYB[5][2] ), .YS(\SUMB[5][2] ) );
  FAX1 S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .C(\SUMB[4][4] ), .YC(
        \CARRYB[5][3] ), .YS(\SUMB[5][3] ) );
  FAX1 S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .C(\SUMB[4][5] ), .YC(
        \CARRYB[5][4] ), .YS(\SUMB[5][4] ) );
  FAX1 S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .C(\SUMB[4][6] ), .YC(
        \CARRYB[5][5] ), .YS(\SUMB[5][5] ) );
  FAX1 S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .C(n7), .YC(\CARRYB[5][6] ), .YS(\SUMB[5][6] ) );
  FAX1 S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .C(\SUMB[3][1] ), .YC(
        \CARRYB[4][0] ), .YS(\A1[2] ) );
  FAX1 S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .C(\SUMB[3][2] ), .YC(
        \CARRYB[4][1] ), .YS(\SUMB[4][1] ) );
  FAX1 S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .C(\SUMB[3][3] ), .YC(
        \CARRYB[4][2] ), .YS(\SUMB[4][2] ) );
  FAX1 S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .C(\SUMB[3][4] ), .YC(
        \CARRYB[4][3] ), .YS(\SUMB[4][3] ) );
  FAX1 S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .C(\SUMB[3][5] ), .YC(
        \CARRYB[4][4] ), .YS(\SUMB[4][4] ) );
  FAX1 S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .C(\SUMB[3][6] ), .YC(
        \CARRYB[4][5] ), .YS(\SUMB[4][5] ) );
  FAX1 S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .C(n9), .YC(\CARRYB[4][6] ), .YS(\SUMB[4][6] ) );
  FAX1 S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .C(\SUMB[2][1] ), .YC(
        \CARRYB[3][0] ), .YS(\A1[1] ) );
  FAX1 S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .C(\SUMB[2][2] ), .YC(
        \CARRYB[3][1] ), .YS(\SUMB[3][1] ) );
  FAX1 S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .C(\SUMB[2][3] ), .YC(
        \CARRYB[3][2] ), .YS(\SUMB[3][2] ) );
  FAX1 S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .C(\SUMB[2][4] ), .YC(
        \CARRYB[3][3] ), .YS(\SUMB[3][3] ) );
  FAX1 S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(\SUMB[2][5] ), .YC(
        \CARRYB[3][4] ), .YS(\SUMB[3][4] ) );
  FAX1 S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .C(\SUMB[2][6] ), .YC(
        \CARRYB[3][5] ), .YS(\SUMB[3][5] ) );
  FAX1 S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .C(n11), .YC(
        \CARRYB[3][6] ), .YS(\SUMB[3][6] ) );
  FAX1 S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .C(\SUMB[1][1] ), .YC(
        \CARRYB[2][0] ), .YS(\A1[0] ) );
  FAX1 S2_2_1 ( .A(\ab[2][1] ), .B(n24), .C(\SUMB[1][2] ), .YC(\CARRYB[2][1] ), 
        .YS(\SUMB[2][1] ) );
  FAX1 S2_2_2 ( .A(\ab[2][2] ), .B(n25), .C(\SUMB[1][3] ), .YC(\CARRYB[2][2] ), 
        .YS(\SUMB[2][2] ) );
  FAX1 S2_2_3 ( .A(\ab[2][3] ), .B(n26), .C(\SUMB[1][4] ), .YC(\CARRYB[2][3] ), 
        .YS(\SUMB[2][3] ) );
  FAX1 S2_2_4 ( .A(\ab[2][4] ), .B(n27), .C(\SUMB[1][5] ), .YC(\CARRYB[2][4] ), 
        .YS(\SUMB[2][4] ) );
  FAX1 S2_2_5 ( .A(\ab[2][5] ), .B(n28), .C(\SUMB[1][6] ), .YC(\CARRYB[2][5] ), 
        .YS(\SUMB[2][5] ) );
  FAX1 S3_2_6 ( .A(\ab[2][6] ), .B(n29), .C(n3), .YC(\CARRYB[2][6] ), .YS(
        \SUMB[2][6] ) );
  mul8_sv_5_DW01_add_0 FS_1 ( .A({n30, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , 
        \A1[0] }), .B({n23, n21, n22, n20, n19, n18, n17, \A2[6] , 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  OR2X1 U2 ( .A(n32), .B(A[1]), .Y(\ab[1][7] ) );
  INVX1 U3 ( .A(\ab[1][7] ), .Y(n3) );
  OR2X1 U4 ( .A(n31), .B(B[4]), .Y(\ab[7][4] ) );
  INVX1 U5 ( .A(\ab[7][4] ), .Y(n4) );
  OR2X1 U6 ( .A(n32), .B(A[5]), .Y(\ab[5][7] ) );
  INVX1 U7 ( .A(\ab[5][7] ), .Y(n5) );
  OR2X1 U8 ( .A(n31), .B(B[3]), .Y(\ab[7][3] ) );
  INVX1 U9 ( .A(\ab[7][3] ), .Y(n6) );
  AND2X1 U10 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(n23) );
  OR2X1 U11 ( .A(n32), .B(A[4]), .Y(\ab[4][7] ) );
  INVX1 U12 ( .A(\ab[4][7] ), .Y(n7) );
  OR2X1 U13 ( .A(n31), .B(B[2]), .Y(\ab[7][2] ) );
  INVX1 U14 ( .A(\ab[7][2] ), .Y(n8) );
  OR2X1 U15 ( .A(n32), .B(A[3]), .Y(\ab[3][7] ) );
  INVX1 U16 ( .A(\ab[3][7] ), .Y(n9) );
  OR2X1 U17 ( .A(n31), .B(B[0]), .Y(\ab[7][0] ) );
  INVX1 U18 ( .A(\ab[7][0] ), .Y(n10) );
  OR2X1 U19 ( .A(n32), .B(A[2]), .Y(\ab[2][7] ) );
  INVX1 U20 ( .A(\ab[2][7] ), .Y(n11) );
  OR2X1 U21 ( .A(n31), .B(B[1]), .Y(\ab[7][1] ) );
  INVX1 U22 ( .A(\ab[7][1] ), .Y(n12) );
  AND2X1 U23 ( .A(n16), .B(\ab[1][6] ), .Y(n29) );
  AND2X1 U24 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n28) );
  OR2X1 U25 ( .A(n32), .B(A[6]), .Y(\ab[6][7] ) );
  INVX1 U26 ( .A(\ab[6][7] ), .Y(n13) );
  OR2X1 U27 ( .A(n31), .B(B[6]), .Y(\ab[7][6] ) );
  INVX1 U28 ( .A(\ab[7][6] ), .Y(n14) );
  AND2X1 U29 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n24) );
  AND2X1 U30 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n26) );
  AND2X1 U31 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n27) );
  AND2X1 U32 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n25) );
  OR2X1 U33 ( .A(n31), .B(B[5]), .Y(\ab[7][5] ) );
  INVX1 U34 ( .A(\ab[7][5] ), .Y(n15) );
  OR2X1 U35 ( .A(n32), .B(A[0]), .Y(\ab[0][7] ) );
  INVX1 U36 ( .A(\ab[0][7] ), .Y(n16) );
  INVX1 U37 ( .A(\CARRYB[7][7] ), .Y(n30) );
  AND2X1 U38 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(n17) );
  AND2X1 U39 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(n18) );
  AND2X1 U40 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(n19) );
  AND2X1 U41 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(n20) );
  AND2X1 U42 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(n21) );
  AND2X1 U43 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(n22) );
  INVX1 U44 ( .A(ZA), .Y(n31) );
  INVX1 U45 ( .A(ZB), .Y(n32) );
  XOR2X1 U46 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(\A1[6] ) );
  XOR2X1 U47 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(\A1[7] ) );
  XOR2X1 U48 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(\A1[8] ) );
  XOR2X1 U49 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(\A1[9] ) );
  XOR2X1 U50 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(\A1[10] ) );
  XOR2X1 U51 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(\A1[11] ) );
  XOR2X1 U52 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(\A1[12] ) );
  XOR2X1 U53 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  XOR2X1 U54 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1 U55 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1 U56 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1 U57 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1 U58 ( .A(\ab[1][6] ), .B(n16), .Y(\SUMB[1][6] ) );
  AND2X1 U59 ( .A(ZA), .B(ZB), .Y(\ab[7][7] ) );
  AND2X1 U60 ( .A(B[6]), .B(A[6]), .Y(\ab[6][6] ) );
  AND2X1 U61 ( .A(B[5]), .B(A[6]), .Y(\ab[6][5] ) );
  AND2X1 U62 ( .A(B[4]), .B(A[6]), .Y(\ab[6][4] ) );
  AND2X1 U63 ( .A(B[3]), .B(A[6]), .Y(\ab[6][3] ) );
  AND2X1 U64 ( .A(B[2]), .B(A[6]), .Y(\ab[6][2] ) );
  AND2X1 U65 ( .A(B[1]), .B(A[6]), .Y(\ab[6][1] ) );
  AND2X1 U66 ( .A(B[0]), .B(A[6]), .Y(\ab[6][0] ) );
  AND2X1 U67 ( .A(A[5]), .B(B[6]), .Y(\ab[5][6] ) );
  AND2X1 U68 ( .A(A[5]), .B(B[5]), .Y(\ab[5][5] ) );
  AND2X1 U69 ( .A(A[5]), .B(B[4]), .Y(\ab[5][4] ) );
  AND2X1 U70 ( .A(A[5]), .B(B[3]), .Y(\ab[5][3] ) );
  AND2X1 U71 ( .A(A[5]), .B(B[2]), .Y(\ab[5][2] ) );
  AND2X1 U72 ( .A(A[5]), .B(B[1]), .Y(\ab[5][1] ) );
  AND2X1 U73 ( .A(A[5]), .B(B[0]), .Y(\ab[5][0] ) );
  AND2X1 U74 ( .A(A[4]), .B(B[6]), .Y(\ab[4][6] ) );
  AND2X1 U75 ( .A(A[4]), .B(B[5]), .Y(\ab[4][5] ) );
  AND2X1 U76 ( .A(A[4]), .B(B[4]), .Y(\ab[4][4] ) );
  AND2X1 U77 ( .A(A[4]), .B(B[3]), .Y(\ab[4][3] ) );
  AND2X1 U78 ( .A(A[4]), .B(B[2]), .Y(\ab[4][2] ) );
  AND2X1 U79 ( .A(A[4]), .B(B[1]), .Y(\ab[4][1] ) );
  AND2X1 U80 ( .A(A[4]), .B(B[0]), .Y(\ab[4][0] ) );
  AND2X1 U81 ( .A(A[3]), .B(B[6]), .Y(\ab[3][6] ) );
  AND2X1 U82 ( .A(A[3]), .B(B[5]), .Y(\ab[3][5] ) );
  AND2X1 U83 ( .A(A[3]), .B(B[4]), .Y(\ab[3][4] ) );
  AND2X1 U84 ( .A(A[3]), .B(B[3]), .Y(\ab[3][3] ) );
  AND2X1 U85 ( .A(A[3]), .B(B[2]), .Y(\ab[3][2] ) );
  AND2X1 U86 ( .A(A[3]), .B(B[1]), .Y(\ab[3][1] ) );
  AND2X1 U87 ( .A(A[3]), .B(B[0]), .Y(\ab[3][0] ) );
  AND2X1 U88 ( .A(A[2]), .B(B[6]), .Y(\ab[2][6] ) );
  AND2X1 U89 ( .A(A[2]), .B(B[5]), .Y(\ab[2][5] ) );
  AND2X1 U90 ( .A(A[2]), .B(B[4]), .Y(\ab[2][4] ) );
  AND2X1 U91 ( .A(A[2]), .B(B[3]), .Y(\ab[2][3] ) );
  AND2X1 U92 ( .A(A[2]), .B(B[2]), .Y(\ab[2][2] ) );
  AND2X1 U93 ( .A(A[2]), .B(B[1]), .Y(\ab[2][1] ) );
  AND2X1 U94 ( .A(A[2]), .B(B[0]), .Y(\ab[2][0] ) );
  AND2X1 U95 ( .A(A[1]), .B(B[6]), .Y(\ab[1][6] ) );
  AND2X1 U96 ( .A(A[1]), .B(B[5]), .Y(\ab[1][5] ) );
  AND2X1 U97 ( .A(A[1]), .B(B[4]), .Y(\ab[1][4] ) );
  AND2X1 U98 ( .A(A[1]), .B(B[3]), .Y(\ab[1][3] ) );
  AND2X1 U99 ( .A(A[1]), .B(B[2]), .Y(\ab[1][2] ) );
  AND2X1 U100 ( .A(A[0]), .B(B[6]), .Y(\ab[0][6] ) );
  AND2X1 U101 ( .A(A[0]), .B(B[5]), .Y(\ab[0][5] ) );
  AND2X1 U102 ( .A(A[0]), .B(B[4]), .Y(\ab[0][4] ) );
  AND2X1 U103 ( .A(A[0]), .B(B[3]), .Y(\ab[0][3] ) );
  AND2X1 U104 ( .A(A[0]), .B(B[2]), .Y(\ab[0][2] ) );
  AND2X1 U105 ( .A(PRODUCT[0]), .B(\ab[1][1] ), .Y(\CARRYB[1][0] ) );
  AND2X1 U106 ( .A(A[1]), .B(B[1]), .Y(\ab[1][1] ) );
  AND2X1 U107 ( .A(A[0]), .B(B[0]), .Y(PRODUCT[0]) );
endmodule


module mul8_sv_5 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;


  mul8_sv_5_DW02_mult_0 mult_46 ( .A(d1_in), .B(d2_in), .TC(1'b1), .PRODUCT(
        d_out) );
endmodule


module u_scaling_sv_2 ( d_in, d_out, clock );
  input [15:0] d_in;
  output [15:0] d_out;
  input clock;


  DFFPOSX1 \d_out_reg_reg[15]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[15]) );
  DFFPOSX1 \d_out_reg_reg[14]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[14]) );
  DFFPOSX1 \d_out_reg_reg[13]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[13]) );
  DFFPOSX1 \d_out_reg_reg[12]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[12]) );
  DFFPOSX1 \d_out_reg_reg[11]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[11]) );
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


module add16_sv_2_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module add16_sv_2 ( d1_in, d2_in, d_out );
  input [15:0] d1_in;
  input [15:0] d2_in;
  output [15:0] d_out;


  add16_sv_2_DW01_add_0 add_9 ( .A(d1_in), .B(d2_in), .CI(1'b0), .SUM(d_out)
         );
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


module saturation_sv_2 ( d_in, d_out );
  input [15:0] d_in;
  output [15:0] d_out;
  wire   \d_in[15] , n15, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13,
         n14;
  assign d_out[15] = \d_in[15] ;
  assign \d_in[15]  = d_in[15];

  AND2X1 U3 ( .A(n1), .B(n3), .Y(n6) );
  AND2X1 U4 ( .A(\d_in[15] ), .B(n4), .Y(n8) );
  AND2X1 U5 ( .A(n2), .B(n14), .Y(n10) );
  INVX1 U6 ( .A(n10), .Y(n1) );
  BUFX2 U7 ( .A(n13), .Y(n2) );
  INVX1 U8 ( .A(n8), .Y(n3) );
  BUFX2 U9 ( .A(n12), .Y(n4) );
  AND2X1 U10 ( .A(n6), .B(n11), .Y(n15) );
  INVX1 U11 ( .A(n15), .Y(d_out[12]) );
  AND2X1 U12 ( .A(d_in[9]), .B(n6), .Y(d_out[9]) );
  AND2X1 U13 ( .A(d_in[8]), .B(n6), .Y(d_out[8]) );
  AND2X1 U14 ( .A(d_in[7]), .B(n6), .Y(d_out[7]) );
  AND2X1 U15 ( .A(d_in[6]), .B(n6), .Y(d_out[6]) );
  AND2X1 U16 ( .A(d_in[5]), .B(n6), .Y(d_out[5]) );
  AND2X1 U17 ( .A(d_in[4]), .B(n6), .Y(d_out[4]) );
  AND2X1 U18 ( .A(d_in[3]), .B(n6), .Y(d_out[3]) );
  AND2X1 U19 ( .A(d_in[2]), .B(n6), .Y(d_out[2]) );
  AND2X1 U20 ( .A(d_in[1]), .B(n6), .Y(d_out[1]) );
  OAI21X1 U21 ( .A(n10), .B(n7), .C(n3), .Y(d_out[14]) );
  OAI21X1 U22 ( .A(n10), .B(n9), .C(n3), .Y(d_out[13]) );
  AND2X1 U23 ( .A(d_in[11]), .B(n6), .Y(d_out[11]) );
  AND2X1 U24 ( .A(d_in[10]), .B(n6), .Y(d_out[10]) );
  AND2X1 U25 ( .A(d_in[0]), .B(n6), .Y(d_out[0]) );
  NAND3X1 U26 ( .A(d_in[13]), .B(d_in[12]), .C(d_in[14]), .Y(n12) );
  INVX1 U27 ( .A(\d_in[15] ), .Y(n14) );
  NAND3X1 U28 ( .A(n9), .B(n7), .C(n11), .Y(n13) );
  INVX1 U29 ( .A(d_in[12]), .Y(n11) );
  INVX1 U30 ( .A(d_in[14]), .Y(n7) );
  INVX1 U31 ( .A(d_in[13]), .Y(n9) );
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


module mul8_sv_4_DW01_add_0 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43;
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AND2X1 U2 ( .A(n26), .B(n6), .Y(n24) );
  AND2X1 U3 ( .A(n41), .B(n2), .Y(n42) );
  AND2X1 U4 ( .A(n35), .B(n13), .Y(n38) );
  INVX1 U5 ( .A(n38), .Y(n1) );
  AND2X1 U6 ( .A(B[10]), .B(A[10]), .Y(n40) );
  INVX1 U7 ( .A(n40), .Y(n2) );
  AND2X1 U8 ( .A(n22), .B(n11), .Y(n20) );
  INVX1 U9 ( .A(n20), .Y(n3) );
  AND2X1 U10 ( .A(n33), .B(n8), .Y(n34) );
  INVX1 U11 ( .A(n34), .Y(n4) );
  INVX1 U12 ( .A(n42), .Y(n5) );
  AND2X1 U13 ( .A(B[8]), .B(A[8]), .Y(n27) );
  INVX1 U14 ( .A(n27), .Y(n6) );
  INVX1 U15 ( .A(n24), .Y(n7) );
  AND2X1 U16 ( .A(B[12]), .B(A[12]), .Y(n32) );
  INVX1 U17 ( .A(n32), .Y(n8) );
  BUFX2 U18 ( .A(n39), .Y(n9) );
  AND2X1 U19 ( .A(B[6]), .B(A[6]), .Y(n29) );
  INVX1 U20 ( .A(n29), .Y(n10) );
  AND2X1 U21 ( .A(B[9]), .B(A[9]), .Y(n23) );
  INVX1 U22 ( .A(n23), .Y(n11) );
  BUFX2 U23 ( .A(n31), .Y(n12) );
  AND2X1 U24 ( .A(B[11]), .B(A[11]), .Y(n37) );
  INVX1 U25 ( .A(n37), .Y(n13) );
  BUFX2 U26 ( .A(n25), .Y(n14) );
  INVX1 U27 ( .A(n41), .Y(n16) );
  INVX1 U28 ( .A(n26), .Y(n17) );
  INVX1 U29 ( .A(n33), .Y(n15) );
  INVX1 U30 ( .A(n43), .Y(n18) );
  INVX1 U31 ( .A(n28), .Y(SUM[6]) );
  XNOR2X1 U32 ( .A(n3), .B(n21), .Y(SUM[9]) );
  XOR2X1 U33 ( .A(n7), .B(n14), .Y(SUM[8]) );
  FAX1 U34 ( .A(B[7]), .B(A[7]), .C(n29), .YS(SUM[7]) );
  OAI21X1 U35 ( .A(B[6]), .B(A[6]), .C(n10), .Y(n28) );
  FAX1 U36 ( .A(B[13]), .B(A[13]), .C(n30), .YS(SUM[13]) );
  OAI21X1 U37 ( .A(n15), .B(n12), .C(n8), .Y(n30) );
  XOR2X1 U38 ( .A(n4), .B(n12), .Y(SUM[12]) );
  AOI21X1 U39 ( .A(n35), .B(n36), .C(n37), .Y(n31) );
  OR2X1 U40 ( .A(B[12]), .B(A[12]), .Y(n33) );
  XNOR2X1 U41 ( .A(n1), .B(n36), .Y(SUM[11]) );
  OAI21X1 U42 ( .A(n16), .B(n9), .C(n2), .Y(n36) );
  OR2X1 U43 ( .A(B[11]), .B(A[11]), .Y(n35) );
  XOR2X1 U44 ( .A(n5), .B(n9), .Y(SUM[10]) );
  AOI21X1 U45 ( .A(n21), .B(n22), .C(n23), .Y(n39) );
  OR2X1 U46 ( .A(B[9]), .B(A[9]), .Y(n22) );
  OAI21X1 U47 ( .A(n14), .B(n17), .C(n6), .Y(n21) );
  OR2X1 U48 ( .A(B[8]), .B(A[8]), .Y(n26) );
  AOI21X1 U49 ( .A(n29), .B(A[7]), .C(n18), .Y(n25) );
  OAI21X1 U50 ( .A(n29), .B(A[7]), .C(B[7]), .Y(n43) );
  OR2X1 U51 ( .A(B[10]), .B(A[10]), .Y(n41) );
endmodule


module mul8_sv_4_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] , \ab[0][3] ,
         \ab[0][2] , \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \CARRYB[1][0] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[7][0] ,
         \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] ,
         \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] , \SUMB[5][4] , \SUMB[5][3] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][6] ,
         \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] ,
         \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] ,
         \SUMB[1][1] , ZA, ZB, \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] ,
         \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] ,
         \A1[0] , \A2[6] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32;
  assign ZA = A[7];
  assign ZB = B[7];

  FAX1 S14_7_0 ( .A(ZA), .B(ZB), .C(\SUMB[7][0] ), .YC(\A2[6] ), .YS(\A1[5] )
         );
  FAX1 S4_0 ( .A(n12), .B(\CARRYB[6][0] ), .C(\SUMB[6][1] ), .YC(
        \CARRYB[7][0] ), .YS(\SUMB[7][0] ) );
  FAX1 S4_1 ( .A(n14), .B(\CARRYB[6][1] ), .C(\SUMB[6][2] ), .YC(
        \CARRYB[7][1] ), .YS(\SUMB[7][1] ) );
  FAX1 S4_2 ( .A(n15), .B(\CARRYB[6][2] ), .C(\SUMB[6][3] ), .YC(
        \CARRYB[7][2] ), .YS(\SUMB[7][2] ) );
  FAX1 S4_3 ( .A(n10), .B(\CARRYB[6][3] ), .C(\SUMB[6][4] ), .YC(
        \CARRYB[7][3] ), .YS(\SUMB[7][3] ) );
  FAX1 S4_4 ( .A(n8), .B(\CARRYB[6][4] ), .C(\SUMB[6][5] ), .YC(\CARRYB[7][4] ), .YS(\SUMB[7][4] ) );
  FAX1 S4_5 ( .A(n6), .B(\CARRYB[6][5] ), .C(\SUMB[6][6] ), .YC(\CARRYB[7][5] ), .YS(\SUMB[7][5] ) );
  FAX1 S5_6 ( .A(n5), .B(\CARRYB[6][6] ), .C(n4), .YC(\CARRYB[7][6] ), .YS(
        \SUMB[7][6] ) );
  FAX1 S14_7 ( .A(n31), .B(n32), .C(\ab[7][7] ), .YC(\CARRYB[7][7] ), .YS(
        \SUMB[7][7] ) );
  FAX1 S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .C(\SUMB[5][1] ), .YC(
        \CARRYB[6][0] ), .YS(\A1[4] ) );
  FAX1 S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .C(\SUMB[5][2] ), .YC(
        \CARRYB[6][1] ), .YS(\SUMB[6][1] ) );
  FAX1 S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .C(\SUMB[5][3] ), .YC(
        \CARRYB[6][2] ), .YS(\SUMB[6][2] ) );
  FAX1 S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .C(\SUMB[5][4] ), .YC(
        \CARRYB[6][3] ), .YS(\SUMB[6][3] ) );
  FAX1 S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .C(\SUMB[5][5] ), .YC(
        \CARRYB[6][4] ), .YS(\SUMB[6][4] ) );
  FAX1 S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .C(\SUMB[5][6] ), .YC(
        \CARRYB[6][5] ), .YS(\SUMB[6][5] ) );
  FAX1 S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .C(n3), .YC(\CARRYB[6][6] ), .YS(\SUMB[6][6] ) );
  FAX1 S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .C(\SUMB[4][1] ), .YC(
        \CARRYB[5][0] ), .YS(\A1[3] ) );
  FAX1 S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .C(\SUMB[4][2] ), .YC(
        \CARRYB[5][1] ), .YS(\SUMB[5][1] ) );
  FAX1 S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .C(\SUMB[4][3] ), .YC(
        \CARRYB[5][2] ), .YS(\SUMB[5][2] ) );
  FAX1 S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .C(\SUMB[4][4] ), .YC(
        \CARRYB[5][3] ), .YS(\SUMB[5][3] ) );
  FAX1 S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .C(\SUMB[4][5] ), .YC(
        \CARRYB[5][4] ), .YS(\SUMB[5][4] ) );
  FAX1 S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .C(\SUMB[4][6] ), .YC(
        \CARRYB[5][5] ), .YS(\SUMB[5][5] ) );
  FAX1 S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .C(n7), .YC(\CARRYB[5][6] ), .YS(\SUMB[5][6] ) );
  FAX1 S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .C(\SUMB[3][1] ), .YC(
        \CARRYB[4][0] ), .YS(\A1[2] ) );
  FAX1 S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .C(\SUMB[3][2] ), .YC(
        \CARRYB[4][1] ), .YS(\SUMB[4][1] ) );
  FAX1 S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .C(\SUMB[3][3] ), .YC(
        \CARRYB[4][2] ), .YS(\SUMB[4][2] ) );
  FAX1 S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .C(\SUMB[3][4] ), .YC(
        \CARRYB[4][3] ), .YS(\SUMB[4][3] ) );
  FAX1 S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .C(\SUMB[3][5] ), .YC(
        \CARRYB[4][4] ), .YS(\SUMB[4][4] ) );
  FAX1 S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .C(\SUMB[3][6] ), .YC(
        \CARRYB[4][5] ), .YS(\SUMB[4][5] ) );
  FAX1 S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .C(n9), .YC(\CARRYB[4][6] ), .YS(\SUMB[4][6] ) );
  FAX1 S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .C(\SUMB[2][1] ), .YC(
        \CARRYB[3][0] ), .YS(\A1[1] ) );
  FAX1 S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .C(\SUMB[2][2] ), .YC(
        \CARRYB[3][1] ), .YS(\SUMB[3][1] ) );
  FAX1 S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .C(\SUMB[2][3] ), .YC(
        \CARRYB[3][2] ), .YS(\SUMB[3][2] ) );
  FAX1 S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .C(\SUMB[2][4] ), .YC(
        \CARRYB[3][3] ), .YS(\SUMB[3][3] ) );
  FAX1 S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(\SUMB[2][5] ), .YC(
        \CARRYB[3][4] ), .YS(\SUMB[3][4] ) );
  FAX1 S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .C(\SUMB[2][6] ), .YC(
        \CARRYB[3][5] ), .YS(\SUMB[3][5] ) );
  FAX1 S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .C(n11), .YC(
        \CARRYB[3][6] ), .YS(\SUMB[3][6] ) );
  FAX1 S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .C(\SUMB[1][1] ), .YC(
        \CARRYB[2][0] ), .YS(\A1[0] ) );
  FAX1 S2_2_1 ( .A(\ab[2][1] ), .B(n24), .C(\SUMB[1][2] ), .YC(\CARRYB[2][1] ), 
        .YS(\SUMB[2][1] ) );
  FAX1 S2_2_2 ( .A(\ab[2][2] ), .B(n25), .C(\SUMB[1][3] ), .YC(\CARRYB[2][2] ), 
        .YS(\SUMB[2][2] ) );
  FAX1 S2_2_3 ( .A(\ab[2][3] ), .B(n26), .C(\SUMB[1][4] ), .YC(\CARRYB[2][3] ), 
        .YS(\SUMB[2][3] ) );
  FAX1 S2_2_4 ( .A(\ab[2][4] ), .B(n27), .C(\SUMB[1][5] ), .YC(\CARRYB[2][4] ), 
        .YS(\SUMB[2][4] ) );
  FAX1 S2_2_5 ( .A(\ab[2][5] ), .B(n28), .C(\SUMB[1][6] ), .YC(\CARRYB[2][5] ), 
        .YS(\SUMB[2][5] ) );
  FAX1 S3_2_6 ( .A(\ab[2][6] ), .B(n29), .C(n13), .YC(\CARRYB[2][6] ), .YS(
        \SUMB[2][6] ) );
  mul8_sv_4_DW01_add_0 FS_1 ( .A({n30, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , 
        \A1[0] }), .B({n22, n23, n21, n20, n19, n18, n17, \A2[6] , 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  AND2X1 U2 ( .A(B[4]), .B(A[6]), .Y(\ab[6][4] ) );
  AND2X1 U3 ( .A(B[5]), .B(A[6]), .Y(\ab[6][5] ) );
  AND2X1 U4 ( .A(B[3]), .B(A[6]), .Y(\ab[6][3] ) );
  AND2X1 U5 ( .A(B[1]), .B(A[6]), .Y(\ab[6][1] ) );
  AND2X1 U6 ( .A(B[2]), .B(A[6]), .Y(\ab[6][2] ) );
  AND2X1 U7 ( .A(B[6]), .B(A[6]), .Y(\ab[6][6] ) );
  AND2X1 U8 ( .A(B[0]), .B(A[6]), .Y(\ab[6][0] ) );
  OR2X1 U9 ( .A(n32), .B(A[5]), .Y(\ab[5][7] ) );
  INVX1 U10 ( .A(\ab[5][7] ), .Y(n3) );
  OR2X1 U11 ( .A(n32), .B(A[6]), .Y(\ab[6][7] ) );
  INVX1 U12 ( .A(\ab[6][7] ), .Y(n4) );
  OR2X1 U13 ( .A(n31), .B(B[6]), .Y(\ab[7][6] ) );
  INVX1 U14 ( .A(\ab[7][6] ), .Y(n5) );
  OR2X1 U15 ( .A(n31), .B(B[5]), .Y(\ab[7][5] ) );
  INVX1 U16 ( .A(\ab[7][5] ), .Y(n6) );
  OR2X1 U17 ( .A(n32), .B(A[4]), .Y(\ab[4][7] ) );
  INVX1 U18 ( .A(\ab[4][7] ), .Y(n7) );
  OR2X1 U19 ( .A(n31), .B(B[4]), .Y(\ab[7][4] ) );
  INVX1 U20 ( .A(\ab[7][4] ), .Y(n8) );
  AND2X1 U21 ( .A(n16), .B(\ab[1][6] ), .Y(n29) );
  OR2X1 U22 ( .A(n32), .B(A[3]), .Y(\ab[3][7] ) );
  INVX1 U23 ( .A(\ab[3][7] ), .Y(n9) );
  OR2X1 U24 ( .A(n31), .B(B[3]), .Y(\ab[7][3] ) );
  INVX1 U25 ( .A(\ab[7][3] ), .Y(n10) );
  OR2X1 U26 ( .A(n32), .B(A[2]), .Y(\ab[2][7] ) );
  INVX1 U27 ( .A(\ab[2][7] ), .Y(n11) );
  OR2X1 U28 ( .A(n31), .B(B[0]), .Y(\ab[7][0] ) );
  INVX1 U29 ( .A(\ab[7][0] ), .Y(n12) );
  AND2X1 U30 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n28) );
  OR2X1 U31 ( .A(n32), .B(A[1]), .Y(\ab[1][7] ) );
  INVX1 U32 ( .A(\ab[1][7] ), .Y(n13) );
  OR2X1 U33 ( .A(n31), .B(B[1]), .Y(\ab[7][1] ) );
  INVX1 U34 ( .A(\ab[7][1] ), .Y(n14) );
  AND2X1 U35 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n26) );
  AND2X1 U36 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n27) );
  AND2X1 U37 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n25) );
  AND2X1 U38 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n24) );
  OR2X1 U39 ( .A(n31), .B(B[2]), .Y(\ab[7][2] ) );
  INVX1 U40 ( .A(\ab[7][2] ), .Y(n15) );
  OR2X1 U41 ( .A(n32), .B(A[0]), .Y(\ab[0][7] ) );
  INVX1 U42 ( .A(\ab[0][7] ), .Y(n16) );
  INVX1 U43 ( .A(ZA), .Y(n31) );
  AND2X1 U44 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(n17) );
  AND2X1 U45 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(n18) );
  AND2X1 U46 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(n19) );
  AND2X1 U47 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(n20) );
  AND2X1 U48 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(n21) );
  AND2X1 U49 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(n22) );
  INVX1 U50 ( .A(\CARRYB[7][7] ), .Y(n30) );
  AND2X1 U51 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(n23) );
  INVX1 U52 ( .A(ZB), .Y(n32) );
  XOR2X1 U53 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(\A1[6] ) );
  XOR2X1 U54 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(\A1[7] ) );
  XOR2X1 U55 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(\A1[8] ) );
  XOR2X1 U56 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(\A1[9] ) );
  XOR2X1 U57 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(\A1[10] ) );
  XOR2X1 U58 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(\A1[11] ) );
  XOR2X1 U59 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(\A1[12] ) );
  XOR2X1 U60 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  XOR2X1 U61 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1 U62 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1 U63 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1 U64 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1 U65 ( .A(\ab[1][6] ), .B(n16), .Y(\SUMB[1][6] ) );
  AND2X1 U66 ( .A(ZA), .B(ZB), .Y(\ab[7][7] ) );
  AND2X1 U67 ( .A(A[5]), .B(B[6]), .Y(\ab[5][6] ) );
  AND2X1 U68 ( .A(A[5]), .B(B[5]), .Y(\ab[5][5] ) );
  AND2X1 U69 ( .A(A[5]), .B(B[4]), .Y(\ab[5][4] ) );
  AND2X1 U70 ( .A(A[5]), .B(B[3]), .Y(\ab[5][3] ) );
  AND2X1 U71 ( .A(A[5]), .B(B[2]), .Y(\ab[5][2] ) );
  AND2X1 U72 ( .A(A[5]), .B(B[1]), .Y(\ab[5][1] ) );
  AND2X1 U73 ( .A(A[5]), .B(B[0]), .Y(\ab[5][0] ) );
  AND2X1 U74 ( .A(A[4]), .B(B[6]), .Y(\ab[4][6] ) );
  AND2X1 U75 ( .A(A[4]), .B(B[5]), .Y(\ab[4][5] ) );
  AND2X1 U76 ( .A(A[4]), .B(B[4]), .Y(\ab[4][4] ) );
  AND2X1 U77 ( .A(A[4]), .B(B[3]), .Y(\ab[4][3] ) );
  AND2X1 U78 ( .A(A[4]), .B(B[2]), .Y(\ab[4][2] ) );
  AND2X1 U79 ( .A(A[4]), .B(B[1]), .Y(\ab[4][1] ) );
  AND2X1 U80 ( .A(A[4]), .B(B[0]), .Y(\ab[4][0] ) );
  AND2X1 U81 ( .A(A[3]), .B(B[6]), .Y(\ab[3][6] ) );
  AND2X1 U82 ( .A(A[3]), .B(B[5]), .Y(\ab[3][5] ) );
  AND2X1 U83 ( .A(A[3]), .B(B[4]), .Y(\ab[3][4] ) );
  AND2X1 U84 ( .A(A[3]), .B(B[3]), .Y(\ab[3][3] ) );
  AND2X1 U85 ( .A(A[3]), .B(B[2]), .Y(\ab[3][2] ) );
  AND2X1 U86 ( .A(A[3]), .B(B[1]), .Y(\ab[3][1] ) );
  AND2X1 U87 ( .A(A[3]), .B(B[0]), .Y(\ab[3][0] ) );
  AND2X1 U88 ( .A(A[2]), .B(B[6]), .Y(\ab[2][6] ) );
  AND2X1 U89 ( .A(A[2]), .B(B[5]), .Y(\ab[2][5] ) );
  AND2X1 U90 ( .A(A[2]), .B(B[4]), .Y(\ab[2][4] ) );
  AND2X1 U91 ( .A(A[2]), .B(B[3]), .Y(\ab[2][3] ) );
  AND2X1 U92 ( .A(A[2]), .B(B[2]), .Y(\ab[2][2] ) );
  AND2X1 U93 ( .A(A[2]), .B(B[1]), .Y(\ab[2][1] ) );
  AND2X1 U94 ( .A(A[2]), .B(B[0]), .Y(\ab[2][0] ) );
  AND2X1 U95 ( .A(A[1]), .B(B[6]), .Y(\ab[1][6] ) );
  AND2X1 U96 ( .A(A[1]), .B(B[5]), .Y(\ab[1][5] ) );
  AND2X1 U97 ( .A(A[1]), .B(B[4]), .Y(\ab[1][4] ) );
  AND2X1 U98 ( .A(A[1]), .B(B[3]), .Y(\ab[1][3] ) );
  AND2X1 U99 ( .A(A[1]), .B(B[2]), .Y(\ab[1][2] ) );
  AND2X1 U100 ( .A(A[0]), .B(B[6]), .Y(\ab[0][6] ) );
  AND2X1 U101 ( .A(A[0]), .B(B[5]), .Y(\ab[0][5] ) );
  AND2X1 U102 ( .A(A[0]), .B(B[4]), .Y(\ab[0][4] ) );
  AND2X1 U103 ( .A(A[0]), .B(B[3]), .Y(\ab[0][3] ) );
  AND2X1 U104 ( .A(A[0]), .B(B[2]), .Y(\ab[0][2] ) );
  AND2X1 U105 ( .A(PRODUCT[0]), .B(\ab[1][1] ), .Y(\CARRYB[1][0] ) );
  AND2X1 U106 ( .A(A[1]), .B(B[1]), .Y(\ab[1][1] ) );
  AND2X1 U107 ( .A(A[0]), .B(B[0]), .Y(PRODUCT[0]) );
endmodule


module mul8_sv_4 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;


  mul8_sv_4_DW02_mult_0 mult_46 ( .A(d1_in), .B(d2_in), .TC(1'b1), .PRODUCT(
        d_out) );
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


module unit_calc_sv_2_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
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
  mul8_sv_5 mul_xnin_ue ( .d1_in(x_N_in), .d2_in(ue_in), .d_out(xnin_ue) );
  u_scaling_sv_2 u1 ( .d_in(xnin_ue), .d_out(xnin_ue_scaled), .clock(clock) );
  add16_sv_2 add1 ( .d1_in(xnin_ue_scaled), .d2_in(coeff16), .d_out(
        new_coeff_true) );
  shift_1d_16_sv_2 delay_2 ( .xin(new_coeff_true), .xout(
        delayed_new_coeff_true), .clock(clock) );
  saturation_sv_2 sat_1 ( .d_in(delayed_new_coeff_true), .d_out(coeff16) );
  truncation_sv_5 trunc_1 ( .d_in(coeff16), .d_out(coeff8) );
  mul8_sv_4 mul_coeff_x_in ( .d1_in(coeff8), .d2_in(shiftx[31:24]), .d_out(
        y_out16) );
  truncation_sv_4 trunc_2 ( .d_in(y_out16), .d_out(y_out8) );
  unit_calc_sv_2_DW01_add_0 add_321 ( .A(y_out8), .B(shifty[7:0]), .CI(1'b0), 
        .SUM(y_out) );
endmodule


module mul8_sv_3_DW01_add_0 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43;
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AND2X1 U2 ( .A(n26), .B(n3), .Y(n24) );
  AND2X1 U3 ( .A(n41), .B(n2), .Y(n42) );
  AND2X1 U4 ( .A(n33), .B(n4), .Y(n34) );
  AND2X1 U5 ( .A(n35), .B(n10), .Y(n38) );
  INVX1 U6 ( .A(n38), .Y(n1) );
  AND2X1 U7 ( .A(B[10]), .B(A[10]), .Y(n40) );
  INVX1 U8 ( .A(n40), .Y(n2) );
  AND2X1 U9 ( .A(B[8]), .B(A[8]), .Y(n27) );
  INVX1 U10 ( .A(n27), .Y(n3) );
  AND2X1 U11 ( .A(B[12]), .B(A[12]), .Y(n32) );
  INVX1 U12 ( .A(n32), .Y(n4) );
  AND2X1 U13 ( .A(n22), .B(n13), .Y(n20) );
  INVX1 U14 ( .A(n20), .Y(n5) );
  INVX1 U15 ( .A(n42), .Y(n6) );
  BUFX2 U16 ( .A(n31), .Y(n7) );
  INVX1 U17 ( .A(n24), .Y(n8) );
  AND2X1 U18 ( .A(B[6]), .B(A[6]), .Y(n29) );
  INVX1 U19 ( .A(n29), .Y(n9) );
  AND2X1 U20 ( .A(B[11]), .B(A[11]), .Y(n37) );
  INVX1 U21 ( .A(n37), .Y(n10) );
  BUFX2 U22 ( .A(n39), .Y(n11) );
  INVX1 U23 ( .A(n34), .Y(n12) );
  AND2X1 U24 ( .A(B[9]), .B(A[9]), .Y(n23) );
  INVX1 U25 ( .A(n23), .Y(n13) );
  BUFX2 U26 ( .A(n25), .Y(n14) );
  INVX1 U27 ( .A(n41), .Y(n16) );
  INVX1 U28 ( .A(n26), .Y(n17) );
  INVX1 U29 ( .A(n33), .Y(n15) );
  INVX1 U30 ( .A(n43), .Y(n18) );
  INVX1 U31 ( .A(n28), .Y(SUM[6]) );
  XNOR2X1 U32 ( .A(n5), .B(n21), .Y(SUM[9]) );
  XOR2X1 U33 ( .A(n8), .B(n14), .Y(SUM[8]) );
  FAX1 U34 ( .A(B[7]), .B(A[7]), .C(n29), .YS(SUM[7]) );
  OAI21X1 U35 ( .A(B[6]), .B(A[6]), .C(n9), .Y(n28) );
  FAX1 U36 ( .A(B[13]), .B(A[13]), .C(n30), .YS(SUM[13]) );
  OAI21X1 U37 ( .A(n15), .B(n7), .C(n4), .Y(n30) );
  XOR2X1 U38 ( .A(n12), .B(n7), .Y(SUM[12]) );
  AOI21X1 U39 ( .A(n35), .B(n36), .C(n37), .Y(n31) );
  OR2X1 U40 ( .A(B[12]), .B(A[12]), .Y(n33) );
  XNOR2X1 U41 ( .A(n1), .B(n36), .Y(SUM[11]) );
  OAI21X1 U42 ( .A(n16), .B(n11), .C(n2), .Y(n36) );
  OR2X1 U43 ( .A(B[11]), .B(A[11]), .Y(n35) );
  XOR2X1 U44 ( .A(n6), .B(n11), .Y(SUM[10]) );
  AOI21X1 U45 ( .A(n21), .B(n22), .C(n23), .Y(n39) );
  OR2X1 U46 ( .A(B[9]), .B(A[9]), .Y(n22) );
  OAI21X1 U47 ( .A(n14), .B(n17), .C(n3), .Y(n21) );
  OR2X1 U48 ( .A(B[8]), .B(A[8]), .Y(n26) );
  AOI21X1 U49 ( .A(n29), .B(A[7]), .C(n18), .Y(n25) );
  OAI21X1 U50 ( .A(n29), .B(A[7]), .C(B[7]), .Y(n43) );
  OR2X1 U51 ( .A(B[10]), .B(A[10]), .Y(n41) );
endmodule


module mul8_sv_3_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] , \ab[0][3] ,
         \ab[0][2] , \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \CARRYB[1][0] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[7][0] ,
         \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] ,
         \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] , \SUMB[5][4] , \SUMB[5][3] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][6] ,
         \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] ,
         \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] ,
         \SUMB[1][1] , ZA, ZB, \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] ,
         \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] ,
         \A1[0] , \A2[6] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32;
  assign ZA = A[7];
  assign ZB = B[7];

  FAX1 S14_7_0 ( .A(ZA), .B(ZB), .C(\SUMB[7][0] ), .YC(\A2[6] ), .YS(\A1[5] )
         );
  FAX1 S4_0 ( .A(n10), .B(\CARRYB[6][0] ), .C(\SUMB[6][1] ), .YC(
        \CARRYB[7][0] ), .YS(\SUMB[7][0] ) );
  FAX1 S4_1 ( .A(n12), .B(\CARRYB[6][1] ), .C(\SUMB[6][2] ), .YC(
        \CARRYB[7][1] ), .YS(\SUMB[7][1] ) );
  FAX1 S4_2 ( .A(n8), .B(\CARRYB[6][2] ), .C(\SUMB[6][3] ), .YC(\CARRYB[7][2] ), .YS(\SUMB[7][2] ) );
  FAX1 S4_3 ( .A(n6), .B(\CARRYB[6][3] ), .C(\SUMB[6][4] ), .YC(\CARRYB[7][3] ), .YS(\SUMB[7][3] ) );
  FAX1 S4_4 ( .A(n4), .B(\CARRYB[6][4] ), .C(\SUMB[6][5] ), .YC(\CARRYB[7][4] ), .YS(\SUMB[7][4] ) );
  FAX1 S4_5 ( .A(n15), .B(\CARRYB[6][5] ), .C(\SUMB[6][6] ), .YC(
        \CARRYB[7][5] ), .YS(\SUMB[7][5] ) );
  FAX1 S5_6 ( .A(n14), .B(\CARRYB[6][6] ), .C(n13), .YC(\CARRYB[7][6] ), .YS(
        \SUMB[7][6] ) );
  FAX1 S14_7 ( .A(n31), .B(n32), .C(\ab[7][7] ), .YC(\CARRYB[7][7] ), .YS(
        \SUMB[7][7] ) );
  FAX1 S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .C(\SUMB[5][1] ), .YC(
        \CARRYB[6][0] ), .YS(\A1[4] ) );
  FAX1 S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .C(\SUMB[5][2] ), .YC(
        \CARRYB[6][1] ), .YS(\SUMB[6][1] ) );
  FAX1 S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .C(\SUMB[5][3] ), .YC(
        \CARRYB[6][2] ), .YS(\SUMB[6][2] ) );
  FAX1 S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .C(\SUMB[5][4] ), .YC(
        \CARRYB[6][3] ), .YS(\SUMB[6][3] ) );
  FAX1 S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .C(\SUMB[5][5] ), .YC(
        \CARRYB[6][4] ), .YS(\SUMB[6][4] ) );
  FAX1 S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .C(\SUMB[5][6] ), .YC(
        \CARRYB[6][5] ), .YS(\SUMB[6][5] ) );
  FAX1 S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .C(n5), .YC(\CARRYB[6][6] ), .YS(\SUMB[6][6] ) );
  FAX1 S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .C(\SUMB[4][1] ), .YC(
        \CARRYB[5][0] ), .YS(\A1[3] ) );
  FAX1 S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .C(\SUMB[4][2] ), .YC(
        \CARRYB[5][1] ), .YS(\SUMB[5][1] ) );
  FAX1 S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .C(\SUMB[4][3] ), .YC(
        \CARRYB[5][2] ), .YS(\SUMB[5][2] ) );
  FAX1 S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .C(\SUMB[4][4] ), .YC(
        \CARRYB[5][3] ), .YS(\SUMB[5][3] ) );
  FAX1 S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .C(\SUMB[4][5] ), .YC(
        \CARRYB[5][4] ), .YS(\SUMB[5][4] ) );
  FAX1 S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .C(\SUMB[4][6] ), .YC(
        \CARRYB[5][5] ), .YS(\SUMB[5][5] ) );
  FAX1 S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .C(n7), .YC(\CARRYB[5][6] ), .YS(\SUMB[5][6] ) );
  FAX1 S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .C(\SUMB[3][1] ), .YC(
        \CARRYB[4][0] ), .YS(\A1[2] ) );
  FAX1 S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .C(\SUMB[3][2] ), .YC(
        \CARRYB[4][1] ), .YS(\SUMB[4][1] ) );
  FAX1 S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .C(\SUMB[3][3] ), .YC(
        \CARRYB[4][2] ), .YS(\SUMB[4][2] ) );
  FAX1 S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .C(\SUMB[3][4] ), .YC(
        \CARRYB[4][3] ), .YS(\SUMB[4][3] ) );
  FAX1 S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .C(\SUMB[3][5] ), .YC(
        \CARRYB[4][4] ), .YS(\SUMB[4][4] ) );
  FAX1 S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .C(\SUMB[3][6] ), .YC(
        \CARRYB[4][5] ), .YS(\SUMB[4][5] ) );
  FAX1 S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .C(n9), .YC(\CARRYB[4][6] ), .YS(\SUMB[4][6] ) );
  FAX1 S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .C(\SUMB[2][1] ), .YC(
        \CARRYB[3][0] ), .YS(\A1[1] ) );
  FAX1 S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .C(\SUMB[2][2] ), .YC(
        \CARRYB[3][1] ), .YS(\SUMB[3][1] ) );
  FAX1 S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .C(\SUMB[2][3] ), .YC(
        \CARRYB[3][2] ), .YS(\SUMB[3][2] ) );
  FAX1 S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .C(\SUMB[2][4] ), .YC(
        \CARRYB[3][3] ), .YS(\SUMB[3][3] ) );
  FAX1 S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(\SUMB[2][5] ), .YC(
        \CARRYB[3][4] ), .YS(\SUMB[3][4] ) );
  FAX1 S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .C(\SUMB[2][6] ), .YC(
        \CARRYB[3][5] ), .YS(\SUMB[3][5] ) );
  FAX1 S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .C(n11), .YC(
        \CARRYB[3][6] ), .YS(\SUMB[3][6] ) );
  FAX1 S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .C(\SUMB[1][1] ), .YC(
        \CARRYB[2][0] ), .YS(\A1[0] ) );
  FAX1 S2_2_1 ( .A(\ab[2][1] ), .B(n24), .C(\SUMB[1][2] ), .YC(\CARRYB[2][1] ), 
        .YS(\SUMB[2][1] ) );
  FAX1 S2_2_2 ( .A(\ab[2][2] ), .B(n25), .C(\SUMB[1][3] ), .YC(\CARRYB[2][2] ), 
        .YS(\SUMB[2][2] ) );
  FAX1 S2_2_3 ( .A(\ab[2][3] ), .B(n26), .C(\SUMB[1][4] ), .YC(\CARRYB[2][3] ), 
        .YS(\SUMB[2][3] ) );
  FAX1 S2_2_4 ( .A(\ab[2][4] ), .B(n27), .C(\SUMB[1][5] ), .YC(\CARRYB[2][4] ), 
        .YS(\SUMB[2][4] ) );
  FAX1 S2_2_5 ( .A(\ab[2][5] ), .B(n28), .C(\SUMB[1][6] ), .YC(\CARRYB[2][5] ), 
        .YS(\SUMB[2][5] ) );
  FAX1 S3_2_6 ( .A(\ab[2][6] ), .B(n29), .C(n3), .YC(\CARRYB[2][6] ), .YS(
        \SUMB[2][6] ) );
  mul8_sv_3_DW01_add_0 FS_1 ( .A({n30, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , 
        \A1[0] }), .B({n23, n21, n22, n20, n19, n18, n17, \A2[6] , 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  OR2X1 U2 ( .A(n32), .B(A[1]), .Y(\ab[1][7] ) );
  INVX1 U3 ( .A(\ab[1][7] ), .Y(n3) );
  OR2X1 U4 ( .A(n31), .B(B[4]), .Y(\ab[7][4] ) );
  INVX1 U5 ( .A(\ab[7][4] ), .Y(n4) );
  OR2X1 U6 ( .A(n32), .B(A[5]), .Y(\ab[5][7] ) );
  INVX1 U7 ( .A(\ab[5][7] ), .Y(n5) );
  OR2X1 U8 ( .A(n31), .B(B[3]), .Y(\ab[7][3] ) );
  INVX1 U9 ( .A(\ab[7][3] ), .Y(n6) );
  AND2X1 U10 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(n23) );
  OR2X1 U11 ( .A(n32), .B(A[4]), .Y(\ab[4][7] ) );
  INVX1 U12 ( .A(\ab[4][7] ), .Y(n7) );
  OR2X1 U13 ( .A(n31), .B(B[2]), .Y(\ab[7][2] ) );
  INVX1 U14 ( .A(\ab[7][2] ), .Y(n8) );
  OR2X1 U15 ( .A(n32), .B(A[3]), .Y(\ab[3][7] ) );
  INVX1 U16 ( .A(\ab[3][7] ), .Y(n9) );
  OR2X1 U17 ( .A(n31), .B(B[0]), .Y(\ab[7][0] ) );
  INVX1 U18 ( .A(\ab[7][0] ), .Y(n10) );
  OR2X1 U19 ( .A(n32), .B(A[2]), .Y(\ab[2][7] ) );
  INVX1 U20 ( .A(\ab[2][7] ), .Y(n11) );
  OR2X1 U21 ( .A(n31), .B(B[1]), .Y(\ab[7][1] ) );
  INVX1 U22 ( .A(\ab[7][1] ), .Y(n12) );
  AND2X1 U23 ( .A(n16), .B(\ab[1][6] ), .Y(n29) );
  AND2X1 U24 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n28) );
  OR2X1 U25 ( .A(n32), .B(A[6]), .Y(\ab[6][7] ) );
  INVX1 U26 ( .A(\ab[6][7] ), .Y(n13) );
  OR2X1 U27 ( .A(n31), .B(B[6]), .Y(\ab[7][6] ) );
  INVX1 U28 ( .A(\ab[7][6] ), .Y(n14) );
  AND2X1 U29 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n24) );
  AND2X1 U30 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n26) );
  AND2X1 U31 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n27) );
  AND2X1 U32 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n25) );
  OR2X1 U33 ( .A(n31), .B(B[5]), .Y(\ab[7][5] ) );
  INVX1 U34 ( .A(\ab[7][5] ), .Y(n15) );
  OR2X1 U35 ( .A(n32), .B(A[0]), .Y(\ab[0][7] ) );
  INVX1 U36 ( .A(\ab[0][7] ), .Y(n16) );
  INVX1 U37 ( .A(\CARRYB[7][7] ), .Y(n30) );
  AND2X1 U38 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(n17) );
  AND2X1 U39 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(n18) );
  AND2X1 U40 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(n19) );
  AND2X1 U41 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(n20) );
  AND2X1 U42 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(n21) );
  AND2X1 U43 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(n22) );
  INVX1 U44 ( .A(ZA), .Y(n31) );
  INVX1 U45 ( .A(ZB), .Y(n32) );
  XOR2X1 U46 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(\A1[6] ) );
  XOR2X1 U47 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(\A1[7] ) );
  XOR2X1 U48 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(\A1[8] ) );
  XOR2X1 U49 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(\A1[9] ) );
  XOR2X1 U50 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(\A1[10] ) );
  XOR2X1 U51 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(\A1[11] ) );
  XOR2X1 U52 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(\A1[12] ) );
  XOR2X1 U53 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  XOR2X1 U54 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1 U55 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1 U56 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1 U57 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1 U58 ( .A(\ab[1][6] ), .B(n16), .Y(\SUMB[1][6] ) );
  AND2X1 U59 ( .A(ZA), .B(ZB), .Y(\ab[7][7] ) );
  AND2X1 U60 ( .A(B[6]), .B(A[6]), .Y(\ab[6][6] ) );
  AND2X1 U61 ( .A(B[5]), .B(A[6]), .Y(\ab[6][5] ) );
  AND2X1 U62 ( .A(B[4]), .B(A[6]), .Y(\ab[6][4] ) );
  AND2X1 U63 ( .A(B[3]), .B(A[6]), .Y(\ab[6][3] ) );
  AND2X1 U64 ( .A(B[2]), .B(A[6]), .Y(\ab[6][2] ) );
  AND2X1 U65 ( .A(B[1]), .B(A[6]), .Y(\ab[6][1] ) );
  AND2X1 U66 ( .A(B[0]), .B(A[6]), .Y(\ab[6][0] ) );
  AND2X1 U67 ( .A(A[5]), .B(B[6]), .Y(\ab[5][6] ) );
  AND2X1 U68 ( .A(A[5]), .B(B[5]), .Y(\ab[5][5] ) );
  AND2X1 U69 ( .A(A[5]), .B(B[4]), .Y(\ab[5][4] ) );
  AND2X1 U70 ( .A(A[5]), .B(B[3]), .Y(\ab[5][3] ) );
  AND2X1 U71 ( .A(A[5]), .B(B[2]), .Y(\ab[5][2] ) );
  AND2X1 U72 ( .A(A[5]), .B(B[1]), .Y(\ab[5][1] ) );
  AND2X1 U73 ( .A(A[5]), .B(B[0]), .Y(\ab[5][0] ) );
  AND2X1 U74 ( .A(A[4]), .B(B[6]), .Y(\ab[4][6] ) );
  AND2X1 U75 ( .A(A[4]), .B(B[5]), .Y(\ab[4][5] ) );
  AND2X1 U76 ( .A(A[4]), .B(B[4]), .Y(\ab[4][4] ) );
  AND2X1 U77 ( .A(A[4]), .B(B[3]), .Y(\ab[4][3] ) );
  AND2X1 U78 ( .A(A[4]), .B(B[2]), .Y(\ab[4][2] ) );
  AND2X1 U79 ( .A(A[4]), .B(B[1]), .Y(\ab[4][1] ) );
  AND2X1 U80 ( .A(A[4]), .B(B[0]), .Y(\ab[4][0] ) );
  AND2X1 U81 ( .A(A[3]), .B(B[6]), .Y(\ab[3][6] ) );
  AND2X1 U82 ( .A(A[3]), .B(B[5]), .Y(\ab[3][5] ) );
  AND2X1 U83 ( .A(A[3]), .B(B[4]), .Y(\ab[3][4] ) );
  AND2X1 U84 ( .A(A[3]), .B(B[3]), .Y(\ab[3][3] ) );
  AND2X1 U85 ( .A(A[3]), .B(B[2]), .Y(\ab[3][2] ) );
  AND2X1 U86 ( .A(A[3]), .B(B[1]), .Y(\ab[3][1] ) );
  AND2X1 U87 ( .A(A[3]), .B(B[0]), .Y(\ab[3][0] ) );
  AND2X1 U88 ( .A(A[2]), .B(B[6]), .Y(\ab[2][6] ) );
  AND2X1 U89 ( .A(A[2]), .B(B[5]), .Y(\ab[2][5] ) );
  AND2X1 U90 ( .A(A[2]), .B(B[4]), .Y(\ab[2][4] ) );
  AND2X1 U91 ( .A(A[2]), .B(B[3]), .Y(\ab[2][3] ) );
  AND2X1 U92 ( .A(A[2]), .B(B[2]), .Y(\ab[2][2] ) );
  AND2X1 U93 ( .A(A[2]), .B(B[1]), .Y(\ab[2][1] ) );
  AND2X1 U94 ( .A(A[2]), .B(B[0]), .Y(\ab[2][0] ) );
  AND2X1 U95 ( .A(A[1]), .B(B[6]), .Y(\ab[1][6] ) );
  AND2X1 U96 ( .A(A[1]), .B(B[5]), .Y(\ab[1][5] ) );
  AND2X1 U97 ( .A(A[1]), .B(B[4]), .Y(\ab[1][4] ) );
  AND2X1 U98 ( .A(A[1]), .B(B[3]), .Y(\ab[1][3] ) );
  AND2X1 U99 ( .A(A[1]), .B(B[2]), .Y(\ab[1][2] ) );
  AND2X1 U100 ( .A(A[0]), .B(B[6]), .Y(\ab[0][6] ) );
  AND2X1 U101 ( .A(A[0]), .B(B[5]), .Y(\ab[0][5] ) );
  AND2X1 U102 ( .A(A[0]), .B(B[4]), .Y(\ab[0][4] ) );
  AND2X1 U103 ( .A(A[0]), .B(B[3]), .Y(\ab[0][3] ) );
  AND2X1 U104 ( .A(A[0]), .B(B[2]), .Y(\ab[0][2] ) );
  AND2X1 U105 ( .A(PRODUCT[0]), .B(\ab[1][1] ), .Y(\CARRYB[1][0] ) );
  AND2X1 U106 ( .A(A[1]), .B(B[1]), .Y(\ab[1][1] ) );
  AND2X1 U107 ( .A(A[0]), .B(B[0]), .Y(PRODUCT[0]) );
endmodule


module mul8_sv_3 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;


  mul8_sv_3_DW02_mult_0 mult_46 ( .A(d1_in), .B(d2_in), .TC(1'b1), .PRODUCT(
        d_out) );
endmodule


module u_scaling_sv_1 ( d_in, d_out, clock );
  input [15:0] d_in;
  output [15:0] d_out;
  input clock;


  DFFPOSX1 \d_out_reg_reg[15]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[15]) );
  DFFPOSX1 \d_out_reg_reg[14]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[14]) );
  DFFPOSX1 \d_out_reg_reg[13]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[13]) );
  DFFPOSX1 \d_out_reg_reg[12]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[12]) );
  DFFPOSX1 \d_out_reg_reg[11]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[11]) );
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


module add16_sv_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module add16_sv_1 ( d1_in, d2_in, d_out );
  input [15:0] d1_in;
  input [15:0] d2_in;
  output [15:0] d_out;


  add16_sv_1_DW01_add_0 add_9 ( .A(d1_in), .B(d2_in), .CI(1'b0), .SUM(d_out)
         );
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


module saturation_sv_1 ( d_in, d_out );
  input [15:0] d_in;
  output [15:0] d_out;
  wire   \d_in[15] , n15, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13,
         n14;
  assign d_out[15] = \d_in[15] ;
  assign \d_in[15]  = d_in[15];

  AND2X1 U3 ( .A(n1), .B(n3), .Y(n6) );
  AND2X1 U4 ( .A(\d_in[15] ), .B(n4), .Y(n8) );
  AND2X1 U5 ( .A(n2), .B(n14), .Y(n10) );
  INVX1 U6 ( .A(n10), .Y(n1) );
  BUFX2 U7 ( .A(n13), .Y(n2) );
  INVX1 U8 ( .A(n8), .Y(n3) );
  BUFX2 U9 ( .A(n12), .Y(n4) );
  AND2X1 U10 ( .A(n6), .B(n11), .Y(n15) );
  INVX1 U11 ( .A(n15), .Y(d_out[12]) );
  AND2X1 U12 ( .A(d_in[9]), .B(n6), .Y(d_out[9]) );
  AND2X1 U13 ( .A(d_in[8]), .B(n6), .Y(d_out[8]) );
  AND2X1 U14 ( .A(d_in[7]), .B(n6), .Y(d_out[7]) );
  AND2X1 U15 ( .A(d_in[6]), .B(n6), .Y(d_out[6]) );
  AND2X1 U16 ( .A(d_in[5]), .B(n6), .Y(d_out[5]) );
  AND2X1 U17 ( .A(d_in[4]), .B(n6), .Y(d_out[4]) );
  AND2X1 U18 ( .A(d_in[3]), .B(n6), .Y(d_out[3]) );
  AND2X1 U19 ( .A(d_in[2]), .B(n6), .Y(d_out[2]) );
  AND2X1 U20 ( .A(d_in[1]), .B(n6), .Y(d_out[1]) );
  OAI21X1 U21 ( .A(n10), .B(n7), .C(n3), .Y(d_out[14]) );
  OAI21X1 U22 ( .A(n10), .B(n9), .C(n3), .Y(d_out[13]) );
  AND2X1 U23 ( .A(d_in[11]), .B(n6), .Y(d_out[11]) );
  AND2X1 U24 ( .A(d_in[10]), .B(n6), .Y(d_out[10]) );
  AND2X1 U25 ( .A(d_in[0]), .B(n6), .Y(d_out[0]) );
  NAND3X1 U26 ( .A(d_in[13]), .B(d_in[12]), .C(d_in[14]), .Y(n12) );
  INVX1 U27 ( .A(\d_in[15] ), .Y(n14) );
  NAND3X1 U28 ( .A(n9), .B(n7), .C(n11), .Y(n13) );
  INVX1 U29 ( .A(d_in[12]), .Y(n11) );
  INVX1 U30 ( .A(d_in[14]), .Y(n7) );
  INVX1 U31 ( .A(d_in[13]), .Y(n9) );
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


module mul8_sv_2_DW01_add_0 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43;
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AND2X1 U2 ( .A(n26), .B(n6), .Y(n24) );
  AND2X1 U3 ( .A(n41), .B(n2), .Y(n42) );
  AND2X1 U4 ( .A(n35), .B(n13), .Y(n38) );
  INVX1 U5 ( .A(n38), .Y(n1) );
  AND2X1 U6 ( .A(B[10]), .B(A[10]), .Y(n40) );
  INVX1 U7 ( .A(n40), .Y(n2) );
  AND2X1 U8 ( .A(n22), .B(n11), .Y(n20) );
  INVX1 U9 ( .A(n20), .Y(n3) );
  AND2X1 U10 ( .A(n33), .B(n8), .Y(n34) );
  INVX1 U11 ( .A(n34), .Y(n4) );
  INVX1 U12 ( .A(n42), .Y(n5) );
  AND2X1 U13 ( .A(B[8]), .B(A[8]), .Y(n27) );
  INVX1 U14 ( .A(n27), .Y(n6) );
  INVX1 U15 ( .A(n24), .Y(n7) );
  AND2X1 U16 ( .A(B[12]), .B(A[12]), .Y(n32) );
  INVX1 U17 ( .A(n32), .Y(n8) );
  BUFX2 U18 ( .A(n39), .Y(n9) );
  AND2X1 U19 ( .A(B[6]), .B(A[6]), .Y(n29) );
  INVX1 U20 ( .A(n29), .Y(n10) );
  AND2X1 U21 ( .A(B[9]), .B(A[9]), .Y(n23) );
  INVX1 U22 ( .A(n23), .Y(n11) );
  BUFX2 U23 ( .A(n31), .Y(n12) );
  AND2X1 U24 ( .A(B[11]), .B(A[11]), .Y(n37) );
  INVX1 U25 ( .A(n37), .Y(n13) );
  BUFX2 U26 ( .A(n25), .Y(n14) );
  INVX1 U27 ( .A(n41), .Y(n16) );
  INVX1 U28 ( .A(n26), .Y(n17) );
  INVX1 U29 ( .A(n33), .Y(n15) );
  INVX1 U30 ( .A(n43), .Y(n18) );
  INVX1 U31 ( .A(n28), .Y(SUM[6]) );
  XNOR2X1 U32 ( .A(n3), .B(n21), .Y(SUM[9]) );
  XOR2X1 U33 ( .A(n7), .B(n14), .Y(SUM[8]) );
  FAX1 U34 ( .A(B[7]), .B(A[7]), .C(n29), .YS(SUM[7]) );
  OAI21X1 U35 ( .A(B[6]), .B(A[6]), .C(n10), .Y(n28) );
  FAX1 U36 ( .A(B[13]), .B(A[13]), .C(n30), .YS(SUM[13]) );
  OAI21X1 U37 ( .A(n15), .B(n12), .C(n8), .Y(n30) );
  XOR2X1 U38 ( .A(n4), .B(n12), .Y(SUM[12]) );
  AOI21X1 U39 ( .A(n35), .B(n36), .C(n37), .Y(n31) );
  OR2X1 U40 ( .A(B[12]), .B(A[12]), .Y(n33) );
  XNOR2X1 U41 ( .A(n1), .B(n36), .Y(SUM[11]) );
  OAI21X1 U42 ( .A(n16), .B(n9), .C(n2), .Y(n36) );
  OR2X1 U43 ( .A(B[11]), .B(A[11]), .Y(n35) );
  XOR2X1 U44 ( .A(n5), .B(n9), .Y(SUM[10]) );
  AOI21X1 U45 ( .A(n21), .B(n22), .C(n23), .Y(n39) );
  OR2X1 U46 ( .A(B[9]), .B(A[9]), .Y(n22) );
  OAI21X1 U47 ( .A(n14), .B(n17), .C(n6), .Y(n21) );
  OR2X1 U48 ( .A(B[8]), .B(A[8]), .Y(n26) );
  AOI21X1 U49 ( .A(n29), .B(A[7]), .C(n18), .Y(n25) );
  OAI21X1 U50 ( .A(n29), .B(A[7]), .C(B[7]), .Y(n43) );
  OR2X1 U51 ( .A(B[10]), .B(A[10]), .Y(n41) );
endmodule


module mul8_sv_2_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] , \ab[0][3] ,
         \ab[0][2] , \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \CARRYB[1][0] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[7][0] ,
         \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] ,
         \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] , \SUMB[5][4] , \SUMB[5][3] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][6] ,
         \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] ,
         \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] ,
         \SUMB[1][1] , ZA, ZB, \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] ,
         \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] ,
         \A1[0] , \A2[6] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32;
  assign ZA = A[7];
  assign ZB = B[7];

  FAX1 S14_7_0 ( .A(ZA), .B(ZB), .C(\SUMB[7][0] ), .YC(\A2[6] ), .YS(\A1[5] )
         );
  FAX1 S4_0 ( .A(n12), .B(\CARRYB[6][0] ), .C(\SUMB[6][1] ), .YC(
        \CARRYB[7][0] ), .YS(\SUMB[7][0] ) );
  FAX1 S4_1 ( .A(n14), .B(\CARRYB[6][1] ), .C(\SUMB[6][2] ), .YC(
        \CARRYB[7][1] ), .YS(\SUMB[7][1] ) );
  FAX1 S4_2 ( .A(n15), .B(\CARRYB[6][2] ), .C(\SUMB[6][3] ), .YC(
        \CARRYB[7][2] ), .YS(\SUMB[7][2] ) );
  FAX1 S4_3 ( .A(n10), .B(\CARRYB[6][3] ), .C(\SUMB[6][4] ), .YC(
        \CARRYB[7][3] ), .YS(\SUMB[7][3] ) );
  FAX1 S4_4 ( .A(n8), .B(\CARRYB[6][4] ), .C(\SUMB[6][5] ), .YC(\CARRYB[7][4] ), .YS(\SUMB[7][4] ) );
  FAX1 S4_5 ( .A(n6), .B(\CARRYB[6][5] ), .C(\SUMB[6][6] ), .YC(\CARRYB[7][5] ), .YS(\SUMB[7][5] ) );
  FAX1 S5_6 ( .A(n5), .B(\CARRYB[6][6] ), .C(n4), .YC(\CARRYB[7][6] ), .YS(
        \SUMB[7][6] ) );
  FAX1 S14_7 ( .A(n31), .B(n32), .C(\ab[7][7] ), .YC(\CARRYB[7][7] ), .YS(
        \SUMB[7][7] ) );
  FAX1 S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .C(\SUMB[5][1] ), .YC(
        \CARRYB[6][0] ), .YS(\A1[4] ) );
  FAX1 S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .C(\SUMB[5][2] ), .YC(
        \CARRYB[6][1] ), .YS(\SUMB[6][1] ) );
  FAX1 S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .C(\SUMB[5][3] ), .YC(
        \CARRYB[6][2] ), .YS(\SUMB[6][2] ) );
  FAX1 S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .C(\SUMB[5][4] ), .YC(
        \CARRYB[6][3] ), .YS(\SUMB[6][3] ) );
  FAX1 S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .C(\SUMB[5][5] ), .YC(
        \CARRYB[6][4] ), .YS(\SUMB[6][4] ) );
  FAX1 S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .C(\SUMB[5][6] ), .YC(
        \CARRYB[6][5] ), .YS(\SUMB[6][5] ) );
  FAX1 S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .C(n3), .YC(\CARRYB[6][6] ), .YS(\SUMB[6][6] ) );
  FAX1 S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .C(\SUMB[4][1] ), .YC(
        \CARRYB[5][0] ), .YS(\A1[3] ) );
  FAX1 S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .C(\SUMB[4][2] ), .YC(
        \CARRYB[5][1] ), .YS(\SUMB[5][1] ) );
  FAX1 S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .C(\SUMB[4][3] ), .YC(
        \CARRYB[5][2] ), .YS(\SUMB[5][2] ) );
  FAX1 S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .C(\SUMB[4][4] ), .YC(
        \CARRYB[5][3] ), .YS(\SUMB[5][3] ) );
  FAX1 S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .C(\SUMB[4][5] ), .YC(
        \CARRYB[5][4] ), .YS(\SUMB[5][4] ) );
  FAX1 S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .C(\SUMB[4][6] ), .YC(
        \CARRYB[5][5] ), .YS(\SUMB[5][5] ) );
  FAX1 S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .C(n7), .YC(\CARRYB[5][6] ), .YS(\SUMB[5][6] ) );
  FAX1 S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .C(\SUMB[3][1] ), .YC(
        \CARRYB[4][0] ), .YS(\A1[2] ) );
  FAX1 S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .C(\SUMB[3][2] ), .YC(
        \CARRYB[4][1] ), .YS(\SUMB[4][1] ) );
  FAX1 S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .C(\SUMB[3][3] ), .YC(
        \CARRYB[4][2] ), .YS(\SUMB[4][2] ) );
  FAX1 S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .C(\SUMB[3][4] ), .YC(
        \CARRYB[4][3] ), .YS(\SUMB[4][3] ) );
  FAX1 S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .C(\SUMB[3][5] ), .YC(
        \CARRYB[4][4] ), .YS(\SUMB[4][4] ) );
  FAX1 S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .C(\SUMB[3][6] ), .YC(
        \CARRYB[4][5] ), .YS(\SUMB[4][5] ) );
  FAX1 S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .C(n9), .YC(\CARRYB[4][6] ), .YS(\SUMB[4][6] ) );
  FAX1 S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .C(\SUMB[2][1] ), .YC(
        \CARRYB[3][0] ), .YS(\A1[1] ) );
  FAX1 S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .C(\SUMB[2][2] ), .YC(
        \CARRYB[3][1] ), .YS(\SUMB[3][1] ) );
  FAX1 S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .C(\SUMB[2][3] ), .YC(
        \CARRYB[3][2] ), .YS(\SUMB[3][2] ) );
  FAX1 S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .C(\SUMB[2][4] ), .YC(
        \CARRYB[3][3] ), .YS(\SUMB[3][3] ) );
  FAX1 S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(\SUMB[2][5] ), .YC(
        \CARRYB[3][4] ), .YS(\SUMB[3][4] ) );
  FAX1 S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .C(\SUMB[2][6] ), .YC(
        \CARRYB[3][5] ), .YS(\SUMB[3][5] ) );
  FAX1 S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .C(n11), .YC(
        \CARRYB[3][6] ), .YS(\SUMB[3][6] ) );
  FAX1 S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .C(\SUMB[1][1] ), .YC(
        \CARRYB[2][0] ), .YS(\A1[0] ) );
  FAX1 S2_2_1 ( .A(\ab[2][1] ), .B(n24), .C(\SUMB[1][2] ), .YC(\CARRYB[2][1] ), 
        .YS(\SUMB[2][1] ) );
  FAX1 S2_2_2 ( .A(\ab[2][2] ), .B(n25), .C(\SUMB[1][3] ), .YC(\CARRYB[2][2] ), 
        .YS(\SUMB[2][2] ) );
  FAX1 S2_2_3 ( .A(\ab[2][3] ), .B(n26), .C(\SUMB[1][4] ), .YC(\CARRYB[2][3] ), 
        .YS(\SUMB[2][3] ) );
  FAX1 S2_2_4 ( .A(\ab[2][4] ), .B(n27), .C(\SUMB[1][5] ), .YC(\CARRYB[2][4] ), 
        .YS(\SUMB[2][4] ) );
  FAX1 S2_2_5 ( .A(\ab[2][5] ), .B(n28), .C(\SUMB[1][6] ), .YC(\CARRYB[2][5] ), 
        .YS(\SUMB[2][5] ) );
  FAX1 S3_2_6 ( .A(\ab[2][6] ), .B(n29), .C(n13), .YC(\CARRYB[2][6] ), .YS(
        \SUMB[2][6] ) );
  mul8_sv_2_DW01_add_0 FS_1 ( .A({n30, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , 
        \A1[0] }), .B({n22, n23, n21, n20, n19, n18, n17, \A2[6] , 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  AND2X1 U2 ( .A(B[4]), .B(A[6]), .Y(\ab[6][4] ) );
  AND2X1 U3 ( .A(B[5]), .B(A[6]), .Y(\ab[6][5] ) );
  AND2X1 U4 ( .A(B[3]), .B(A[6]), .Y(\ab[6][3] ) );
  AND2X1 U5 ( .A(B[1]), .B(A[6]), .Y(\ab[6][1] ) );
  AND2X1 U6 ( .A(B[2]), .B(A[6]), .Y(\ab[6][2] ) );
  AND2X1 U7 ( .A(B[6]), .B(A[6]), .Y(\ab[6][6] ) );
  AND2X1 U8 ( .A(B[0]), .B(A[6]), .Y(\ab[6][0] ) );
  OR2X1 U9 ( .A(n32), .B(A[5]), .Y(\ab[5][7] ) );
  INVX1 U10 ( .A(\ab[5][7] ), .Y(n3) );
  OR2X1 U11 ( .A(n32), .B(A[6]), .Y(\ab[6][7] ) );
  INVX1 U12 ( .A(\ab[6][7] ), .Y(n4) );
  OR2X1 U13 ( .A(n31), .B(B[6]), .Y(\ab[7][6] ) );
  INVX1 U14 ( .A(\ab[7][6] ), .Y(n5) );
  OR2X1 U15 ( .A(n31), .B(B[5]), .Y(\ab[7][5] ) );
  INVX1 U16 ( .A(\ab[7][5] ), .Y(n6) );
  OR2X1 U17 ( .A(n32), .B(A[4]), .Y(\ab[4][7] ) );
  INVX1 U18 ( .A(\ab[4][7] ), .Y(n7) );
  OR2X1 U19 ( .A(n31), .B(B[4]), .Y(\ab[7][4] ) );
  INVX1 U20 ( .A(\ab[7][4] ), .Y(n8) );
  AND2X1 U21 ( .A(n16), .B(\ab[1][6] ), .Y(n29) );
  OR2X1 U22 ( .A(n32), .B(A[3]), .Y(\ab[3][7] ) );
  INVX1 U23 ( .A(\ab[3][7] ), .Y(n9) );
  OR2X1 U24 ( .A(n31), .B(B[3]), .Y(\ab[7][3] ) );
  INVX1 U25 ( .A(\ab[7][3] ), .Y(n10) );
  OR2X1 U26 ( .A(n32), .B(A[2]), .Y(\ab[2][7] ) );
  INVX1 U27 ( .A(\ab[2][7] ), .Y(n11) );
  OR2X1 U28 ( .A(n31), .B(B[0]), .Y(\ab[7][0] ) );
  INVX1 U29 ( .A(\ab[7][0] ), .Y(n12) );
  AND2X1 U30 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n28) );
  OR2X1 U31 ( .A(n32), .B(A[1]), .Y(\ab[1][7] ) );
  INVX1 U32 ( .A(\ab[1][7] ), .Y(n13) );
  OR2X1 U33 ( .A(n31), .B(B[1]), .Y(\ab[7][1] ) );
  INVX1 U34 ( .A(\ab[7][1] ), .Y(n14) );
  AND2X1 U35 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n26) );
  AND2X1 U36 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n27) );
  AND2X1 U37 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n25) );
  AND2X1 U38 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n24) );
  OR2X1 U39 ( .A(n31), .B(B[2]), .Y(\ab[7][2] ) );
  INVX1 U40 ( .A(\ab[7][2] ), .Y(n15) );
  OR2X1 U41 ( .A(n32), .B(A[0]), .Y(\ab[0][7] ) );
  INVX1 U42 ( .A(\ab[0][7] ), .Y(n16) );
  INVX1 U43 ( .A(ZA), .Y(n31) );
  AND2X1 U44 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(n17) );
  AND2X1 U45 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(n18) );
  AND2X1 U46 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(n19) );
  AND2X1 U47 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(n20) );
  AND2X1 U48 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(n21) );
  AND2X1 U49 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(n22) );
  INVX1 U50 ( .A(\CARRYB[7][7] ), .Y(n30) );
  AND2X1 U51 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(n23) );
  INVX1 U52 ( .A(ZB), .Y(n32) );
  XOR2X1 U53 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(\A1[6] ) );
  XOR2X1 U54 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(\A1[7] ) );
  XOR2X1 U55 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(\A1[8] ) );
  XOR2X1 U56 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(\A1[9] ) );
  XOR2X1 U57 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(\A1[10] ) );
  XOR2X1 U58 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(\A1[11] ) );
  XOR2X1 U59 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(\A1[12] ) );
  XOR2X1 U60 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  XOR2X1 U61 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1 U62 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1 U63 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1 U64 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1 U65 ( .A(\ab[1][6] ), .B(n16), .Y(\SUMB[1][6] ) );
  AND2X1 U66 ( .A(ZA), .B(ZB), .Y(\ab[7][7] ) );
  AND2X1 U67 ( .A(A[5]), .B(B[6]), .Y(\ab[5][6] ) );
  AND2X1 U68 ( .A(A[5]), .B(B[5]), .Y(\ab[5][5] ) );
  AND2X1 U69 ( .A(A[5]), .B(B[4]), .Y(\ab[5][4] ) );
  AND2X1 U70 ( .A(A[5]), .B(B[3]), .Y(\ab[5][3] ) );
  AND2X1 U71 ( .A(A[5]), .B(B[2]), .Y(\ab[5][2] ) );
  AND2X1 U72 ( .A(A[5]), .B(B[1]), .Y(\ab[5][1] ) );
  AND2X1 U73 ( .A(A[5]), .B(B[0]), .Y(\ab[5][0] ) );
  AND2X1 U74 ( .A(A[4]), .B(B[6]), .Y(\ab[4][6] ) );
  AND2X1 U75 ( .A(A[4]), .B(B[5]), .Y(\ab[4][5] ) );
  AND2X1 U76 ( .A(A[4]), .B(B[4]), .Y(\ab[4][4] ) );
  AND2X1 U77 ( .A(A[4]), .B(B[3]), .Y(\ab[4][3] ) );
  AND2X1 U78 ( .A(A[4]), .B(B[2]), .Y(\ab[4][2] ) );
  AND2X1 U79 ( .A(A[4]), .B(B[1]), .Y(\ab[4][1] ) );
  AND2X1 U80 ( .A(A[4]), .B(B[0]), .Y(\ab[4][0] ) );
  AND2X1 U81 ( .A(A[3]), .B(B[6]), .Y(\ab[3][6] ) );
  AND2X1 U82 ( .A(A[3]), .B(B[5]), .Y(\ab[3][5] ) );
  AND2X1 U83 ( .A(A[3]), .B(B[4]), .Y(\ab[3][4] ) );
  AND2X1 U84 ( .A(A[3]), .B(B[3]), .Y(\ab[3][3] ) );
  AND2X1 U85 ( .A(A[3]), .B(B[2]), .Y(\ab[3][2] ) );
  AND2X1 U86 ( .A(A[3]), .B(B[1]), .Y(\ab[3][1] ) );
  AND2X1 U87 ( .A(A[3]), .B(B[0]), .Y(\ab[3][0] ) );
  AND2X1 U88 ( .A(A[2]), .B(B[6]), .Y(\ab[2][6] ) );
  AND2X1 U89 ( .A(A[2]), .B(B[5]), .Y(\ab[2][5] ) );
  AND2X1 U90 ( .A(A[2]), .B(B[4]), .Y(\ab[2][4] ) );
  AND2X1 U91 ( .A(A[2]), .B(B[3]), .Y(\ab[2][3] ) );
  AND2X1 U92 ( .A(A[2]), .B(B[2]), .Y(\ab[2][2] ) );
  AND2X1 U93 ( .A(A[2]), .B(B[1]), .Y(\ab[2][1] ) );
  AND2X1 U94 ( .A(A[2]), .B(B[0]), .Y(\ab[2][0] ) );
  AND2X1 U95 ( .A(A[1]), .B(B[6]), .Y(\ab[1][6] ) );
  AND2X1 U96 ( .A(A[1]), .B(B[5]), .Y(\ab[1][5] ) );
  AND2X1 U97 ( .A(A[1]), .B(B[4]), .Y(\ab[1][4] ) );
  AND2X1 U98 ( .A(A[1]), .B(B[3]), .Y(\ab[1][3] ) );
  AND2X1 U99 ( .A(A[1]), .B(B[2]), .Y(\ab[1][2] ) );
  AND2X1 U100 ( .A(A[0]), .B(B[6]), .Y(\ab[0][6] ) );
  AND2X1 U101 ( .A(A[0]), .B(B[5]), .Y(\ab[0][5] ) );
  AND2X1 U102 ( .A(A[0]), .B(B[4]), .Y(\ab[0][4] ) );
  AND2X1 U103 ( .A(A[0]), .B(B[3]), .Y(\ab[0][3] ) );
  AND2X1 U104 ( .A(A[0]), .B(B[2]), .Y(\ab[0][2] ) );
  AND2X1 U105 ( .A(PRODUCT[0]), .B(\ab[1][1] ), .Y(\CARRYB[1][0] ) );
  AND2X1 U106 ( .A(A[1]), .B(B[1]), .Y(\ab[1][1] ) );
  AND2X1 U107 ( .A(A[0]), .B(B[0]), .Y(PRODUCT[0]) );
endmodule


module mul8_sv_2 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;


  mul8_sv_2_DW02_mult_0 mult_46 ( .A(d1_in), .B(d2_in), .TC(1'b1), .PRODUCT(
        d_out) );
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


module unit_calc_sv_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
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
  mul8_sv_3 mul_xnin_ue ( .d1_in(x_N_in), .d2_in(ue_in), .d_out(xnin_ue) );
  u_scaling_sv_1 u1 ( .d_in(xnin_ue), .d_out(xnin_ue_scaled), .clock(clock) );
  add16_sv_1 add1 ( .d1_in(xnin_ue_scaled), .d2_in(coeff16), .d_out(
        new_coeff_true) );
  shift_1d_16_sv_1 delay_2 ( .xin(new_coeff_true), .xout(
        delayed_new_coeff_true), .clock(clock) );
  saturation_sv_1 sat_1 ( .d_in(delayed_new_coeff_true), .d_out(coeff16) );
  truncation_sv_3 trunc_1 ( .d_in(coeff16), .d_out(coeff8) );
  mul8_sv_2 mul_coeff_x_in ( .d1_in(coeff8), .d2_in(shiftx[31:24]), .d_out(
        y_out16) );
  truncation_sv_2 trunc_2 ( .d_in(y_out16), .d_out(y_out8) );
  unit_calc_sv_1_DW01_add_0 add_321 ( .A(y_out8), .B(shifty[7:0]), .CI(1'b0), 
        .SUM(y_out) );
endmodule


module mul8_sv_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43;
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AND2X1 U2 ( .A(n26), .B(n3), .Y(n24) );
  AND2X1 U3 ( .A(n41), .B(n2), .Y(n42) );
  AND2X1 U4 ( .A(n33), .B(n4), .Y(n34) );
  AND2X1 U5 ( .A(n35), .B(n10), .Y(n38) );
  INVX1 U6 ( .A(n38), .Y(n1) );
  AND2X1 U7 ( .A(B[10]), .B(A[10]), .Y(n40) );
  INVX1 U8 ( .A(n40), .Y(n2) );
  AND2X1 U9 ( .A(B[8]), .B(A[8]), .Y(n27) );
  INVX1 U10 ( .A(n27), .Y(n3) );
  AND2X1 U11 ( .A(B[12]), .B(A[12]), .Y(n32) );
  INVX1 U12 ( .A(n32), .Y(n4) );
  AND2X1 U13 ( .A(n22), .B(n13), .Y(n20) );
  INVX1 U14 ( .A(n20), .Y(n5) );
  INVX1 U15 ( .A(n42), .Y(n6) );
  BUFX2 U16 ( .A(n31), .Y(n7) );
  INVX1 U17 ( .A(n24), .Y(n8) );
  AND2X1 U18 ( .A(B[6]), .B(A[6]), .Y(n29) );
  INVX1 U19 ( .A(n29), .Y(n9) );
  AND2X1 U20 ( .A(B[11]), .B(A[11]), .Y(n37) );
  INVX1 U21 ( .A(n37), .Y(n10) );
  BUFX2 U22 ( .A(n39), .Y(n11) );
  INVX1 U23 ( .A(n34), .Y(n12) );
  AND2X1 U24 ( .A(B[9]), .B(A[9]), .Y(n23) );
  INVX1 U25 ( .A(n23), .Y(n13) );
  BUFX2 U26 ( .A(n25), .Y(n14) );
  INVX1 U27 ( .A(n41), .Y(n16) );
  INVX1 U28 ( .A(n26), .Y(n17) );
  INVX1 U29 ( .A(n33), .Y(n15) );
  INVX1 U30 ( .A(n43), .Y(n18) );
  INVX1 U31 ( .A(n28), .Y(SUM[6]) );
  XNOR2X1 U32 ( .A(n5), .B(n21), .Y(SUM[9]) );
  XOR2X1 U33 ( .A(n8), .B(n14), .Y(SUM[8]) );
  FAX1 U34 ( .A(B[7]), .B(A[7]), .C(n29), .YS(SUM[7]) );
  OAI21X1 U35 ( .A(B[6]), .B(A[6]), .C(n9), .Y(n28) );
  FAX1 U36 ( .A(B[13]), .B(A[13]), .C(n30), .YS(SUM[13]) );
  OAI21X1 U37 ( .A(n15), .B(n7), .C(n4), .Y(n30) );
  XOR2X1 U38 ( .A(n12), .B(n7), .Y(SUM[12]) );
  AOI21X1 U39 ( .A(n35), .B(n36), .C(n37), .Y(n31) );
  OR2X1 U40 ( .A(B[12]), .B(A[12]), .Y(n33) );
  XNOR2X1 U41 ( .A(n1), .B(n36), .Y(SUM[11]) );
  OAI21X1 U42 ( .A(n16), .B(n11), .C(n2), .Y(n36) );
  OR2X1 U43 ( .A(B[11]), .B(A[11]), .Y(n35) );
  XOR2X1 U44 ( .A(n6), .B(n11), .Y(SUM[10]) );
  AOI21X1 U45 ( .A(n21), .B(n22), .C(n23), .Y(n39) );
  OR2X1 U46 ( .A(B[9]), .B(A[9]), .Y(n22) );
  OAI21X1 U47 ( .A(n14), .B(n17), .C(n3), .Y(n21) );
  OR2X1 U48 ( .A(B[8]), .B(A[8]), .Y(n26) );
  AOI21X1 U49 ( .A(n29), .B(A[7]), .C(n18), .Y(n25) );
  OAI21X1 U50 ( .A(n29), .B(A[7]), .C(B[7]), .Y(n43) );
  OR2X1 U51 ( .A(B[10]), .B(A[10]), .Y(n41) );
endmodule


module mul8_sv_1_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] , \ab[0][3] ,
         \ab[0][2] , \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \CARRYB[1][0] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[7][0] ,
         \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] ,
         \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] , \SUMB[5][4] , \SUMB[5][3] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][6] ,
         \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] ,
         \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] ,
         \SUMB[1][1] , ZA, ZB, \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] ,
         \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] ,
         \A1[0] , \A2[6] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32;
  assign ZA = A[7];
  assign ZB = B[7];

  FAX1 S14_7_0 ( .A(ZA), .B(ZB), .C(\SUMB[7][0] ), .YC(\A2[6] ), .YS(\A1[5] )
         );
  FAX1 S4_0 ( .A(n10), .B(\CARRYB[6][0] ), .C(\SUMB[6][1] ), .YC(
        \CARRYB[7][0] ), .YS(\SUMB[7][0] ) );
  FAX1 S4_1 ( .A(n12), .B(\CARRYB[6][1] ), .C(\SUMB[6][2] ), .YC(
        \CARRYB[7][1] ), .YS(\SUMB[7][1] ) );
  FAX1 S4_2 ( .A(n8), .B(\CARRYB[6][2] ), .C(\SUMB[6][3] ), .YC(\CARRYB[7][2] ), .YS(\SUMB[7][2] ) );
  FAX1 S4_3 ( .A(n6), .B(\CARRYB[6][3] ), .C(\SUMB[6][4] ), .YC(\CARRYB[7][3] ), .YS(\SUMB[7][3] ) );
  FAX1 S4_4 ( .A(n4), .B(\CARRYB[6][4] ), .C(\SUMB[6][5] ), .YC(\CARRYB[7][4] ), .YS(\SUMB[7][4] ) );
  FAX1 S4_5 ( .A(n15), .B(\CARRYB[6][5] ), .C(\SUMB[6][6] ), .YC(
        \CARRYB[7][5] ), .YS(\SUMB[7][5] ) );
  FAX1 S5_6 ( .A(n14), .B(\CARRYB[6][6] ), .C(n13), .YC(\CARRYB[7][6] ), .YS(
        \SUMB[7][6] ) );
  FAX1 S14_7 ( .A(n31), .B(n32), .C(\ab[7][7] ), .YC(\CARRYB[7][7] ), .YS(
        \SUMB[7][7] ) );
  FAX1 S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .C(\SUMB[5][1] ), .YC(
        \CARRYB[6][0] ), .YS(\A1[4] ) );
  FAX1 S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .C(\SUMB[5][2] ), .YC(
        \CARRYB[6][1] ), .YS(\SUMB[6][1] ) );
  FAX1 S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .C(\SUMB[5][3] ), .YC(
        \CARRYB[6][2] ), .YS(\SUMB[6][2] ) );
  FAX1 S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .C(\SUMB[5][4] ), .YC(
        \CARRYB[6][3] ), .YS(\SUMB[6][3] ) );
  FAX1 S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .C(\SUMB[5][5] ), .YC(
        \CARRYB[6][4] ), .YS(\SUMB[6][4] ) );
  FAX1 S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .C(\SUMB[5][6] ), .YC(
        \CARRYB[6][5] ), .YS(\SUMB[6][5] ) );
  FAX1 S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .C(n5), .YC(\CARRYB[6][6] ), .YS(\SUMB[6][6] ) );
  FAX1 S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .C(\SUMB[4][1] ), .YC(
        \CARRYB[5][0] ), .YS(\A1[3] ) );
  FAX1 S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .C(\SUMB[4][2] ), .YC(
        \CARRYB[5][1] ), .YS(\SUMB[5][1] ) );
  FAX1 S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .C(\SUMB[4][3] ), .YC(
        \CARRYB[5][2] ), .YS(\SUMB[5][2] ) );
  FAX1 S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .C(\SUMB[4][4] ), .YC(
        \CARRYB[5][3] ), .YS(\SUMB[5][3] ) );
  FAX1 S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .C(\SUMB[4][5] ), .YC(
        \CARRYB[5][4] ), .YS(\SUMB[5][4] ) );
  FAX1 S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .C(\SUMB[4][6] ), .YC(
        \CARRYB[5][5] ), .YS(\SUMB[5][5] ) );
  FAX1 S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .C(n7), .YC(\CARRYB[5][6] ), .YS(\SUMB[5][6] ) );
  FAX1 S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .C(\SUMB[3][1] ), .YC(
        \CARRYB[4][0] ), .YS(\A1[2] ) );
  FAX1 S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .C(\SUMB[3][2] ), .YC(
        \CARRYB[4][1] ), .YS(\SUMB[4][1] ) );
  FAX1 S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .C(\SUMB[3][3] ), .YC(
        \CARRYB[4][2] ), .YS(\SUMB[4][2] ) );
  FAX1 S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .C(\SUMB[3][4] ), .YC(
        \CARRYB[4][3] ), .YS(\SUMB[4][3] ) );
  FAX1 S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .C(\SUMB[3][5] ), .YC(
        \CARRYB[4][4] ), .YS(\SUMB[4][4] ) );
  FAX1 S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .C(\SUMB[3][6] ), .YC(
        \CARRYB[4][5] ), .YS(\SUMB[4][5] ) );
  FAX1 S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .C(n9), .YC(\CARRYB[4][6] ), .YS(\SUMB[4][6] ) );
  FAX1 S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .C(\SUMB[2][1] ), .YC(
        \CARRYB[3][0] ), .YS(\A1[1] ) );
  FAX1 S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .C(\SUMB[2][2] ), .YC(
        \CARRYB[3][1] ), .YS(\SUMB[3][1] ) );
  FAX1 S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .C(\SUMB[2][3] ), .YC(
        \CARRYB[3][2] ), .YS(\SUMB[3][2] ) );
  FAX1 S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .C(\SUMB[2][4] ), .YC(
        \CARRYB[3][3] ), .YS(\SUMB[3][3] ) );
  FAX1 S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(\SUMB[2][5] ), .YC(
        \CARRYB[3][4] ), .YS(\SUMB[3][4] ) );
  FAX1 S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .C(\SUMB[2][6] ), .YC(
        \CARRYB[3][5] ), .YS(\SUMB[3][5] ) );
  FAX1 S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .C(n11), .YC(
        \CARRYB[3][6] ), .YS(\SUMB[3][6] ) );
  FAX1 S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .C(\SUMB[1][1] ), .YC(
        \CARRYB[2][0] ), .YS(\A1[0] ) );
  FAX1 S2_2_1 ( .A(\ab[2][1] ), .B(n24), .C(\SUMB[1][2] ), .YC(\CARRYB[2][1] ), 
        .YS(\SUMB[2][1] ) );
  FAX1 S2_2_2 ( .A(\ab[2][2] ), .B(n25), .C(\SUMB[1][3] ), .YC(\CARRYB[2][2] ), 
        .YS(\SUMB[2][2] ) );
  FAX1 S2_2_3 ( .A(\ab[2][3] ), .B(n26), .C(\SUMB[1][4] ), .YC(\CARRYB[2][3] ), 
        .YS(\SUMB[2][3] ) );
  FAX1 S2_2_4 ( .A(\ab[2][4] ), .B(n27), .C(\SUMB[1][5] ), .YC(\CARRYB[2][4] ), 
        .YS(\SUMB[2][4] ) );
  FAX1 S2_2_5 ( .A(\ab[2][5] ), .B(n28), .C(\SUMB[1][6] ), .YC(\CARRYB[2][5] ), 
        .YS(\SUMB[2][5] ) );
  FAX1 S3_2_6 ( .A(\ab[2][6] ), .B(n29), .C(n3), .YC(\CARRYB[2][6] ), .YS(
        \SUMB[2][6] ) );
  mul8_sv_1_DW01_add_0 FS_1 ( .A({n30, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , 
        \A1[0] }), .B({n23, n21, n22, n20, n19, n18, n17, \A2[6] , 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  OR2X1 U2 ( .A(n32), .B(A[1]), .Y(\ab[1][7] ) );
  INVX1 U3 ( .A(\ab[1][7] ), .Y(n3) );
  OR2X1 U4 ( .A(n31), .B(B[4]), .Y(\ab[7][4] ) );
  INVX1 U5 ( .A(\ab[7][4] ), .Y(n4) );
  OR2X1 U6 ( .A(n32), .B(A[5]), .Y(\ab[5][7] ) );
  INVX1 U7 ( .A(\ab[5][7] ), .Y(n5) );
  OR2X1 U8 ( .A(n31), .B(B[3]), .Y(\ab[7][3] ) );
  INVX1 U9 ( .A(\ab[7][3] ), .Y(n6) );
  AND2X1 U10 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(n23) );
  OR2X1 U11 ( .A(n32), .B(A[4]), .Y(\ab[4][7] ) );
  INVX1 U12 ( .A(\ab[4][7] ), .Y(n7) );
  OR2X1 U13 ( .A(n31), .B(B[2]), .Y(\ab[7][2] ) );
  INVX1 U14 ( .A(\ab[7][2] ), .Y(n8) );
  OR2X1 U15 ( .A(n32), .B(A[3]), .Y(\ab[3][7] ) );
  INVX1 U16 ( .A(\ab[3][7] ), .Y(n9) );
  OR2X1 U17 ( .A(n31), .B(B[0]), .Y(\ab[7][0] ) );
  INVX1 U18 ( .A(\ab[7][0] ), .Y(n10) );
  OR2X1 U19 ( .A(n32), .B(A[2]), .Y(\ab[2][7] ) );
  INVX1 U20 ( .A(\ab[2][7] ), .Y(n11) );
  OR2X1 U21 ( .A(n31), .B(B[1]), .Y(\ab[7][1] ) );
  INVX1 U22 ( .A(\ab[7][1] ), .Y(n12) );
  AND2X1 U23 ( .A(n16), .B(\ab[1][6] ), .Y(n29) );
  AND2X1 U24 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n28) );
  OR2X1 U25 ( .A(n32), .B(A[6]), .Y(\ab[6][7] ) );
  INVX1 U26 ( .A(\ab[6][7] ), .Y(n13) );
  OR2X1 U27 ( .A(n31), .B(B[6]), .Y(\ab[7][6] ) );
  INVX1 U28 ( .A(\ab[7][6] ), .Y(n14) );
  AND2X1 U29 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n24) );
  AND2X1 U30 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n26) );
  AND2X1 U31 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n27) );
  AND2X1 U32 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n25) );
  OR2X1 U33 ( .A(n31), .B(B[5]), .Y(\ab[7][5] ) );
  INVX1 U34 ( .A(\ab[7][5] ), .Y(n15) );
  OR2X1 U35 ( .A(n32), .B(A[0]), .Y(\ab[0][7] ) );
  INVX1 U36 ( .A(\ab[0][7] ), .Y(n16) );
  INVX1 U37 ( .A(\CARRYB[7][7] ), .Y(n30) );
  AND2X1 U38 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(n17) );
  AND2X1 U39 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(n18) );
  AND2X1 U40 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(n19) );
  AND2X1 U41 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(n20) );
  AND2X1 U42 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(n21) );
  AND2X1 U43 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(n22) );
  INVX1 U44 ( .A(ZA), .Y(n31) );
  INVX1 U45 ( .A(ZB), .Y(n32) );
  XOR2X1 U46 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(\A1[6] ) );
  XOR2X1 U47 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(\A1[7] ) );
  XOR2X1 U48 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(\A1[8] ) );
  XOR2X1 U49 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(\A1[9] ) );
  XOR2X1 U50 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(\A1[10] ) );
  XOR2X1 U51 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(\A1[11] ) );
  XOR2X1 U52 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(\A1[12] ) );
  XOR2X1 U53 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  XOR2X1 U54 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1 U55 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1 U56 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1 U57 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1 U58 ( .A(\ab[1][6] ), .B(n16), .Y(\SUMB[1][6] ) );
  AND2X1 U59 ( .A(ZA), .B(ZB), .Y(\ab[7][7] ) );
  AND2X1 U60 ( .A(B[6]), .B(A[6]), .Y(\ab[6][6] ) );
  AND2X1 U61 ( .A(B[5]), .B(A[6]), .Y(\ab[6][5] ) );
  AND2X1 U62 ( .A(B[4]), .B(A[6]), .Y(\ab[6][4] ) );
  AND2X1 U63 ( .A(B[3]), .B(A[6]), .Y(\ab[6][3] ) );
  AND2X1 U64 ( .A(B[2]), .B(A[6]), .Y(\ab[6][2] ) );
  AND2X1 U65 ( .A(B[1]), .B(A[6]), .Y(\ab[6][1] ) );
  AND2X1 U66 ( .A(B[0]), .B(A[6]), .Y(\ab[6][0] ) );
  AND2X1 U67 ( .A(A[5]), .B(B[6]), .Y(\ab[5][6] ) );
  AND2X1 U68 ( .A(A[5]), .B(B[5]), .Y(\ab[5][5] ) );
  AND2X1 U69 ( .A(A[5]), .B(B[4]), .Y(\ab[5][4] ) );
  AND2X1 U70 ( .A(A[5]), .B(B[3]), .Y(\ab[5][3] ) );
  AND2X1 U71 ( .A(A[5]), .B(B[2]), .Y(\ab[5][2] ) );
  AND2X1 U72 ( .A(A[5]), .B(B[1]), .Y(\ab[5][1] ) );
  AND2X1 U73 ( .A(A[5]), .B(B[0]), .Y(\ab[5][0] ) );
  AND2X1 U74 ( .A(A[4]), .B(B[6]), .Y(\ab[4][6] ) );
  AND2X1 U75 ( .A(A[4]), .B(B[5]), .Y(\ab[4][5] ) );
  AND2X1 U76 ( .A(A[4]), .B(B[4]), .Y(\ab[4][4] ) );
  AND2X1 U77 ( .A(A[4]), .B(B[3]), .Y(\ab[4][3] ) );
  AND2X1 U78 ( .A(A[4]), .B(B[2]), .Y(\ab[4][2] ) );
  AND2X1 U79 ( .A(A[4]), .B(B[1]), .Y(\ab[4][1] ) );
  AND2X1 U80 ( .A(A[4]), .B(B[0]), .Y(\ab[4][0] ) );
  AND2X1 U81 ( .A(A[3]), .B(B[6]), .Y(\ab[3][6] ) );
  AND2X1 U82 ( .A(A[3]), .B(B[5]), .Y(\ab[3][5] ) );
  AND2X1 U83 ( .A(A[3]), .B(B[4]), .Y(\ab[3][4] ) );
  AND2X1 U84 ( .A(A[3]), .B(B[3]), .Y(\ab[3][3] ) );
  AND2X1 U85 ( .A(A[3]), .B(B[2]), .Y(\ab[3][2] ) );
  AND2X1 U86 ( .A(A[3]), .B(B[1]), .Y(\ab[3][1] ) );
  AND2X1 U87 ( .A(A[3]), .B(B[0]), .Y(\ab[3][0] ) );
  AND2X1 U88 ( .A(A[2]), .B(B[6]), .Y(\ab[2][6] ) );
  AND2X1 U89 ( .A(A[2]), .B(B[5]), .Y(\ab[2][5] ) );
  AND2X1 U90 ( .A(A[2]), .B(B[4]), .Y(\ab[2][4] ) );
  AND2X1 U91 ( .A(A[2]), .B(B[3]), .Y(\ab[2][3] ) );
  AND2X1 U92 ( .A(A[2]), .B(B[2]), .Y(\ab[2][2] ) );
  AND2X1 U93 ( .A(A[2]), .B(B[1]), .Y(\ab[2][1] ) );
  AND2X1 U94 ( .A(A[2]), .B(B[0]), .Y(\ab[2][0] ) );
  AND2X1 U95 ( .A(A[1]), .B(B[6]), .Y(\ab[1][6] ) );
  AND2X1 U96 ( .A(A[1]), .B(B[5]), .Y(\ab[1][5] ) );
  AND2X1 U97 ( .A(A[1]), .B(B[4]), .Y(\ab[1][4] ) );
  AND2X1 U98 ( .A(A[1]), .B(B[3]), .Y(\ab[1][3] ) );
  AND2X1 U99 ( .A(A[1]), .B(B[2]), .Y(\ab[1][2] ) );
  AND2X1 U100 ( .A(A[0]), .B(B[6]), .Y(\ab[0][6] ) );
  AND2X1 U101 ( .A(A[0]), .B(B[5]), .Y(\ab[0][5] ) );
  AND2X1 U102 ( .A(A[0]), .B(B[4]), .Y(\ab[0][4] ) );
  AND2X1 U103 ( .A(A[0]), .B(B[3]), .Y(\ab[0][3] ) );
  AND2X1 U104 ( .A(A[0]), .B(B[2]), .Y(\ab[0][2] ) );
  AND2X1 U105 ( .A(PRODUCT[0]), .B(\ab[1][1] ), .Y(\CARRYB[1][0] ) );
  AND2X1 U106 ( .A(A[1]), .B(B[1]), .Y(\ab[1][1] ) );
  AND2X1 U107 ( .A(A[0]), .B(B[0]), .Y(PRODUCT[0]) );
endmodule


module mul8_sv_1 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;


  mul8_sv_1_DW02_mult_0 mult_46 ( .A(d1_in), .B(d2_in), .TC(1'b1), .PRODUCT(
        d_out) );
endmodule


module u_scaling_sv_0 ( d_in, d_out, clock );
  input [15:0] d_in;
  output [15:0] d_out;
  input clock;


  DFFPOSX1 \d_out_reg_reg[15]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[15]) );
  DFFPOSX1 \d_out_reg_reg[14]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[14]) );
  DFFPOSX1 \d_out_reg_reg[13]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[13]) );
  DFFPOSX1 \d_out_reg_reg[12]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[12]) );
  DFFPOSX1 \d_out_reg_reg[11]  ( .D(d_in[15]), .CLK(clock), .Q(d_out[11]) );
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


module add16_sv_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  FAX1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .YS(SUM[15]) );
  FAX1 U1_14 ( .A(A[14]), .B(B[14]), .C(carry[14]), .YC(carry[15]), .YS(
        SUM[14]) );
  FAX1 U1_13 ( .A(A[13]), .B(B[13]), .C(carry[13]), .YC(carry[14]), .YS(
        SUM[13]) );
  FAX1 U1_12 ( .A(A[12]), .B(B[12]), .C(carry[12]), .YC(carry[13]), .YS(
        SUM[12]) );
  FAX1 U1_11 ( .A(A[11]), .B(B[11]), .C(carry[11]), .YC(carry[12]), .YS(
        SUM[11]) );
  FAX1 U1_10 ( .A(A[10]), .B(B[10]), .C(carry[10]), .YC(carry[11]), .YS(
        SUM[10]) );
  FAX1 U1_9 ( .A(A[9]), .B(B[9]), .C(carry[9]), .YC(carry[10]), .YS(SUM[9]) );
  FAX1 U1_8 ( .A(A[8]), .B(B[8]), .C(carry[8]), .YC(carry[9]), .YS(SUM[8]) );
  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YC(carry[8]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module add16_sv_0 ( d1_in, d2_in, d_out );
  input [15:0] d1_in;
  input [15:0] d2_in;
  output [15:0] d_out;


  add16_sv_0_DW01_add_0 add_9 ( .A(d1_in), .B(d2_in), .CI(1'b0), .SUM(d_out)
         );
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


module saturation_sv_0 ( d_in, d_out );
  input [15:0] d_in;
  output [15:0] d_out;
  wire   \d_in[15] , n15, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12, n13,
         n14;
  assign d_out[15] = \d_in[15] ;
  assign \d_in[15]  = d_in[15];

  AND2X1 U3 ( .A(n1), .B(n3), .Y(n6) );
  AND2X1 U4 ( .A(\d_in[15] ), .B(n4), .Y(n8) );
  AND2X1 U5 ( .A(n2), .B(n14), .Y(n10) );
  INVX1 U6 ( .A(n10), .Y(n1) );
  BUFX2 U7 ( .A(n13), .Y(n2) );
  INVX1 U8 ( .A(n8), .Y(n3) );
  BUFX2 U9 ( .A(n12), .Y(n4) );
  AND2X1 U10 ( .A(n6), .B(n11), .Y(n15) );
  INVX1 U11 ( .A(n15), .Y(d_out[12]) );
  AND2X1 U12 ( .A(d_in[9]), .B(n6), .Y(d_out[9]) );
  AND2X1 U13 ( .A(d_in[8]), .B(n6), .Y(d_out[8]) );
  AND2X1 U14 ( .A(d_in[7]), .B(n6), .Y(d_out[7]) );
  AND2X1 U15 ( .A(d_in[6]), .B(n6), .Y(d_out[6]) );
  AND2X1 U16 ( .A(d_in[5]), .B(n6), .Y(d_out[5]) );
  AND2X1 U17 ( .A(d_in[4]), .B(n6), .Y(d_out[4]) );
  AND2X1 U18 ( .A(d_in[3]), .B(n6), .Y(d_out[3]) );
  AND2X1 U19 ( .A(d_in[2]), .B(n6), .Y(d_out[2]) );
  AND2X1 U20 ( .A(d_in[1]), .B(n6), .Y(d_out[1]) );
  OAI21X1 U21 ( .A(n10), .B(n7), .C(n3), .Y(d_out[14]) );
  OAI21X1 U22 ( .A(n10), .B(n9), .C(n3), .Y(d_out[13]) );
  AND2X1 U23 ( .A(d_in[11]), .B(n6), .Y(d_out[11]) );
  AND2X1 U24 ( .A(d_in[10]), .B(n6), .Y(d_out[10]) );
  AND2X1 U25 ( .A(d_in[0]), .B(n6), .Y(d_out[0]) );
  NAND3X1 U26 ( .A(d_in[13]), .B(d_in[12]), .C(d_in[14]), .Y(n12) );
  INVX1 U27 ( .A(\d_in[15] ), .Y(n14) );
  NAND3X1 U28 ( .A(n9), .B(n7), .C(n11), .Y(n13) );
  INVX1 U29 ( .A(d_in[12]), .Y(n11) );
  INVX1 U30 ( .A(d_in[14]), .Y(n7) );
  INVX1 U31 ( .A(d_in[13]), .Y(n9) );
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


module mul8_sv_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43;
  assign SUM[5] = \A[5] ;
  assign \A[5]  = A[5];
  assign SUM[4] = \A[4] ;
  assign \A[4]  = A[4];
  assign SUM[3] = \A[3] ;
  assign \A[3]  = A[3];
  assign SUM[2] = \A[2] ;
  assign \A[2]  = A[2];
  assign SUM[1] = \A[1] ;
  assign \A[1]  = A[1];
  assign SUM[0] = \A[0] ;
  assign \A[0]  = A[0];

  AND2X1 U2 ( .A(n41), .B(n2), .Y(n42) );
  AND2X1 U3 ( .A(n22), .B(n10), .Y(n20) );
  INVX1 U4 ( .A(n20), .Y(n1) );
  AND2X1 U5 ( .A(B[10]), .B(A[10]), .Y(n40) );
  INVX1 U6 ( .A(n40), .Y(n2) );
  AND2X1 U7 ( .A(n35), .B(n13), .Y(n38) );
  INVX1 U8 ( .A(n38), .Y(n3) );
  AND2X1 U9 ( .A(n33), .B(n8), .Y(n34) );
  INVX1 U10 ( .A(n34), .Y(n4) );
  INVX1 U11 ( .A(n42), .Y(n5) );
  AND2X1 U12 ( .A(n26), .B(n11), .Y(n24) );
  INVX1 U13 ( .A(n24), .Y(n6) );
  AND2X1 U14 ( .A(B[6]), .B(A[6]), .Y(n29) );
  INVX1 U15 ( .A(n29), .Y(n7) );
  AND2X1 U16 ( .A(B[12]), .B(A[12]), .Y(n32) );
  INVX1 U17 ( .A(n32), .Y(n8) );
  BUFX2 U18 ( .A(n39), .Y(n9) );
  AND2X1 U19 ( .A(B[9]), .B(A[9]), .Y(n23) );
  INVX1 U20 ( .A(n23), .Y(n10) );
  AND2X1 U21 ( .A(B[8]), .B(A[8]), .Y(n27) );
  INVX1 U22 ( .A(n27), .Y(n11) );
  BUFX2 U23 ( .A(n31), .Y(n12) );
  AND2X1 U24 ( .A(B[11]), .B(A[11]), .Y(n37) );
  INVX1 U25 ( .A(n37), .Y(n13) );
  BUFX2 U26 ( .A(n25), .Y(n14) );
  INVX1 U27 ( .A(n41), .Y(n16) );
  INVX1 U28 ( .A(n26), .Y(n17) );
  INVX1 U29 ( .A(n33), .Y(n15) );
  INVX1 U30 ( .A(n43), .Y(n18) );
  INVX1 U31 ( .A(n28), .Y(SUM[6]) );
  XNOR2X1 U32 ( .A(n1), .B(n21), .Y(SUM[9]) );
  XOR2X1 U33 ( .A(n6), .B(n14), .Y(SUM[8]) );
  FAX1 U34 ( .A(B[7]), .B(A[7]), .C(n29), .YS(SUM[7]) );
  OAI21X1 U35 ( .A(B[6]), .B(A[6]), .C(n7), .Y(n28) );
  FAX1 U36 ( .A(B[13]), .B(A[13]), .C(n30), .YS(SUM[13]) );
  OAI21X1 U37 ( .A(n15), .B(n12), .C(n8), .Y(n30) );
  XOR2X1 U38 ( .A(n4), .B(n12), .Y(SUM[12]) );
  AOI21X1 U39 ( .A(n35), .B(n36), .C(n37), .Y(n31) );
  OR2X1 U40 ( .A(B[12]), .B(A[12]), .Y(n33) );
  XNOR2X1 U41 ( .A(n3), .B(n36), .Y(SUM[11]) );
  OAI21X1 U42 ( .A(n16), .B(n9), .C(n2), .Y(n36) );
  OR2X1 U43 ( .A(B[11]), .B(A[11]), .Y(n35) );
  XOR2X1 U44 ( .A(n5), .B(n9), .Y(SUM[10]) );
  AOI21X1 U45 ( .A(n21), .B(n22), .C(n23), .Y(n39) );
  OR2X1 U46 ( .A(B[9]), .B(A[9]), .Y(n22) );
  OAI21X1 U47 ( .A(n14), .B(n17), .C(n11), .Y(n21) );
  OR2X1 U48 ( .A(B[8]), .B(A[8]), .Y(n26) );
  AOI21X1 U49 ( .A(n29), .B(A[7]), .C(n18), .Y(n25) );
  OAI21X1 U50 ( .A(n29), .B(A[7]), .C(B[7]), .Y(n43) );
  OR2X1 U51 ( .A(B[10]), .B(A[10]), .Y(n41) );
endmodule


module mul8_sv_0_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] , \ab[0][3] ,
         \ab[0][2] , \CARRYB[7][7] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \CARRYB[1][0] , \SUMB[7][7] , \SUMB[7][6] , \SUMB[7][5] ,
         \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] , \SUMB[7][1] , \SUMB[7][0] ,
         \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] , \SUMB[6][3] , \SUMB[6][2] ,
         \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] , \SUMB[5][4] , \SUMB[5][3] ,
         \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] , \SUMB[4][5] , \SUMB[4][4] ,
         \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] , \SUMB[3][6] , \SUMB[3][5] ,
         \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] , \SUMB[3][1] , \SUMB[2][6] ,
         \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] , \SUMB[2][2] , \SUMB[2][1] ,
         \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] , \SUMB[1][3] , \SUMB[1][2] ,
         \SUMB[1][1] , ZA, ZB, \A1[12] , \A1[11] , \A1[10] , \A1[9] , \A1[8] ,
         \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] ,
         \A1[0] , \A2[6] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32;
  assign ZA = A[7];
  assign ZB = B[7];

  FAX1 S14_7_0 ( .A(ZA), .B(ZB), .C(\SUMB[7][0] ), .YC(\A2[6] ), .YS(\A1[5] )
         );
  FAX1 S4_0 ( .A(n14), .B(\CARRYB[6][0] ), .C(\SUMB[6][1] ), .YC(
        \CARRYB[7][0] ), .YS(\SUMB[7][0] ) );
  FAX1 S4_1 ( .A(n12), .B(\CARRYB[6][1] ), .C(\SUMB[6][2] ), .YC(
        \CARRYB[7][1] ), .YS(\SUMB[7][1] ) );
  FAX1 S4_2 ( .A(n15), .B(\CARRYB[6][2] ), .C(\SUMB[6][3] ), .YC(
        \CARRYB[7][2] ), .YS(\SUMB[7][2] ) );
  FAX1 S4_3 ( .A(n8), .B(\CARRYB[6][3] ), .C(\SUMB[6][4] ), .YC(\CARRYB[7][3] ), .YS(\SUMB[7][3] ) );
  FAX1 S4_4 ( .A(n10), .B(\CARRYB[6][4] ), .C(\SUMB[6][5] ), .YC(
        \CARRYB[7][4] ), .YS(\SUMB[7][4] ) );
  FAX1 S4_5 ( .A(n6), .B(\CARRYB[6][5] ), .C(\SUMB[6][6] ), .YC(\CARRYB[7][5] ), .YS(\SUMB[7][5] ) );
  FAX1 S5_6 ( .A(n5), .B(\CARRYB[6][6] ), .C(n4), .YC(\CARRYB[7][6] ), .YS(
        \SUMB[7][6] ) );
  FAX1 S14_7 ( .A(n31), .B(n32), .C(\ab[7][7] ), .YC(\CARRYB[7][7] ), .YS(
        \SUMB[7][7] ) );
  FAX1 S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .C(\SUMB[5][1] ), .YC(
        \CARRYB[6][0] ), .YS(\A1[4] ) );
  FAX1 S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .C(\SUMB[5][2] ), .YC(
        \CARRYB[6][1] ), .YS(\SUMB[6][1] ) );
  FAX1 S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .C(\SUMB[5][3] ), .YC(
        \CARRYB[6][2] ), .YS(\SUMB[6][2] ) );
  FAX1 S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .C(\SUMB[5][4] ), .YC(
        \CARRYB[6][3] ), .YS(\SUMB[6][3] ) );
  FAX1 S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .C(\SUMB[5][5] ), .YC(
        \CARRYB[6][4] ), .YS(\SUMB[6][4] ) );
  FAX1 S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .C(\SUMB[5][6] ), .YC(
        \CARRYB[6][5] ), .YS(\SUMB[6][5] ) );
  FAX1 S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .C(n3), .YC(\CARRYB[6][6] ), .YS(\SUMB[6][6] ) );
  FAX1 S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .C(\SUMB[4][1] ), .YC(
        \CARRYB[5][0] ), .YS(\A1[3] ) );
  FAX1 S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .C(\SUMB[4][2] ), .YC(
        \CARRYB[5][1] ), .YS(\SUMB[5][1] ) );
  FAX1 S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .C(\SUMB[4][3] ), .YC(
        \CARRYB[5][2] ), .YS(\SUMB[5][2] ) );
  FAX1 S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .C(\SUMB[4][4] ), .YC(
        \CARRYB[5][3] ), .YS(\SUMB[5][3] ) );
  FAX1 S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .C(\SUMB[4][5] ), .YC(
        \CARRYB[5][4] ), .YS(\SUMB[5][4] ) );
  FAX1 S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .C(\SUMB[4][6] ), .YC(
        \CARRYB[5][5] ), .YS(\SUMB[5][5] ) );
  FAX1 S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .C(n7), .YC(\CARRYB[5][6] ), .YS(\SUMB[5][6] ) );
  FAX1 S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .C(\SUMB[3][1] ), .YC(
        \CARRYB[4][0] ), .YS(\A1[2] ) );
  FAX1 S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .C(\SUMB[3][2] ), .YC(
        \CARRYB[4][1] ), .YS(\SUMB[4][1] ) );
  FAX1 S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .C(\SUMB[3][3] ), .YC(
        \CARRYB[4][2] ), .YS(\SUMB[4][2] ) );
  FAX1 S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .C(\SUMB[3][4] ), .YC(
        \CARRYB[4][3] ), .YS(\SUMB[4][3] ) );
  FAX1 S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .C(\SUMB[3][5] ), .YC(
        \CARRYB[4][4] ), .YS(\SUMB[4][4] ) );
  FAX1 S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .C(\SUMB[3][6] ), .YC(
        \CARRYB[4][5] ), .YS(\SUMB[4][5] ) );
  FAX1 S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .C(n9), .YC(\CARRYB[4][6] ), .YS(\SUMB[4][6] ) );
  FAX1 S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .C(\SUMB[2][1] ), .YC(
        \CARRYB[3][0] ), .YS(\A1[1] ) );
  FAX1 S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .C(\SUMB[2][2] ), .YC(
        \CARRYB[3][1] ), .YS(\SUMB[3][1] ) );
  FAX1 S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .C(\SUMB[2][3] ), .YC(
        \CARRYB[3][2] ), .YS(\SUMB[3][2] ) );
  FAX1 S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .C(\SUMB[2][4] ), .YC(
        \CARRYB[3][3] ), .YS(\SUMB[3][3] ) );
  FAX1 S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .C(\SUMB[2][5] ), .YC(
        \CARRYB[3][4] ), .YS(\SUMB[3][4] ) );
  FAX1 S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .C(\SUMB[2][6] ), .YC(
        \CARRYB[3][5] ), .YS(\SUMB[3][5] ) );
  FAX1 S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .C(n11), .YC(
        \CARRYB[3][6] ), .YS(\SUMB[3][6] ) );
  FAX1 S1_2_0 ( .A(\ab[2][0] ), .B(\CARRYB[1][0] ), .C(\SUMB[1][1] ), .YC(
        \CARRYB[2][0] ), .YS(\A1[0] ) );
  FAX1 S2_2_1 ( .A(\ab[2][1] ), .B(n24), .C(\SUMB[1][2] ), .YC(\CARRYB[2][1] ), 
        .YS(\SUMB[2][1] ) );
  FAX1 S2_2_2 ( .A(\ab[2][2] ), .B(n25), .C(\SUMB[1][3] ), .YC(\CARRYB[2][2] ), 
        .YS(\SUMB[2][2] ) );
  FAX1 S2_2_3 ( .A(\ab[2][3] ), .B(n26), .C(\SUMB[1][4] ), .YC(\CARRYB[2][3] ), 
        .YS(\SUMB[2][3] ) );
  FAX1 S2_2_4 ( .A(\ab[2][4] ), .B(n27), .C(\SUMB[1][5] ), .YC(\CARRYB[2][4] ), 
        .YS(\SUMB[2][4] ) );
  FAX1 S2_2_5 ( .A(\ab[2][5] ), .B(n28), .C(\SUMB[1][6] ), .YC(\CARRYB[2][5] ), 
        .YS(\SUMB[2][5] ) );
  FAX1 S3_2_6 ( .A(\ab[2][6] ), .B(n29), .C(n13), .YC(\CARRYB[2][6] ), .YS(
        \SUMB[2][6] ) );
  mul8_sv_0_DW01_add_0 FS_1 ( .A({n30, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \A1[5] , \A1[4] , \A1[3] , \A1[2] , \A1[1] , 
        \A1[0] }), .B({n22, n23, n21, n20, n19, n18, n17, \A2[6] , 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  AND2X1 U2 ( .A(B[4]), .B(A[6]), .Y(\ab[6][4] ) );
  AND2X1 U3 ( .A(B[5]), .B(A[6]), .Y(\ab[6][5] ) );
  AND2X1 U4 ( .A(B[1]), .B(A[6]), .Y(\ab[6][1] ) );
  AND2X1 U5 ( .A(B[2]), .B(A[6]), .Y(\ab[6][2] ) );
  AND2X1 U6 ( .A(B[3]), .B(A[6]), .Y(\ab[6][3] ) );
  AND2X1 U7 ( .A(B[6]), .B(A[6]), .Y(\ab[6][6] ) );
  AND2X1 U8 ( .A(B[0]), .B(A[6]), .Y(\ab[6][0] ) );
  OR2X1 U9 ( .A(n32), .B(A[5]), .Y(\ab[5][7] ) );
  INVX1 U10 ( .A(\ab[5][7] ), .Y(n3) );
  OR2X1 U11 ( .A(n32), .B(A[6]), .Y(\ab[6][7] ) );
  INVX1 U12 ( .A(\ab[6][7] ), .Y(n4) );
  OR2X1 U13 ( .A(n31), .B(B[6]), .Y(\ab[7][6] ) );
  INVX1 U14 ( .A(\ab[7][6] ), .Y(n5) );
  OR2X1 U15 ( .A(n31), .B(B[5]), .Y(\ab[7][5] ) );
  INVX1 U16 ( .A(\ab[7][5] ), .Y(n6) );
  OR2X1 U17 ( .A(n32), .B(A[4]), .Y(\ab[4][7] ) );
  INVX1 U18 ( .A(\ab[4][7] ), .Y(n7) );
  OR2X1 U19 ( .A(n31), .B(B[3]), .Y(\ab[7][3] ) );
  INVX1 U20 ( .A(\ab[7][3] ), .Y(n8) );
  AND2X1 U21 ( .A(n16), .B(\ab[1][6] ), .Y(n29) );
  OR2X1 U22 ( .A(n32), .B(A[3]), .Y(\ab[3][7] ) );
  INVX1 U23 ( .A(\ab[3][7] ), .Y(n9) );
  OR2X1 U24 ( .A(n31), .B(B[4]), .Y(\ab[7][4] ) );
  INVX1 U25 ( .A(\ab[7][4] ), .Y(n10) );
  OR2X1 U26 ( .A(n32), .B(A[2]), .Y(\ab[2][7] ) );
  INVX1 U27 ( .A(\ab[2][7] ), .Y(n11) );
  OR2X1 U28 ( .A(n31), .B(B[1]), .Y(\ab[7][1] ) );
  INVX1 U29 ( .A(\ab[7][1] ), .Y(n12) );
  AND2X1 U30 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n28) );
  OR2X1 U31 ( .A(n32), .B(A[1]), .Y(\ab[1][7] ) );
  INVX1 U32 ( .A(\ab[1][7] ), .Y(n13) );
  OR2X1 U33 ( .A(n31), .B(B[0]), .Y(\ab[7][0] ) );
  INVX1 U34 ( .A(\ab[7][0] ), .Y(n14) );
  AND2X1 U35 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n26) );
  AND2X1 U36 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n27) );
  AND2X1 U37 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n25) );
  AND2X1 U38 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n24) );
  OR2X1 U39 ( .A(n31), .B(B[2]), .Y(\ab[7][2] ) );
  INVX1 U40 ( .A(\ab[7][2] ), .Y(n15) );
  OR2X1 U41 ( .A(n32), .B(A[0]), .Y(\ab[0][7] ) );
  INVX1 U42 ( .A(\ab[0][7] ), .Y(n16) );
  INVX1 U43 ( .A(ZA), .Y(n31) );
  AND2X1 U44 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(n17) );
  AND2X1 U45 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(n18) );
  AND2X1 U46 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(n19) );
  AND2X1 U47 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(n20) );
  AND2X1 U48 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(n21) );
  AND2X1 U49 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(n22) );
  INVX1 U50 ( .A(\CARRYB[7][7] ), .Y(n30) );
  AND2X1 U51 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(n23) );
  INVX1 U52 ( .A(ZB), .Y(n32) );
  XOR2X1 U53 ( .A(\SUMB[7][1] ), .B(\CARRYB[7][0] ), .Y(\A1[6] ) );
  XOR2X1 U54 ( .A(\SUMB[7][2] ), .B(\CARRYB[7][1] ), .Y(\A1[7] ) );
  XOR2X1 U55 ( .A(\SUMB[7][3] ), .B(\CARRYB[7][2] ), .Y(\A1[8] ) );
  XOR2X1 U56 ( .A(\SUMB[7][4] ), .B(\CARRYB[7][3] ), .Y(\A1[9] ) );
  XOR2X1 U57 ( .A(\SUMB[7][5] ), .B(\CARRYB[7][4] ), .Y(\A1[10] ) );
  XOR2X1 U58 ( .A(\SUMB[7][6] ), .B(\CARRYB[7][5] ), .Y(\A1[11] ) );
  XOR2X1 U59 ( .A(\SUMB[7][7] ), .B(\CARRYB[7][6] ), .Y(\A1[12] ) );
  XOR2X1 U60 ( .A(\ab[1][1] ), .B(\ab[0][2] ), .Y(\SUMB[1][1] ) );
  XOR2X1 U61 ( .A(\ab[1][2] ), .B(\ab[0][3] ), .Y(\SUMB[1][2] ) );
  XOR2X1 U62 ( .A(\ab[1][3] ), .B(\ab[0][4] ), .Y(\SUMB[1][3] ) );
  XOR2X1 U63 ( .A(\ab[1][4] ), .B(\ab[0][5] ), .Y(\SUMB[1][4] ) );
  XOR2X1 U64 ( .A(\ab[1][5] ), .B(\ab[0][6] ), .Y(\SUMB[1][5] ) );
  XOR2X1 U65 ( .A(\ab[1][6] ), .B(n16), .Y(\SUMB[1][6] ) );
  AND2X1 U66 ( .A(ZA), .B(ZB), .Y(\ab[7][7] ) );
  AND2X1 U67 ( .A(A[5]), .B(B[6]), .Y(\ab[5][6] ) );
  AND2X1 U68 ( .A(A[5]), .B(B[5]), .Y(\ab[5][5] ) );
  AND2X1 U69 ( .A(A[5]), .B(B[4]), .Y(\ab[5][4] ) );
  AND2X1 U70 ( .A(A[5]), .B(B[3]), .Y(\ab[5][3] ) );
  AND2X1 U71 ( .A(A[5]), .B(B[2]), .Y(\ab[5][2] ) );
  AND2X1 U72 ( .A(A[5]), .B(B[1]), .Y(\ab[5][1] ) );
  AND2X1 U73 ( .A(A[5]), .B(B[0]), .Y(\ab[5][0] ) );
  AND2X1 U74 ( .A(A[4]), .B(B[6]), .Y(\ab[4][6] ) );
  AND2X1 U75 ( .A(A[4]), .B(B[5]), .Y(\ab[4][5] ) );
  AND2X1 U76 ( .A(A[4]), .B(B[4]), .Y(\ab[4][4] ) );
  AND2X1 U77 ( .A(A[4]), .B(B[3]), .Y(\ab[4][3] ) );
  AND2X1 U78 ( .A(A[4]), .B(B[2]), .Y(\ab[4][2] ) );
  AND2X1 U79 ( .A(A[4]), .B(B[1]), .Y(\ab[4][1] ) );
  AND2X1 U80 ( .A(A[4]), .B(B[0]), .Y(\ab[4][0] ) );
  AND2X1 U81 ( .A(A[3]), .B(B[6]), .Y(\ab[3][6] ) );
  AND2X1 U82 ( .A(A[3]), .B(B[5]), .Y(\ab[3][5] ) );
  AND2X1 U83 ( .A(A[3]), .B(B[4]), .Y(\ab[3][4] ) );
  AND2X1 U84 ( .A(A[3]), .B(B[3]), .Y(\ab[3][3] ) );
  AND2X1 U85 ( .A(A[3]), .B(B[2]), .Y(\ab[3][2] ) );
  AND2X1 U86 ( .A(A[3]), .B(B[1]), .Y(\ab[3][1] ) );
  AND2X1 U87 ( .A(A[3]), .B(B[0]), .Y(\ab[3][0] ) );
  AND2X1 U88 ( .A(A[2]), .B(B[6]), .Y(\ab[2][6] ) );
  AND2X1 U89 ( .A(A[2]), .B(B[5]), .Y(\ab[2][5] ) );
  AND2X1 U90 ( .A(A[2]), .B(B[4]), .Y(\ab[2][4] ) );
  AND2X1 U91 ( .A(A[2]), .B(B[3]), .Y(\ab[2][3] ) );
  AND2X1 U92 ( .A(A[2]), .B(B[2]), .Y(\ab[2][2] ) );
  AND2X1 U93 ( .A(A[2]), .B(B[1]), .Y(\ab[2][1] ) );
  AND2X1 U94 ( .A(A[2]), .B(B[0]), .Y(\ab[2][0] ) );
  AND2X1 U95 ( .A(A[1]), .B(B[6]), .Y(\ab[1][6] ) );
  AND2X1 U96 ( .A(A[1]), .B(B[5]), .Y(\ab[1][5] ) );
  AND2X1 U97 ( .A(A[1]), .B(B[4]), .Y(\ab[1][4] ) );
  AND2X1 U98 ( .A(A[1]), .B(B[3]), .Y(\ab[1][3] ) );
  AND2X1 U99 ( .A(A[1]), .B(B[2]), .Y(\ab[1][2] ) );
  AND2X1 U100 ( .A(A[0]), .B(B[6]), .Y(\ab[0][6] ) );
  AND2X1 U101 ( .A(A[0]), .B(B[5]), .Y(\ab[0][5] ) );
  AND2X1 U102 ( .A(A[0]), .B(B[4]), .Y(\ab[0][4] ) );
  AND2X1 U103 ( .A(A[0]), .B(B[3]), .Y(\ab[0][3] ) );
  AND2X1 U104 ( .A(A[0]), .B(B[2]), .Y(\ab[0][2] ) );
  AND2X1 U105 ( .A(PRODUCT[0]), .B(\ab[1][1] ), .Y(\CARRYB[1][0] ) );
  AND2X1 U106 ( .A(A[1]), .B(B[1]), .Y(\ab[1][1] ) );
  AND2X1 U107 ( .A(A[0]), .B(B[0]), .Y(PRODUCT[0]) );
endmodule


module mul8_sv_0 ( d1_in, d2_in, d_out );
  input [7:0] d1_in;
  input [7:0] d2_in;
  output [15:0] d_out;


  mul8_sv_0_DW02_mult_0 mult_46 ( .A(d1_in), .B(d2_in), .TC(1'b1), .PRODUCT(
        d_out) );
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


module unit_calc_sv_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  FAX1 U1_7 ( .A(A[7]), .B(B[7]), .C(carry[7]), .YS(SUM[7]) );
  FAX1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .YC(carry[7]), .YS(SUM[6]) );
  FAX1 U1_5 ( .A(A[5]), .B(B[5]), .C(carry[5]), .YC(carry[6]), .YS(SUM[5]) );
  FAX1 U1_4 ( .A(A[4]), .B(B[4]), .C(carry[4]), .YC(carry[5]), .YS(SUM[4]) );
  FAX1 U1_3 ( .A(A[3]), .B(B[3]), .C(carry[3]), .YC(carry[4]), .YS(SUM[3]) );
  FAX1 U1_2 ( .A(A[2]), .B(B[2]), .C(carry[2]), .YC(carry[3]), .YS(SUM[2]) );
  FAX1 U1_1 ( .A(A[1]), .B(B[1]), .C(n1), .YC(carry[2]), .YS(SUM[1]) );
  AND2X1 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module unit_calc_sv_0 ( x_in, x_N_in, ue_in, y_in, x_out, x_N_out, ue_out, 
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
  wire   [15:0] shifty;
  wire   [7:0] y_out8;
  wire   [15:0] xnin_ue;
  wire   [15:0] xnin_ue_scaled;
  wire   [15:0] coeff16;
  wire   [15:0] new_coeff_true;
  wire   [15:0] delayed_new_coeff_true;
  wire   [7:0] coeff8;
  wire   [15:0] y_out16;

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
  mul8_sv_1 mul_xnin_ue ( .d1_in(x_N_in), .d2_in(ue_in), .d_out(xnin_ue) );
  u_scaling_sv_0 u1 ( .d_in(xnin_ue), .d_out(xnin_ue_scaled), .clock(clock) );
  add16_sv_0 add1 ( .d1_in(xnin_ue_scaled), .d2_in(coeff16), .d_out(
        new_coeff_true) );
  shift_1d_16_sv_0 delay_2 ( .xin(new_coeff_true), .xout(
        delayed_new_coeff_true), .clock(clock) );
  saturation_sv_0 sat_1 ( .d_in(delayed_new_coeff_true), .d_out(coeff16) );
  truncation_sv_1 trunc_1 ( .d_in(coeff16), .d_out(coeff8) );
  mul8_sv_0 mul_coeff_x_in ( .d1_in(coeff8), .d2_in(shiftx[31:24]), .d_out(
        y_out16) );
  truncation_sv_0 trunc_2 ( .d_in(y_out16), .d_out(y_out8) );
  unit_calc_sv_0_DW01_add_0 add_321 ( .A(y_out8), .B(shifty[7:0]), .CI(1'b0), 
        .SUM(y_out) );
endmodule


module core_filt_sv ( x_in, x_N_in, ue_in, clock, y_out );
  input [7:0] x_in;
  input [7:0] x_N_in;
  input [7:0] ue_in;
  output [7:0] y_out;
  input clock;

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
  unit_calc_sv_0 tap5 ( .x_in(x_out_t4), .x_N_in(x_N_out_t4), .ue_in(ue_out_t4), .y_in(y_out_t4), .y_out(y_out), .clock(clock) );
endmodule


module tf_lms_sv_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  FAX1 U2_7 ( .A(A[7]), .B(n2), .C(carry[7]), .YS(DIFF[7]) );
  FAX1 U2_6 ( .A(A[6]), .B(n3), .C(carry[6]), .YC(carry[7]), .YS(DIFF[6]) );
  FAX1 U2_5 ( .A(A[5]), .B(n4), .C(carry[5]), .YC(carry[6]), .YS(DIFF[5]) );
  FAX1 U2_4 ( .A(A[4]), .B(n5), .C(carry[4]), .YC(carry[5]), .YS(DIFF[4]) );
  FAX1 U2_3 ( .A(A[3]), .B(n6), .C(carry[3]), .YC(carry[4]), .YS(DIFF[3]) );
  FAX1 U2_2 ( .A(A[2]), .B(n7), .C(carry[2]), .YC(carry[3]), .YS(DIFF[2]) );
  FAX1 U2_1 ( .A(A[1]), .B(n8), .C(n1), .YC(carry[2]), .YS(DIFF[1]) );
  INVX1 U1 ( .A(B[1]), .Y(n8) );
  INVX1 U2 ( .A(B[7]), .Y(n2) );
  OR2X1 U3 ( .A(A[0]), .B(n9), .Y(n1) );
  INVX1 U4 ( .A(B[2]), .Y(n7) );
  INVX1 U5 ( .A(B[3]), .Y(n6) );
  INVX1 U6 ( .A(B[4]), .Y(n5) );
  INVX1 U7 ( .A(B[5]), .Y(n4) );
  INVX1 U8 ( .A(B[6]), .Y(n3) );
  INVX1 U9 ( .A(B[0]), .Y(n9) );
  XNOR2X1 U10 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
endmodule


module tf_lms_sv ( xin, dxin, clock, err, yout, adapt_en );
  input [7:0] xin;
  input [7:0] dxin;
  output [7:0] err;
  output [7:0] yout;
  input clock, adapt_en;
  wire   N3, N4, N5, N6, N7, N8, N9, N10;
  wire   [7:0] e_t;
  wire   [7:0] x_N;
  wire   [7:0] x_1;

  shift_20d_sv shift_1 ( .xin(dxin), .xout(e_t), .clock(clock) );
  shift_21d_sv shift_2 ( .xin(xin), .x_N_out(x_N), .x_1_out(x_1), .clock(clock) );
  core_filt_sv cflt ( .x_in(x_1), .x_N_in(x_N), .ue_in(err), .clock(clock), 
        .y_out(yout) );
  tf_lms_sv_DW01_sub_0 sub_476 ( .A(yout), .B(e_t), .CI(1'b0), .DIFF({N10, N9, 
        N8, N7, N6, N5, N4, N3}) );
  AND2X1 U12 ( .A(N5), .B(adapt_en), .Y(err[2]) );
  AND2X1 U13 ( .A(N6), .B(adapt_en), .Y(err[3]) );
  AND2X1 U14 ( .A(N7), .B(adapt_en), .Y(err[4]) );
  AND2X1 U15 ( .A(N8), .B(adapt_en), .Y(err[5]) );
  AND2X1 U16 ( .A(N9), .B(adapt_en), .Y(err[6]) );
  AND2X1 U17 ( .A(N3), .B(adapt_en), .Y(err[0]) );
  AND2X1 U18 ( .A(N4), .B(adapt_en), .Y(err[1]) );
  AND2X1 U19 ( .A(adapt_en), .B(N10), .Y(err[7]) );
endmodule

