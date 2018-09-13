; ModuleID = 'E:/code/hls/xilinx_design/examples/design/dsp/awgn/sty_awgn/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@uut_lfsr128_V = internal unnamed_addr global i128 1512366075204170930279365292653862640
@scaleLookup = internal unnamed_addr constant [256 x i17] [i17 -14397, i17 -15234, i17 -16065, i17 -16889, i17 -17708, i17 -18521, i17 -19328, i17 -20129, i17 -20924, i17 -21714, i17 -22498, i17 -23276, i17 -24049, i17 -24817, i17 -25578, i17 -26335, i17 -27086, i17 -27831, i17 -28571, i17 -29306, i17 -30036, i17 -30760, i17 -31480, i17 -32194, i17 -32903, i17 -33606, i17 -34305, i17 -34999, i17 -35688, i17 -36372, i17 -37051, i17 -37725, i17 -38394, i17 -39059, i17 -39718, i17 -40373, i17 -41024, i17 -41669, i17 -42310, i17 -42947, i17 -43578, i17 -44206, i17 -44829, i17 -45447, i17 -46061, i17 -46670, i17 -47275, i17 -47876, i17 -48473, i17 -49065, i17 -49653, i17 -50237, i17 -50816, i17 -51392, i17 -51963, i17 -52530, i17 -53093, i17 -53652, i17 -54207, i17 -54759, i17 -55306, i17 -55849, i17 -56388, i17 -56924, i17 -57455, i17 -57983, i17 -58507, i17 -59027, i17 -59544, i17 -60057, i17 -60566, i17 -61072, i17 -61573, i17 -62072, i17 -62566, i17 -63058, i17 -63545, i17 -64029, i17 -64510, i17 -64987, i17 -65461, i17 65140, i17 64673, i17 64210, i17 63749, i17 63292, i17 62839, i17 62388, i17 61941, i17 61497, i17 61056, i17 60618, i17 60183, i17 59752, i17 59323, i17 58898, i17 58476, i17 58057, i17 57640, i17 57227, i17 56817, i17 56409, i17 56005, i17 55603, i17 55205, i17 54809, i17 54416, i17 54026, i17 53638, i17 53254, i17 52872, i17 52493, i17 52117, i17 51743, i17 51372, i17 51004, i17 50638, i17 50275, i17 49914, i17 49557, i17 49201, i17 48848, i17 48498, i17 48151, i17 47805, i17 47463, i17 47122, i17 46784, i17 46449, i17 46116, i17 45785, i17 45457, i17 45131, i17 44808, i17 44486, i17 44167, i17 43851, i17 43536, i17 43224, i17 42914, i17 42607, i17 42301, i17 41998, i17 41697, i17 41398, i17 41101, i17 40806, i17 40514, i17 40223, i17 39935, i17 39648, i17 39364, i17 39082, i17 38802, i17 38524, i17 38247, i17 37973, i17 37701, i17 37431, i17 37162, i17 36896, i17 36631, i17 36369, i17 36108, i17 35849, i17 35592, i17 35337, i17 35083, i17 34832, i17 34582, i17 34334, i17 34088, i17 33844, i17 33601, i17 33360, i17 33121, i17 32883, i17 32648, i17 32414, i17 32181, i17 31950, i17 31721, i17 31494, i17 31268, i17 31044, i17 30821, i17 30600, i17 30381, i17 30163, i17 29947, i17 29732, i17 29519, i17 29307, i17 29097, i17 28889, i17 28681, i17 28476, i17 28272, i17 28069, i17 27868, i17 27668, i17 27470, i17 27273, i17 27077, i17 26883, i17 26690, i17 26499, i17 26309, i17 26120, i17 25933, i17 25747, i17 25562, i17 25379, i17 25197, i17 25016, i17 24837, i17 24659, i17 24482, i17 24307, i17 24132, i17 23959, i17 23788, i17 23617, i17 23448, i17 23280, i17 23113, i17 22947, i17 22782, i17 22619, i17 22457, i17 22296, i17 22136, i17 21977, i17 21820, i17 21663, i17 21508, i17 21354, i17 21201, i17 21049, i17 20898, i17 20748, i17 20599, i17 20452, i17 20305, i17 20159, i17 20015, i17 19871, i17 19729, i17 19587, i17 19447, i17 19308, i17 19169, i17 19032, i17 18895, i17 18760, i17 18625]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@gradientContents = internal unnamed_addr constant [512 x i13] [i13 -1193, i13 3591, i13 2146, i13 1544, i13 1210, i13 997, i13 849, i13 740, i13 657, i13 590, i13 536, i13 492, i13 454, i13 422, i13 394, i13 370, i13 348, i13 329, i13 312, i13 297, i13 283, i13 271, i13 259, i13 249, i13 239, i13 230, i13 222, i13 214, i13 207, i13 200, i13 194, i13 188, i13 183, i13 178, i13 173, i13 168, i13 164, i13 159, i13 156, i13 152, i13 148, i13 145, i13 142, i13 139, i13 136, i13 133, i13 130, i13 127, i13 125, i13 123, i13 120, i13 118, i13 116, i13 114, i13 112, i13 110, i13 108, i13 106, i13 105, i13 103, i13 101, i13 100, i13 98, i13 97, i13 189, i13 184, i13 179, i13 174, i13 170, i13 165, i13 161, i13 157, i13 154, i13 150, i13 147, i13 144, i13 141, i13 138, i13 135, i13 132, i13 130, i13 127, i13 125, i13 123, i13 120, i13 118, i13 116, i13 114, i13 112, i13 110, i13 109, i13 107, i13 105, i13 104, i13 102, i13 101, i13 197, i13 191, i13 186, i13 181, i13 176, i13 172, i13 168, i13 164, i13 160, i13 156, i13 153, i13 149, i13 146, i13 143, i13 140, i13 138, i13 135, i13 132, i13 130, i13 128, i13 125, i13 123, i13 121, i13 119, i13 117, i13 115, i13 113, i13 111, i13 110, i13 108, i13 106, i13 105, i13 205, i13 199, i13 194, i13 189, i13 184, i13 179, i13 175, i13 171, i13 167, i13 163, i13 159, i13 156, i13 153, i13 150, i13 147, i13 144, i13 141, i13 138, i13 136, i13 133, i13 131, i13 129, i13 126, i13 124, i13 122, i13 120, i13 118, i13 116, i13 115, i13 113, i13 111, i13 110, i13 214, i13 208, i13 203, i13 197, i13 192, i13 188, i13 183, i13 179, i13 175, i13 171, i13 167, i13 163, i13 160, i13 157, i13 154, i13 151, i13 148, i13 145, i13 142, i13 140, i13 137, i13 135, i13 133, i13 130, i13 128, i13 126, i13 124, i13 122, i13 120, i13 119, i13 117, i13 115, i13 225, i13 219, i13 213, i13 208, i13 202, i13 197, i13 193, i13 188, i13 184, i13 180, i13 176, i13 172, i13 168, i13 165, i13 162, i13 159, i13 156, i13 153, i13 150, i13 147, i13 145, i13 142, i13 140, i13 137, i13 135, i13 133, i13 131, i13 129, i13 127, i13 125, i13 123, i13 121, i13 238, i13 231, i13 225, i13 219, i13 214, i13 208, i13 204, i13 199, i13 194, i13 190, i13 186, i13 182, i13 178, i13 175, i13 171, i13 168, i13 165, i13 162, i13 159, i13 156, i13 153, i13 151, i13 148, i13 146, i13 143, i13 141, i13 139, i13 137, i13 135, i13 133, i13 131, i13 129, i13 252, i13 246, i13 239, i13 233, i13 227, i13 222, i13 217, i13 212, i13 207, i13 202, i13 198, i13 194, i13 190, i13 186, i13 183, i13 179, i13 176, i13 173, i13 169, i13 167, i13 164, i13 161, i13 158, i13 156, i13 153, i13 151, i13 148, i13 146, i13 144, i13 142, i13 140, i13 138, i13 270, i13 263, i13 256, i13 250, i13 244, i13 238, i13 232, i13 227, i13 222, i13 217, i13 213, i13 208, i13 204, i13 200, i13 196, i13 193, i13 189, i13 186, i13 182, i13 179, i13 176, i13 173, i13 171, i13 168, i13 165, i13 163, i13 160, i13 158, i13 156, i13 153, i13 151, i13 149, i13 292, i13 284, i13 277, i13 270, i13 264, i13 258, i13 252, i13 246, i13 241, i13 236, i13 231, i13 226, i13 222, i13 218, i13 214, i13 210, i13 206, i13 202, i13 199, i13 195, i13 192, i13 189, i13 186, i13 183, i13 180, i13 178, i13 175, i13 173, i13 170, i13 168, i13 165, i13 163, i13 320, i13 312, i13 304, i13 297, i13 290, i13 283, i13 277, i13 271, i13 265, i13 260, i13 254, i13 249, i13 245, i13 240, i13 236, i13 232, i13 228, i13 224, i13 220, i13 216, i13 213, i13 210, i13 206, i13 203, i13 200, i13 197, i13 195, i13 192, i13 189, i13 187, i13 184, i13 182, i13 357, i13 348, i13 339, i13 332, i13 324, i13 317, i13 310, i13 304, i13 298, i13 292, i13 286, i13 281, i13 276, i13 271, i13 266, i13 262, i13 257, i13 253, i13 249, i13 245, i13 242, i13 238, i13 235, i13 231, i13 228, i13 225, i13 222, i13 219, i13 216, i13 213, i13 211, i13 208, i13 408, i13 399, i13 390, i13 381, i13 373, i13 366, i13 358, i13 352, i13 345, i13 339, i13 333, i13 327, i13 321, i13 316, i13 311, i13 306, i13 301, i13 297, i13 293, i13 288, i13 284, i13 281, i13 277, i13 273, i13 270, i13 266, i13 263, i13 260, i13 257, i13 254, i13 251, i13 248, i13 489, i13 478, i13 469, i13 460, i13 451, i13 443, i13 435, i13 428, i13 421, i13 414, i13 408, i13 402, i13 396, i13 391, i13 385, i13 380, i13 375, i13 371, i13 366, i13 362, i13 358, i13 354, i13 350, i13 346, i13 343, i13 339, i13 336, i13 333, i13 330, i13 327, i13 324, i13 321, i13 635, i13 625, i13 616, i13 607, i13 599, i13 591, i13 584, i13 578, i13 571, i13 566, i13 560, i13 555, i13 550, i13 546, i13 542, i13 538, i13 535, i13 531, i13 528, i13 526, i13 523, i13 521, i13 519, i13 517, i13 515, i13 514, i13 513, i13 512, i13 511, i13 510, i13 510, i13 510]
@coarseContents = internal unnamed_addr constant [512 x i17] [i17 -2, i17 -5444, i17 -8218, i17 -10037, i17 -11404, i17 -12503, i17 -13423, i17 -14216, i17 -14914, i17 -15536, i17 -16099, i17 -16613, i17 -17085, i17 -17523, i17 -17931, i17 -18312, i17 -18671, i17 -19010, i17 -19331, i17 -19635, i17 -19925, i17 -20202, i17 -20467, i17 -20721, i17 -20965, i17 -21199, i17 -21425, i17 -21643, i17 -21854, i17 -22057, i17 -22255, i17 -22446, i17 -22631, i17 -22811, i17 -22986, i17 -23157, i17 -23322, i17 -23484, i17 -23641, i17 -23795, i17 -23945, i17 -24092, i17 -24235, i17 -24375, i17 -24512, i17 -24646, i17 -24777, i17 -24906, i17 -25032, i17 -25156, i17 -25277, i17 -25397, i17 -25513, i17 -25628, i17 -25741, i17 -25852, i17 -25961, i17 -26068, i17 -26174, i17 -26277, i17 -26380, i17 -26480, i17 -26579, i17 -26677, i17 -26820, i17 -27007, i17 -27188, i17 -27365, i17 -27536, i17 -27704, i17 -27867, i17 -28027, i17 -28182, i17 -28334, i17 -28483, i17 -28628, i17 -28770, i17 -28909, i17 -29046, i17 -29179, i17 -29310, i17 -29439, i17 -29565, i17 -29688, i17 -29810, i17 -29929, i17 -30046, i17 -30161, i17 -30274, i17 -30386, i17 -30495, i17 -30603, i17 -30709, i17 -30813, i17 -30916, i17 -31018, i17 -31166, i17 -31360, i17 -31549, i17 -31732, i17 -31911, i17 -32085, i17 -32255, i17 -32421, i17 -32582, i17 -32741, i17 -32895, i17 -33046, i17 -33194, i17 -33339, i17 -33481, i17 -33620, i17 -33756, i17 -33890, i17 -34021, i17 -34150, i17 -34276, i17 -34400, i17 -34522, i17 -34642, i17 -34760, i17 -34876, i17 -34990, i17 -35102, i17 -35213, i17 -35322, i17 -35429, i17 -35534, i17 -35689, i17 -35892, i17 -36088, i17 -36279, i17 -36466, i17 -36647, i17 -36824, i17 -36997, i17 -37166, i17 -37331, i17 -37492, i17 -37650, i17 -37804, i17 -37955, i17 -38103, i17 -38249, i17 -38391, i17 -38530, i17 -38667, i17 -38802, i17 -38934, i17 -39064, i17 -39191, i17 -39316, i17 -39440, i17 -39561, i17 -39680, i17 -39797, i17 -39913, i17 -40027, i17 -40139, i17 -40249, i17 -40411, i17 -40623, i17 -40828, i17 -41029, i17 -41224, i17 -41414, i17 -41599, i17 -41780, i17 -41957, i17 -42129, i17 -42298, i17 -42463, i17 -42625, i17 -42784, i17 -42939, i17 -43091, i17 -43240, i17 -43386, i17 -43530, i17 -43671, i17 -43809, i17 -43946, i17 -44079, i17 -44211, i17 -44340, i17 -44467, i17 -44592, i17 -44715, i17 -44837, i17 -44956, i17 -45074, i17 -45190, i17 -45360, i17 -45582, i17 -45798, i17 -46009, i17 -46213, i17 -46413, i17 -46608, i17 -46798, i17 -46984, i17 -47166, i17 -47344, i17 -47517, i17 -47688, i17 -47854, i17 -48018, i17 -48178, i17 -48335, i17 -48489, i17 -48640, i17 -48789, i17 -48935, i17 -49078, i17 -49219, i17 -49358, i17 -49494, i17 -49628, i17 -49760, i17 -49890, i17 -50018, i17 -50144, i17 -50268, i17 -50390, i17 -50570, i17 -50805, i17 -51033, i17 -51255, i17 -51471, i17 -51683, i17 -51889, i17 -52090, i17 -52286, i17 -52478, i17 -52666, i17 -52850, i17 -53030, i17 -53207, i17 -53380, i17 -53549, i17 -53716, i17 -53879, i17 -54039, i17 -54197, i17 -54351, i17 -54503, i17 -54653, i17 -54800, i17 -54944, i17 -55087, i17 -55227, i17 -55364, i17 -55500, i17 -55634, i17 -55766, i17 -55895, i17 -56087, i17 -56336, i17 -56578, i17 -56814, i17 -57044, i17 -57269, i17 -57488, i17 -57702, i17 -57911, i17 -58115, i17 -58316, i17 -58511, i17 -58703, i17 -58891, i17 -59076, i17 -59257, i17 -59434, i17 -59608, i17 -59779, i17 -59947, i17 -60112, i17 -60274, i17 -60434, i17 -60591, i17 -60745, i17 -60897, i17 -61047, i17 -61194, i17 -61340, i17 -61483, i17 -61624, i17 -61762, i17 -61967, i17 -62233, i17 -62493, i17 -62746, i17 -62992, i17 -63233, i17 -63468, i17 -63698, i17 -63922, i17 -64142, i17 -64357, i17 -64567, i17 -64773, i17 -64975, i17 -65174, i17 -65368, i17 65513, i17 65326, i17 65142, i17 64961, i17 64783, i17 64608, i17 64436, i17 64267, i17 64100, i17 63937, i17 63775, i17 63616, i17 63459, i17 63305, i17 63153, i17 63003, i17 62782, i17 62494, i17 62213, i17 61939, i17 61672, i17 61412, i17 61157, i17 60908, i17 60665, i17 60426, i17 60193, i17 59965, i17 59740, i17 59521, i17 59305, i17 59094, i17 58886, i17 58682, i17 58482, i17 58284, i17 58091, i17 57900, i17 57712, i17 57528, i17 57346, i17 57167, i17 56991, i17 56817, i17 56646, i17 56477, i17 56310, i17 56146, i17 55904, i17 55589, i17 55281, i17 54981, i17 54688, i17 54401, i17 54122, i17 53848, i17 53580, i17 53318, i17 53061, i17 52809, i17 52562, i17 52319, i17 52081, i17 51848, i17 51618, i17 51392, i17 51171, i17 50952, i17 50738, i17 50526, i17 50318, i17 50114, i17 49912, i17 49713, i17 49517, i17 49324, i17 49133, i17 48945, i17 48760, i17 48577, i17 48307, i17 47955, i17 47612, i17 47276, i17 46948, i17 46628, i17 46314, i17 46007, i17 45706, i17 45412, i17 45123, i17 44839, i17 44561, i17 44287, i17 44019, i17 43755, i17 43495, i17 43240, i17 42989, i17 42741, i17 42498, i17 42258, i17 42022, i17 41789, i17 41560, i17 41333, i17 41110, i17 40890, i17 40672, i17 40458, i17 40246, i17 40036, i17 39728, i17 39324, i17 38930, i17 38544, i17 38167, i17 37797, i17 37435, i17 37080, i17 36732, i17 36390, i17 36055, i17 35725, i17 35401, i17 35082, i17 34769, i17 34460, i17 34156, i17 33857, i17 33562, i17 33272, i17 32985, i17 32703, i17 32424, i17 32149, i17 31878, i17 31610, i17 31345, i17 31083, i17 30825, i17 30569, i17 30317, i17 30067, i17 29698, i17 29215, i17 28741, i17 28277, i17 27821, i17 27374, i17 26935, i17 26503, i17 26079, i17 25661, i17 25250, i17 24845, i17 24446, i17 24053, i17 23665, i17 23282, i17 22904, i17 22531, i17 22163, i17 21799, i17 21439, i17 21083, i17 20731, i17 20383, i17 20038, i17 19697, i17 19360, i17 19025, i17 18694, i17 18365, i17 18040, i17 17717, i17 17239, i17 16609, i17 15989, i17 15378, i17 14775, i17 14180, i17 13592, i17 13011, i17 12437, i17 11868, i17 11305, i17 10748, i17 10195, i17 9647, i17 9103, i17 8563, i17 8027, i17 7494, i17 6964, i17 6437, i17 5913, i17 5391, i17 4871, i17 4353, i17 3837, i17 3322, i17 2809, i17 2297, i17 1786, i17 1275, i17 765, i17 255]
@awgn_top_str = internal unnamed_addr constant [9 x i8] c"awgn_top\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str270 = private unnamed_addr constant [22 x i8] c"normalizer_stage_loop\00", align 1
@p_str269 = private unnamed_addr constant [15 x i8] c"noise_gen_loop\00", align 1
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer

