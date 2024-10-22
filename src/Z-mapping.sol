//SPDX-License-Identifier: MIT

// Solidity contract for z-table mapping from -3.49 to 3.49
pragma solidity ^0.8.0;

contract ZTableMapping {

    // Define a mapping where the key is the scaled phi value (phi * 100)
    mapping(int => uint) public zTable;

    constructor() {
        zTable[-349] = 2;    // z = -3.49 -> 0.0002
        zTable[-348] = 3;    // z = -3.48 -> 0.0003
        zTable[-347] = 3;    // z = -3.47 -> 0.0003
        zTable[-346] = 3;    // z = -3.46 -> 0.0003
        zTable[-345] = 3;    // z = -3.45 -> 0.0003
        zTable[-344] = 3;    // z = -3.44 -> 0.0003
        zTable[-343] = 3;    // z = -3.43 -> 0.0003
        zTable[-342] = 3;    // z = -3.42 -> 0.0003
        zTable[-341] = 3;    // z = -3.41 -> 0.0003
        zTable[-340] = 3;    // z = -3.40 -> 0.0003
        zTable[-339] = 3;    // z = -3.39 -> 0.0003
        zTable[-338] = 4;    // z = -3.38 -> 0.0004
        zTable[-337] = 4;    // z = -3.37 -> 0.0004
        zTable[-336] = 4;    // z = -3.36 -> 0.0004
        zTable[-335] = 4;    // z = -3.35 -> 0.0004
        zTable[-334] = 4;    // z = -3.34 -> 0.0004
        zTable[-333] = 4;    // z = -3.33 -> 0.0004
        zTable[-332] = 5;    // z = -3.32 -> 0.0005
        zTable[-331] = 5;    // z = -3.31 -> 0.0005
        zTable[-330] = 5;    // z = -3.30 -> 0.0005
        zTable[-329] = 5;    // z = -3.29 -> 0.0005
        zTable[-328] = 5;    // z = -3.28 -> 0.0005
        zTable[-327] = 5;    // z = -3.27 -> 0.0005
        zTable[-326] = 6;    // z = -3.26 -> 0.0006
        zTable[-325] = 6;    // z = -3.25 -> 0.0006
        zTable[-324] = 6;    // z = -3.24 -> 0.0006
        zTable[-323] = 6;   // z = -3.23 -> 0.0006
        zTable[-322] = 6;   // z = -3.22 -> 0.0006
        zTable[-321] = 7;   // z = -3.21 -> 0.0007
        zTable[-320] = 7;   // z = -3.20 -> 0.0007
        zTable[-319] = 7;   // z = -3.19 -> 0.0007
        zTable[-318] = 7;   // z = -3.18 -> 0.0007
        zTable[-317] = 8;   // z = -3.17 -> 0.0008
        zTable[-316] = 8;   // z = -3.16 -> 0.0008
        zTable[-315] = 8;   // z = -3.15 -> 0.0008
        zTable[-314] = 8;   // z = -3.14 -> 0.0008
        zTable[-313] = 9;   // z = -3.13 -> 0.0009
        zTable[-312] = 9;   // z = -3.12 -> 0.0009
        zTable[-311] = 9;   // z = -3.11 -> 0.0009
        zTable[-310] = 10;   // z = -3.10 -> 0.0010
        zTable[-309] = 10;   // z = -3.09 -> 0.0010
        zTable[-308] = 10;   // z = -3.08 -> 0.0010
        zTable[-307] = 11;   // z = -3.07 -> 0.0011
        zTable[-306] = 11;   // z = -3.06 -> 0.0011
        zTable[-305] = 11;   // z = -3.05 -> 0.0011
        zTable[-304] = 12;   // z = -3.04 -> 0.0012
        zTable[-303] = 12;   // z = -3.03 -> 0.0012
        zTable[-302] = 13;   // z = -3.02 -> 0.0013
        zTable[-301] = 13;   // z = -3.01 -> 0.0013
        zTable[-300] = 13;   // z = -3.00 -> 0.0013
        zTable[-299] = 14;   // z = -2.99 -> 0.0014
        zTable[-298] = 14;   // z = -2.98 -> 0.0014
        zTable[-297] = 15;   // z = -2.97 -> 0.0015
        zTable[-296] = 15;   // z = -2.96 -> 0.0015
        zTable[-295] = 16;   // z = -2.95 -> 0.0016
        zTable[-294] = 16;   // z = -2.94 -> 0.0016
        zTable[-293] = 17;   // z = -2.93 -> 0.0017
        zTable[-292] = 18;   // z = -2.92 -> 0.0018
        zTable[-291] = 18;   // z = -2.91 -> 0.0018
        zTable[-290] = 19;   // z = -2.90 -> 0.0019
        zTable[-289] = 19;   // z = -2.89 -> 0.0019
        zTable[-288] = 20;   // z = -2.88 -> 0.0020
        zTable[-287] = 21;   // z = -2.87 -> 0.0021
        zTable[-286] = 21;   // z = -2.86 -> 0.0021
        zTable[-285] = 22;   // z = -2.85 -> 0.0022
        zTable[-284] = 23;   // z = -2.84 -> 0.0023
        zTable[-283] = 23;   // z = -2.83 -> 0.0023
        zTable[-282] = 24;   // z = -2.82 -> 0.0024
        zTable[-281] = 25;   // z = -2.81 -> 0.0025
        zTable[-280] = 26;   // z = -2.80 -> 0.0026
        zTable[-279] = 26;   // z = -2.79 -> 0.0026
        zTable[-278] = 27;   // z = -2.78 -> 0.0027
        zTable[-277] = 28;   // z = -2.77 -> 0.0028
        zTable[-276] = 29;   // z = -2.76 -> 0.0029
        zTable[-275] = 30;   // z = -2.75 -> 0.0030
        zTable[-274] = 31;   // z = -2.74 -> 0.0031
        zTable[-273] = 32;   // z = -2.73 -> 0.0032
        zTable[-272] = 33;   // z = -2.72 -> 0.0033
        zTable[-271] = 34;   // z = -2.71 -> 0.0034
        zTable[-270] = 35;   // z = -2.70 -> 0.0035
        zTable[-269] = 36;   // z = -2.69 -> 0.0036
        zTable[-268] = 37;   // z = -2.68 -> 0.0037
        zTable[-267] = 38;   // z = -2.67 -> 0.0038
        zTable[-266] = 39;   // z = -2.66 -> 0.0039
        zTable[-265] = 40;   // z = -2.65 -> 0.0040
        zTable[-264] = 41;   // z = -2.64 -> 0.0041
        zTable[-263] = 43;   // z = -2.63 -> 0.0043
        zTable[-262] = 44;   // z = -2.62 -> 0.0044
        zTable[-261] = 45;   // z = -2.61 -> 0.0045
        zTable[-260] = 47;   // z = -2.60 -> 0.0047
        zTable[-259] = 48;   // z = -2.59 -> 0.0048
        zTable[-258] = 49;   // z = -2.58 -> 0.0049
        zTable[-257] = 51;   // z = -2.57 -> 0.0051
        zTable[-256] = 52;   // z = -2.56 -> 0.0052
        zTable[-255] = 54;   // z = -2.55 -> 0.0054
        zTable[-254] = 55;   // z = -2.54 -> 0.0055
        zTable[-253] = 57;   // z = -2.53 -> 0.0057
        zTable[-252] = 59;   // z = -2.52 -> 0.0059
        zTable[-251] = 60;   // z = -2.51 -> 0.0060
        zTable[-250] = 62;   // z = -2.50 -> 0.0062
        zTable[-249] = 64;   // z = -2.49 -> 0.0064
        zTable[-248] = 66;   // z = -2.48 -> 0.0066
        zTable[-247] = 68;   // z = -2.47 -> 0.0068
        zTable[-246] = 69;   // z = -2.46 -> 0.0069
        zTable[-245] = 71;  // z = -2.45 -> 0.0071
        zTable[-244] = 73;  // z = -2.44 -> 0.0073
        zTable[-243] = 75;  // z = -2.43 -> 0.0075
        zTable[-242] = 78;  // z = -2.42 -> 0.0078
        zTable[-241] = 80;  // z = -2.41 -> 0.0080
        zTable[-240] = 82;  // z = -2.40 -> 0.0082
        zTable[-239] = 84;  // z = -2.39 -> 0.0084
        zTable[-238] = 87;  // z = -2.38 -> 0.0087
        zTable[-237] = 89;  // z = -2.37 -> 0.0089
        zTable[-236] = 91;  // z = -2.36 -> 0.0091
        zTable[-235] = 94;  // z = -2.35 -> 0.0094
        zTable[-234] = 96;  // z = -2.34 -> 0.0096
        zTable[-233] = 99;  // z = -2.33 -> 0.0099
        zTable[-232] = 102;  // z = -2.32 -> 0.0102
        zTable[-231] = 104;  // z = -2.31 -> 0.0104
        zTable[-230] = 107;  // z = -2.30 -> 0.0107
        zTable[-229] = 110;  // z = -2.29 -> 0.0110
        zTable[-228] = 113;  // z = -2.28 -> 0.0113
        zTable[-227] = 116;  // z = -2.27 -> 0.0116
        zTable[-226] = 119;  // z = -2.26 -> 0.0119
        zTable[-225] = 122;  // z = -2.25 -> 0.0122
        zTable[-224] = 125;  // z = -2.24 -> 0.0125
        zTable[-223] = 129;  // z = -2.23 -> 0.0129
        zTable[-222] = 132;  // z = -2.22 -> 0.0132
        zTable[-221] = 136;  // z = -2.21 -> 0.0136
        zTable[-220] = 139;  // z = -2.20 -> 0.0139
        zTable[-219] = 143;  // z = -2.19 -> 0.0143
        zTable[-218] = 146;  // z = -2.18 -> 0.0146
        zTable[-217] = 150;  // z = -2.17 -> 0.0150
        zTable[-216] = 154;  // z = -2.16 -> 0.0154
        zTable[-215] = 158;  // z = -2.15 -> 0.0158
        zTable[-214] = 162;  // z = -2.14 -> 0.0162
        zTable[-213] = 166;  // z = -2.13 -> 0.0166
        zTable[-212] = 170;  // z = -2.12 -> 0.0170
        zTable[-211] = 174;  // z = -2.11 -> 0.0174
        zTable[-210] = 179;  // z = -2.10 -> 0.0179
        zTable[-209] = 183;  // z = -2.09 -> 0.0183
        zTable[-208] = 188;  // z = -2.08 -> 0.0188
        zTable[-207] = 192;  // z = -2.07 -> 0.0192
        zTable[-206] = 197;  // z = -2.06 -> 0.0197
        zTable[-205] = 202;  // z = -2.05 -> 0.0202
        zTable[-204] = 207;  // z = -2.04 -> 0.0207
        zTable[-203] = 212;  // z = -2.03 -> 0.0212
        zTable[-202] = 217;  // z = -2.02 -> 0.0217
        zTable[-201] = 222;  // z = -2.01 -> 0.0222
        zTable[-200] = 228;  // z = -2.00 -> 0.0228
        zTable[-199] = 233;  // z = -1.99 -> 0.0233
        zTable[-198] = 239;  // z = -1.98 -> 0.0239
        zTable[-197] = 244;  // z = -1.97 -> 0.0244
        zTable[-196] = 250;  // z = -1.96 -> 0.0250
        zTable[-195] = 256;  // z = -1.95 -> 0.0256
        zTable[-194] = 262;  // z = -1.94 -> 0.0262
        zTable[-193] = 268;  // z = -1.93 -> 0.0268
        zTable[-192] = 274;  // z = -1.92 -> 0.0274
        zTable[-191] = 281;  // z = -1.91 -> 0.0281
        zTable[-190] = 287;  // z = -1.90 -> 0.0287
        zTable[-189] = 294;  // z = -1.89 -> 0.0294
        zTable[-188] = 301;  // z = -1.88 -> 0.0301
        zTable[-187] = 307;  // z = -1.87 -> 0.0307
        zTable[-186] = 314;  // z = -1.86 -> 0.0314
        zTable[-185] = 322;  // z = -1.85 -> 0.0322
        zTable[-184] = 329;  // z = -1.84 -> 0.0329
        zTable[-183] = 336;  // z = -1.83 -> 0.0336
        zTable[-182] = 344;  // z = -1.82 -> 0.0344
        zTable[-181] = 351;  // z = -1.81 -> 0.0351
        zTable[-180] = 359;  // z = -1.80 -> 0.0359
        zTable[-179] = 367;  // z = -1.79 -> 0.0367
        zTable[-178] = 375;  // z = -1.78 -> 0.0375
        zTable[-177] = 384;  // z = -1.77 -> 0.0384
        zTable[-176] = 392;  // z = -1.76 -> 0.0392
        zTable[-175] = 401;  // z = -1.75 -> 0.0401
        zTable[-174] = 409;  // z = -1.74 -> 0.0409
        zTable[-173] = 418;  // z = -1.73 -> 0.0418
        zTable[-172] = 427;  // z = -1.72 -> 0.0427
        zTable[-171] = 436;  // z = -1.71 -> 0.0436
        zTable[-170] = 446;  // z = -1.70 -> 0.0446
        zTable[-169] = 455;  // z = -1.69 -> 0.0455
        zTable[-168] = 465;  // z = -1.68 -> 0.0465
        zTable[-167] = 475;  // z = -1.67 -> 0.0475
        zTable[-166] = 485;  // z = -1.66 -> 0.0485
        zTable[-165] = 495;  // z = -1.65 -> 0.0495
        zTable[-164] = 505;  // z = -1.64 -> 0.0505
        zTable[-163] = 516;  // z = -1.63 -> 0.0516
        zTable[-162] = 526;  // z = -1.62 -> 0.0526
        zTable[-161] = 537;  // z = -1.61 -> 0.0537
        zTable[-160] = 548;  // z = -1.60 -> 0.0548
        zTable[-159] = 559;  // z = -1.59 -> 0.0559
        zTable[-158] = 571;  // z = -1.58 -> 0.0571
        zTable[-157] = 582;  // z = -1.57 -> 0.0582
        zTable[-156] = 594;  // z = -1.56 -> 0.0594
        zTable[-155] = 606;  // z = -1.55 -> 0.0606
        zTable[-154] = 618;  // z = -1.54 -> 0.0618
        zTable[-153] = 630;  // z = -1.53 -> 0.0630
        zTable[-152] = 643;  // z = -1.52 -> 0.0643
        zTable[-151] = 655;  // z = -1.51 -> 0.0655
        zTable[-150] = 668;  // z = -1.50 -> 0.0668
        zTable[-149] = 681;  // z = -1.49 -> 0.0681
        zTable[-148] = 694;  // z = -1.48 -> 0.0694
        zTable[-147] = 708;  // z = -1.47 -> 0.0708
        zTable[-146] = 721;  // z = -1.46 -> 0.0721
        zTable[-145] = 735;  // z = -1.45 -> 0.0735
        zTable[-144] = 749;  // z = -1.44 -> 0.0749
        zTable[-143] = 764;  // z = -1.43 -> 0.0764
        zTable[-142] = 778;  // z = -1.42 -> 0.0778
        zTable[-141] = 793;  // z = -1.41 -> 0.0793
        zTable[-140] = 808;  // z = -1.40 -> 0.0808
        zTable[-139] = 823;  // z = -1.39 -> 0.0823
        zTable[-138] = 838;  // z = -1.38 -> 0.0838
        zTable[-137] = 853;  // z = -1.37 -> 0.0853
        zTable[-136] = 869;  // z = -1.36 -> 0.0869
        zTable[-135] = 885;  // z = -1.35 -> 0.0885
        zTable[-134] = 901;  // z = -1.34 -> 0.0901
        zTable[-133] = 918;  // z = -1.33 -> 0.0918
        zTable[-132] = 934;  // z = -1.32 -> 0.0934
        zTable[-131] = 951;  // z = -1.31 -> 0.0951
        zTable[-130] = 968;  // z = -1.30 -> 0.0968
        zTable[-129] = 985;  // z = -1.29 -> 0.0985
        zTable[-128] = 1003; // z = -1.28 -> 0.1003
        zTable[-127] = 1020; // z = -1.27 -> 0.1020
        zTable[-126] = 1038; // z = -1.26 -> 0.1038
        zTable[-125] = 1056; // z = -1.25 -> 0.1056
        zTable[-124] = 1075; // z = -1.24 -> 0.1075
        zTable[-123] = 1093; // z = -1.23 -> 0.1093
        zTable[-122] = 1112; // z = -1.22 -> 0.1112
        zTable[-121] = 1131; // z = -1.21 -> 0.1131
        zTable[-120] = 1151; // z = -1.20 -> 0.1151
        zTable[-119] = 1170; // z = -1.19 -> 0.1170
        zTable[-118] = 1190; // z = -1.18 -> 0.1190
        zTable[-117] = 1210; // z = -1.17 -> 0.1210
        zTable[-116] = 1230; // z = -1.16 -> 0.1230
        zTable[-115] = 1251; // z = -1.15 -> 0.1251
        zTable[-114] = 1271; // z = -1.14 -> 0.1271
        zTable[-113] = 1292; // z = -1.13 -> 0.1292
        zTable[-112] = 1314; // z = -1.12 -> 0.1314
        zTable[-111] = 1335; // z = -1.11 -> 0.1335
        zTable[-110] = 1357; // z = -1.10 -> 0.1357
        zTable[-109] = 1379; // z = -1.09 -> 0.1379
        zTable[-108] = 1401; // z = -1.08 -> 0.1401
        zTable[-107] = 1423; // z = -1.07 -> 0.1423
        zTable[-106] = 1446; // z = -1.06 -> 0.1446
        zTable[-105] = 1469; // z = -1.05 -> 0.1469
        zTable[-104] = 1492; // z = -1.04 -> 0.1492
        zTable[-103] = 1515; // z = -1.03 -> 0.1515
        zTable[-102] = 1539; // z = -1.02 -> 0.1539
        zTable[-101] = 1562; // z = -1.01 -> 0.1562
        zTable[-100] = 1587; // z = -1.00 -> 0.1587
        zTable[-99] = 1611;  // z = -0.99 -> 0.1611
        zTable[-98] = 1635;  // z = -0.98 -> 0.1635
        zTable[-97] = 1660;  // z = -0.97 -> 0.1660
        zTable[-96] = 1685;  // z = -0.96 -> 0.1685
        zTable[-95] = 1711;  // z = -0.95 -> 0.1711
        zTable[-94] = 1736;  // z = -0.94 -> 0.1736
        zTable[-93] = 1762;  // z = -0.93 -> 0.1762
        zTable[-92] = 1788;  // z = -0.92 -> 0.1788
        zTable[-91] = 1814;  // z = -0.91 -> 0.1814
        zTable[-90] = 1841;  // z = -0.90 -> 0.1841
        zTable[-89] = 1867;  // z = -0.89 -> 0.1867
        zTable[-88] = 1894;  // z = -0.88 -> 0.1894
        zTable[-87] = 1922;  // z = -0.87 -> 0.1922
        zTable[-86] = 1949;  // z = -0.86 -> 0.1949
        zTable[-85] = 1977;  // z = -0.85 -> 0.1977
        zTable[-84] = 2005;  // z = -0.84 -> 0.2005
        zTable[-83] = 2033;  // z = -0.83 -> 0.2033
        zTable[-82] = 2061;  // z = -0.82 -> 0.2061
        zTable[-81] = 2090;  // z = -0.81 -> 0.2090
        zTable[-80] = 2119;  // z = -0.80 -> 0.2119
        zTable[-79] = 2148;  // z = -0.79 -> 0.2148
        zTable[-78] = 2177;  // z = -0.78 -> 0.2177
        zTable[-77] = 2206;  // z = -0.77 -> 0.2206
        zTable[-76] = 2236;  // z = -0.76 -> 0.2236
        zTable[-75] = 2266;  // z = -0.75 -> 0.2266
        zTable[-74] = 2296;  // z = -0.74 -> 0.2296
        zTable[-73] = 2327;  // z = -0.73 -> 0.2327
        zTable[-72] = 2358;  // z = -0.72 -> 0.2358
        zTable[-71] = 2389;  // z = -0.71 -> 0.2389
        zTable[-70] = 2420;  // z = -0.70 -> 0.2420
        zTable[-69] = 2451;  // z = -0.69 -> 0.2451
        zTable[-68] = 2483;  // z = -0.68 -> 0.2483
        zTable[-67] = 2514;  // z = -0.67 -> 0.2514
        zTable[-66] = 2546;  // z = -0.66 -> 0.2546
        zTable[-65] = 2578;  // z = -0.65 -> 0.2578
        zTable[-64] = 2611;  // z = -0.64 -> 0.2611
        zTable[-63] = 2643;  // z = -0.63 -> 0.2643
        zTable[-62] = 2676;  // z = -0.62 -> 0.2676
        zTable[-61] = 2709;  // z = -0.61 -> 0.2709
        zTable[-60] = 2743;  // z = -0.60 -> 0.2743
        zTable[-59] = 2776;  // z = -0.59 -> 0.2776
        zTable[-58] = 2810;  // z = -0.58 -> 0.2810
        zTable[-57] = 2843;  // z = -0.57 -> 0.2843
        zTable[-56] = 2877;  // z = -0.56 -> 0.2877
        zTable[-55] = 2912;  // z = -0.55 -> 0.2912
        zTable[-54] = 2946;  // z = -0.54 -> 0.2946
        zTable[-53] = 2981;  // z = -0.53 -> 0.2981
        zTable[-52] = 3015;  // z = -0.52 -> 0.3015
        zTable[-51] = 3050;  // z = -0.51 -> 0.3050
        zTable[-50] = 3085;  // z = -0.50 -> 0.3085
        zTable[-49] = 3121;  // z = -0.49 -> 0.3121
        zTable[-48] = 3156;  // z = -0.48 -> 0.3156
        zTable[-47] = 3192;  // z = -0.47 -> 0.3192
        zTable[-46] = 3228;  // z = -0.46 -> 0.3228
        zTable[-45] = 3264;  // z = -0.45 -> 0.3264
        zTable[-44] = 3300;  // z = -0.44 -> 0.3300
        zTable[-43] = 3336;  // z = -0.43 -> 0.3336
        zTable[-42] = 3372;  // z = -0.42 -> 0.3372
        zTable[-41] = 3409;  // z = -0.41 -> 0.3409
        zTable[-40] = 3446;  // z = -0.40 -> 0.3446
        zTable[-39] = 3483;  // z = -0.39 -> 0.3483
        zTable[-38] = 3520;  // z = -0.38 -> 0.3520
        zTable[-37] = 3557;  // z = -0.37 -> 0.3557
        zTable[-36] = 3594;  // z = -0.36 -> 0.3594
        zTable[-35] = 3632;  // z = -0.35 -> 0.3632
        zTable[-34] = 3669;  // z = -0.34 -> 0.3669
        zTable[-33] = 3707;  // z = -0.33 -> 0.3707
        zTable[-32] = 3745;  // z = -0.32 -> 0.3745
        zTable[-31] = 3783;  // z = -0.31 -> 0.3783
        zTable[-30] = 3821;  // z = -0.30 -> 0.3821
        zTable[-29] = 3859;  // z = -0.29 -> 0.3859
        zTable[-28] = 3897;  // z = -0.28 -> 0.3897
        zTable[-27] = 3936;  // z = -0.27 -> 0.3936
        zTable[-26] = 3974;  // z = -0.26 -> 0.3974
        zTable[-25] = 4013;  // z = -0.25 -> 0.4013
        zTable[-24] = 4052;  // z = -0.24 -> 0.4052
        zTable[-23] = 4090;  // z = -0.23 -> 0.4090
        zTable[-22] = 4129;  // z = -0.22 -> 0.4129
        zTable[-21] = 4168;  // z = -0.21 -> 0.4168
        zTable[-20] = 4207;  // z = -0.20 -> 0.4207
        zTable[-19] = 4247;  // z = -0.19 -> 0.4247
        zTable[-18] = 4286;  // z = -0.18 -> 0.4286
        zTable[-17] = 4325;  // z = -0.17 -> 0.4325
        zTable[-16] = 4364;  // z = -0.16 -> 0.4364
        zTable[-15] = 4404;  // z = -0.15 -> 0.4404
        zTable[-14] = 4443;  // z = -0.14 -> 0.4443
        zTable[-13] = 4483;  // z = -0.13 -> 0.4483
        zTable[-12] = 4522;  // z = -0.12 -> 0.4522
        zTable[-11] = 4562;  // z = -0.11 -> 0.4562
        zTable[-10] = 4602;  // z = -0.10 -> 0.4602
        zTable[-9] = 4641;   // z = -0.09 -> 0.4641
        zTable[-8] = 4681;   // z = -0.08 -> 0.4681
        zTable[-7] = 4721;   // z = -0.07 -> 0.4721
        zTable[-6] = 4761;   // z = -0.06 -> 0.4761
        zTable[-5] = 4801;   // z = -0.05 -> 0.4801
        zTable[-4] = 4840;   // z = -0.04 -> 0.4840
        zTable[-3] = 4880;   // z = -0.03 -> 0.4880
        zTable[-2] = 4920;   // z = -0.02 -> 0.4920
        zTable[-1] = 4960;   // z = -0.01 -> 0.4960
        
        zTable[0] = 5000;    // z = 0.00 -> 0.5000

        zTable[1] = 5040;    // z = 0.01 -> 0.5040
        zTable[2] = 5080;    // z = 0.02 -> 0.5080
        zTable[3] = 5120;    // z = 0.03 -> 0.5120
        zTable[4] = 5160;    // z = 0.04 -> 0.5160
        zTable[5] = 5199;    // z = 0.05 -> 0.5199
        zTable[6] = 5239;    // z = 0.06 -> 0.5239
        zTable[7] = 5279;    // z = 0.07 -> 0.5279
        zTable[8] = 5319;    // z = 0.08 -> 0.5319
        zTable[9] = 5359;    // z = 0.09 -> 0.5359
        zTable[10] = 5398;   // z = 0.10 -> 0.539
        zTable[11] = 5438;   // z = 0.11 -> 0.5438
        zTable[12] = 5478;   // z = 0.12 -> 0.5478
        zTable[13] = 5518;   // z = 0.13 -> 0.5518
        zTable[14] = 5558;   // z = 0.14 -> 0.5558
        zTable[15] = 5597;   // z = 0.15 -> 0.5597
        zTable[16] = 5637;   // z = 0.16 -> 0.5637
        zTable[17] = 5677;   // z = 0.17 -> 0.5677
        zTable[18] = 5717;   // z = 0.18 -> 0.5717
        zTable[19] = 5757;   // z = 0.19 -> 0.5757
        zTable[20] = 5796;   // z = 0.20 -> 0.5796
        zTable[21] = 5836;   // z = 0.21 -> 0.5836
        zTable[22] = 5876;   // z = 0.22 -> 0.5876
        zTable[23] = 5915;   // z = 0.23 -> 0.5915
        zTable[24] = 5955;   // z = 0.24 -> 0.5955
        zTable[25] = 5995;   // z = 0.25 -> 0.5995
        zTable[26] = 6034;   // z = 0.26 -> 0.6034
        zTable[27] = 6074;   // z = 0.27 -> 0.6074
        zTable[28] = 6114;   // z = 0.28 -> 0.6114
        zTable[29] = 6154;   // z = 0.29 -> 0.6154
        zTable[30] = 6193;   // z = 0.30 -> 0.6193
        zTable[31] = 6233;   // z = 0.31 -> 0.6233
        zTable[32] = 6273;   // z = 0.32 -> 0.6273
        zTable[33] = 6312;   // z = 0.33 -> 0.6312
        zTable[34] = 6352;   // z = 0.34 -> 0.6352
        zTable[35] = 6392;   // z = 0.35 -> 0.6392
        zTable[36] = 6431;   // z = 0.36 -> 0.6431
        zTable[37] = 6471;   // z = 0.37 -> 0.6471
        zTable[38] = 6511;   // z = 0.38 -> 0.6511
        zTable[39] = 6550;   // z = 0.39 -> 0.6550
        zTable[40] = 6590;   // z = 0.40 -> 0.6590
        zTable[41] = 6630;   // z = 0.41 -> 0.6630
        zTable[42] = 6670;   // z = 0.42 -> 0.6670
        zTable[43] = 6710;   // z = 0.43 -> 0.6710
        zTable[44] = 6750;   // z = 0.44 -> 0.6750
        zTable[45] = 6790;   // z = 0.45 -> 0.6790
        zTable[46] = 6830;   // z = 0.46 -> 0.6830 
        zTable[47] = 6870;   // z = 0.47 -> 0.6870
        zTable[48] = 6910;   // z = 0.48 -> 0.6910
        zTable[49] = 6950;   // z = 0.49 -> 0.6950
        zTable[50] = 6990;   // z = 0.50 -> 0.6990
        zTable[51] = 7030;   // z = 0.51 -> 0.7030
        zTable[52] = 7070;   // z = 0.52 -> 0.7070
        zTable[53] = 7110;   // z = 0.53 -> 0.7110
        zTable[54] = 7150;   // z = 0.54 -> 0.7150
        zTable[55] = 7190;   // z = 0.55 -> 0.7190
        zTable[56] = 7230;   // z = 0.56 -> 0.7230
        zTable[57] = 7270;   // z = 0.57 -> 0.7270
        zTable[58] = 7310;   // z = 0.58 -> 0.7310
        zTable[59] = 7350;   // z = 0.59 -> 0.7350
        zTable[60] = 7390;   // z = 0.60 -> 0.7390
        zTable[61] = 7430;   // z = 0.61 -> 0.7430
        zTable[62] = 7470;   // z = 0.62 -> 0.7470
        zTable[63] = 7510;   // z = 0.63 -> 0.7510
        zTable[64] = 7550;   // z = 0.64 -> 0.7550
        zTable[65] = 7590;   // z = 0.65 -> 0.7590
        zTable[66] = 7630;   // z = 0.66 -> 0.7630
        zTable[67] = 7670;   // z = 0.67 -> 0.7670
        zTable[68] = 7710;   // z = 0.68 -> 0.7710
        zTable[69] = 7750;   // z = 0.69 -> 0.7750
        zTable[70] = 7790;   // z = 0.70 -> 0.7790
        zTable[71] = 7830;   // z = 0.71 -> 0.7830
        zTable[72] = 7870;   // z = 0.72 -> 0.7870
        zTable[73] = 7910;   // z = 0.73 -> 0.7910
        zTable[74] = 7950;   // z = 0.74 -> 0.7950 
        zTable[75] = 7990;   // z = 0.75 -> 0.7990
        zTable[76] = 8030;   // z = 0.76 -> 0.8030
        zTable[77] = 8070;   // z = 0.77 -> 0.8070
        zTable[78] = 8110;   // z = 0.78 -> 0.8110
        zTable[79] = 8150;   // z = 0.79 -> 0.8150
        zTable[80] = 8190;   // z = 0.80 -> 0.8190
        zTable[81] = 8230;   // z = 0.81 -> 0.8230
        zTable[82] = 8270;   // z = 0.82 -> 0.8270
        zTable[83] = 8310;   // z = 0.83 -> 0.8310
        zTable[84] = 8350;   // z = 0.84 -> 0.8350
        zTable[85] = 8390;   // z = 0.85 -> 0.8390
        zTable[86] = 8430;   // z = 0.86 -> 0.8430
        zTable[87] = 8470;   // z = 0.87 -> 0.8470
        zTable[88] = 8510;   // z = 0.88 -> 0.8510
        zTable[89] = 8550;   // z = 0.89 -> 0.8550
        zTable[90] = 8590;   // z = 0.90 -> 0.8590
        zTable[91] = 8630;   // z = 0.91 -> 0.8630
        zTable[92] = 8670;   // z = 0.92 -> 0.8670
        zTable[93] = 8710;   // z = 0.93 -> 0.8710
        zTable[94] = 8750;   // z = 0.94 -> 0.8750
        zTable[95] = 8790;   // z = 0.95 -> 0.8790
        zTable[96] = 8830;   // z = 0.96 -> 0.8830
        zTable[97] = 8870;   // z = 0.97 -> 0.8870
        zTable[98] = 8910;   // z = 0.98 -> 0.8910
        zTable[99] = 8950;   // z = 0.99 -> 0.8950
        zTable[100] = 8990;  // z = 1.00 -> 0.8990
        zTable[101] = 9030;  // z = 1.01 -> 0.9030
        zTable[102] = 9070;  // z = 1.02 -> 0.9070
        zTable[103] = 9110;  // z = 1.03 -> 0.9110
        zTable[104] = 9150;  // z = 1.04 -> 0.9150
        zTable[105] = 9190;  // z = 1.05 -> 0.9190
        zTable[106] = 9230;  // z = 1.06 -> 0.9230
        zTable[107] = 9270;  // z = 1.07 -> 0.9270
        zTable[108] = 9310;  // z = 1.08 -> 0.9310
        zTable[109] = 9350;  // z = 1.09 -> 0.9350
        zTable[110] = 9390;  // z = 1.10 -> 0.9390
        zTable[111] = 9430;  // z = 1.11 -> 0.9430
        zTable[112] = 9470;  // z = 1.12 -> 0.9470
        zTable[113] = 9510;  // z = 1.13 -> 0.9510
        zTable[114] = 9550;  // z = 1.14 -> 0.9550
        zTable[115] = 9590;  // z = 1.15 -> 0.9590
        zTable[116] = 9630;  // z = 1.16 -> 0.9630
        zTable[117] = 9670;  // z = 1.17 -> 0.9670
        zTable[118] = 9710;  // z = 1.18 -> 0.9710
        zTable[119] = 9750;  // z = 1.19 -> 0.9750
        zTable[120] = 9790;  // z = 1.20 -> 0.9790
        zTable[121] = 9830;  // z = 1.21 -> 0.9830
        zTable[122] = 9870;  // z = 1.22 -> 0.9870
        zTable[123] = 9910;  // z = 1.23 -> 0.9910
        zTable[124] = 9950;  // z = 1.24 -> 0.9950
        zTable[125] = 9990;  // z = 1.25 -> 0.9990
        zTable[126] = 10030; // z = 1.26 -> 1.0030
        zTable[127] = 10070; // z = 1.27 -> 1.0070
        zTable[128] = 10110; // z = 1.28 -> 1.0110
        zTable[129] = 10150; // z = 1.29 -> 1.0150
        zTable[130] = 10190; // z = 1.30 -> 1.0190
        zTable[131] = 10230; // z = 1.31 -> 1.0230
        zTable[132] = 10270; // z = 1.32 -> 1.0270
        zTable[133] = 10310; // z = 1.33 -> 1.0310
        zTable[134] = 10350; // z = 1.34 -> 1.0350
        zTable[135] = 10390; // z = 1.35 -> 1.0390
        zTable[136] = 10430; // z = 1.36 -> 1.0430
        zTable[137] = 10470; // z = 1.37 -> 1.0470
        zTable[138] = 10510; // z = 1.38 -> 1.0510
        zTable[139] = 10550; // z = 1.39 -> 1.0550
        zTable[140] = 10590; // z = 1.40 -> 1.0590
        zTable[141] = 10630; // z = 1.41 -> 1.0630
        zTable[142] = 10670; // z = 1.42 -> 1.0670
        zTable[143] = 10710; // z = 1.43 -> 1.0710
        zTable[144] = 10750; // z = 1.44 -> 1.0750
        zTable[145] = 10790; // z = 1.45 -> 1.0790
        zTable[146] = 10830; // z = 1.46 -> 1.0830
        zTable[147] = 10870; // z = 1.47 -> 1.0870
        zTable[148] = 10910; // z = 1.48 -> 1.0910
        zTable[149] = 10950; // z = 1.49 -> 1.0950
        zTable[150] = 10990; // z = 1.50 -> 1.0990
        zTable[151] = 11030; // z = 1.51 -> 1.1030
        zTable[152] = 11070; // z = 1.52 -> 1.1070
        zTable[153] = 11110; // z = 1.53 -> 1.1110
        zTable[154] = 11150; // z = 1.54 -> 1.1150
        zTable[155] = 11190; // z = 1.55 -> 1.1190
        zTable[156] = 11230; // z = 1.56 -> 1.1230
        zTable[157] = 11270; // z = 1.57 -> 1.1270
        zTable[158] = 11310; // z = 1.58 -> 1.1310
        zTable[159] = 11350; // z = 1.59 -> 1.1350
        zTable[160] = 11390; // z = 1.60 -> 1.1390
        zTable[161] = 11430; // z = 1.61 -> 1.1430
        zTable[162] = 11470; // z = 1.62 -> 1.1470
        zTable[163] = 11510; // z = 1.63 -> 1.1510
        zTable[164] = 11550; // z = 1.64 -> 1.1550
        zTable[165] = 11590; // z = 1.65 -> 1.1590
        zTable[166] = 11630; // z = 1.66 -> 1.1630
        zTable[167] = 11670; // z = 1.67 -> 1.1670
        zTable[168] = 11710; // z = 1.68 -> 1.1710
        zTable[169] = 11750; // z = 1.69 -> 1.1750
        zTable[170] = 11790; // z = 1.70 -> 1.1790
        zTable[171] = 11830; // z = 1.71 -> 1.1830
        zTable[172] = 11870; // z = 1.72 -> 1.1870
        zTable[173] = 11910; // z = 1.73 -> 1.1910
        zTable[174] = 11950; // z = 1.74 -> 1.1950
        zTable[175] = 11990; // z = 1.75 -> 1.1990
        zTable[176] = 12030; // z = 1.76 -> 1.2030
        zTable[177] = 12070; // z = 1.77 -> 1.2070
        zTable[178] = 12110; // z = 1.78 -> 1.2110
        zTable[179] = 12150; // z = 1.79 -> 1.2150
        zTable[180] = 12190; // z = 1.80 -> 1.2190
        zTable[181] = 12230; // z = 1.81 -> 1.2230
        zTable[182] = 12270; // z = 1.82 -> 1.2270
        zTable[183] = 12310; // z = 1.83 -> 1.2310
        zTable[184] = 12350; // z = 1.84 -> 1.2350
        zTable[185] = 12390; // z = 1.85 -> 1.2390
        zTable[186] = 12430; // z = 1.86 -> 1.2430
        zTable[187] = 12470; // z = 1.87 -> 1.2470
        zTable[188] = 12510; // z = 1.88 -> 1.2510
        zTable[189] = 12550; // z = 1.89 -> 1.2550
        zTable[190] = 12590; // z = 1.90 -> 1.2590
        zTable[191] = 12630; // z = 1.91 -> 1.2630
        zTable[192] = 12670; // z = 1.92 -> 1.2670
        zTable[193] = 12710; // z = 1.93 -> 1.2710
        zTable[194] = 12750; // z = 1.94 -> 1.2750
        zTable[195] = 12790; // z = 1.95 -> 1.2790
        zTable[196] = 12830; // z = 1.96 -> 1.2830
        zTable[197] = 12870; // z = 1.97 -> 1.2870
        zTable[198] = 12910; // z = 1.98 -> 1.2910
        zTable[199] = 12950; // z = 1.99 -> 1.2950
        zTable[200] = 12990; // z = 2.00 -> 1.2990
        zTable[201] = 13030; // z = 2.01 -> 1.3030
        zTable[202] = 13070; // z = 2.02 -> 1.3070
        zTable[203] = 13110; // z = 2.03 -> 1.3110
        zTable[204] = 13150; // z = 2.04 -> 1.3150
        zTable[205] = 13190; // z = 2.05 -> 1.3190
        zTable[206] = 13230; // z = 2.06 -> 1.3230
        zTable[207] = 13270; // z = 2.07 -> 1.3270
        zTable[208] = 13310; // z = 2.08 -> 1.3310
        zTable[209] = 13350; // z = 2.09 -> 1.3350
        zTable[210] = 13390; // z = 2.10 -> 1.3390
        zTable[211] = 13430; // z = 2.11 -> 1.3430
        zTable[212] = 13470; // z = 2.12 -> 1.3470
        zTable[213] = 13510; // z = 2.13 -> 1.3510
        zTable[214] = 13550; // z = 2.14 -> 1.3550
        zTable[215] = 13590; // z = 2.15 -> 1.3590
        zTable[216] = 13630; // z = 2.16 -> 1.3630
        zTable[217] = 13670; // z = 2.17 -> 1.3670
        zTable[218] = 13710; // z = 2.18 -> 1.3710
        zTable[219] = 13750; // z = 2.19 -> 1.3750
        zTable[220] = 13790; // z = 2.20 -> 1.3790
        zTable[221] = 13830; // z = 2.21 -> 1.3830
        zTable[222] = 13870; // z = 2.22 -> 1.3870
        zTable[223] = 13910; // z = 2.23 -> 1.3910
        zTable[224] = 13950; // z = 2.24 -> 1.3950
        zTable[225] = 13990; // z = 2.25 -> 1.3990
        zTable[226] = 14030; // z = 2.26 -> 1.4030
        zTable[227] = 14070; // z = 2.27 -> 1.4070
        zTable[228] = 14110; // z = 2.28 -> 1.4110
        zTable[229] = 14150; // z = 2.29 -> 1.4150
        zTable[230] = 14190; // z = 2.30 -> 1.4190
        zTable[231] = 14230; // z = 2.31 -> 1.4230
        zTable[232] = 14270; // z = 2.32 -> 1.4270
        zTable[233] = 14310; // z = 2.33 -> 1.4310
        zTable[234] = 14350; // z = 2.34 -> 1.4350
        zTable[235] = 14390; // z = 2.35 -> 1.4390
        zTable[236] = 14430; // z = 2.36 -> 1.4430
        zTable[237] = 14470; // z = 2.37 -> 1.4470
        zTable[238] = 14510; // z = 2.38 -> 1.4510
        zTable[239] = 14550; // z = 2.39 -> 1.4550
        zTable[240] = 14590; // z = 2.40 -> 1.4590
        zTable[241] = 14630; // z = 2.41 -> 1.4630
        zTable[242] = 14670; // z = 2.42 -> 1.4670
        zTable[243] = 14710; // z = 2.43 -> 1.4710
        zTable[244] = 14750; // z = 2.44 -> 1.4750
        zTable[245] = 14790; // z = 2.45 -> 1.4790
        zTable[246] = 14830; // z = 2.46 -> 1.4830
        zTable[247] = 14870; // z = 2.47 -> 1.4870
        zTable[248] = 14910; // z = 2.48 -> 1.4910
        zTable[249] = 14950; // z = 2.49 -> 1.4950
        zTable[250] = 14990; // z = 2.50 -> 1.4990
        zTable[251] = 15030; // z = 2.51 -> 1.5030
        zTable[252] = 15070; // z = 2.52 -> 1.5070
        zTable[253] = 15110; // z = 2.53 -> 1.5110
        zTable[254] = 15150; // z = 2.54 -> 1.5150
        zTable[255] = 15190; // z = 2.55 -> 1.5190
        zTable[256] = 15230; // z = 2.56 -> 1.5230
        zTable[257] = 15270; // z = 2.57 -> 1.5270
        zTable[258] = 15310; // z = 2.58 -> 1.5310
        zTable[259] = 15350; // z = 2.59 -> 1.5350
        zTable[260] = 15390; // z = 2.60 -> 1.5390
        zTable[261] = 15430; // z = 2.61 -> 1.5430
        zTable[262] = 15470; // z = 2.62 -> 1.5470
        zTable[263] = 15510; // z = 2.63 -> 1.5510
        zTable[264] = 15550; // z = 2.64 -> 1.5550
        zTable[265] = 15590; // z = 2.65 -> 1.5590
        zTable[266] = 15630; // z = 2.66 -> 1.5630
        zTable[267] = 15670; // z = 2.67 -> 1.5670
        zTable[268] = 15710; // z = 2.68 -> 1.5710
        zTable[269] = 15750; // z = 2.69 -> 1.5750
        zTable[270] = 15790; // z = 2.70 -> 1.5790
        zTable[271] = 15830; // z = 2.71 -> 1.5830
        zTable[272] = 15870; // z = 2.72 -> 1.5870
        zTable[273] = 15910; // z = 2.73 -> 1.5910
        zTable[274] = 15950; // z = 2.74 -> 1.5950
        zTable[275] = 15990; // z = 2.75 -> 1.5990
        zTable[276] = 16030; // z = 2.76 -> 1.6030
        zTable[277] = 16070; // z = 2.77 -> 1.6070
        zTable[278] = 16110; // z = 2.78 -> 1.6110
        zTable[279] = 16150; // z = 2.79 -> 1.6150
        zTable[280] = 16190; // z = 2.80 -> 1.6190
        zTable[281] = 16230; // z = 2.81 -> 1.6230
        zTable[282] = 16270; // z = 2.82 -> 1.6270
        zTable[283] = 16310; // z = 2.83 -> 1.6310
        zTable[284] = 16350; // z = 2.84 -> 1.6350
        zTable[285] = 16390; // z = 2.85 -> 1.6390
        zTable[286] = 16430; // z = 2.86 -> 1.6430
        zTable[287] = 16470; // z = 2.87 -> 1.6470
        zTable[288] = 16510; // z = 2.88 -> 1.6510
        zTable[289] = 16550; // z = 2.89 -> 1.6550
        zTable[290] = 16590; // z = 2.90 -> 1.6590
        zTable[291] = 16630; // z = 2.91 -> 1.6630
        zTable[292] = 16670; // z = 2.92 -> 1.6670
        zTable[293] = 16710; // z = 2.93 -> 1.6710
        zTable[294] = 16750; // z = 2.94 -> 1.6750
        zTable[295] = 16790; // z = 2.95 -> 1.6790
        zTable[296] = 16830; // z = 2.96 -> 1.6830 
        zTable[297] = 16870; // z = 2.97 -> 1.6870
        zTable[298] = 16910; // z = 2.98 -> 1.6910
        zTable[299] = 16950; // z = 2.99 -> 1.6950
        zTable[300] = 16990; // z = 3.00 -> 1.6990
        zTable[301] = 17030; // z = 3.01 -> 1.7030
        zTable[302] = 17070; // z = 3.02 -> 1.7070
        zTable[303] = 17110; // z = 3.03 -> 1.7110
        zTable[304] = 17150; // z = 3.04 -> 1.7150
        zTable[305] = 17190; // z = 3.05 -> 1.7190
        zTable[306] = 17230; // z = 3.06 -> 1.7230
        zTable[307] = 17270; // z = 3.07 -> 1.7270
        zTable[308] = 17310; // z = 3.08 -> 1.7310
        zTable[309] = 17350; // z = 3.09 -> 1.7350
        zTable[310] = 17390; // z = 3.10 -> 1.7390
        zTable[311] = 17430; // z = 3.11 -> 1.7430
        zTable[312] = 17470; // z = 3.12 -> 1.7470
        zTable[313] = 17510; // z = 3.13 -> 1.7510
        zTable[314] = 17550; // z = 3.14 -> 1.7550
        zTable[315] = 17590; // z = 3.15 -> 1.7590
        zTable[316] = 17630; // z = 3.16 -> 1.7630
        zTable[317] = 17670; // z = 3.17 -> 1.7670
        zTable[318] = 17710; // z = 3.18 -> 1.7710
        zTable[319] = 17750; // z = 3.19 -> 1.7750
        zTable[320] = 17790; // z = 3.20 -> 1.7790
        zTable[321] = 17830; // z = 3.21 -> 1.7830
        zTable[322] = 17870; // z = 3.22 -> 1.7870
        zTable[323] = 17910; // z = 3.23 -> 1.7910
        zTable[324] = 17950; // z = 3.24 -> 1.7950
        zTable[325] = 17990; // z = 3.25 -> 1.7990
        zTable[326] = 18030; // z = 3.26 -> 1.8030
        zTable[327] = 18070; // z = 3.27 -> 1.8070
        zTable[328] = 18110; // z = 3.28 -> 1.8110
        zTable[329] = 18150; // z = 3.29 -> 1.8150
        zTable[330] = 18190; // z = 3.30 -> 1.8190
        zTable[331] = 18230; // z = 3.31 -> 1.8230
        zTable[332] = 18270; // z = 3.32 -> 1.8270
        zTable[333] = 18310; // z = 3.33 -> 1.8310
        zTable[334] = 18350; // z = 3.34 -> 1.8350
        zTable[335] = 18390; // z = 3.35 -> 1.8390
        zTable[336] = 18430; // z = 3.36 -> 1.8430
        zTable[337] = 18470; // z = 3.37 -> 1.8470
        zTable[338] = 18510; // z = 3.38 -> 1.8510
        zTable[339] = 18550; // z = 3.39 -> 1.8550
        zTable[340] = 18590; // z = 3.40 -> 1.8590
        zTable[341] = 18630; // z = 3.41 -> 1.8630
        zTable[342] = 18670; // z = 3.42 -> 1.8670  
        zTable[343] = 18710; // z = 3.43 -> 1.8710
        zTable[344] = 18750; // z = 3.44 -> 1.8750
        zTable[345] = 18790; // z = 3.45 -> 1.8790
        zTable[346] = 18830; // z = 3.46 -> 1.8830
        zTable[347] = 18870; // z = 3.47 -> 1.8870
        zTable[348] = 18910; // z = 3.48 -> 1.8910
        zTable[349] = 10000; // z = 3.49 -> 1
    }

    // Function to retrieve the value from the zTable
    // The input will be the full z-value scaled by 100, e.g., -2.35 -> -235
    function getZTableValue(int phi) public view returns (uint) {
        return zTable[phi];
    }
}
