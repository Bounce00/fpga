// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __operator_s_gradiecud_H__
#define __operator_s_gradiecud_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct operator_s_gradiecud_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 13;
  static const unsigned AddressRange = 512;
  static const unsigned AddressWidth = 9;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(operator_s_gradiecud_ram) {
        ram[0] = "0b1101101010111";
        ram[1] = "0b0111000000111";
        ram[2] = "0b0100001100010";
        ram[3] = "0b0011000001000";
        ram[4] = "0b0010010111010";
        ram[5] = "0b0001111100101";
        ram[6] = "0b0001101010001";
        ram[7] = "0b0001011100100";
        ram[8] = "0b0001010010001";
        ram[9] = "0b0001001001110";
        ram[10] = "0b0001000011000";
        ram[11] = "0b0000111101100";
        ram[12] = "0b0000111000110";
        ram[13] = "0b0000110100110";
        ram[14] = "0b0000110001010";
        ram[15] = "0b0000101110010";
        ram[16] = "0b0000101011100";
        ram[17] = "0b0000101001001";
        ram[18] = "0b0000100111000";
        ram[19] = "0b0000100101001";
        ram[20] = "0b0000100011011";
        ram[21] = "0b0000100001111";
        ram[22] = "0b0000100000011";
        ram[23] = "0b0000011111001";
        ram[24] = "0b0000011101111";
        ram[25] = "0b0000011100110";
        ram[26] = "0b0000011011110";
        ram[27] = "0b0000011010110";
        ram[28] = "0b0000011001111";
        ram[29] = "0b0000011001000";
        ram[30] = "0b0000011000010";
        ram[31] = "0b0000010111100";
        ram[32] = "0b0000010110111";
        ram[33] = "0b0000010110010";
        ram[34] = "0b0000010101101";
        ram[35] = "0b0000010101000";
        ram[36] = "0b0000010100100";
        ram[37] = "0b0000010011111";
        ram[38] = "0b0000010011100";
        ram[39] = "0b0000010011000";
        ram[40] = "0b0000010010100";
        ram[41] = "0b0000010010001";
        ram[42] = "0b0000010001110";
        ram[43] = "0b0000010001011";
        ram[44] = "0b0000010001000";
        ram[45] = "0b0000010000101";
        ram[46] = "0b0000010000010";
        ram[47] = "0b0000001111111";
        ram[48] = "0b0000001111101";
        ram[49] = "0b0000001111011";
        ram[50] = "0b0000001111000";
        ram[51] = "0b0000001110110";
        ram[52] = "0b0000001110100";
        ram[53] = "0b0000001110010";
        ram[54] = "0b0000001110000";
        ram[55] = "0b0000001101110";
        ram[56] = "0b0000001101100";
        ram[57] = "0b0000001101010";
        ram[58] = "0b0000001101001";
        ram[59] = "0b0000001100111";
        ram[60] = "0b0000001100101";
        ram[61] = "0b0000001100100";
        ram[62] = "0b0000001100010";
        ram[63] = "0b0000001100001";
        ram[64] = "0b0000010111101";
        ram[65] = "0b0000010111000";
        ram[66] = "0b0000010110011";
        ram[67] = "0b0000010101110";
        ram[68] = "0b0000010101010";
        ram[69] = "0b0000010100101";
        ram[70] = "0b0000010100001";
        ram[71] = "0b0000010011101";
        ram[72] = "0b0000010011010";
        ram[73] = "0b0000010010110";
        ram[74] = "0b0000010010011";
        ram[75] = "0b0000010010000";
        ram[76] = "0b0000010001101";
        ram[77] = "0b0000010001010";
        ram[78] = "0b0000010000111";
        ram[79] = "0b0000010000100";
        ram[80] = "0b0000010000010";
        ram[81] = "0b0000001111111";
        ram[82] = "0b0000001111101";
        ram[83] = "0b0000001111011";
        ram[84] = "0b0000001111000";
        ram[85] = "0b0000001110110";
        ram[86] = "0b0000001110100";
        ram[87] = "0b0000001110010";
        ram[88] = "0b0000001110000";
        ram[89] = "0b0000001101110";
        ram[90] = "0b0000001101101";
        ram[91] = "0b0000001101011";
        ram[92] = "0b0000001101001";
        ram[93] = "0b0000001101000";
        ram[94] = "0b0000001100110";
        ram[95] = "0b0000001100101";
        ram[96] = "0b0000011000101";
        ram[97] = "0b0000010111111";
        ram[98] = "0b0000010111010";
        ram[99] = "0b0000010110101";
        ram[100] = "0b0000010110000";
        ram[101] = "0b0000010101100";
        ram[102] = "0b0000010101000";
        ram[103] = "0b0000010100100";
        ram[104] = "0b0000010100000";
        ram[105] = "0b0000010011100";
        ram[106] = "0b0000010011001";
        ram[107] = "0b0000010010101";
        ram[108] = "0b0000010010010";
        ram[109] = "0b0000010001111";
        ram[110] = "0b0000010001100";
        ram[111] = "0b0000010001010";
        ram[112] = "0b0000010000111";
        ram[113] = "0b0000010000100";
        ram[114] = "0b0000010000010";
        ram[115] = "0b0000010000000";
        ram[116] = "0b0000001111101";
        ram[117] = "0b0000001111011";
        ram[118] = "0b0000001111001";
        ram[119] = "0b0000001110111";
        ram[120] = "0b0000001110101";
        ram[121] = "0b0000001110011";
        ram[122] = "0b0000001110001";
        ram[123] = "0b0000001101111";
        ram[124] = "0b0000001101110";
        ram[125] = "0b0000001101100";
        ram[126] = "0b0000001101010";
        ram[127] = "0b0000001101001";
        ram[128] = "0b0000011001101";
        ram[129] = "0b0000011000111";
        ram[130] = "0b0000011000010";
        ram[131] = "0b0000010111101";
        ram[132] = "0b0000010111000";
        ram[133] = "0b0000010110011";
        ram[134] = "0b0000010101111";
        ram[135] = "0b0000010101011";
        ram[136] = "0b0000010100111";
        ram[137] = "0b0000010100011";
        ram[138] = "0b0000010011111";
        ram[139] = "0b0000010011100";
        ram[140] = "0b0000010011001";
        ram[141] = "0b0000010010110";
        ram[142] = "0b0000010010011";
        ram[143] = "0b0000010010000";
        ram[144] = "0b0000010001101";
        ram[145] = "0b0000010001010";
        ram[146] = "0b0000010001000";
        ram[147] = "0b0000010000101";
        ram[148] = "0b0000010000011";
        ram[149] = "0b0000010000001";
        ram[150] = "0b0000001111110";
        ram[151] = "0b0000001111100";
        ram[152] = "0b0000001111010";
        ram[153] = "0b0000001111000";
        ram[154] = "0b0000001110110";
        ram[155] = "0b0000001110100";
        ram[156] = "0b0000001110011";
        ram[157] = "0b0000001110001";
        ram[158] = "0b0000001101111";
        ram[159] = "0b0000001101110";
        ram[160] = "0b0000011010110";
        ram[161] = "0b0000011010000";
        ram[162] = "0b0000011001011";
        ram[163] = "0b0000011000101";
        ram[164] = "0b0000011000000";
        ram[165] = "0b0000010111100";
        ram[166] = "0b0000010110111";
        ram[167] = "0b0000010110011";
        ram[168] = "0b0000010101111";
        ram[169] = "0b0000010101011";
        ram[170] = "0b0000010100111";
        ram[171] = "0b0000010100011";
        ram[172] = "0b0000010100000";
        ram[173] = "0b0000010011101";
        ram[174] = "0b0000010011010";
        ram[175] = "0b0000010010111";
        ram[176] = "0b0000010010100";
        ram[177] = "0b0000010010001";
        ram[178] = "0b0000010001110";
        ram[179] = "0b0000010001100";
        ram[180] = "0b0000010001001";
        ram[181] = "0b0000010000111";
        ram[182] = "0b0000010000101";
        ram[183] = "0b0000010000010";
        ram[184] = "0b0000010000000";
        ram[185] = "0b0000001111110";
        ram[186] = "0b0000001111100";
        ram[187] = "0b0000001111010";
        ram[188] = "0b0000001111000";
        ram[189] = "0b0000001110111";
        ram[190] = "0b0000001110101";
        ram[191] = "0b0000001110011";
        ram[192] = "0b0000011100001";
        ram[193] = "0b0000011011011";
        ram[194] = "0b0000011010101";
        ram[195] = "0b0000011010000";
        ram[196] = "0b0000011001010";
        ram[197] = "0b0000011000101";
        ram[198] = "0b0000011000001";
        ram[199] = "0b0000010111100";
        ram[200] = "0b0000010111000";
        ram[201] = "0b0000010110100";
        ram[202] = "0b0000010110000";
        ram[203] = "0b0000010101100";
        ram[204] = "0b0000010101000";
        ram[205] = "0b0000010100101";
        ram[206] = "0b0000010100010";
        ram[207] = "0b0000010011111";
        ram[208] = "0b0000010011100";
        ram[209] = "0b0000010011001";
        ram[210] = "0b0000010010110";
        ram[211] = "0b0000010010011";
        ram[212] = "0b0000010010001";
        ram[213] = "0b0000010001110";
        ram[214] = "0b0000010001100";
        ram[215] = "0b0000010001001";
        ram[216] = "0b0000010000111";
        ram[217] = "0b0000010000101";
        ram[218] = "0b0000010000011";
        ram[219] = "0b0000010000001";
        ram[220] = "0b0000001111111";
        ram[221] = "0b0000001111101";
        ram[222] = "0b0000001111011";
        ram[223] = "0b0000001111001";
        ram[224] = "0b0000011101110";
        ram[225] = "0b0000011100111";
        ram[226] = "0b0000011100001";
        ram[227] = "0b0000011011011";
        ram[228] = "0b0000011010110";
        ram[229] = "0b0000011010000";
        ram[230] = "0b0000011001100";
        ram[231] = "0b0000011000111";
        ram[232] = "0b0000011000010";
        ram[233] = "0b0000010111110";
        ram[234] = "0b0000010111010";
        ram[235] = "0b0000010110110";
        ram[236] = "0b0000010110010";
        ram[237] = "0b0000010101111";
        ram[238] = "0b0000010101011";
        ram[239] = "0b0000010101000";
        ram[240] = "0b0000010100101";
        ram[241] = "0b0000010100010";
        ram[242] = "0b0000010011111";
        ram[243] = "0b0000010011100";
        ram[244] = "0b0000010011001";
        ram[245] = "0b0000010010111";
        ram[246] = "0b0000010010100";
        ram[247] = "0b0000010010010";
        ram[248] = "0b0000010001111";
        ram[249] = "0b0000010001101";
        ram[250] = "0b0000010001011";
        ram[251] = "0b0000010001001";
        ram[252] = "0b0000010000111";
        ram[253] = "0b0000010000101";
        ram[254] = "0b0000010000011";
        ram[255] = "0b0000010000001";
        ram[256] = "0b0000011111100";
        ram[257] = "0b0000011110110";
        ram[258] = "0b0000011101111";
        ram[259] = "0b0000011101001";
        ram[260] = "0b0000011100011";
        ram[261] = "0b0000011011110";
        ram[262] = "0b0000011011001";
        ram[263] = "0b0000011010100";
        ram[264] = "0b0000011001111";
        ram[265] = "0b0000011001010";
        ram[266] = "0b0000011000110";
        ram[267] = "0b0000011000010";
        ram[268] = "0b0000010111110";
        ram[269] = "0b0000010111010";
        ram[270] = "0b0000010110111";
        ram[271] = "0b0000010110011";
        ram[272] = "0b0000010110000";
        ram[273] = "0b0000010101101";
        ram[274] = "0b0000010101001";
        ram[275] = "0b0000010100111";
        ram[276] = "0b0000010100100";
        ram[277] = "0b0000010100001";
        ram[278] = "0b0000010011110";
        ram[279] = "0b0000010011100";
        ram[280] = "0b0000010011001";
        ram[281] = "0b0000010010111";
        ram[282] = "0b0000010010100";
        ram[283] = "0b0000010010010";
        ram[284] = "0b0000010010000";
        ram[285] = "0b0000010001110";
        ram[286] = "0b0000010001100";
        ram[287] = "0b0000010001010";
        ram[288] = "0b0000100001110";
        ram[289] = "0b0000100000111";
        ram[290] = "0b0000100000000";
        ram[291] = "0b0000011111010";
        ram[292] = "0b0000011110100";
        ram[293] = "0b0000011101110";
        ram[294] = "0b0000011101000";
        ram[295] = "0b0000011100011";
        ram[296] = "0b0000011011110";
        ram[297] = "0b0000011011001";
        ram[298] = "0b0000011010101";
        ram[299] = "0b0000011010000";
        ram[300] = "0b0000011001100";
        ram[301] = "0b0000011001000";
        ram[302] = "0b0000011000100";
        ram[303] = "0b0000011000001";
        ram[304] = "0b0000010111101";
        ram[305] = "0b0000010111010";
        ram[306] = "0b0000010110110";
        ram[307] = "0b0000010110011";
        ram[308] = "0b0000010110000";
        ram[309] = "0b0000010101101";
        ram[310] = "0b0000010101011";
        ram[311] = "0b0000010101000";
        ram[312] = "0b0000010100101";
        ram[313] = "0b0000010100011";
        ram[314] = "0b0000010100000";
        ram[315] = "0b0000010011110";
        ram[316] = "0b0000010011100";
        ram[317] = "0b0000010011001";
        ram[318] = "0b0000010010111";
        ram[319] = "0b0000010010101";
        ram[320] = "0b0000100100100";
        ram[321] = "0b0000100011100";
        ram[322] = "0b0000100010101";
        ram[323] = "0b0000100001110";
        ram[324] = "0b0000100001000";
        ram[325] = "0b0000100000010";
        ram[326] = "0b0000011111100";
        ram[327] = "0b0000011110110";
        ram[328] = "0b0000011110001";
        ram[329] = "0b0000011101100";
        ram[330] = "0b0000011100111";
        ram[331] = "0b0000011100010";
        ram[332] = "0b0000011011110";
        ram[333] = "0b0000011011010";
        ram[334] = "0b0000011010110";
        ram[335] = "0b0000011010010";
        ram[336] = "0b0000011001110";
        ram[337] = "0b0000011001010";
        ram[338] = "0b0000011000111";
        ram[339] = "0b0000011000011";
        ram[340] = "0b0000011000000";
        ram[341] = "0b0000010111101";
        ram[342] = "0b0000010111010";
        ram[343] = "0b0000010110111";
        ram[344] = "0b0000010110100";
        ram[345] = "0b0000010110010";
        ram[346] = "0b0000010101111";
        ram[347] = "0b0000010101101";
        ram[348] = "0b0000010101010";
        ram[349] = "0b0000010101000";
        ram[350] = "0b0000010100101";
        ram[351] = "0b0000010100011";
        ram[352] = "0b0000101000000";
        ram[353] = "0b0000100111000";
        ram[354] = "0b0000100110000";
        ram[355] = "0b0000100101001";
        ram[356] = "0b0000100100010";
        ram[357] = "0b0000100011011";
        ram[358] = "0b0000100010101";
        ram[359] = "0b0000100001111";
        ram[360] = "0b0000100001001";
        ram[361] = "0b0000100000100";
        ram[362] = "0b0000011111110";
        ram[363] = "0b0000011111001";
        ram[364] = "0b0000011110101";
        ram[365] = "0b0000011110000";
        ram[366] = "0b0000011101100";
        ram[367] = "0b0000011101000";
        ram[368] = "0b0000011100100";
        ram[369] = "0b0000011100000";
        ram[370] = "0b0000011011100";
        ram[371] = "0b0000011011000";
        ram[372] = "0b0000011010101";
        ram[373] = "0b0000011010010";
        ram[374] = "0b0000011001110";
        ram[375] = "0b0000011001011";
        ram[376] = "0b0000011001000";
        ram[377] = "0b0000011000101";
        ram[378] = "0b0000011000011";
        ram[379] = "0b0000011000000";
        ram[380] = "0b0000010111101";
        ram[381] = "0b0000010111011";
        ram[382] = "0b0000010111000";
        ram[383] = "0b0000010110110";
        ram[384] = "0b0000101100101";
        ram[385] = "0b0000101011100";
        ram[386] = "0b0000101010011";
        ram[387] = "0b0000101001100";
        ram[388] = "0b0000101000100";
        ram[389] = "0b0000100111101";
        ram[390] = "0b0000100110110";
        ram[391] = "0b0000100110000";
        ram[392] = "0b0000100101010";
        ram[393] = "0b0000100100100";
        ram[394] = "0b0000100011110";
        ram[395] = "0b0000100011001";
        ram[396] = "0b0000100010100";
        ram[397] = "0b0000100001111";
        ram[398] = "0b0000100001010";
        ram[399] = "0b0000100000110";
        ram[400] = "0b0000100000001";
        ram[401] = "0b0000011111101";
        ram[402] = "0b0000011111001";
        ram[403] = "0b0000011110101";
        ram[404] = "0b0000011110010";
        ram[405] = "0b0000011101110";
        ram[406] = "0b0000011101011";
        ram[407] = "0b0000011100111";
        ram[408] = "0b0000011100100";
        ram[409] = "0b0000011100001";
        ram[410] = "0b0000011011110";
        ram[411] = "0b0000011011011";
        ram[412] = "0b0000011011000";
        ram[413] = "0b0000011010101";
        ram[414] = "0b0000011010011";
        ram[415] = "0b0000011010000";
        ram[416] = "0b0000110011000";
        ram[417] = "0b0000110001111";
        ram[418] = "0b0000110000110";
        ram[419] = "0b0000101111101";
        ram[420] = "0b0000101110101";
        ram[421] = "0b0000101101110";
        ram[422] = "0b0000101100110";
        ram[423] = "0b0000101100000";
        ram[424] = "0b0000101011001";
        ram[425] = "0b0000101010011";
        ram[426] = "0b0000101001101";
        ram[427] = "0b0000101000111";
        ram[428] = "0b0000101000001";
        ram[429] = "0b0000100111100";
        ram[430] = "0b0000100110111";
        ram[431] = "0b0000100110010";
        ram[432] = "0b0000100101101";
        ram[433] = "0b0000100101001";
        ram[434] = "0b0000100100101";
        ram[435] = "0b0000100100000";
        ram[436] = "0b0000100011100";
        ram[437] = "0b0000100011001";
        ram[438] = "0b0000100010101";
        ram[439] = "0b0000100010001";
        ram[440] = "0b0000100001110";
        ram[441] = "0b0000100001010";
        ram[442] = "0b0000100000111";
        ram[443] = "0b0000100000100";
        ram[444] = "0b0000100000001";
        ram[445] = "0b0000011111110";
        ram[446] = "0b0000011111011";
        ram[447] = "0b0000011111000";
        ram[448] = "0b0000111101001";
        ram[449] = "0b0000111011110";
        ram[450] = "0b0000111010101";
        ram[451] = "0b0000111001100";
        ram[452] = "0b0000111000011";
        ram[453] = "0b0000110111011";
        ram[454] = "0b0000110110011";
        ram[455] = "0b0000110101100";
        ram[456] = "0b0000110100101";
        ram[457] = "0b0000110011110";
        ram[458] = "0b0000110011000";
        ram[459] = "0b0000110010010";
        ram[460] = "0b0000110001100";
        ram[461] = "0b0000110000111";
        ram[462] = "0b0000110000001";
        ram[463] = "0b0000101111100";
        ram[464] = "0b0000101110111";
        ram[465] = "0b0000101110011";
        ram[466] = "0b0000101101110";
        ram[467] = "0b0000101101010";
        ram[468] = "0b0000101100110";
        ram[469] = "0b0000101100010";
        ram[470] = "0b0000101011110";
        ram[471] = "0b0000101011010";
        ram[472] = "0b0000101010111";
        ram[473] = "0b0000101010011";
        ram[474] = "0b0000101010000";
        ram[475] = "0b0000101001101";
        ram[476] = "0b0000101001010";
        ram[477] = "0b0000101000111";
        ram[478] = "0b0000101000100";
        ram[479] = "0b0000101000001";
        ram[480] = "0b0001001111011";
        ram[481] = "0b0001001110001";
        ram[482] = "0b0001001101000";
        ram[483] = "0b0001001011111";
        ram[484] = "0b0001001010111";
        ram[485] = "0b0001001001111";
        ram[486] = "0b0001001001000";
        ram[487] = "0b0001001000010";
        ram[488] = "0b0001000111011";
        ram[489] = "0b0001000110110";
        ram[490] = "0b0001000110000";
        ram[491] = "0b0001000101011";
        ram[492] = "0b0001000100110";
        ram[493] = "0b0001000100010";
        ram[494] = "0b0001000011110";
        ram[495] = "0b0001000011010";
        ram[496] = "0b0001000010111";
        ram[497] = "0b0001000010011";
        ram[498] = "0b0001000010000";
        ram[499] = "0b0001000001110";
        ram[500] = "0b0001000001011";
        ram[501] = "0b0001000001001";
        ram[502] = "0b0001000000111";
        ram[503] = "0b0001000000101";
        ram[504] = "0b0001000000011";
        ram[505] = "0b0001000000010";
        ram[506] = "0b0001000000001";
        ram[507] = "0b0001000000000";
        ram[508] = "0b0000111111111";
        ram[509] = "0b0000111111110";
        ram[510] = "0b0000111111110";
        ram[511] = "0b0000111111110";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(operator_s_gradiecud) {


static const unsigned DataWidth = 13;
static const unsigned AddressRange = 512;
static const unsigned AddressWidth = 9;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


operator_s_gradiecud_ram* meminst;


SC_CTOR(operator_s_gradiecud) {
meminst = new operator_s_gradiecud_ram("operator_s_gradiecud_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~operator_s_gradiecud() {
    delete meminst;
}


};//endmodule
#endif