define internal fastcc i16 @"operator()"(i8 %snr_V_read) {
_ZlsILi16ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit:
  %bramChapter_3_V_1 = alloca i9
  %bramChapter_3_V_2 = alloca i9
  %bramChapter_3_V_4 = alloca i9
  %bramChapter_3_V = alloca i9
  %snr_V_read_1 = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %snr_V_read)
  %norm_V = alloca [20 x i15], align 2
  %p_Val2_s = load i128* @uut_lfsr128_V, align 8
  br label %.preheader

.preheader:                                       ; preds = %_ZrsILi32ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv, %_ZlsILi16ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit
  %noiseGen_V_3 = phi i29 [ undef, %_ZlsILi16ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ], [ %noiseGen_3_V, %_ZrsILi32ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv ]
  %noiseGen_V_2 = phi i29 [ undef, %_ZlsILi16ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ], [ %noiseGen_3_V_1, %_ZrsILi32ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv ]
  %noiseGen_3_V_2 = phi i29 [ undef, %_ZlsILi16ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ], [ %noiseGen_3_V_3, %_ZrsILi32ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv ]
  %noiseGen_3_V_4 = phi i29 [ undef, %_ZlsILi16ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ], [ %noiseGen_3_V_6, %_ZrsILi32ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv ]
  %i = phi i3 [ 0, %_ZlsILi16ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ], [ %i_1, %_ZrsILi32ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv ]
  %i_cast_cast = zext i3 %i to i6
  %tmp_3 = call i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3 %i, i2 0)
  %p_shl_cast = zext i5 %tmp_3 to i6
  %tmp_8 = add i6 %i_cast_cast, %p_shl_cast
  %tmp_8_cast = zext i6 %tmp_8 to i32
  %norm_V_addr = getelementptr [20 x i15]* %norm_V, i32 0, i32 %tmp_8_cast
  %exitcond1 = icmp eq i3 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i_1 = add i3 %i, 1
  br i1 %exitcond1, label %_ZNK13ap_fixed_baseILi40ELi36ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv.exit_ifconv, label %_ZlsILi33ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv

_ZlsILi33ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv: ; preds = %.preheader
  %bramChapter_3_V_1_l = load i9* %bramChapter_3_V_1
  %bramChapter_3_V_2_l = load i9* %bramChapter_3_V_2
  %bramChapter_3_V_4_l = load i9* %bramChapter_3_V_4
  %bramChapter_3_V_loa = load i9* %bramChapter_3_V
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str269) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str269)
  %tmp_21 = trunc i3 %i to i2
  %op2_assign = call i7 @_ssdm_op_BitConcatenate.i7.i2.i5(i2 %tmp_21, i5 0)
  %tmp_7 = zext i7 %op2_assign to i128
  %r_V_9 = lshr i128 %p_Val2_s, %tmp_7
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i128.i32(i128 %r_V_9, i32 31)
  %phitmp1 = call i15 @_ssdm_op_PartSelect.i15.i128.i32.i32(i128 %r_V_9, i32 15, i32 29)
  store i15 %phitmp1, i15* %norm_V_addr, align 2
  %sel_tmp = icmp eq i2 %tmp_21, -2
  %sel_tmp1 = icmp eq i2 %tmp_21, 1
  %sel_tmp2 = icmp eq i2 %tmp_21, 0
  %or_cond = or i1 %sel_tmp2, %sel_tmp1
  %newSel = select i1 %sel_tmp, i9 %bramChapter_3_V_loa, i9 0
  %newSel1 = select i1 %or_cond, i9 %bramChapter_3_V_loa, i9 %newSel
  %newSel2 = select i1 %sel_tmp, i9 0, i9 %bramChapter_3_V_4_l
  %newSel3 = select i1 %or_cond, i9 %bramChapter_3_V_4_l, i9 %newSel2
  %sel_tmp3 = select i1 %sel_tmp1, i9 0, i9 %bramChapter_3_V_2_l
  %bramChapter_1_V_1 = select i1 %sel_tmp2, i9 %bramChapter_3_V_2_l, i9 %sel_tmp3
  %bramChapter_0_V_1 = select i1 %sel_tmp2, i9 0, i9 %bramChapter_3_V_1_l
  store i9 %newSel1, i9* %bramChapter_3_V
  store i9 %newSel3, i9* %bramChapter_3_V_4
  store i9 %bramChapter_1_V_1, i9* %bramChapter_3_V_2
  store i9 %bramChapter_0_V_1, i9* %bramChapter_3_V_1
  br label %0

; <label>:0                                       ; preds = %.backedge, %_ZlsILi33ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv
  %normStage = phi i3 [ 0, %_ZlsILi33ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv ], [ %normStage_1, %.backedge ]
  %normStage_cast1_cast = zext i3 %normStage to i6
  %tmp_4 = add i6 %tmp_8, %normStage_cast1_cast
  %tmp_26_cast = zext i6 %tmp_4 to i32
  %norm_V_addr_1 = getelementptr [20 x i15]* %norm_V, i32 0, i32 %tmp_26_cast
  %normStage_cast = zext i3 %normStage to i4
  %exitcond = icmp eq i3 %normStage, -4
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %normStage_1 = add i3 %normStage, 1
  br i1 %exitcond, label %_ZrsILi32ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv, label %_ZrsILi15ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit

_ZrsILi15ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit: ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([22 x i8]* @p_str270) nounwind
  %op2_assign_2 = sub i3 3, %normStage
  %op2_assign_2_cast = zext i3 %op2_assign_2 to i4
  %r_V_14 = shl i4 1, %op2_assign_2_cast
  %op2_assign_1 = xor i4 %r_V_14, -1
  %op2_assign_1_cast = zext i4 %op2_assign_1 to i15
  %norm_V_load = load i15* %norm_V_addr_1, align 2
  %tmp_15 = lshr i15 %norm_V_load, %op2_assign_1_cast
  %tmp_24 = trunc i15 %tmp_15 to i9
  %phitmp4 = icmp eq i9 %tmp_24, 0
  br i1 %phitmp4, label %_ZlsILi4ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit, label %_ZlsILi9ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv

_ZlsILi4ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit: ; preds = %_ZrsILi15ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit
  %tmp_38_cast_cast = zext i3 %normStage_1 to i6
  %tmp_16 = add i6 %tmp_8, %tmp_38_cast_cast
  %tmp_27_cast = zext i6 %tmp_16 to i32
  %norm_V_addr_2 = getelementptr [20 x i15]* %norm_V, i32 0, i32 %tmp_27_cast
  %tmp_39_cast = zext i4 %r_V_14 to i15
  %r_V_15 = shl i15 %norm_V_load, %tmp_39_cast
  store i15 %r_V_15, i15* %norm_V_addr_2, align 2
  br label %.backedge

_ZlsILi9ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv: ; preds = %_ZrsILi15ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit
  %bramChapter_3_V_1_l_1 = load i9* %bramChapter_3_V_1
  %bramChapter_3_V_2_l_1 = load i9* %bramChapter_3_V_2
  %bramChapter_3_V_4_l_1 = load i9* %bramChapter_3_V_4
  %bramChapter_3_V_loa_1 = load i9* %bramChapter_3_V
  %op2_assign_3 = sub i4 -8, %normStage_cast
  %op2_assign_3_cast = zext i4 %op2_assign_3 to i9
  %r_V_16 = shl i9 1, %op2_assign_3_cast
  %tmp_17 = call i9 @_ssdm_op_Mux.ap_auto.4i9.i2(i9 %bramChapter_3_V_1_l_1, i9 %bramChapter_3_V_2_l_1, i9 %bramChapter_3_V_4_l_1, i9 %bramChapter_3_V_loa_1, i2 %tmp_21)
  %bramChapter_3_V_10 = add i9 %r_V_16, %tmp_17
  %newSel15 = select i1 %sel_tmp, i9 %bramChapter_3_V_loa_1, i9 %bramChapter_3_V_10
  %bramChapter_3_V_3 = select i1 %or_cond, i9 %bramChapter_3_V_loa_1, i9 %newSel15
  %newSel16 = select i1 %sel_tmp, i9 %bramChapter_3_V_10, i9 %bramChapter_3_V_4_l_1
  %bramChapter_3_V_5 = select i1 %or_cond, i9 %bramChapter_3_V_4_l_1, i9 %newSel16
  %bramChapter_3_V_7 = select i1 %sel_tmp1, i9 %bramChapter_3_V_10, i9 %bramChapter_3_V_2_l_1
  %bramChapter_3_V_8 = select i1 %sel_tmp2, i9 %bramChapter_3_V_2_l_1, i9 %bramChapter_3_V_7
  %bramChapter_3_V_9 = select i1 %sel_tmp2, i9 %bramChapter_3_V_10, i9 %bramChapter_3_V_1_l_1
  %tmp_42_cast_cast = zext i3 %normStage_1 to i6
  %tmp_19 = add i6 %tmp_8, %tmp_42_cast_cast
  %tmp_28_cast = zext i6 %tmp_19 to i32
  %norm_V_addr_3 = getelementptr [20 x i15]* %norm_V, i32 0, i32 %tmp_28_cast
  store i15 %norm_V_load, i15* %norm_V_addr_3, align 2
  store i9 %bramChapter_3_V_3, i9* %bramChapter_3_V
  store i9 %bramChapter_3_V_5, i9* %bramChapter_3_V_4
  store i9 %bramChapter_3_V_8, i9* %bramChapter_3_V_2
  store i9 %bramChapter_3_V_9, i9* %bramChapter_3_V_1
  br label %.backedge

.backedge:                                        ; preds = %_ZlsILi9ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv, %_ZlsILi4ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit
  br label %0

_ZrsILi32ELb0EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit_ifconv: ; preds = %0
  %bramChapter_3_V_1_l_2 = load i9* %bramChapter_3_V_1
  %bramChapter_3_V_2_l_2 = load i9* %bramChapter_3_V_2
  %bramChapter_3_V_4_l_2 = load i9* %bramChapter_3_V_4
  %bramChapter_3_V_loa_2 = load i9* %bramChapter_3_V
  %phitmp2 = call i5 @_ssdm_op_PartSelect.i5.i128.i32.i32(i128 %r_V_9, i32 10, i32 14)
  %tmp_10 = call i9 @_ssdm_op_Mux.ap_auto.4i9.i2(i9 %bramChapter_3_V_1_l_2, i9 %bramChapter_3_V_2_l_2, i9 %bramChapter_3_V_4_l_2, i9 %bramChapter_3_V_loa_2, i2 %tmp_21)
  %tmp_11 = zext i5 %phitmp2 to i9
  %tmp_12 = add i9 %tmp_10, %tmp_11
  %tmp_23 = trunc i128 %r_V_9 to i10
  %tmp_13 = zext i9 %tmp_12 to i32
  %coarseContents_addr = getelementptr [512 x i17]* @coarseContents, i32 0, i32 %tmp_13
  %coarseContents_load = load i17* %coarseContents_addr, align 4
  %gradientContents_add = getelementptr [512 x i13]* @gradientContents, i32 0, i32 %tmp_13
  %gradientContents_loa = load i13* %gradientContents_add, align 2
  %lhs_V_3_cast = zext i13 %gradientContents_loa to i23
  %rhs_V_2_cast = sext i10 %tmp_23 to i23
  %r_V_12 = mul i23 %lhs_V_3_cast, %rhs_V_2_cast
  %tmp_14 = sext i23 %r_V_12 to i29
  %r_V_13 = call i27 @_ssdm_op_BitConcatenate.i27.i17.i10(i17 %coarseContents_load, i10 0)
  %r_V_11_cast = zext i27 %r_V_13 to i29
  %noiseGen_0_V = sub i29 %tmp_14, %r_V_11_cast
  %noiseGen_0_V_2 = add i29 %r_V_11_cast, %tmp_14
  %sel_tmp4 = xor i1 %tmp_22, true
  %sel_tmp5 = and i1 %sel_tmp, %sel_tmp4
  %sel_tmp6 = and i1 %sel_tmp1, %sel_tmp4
  %sel_tmp7 = icmp ne i2 %tmp_21, 0
  %sel_tmp8 = icmp ne i2 %tmp_21, 1
  %sel_tmp9 = icmp ne i2 %tmp_21, -2
  %tmp12 = and i1 %sel_tmp7, %sel_tmp8
  %tmp13 = and i1 %tmp_22, %sel_tmp9
  %sel_tmp10 = and i1 %tmp13, %tmp12
  %sel_tmp11 = and i1 %tmp_22, %sel_tmp
  %sel_tmp12 = and i1 %tmp_22, %sel_tmp1
  %sel_tmp13 = and i1 %sel_tmp2, %sel_tmp4
  %sel_tmp14 = and i1 %tmp_22, %sel_tmp2
  %or_cond2 = or i1 %sel_tmp12, %sel_tmp11
  %newSel4 = select i1 %sel_tmp10, i29 %noiseGen_0_V, i29 %noiseGen_V_3
  %or_cond3 = or i1 %sel_tmp10, %sel_tmp6
  %newSel5 = select i1 %sel_tmp5, i29 %noiseGen_V_3, i29 %noiseGen_0_V_2
  %or_cond4 = or i1 %sel_tmp2, %or_cond2
  %newSel6 = select i1 %or_cond3, i29 %newSel4, i29 %newSel5
  %noiseGen_3_V = select i1 %or_cond4, i29 %noiseGen_V_3, i29 %newSel6
  %newSel8 = select i1 %sel_tmp12, i29 %noiseGen_V_2, i29 %noiseGen_0_V
  %newSel9 = select i1 %sel_tmp5, i29 %noiseGen_0_V_2, i29 %noiseGen_V_2
  %newSel7 = select i1 %sel_tmp2, i29 %noiseGen_V_2, i29 %newSel8
  %newSel10 = select i1 %or_cond3, i29 %noiseGen_V_2, i29 %newSel9
  %noiseGen_3_V_1 = select i1 %or_cond4, i29 %newSel7, i29 %newSel10
  %newSel11 = select i1 %sel_tmp12, i29 %noiseGen_0_V, i29 %noiseGen_3_V_2
  %newSel12 = select i1 %sel_tmp10, i29 %noiseGen_3_V_2, i29 %noiseGen_0_V_2
  %newSel13 = select i1 %sel_tmp2, i29 %noiseGen_3_V_2, i29 %newSel11
  %newSel14 = select i1 %or_cond3, i29 %newSel12, i29 %noiseGen_3_V_2
  %noiseGen_3_V_3 = select i1 %or_cond4, i29 %newSel13, i29 %newSel14
  %noiseGen_3_V_5 = select i1 %sel_tmp13, i29 %noiseGen_0_V_2, i29 %noiseGen_3_V_4
  %noiseGen_3_V_6 = select i1 %sel_tmp14, i29 %noiseGen_0_V, i29 %noiseGen_3_V_5
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str269, i32 %tmp_1)
  br label %.preheader

_ZNK13ap_fixed_baseILi40ELi36ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv.exit_ifconv: ; preds = %.preheader
  %lfsr1_V = call i64 @_ssdm_op_PartSelect.i64.i128.i32.i32(i128 %p_Val2_s, i32 64, i32 127)
  %lfsr2_V = trunc i128 %p_Val2_s to i64
  %tmp_9 = call i30 @_ssdm_op_PartSelect.i30.i128.i32.i32(i128 %p_Val2_s, i32 64, i32 93)
  %r_V_19 = call i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30 %tmp_9, i34 0)
  %r_V_20 = xor i64 %r_V_19, %lfsr1_V
  %r_V_s = call i29 @_ssdm_op_PartSelect.i29.i64.i32.i32(i64 %r_V_20, i32 35, i32 63)
  %r_V_21 = zext i29 %r_V_s to i64
  %r_V_22 = xor i64 %r_V_21, %r_V_20
  %r_V_23 = shl i64 %r_V_22, 1
  %r_V_24 = xor i64 %r_V_23, %r_V_22
  %tmp_18 = trunc i128 %p_Val2_s to i6
  %r_V_25 = call i64 @_ssdm_op_BitConcatenate.i64.i6.i58(i6 %tmp_18, i58 0)
  %r_V_26 = xor i64 %r_V_25, %lfsr2_V
  %r_V_6 = call i51 @_ssdm_op_PartSelect.i51.i64.i32.i32(i64 %r_V_26, i32 13, i32 63)
  %r_V_27 = zext i51 %r_V_6 to i64
  %r_V_28 = xor i64 %r_V_27, %r_V_26
  %r_V_29 = shl i64 %r_V_28, 7
  %r_V_30 = xor i64 %r_V_29, %r_V_28
  %p_Result_s = call i128 @_ssdm_op_BitConcatenate.i128.i64.i64(i64 %r_V_24, i64 %r_V_30)
  store i128 %p_Result_s, i128* @uut_lfsr128_V, align 8
  %p_2_cast = sext i29 %noiseGen_3_V_4 to i30
  %p_3_cast = sext i29 %noiseGen_3_V_2 to i30
  %tmp_cast = sext i29 %noiseGen_V_2 to i30
  %tmp_cast_14 = sext i29 %noiseGen_V_3 to i30
  %tmp = add i30 %p_3_cast, %p_2_cast
  %tmp183_cast = sext i30 %tmp to i31
  %tmp1 = add i30 %tmp_cast, %tmp_cast_14
  %tmp184_cast = sext i30 %tmp1 to i31
  %centralLimitNoise_V = add i31 %tmp184_cast, %tmp183_cast
  %tmp_s = zext i8 %snr_V_read_1 to i32
  %scaleLookup_addr = getelementptr [256 x i17]* @scaleLookup, i32 0, i32 %tmp_s
  %scale_V = load i17* %scaleLookup_addr, align 4
  %lhs_V = sext i31 %centralLimitNoise_V to i48
  %rhs_V = zext i17 %scale_V to i48
  %r_V_31 = mul nsw i48 %lhs_V, %rhs_V
  %tmp_2 = zext i48 %r_V_31 to i49
  %r_V = add nsw i49 268435456, %tmp_2
  %roundedNoise_V = call i19 @_ssdm_op_PartSelect.i19.i49.i32.i32(i49 %r_V, i32 29, i32 47)
  %tmp_20 = call i4 @_ssdm_op_PartSelect.i4.i49.i32.i32(i49 %r_V, i32 44, i32 47)
  %icmp = icmp sgt i4 %tmp_20, 0
  %tmp_5 = icmp slt i19 %roundedNoise_V, -32767
  %saturatedNoise_V = call i16 @_ssdm_op_PartSelect.i16.i49.i32.i32(i49 %r_V, i32 29, i32 44)
  %saturatedNoise_V_1 = select i1 %icmp, i16 32767, i16 -32767
  %tmp_6 = or i1 %icmp, %tmp_5
  %ssdm_int_V_write_ass = select i1 %tmp_6, i16 %saturatedNoise_V_1, i16 %saturatedNoise_V
  ret i16 %ssdm_int_V_write_ass
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i49 @llvm.part.select.i49(i49, i32, i32) nounwind readnone

declare i19 @llvm.part.select.i19(i19, i32, i32) nounwind readnone

declare i128 @llvm.part.select.i128(i128, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @awgn_top(i8* %snr_V_V, i16* %noise_V_V) {
codeRepl:
  %empty = call i32 (...)* @_ssdm_op_SpecInterface(i16* %noise_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecInterface(i8* %snr_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %snr_V_V), !map !235
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %noise_V_V), !map !239
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @awgn_top_str) nounwind
  %tmp_V_1 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %snr_V_V)
  %noiseSample_V = call fastcc i16 @"operator()"(i8 %tmp_V_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16* %noise_V_V, i16 %noiseSample_V)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i16P(i16*, i16) {
entry:
  %empty = call i16 @_autotb_FifoWrite_i16(i16* %0, i16 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecInterface(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

declare i9 @_ssdm_op_PartSelect.i9.i15.i32.i32(i15, i32, i32) nounwind readnone

define weak i64 @_ssdm_op_PartSelect.i64.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_16 = trunc i128 %empty to i64
  ret i64 %empty_16
}

declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i128.i32.i32(i128, i32, i32) nounwind readnone

declare i57 @_ssdm_op_PartSelect.i57.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i51 @_ssdm_op_PartSelect.i51.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_17 = trunc i64 %empty to i51
  ret i51 %empty_17
}

define weak i5 @_ssdm_op_PartSelect.i5.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_18 = trunc i128 %empty to i5
  ret i5 %empty_18
}

define weak i4 @_ssdm_op_PartSelect.i4.i49.i32.i32(i49, i32, i32) nounwind readnone {
entry:
  %empty = call i49 @llvm.part.select.i49(i49 %0, i32 %1, i32 %2)
  %empty_19 = trunc i49 %empty to i4
  ret i4 %empty_19
}

define weak i4 @_ssdm_op_PartSelect.i4.i19.i32.i32(i19, i32, i32) nounwind readnone {
entry:
  %empty = call i19 @llvm.part.select.i19(i19 %0, i32 %1, i32 %2)
  %empty_20 = trunc i19 %empty to i4
  ret i4 %empty_20
}

define weak i30 @_ssdm_op_PartSelect.i30.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_21 = trunc i128 %empty to i30
  ret i30 %empty_21
}

define weak i29 @_ssdm_op_PartSelect.i29.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_22 = trunc i64 %empty to i29
  ret i29 %empty_22
}

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i19 @_ssdm_op_PartSelect.i19.i49.i32.i32(i49, i32, i32) nounwind readnone {
entry:
  %empty = call i49 @llvm.part.select.i49(i49 %0, i32 %1, i32 %2)
  %empty_23 = trunc i49 %empty to i19
  ret i19 %empty_23
}

define weak i16 @_ssdm_op_PartSelect.i16.i49.i32.i32(i49, i32, i32) nounwind readnone {
entry:
  %empty = call i49 @llvm.part.select.i49(i49 %0, i32 %1, i32 %2)
  %empty_24 = trunc i49 %empty to i16
  ret i16 %empty_24
}

define weak i15 @_ssdm_op_PartSelect.i15.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_25 = trunc i128 %empty to i15
  ret i15 %empty_25
}

declare i10 @_ssdm_op_PartSelect.i10.i128.i32.i32(i128, i32, i32) nounwind readnone

define weak i9 @_ssdm_op_Mux.ap_auto.4i9.i2(i9, i9, i9, i9, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi i9 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ]
  ret i9 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

define weak i1 @_ssdm_op_BitSelect.i1.i128.i32(i128, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i128
  %empty_26 = shl i128 1, %empty
  %empty_27 = and i128 %0, %empty_26
  %empty_28 = icmp ne i128 %empty_27, 0
  ret i1 %empty_28
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i2.i5(i2, i5) nounwind readnone {
entry:
  %empty = zext i2 %0 to i7
  %empty_29 = zext i5 %1 to i7
  %empty_30 = shl i7 %empty, 5
  %empty_31 = or i7 %empty_30, %empty_29
  ret i7 %empty_31
}

declare i64 @_ssdm_op_BitConcatenate.i64.i63.i1(i63, i1) nounwind readnone

define weak i64 @_ssdm_op_BitConcatenate.i64.i6.i58(i6, i58) nounwind readnone {
entry:
  %empty = zext i6 %0 to i64
  %empty_32 = zext i58 %1 to i64
  %empty_33 = shl i64 %empty, 58
  %empty_34 = or i64 %empty_33, %empty_32
  ret i64 %empty_34
}

declare i64 @_ssdm_op_BitConcatenate.i64.i57.i7(i57, i7) nounwind readnone

define weak i64 @_ssdm_op_BitConcatenate.i64.i30.i34(i30, i34) nounwind readnone {
entry:
  %empty = zext i30 %0 to i64
  %empty_35 = zext i34 %1 to i64
  %empty_36 = shl i64 %empty, 34
  %empty_37 = or i64 %empty_36, %empty_35
  ret i64 %empty_37
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i3.i2(i3, i2) nounwind readnone {
entry:
  %empty = zext i3 %0 to i5
  %empty_38 = zext i2 %1 to i5
  %empty_39 = shl i5 %empty, 2
  %empty_40 = or i5 %empty_39, %empty_38
  ret i5 %empty_40
}

define weak i27 @_ssdm_op_BitConcatenate.i27.i17.i10(i17, i10) nounwind readnone {
entry:
  %empty = zext i17 %0 to i27
  %empty_41 = zext i10 %1 to i27
  %empty_42 = shl i27 %empty, 10
  %empty_43 = or i27 %empty_42, %empty_41
  ret i27 %empty_43
}

define weak i128 @_ssdm_op_BitConcatenate.i128.i64.i64(i64, i64) nounwind readnone {
entry:
  %empty = zext i64 %0 to i128
  %empty_44 = zext i64 %1 to i128
  %empty_45 = shl i128 %empty, 64
  %empty_46 = or i128 %empty_45, %empty_44
  ret i128 %empty_46
}

declare i16 @_autotb_FifoWrite_i16(i16*, i16)

declare i8 @_autotb_FifoRead_i8(i8*)

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !13, !16, !16, !19, !19, !25, !28, !25, !30, !30, !19, !19, !33, !19, !36, !19, !19, !19, !38, !38, !40, !40, !42, !44, !44, !19, !19, !46, !47, !19, !19, !19, !49, !49, !51, !51, !40, !40, !53, !19, !19, !19, !19, !55, !58, !58, !19, !59, !62, !62, !19, !64, !19, !19, !19, !19, !19, !19, !19, !19, !30, !30, !19, !19, !66, !68, !68, !19, !19, !70, !19, !19, !51, !51, !72, !19, !19, !19, !51, !51, !74, !74, !76, !19, !19, !19, !51, !51, !78, !78, !80, !80, !82, !84, !87, !90, !90, !93, !93, !93, !19, !19, !58, !58, !19, !96, !98, !104, !19, !19, !19, !104, !106, !108, !108, !110, !113, !113, !117, !117, !117, !19, !19, !19, !119, !19, !19, !121, !19, !19, !19, !123, !123, !121, !125, !125, !19, !19, !127, !58, !58, !129, !130, !130, !132, !19, !123, !123, !134, !19, !19, !19, !136, !136, !49, !49, !138, !138, !140, !19, !141, !78, !78, !19, !19, !142, !144, !19, !19, !19, !146, !146, !148, !148, !150, !150, !19, !19, !78, !78, !152, !152, !19, !19, !154, !156, !19, !158, !30, !30, !19, !19, !159, !19, !161, !19, !19, !19, !19, !163, !163, !165, !165, !129, !30, !30, !167, !78, !78, !168, !170, !19, !19, !19, !172, !173, !175, !175, !78, !78, !19, !19, !177, !30, !30, !19, !19, !179, !19, !181, !182, !19, !19, !19, !74, !74, !184, !184, !186, !188, !19, !19, !19, !190, !190, !192, !192, !194, !194, !196, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !58, !58, !198, !19, !19, !19, !200, !200, !201, !201, !203, !203, !30, !30, !205, !19, !207, !208, !200, !200, !78, !78, !30, !30, !210, !213, !19, !19, !19, !19, !19, !19, !19, !215, !215, !218, !19, !19, !221, !221, !221, !226, !226, !19, !19, !221, !221, !221, !19, !221, !221, !221, !19, !19}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!228}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<t_snr> &", metadata !"hls::stream<ap_int<OUTPUT_WIDTH> > &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"snr", metadata !"noise"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_int<16> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !14, metadata !4, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"const t_input_scale &", metadata !"ap_int<16> &"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"snr", metadata !"outputData"}
!16 = metadata !{null, metadata !8, metadata !9, metadata !17, metadata !11, metadata !18, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<19> &"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space"}
!21 = metadata !{metadata !"kernel_arg_access_qual"}
!22 = metadata !{metadata !"kernel_arg_type"}
!23 = metadata !{metadata !"kernel_arg_type_qual"}
!24 = metadata !{metadata !"kernel_arg_name"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!28 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !27, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<16> &"}
!30 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !32, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!33 = metadata !{null, metadata !1, metadata !2, metadata !34, metadata !4, metadata !35, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &", metadata !"int"}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!36 = metadata !{null, metadata !1, metadata !2, metadata !37, metadata !4, metadata !35, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &", metadata !"const ap_int_base<29, false> &"}
!38 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !18, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, false> &"}
!40 = metadata !{null, metadata !8, metadata !9, metadata !41, metadata !11, metadata !18, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &"}
!42 = metadata !{null, metadata !1, metadata !2, metadata !43, metadata !4, metadata !35, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, true> &", metadata !"int"}
!44 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !18, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, true> &"}
!46 = metadata !{null, metadata !8, metadata !9, metadata !17, metadata !11, metadata !27, metadata !6}
!47 = metadata !{null, metadata !1, metadata !2, metadata !48, metadata !4, metadata !35, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, true> &", metadata !"const ap_int_base<17, false> &"}
!49 = metadata !{null, metadata !8, metadata !9, metadata !50, metadata !11, metadata !18, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<17, false> &"}
!51 = metadata !{null, metadata !8, metadata !9, metadata !52, metadata !11, metadata !18, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, true> &"}
!53 = metadata !{null, metadata !8, metadata !9, metadata !54, metadata !11, metadata !27, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<48> &"}
!55 = metadata !{null, metadata !8, metadata !9, metadata !56, metadata !11, metadata !57, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!58 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !18, metadata !6}
!59 = metadata !{null, metadata !1, metadata !2, metadata !60, metadata !4, metadata !61, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<8, 4, false, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &", metadata !"int"}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!62 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !63, metadata !6}
!63 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!64 = metadata !{null, metadata !8, metadata !9, metadata !65, metadata !11, metadata !27, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!66 = metadata !{null, metadata !8, metadata !9, metadata !67, metadata !11, metadata !27, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!68 = metadata !{null, metadata !8, metadata !9, metadata !69, metadata !11, metadata !18, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<29> &"}
!70 = metadata !{null, metadata !1, metadata !2, metadata !71, metadata !4, metadata !35, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<31, true> &", metadata !"const ap_int_base<31, true> &"}
!72 = metadata !{null, metadata !1, metadata !2, metadata !73, metadata !4, metadata !35, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<31, true> &"}
!74 = metadata !{null, metadata !8, metadata !9, metadata !75, metadata !11, metadata !18, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!76 = metadata !{null, metadata !1, metadata !2, metadata !77, metadata !4, metadata !35, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"const ap_int_base<31, true> &"}
!78 = metadata !{null, metadata !8, metadata !9, metadata !79, metadata !11, metadata !18, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!80 = metadata !{null, metadata !8, metadata !9, metadata !81, metadata !11, metadata !18, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<34, true> &"}
!82 = metadata !{null, metadata !8, metadata !9, metadata !83, metadata !11, metadata !27, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<31> &"}
!84 = metadata !{null, metadata !8, metadata !9, metadata !85, metadata !11, metadata !86, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<LFSR_WIDTH> &"}
!86 = metadata !{metadata !"kernel_arg_name", metadata !"lfsrState"}
!87 = metadata !{null, metadata !8, metadata !9, metadata !88, metadata !11, metadata !89, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false> &"}
!89 = metadata !{metadata !"kernel_arg_name", metadata !"a2"}
!90 = metadata !{null, metadata !1, metadata !2, metadata !91, metadata !4, metadata !92, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<64, false, true> &", metadata !"struct ap_int_base<64, false, true> &"}
!92 = metadata !{metadata !"kernel_arg_name", metadata !"bv1", metadata !"bv2"}
!93 = metadata !{null, metadata !8, metadata !9, metadata !94, metadata !11, metadata !95, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<64, struct ap_int_base<64, false, true>, 64, struct ap_int_base<64, false, true> > &"}
!95 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!96 = metadata !{null, metadata !8, metadata !9, metadata !97, metadata !11, metadata !27, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<128> &"}
!98 = metadata !{null, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !6}
!99 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!100 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<(LFSR_WIDTH >> 1)> &", metadata !"const struct xor_triple &", metadata !"int"}
!102 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!103 = metadata !{metadata !"kernel_arg_name", metadata !"lfsrVal", metadata !"y", metadata !"form"}
!104 = metadata !{null, metadata !1, metadata !2, metadata !105, metadata !4, metadata !35, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"int"}
!106 = metadata !{null, metadata !1, metadata !2, metadata !107, metadata !4, metadata !35, metadata !6}
!107 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<64, false> &"}
!108 = metadata !{null, metadata !8, metadata !9, metadata !109, metadata !11, metadata !18, metadata !6}
!109 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!110 = metadata !{null, metadata !1, metadata !2, metadata !111, metadata !4, metadata !112, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!112 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!113 = metadata !{null, metadata !114, metadata !100, metadata !115, metadata !102, metadata !116, metadata !6}
!114 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<128, false>*", metadata !"int", metadata !"int"}
!116 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!117 = metadata !{null, metadata !8, metadata !9, metadata !118, metadata !11, metadata !95, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<128, false> &"}
!119 = metadata !{null, metadata !8, metadata !9, metadata !120, metadata !11, metadata !27, metadata !6}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<64> &"}
!121 = metadata !{null, metadata !1, metadata !2, metadata !122, metadata !4, metadata !35, metadata !6}
!122 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, true> &", metadata !"const ap_int_base<29, true> &"}
!123 = metadata !{null, metadata !8, metadata !9, metadata !124, metadata !11, metadata !18, metadata !6}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, true> &"}
!125 = metadata !{null, metadata !8, metadata !9, metadata !126, metadata !11, metadata !18, metadata !6}
!126 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<30, true> &"}
!127 = metadata !{null, metadata !1, metadata !2, metadata !128, metadata !4, metadata !35, metadata !6}
!128 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!129 = metadata !{null, metadata !8, metadata !9, metadata !75, metadata !11, metadata !27, metadata !6}
!130 = metadata !{null, metadata !8, metadata !9, metadata !131, metadata !11, metadata !18, metadata !6}
!131 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<17> &"}
!132 = metadata !{null, metadata !1, metadata !2, metadata !133, metadata !4, metadata !35, metadata !6}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<29, true> &", metadata !"int"}
!134 = metadata !{null, metadata !1, metadata !2, metadata !135, metadata !4, metadata !35, metadata !6}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<17, false> &", metadata !"const ap_int_base<10, true> &"}
!136 = metadata !{null, metadata !8, metadata !9, metadata !137, metadata !11, metadata !18, metadata !6}
!137 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, true> &"}
!138 = metadata !{null, metadata !8, metadata !9, metadata !139, metadata !11, metadata !18, metadata !6}
!139 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<27, true> &"}
!140 = metadata !{null, metadata !8, metadata !9, metadata !69, metadata !11, metadata !27, metadata !6}
!141 = metadata !{null, metadata !8, metadata !9, metadata !131, metadata !11, metadata !27, metadata !6}
!142 = metadata !{null, metadata !8, metadata !9, metadata !143, metadata !11, metadata !27, metadata !6}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<10> &"}
!144 = metadata !{null, metadata !1, metadata !2, metadata !145, metadata !4, metadata !35, metadata !6}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, false> &", metadata !"const ap_int_base<5, false> &"}
!146 = metadata !{null, metadata !8, metadata !9, metadata !147, metadata !11, metadata !18, metadata !6}
!147 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<5, false> &"}
!148 = metadata !{null, metadata !8, metadata !9, metadata !149, metadata !11, metadata !18, metadata !6}
!149 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, false> &"}
!150 = metadata !{null, metadata !8, metadata !9, metadata !151, metadata !11, metadata !18, metadata !6}
!151 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<10, false> &"}
!152 = metadata !{null, metadata !8, metadata !9, metadata !153, metadata !11, metadata !18, metadata !6}
!153 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<9> &"}
!154 = metadata !{null, metadata !8, metadata !9, metadata !155, metadata !11, metadata !27, metadata !6}
!155 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!156 = metadata !{null, metadata !1, metadata !2, metadata !157, metadata !4, metadata !35, metadata !6}
!157 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, false> &", metadata !"int"}
!158 = metadata !{null, metadata !8, metadata !9, metadata !149, metadata !11, metadata !27, metadata !6}
!159 = metadata !{null, metadata !1, metadata !2, metadata !160, metadata !4, metadata !35, metadata !6}
!160 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &", metadata !"int"}
!161 = metadata !{null, metadata !8, metadata !9, metadata !162, metadata !11, metadata !27, metadata !6}
!162 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!163 = metadata !{null, metadata !8, metadata !9, metadata !164, metadata !11, metadata !18, metadata !6}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<15, false> &"}
!165 = metadata !{null, metadata !1, metadata !2, metadata !166, metadata !4, metadata !35, metadata !6}
!166 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<15, false> &", metadata !"int"}
!167 = metadata !{null, metadata !8, metadata !9, metadata !153, metadata !11, metadata !27, metadata !6}
!168 = metadata !{null, metadata !8, metadata !9, metadata !169, metadata !11, metadata !27, metadata !6}
!169 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<15> &"}
!170 = metadata !{null, metadata !1, metadata !2, metadata !171, metadata !4, metadata !35, metadata !6}
!171 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!172 = metadata !{null, metadata !1, metadata !2, metadata !171, metadata !4, metadata !61, metadata !6}
!173 = metadata !{null, metadata !1, metadata !2, metadata !174, metadata !4, metadata !35, metadata !6}
!174 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, true> &"}
!175 = metadata !{null, metadata !8, metadata !9, metadata !176, metadata !11, metadata !18, metadata !6}
!176 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!177 = metadata !{null, metadata !8, metadata !9, metadata !178, metadata !11, metadata !27, metadata !6}
!178 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!179 = metadata !{null, metadata !1, metadata !2, metadata !180, metadata !4, metadata !35, metadata !6}
!180 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &", metadata !"int"}
!181 = metadata !{null, metadata !1, metadata !2, metadata !180, metadata !4, metadata !61, metadata !6}
!182 = metadata !{null, metadata !1, metadata !2, metadata !183, metadata !4, metadata !35, metadata !6}
!183 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &", metadata !"const ap_int_base<32, true> &"}
!184 = metadata !{null, metadata !8, metadata !9, metadata !185, metadata !11, metadata !18, metadata !6}
!185 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, false> &"}
!186 = metadata !{null, metadata !1, metadata !2, metadata !187, metadata !4, metadata !35, metadata !6}
!187 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<128, false> &", metadata !"int"}
!188 = metadata !{null, metadata !1, metadata !2, metadata !189, metadata !4, metadata !35, metadata !6}
!189 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<128, false> &", metadata !"const ap_int_base<35, true> &"}
!190 = metadata !{null, metadata !8, metadata !9, metadata !191, metadata !11, metadata !18, metadata !6}
!191 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, true> &"}
!192 = metadata !{null, metadata !8, metadata !9, metadata !193, metadata !11, metadata !18, metadata !6}
!193 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<128, false> &"}
!194 = metadata !{null, metadata !8, metadata !9, metadata !195, metadata !11, metadata !18, metadata !6}
!195 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<129, true> &"}
!196 = metadata !{null, metadata !8, metadata !9, metadata !197, metadata !11, metadata !27, metadata !6}
!197 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!198 = metadata !{null, metadata !1, metadata !2, metadata !199, metadata !4, metadata !35, metadata !6}
!199 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<16, true> &"}
!200 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !18, metadata !6}
!201 = metadata !{null, metadata !8, metadata !9, metadata !202, metadata !11, metadata !18, metadata !6}
!202 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!203 = metadata !{null, metadata !8, metadata !9, metadata !204, metadata !11, metadata !18, metadata !6}
!204 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<17, true> &"}
!205 = metadata !{null, metadata !1, metadata !2, metadata !206, metadata !4, metadata !35, metadata !6}
!206 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &", metadata !"int"}
!207 = metadata !{null, metadata !1, metadata !2, metadata !206, metadata !4, metadata !61, metadata !6}
!208 = metadata !{null, metadata !1, metadata !2, metadata !209, metadata !4, metadata !35, metadata !6}
!209 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &", metadata !"const ap_int_base<32, true> &"}
!210 = metadata !{null, metadata !8, metadata !9, metadata !211, metadata !11, metadata !212, metadata !6}
!211 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_ufixed<8, 4, 0, 0, 0> &"}
!212 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!213 = metadata !{null, metadata !8, metadata !9, metadata !214, metadata !11, metadata !18, metadata !6}
!214 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_ufixed<8, 4, (enum ap_q_mode)0, (enum ap_o_mode)0, 0> &"}
!215 = metadata !{null, metadata !8, metadata !9, metadata !216, metadata !11, metadata !217, metadata !6}
!216 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<LFSR_WIDTH>"}
!217 = metadata !{metadata !"kernel_arg_name", metadata !"seed"}
!218 = metadata !{null, metadata !1, metadata !2, metadata !219, metadata !4, metadata !220, metadata !6}
!219 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<LFSR_WIDTH>", metadata !"int"}
!220 = metadata !{metadata !"kernel_arg_name", metadata !"pSeed", metadata !"pOutputWidth"}
!221 = metadata !{null, metadata !222, metadata !2, metadata !223, metadata !224, metadata !225, metadata !6}
!222 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!223 = metadata !{metadata !"kernel_arg_type", metadata !"char*", metadata !"signed char"}
!224 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const", metadata !""}
!225 = metadata !{metadata !"kernel_arg_name", metadata !"str", metadata !"radix"}
!226 = metadata !{null, metadata !8, metadata !9, metadata !227, metadata !11, metadata !18, metadata !6}
!227 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<72> &"}
!228 = metadata !{metadata !229, [1 x i32]* @llvm_global_ctors_0}
!229 = metadata !{metadata !230}
!230 = metadata !{i32 0, i32 31, metadata !231}
!231 = metadata !{metadata !232}
!232 = metadata !{metadata !"llvm.global_ctors.0", metadata !233, metadata !"", i32 0, i32 31}
!233 = metadata !{metadata !234}
!234 = metadata !{i32 0, i32 0, i32 1}
!235 = metadata !{metadata !236}
!236 = metadata !{i32 0, i32 7, metadata !237}
!237 = metadata !{metadata !238}
!238 = metadata !{metadata !"snr.V.V", metadata !233, metadata !"uint8", i32 0, i32 7}
!239 = metadata !{metadata !240}
!240 = metadata !{i32 0, i32 15, metadata !241}
!241 = metadata !{metadata !242}
!242 = metadata !{metadata !"noise.V.V", metadata !233, metadata !"int16", i32 0, i32 15}
