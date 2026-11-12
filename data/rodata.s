	.include "asm/macros.inc"

	.section .rodata

	.global gUnk_080B9704
gUnk_080B9704:
	@ Signed trig lookup: amplitude 256, 256 phases plus a 64-entry extension.
	.2byte 0, 6, 12, 18, 25, 31, 37, 43, 49, 56, 62, 68, 74, 80, 86, 92
	.2byte 97, 103, 109, 115, 120, 126, 131, 136, 142, 147, 152, 157, 162, 167, 171, 176
	.2byte 181, 185, 189, 193, 197, 201, 205, 209, 212, 216, 219, 222, 225, 228, 231, 234
	.2byte 236, 238, 241, 243, 244, 246, 248, 249, 251, 252, 253, 254, 254, 255, 255, 255
	.2byte 256, 255, 255, 255, 254, 254, 253, 252, 251, 249, 248, 246, 244, 243, 241, 238
	.2byte 236, 234, 231, 228, 225, 222, 219, 216, 212, 209, 205, 201, 197, 193, 189, 185
	.2byte 181, 176, 171, 167, 162, 157, 152, 147, 142, 136, 131, 126, 120, 115, 109, 103
	.2byte 97, 92, 86, 80, 74, 68, 62, 56, 49, 43, 37, 31, 25, 18, 12, 6
	.2byte 0, -6, -12, -18, -25, -31, -37, -43, -49, -56, -62, -68, -74, -80, -86, -92
	.2byte -97, -103, -109, -115, -120, -126, -131, -136, -142, -147, -152, -157, -162, -167, -171, -176
	.2byte -181, -185, -189, -193, -197, -201, -205, -209, -212, -216, -219, -222, -225, -228, -231, -234
	.2byte -236, -238, -241, -243, -244, -246, -248, -249, -251, -252, -253, -254, -254, -255, -255, -255
	.2byte -256, -255, -255, -255, -254, -254, -253, -252, -251, -249, -248, -246, -244, -243, -241, -238
	.2byte -236, -234, -231, -228, -225, -222, -219, -216, -212, -209, -205, -201, -197, -193, -189, -185
	.2byte -181, -176, -171, -167, -162, -157, -152, -147, -142, -136, -131, -126, -120, -115, -109, -103
	.2byte -97, -92, -86, -80, -74, -68, -62, -56, -49, -43, -37, -31, -25, -18, -12, -6
	.2byte 0, 6, 12, 18, 25, 31, 37, 43, 49, 56, 62, 68, 74, 80, 86, 92
	.2byte 97, 103, 109, 115, 120, 126, 131, 136, 142, 147, 152, 157, 162, 167, 171, 176
	.2byte 181, 185, 189, 193, 197, 201, 205, 209, 212, 216, 219, 222, 225, 228, 231, 234
	.2byte 236, 238, 241, 243, 244, 246, 248, 249, 251, 252, 253, 254, 254, 255, 255, 255
	.global gUnk_080B9984
gUnk_080B9984:
	.incbin "baserom.gba", 0xB9984, 0x44
	.global gUnk_080B99C8
gUnk_080B99C8:
	.incbin "baserom.gba", 0xB99C8, 0xC
	.global gUnk_080B99D4
gUnk_080B99D4:
	.incbin "baserom.gba", 0xB99D4, 0x4
	.global gUnk_080B99D8
gUnk_080B99D8:
	.incbin "baserom.gba", 0xB99D8, 0xF8
	.global gUnk_080B9AD0
gUnk_080B9AD0:
	.incbin "baserom.gba", 0xB9AD0, 0x1C00
	.global gUnk_080BB6D0
gUnk_080BB6D0:
	.incbin "baserom.gba", 0xBB6D0, 0x14
	.global gUnk_080BB6E4
gUnk_080BB6E4:
	.incbin "baserom.gba", 0xBB6E4, 0x100
	.global gUnk_080BB7E4
gUnk_080BB7E4:
	.incbin "baserom.gba", 0xBB7E4, 0x4
	.global gUnk_080BB7E8
gUnk_080BB7E8:
	.incbin "baserom.gba", 0xBB7E8, 0x90
	.global gScaleTable
gScaleTable:
	.incbin "baserom.gba", 0xBB878, 0xB4
	.global gFreqTable
gFreqTable:
	.incbin "baserom.gba", 0xBB92C, 0x30
	.global gPcmSamplesPerVBlankTable
gPcmSamplesPerVBlankTable:
	.incbin "baserom.gba", 0xBB95C, 0x18
	.global gCgbScaleTable
gCgbScaleTable:
	.incbin "baserom.gba", 0xBB974, 0x84
	.global gCgbFreqTable
gCgbFreqTable:
	.incbin "baserom.gba", 0xBB9F8, 0x18
	.global gNoiseTable
gNoiseTable:
	.incbin "baserom.gba", 0xBBA10, 0x3C
	.global gCgb3Vol
gCgb3Vol:
	.incbin "baserom.gba", 0xBBA4C, 0x10
	.global gUnk_080BBA5C
gUnk_080BBA5C:
	.incbin "baserom.gba", 0xBBA5C, 0x34
	.global gXcmdTable
gXcmdTable:
	.incbin "baserom.gba", 0xBBA90, 0xB4C
	.global gMPlayTable
gMPlayTable:
	.incbin "baserom.gba", 0xBC5DC, 0x30
	.global gSongTable
gSongTable:
	@ m4a song table: header, music player, music player (SDK struct Song)
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSong_001
	.2byte 0, 0
	.4byte gSong_002
	.2byte 0, 0
	.4byte gSong_003
	.2byte 0, 0
	.4byte gSong_004
	.2byte 0, 0
	.4byte gSong_005
	.2byte 0, 0
	.4byte gSong_006
	.2byte 0, 0
	.4byte gSong_007
	.2byte 0, 0
	.4byte gSong_008
	.2byte 0, 0
	.4byte gSong_009
	.2byte 0, 0
	.4byte gSong_010
	.2byte 0, 0
	.4byte gSong_011
	.2byte 0, 0
	.4byte gSong_012
	.2byte 0, 0
	.4byte gSong_013
	.2byte 0, 0
	.4byte gSong_014
	.2byte 1, 1
	.4byte gSong_015
	.2byte 2, 2
	.4byte gSong_016
	.2byte 3, 3
	.4byte gSong_017
	.2byte 1, 1
	.4byte gSong_018
	.2byte 3, 3
	.4byte gSong_019
	.2byte 1, 1
	.4byte gSong_020
	.2byte 1, 1
	.4byte gSong_021
	.2byte 1, 1
	.4byte gSong_022
	.2byte 1, 1
	.4byte gSong_023
	.2byte 1, 1
	.4byte gSong_024
	.2byte 1, 1
	.4byte gSong_025
	.2byte 1, 1
	.4byte gSong_026
	.2byte 1, 1
	.4byte gSong_027
	.2byte 1, 1
	.4byte gSong_028
	.2byte 1, 1
	.4byte gSong_029
	.2byte 1, 1
	.4byte gSong_030
	.2byte 0, 0
	.4byte gSong_031
	.2byte 0, 0
	.4byte gSong_032
	.2byte 2, 2
	.4byte gSong_033
	.2byte 2, 2
	.4byte gSong_034
	.2byte 2, 2
	.4byte gSong_035
	.2byte 2, 2
	.4byte gSong_036
	.2byte 3, 3
	.4byte gSong_037
	.2byte 3, 3
	.4byte gSong_038
	.2byte 2, 2
	.4byte gSong_039
	.2byte 1, 1
	.4byte gSong_040
	.2byte 1, 1
	.4byte gSong_041
	.2byte 2, 2
	.4byte gSong_042
	.2byte 2, 2
	.4byte gSong_043
	.2byte 2, 2
	.4byte gSong_044
	.2byte 1, 1
	.4byte gSong_045
	.2byte 1, 1
	.4byte gSong_046
	.2byte 2, 2
	.4byte gSong_047
	.2byte 2, 2
	.4byte gSong_048
	.2byte 2, 2
	.4byte gSong_049
	.2byte 2, 2
	.4byte gSong_050
	.2byte 3, 3
	.4byte gSong_051
	.2byte 3, 3
	.4byte gSong_052
	.2byte 0, 0
	.4byte gSong_053
	.2byte 3, 3
	.4byte gSong_054
	.2byte 1, 1
	.4byte gSong_055
	.2byte 3, 3
	.4byte gSong_056
	.2byte 1, 1
	.4byte gSong_057
	.2byte 3, 3
	.4byte gSong_058
	.2byte 3, 3
	.4byte gSong_059
	.2byte 3, 3
	.4byte gSong_060
	.2byte 3, 3
	.4byte gSong_061
	.2byte 3, 3
	.4byte gSong_062
	.2byte 2, 2
	.4byte gSong_063
	.2byte 3, 3
	.4byte gSong_064
	.2byte 0, 0
	.4byte gSong_065
	.2byte 1, 1
	.4byte gSong_066
	.2byte 0, 0
	.4byte gSong_067
	.2byte 0, 0
	.4byte gSong_068
	.2byte 0, 0
	.4byte gSong_069
	.2byte 2, 2
	.4byte gSong_070
	.2byte 2, 2
	.4byte gSong_071
	.2byte 2, 2
	.4byte gSong_072
	.2byte 2, 2
	.4byte gSong_073
	.2byte 2, 2
	.4byte gSong_074
	.2byte 2, 2
	.4byte gSong_075
	.2byte 2, 2
	.4byte gSong_076
	.2byte 2, 2
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSong_085
	.2byte 2, 2
	.4byte gSong_086
	.2byte 2, 2
	.4byte gSong_087
	.2byte 3, 3
	.4byte gSong_088
	.2byte 3, 3
	.4byte gSong_089
	.2byte 3, 3
	.4byte gSong_090
	.2byte 1, 1
	.4byte gSong_091
	.2byte 1, 1
	.4byte gSong_092
	.2byte 1, 1
	.4byte gSong_093
	.2byte 2, 2
	.4byte gSong_094
	.2byte 1, 1
	.4byte gSong_095
	.2byte 1, 1
	.4byte gSong_096
	.2byte 1, 1
	.4byte gSong_097
	.2byte 1, 1
	.4byte gSong_098
	.2byte 1, 1
	.4byte gSong_099
	.2byte 1, 1
	.4byte gSong_100
	.2byte 1, 1
	.4byte gSong_101
	.2byte 1, 1
	.4byte gSong_102
	.2byte 1, 1
	.4byte gSong_103
	.2byte 2, 2
	.4byte gSong_104
	.2byte 2, 2
	.4byte gSong_105
	.2byte 2, 2
	.4byte gSong_106
	.2byte 1, 1
	.4byte gSong_107
	.2byte 0, 0
	.4byte gSong_108
	.2byte 1, 1
	.4byte gSong_109
	.2byte 2, 2
	.4byte gSong_110
	.2byte 3, 3
	.4byte gSong_111
	.2byte 0, 0
	.4byte gSong_112
	.2byte 0, 0
	.4byte gSong_113
	.2byte 0, 0
	.4byte gSong_114
	.2byte 2, 2
	.4byte gSong_115
	.2byte 3, 3
	.4byte gSong_116
	.2byte 3, 3
	.4byte gSong_117
	.2byte 3, 3
	.4byte gSong_118
	.2byte 3, 3
	.4byte gSong_119
	.2byte 2, 2
	.4byte gSong_120
	.2byte 3, 3
	.4byte gSong_121
	.2byte 2, 2
	.4byte gSong_122
	.2byte 1, 1
	.4byte gSong_123
	.2byte 1, 1
	.4byte gSong_124
	.2byte 3, 3
	.4byte gSong_125
	.2byte 0, 0
	.4byte gSong_126
	.2byte 2, 2
	.4byte gSong_127
	.2byte 2, 2
	.4byte gSong_128
	.2byte 2, 2
	.4byte gSong_129
	.2byte 2, 2
	.4byte gSong_130
	.2byte 2, 2
	.4byte gSong_131
	.2byte 2, 2
	.4byte gSong_132
	.2byte 3, 3
	.4byte gSong_133
	.2byte 3, 3
	.4byte gSong_134
	.2byte 2, 2
	.4byte gSong_135
	.2byte 3, 3
	.4byte gSong_136
	.2byte 1, 1
	.4byte gSong_137
	.2byte 1, 1
	.4byte gSong_138
	.2byte 2, 2
	.4byte gSong_139
	.2byte 3, 3
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSong_142
	.2byte 3, 3
	.4byte gSong_143
	.2byte 2, 2
	.4byte gSong_144
	.2byte 2, 2
	.4byte gSong_145
	.2byte 3, 3
	.4byte gSong_146
	.2byte 2, 2
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSong_148
	.2byte 3, 3
	.4byte gSong_149
	.2byte 2, 2
	.4byte gSong_150
	.2byte 2, 2
	.4byte gSong_151
	.2byte 2, 2
	.4byte gSong_152
	.2byte 2, 2
	.4byte gSong_153
	.2byte 2, 2
	.4byte gSong_154
	.2byte 2, 2
	.4byte gSong_155
	.2byte 2, 2
	.4byte gSong_156
	.2byte 3, 3
	.4byte gSong_157
	.2byte 3, 3
	.4byte gSong_158
	.2byte 3, 3
	.4byte gSong_159
	.2byte 3, 3
	.4byte gSong_160
	.2byte 3, 3
	.4byte gSong_161
	.2byte 3, 3
	.4byte gSong_162
	.2byte 0, 0
	.4byte gSong_163
	.2byte 0, 0
	.4byte gSong_164
	.2byte 0, 0
	.4byte gSong_165
	.2byte 0, 0
	.4byte gSong_166
	.2byte 2, 2
	.4byte gSong_167
	.2byte 2, 2
	.4byte gSong_168
	.2byte 2, 2
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSong_172
	.2byte 3, 3
	.4byte gSong_173
	.2byte 2, 2
	.4byte gSong_174
	.2byte 2, 2
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSong_180
	.2byte 3, 3
	.4byte gSong_181
	.2byte 3, 3
	.4byte gSong_182
	.2byte 3, 3
	.4byte gSong_183
	.2byte 2, 2
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSong_185
	.2byte 3, 3
	.4byte gSong_186
	.2byte 2, 2
	.4byte gSong_187
	.2byte 3, 3
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSong_189
	.2byte 3, 3
	.4byte gSong_190
	.2byte 2, 2
	.4byte gSong_191
	.2byte 3, 3
	.4byte gSong_192
	.2byte 3, 3
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSong_194
	.2byte 3, 3
	.4byte gSong_195
	.2byte 3, 3
	.4byte gSong_196
	.2byte 0, 0
	.4byte gSong_197
	.2byte 0, 0
	.4byte gSong_198
	.2byte 3, 3
	.4byte gSong_199
	.2byte 1, 1
	.4byte gSong_200
	.2byte 2, 2
	.4byte gSong_201
	.2byte 2, 2
	.4byte gSong_202
	.2byte 2, 2
	.4byte gSong_203
	.2byte 2, 2
	.4byte gSong_204
	.2byte 2, 2
	.4byte gSong_205
	.2byte 2, 2
	.4byte gSong_206
	.2byte 2, 2
	.4byte gSong_207
	.2byte 2, 2
	.4byte gSong_208
	.2byte 2, 2
	.4byte gSong_209
	.2byte 2, 2
	.4byte gSong_210
	.2byte 2, 2
	.4byte gSong_211
	.2byte 2, 2
	.4byte gSong_212
	.2byte 2, 2
	.4byte gSong_213
	.2byte 2, 2
	.4byte gSong_214
	.2byte 2, 2
	.4byte gSong_215
	.2byte 0, 0
	.4byte gSong_216
	.2byte 0, 0
	.4byte gSong_217
	.2byte 0, 0
	.4byte gSong_218
	.2byte 0, 0
	.4byte gSong_219
	.2byte 0, 0
	.4byte gSong_220
	.2byte 1, 1
	.4byte gSong_221
	.2byte 1, 1
	.4byte gSong_222
	.2byte 3, 3
	.4byte gSong_223
	.2byte 3, 3
	.4byte gSong_224
	.2byte 3, 3
	.4byte gSong_225
	.2byte 3, 3
	.4byte gSong_226
	.2byte 2, 2
	.4byte gSong_227
	.2byte 2, 2
	.4byte gSong_228
	.2byte 3, 3
	.4byte gSong_229
	.2byte 2, 2
	.4byte gSong_230
	.2byte 3, 3
	.4byte gSong_231
	.2byte 3, 3
	.4byte gSong_232
	.2byte 2, 2
	.4byte gSong_233
	.2byte 2, 2
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSongEmpty
	.2byte 0, 0
	.4byte gSong_240
	.2byte 3, 3
	.4byte gSong_241
	.2byte 3, 3
	.4byte gSong_242
	.2byte 3, 3
	.4byte gSong_243
	.2byte 3, 3
	.4byte gSong_244
	.2byte 2, 2
	.4byte gSong_245
	.2byte 3, 3
	.4byte gSong_246
	.2byte 1, 1
	.4byte gSong_247
	.2byte 2, 2
	.4byte gSong_248
	.2byte 3, 3
	.4byte gSong_249
	.2byte 2, 2
	.4byte gSong_250
	.2byte 1, 1
	.4byte gSong_251
	.2byte 1, 1
	.4byte gSong_252
	.2byte 1, 1
	.4byte gSong_253
	.2byte 1, 1
	.4byte gSong_254
	.2byte 1, 1
	.4byte gSong_255
	.2byte 1, 1
	.4byte gSong_256
	.2byte 1, 1
	.4byte gSong_257
	.2byte 1, 1
	.4byte gSong_258
	.2byte 1, 1
	.4byte gSong_259
	.2byte 1, 1
	.4byte gSong_260
	.2byte 1, 1
	.4byte gSong_261
	.2byte 1, 1
	.4byte gSong_262
	.2byte 1, 1
	.4byte gSong_263
	.2byte 1, 1
	.4byte gSong_264
	.2byte 1, 1
	.4byte gSong_265
	.2byte 1, 1
	.4byte gSong_266
	.2byte 1, 1
	.4byte gSong_267
	.2byte 1, 1
	.4byte gSong_268
	.2byte 1, 1
	.4byte gSong_269
	.2byte 1, 1
	.4byte gSong_270
	.2byte 1, 1
	.4byte gSong_271
	.2byte 1, 1
	.4byte gSong_272
	.2byte 1, 1
	.4byte gSong_273
	.2byte 1, 1
	.4byte gSong_274
	.2byte 1, 1
	.4byte gSong_275
	.2byte 1, 1
	.4byte gSong_276
	.2byte 1, 1
	.4byte gSong_277
	.2byte 1, 1
	.4byte gSong_278
	.2byte 1, 1
	.4byte gSong_279
	.2byte 1, 1
	.4byte gSong_280
	.2byte 1, 1
	.4byte gSong_281
	.2byte 1, 1
	.4byte gSong_282
	.2byte 1, 1
	.4byte gSong_283
	.2byte 1, 1
	.4byte gSong_284
	.2byte 1, 1
	.4byte gSong_285
	.2byte 1, 1
	.4byte gSong_286
	.2byte 1, 1
	.4byte gSong_287
	.2byte 1, 1
	.4byte gSong_288
	.2byte 1, 1
	.4byte gSong_289
	.2byte 1, 1
	.4byte gSong_290
	.2byte 1, 1
	.4byte gSong_291
	.2byte 1, 1
	.4byte gSong_292
	.2byte 1, 1
	.4byte gSong_293
	.2byte 1, 1
	.4byte gSong_294
	.2byte 1, 1
	.4byte gSong_295
	.2byte 1, 1
	.4byte gSong_296
	.2byte 1, 1
	.4byte gSong_297
	.2byte 1, 1
	.4byte gSong_298
	.2byte 1, 1
	.4byte gSong_299
	.2byte 1, 1
	.4byte gSong_300
	.2byte 1, 1
	.4byte gSong_301
	.2byte 1, 1
	.4byte gSong_302
	.2byte 1, 1
	.4byte gSong_303
	.2byte 1, 1
	.4byte gSong_304
	.2byte 1, 1
	.4byte gSong_305
	.2byte 1, 1
	.4byte gSong_306
	.2byte 1, 1
	.4byte gSong_307
	.2byte 1, 1
	.4byte gSong_308
	.2byte 1, 1
	.4byte gSong_309
	.2byte 1, 1
	.4byte gSong_310
	.2byte 1, 1
	.4byte gSong_311
	.2byte 1, 1
	.4byte gSong_312
	.2byte 1, 1
	.4byte gSong_313
	.2byte 1, 1
	.4byte gSong_314
	.2byte 1, 1
	.4byte gSong_315
	.2byte 1, 1
	.4byte gSong_316
	.2byte 1, 1
	.4byte gSong_317
	.2byte 1, 1
	.4byte gSong_318
	.2byte 1, 1
	.4byte gSong_319
	.2byte 1, 1
	.4byte gSong_320
	.2byte 1, 1
	.4byte gSong_321
	.2byte 1, 1
	.4byte gSong_322
	.2byte 1, 1
	.4byte gSong_323
	.2byte 1, 1
	.4byte gSong_324
	.2byte 1, 1
	.4byte gSong_325
	.2byte 1, 1
	.4byte gSong_326
	.2byte 1, 1
	.4byte gSong_327
	.2byte 1, 1
	.4byte gSong_328
	.2byte 1, 1
	.4byte gSong_329
	.2byte 1, 1
	.4byte gSong_330
	.2byte 1, 1
	.4byte gSong_331
	.2byte 1, 1
	.4byte gSong_332
	.2byte 1, 1
	.4byte gSong_333
	.2byte 1, 1
	.4byte gSong_334
	.2byte 1, 1
	.4byte gSong_335
	.2byte 1, 1
	.4byte gSong_336
	.2byte 1, 1
	.4byte gSong_337
	.2byte 1, 1
	.4byte gSong_338
	.2byte 1, 1
	.4byte gSong_339
	.2byte 1, 1
	.4byte gSong_340
	.2byte 1, 1
	.4byte gSong_341
	.2byte 1, 1
	.4byte gSong_342
	.2byte 1, 1
	.4byte gSong_343
	.2byte 1, 1
	.4byte gSong_344
	.2byte 1, 1
	.4byte gSong_345
	.2byte 1, 1
	.4byte gSong_346
	.2byte 1, 1
	.4byte gSong_347
	.2byte 1, 1
	.4byte gSong_348
	.2byte 1, 1
	.4byte gSong_349
	.2byte 1, 1
	.4byte gSong_350
	.2byte 1, 1
	.4byte gSong_351
	.2byte 1, 1
	.4byte gSong_352
	.2byte 1, 1
	.4byte gSong_353
	.2byte 1, 1
	.4byte gSong_354
	.2byte 1, 1
	.4byte gSong_355
	.2byte 1, 1
	.4byte gSong_356
	.2byte 1, 1
	.4byte gSong_357
	.2byte 1, 1
	.4byte gSong_358
	.2byte 1, 1
	.4byte gSong_359
	.2byte 1, 1
	.4byte gSong_360
	.2byte 1, 1
	.4byte gSong_361
	.2byte 1, 1
	.4byte gSong_362
	.2byte 1, 1
	.4byte gSong_363
	.2byte 1, 1
	.4byte gSong_364
	.2byte 1, 1
	.4byte gSong_365
	.2byte 1, 1
	.4byte gSong_366
	.2byte 1, 1
	.4byte gSong_367
	.2byte 1, 1
	.4byte gSong_368
	.2byte 1, 1
	.4byte gSong_369
	.2byte 1, 1
	.4byte gSong_370
	.2byte 0, 0
	.4byte gSong_371
	.2byte 3, 3
	.4byte gSong_372
	.2byte 3, 3
	.4byte gSong_373
	.2byte 3, 3
	.4byte gSong_374
	.2byte 3, 3
	.4byte gSong_375
	.2byte 2, 2
	.4byte gSong_376
	.2byte 2, 2
	.4byte gSong_377
	.2byte 3, 3
	.4byte gSong_378
	.2byte 2, 2
	.4byte gSong_379
	.2byte 3, 3
	.4byte gSong_380
	.2byte 2, 2
	.4byte gSong_381
	.2byte 3, 3
	.4byte gSong_382
	.2byte 2, 2
	.4byte gSong_383
	.2byte 3, 3
	.4byte gSong_384
	.2byte 3, 3
	.4byte gSong_385
	.2byte 3, 3
	.4byte gSong_386
	.2byte 3, 3
	.4byte gSong_387
	.2byte 3, 3
	.4byte gSong_388
	.2byte 3, 3
	.4byte gSong_389
	.2byte 3, 3
	.4byte gSong_390
	.2byte 0, 0
	.4byte gSong_391
	.2byte 0, 0
	.4byte gSong_392
	.2byte 0, 0
	.4byte gSong_393
	.2byte 0, 0
	.4byte gSong_394
	.2byte 0, 0
	.4byte gSong_395
	.2byte 3, 3
	.4byte gSong_396
	.2byte 3, 3
	.4byte gSong_397
	.2byte 0, 0
	.4byte gSong_398
	.2byte 0, 0
	.4byte gSong_399
	.2byte 0, 0
	.4byte gSong_400
	.2byte 0, 0
	.4byte gSong_401
	.2byte 0, 0
	.4byte gSong_402
	.2byte 0, 0
	.4byte gSong_403
	.2byte 0, 0
	.4byte gSong_404
	.2byte 0, 0
	.4byte gSong_405
	.2byte 2, 2
	.4byte gSong_406
	.2byte 3, 3
	.4byte gSong_407
	.2byte 1, 1
	.4byte gSong_408
	.2byte 2, 2
	.4byte gSong_409
	.2byte 3, 3
	.4byte gSong_410
	.2byte 1, 1
	.4byte gSong_411
	.2byte 2, 2
	.4byte gSong_412
	.2byte 3, 3
	.4byte gSong_413
	.2byte 1, 1
	.4byte gSong_414
	.2byte 3, 3
	.4byte gSong_415
	.2byte 2, 2
	.4byte gSong_416
	.2byte 1, 1
	.4byte gSong_417
	.2byte 3, 3
	.4byte gSong_418
	.2byte 2, 2
	.4byte gSong_419
	.2byte 2, 2
	.4byte gSong_420
	.2byte 2, 2
	.4byte gSong_421
	.2byte 2, 2
	.4byte gSong_422
	.2byte 2, 2
	.4byte gSong_423
	.2byte 2, 2
	.4byte gSong_424
	.2byte 2, 2
	.4byte gSong_425
	.2byte 2, 2
	.4byte gSong_426
	.2byte 2, 2
	.4byte gSong_427
	.2byte 1, 1
	.global gSongEmpty
gSongEmpty:
	.4byte 0
	.global gSoundSample_080BD370
gSoundSample_080BD370:
	.4byte 0x0, 0x1488000, 0, 3971	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xBD380, 0xF84
	.global gSoundSample_080BE304
gSoundSample_080BE304:
	.4byte 0x0, 0x1488000, 0, 2008	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xBE314, 0x7DC
	.global gSoundSample_080BEAF0
gSoundSample_080BEAF0:
	.4byte 0x0, 0x1488000, 0, 1717	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xBEB00, 0x6B8
	.global gSoundSample_080BF1B8
gSoundSample_080BF1B8:
	.4byte 0x0, 0x1488000, 0, 7708	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xBF1C8, 0x1E20
	.global gSoundSample_080C0FE8
gSoundSample_080C0FE8:
	.4byte 0x0, 0xD10C00, 0, 5996	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xC0FF8, 0x1770
	.global gSoundSample_080C2768
gSoundSample_080C2768:
	.4byte 0x0, 0xD10C00, 0, 3823	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xC2778, 0xEF0
	.global gSoundSample_080C3668
gSoundSample_080C3668:
	.4byte 0x0, 0xD10C00, 0, 2330	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xC3678, 0x91C
	.global gSoundSample_080C3F94
gSoundSample_080C3F94:
	.4byte 0x0, 0x1ECC000, 0, 2174	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xC3FA4, 0x880
	.global gSoundSample_080C4824
gSoundSample_080C4824:
	.4byte 0x0, 0xD10C00, 0, 2023	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xC4834, 0x7E8
	.global gSoundSample_080C501C
gSoundSample_080C501C:
	.4byte 0x0, 0xA44000, 0, 9757	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xC502C, 0x2620
	.global gSoundSample_080C764C
gSoundSample_080C764C:
	.4byte 0x0, 0xA44000, 0, 3316	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xC765C, 0xCF8
	.global gSoundSample_080C8354
gSoundSample_080C8354:
	.4byte 0x0, 0xD10C00, 0, 3605	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xC8364, 0xE18
	.global gSoundSample_080C917C
gSoundSample_080C917C:
	.4byte 0x0, 0xD10C00, 0, 2431	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xC918C, 0x980
	.global gSoundSample_080C9B0C
gSoundSample_080C9B0C:
	.4byte 0x40000000, 0xA44000, 13587, 14028	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xC9B1C, 0x36D0
	.global gSoundSample_080CD1EC
gSoundSample_080CD1EC:
	.4byte 0x40000000, 0x275F5E5, 8821, 33743	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xCD1FC, 0x83D0
	.global gSoundSample_080D55CC
gSoundSample_080D55CC:
	.4byte 0x40000000, 0x1A5E000, 2435, 2641	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xD55DC, 0xA54
	.global gSoundSample_080D6030
gSoundSample_080D6030:
	.4byte 0x0, 0x2B11000, 0, 33767	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xD6040, 0x83E8
	.global gSoundSample_080DE428
gSoundSample_080DE428:
	.4byte 0x40000000, 0x1A5E000, 5724, 6009	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xDE438, 0x177C
	.global gSoundSample_080DFBB4
gSoundSample_080DFBB4:
	.4byte 0x40000000, 0xD10C00, 4177, 17746	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xDFBC4, 0x4554
	.global gSoundSample_080E4118
gSoundSample_080E4118:
	.4byte 0x0, 0x1488000, 0, 7663	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xE4128, 0x1DF0
	.global gSoundSample_080E5F18
gSoundSample_080E5F18:
	.4byte 0x0, 0x11BB400, 0, 3567	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xE5F28, 0xDF0
	.global gSoundSample_080E6D18
gSoundSample_080E6D18:
	.4byte 0x0, 0xD10C00, 0, 4190	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xE6D28, 0x1060
	.global gSoundSample_080E7D88
gSoundSample_080E7D88:
	.4byte 0x0, 0xD10C00, 0, 6054	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xE7D98, 0x17A8
	.global gSoundSample_080E9540
gSoundSample_080E9540:
	.4byte 0x0, 0xD10C00, 0, 2626	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xE9550, 0xA44
	.global gSoundSample_080E9F94
gSoundSample_080E9F94:
	.4byte 0x0, 0xD10C00, 0, 15898	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xE9FA4, 0x3E1C
	.global gSoundSample_080EDDC0
gSoundSample_080EDDC0:
	.4byte 0x0, 0xD10C00, 0, 2226	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xEDDD0, 0x8B4
	.global gSoundSample_080EE684
gSoundSample_080EE684:
	.4byte 0x0, 0xD10C00, 0, 8302	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xEE694, 0x2070
	.global gSoundSample_080F0704
gSoundSample_080F0704:
	.4byte 0x40000000, 0xD10C00, 3501, 6229	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xF0714, 0x1858
	.global gSoundSample_080F1F6C
gSoundSample_080F1F6C:
	.4byte 0x40000000, 0xD10C00, 0, 6781	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xF1F7C, 0x1A80
	.global gSoundSample_080F39FC
gSoundSample_080F39FC:
	.4byte 0x0, 0xD10C00, 0, 13083	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xF3A0C, 0x331C
	.global gSoundSample_080F6D28
gSoundSample_080F6D28:
	.4byte 0x0, 0xD10C00, 0, 6293	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xF6D38, 0x1898
	.global gSoundSample_080F85D0
gSoundSample_080F85D0:
	.4byte 0x0, 0xD10C00, 0, 4036	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xF85E0, 0xFC8
	.global gSoundSample_080F95A8
gSoundSample_080F95A8:
	.4byte 0x40000000, 0xD10C00, 0, 6980	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xF95B8, 0x1B48
	.global gSoundSample_080FB100
gSoundSample_080FB100:
	.4byte 0x0, 0xD10C00, 0, 5845	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xFB110, 0x16D8
	.global gSoundSample_080FC7E8
gSoundSample_080FC7E8:
	.4byte 0x0, 0xD10C00, 0, 4743	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xFC7F8, 0x1288
	.global gSoundSample_080FDA80
gSoundSample_080FDA80:
	.4byte 0x0, 0xD10C00, 0, 5301	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xFDA90, 0x14B8
	.global gSoundSample_080FEF48
gSoundSample_080FEF48:
	.4byte 0x40000000, 0xD10C00, 10581, 17671	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0xFEF58, 0x4508
	.global gSoundSample_08103460
gSoundSample_08103460:
	.4byte 0x0, 0xA44000, 0, 2816	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x103470, 0xB04
	.global gSoundSample_08103F74
gSoundSample_08103F74:
	.4byte 0x0, 0x1488000, 0, 3583	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x103F84, 0xE00
	.global gSoundSample_08104D84
gSoundSample_08104D84:
	.4byte 0x40000000, 0xD10C00, 1975, 11300	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x104D94, 0x2C28
	.global gSoundSample_081079BC
gSoundSample_081079BC:
	.4byte 0x0, 0xD10C00, 0, 18633	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1079CC, 0x48CC
	.global gSoundSample_0810C298
gSoundSample_0810C298:
	.4byte 0x40000000, 0xD10C00, 0, 14002	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x10C2A8, 0x36B4
	.global gSoundSample_0810F95C
gSoundSample_0810F95C:
	.4byte 0x40000000, 0xD10C00, 14775, 16517	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x10F96C, 0x4088
	.global gSoundSample_081139F4
gSoundSample_081139F4:
	.4byte 0x40000000, 0xD10C00, 3398, 5957	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x113A04, 0x1748
	.global gSoundSample_0811514C
gSoundSample_0811514C:
	.4byte 0x40000000, 0xD10C00, 5663, 8464	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x11515C, 0x2114
	.global gSoundSample_08117270
gSoundSample_08117270:
	.4byte 0x0, 0x3443000, 0, 6312	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x117280, 0x18AC
	.global gSoundSample_08118B2C
gSoundSample_08118B2C:
	.4byte 0x0, 0xD10C00, 0, 2554	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x118B3C, 0x9FC
	.global gSoundSample_08119538
gSoundSample_08119538:
	.4byte 0x0, 0xD10C00, 0, 13962	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x119548, 0x368C
	.global gSoundSample_0811CBD4
gSoundSample_0811CBD4:
	.4byte 0x0, 0xD10C00, 0, 1904	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x11CBE4, 0x774
	.global gSoundSample_0811D358
gSoundSample_0811D358:
	.4byte 0x40000000, 0xD10C00, 0, 9413	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x11D368, 0x24C8
	.global gSoundSample_0811F830
gSoundSample_0811F830:
	.4byte 0x0, 0xD10C00, 0, 8182	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x11F840, 0x1FF8
	.global gSoundSample_08121838
gSoundSample_08121838:
	.4byte 0x40000000, 0xD10C00, 10931, 21610	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x121848, 0x546C
	.global gSoundSample_08126CB4
gSoundSample_08126CB4:
	.4byte 0x0, 0xD10C00, 0, 8610	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x126CC4, 0x21A4
	.global gSoundSample_08128E68
gSoundSample_08128E68:
	.4byte 0x40000000, 0x7B3000, 10015, 21370	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x128E78, 0x537C
	.global gSoundSample_0812E1F4
gSoundSample_0812E1F4:
	.4byte 0x0, 0xD10C00, 0, 3289	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x12E204, 0xCDC
	.global gSoundSample_0812EEE0
gSoundSample_0812EEE0:
	.4byte 0x40000000, 0x7B3000, 0, 17705	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x12EEF0, 0x452C
	.global gSoundSample_0813341C
gSoundSample_0813341C:
	.4byte 0x0, 0x7B3000, 0, 21205	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x13342C, 0x52D8
	.global gSoundSample_08138704
gSoundSample_08138704:
	.4byte 0x0, 0xD10C00, 0, 26288	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x138714, 0x66B4
	.global gSoundSample_0813EDC8
gSoundSample_0813EDC8:
	.4byte 0x40000000, 0xD10C00, 0, 4666	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x13EDD8, 0x123C
	.global gSoundSample_08140014
gSoundSample_08140014:
	.4byte 0x40000000, 0x7B3000, 42588, 43343	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x140024, 0xA950
	.global gSoundSample_0814A974
gSoundSample_0814A974:
	.4byte 0x0, 0x1488000, 0, 4907	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x14A984, 0x132C
	.global gSoundSample_0814BCB0
gSoundSample_0814BCB0:
	.4byte 0x0, 0xD10C00, 0, 6641	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x14BCC0, 0x19F4
	.global gSoundSample_0814D6B4
gSoundSample_0814D6B4:
	.4byte 0x0, 0xD10C00, 0, 7648	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x14D6C4, 0x1DE4
	.global gSoundSample_0814F4A8
gSoundSample_0814F4A8:
	.4byte 0x0, 0xD10C00, 0, 6533	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x14F4B8, 0x1988
	.global gSoundSample_08150E40
gSoundSample_08150E40:
	.4byte 0x40000000, 0xD10C00, 0, 6654	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x150E50, 0x1A00
	.global gSoundSample_08152850
gSoundSample_08152850:
	.4byte 0x0, 0xD10C00, 0, 17002	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x152860, 0x426C
	.global gSoundSample_08156ACC
gSoundSample_08156ACC:
	.4byte 0x0, 0xD10C00, 0, 13014	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x156ADC, 0x32D8
	.global gSoundSample_08159DB4
gSoundSample_08159DB4:
	.4byte 0x0, 0xD10C00, 0, 14203	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x159DC4, 0x377C
	.global gSoundSample_0815D540
gSoundSample_0815D540:
	.4byte 0x0, 0xD10C00, 0, 24650	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x15D550, 0x604C
	.global gSoundSample_0816359C
gSoundSample_0816359C:
	.4byte 0x0, 0xA44000, 0, 3623	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1635AC, 0xE28
	.global gSoundSample_081643D4
gSoundSample_081643D4:
	.4byte 0x0, 0xA44000, 0, 6486	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1643E4, 0x1958
	.global gSoundSample_08165D3C
gSoundSample_08165D3C:
	.4byte 0x0, 0xA44000, 0, 2172	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x165D4C, 0x880
	.global gSoundSample_081665CC
gSoundSample_081665CC:
	.4byte 0x0, 0xA44000, 0, 1479	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1665DC, 0x5C8
	.global gSoundSample_08166BA4
gSoundSample_08166BA4:
	.4byte 0x0, 0xA44000, 0, 2890	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x166BB4, 0xB4C
	.global gSoundSample_08167700
gSoundSample_08167700:
	.4byte 0x0, 0xA44000, 0, 3620	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x167710, 0xE28
	.global gSoundSample_08168538
gSoundSample_08168538:
	.4byte 0x0, 0xA44000, 0, 2933	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x168548, 0xB78
	.global gSoundSample_081690C0
gSoundSample_081690C0:
	.4byte 0x0, 0xA44000, 0, 1677	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1690D0, 0x690
	.global gSoundSample_08169760
gSoundSample_08169760:
	.4byte 0x0, 0xA44000, 0, 2760	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x169770, 0xACC
	.global gSoundSample_0816A23C
gSoundSample_0816A23C:
	.4byte 0x0, 0xA44000, 0, 4504	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x16A24C, 0x119C
	.global gSoundSample_0816B3E8
gSoundSample_0816B3E8:
	.4byte 0x0, 0xA44000, 0, 8734	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x16B3F8, 0x2220
	.global gSoundSample_0816D618
gSoundSample_0816D618:
	.4byte 0x0, 0xA44000, 0, 2768	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x16D628, 0xAD4
	.global gSoundSample_0816E0FC
gSoundSample_0816E0FC:
	.4byte 0x0, 0xA44000, 0, 15993	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x16E10C, 0x3E7C
	.global gSoundSample_08171F88
gSoundSample_08171F88:
	.4byte 0x0, 0xA44000, 0, 13512	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x171F98, 0x34CC
	.global gSoundSample_08175464
gSoundSample_08175464:
	.4byte 0x0, 0xA44000, 0, 56041	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x175474, 0xDAEC
	.global gSoundSample_08182F60
gSoundSample_08182F60:
	.4byte 0x0, 0xA44000, 0, 15809	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x182F70, 0x3DC4
	.global gSoundSample_08186D34
gSoundSample_08186D34:
	.4byte 0x0, 0xA44000, 0, 6537	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x186D44, 0x198C
	.global gSoundSample_081886D0
gSoundSample_081886D0:
	.4byte 0x0, 0xA44000, 0, 34020	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1886E0, 0x84E8
	.global gSoundSample_08190BC8
gSoundSample_08190BC8:
	.4byte 0x0, 0xA44000, 0, 5101	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x190BD8, 0x13F0
	.global gSoundSample_08191FC8
gSoundSample_08191FC8:
	.4byte 0x0, 0xA44000, 0, 9945	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x191FD8, 0x26DC
	.global gSoundSample_081946B4
gSoundSample_081946B4:
	.4byte 0x0, 0xA44000, 0, 7758	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1946C4, 0x1E50
	.global gSoundSample_08196514
gSoundSample_08196514:
	.4byte 0x0, 0xA44000, 0, 21629	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x196524, 0x5480
	.global gSoundSample_0819B9A4
gSoundSample_0819B9A4:
	.4byte 0x0, 0xA44000, 0, 22944	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x19B9B4, 0x59A4
	.global gSoundSample_081A1358
gSoundSample_081A1358:
	.4byte 0x0, 0xA44000, 0, 7079	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1A1368, 0x1BA8
	.global gSoundSample_081A2F10
gSoundSample_081A2F10:
	.4byte 0x0, 0xA44000, 0, 4400	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1A2F20, 0x1134
	.global gSoundSample_081A4054
gSoundSample_081A4054:
	.4byte 0x0, 0xA44000, 0, 5595	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1A4064, 0x15DC
	.global gSoundSample_081A5640
gSoundSample_081A5640:
	.4byte 0x0, 0xA44000, 0, 4225	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1A5650, 0x1084
	.global gSoundSample_081A66D4
gSoundSample_081A66D4:
	.4byte 0x0, 0xA44000, 0, 15983	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1A66E4, 0x3E70
	.global gSoundSample_081AA554
gSoundSample_081AA554:
	.4byte 0x0, 0xA44000, 0, 23750	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1AA564, 0x5CC8
	.global gSoundSample_081B022C
gSoundSample_081B022C:
	.4byte 0x0, 0xA44000, 0, 58292	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1B023C, 0xE3B8
	.global gSoundSample_081BE5F4
gSoundSample_081BE5F4:
	.4byte 0x0, 0xA44000, 0, 5066	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1BE604, 0x13CC
	.global gSoundSample_081BF9D0
gSoundSample_081BF9D0:
	.4byte 0x0, 0xA44000, 0, 34605	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1BF9E0, 0x8730
	.global gSoundSample_081C8110
gSoundSample_081C8110:
	.4byte 0x0, 0xA44000, 0, 20082	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1C8120, 0x4E74
	.global gSoundSample_081CCF94
gSoundSample_081CCF94:
	.4byte 0x40000000, 0x1488000, 25008, 42551	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1CCFA4, 0xA638
	.global gSoundSample_081D75DC
gSoundSample_081D75DC:
	.4byte 0x0, 0x1488000, 0, 10250	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1D75EC, 0x280C
	.global gSoundSample_081D9DF8
gSoundSample_081D9DF8:
	.4byte 0x40000000, 0xDB3F59, 3437, 10890	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1D9E08, 0x2A8C
	.global gSoundSample_081DC894
gSoundSample_081DC894:
	.4byte 0x40000000, 0x1488000, 6931, 11129	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1DC8A4, 0x2B7C
	.global gSoundSample_081DF420
gSoundSample_081DF420:
	.4byte 0x0, 0x1488000, 0, 10384	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1DF430, 0x2894
	.global gSoundSample_081E1CC4
gSoundSample_081E1CC4:
	.4byte 0x40000000, 0x1488000, 5109, 9915	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1E1CD4, 0x26BC
	.global gSoundSample_081E4390
gSoundSample_081E4390:
	.4byte 0x0, 0xA44000, 0, 16102	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1E43A0, 0x3EE8
	.global gSoundSample_081E8288
gSoundSample_081E8288:
	.4byte 0x0, 0xA44000, 0, 20693	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1E8298, 0x50D8
	.global gSoundSample_081ED370
gSoundSample_081ED370:
	.4byte 0x0, 0x1488000, 0, 44865	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1ED380, 0xAF44
	.global gSoundSample_081F82C4
gSoundSample_081F82C4:
	.4byte 0x0, 0x1488000, 0, 45018	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x1F82D4, 0xAFDC
	.global gSoundSample_082032B0
gSoundSample_082032B0:
	.4byte 0x0, 0x1488000, 0, 43836	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2032C0, 0xAB40
	.global gSoundSample_0820DE00
gSoundSample_0820DE00:
	.4byte 0x0, 0x7B3000, 0, 5938	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x20DE10, 0x1734
	.global gSoundSample_0820F544
gSoundSample_0820F544:
	.4byte 0x0, 0x1488000, 0, 32650	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x20F554, 0x7F8C
	.global gSoundSample_082174E0
gSoundSample_082174E0:
	.4byte 0x0, 0x2B11000, 0, 37850	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2174F0, 0x93DC
	.global gSoundSample_082208CC
gSoundSample_082208CC:
	.4byte 0x40000000, 0x186A790, 7177, 15583	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2208DC, 0x3CE0
	.global gSoundSample_082245BC
gSoundSample_082245BC:
	.4byte 0x0, 0xA44000, 0, 55849	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2245CC, 0xDA2C
	.global gSoundSample_08231FF8
gSoundSample_08231FF8:
	.4byte 0x40000000, 0x22917DA, 3206, 3343	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x232008, 0xD10
	.global gSoundSample_08232D18
gSoundSample_08232D18:
	.4byte 0x40000000, 0x2E24A73, 3255, 3435	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x232D28, 0xD6C
	.global gSoundSample_08233A94
gSoundSample_08233A94:
	.4byte 0x40000000, 0xF618D1, 4315, 7393	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x233AA4, 0x1CE4
	.global gSoundSample_08235788
gSoundSample_08235788:
	.4byte 0x0, 0x3A1237, 0, 16922	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x235798, 0x421C
	.global gSoundSample_082399B4
gSoundSample_082399B4:
	.4byte 0x0, 0xD10C00, 0, 6158	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2399C4, 0x1810
	.global gSoundSample_0823B1D4
gSoundSample_0823B1D4:
	.4byte 0x40000000, 0x22E1694, 1013, 1198	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x23B1E4, 0x4B0
	.global gSoundSample_0823B694
gSoundSample_0823B694:
	.4byte 0x40000000, 0x61A9E4, 7867, 9942	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x23B6A4, 0x26D8
	.global gSoundSample_0823DD7C
gSoundSample_0823DD7C:
	.4byte 0x40000000, 0x825D85, 5831, 8742	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x23DD8C, 0x2228
	.global gSoundSample_0823FFB4
gSoundSample_0823FFB4:
	.4byte 0x40000000, 0x522000, 4842, 15009	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x23FFC4, 0x3AA4
	.global gSoundSample_08243A68
gSoundSample_08243A68:
	.4byte 0x40000000, 0x1F98062, 31952, 32083	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x243A78, 0x7D54
	.global gSoundSample_0824B7CC
gSoundSample_0824B7CC:
	.4byte 0x40000000, 0x1143C06, 4773, 4909	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x24B7DC, 0x1330
	.global gSoundSample_0824CB0C
gSoundSample_0824CB0C:
	.4byte 0x40000000, 0x61A9E4, 8739, 15940	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x24CB1C, 0x3E48
	.global gSoundSample_08250964
gSoundSample_08250964:
	.4byte 0x40000000, 0xB85D49, 5401, 17695	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x250974, 0x4520
	.global gSoundSample_08254E94
gSoundSample_08254E94:
	.4byte 0x40000000, 0x61A9E4, 4034, 18749	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x254EA4, 0x4940
	.global gSoundSample_082597E4
gSoundSample_082597E4:
	.4byte 0x40000000, 0xA44000, 6958, 10370	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2597F4, 0x2884
	.global gSoundSample_0825C078
gSoundSample_0825C078:
	.4byte 0x40000000, 0x2097614, 4498, 5640	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x25C088, 0x160C
	.global gSoundSample_0825D694
gSoundSample_0825D694:
	.4byte 0x40000000, 0x61A9E4, 7589, 32186	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x25D6A4, 0x7DBC
	.global gSoundSample_08265460
gSoundSample_08265460:
	.4byte 0x40000000, 0x104BB0A, 7469, 9698	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x265470, 0x25E4
	.global gSoundSample_08267A54
gSoundSample_08267A54:
	.4byte 0x40000000, 0xDB3F59, 18303, 20716	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x267A64, 0x50F0
	.global gSoundSample_0826CB54
gSoundSample_0826CB54:
	.4byte 0x0, 0xA44000, 0, 17352	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x26CB64, 0x43CC
	.global gSoundSample_08270F30
gSoundSample_08270F30:
	.4byte 0x40000000, 0xA44000, 0, 19737	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x270F40, 0x4D1C
	.global gSoundSample_08275C5C
gSoundSample_08275C5C:
	.4byte 0x0, 0xA44000, 0, 24848	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x275C6C, 0x6114
	.global gSoundSample_0827BD80
gSoundSample_0827BD80:
	.4byte 0x40000000, 0xA44000, 0, 16375	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x27BD90, 0x3FF8
	.global gSoundSample_0827FD88
gSoundSample_0827FD88:
	.4byte 0x0, 0xA44000, 0, 24840	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x27FD98, 0x610C
	.global gSoundSample_08285EA4
gSoundSample_08285EA4:
	.4byte 0x40000000, 0xA44000, 16037, 28398	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x285EB4, 0x6EF0
	.global gSoundSample_0828CDA4
gSoundSample_0828CDA4:
	.4byte 0x0, 0xA44000, 0, 5107	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x28CDB4, 0x13F4
	.global gSoundSample_0828E1A8
gSoundSample_0828E1A8:
	.4byte 0x0, 0xA44000, 0, 3061	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x28E1B8, 0xBF8
	.global gSoundSample_0828EDB0
gSoundSample_0828EDB0:
	.4byte 0x0, 0xA44000, 0, 2201	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x28EDC0, 0x89C
	.global gSoundSample_0828F65C
gSoundSample_0828F65C:
	.4byte 0x0, 0xA44000, 0, 12120	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x28F66C, 0x2F5C
	.global gSoundSample_082925C8
gSoundSample_082925C8:
	.4byte 0x0, 0xA44000, 0, 6036	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2925D8, 0x1798
	.global gSoundSample_08293D70
gSoundSample_08293D70:
	.4byte 0x0, 0xA44000, 0, 16226	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x293D80, 0x3F64
	.global gSoundSample_08297CE4
gSoundSample_08297CE4:
	.4byte 0x0, 0xA44000, 0, 21264	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x297CF4, 0x5314
	.global gSoundSample_0829D008
gSoundSample_0829D008:
	.4byte 0x0, 0x1488000, 0, 7574	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x29D018, 0x1D98
	.global gSoundSample_0829EDB0
gSoundSample_0829EDB0:
	.4byte 0x40000000, 0xA44000, 0, 42835	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x29EDC0, 0xA754
	.global gSoundSample_082A9514
gSoundSample_082A9514:
	.4byte 0x40000000, 0xA44000, 0, 69129	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2A9524, 0x10E0C
	.global gSoundSample_082BA330
gSoundSample_082BA330:
	.4byte 0x0, 0xA44000, 0, 4983	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2BA340, 0x1378
	.global gSoundSample_082BB6B8
gSoundSample_082BB6B8:
	.4byte 0x0, 0xA44000, 0, 5977	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2BB6C8, 0x175C
	.global gSoundSample_082BCE24
gSoundSample_082BCE24:
	.4byte 0x0, 0xA44000, 0, 11580	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2BCE34, 0x2D40
	.global gSoundSample_082BFB74
gSoundSample_082BFB74:
	.4byte 0x40000000, 0xA44000, 4396, 39609	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2BFB84, 0x9ABC
	.global gSoundSample_082C9640
gSoundSample_082C9640:
	.4byte 0x0, 0xA44000, 0, 4982	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2C9650, 0x1378
	.global gSoundSample_082CA9C8
gSoundSample_082CA9C8:
	.4byte 0x40000000, 0xA44000, 0, 54115	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2CA9D8, 0xD364
	.global gSoundSample_082D7D3C
gSoundSample_082D7D3C:
	.4byte 0x40000000, 0xA44000, 0, 42774	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2D7D4C, 0xA718
	.global gSoundSample_082E2464
gSoundSample_082E2464:
	.4byte 0x0, 0x1488000, 0, 45277	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2E2474, 0xB0E0
	.global gSoundSample_082ED554
gSoundSample_082ED554:
	.4byte 0x0, 0x1488000, 0, 30817	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2ED564, 0x7864
	.global gSoundSample_082F4DC8
gSoundSample_082F4DC8:
	.4byte 0x0, 0xA44000, 0, 21302	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2F4DD8, 0x5338
	.global gSoundSample_082FA110
gSoundSample_082FA110:
	.4byte 0x0, 0xA44000, 0, 22260	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2FA120, 0x56F8
	.global gSoundSample_082FF818
gSoundSample_082FF818:
	.4byte 0x40000000, 0xA44000, 18291, 32514	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x2FF828, 0x7F04
	.global gSoundSample_0830772C
gSoundSample_0830772C:
	.4byte 0x0, 0xA44000, 0, 19198	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x30773C, 0x4B00
	.global gSoundSample_0830C23C
gSoundSample_0830C23C:
	.4byte 0x0, 0xA44000, 0, 2969	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x30C24C, 0xB9C
	.global gSoundSample_0830CDE8
gSoundSample_0830CDE8:
	.4byte 0x40000000, 0xA44000, 1215, 4335	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x30CDF8, 0x10F0
	.global gSoundSample_0830DEE8
gSoundSample_0830DEE8:
	.4byte 0x0, 0xA44000, 0, 4287	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x30DEF8, 0x10C0
	.global gSoundSample_0830EFB8
gSoundSample_0830EFB8:
	.4byte 0x0, 0xA44000, 0, 10757	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x30EFC8, 0x2A08
	.global gSoundSample_083119D0
gSoundSample_083119D0:
	.4byte 0x0, 0xA44000, 0, 22400	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x3119E0, 0x5784
	.global gSoundSample_08317164
gSoundSample_08317164:
	.4byte 0x40000000, 0x522000, 0, 22129	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x317174, 0x5674
	.global gSoundSample_0831C7E8
gSoundSample_0831C7E8:
	.4byte 0x0, 0xA44000, 0, 3266	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x31C7F8, 0xCC4
	.global gSoundSample_0831D4BC
gSoundSample_0831D4BC:
	.4byte 0x0, 0xA44000, 0, 34333	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x31D4CC, 0x8620
	.global gSoundSample_08325AEC
gSoundSample_08325AEC:
	.4byte 0x40000000, 0xA44000, 0, 21256	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x325AFC, 0x530C
	.global gSoundSample_0832AE08
gSoundSample_0832AE08:
	.4byte 0x40000000, 0xA44000, 0, 29525	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x32AE18, 0x7358
	.global gSoundSample_08332170
gSoundSample_08332170:
	.4byte 0x0, 0xA44000, 0, 40164	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x332180, 0x9CE8
	.global gSoundSample_0833BE68
gSoundSample_0833BE68:
	.4byte 0x0, 0xA44000, 0, 5720	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x33BE78, 0x165C
	.global gSoundSample_0833D4D4
gSoundSample_0833D4D4:
	.4byte 0x0, 0xA44000, 0, 28815	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x33D4E4, 0x7090
	.global gSoundSample_08344574
gSoundSample_08344574:
	.4byte 0x0, 0xA44000, 0, 2851	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x344584, 0xB24
	.global gSoundSample_083450A8
gSoundSample_083450A8:
	.4byte 0x0, 0xA44000, 0, 8537	@ type (0x40000000 = loop), pitch, loop start, size
	.incbin "baserom.gba", 0x3450B8, 0x215C
	.global gSong_001_Track0
gSong_001_Track0:
	.incbin "baserom.gba", 0x347214, 0x1065
	.global gSong_001_Track1
gSong_001_Track1:
	.incbin "baserom.gba", 0x348279, 0x699
	.global gSong_001_Track2
gSong_001_Track2:
	.incbin "baserom.gba", 0x348912, 0x61A
	.global gSong_001_Track3
gSong_001_Track3:
	.incbin "baserom.gba", 0x348F2C, 0x2BA
	.global gSong_001_Track4
gSong_001_Track4:
	.incbin "baserom.gba", 0x3491E6, 0x286
	.global gSong_001_Track5
gSong_001_Track5:
	.incbin "baserom.gba", 0x34946C, 0x73D
	.global gSong_001_Track6
gSong_001_Track6:
	.incbin "baserom.gba", 0x349BA9, 0x322
	.global gSong_001_Track7
gSong_001_Track7:
	.incbin "baserom.gba", 0x349ECB, 0x375
	.global gSong_001
gSong_001:
	.byte 8, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_001_Track0
	.4byte gSong_001_Track1
	.4byte gSong_001_Track2
	.4byte gSong_001_Track3
	.4byte gSong_001_Track4
	.4byte gSong_001_Track5
	.4byte gSong_001_Track6
	.4byte gSong_001_Track7
	.global gSong_002_Track0
gSong_002_Track0:
	.incbin "baserom.gba", 0x34A268, 0xE5
	.global gSong_002_Track1
gSong_002_Track1:
	.incbin "baserom.gba", 0x34A34D, 0xC3
	.global gSong_002_Track2
gSong_002_Track2:
	.incbin "baserom.gba", 0x34A410, 0x136
	.global gSong_002_Track3
gSong_002_Track3:
	.incbin "baserom.gba", 0x34A546, 0xEA
	.global gSong_002_Track4
gSong_002_Track4:
	.incbin "baserom.gba", 0x34A630, 0x108
	.global gSong_002_Track5
gSong_002_Track5:
	.incbin "baserom.gba", 0x34A738, 0xD0
	.global gSong_002_Track6
gSong_002_Track6:
	.incbin "baserom.gba", 0x34A808, 0x19E
	.global gSong_002_Track7
gSong_002_Track7:
	.incbin "baserom.gba", 0x34A9A6, 0xEA
	.global gSong_002
gSong_002:
	.byte 8, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_002_Track0
	.4byte gSong_002_Track1
	.4byte gSong_002_Track2
	.4byte gSong_002_Track3
	.4byte gSong_002_Track4
	.4byte gSong_002_Track5
	.4byte gSong_002_Track6
	.4byte gSong_002_Track7
	.global gSong_003_Track0
gSong_003_Track0:
	.incbin "baserom.gba", 0x34AAB8, 0x3EC
	.global gSong_003_Track1
gSong_003_Track1:
	.incbin "baserom.gba", 0x34AEA4, 0x2DF
	.global gSong_003_Track2
gSong_003_Track2:
	.incbin "baserom.gba", 0x34B183, 0x73
	.global gSong_003_Track3
gSong_003_Track3:
	.incbin "baserom.gba", 0x34B1F6, 0x18A
	.global gSong_003_Track4
gSong_003_Track4:
	.incbin "baserom.gba", 0x34B380, 0x124
	.global gSong_003_Track5
gSong_003_Track5:
	.incbin "baserom.gba", 0x34B4A4, 0x10E
	.global gSong_003_Track6
gSong_003_Track6:
	.incbin "baserom.gba", 0x34B5B2, 0x1DE
	.global gSong_003_Track7
gSong_003_Track7:
	.incbin "baserom.gba", 0x34B790, 0x184
	.global gSong_003_Track8
gSong_003_Track8:
	.incbin "baserom.gba", 0x34B914, 0xDC
	.global gSong_003_Track9
gSong_003_Track9:
	.incbin "baserom.gba", 0x34B9F0, 0x58
	.global gSong_003
gSong_003:
	.byte 10, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_003_Track0
	.4byte gSong_003_Track1
	.4byte gSong_003_Track2
	.4byte gSong_003_Track3
	.4byte gSong_003_Track4
	.4byte gSong_003_Track5
	.4byte gSong_003_Track6
	.4byte gSong_003_Track7
	.4byte gSong_003_Track8
	.4byte gSong_003_Track9
	.global gSong_004_Track0
gSong_004_Track0:
	.incbin "baserom.gba", 0x34BA78, 0xFC
	.global gSong_004_Track1
gSong_004_Track1:
	.incbin "baserom.gba", 0x34BB74, 0x28F
	.global gSong_004_Track2
gSong_004_Track2:
	.incbin "baserom.gba", 0x34BE03, 0xAF
	.global gSong_004_Track3
gSong_004_Track3:
	.incbin "baserom.gba", 0x34BEB2, 0x114
	.global gSong_004_Track4
gSong_004_Track4:
	.incbin "baserom.gba", 0x34BFC6, 0x8A
	.global gSong_004
gSong_004:
	.byte 5, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_004_Track0
	.4byte gSong_004_Track1
	.4byte gSong_004_Track2
	.4byte gSong_004_Track3
	.4byte gSong_004_Track4
	.global gSong_005_Track0
gSong_005_Track0:
	.incbin "baserom.gba", 0x34C06C, 0xBD5
	.global gSong_005_Track1
gSong_005_Track1:
	.incbin "baserom.gba", 0x34CC41, 0x50C
	.global gSong_005_Track2
gSong_005_Track2:
	.incbin "baserom.gba", 0x34D14D, 0x25F
	.global gSong_005_Track3
gSong_005_Track3:
	.incbin "baserom.gba", 0x34D3AC, 0x29E
	.global gSong_005_Track4
gSong_005_Track4:
	.incbin "baserom.gba", 0x34D64A, 0x3FE
	.global gSong_005
gSong_005:
	.byte 5, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_005_Track0
	.4byte gSong_005_Track1
	.4byte gSong_005_Track2
	.4byte gSong_005_Track3
	.4byte gSong_005_Track4
	.global gSong_006_Track0
gSong_006_Track0:
	.incbin "baserom.gba", 0x34DA64, 0x400
	.global gSong_006_Track1
gSong_006_Track1:
	.incbin "baserom.gba", 0x34DE64, 0xA3
	.global gSong_006_Track2
gSong_006_Track2:
	.incbin "baserom.gba", 0x34DF07, 0x42D
	.global gSong_006_Track3
gSong_006_Track3:
	.incbin "baserom.gba", 0x34E334, 0xAB
	.global gSong_006_Track4
gSong_006_Track4:
	.incbin "baserom.gba", 0x34E3DF, 0xD9
	.global gSong_006_Track5
gSong_006_Track5:
	.incbin "baserom.gba", 0x34E4B8, 0x9B
	.global gSong_006_Track6
gSong_006_Track6:
	.incbin "baserom.gba", 0x34E553, 0xF6
	.global gSong_006_Track7
gSong_006_Track7:
	.incbin "baserom.gba", 0x34E649, 0x263
	.global gSong_006_Track8
gSong_006_Track8:
	.incbin "baserom.gba", 0x34E8AC, 0x192
	.global gSong_006_Track9
gSong_006_Track9:
	.incbin "baserom.gba", 0x34EA3E, 0x9E
	.global gSong_006
gSong_006:
	.byte 10, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_006_Track0
	.4byte gSong_006_Track1
	.4byte gSong_006_Track2
	.4byte gSong_006_Track3
	.4byte gSong_006_Track4
	.4byte gSong_006_Track5
	.4byte gSong_006_Track6
	.4byte gSong_006_Track7
	.4byte gSong_006_Track8
	.4byte gSong_006_Track9
	.global gSong_007_Track0
gSong_007_Track0:
	.incbin "baserom.gba", 0x34EB0C, 0x820
	.global gSong_007_Track1
gSong_007_Track1:
	.incbin "baserom.gba", 0x34F32C, 0x36A
	.global gSong_007_Track2
gSong_007_Track2:
	.incbin "baserom.gba", 0x34F696, 0x123
	.global gSong_007_Track3
gSong_007_Track3:
	.incbin "baserom.gba", 0x34F7B9, 0x1D0
	.global gSong_007_Track4
gSong_007_Track4:
	.incbin "baserom.gba", 0x34F989, 0x29A
	.global gSong_007_Track5
gSong_007_Track5:
	.incbin "baserom.gba", 0x34FC23, 0xC0
	.global gSong_007_Track6
gSong_007_Track6:
	.incbin "baserom.gba", 0x34FCE3, 0x148
	.global gSong_007_Track7
gSong_007_Track7:
	.incbin "baserom.gba", 0x34FE2B, 0x151
	.global gSong_007
gSong_007:
	.byte 8, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_007_Track0
	.4byte gSong_007_Track1
	.4byte gSong_007_Track2
	.4byte gSong_007_Track3
	.4byte gSong_007_Track4
	.4byte gSong_007_Track5
	.4byte gSong_007_Track6
	.4byte gSong_007_Track7
	.global gSong_008_Track0
gSong_008_Track0:
	.incbin "baserom.gba", 0x34FFA4, 0xF9F
	.global gSong_008_Track1
gSong_008_Track1:
	.incbin "baserom.gba", 0x350F43, 0x9FB
	.global gSong_008_Track2
gSong_008_Track2:
	.incbin "baserom.gba", 0x35193E, 0x1AC
	.global gSong_008_Track3
gSong_008_Track3:
	.incbin "baserom.gba", 0x351AEA, 0x1E2
	.global gSong_008_Track4
gSong_008_Track4:
	.incbin "baserom.gba", 0x351CCC, 0x365
	.global gSong_008_Track5
gSong_008_Track5:
	.incbin "baserom.gba", 0x352031, 0x6D3
	.global gSong_008
gSong_008:
	.byte 6, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_008_Track0
	.4byte gSong_008_Track1
	.4byte gSong_008_Track2
	.4byte gSong_008_Track3
	.4byte gSong_008_Track4
	.4byte gSong_008_Track5
	.global gSong_009_Track0
gSong_009_Track0:
	.incbin "baserom.gba", 0x352724, 0x277
	.global gSong_009_Track1
gSong_009_Track1:
	.incbin "baserom.gba", 0x35299B, 0x192
	.global gSong_009_Track2
gSong_009_Track2:
	.incbin "baserom.gba", 0x352B2D, 0x21D
	.global gSong_009_Track3
gSong_009_Track3:
	.incbin "baserom.gba", 0x352D4A, 0x118
	.global gSong_009_Track4
gSong_009_Track4:
	.incbin "baserom.gba", 0x352E62, 0xA7
	.global gSong_009_Track5
gSong_009_Track5:
	.incbin "baserom.gba", 0x352F09, 0x46
	.global gSong_009_Track6
gSong_009_Track6:
	.incbin "baserom.gba", 0x352F4F, 0x118
	.global gSong_009_Track7
gSong_009_Track7:
	.incbin "baserom.gba", 0x353067, 0x12C
	.global gSong_009_Track8
gSong_009_Track8:
	.incbin "baserom.gba", 0x353193, 0x11D
	.global gSong_009_Track9
gSong_009_Track9:
	.incbin "baserom.gba", 0x3532B0, 0x11A
	.global gSong_009_Track10
gSong_009_Track10:
	.incbin "baserom.gba", 0x3533CA, 0xA2
	.global gSong_009
gSong_009:
	.byte 11, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_009_Track0
	.4byte gSong_009_Track1
	.4byte gSong_009_Track2
	.4byte gSong_009_Track3
	.4byte gSong_009_Track4
	.4byte gSong_009_Track5
	.4byte gSong_009_Track6
	.4byte gSong_009_Track7
	.4byte gSong_009_Track8
	.4byte gSong_009_Track9
	.4byte gSong_009_Track10
	.global gSong_010_Track0
gSong_010_Track0:
	.incbin "baserom.gba", 0x3534A0, 0xDB
	.global gSong_010_Track1
gSong_010_Track1:
	.incbin "baserom.gba", 0x35357B, 0x35D
	.global gSong_010_Track2
gSong_010_Track2:
	.incbin "baserom.gba", 0x3538D8, 0x25C
	.global gSong_010_Track3
gSong_010_Track3:
	.incbin "baserom.gba", 0x353B34, 0x218
	.global gSong_010_Track4
gSong_010_Track4:
	.incbin "baserom.gba", 0x353D4C, 0x11A
	.global gSong_010_Track5
gSong_010_Track5:
	.incbin "baserom.gba", 0x353E66, 0xBE
	.global gSong_010
gSong_010:
	.byte 6, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_010_Track0
	.4byte gSong_010_Track1
	.4byte gSong_010_Track2
	.4byte gSong_010_Track3
	.4byte gSong_010_Track4
	.4byte gSong_010_Track5
	.global gSong_011_Track0
gSong_011_Track0:
	.incbin "baserom.gba", 0x353F44, 0x6C0
	.global gSong_011
gSong_011:
	.byte 1, 0, 1, 174	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_011_Track0
	.global gSong_012_Track0
gSong_012_Track0:
	.incbin "baserom.gba", 0x354610, 0x7B1
	.global gSong_012_Track1
gSong_012_Track1:
	.incbin "baserom.gba", 0x354DC1, 0x2BF
	.global gSong_012
gSong_012:
	.byte 2, 0, 1, 174	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_012_Track0
	.4byte gSong_012_Track1
	.global gSong_013_Track0
gSong_013_Track0:
	.incbin "baserom.gba", 0x355090, 0x87
	.global gSong_013_Track1
gSong_013_Track1:
	.incbin "baserom.gba", 0x355117, 0x184
	.global gSong_013_Track2
gSong_013_Track2:
	.incbin "baserom.gba", 0x35529B, 0x306
	.global gSong_013_Track3
gSong_013_Track3:
	.incbin "baserom.gba", 0x3555A1, 0xC6
	.global gSong_013_Track4
gSong_013_Track4:
	.incbin "baserom.gba", 0x355667, 0x1CE
	.global gSong_013_Track5
gSong_013_Track5:
	.incbin "baserom.gba", 0x355835, 0x12D
	.global gSong_013_Track6
gSong_013_Track6:
	.incbin "baserom.gba", 0x355962, 0xBC
	.global gSong_013_Track7
gSong_013_Track7:
	.incbin "baserom.gba", 0x355A1E, 0x2C
	.global gSong_013_Track8
gSong_013_Track8:
	.incbin "baserom.gba", 0x355A4A, 0x118
	.global gSong_013_Track9
gSong_013_Track9:
	.incbin "baserom.gba", 0x355B62, 0x72
	.global gSong_013
gSong_013:
	.byte 10, 0, 1, 186	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_013_Track0
	.4byte gSong_013_Track1
	.4byte gSong_013_Track2
	.4byte gSong_013_Track3
	.4byte gSong_013_Track4
	.4byte gSong_013_Track5
	.4byte gSong_013_Track6
	.4byte gSong_013_Track7
	.4byte gSong_013_Track8
	.4byte gSong_013_Track9
	.global gSong_014_Track0
gSong_014_Track0:
	.incbin "baserom.gba", 0x355C04, 0x18
	.global gSong_014
gSong_014:
	.byte 1, 0, 254, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_014_Track0
	.global gSong_015_Track0
gSong_015_Track0:
	.incbin "baserom.gba", 0x355C28, 0x18
	.global gSong_015
gSong_015:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_015_Track0
	.global gSong_016_Track0
gSong_016_Track0:
	.incbin "baserom.gba", 0x355C4C, 0x18
	.global gSong_016
gSong_016:
	.byte 1, 0, 253, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_016_Track0
	.global gSong_017_Track0
gSong_017_Track0:
	.incbin "baserom.gba", 0x355C70, 0x18
	.global gSong_017
gSong_017:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_017_Track0
	.global gSong_018_Track0
gSong_018_Track0:
	.incbin "baserom.gba", 0x355C94, 0x16
	.global gSong_018_Track1
gSong_018_Track1:
	.incbin "baserom.gba", 0x355CAA, 0x16
	.global gSong_018
gSong_018:
	.byte 2, 0, 200, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_018_Track0
	.4byte gSong_018_Track1
	.global gSong_019_Track0
gSong_019_Track0:
	.incbin "baserom.gba", 0x355CD0, 0x18
	.global gSong_019
gSong_019:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_019_Track0
	.global gSong_020_Track0
gSong_020_Track0:
	.incbin "baserom.gba", 0x355CF4, 0x18
	.global gSong_020
gSong_020:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_020_Track0
	.global gSong_021_Track0
gSong_021_Track0:
	.incbin "baserom.gba", 0x355D18, 0x20
	.global gSong_021
gSong_021:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_021_Track0
	.global gSong_022_Track0
gSong_022_Track0:
	.incbin "baserom.gba", 0x355D44, 0x18
	.global gSong_022
gSong_022:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_022_Track0
	.global gSong_023_Track0
gSong_023_Track0:
	.incbin "baserom.gba", 0x355D68, 0x18
	.global gSong_023
gSong_023:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_023_Track0
	.global gSong_024_Track0
gSong_024_Track0:
	.incbin "baserom.gba", 0x355D8C, 0x18
	.global gSong_024
gSong_024:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_024_Track0
	.global gSong_025_Track0
gSong_025_Track0:
	.incbin "baserom.gba", 0x355DB0, 0x18
	.global gSong_025
gSong_025:
	.byte 1, 0, 13, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_025_Track0
	.global gSong_026_Track0
gSong_026_Track0:
	.incbin "baserom.gba", 0x355DD4, 0x34
	.global gSong_026
gSong_026:
	.byte 1, 0, 18, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_026_Track0
	.global gSong_027_Track0
gSong_027_Track0:
	.incbin "baserom.gba", 0x355E14, 0x28
	.global gSong_027
gSong_027:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_027_Track0
	.global gSong_028_Track0
gSong_028_Track0:
	.incbin "baserom.gba", 0x355E48, 0x14
	.global gSong_028
gSong_028:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_028_Track0
	.global gSong_029_Track0
gSong_029_Track0:
	.incbin "baserom.gba", 0x355E68, 0x1C
	.global gSong_029
gSong_029:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_029_Track0
	.global gSong_030_Track0
gSong_030_Track0:
	.incbin "baserom.gba", 0x355E90, 0x6D
	.global gSong_030_Track1
gSong_030_Track1:
	.incbin "baserom.gba", 0x355EFD, 0x7C
	.global gSong_030_Track2
gSong_030_Track2:
	.incbin "baserom.gba", 0x355F79, 0x240
	.global gSong_030_Track3
gSong_030_Track3:
	.incbin "baserom.gba", 0x3561B9, 0x1DF
	.global gSong_030_Track4
gSong_030_Track4:
	.incbin "baserom.gba", 0x356398, 0x17E
	.global gSong_030_Track5
gSong_030_Track5:
	.incbin "baserom.gba", 0x356516, 0x1D5
	.global gSong_030_Track6
gSong_030_Track6:
	.incbin "baserom.gba", 0x3566EB, 0x138
	.global gSong_030_Track7
gSong_030_Track7:
	.incbin "baserom.gba", 0x356823, 0xCA
	.global gSong_030_Track8
gSong_030_Track8:
	.incbin "baserom.gba", 0x3568ED, 0xA7
	.global gSong_030
gSong_030:
	.byte 9, 0, 1, 185	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_030_Track0
	.4byte gSong_030_Track1
	.4byte gSong_030_Track2
	.4byte gSong_030_Track3
	.4byte gSong_030_Track4
	.4byte gSong_030_Track5
	.4byte gSong_030_Track6
	.4byte gSong_030_Track7
	.4byte gSong_030_Track8
	.global gSong_031_Track0
gSong_031_Track0:
	.incbin "baserom.gba", 0x3569C0, 0xED
	.global gSong_031_Track1
gSong_031_Track1:
	.incbin "baserom.gba", 0x356AAD, 0xD2
	.global gSong_031_Track2
gSong_031_Track2:
	.incbin "baserom.gba", 0x356B7F, 0xA6
	.global gSong_031_Track3
gSong_031_Track3:
	.incbin "baserom.gba", 0x356C25, 0xC3
	.global gSong_031
gSong_031:
	.byte 4, 0, 1, 174	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_031_Track0
	.4byte gSong_031_Track1
	.4byte gSong_031_Track2
	.4byte gSong_031_Track3
	.global gSong_032_Track0
gSong_032_Track0:
	.incbin "baserom.gba", 0x356D00, 0x68
	.global gSong_032
gSong_032:
	.byte 1, 0, 108, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_032_Track0
	.global gSong_033_Track0
gSong_033_Track0:
	.incbin "baserom.gba", 0x356D74, 0x18
	.global gSong_033
gSong_033:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_033_Track0
	.global gSong_034_Track0
gSong_034_Track0:
	.incbin "baserom.gba", 0x356D98, 0x18
	.global gSong_034
gSong_034:
	.byte 1, 0, 20, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_034_Track0
	.global gSong_035_Track0
gSong_035_Track0:
	.incbin "baserom.gba", 0x356DBC, 0x18
	.global gSong_035
gSong_035:
	.byte 1, 0, 20, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_035_Track0
	.global gSong_036_Track0
gSong_036_Track0:
	.incbin "baserom.gba", 0x356DE0, 0x16
	.global gSong_036_Track1
gSong_036_Track1:
	.incbin "baserom.gba", 0x356DF6, 0x38
	.global gSong_036_Track2
gSong_036_Track2:
	.incbin "baserom.gba", 0x356E2E, 0x2E
	.global gSong_036
gSong_036:
	.byte 3, 0, 30, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_036_Track0
	.4byte gSong_036_Track1
	.4byte gSong_036_Track2
	.global gSong_037_Track0
gSong_037_Track0:
	.incbin "baserom.gba", 0x356E70, 0x34
	.global gSong_037
gSong_037:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_037_Track0
	.global gSong_038_Track0
gSong_038_Track0:
	.incbin "baserom.gba", 0x356EB0, 0x18
	.global gSong_038
gSong_038:
	.byte 1, 0, 20, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_038_Track0
	.global gSong_039_Track0
gSong_039_Track0:
	.incbin "baserom.gba", 0x356ED4, 0x34
	.global gSong_039
gSong_039:
	.byte 1, 0, 19, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_039_Track0
	.global gSong_040_Track0
gSong_040_Track0:
	.incbin "baserom.gba", 0x356F14, 0x18
	.global gSong_040
gSong_040:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_040_Track0
	.global gSong_041_Track0
gSong_041_Track0:
	.incbin "baserom.gba", 0x356F38, 0x18
	.global gSong_041
gSong_041:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_041_Track0
	.global gSong_042_Track0
gSong_042_Track0:
	.incbin "baserom.gba", 0x356F5C, 0x18
	.global gSong_042
gSong_042:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_042_Track0
	.global gSong_043_Track0
gSong_043_Track0:
	.incbin "baserom.gba", 0x356F80, 0x18
	.global gSong_043
gSong_043:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_043_Track0
	.global gSong_044_Track0
gSong_044_Track0:
	.incbin "baserom.gba", 0x356FA4, 0x18
	.global gSong_044
gSong_044:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_044_Track0
	.global gSong_045_Track0
gSong_045_Track0:
	.incbin "baserom.gba", 0x356FC8, 0x24
	.global gSong_045
gSong_045:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_045_Track0
	.global gSong_046_Track0
gSong_046_Track0:
	.incbin "baserom.gba", 0x356FF8, 0x1C
	.global gSong_046
gSong_046:
	.byte 1, 0, 50, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_046_Track0
	.global gSong_047_Track0
gSong_047_Track0:
	.incbin "baserom.gba", 0x357020, 0x24
	.global gSong_047
gSong_047:
	.byte 1, 0, 200, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_047_Track0
	.global gSong_048_Track0
gSong_048_Track0:
	.incbin "baserom.gba", 0x357050, 0x4C
	.global gSong_048
gSong_048:
	.byte 1, 0, 200, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_048_Track0
	.global gSong_049_Track0
gSong_049_Track0:
	.incbin "baserom.gba", 0x3570A8, 0x18
	.global gSong_049
gSong_049:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_049_Track0
	.global gSong_050_Track0
gSong_050_Track0:
	.incbin "baserom.gba", 0x3570CC, 0x74
	.global gSong_050
gSong_050:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_050_Track0
	.global gSong_051_Track0
gSong_051_Track0:
	.incbin "baserom.gba", 0x35714C, 0x43
	.global gSong_051_Track1
gSong_051_Track1:
	.incbin "baserom.gba", 0x35718F, 0x2D
	.global gSong_051_Track2
gSong_051_Track2:
	.incbin "baserom.gba", 0x3571BC, 0x18
	.global gSong_051
gSong_051:
	.byte 3, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_051_Track0
	.4byte gSong_051_Track1
	.4byte gSong_051_Track2
	.global gSong_052_Track0
gSong_052_Track0:
	.incbin "baserom.gba", 0x3571E8, 0x2C
	.global gSong_052
gSong_052:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_052_Track0
	.global gSong_053_Track0
gSong_053_Track0:
	.incbin "baserom.gba", 0x357220, 0x18
	.global gSong_053
gSong_053:
	.byte 1, 0, 11, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_053_Track0
	.global gSong_054_Track0
gSong_054_Track0:
	.incbin "baserom.gba", 0x357244, 0x1C
	.global gSong_054
gSong_054:
	.byte 1, 0, 180, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_054_Track0
	.global gSong_055_Track0
gSong_055_Track0:
	.incbin "baserom.gba", 0x35726C, 0x20
	.global gSong_055
gSong_055:
	.byte 1, 0, 200, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_055_Track0
	.global gSong_056_Track0
gSong_056_Track0:
	.incbin "baserom.gba", 0x357298, 0x30
	.global gSong_056
gSong_056:
	.byte 1, 0, 199, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_056_Track0
	.global gSong_057_Track0
gSong_057_Track0:
	.incbin "baserom.gba", 0x3572D4, 0x18
	.global gSong_057
gSong_057:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_057_Track0
	.global gSong_058_Track0
gSong_058_Track0:
	.incbin "baserom.gba", 0x3572F8, 0x1C
	.global gSong_058
gSong_058:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_058_Track0
	.global gSong_059_Track0
gSong_059_Track0:
	.incbin "baserom.gba", 0x357320, 0x24
	.global gSong_059
gSong_059:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_059_Track0
	.global gSong_060_Track0
gSong_060_Track0:
	.incbin "baserom.gba", 0x357350, 0x1C
	.global gSong_060
gSong_060:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_060_Track0
	.global gSong_061_Track0
gSong_061_Track0:
	.incbin "baserom.gba", 0x357378, 0x1C
	.global gSong_061
gSong_061:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_061_Track0
	.global gSong_062_Track0
gSong_062_Track0:
	.incbin "baserom.gba", 0x3573A0, 0x7B
	.global gSong_062_Track1
gSong_062_Track1:
	.incbin "baserom.gba", 0x35741B, 0x7D
	.global gSong_062
gSong_062:
	.byte 2, 0, 255, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_062_Track0
	.4byte gSong_062_Track1
	.global gSong_063_Track0
gSong_063_Track0:
	.incbin "baserom.gba", 0x3574A8, 0x40
	.global gSong_063
gSong_063:
	.byte 1, 0, 11, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_063_Track0
	.global gSong_064_Track0
gSong_064_Track0:
	.incbin "baserom.gba", 0x3574F4, 0x50
	.global gSong_064_Track1
gSong_064_Track1:
	.incbin "baserom.gba", 0x357544, 0x3A6
	.global gSong_064_Track2
gSong_064_Track2:
	.incbin "baserom.gba", 0x3578EA, 0x3A4
	.global gSong_064_Track3
gSong_064_Track3:
	.incbin "baserom.gba", 0x357C8E, 0x3A2
	.global gSong_064
gSong_064:
	.byte 4, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_064_Track0
	.4byte gSong_064_Track1
	.4byte gSong_064_Track2
	.4byte gSong_064_Track3
	.global gSong_065_Track0
gSong_065_Track0:
	.incbin "baserom.gba", 0x358048, 0x1C
	.global gSong_065
gSong_065:
	.byte 1, 0, 8, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_065_Track0
	.global gSong_066_Track0
gSong_066_Track0:
	.incbin "baserom.gba", 0x358070, 0xC1
	.global gSong_066_Track1
gSong_066_Track1:
	.incbin "baserom.gba", 0x358131, 0xB3
	.global gSong_066_Track2
gSong_066_Track2:
	.incbin "baserom.gba", 0x3581E4, 0x34
	.global gSong_066
gSong_066:
	.byte 3, 0, 2, 202	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_066_Track0
	.4byte gSong_066_Track1
	.4byte gSong_066_Track2
	.global gSong_067_Track0
gSong_067_Track0:
	.incbin "baserom.gba", 0x35822C, 0xC1
	.global gSong_067_Track1
gSong_067_Track1:
	.incbin "baserom.gba", 0x3582ED, 0xB3
	.global gSong_067_Track2
gSong_067_Track2:
	.incbin "baserom.gba", 0x3583A0, 0x34
	.global gSong_067
gSong_067:
	.byte 3, 0, 2, 202	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_067_Track0
	.4byte gSong_067_Track1
	.4byte gSong_067_Track2
	.global gSong_068_Track0
gSong_068_Track0:
	.incbin "baserom.gba", 0x3583E8, 0x87
	.global gSong_068_Track1
gSong_068_Track1:
	.incbin "baserom.gba", 0x35846F, 0xC6
	.global gSong_068_Track2
gSong_068_Track2:
	.incbin "baserom.gba", 0x358535, 0x97
	.global gSong_068_Track3
gSong_068_Track3:
	.incbin "baserom.gba", 0x3585CC, 0x96
	.global gSong_068_Track4
gSong_068_Track4:
	.incbin "baserom.gba", 0x358662, 0x76
	.global gSong_068
gSong_068:
	.byte 5, 0, 2, 192	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_068_Track0
	.4byte gSong_068_Track1
	.4byte gSong_068_Track2
	.4byte gSong_068_Track3
	.4byte gSong_068_Track4
	.global gSong_069_Track0
gSong_069_Track0:
	.incbin "baserom.gba", 0x3586F4, 0x18
	.global gSong_069
gSong_069:
	.byte 1, 0, 15, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_069_Track0
	.global gSong_070_Track0
gSong_070_Track0:
	.incbin "baserom.gba", 0x358718, 0x18
	.global gSong_070
gSong_070:
	.byte 1, 0, 15, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_070_Track0
	.global gSong_071_Track0
gSong_071_Track0:
	.incbin "baserom.gba", 0x35873C, 0x18
	.global gSong_071
gSong_071:
	.byte 1, 0, 15, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_071_Track0
	.global gSong_072_Track0
gSong_072_Track0:
	.incbin "baserom.gba", 0x358760, 0x18
	.global gSong_072
gSong_072:
	.byte 1, 0, 15, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_072_Track0
	.global gSong_073_Track0
gSong_073_Track0:
	.incbin "baserom.gba", 0x358784, 0x18
	.global gSong_073
gSong_073:
	.byte 1, 0, 15, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_073_Track0
	.global gSong_074_Track0
gSong_074_Track0:
	.incbin "baserom.gba", 0x3587A8, 0x18
	.global gSong_074
gSong_074:
	.byte 1, 0, 15, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_074_Track0
	.global gSong_075_Track0
gSong_075_Track0:
	.incbin "baserom.gba", 0x3587CC, 0x18
	.global gSong_075
gSong_075:
	.byte 1, 0, 15, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_075_Track0
	.global gSong_076_Track0
gSong_076_Track0:
	.incbin "baserom.gba", 0x3587F0, 0x18
	.global gSong_076
gSong_076:
	.byte 1, 0, 15, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_076_Track0
	.global gSong_085_Track0
gSong_085_Track0:
	.incbin "baserom.gba", 0x358814, 0x44
	.global gSong_085
gSong_085:
	.byte 1, 0, 13, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_085_Track0
	.global gSong_086_Track0
gSong_086_Track0:
	.incbin "baserom.gba", 0x358864, 0x3C
	.global gSong_086
gSong_086:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_086_Track0
	.global gSong_087_Track0
gSong_087_Track0:
	.incbin "baserom.gba", 0x3588AC, 0x1C
	.global gSong_087
gSong_087:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_087_Track0
	.global gSong_088_Track0
gSong_088_Track0:
	.incbin "baserom.gba", 0x3588D4, 0x1C
	.global gSong_088
gSong_088:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_088_Track0
	.global gSong_089_Track0
gSong_089_Track0:
	.incbin "baserom.gba", 0x3588FC, 0x1C
	.global gSong_089
gSong_089:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_089_Track0
	.global gSong_090_Track0
gSong_090_Track0:
	.incbin "baserom.gba", 0x358924, 0x18
	.global gSong_090
gSong_090:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_090_Track0
	.global gSong_091_Track0
gSong_091_Track0:
	.incbin "baserom.gba", 0x358948, 0x18
	.global gSong_091
gSong_091:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_091_Track0
	.global gSong_092_Track0
gSong_092_Track0:
	.incbin "baserom.gba", 0x35896C, 0x18
	.global gSong_092
gSong_092:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_092_Track0
	.global gSong_093_Track0
gSong_093_Track0:
	.incbin "baserom.gba", 0x358990, 0x18
	.global gSong_093
gSong_093:
	.byte 1, 0, 254, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_093_Track0
	.global gSong_094_Track0
gSong_094_Track0:
	.incbin "baserom.gba", 0x3589B4, 0x18
	.global gSong_094
gSong_094:
	.byte 1, 0, 11, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_094_Track0
	.global gSong_095_Track0
gSong_095_Track0:
	.incbin "baserom.gba", 0x3589D8, 0x18
	.global gSong_095
gSong_095:
	.byte 1, 0, 11, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_095_Track0
	.global gSong_096_Track0
gSong_096_Track0:
	.incbin "baserom.gba", 0x3589FC, 0x18
	.global gSong_096
gSong_096:
	.byte 1, 0, 11, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_096_Track0
	.global gSong_097_Track0
gSong_097_Track0:
	.incbin "baserom.gba", 0x358A20, 0x18
	.global gSong_097
gSong_097:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_097_Track0
	.global gSong_098_Track0
gSong_098_Track0:
	.incbin "baserom.gba", 0x358A44, 0x18
	.global gSong_098
gSong_098:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_098_Track0
	.global gSong_099_Track0
gSong_099_Track0:
	.incbin "baserom.gba", 0x358A68, 0x18
	.global gSong_099
gSong_099:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_099_Track0
	.global gSong_100_Track0
gSong_100_Track0:
	.incbin "baserom.gba", 0x358A8C, 0x30
	.global gSong_100
gSong_100:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_100_Track0
	.global gSong_101_Track0
gSong_101_Track0:
	.incbin "baserom.gba", 0x358AC8, 0x20
	.global gSong_101
gSong_101:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_101_Track0
	.global gSong_102_Track0
gSong_102_Track0:
	.incbin "baserom.gba", 0x358AF4, 0x24
	.global gSong_102
gSong_102:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_102_Track0
	.global gSong_103_Track0
gSong_103_Track0:
	.incbin "baserom.gba", 0x358B24, 0x18
	.global gSong_103
gSong_103:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_103_Track0
	.global gSong_104_Track0
gSong_104_Track0:
	.incbin "baserom.gba", 0x358B48, 0x18
	.global gSong_104
gSong_104:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_104_Track0
	.global gSong_105_Track0
gSong_105_Track0:
	.incbin "baserom.gba", 0x358B6C, 0x18
	.global gSong_105
gSong_105:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_105_Track0
	.global gSong_106_Track0
gSong_106_Track0:
	.incbin "baserom.gba", 0x358B90, 0x1C
	.global gSong_106
gSong_106:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_106_Track0
	.global gSong_107_Track0
gSong_107_Track0:
	.incbin "baserom.gba", 0x358BB8, 0x27
	.global gSong_107_Track1
gSong_107_Track1:
	.incbin "baserom.gba", 0x358BDF, 0x92
	.global gSong_107_Track2
gSong_107_Track2:
	.incbin "baserom.gba", 0x358C71, 0x3A
	.global gSong_107_Track3
gSong_107_Track3:
	.incbin "baserom.gba", 0x358CAB, 0xB9
	.global gSong_107
gSong_107:
	.byte 4, 0, 13, 190	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_107_Track0
	.4byte gSong_107_Track1
	.4byte gSong_107_Track2
	.4byte gSong_107_Track3
	.global gSong_108_Track0
gSong_108_Track0:
	.incbin "baserom.gba", 0x358D7C, 0x18
	.global gSong_108
gSong_108:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_108_Track0
	.global gSong_109_Track0
gSong_109_Track0:
	.incbin "baserom.gba", 0x358DA0, 0x1C
	.global gSong_109
gSong_109:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_109_Track0
	.global gSong_110_Track0
gSong_110_Track0:
	.incbin "baserom.gba", 0x358DC8, 0x1C
	.global gSong_110
gSong_110:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_110_Track0
	.global gSong_111_Track0
gSong_111_Track0:
	.incbin "baserom.gba", 0x358DF0, 0x67
	.global gSong_111_Track1
gSong_111_Track1:
	.incbin "baserom.gba", 0x358E57, 0x3F
	.global gSong_111_Track2
gSong_111_Track2:
	.incbin "baserom.gba", 0x358E96, 0x4E
	.global gSong_111_Track3
gSong_111_Track3:
	.incbin "baserom.gba", 0x358EE4, 0x5B
	.global gSong_111_Track4
gSong_111_Track4:
	.incbin "baserom.gba", 0x358F3F, 0x5D
	.global gSong_111
gSong_111:
	.byte 5, 0, 1, 169	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_111_Track0
	.4byte gSong_111_Track1
	.4byte gSong_111_Track2
	.4byte gSong_111_Track3
	.4byte gSong_111_Track4
	.global gSong_112_Track0
gSong_112_Track0:
	.incbin "baserom.gba", 0x358FB8, 0x39
	.global gSong_112_Track1
gSong_112_Track1:
	.incbin "baserom.gba", 0x358FF1, 0x33
	.global gSong_112_Track2
gSong_112_Track2:
	.incbin "baserom.gba", 0x359024, 0x64
	.global gSong_112_Track3
gSong_112_Track3:
	.incbin "baserom.gba", 0x359088, 0x8D
	.global gSong_112_Track4
gSong_112_Track4:
	.incbin "baserom.gba", 0x359115, 0x4D
	.global gSong_112_Track5
gSong_112_Track5:
	.incbin "baserom.gba", 0x359162, 0x116
	.global gSong_112
gSong_112:
	.byte 6, 0, 1, 205	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_112_Track0
	.4byte gSong_112_Track1
	.4byte gSong_112_Track2
	.4byte gSong_112_Track3
	.4byte gSong_112_Track4
	.4byte gSong_112_Track5
	.global gSong_113_Track0
gSong_113_Track0:
	.incbin "baserom.gba", 0x359298, 0x3B
	.global gSong_113_Track1
gSong_113_Track1:
	.incbin "baserom.gba", 0x3592D3, 0xC6
	.global gSong_113_Track2
gSong_113_Track2:
	.incbin "baserom.gba", 0x359399, 0x16C
	.global gSong_113_Track3
gSong_113_Track3:
	.incbin "baserom.gba", 0x359505, 0xB4
	.global gSong_113_Track4
gSong_113_Track4:
	.incbin "baserom.gba", 0x3595B9, 0xBC
	.global gSong_113_Track5
gSong_113_Track5:
	.incbin "baserom.gba", 0x359675, 0xEB
	.global gSong_113_Track6
gSong_113_Track6:
	.incbin "baserom.gba", 0x359760, 0x100
	.global gSong_113
gSong_113:
	.byte 7, 0, 1, 169	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_113_Track0
	.4byte gSong_113_Track1
	.4byte gSong_113_Track2
	.4byte gSong_113_Track3
	.4byte gSong_113_Track4
	.4byte gSong_113_Track5
	.4byte gSong_113_Track6
	.global gSong_114_Track0
gSong_114_Track0:
	.incbin "baserom.gba", 0x359884, 0x18
	.global gSong_114
gSong_114:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_114_Track0
	.global gSong_115_Track0
gSong_115_Track0:
	.incbin "baserom.gba", 0x3598A8, 0x1C
	.global gSong_115
gSong_115:
	.byte 1, 0, 250, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_115_Track0
	.global gSong_116_Track0
gSong_116_Track0:
	.incbin "baserom.gba", 0x3598D0, 0x20
	.global gSong_116
gSong_116:
	.byte 1, 0, 250, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_116_Track0
	.global gSong_117_Track0
gSong_117_Track0:
	.incbin "baserom.gba", 0x3598FC, 0x1C
	.global gSong_117
gSong_117:
	.byte 1, 0, 251, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_117_Track0
	.global gSong_118_Track0
gSong_118_Track0:
	.incbin "baserom.gba", 0x359924, 0x1C
	.global gSong_118
gSong_118:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_118_Track0
	.global gSong_119_Track0
gSong_119_Track0:
	.incbin "baserom.gba", 0x35994C, 0x18
	.global gSong_119
gSong_119:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_119_Track0
	.global gSong_120_Track0
gSong_120_Track0:
	.incbin "baserom.gba", 0x359970, 0x20
	.global gSong_120
gSong_120:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_120_Track0
	.global gSong_121_Track0
gSong_121_Track0:
	.incbin "baserom.gba", 0x35999C, 0x18
	.global gSong_121
gSong_121:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_121_Track0
	.global gSong_122_Track0
gSong_122_Track0:
	.incbin "baserom.gba", 0x3599C0, 0x20
	.global gSong_122
gSong_122:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_122_Track0
	.global gSong_123_Track0
gSong_123_Track0:
	.incbin "baserom.gba", 0x3599EC, 0x2E
	.global gSong_123_Track1
gSong_123_Track1:
	.incbin "baserom.gba", 0x359A1A, 0x16
	.global gSong_123
gSong_123:
	.byte 2, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_123_Track0
	.4byte gSong_123_Track1
	.global gSong_124_Track0
gSong_124_Track0:
	.incbin "baserom.gba", 0x359A40, 0x24
	.global gSong_124
gSong_124:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_124_Track0
	.global gSong_125_Track0
gSong_125_Track0:
	.incbin "baserom.gba", 0x359A70, 0x18
	.global gSong_125
gSong_125:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_125_Track0
	.global gSong_126_Track0
gSong_126_Track0:
	.incbin "baserom.gba", 0x359A94, 0xFC
	.global gSong_126
gSong_126:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_126_Track0
	.global gSong_127_Track0
gSong_127_Track0:
	.incbin "baserom.gba", 0x359B9C, 0xDC
	.global gSong_127
gSong_127:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_127_Track0
	.global gSong_128_Track0
gSong_128_Track0:
	.incbin "baserom.gba", 0x359C84, 0x18
	.global gSong_128
gSong_128:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_128_Track0
	.global gSong_129_Track0
gSong_129_Track0:
	.incbin "baserom.gba", 0x359CA8, 0x18
	.global gSong_129
gSong_129:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_129_Track0
	.global gSong_130_Track0
gSong_130_Track0:
	.incbin "baserom.gba", 0x359CCC, 0x18
	.global gSong_130
gSong_130:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_130_Track0
	.global gSong_131_Track0
gSong_131_Track0:
	.incbin "baserom.gba", 0x359CF0, 0x3C
	.global gSong_131
gSong_131:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_131_Track0
	.global gSong_132_Track0
gSong_132_Track0:
	.incbin "baserom.gba", 0x359D38, 0x18
	.global gSong_132
gSong_132:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_132_Track0
	.global gSong_133_Track0
gSong_133_Track0:
	.incbin "baserom.gba", 0x359D5C, 0x20
	.global gSong_133
gSong_133:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_133_Track0
	.global gSong_134_Track0
gSong_134_Track0:
	.incbin "baserom.gba", 0x359D88, 0x18
	.global gSong_134
gSong_134:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_134_Track0
	.global gSong_135_Track0
gSong_135_Track0:
	.incbin "baserom.gba", 0x359DAC, 0x1C
	.global gSong_135
gSong_135:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_135_Track0
	.global gSong_136_Track0
gSong_136_Track0:
	.incbin "baserom.gba", 0x359DD4, 0x58
	.global gSong_136
gSong_136:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_136_Track0
	.global gSong_137_Track0
gSong_137_Track0:
	.incbin "baserom.gba", 0x359E38, 0x18
	.global gSong_137
gSong_137:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_137_Track0
	.global gSong_138_Track0
gSong_138_Track0:
	.incbin "baserom.gba", 0x359E5C, 0x20
	.global gSong_138
gSong_138:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_138_Track0
	.global gSong_139_Track0
gSong_139_Track0:
	.incbin "baserom.gba", 0x359E88, 0x18
	.global gSong_139
gSong_139:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_139_Track0
	.global gSong_142_Track0
gSong_142_Track0:
	.incbin "baserom.gba", 0x359EAC, 0x1C
	.global gSong_142
gSong_142:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_142_Track0
	.global gSong_143_Track0
gSong_143_Track0:
	.incbin "baserom.gba", 0x359ED4, 0x18
	.global gSong_143
gSong_143:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_143_Track0
	.global gSong_144_Track0
gSong_144_Track0:
	.incbin "baserom.gba", 0x359EF8, 0x18
	.global gSong_144
gSong_144:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_144_Track0
	.global gSong_145_Track0
gSong_145_Track0:
	.incbin "baserom.gba", 0x359F1C, 0x64
	.global gSong_145
gSong_145:
	.byte 1, 0, 19, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_145_Track0
	.global gSong_146_Track0
gSong_146_Track0:
	.incbin "baserom.gba", 0x359F8C, 0x1C
	.global gSong_146
gSong_146:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_146_Track0
	.global gSong_148_Track0
gSong_148_Track0:
	.incbin "baserom.gba", 0x359FB4, 0x18
	.global gSong_148
gSong_148:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_148_Track0
	.global gSong_149_Track0
gSong_149_Track0:
	.incbin "baserom.gba", 0x359FD8, 0x18
	.global gSong_149
gSong_149:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_149_Track0
	.global gSong_150_Track0
gSong_150_Track0:
	.incbin "baserom.gba", 0x359FFC, 0x18
	.global gSong_150
gSong_150:
	.byte 1, 0, 60, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_150_Track0
	.global gSong_151_Track0
gSong_151_Track0:
	.incbin "baserom.gba", 0x35A020, 0x18
	.global gSong_151
gSong_151:
	.byte 1, 0, 60, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_151_Track0
	.global gSong_152_Track0
gSong_152_Track0:
	.incbin "baserom.gba", 0x35A044, 0x18
	.global gSong_152
gSong_152:
	.byte 1, 0, 60, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_152_Track0
	.global gSong_153_Track0
gSong_153_Track0:
	.incbin "baserom.gba", 0x35A068, 0x18
	.global gSong_153
gSong_153:
	.byte 1, 0, 60, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_153_Track0
	.global gSong_154_Track0
gSong_154_Track0:
	.incbin "baserom.gba", 0x35A08C, 0x18
	.global gSong_154
gSong_154:
	.byte 1, 0, 60, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_154_Track0
	.global gSong_155_Track0
gSong_155_Track0:
	.incbin "baserom.gba", 0x35A0B0, 0x18
	.global gSong_155
gSong_155:
	.byte 1, 0, 60, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_155_Track0
	.global gSong_156_Track0
gSong_156_Track0:
	.incbin "baserom.gba", 0x35A0D4, 0x18
	.global gSong_156
gSong_156:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_156_Track0
	.global gSong_157_Track0
gSong_157_Track0:
	.incbin "baserom.gba", 0x35A0F8, 0x18
	.global gSong_157
gSong_157:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_157_Track0
	.global gSong_158_Track0
gSong_158_Track0:
	.incbin "baserom.gba", 0x35A11C, 0x18
	.global gSong_158
gSong_158:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_158_Track0
	.global gSong_159_Track0
gSong_159_Track0:
	.incbin "baserom.gba", 0x35A140, 0x18
	.global gSong_159
gSong_159:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_159_Track0
	.global gSong_160_Track0
gSong_160_Track0:
	.incbin "baserom.gba", 0x35A164, 0x18
	.global gSong_160
gSong_160:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_160_Track0
	.global gSong_161_Track0
gSong_161_Track0:
	.incbin "baserom.gba", 0x35A188, 0x18
	.global gSong_161
gSong_161:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_161_Track0
	.global gSong_162_Track0
gSong_162_Track0:
	.incbin "baserom.gba", 0x35A1AC, 0x3B
	.global gSong_162_Track1
gSong_162_Track1:
	.incbin "baserom.gba", 0x35A1E7, 0x52
	.global gSong_162_Track2
gSong_162_Track2:
	.incbin "baserom.gba", 0x35A239, 0x7B
	.global gSong_162
gSong_162:
	.byte 3, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_162_Track0
	.4byte gSong_162_Track1
	.4byte gSong_162_Track2
	.global gSong_163_Track0
gSong_163_Track0:
	.incbin "baserom.gba", 0x35A2C8, 0xE3
	.global gSong_163_Track1
gSong_163_Track1:
	.incbin "baserom.gba", 0x35A3AB, 0xBE
	.global gSong_163_Track2
gSong_163_Track2:
	.incbin "baserom.gba", 0x35A469, 0xC2
	.global gSong_163_Track3
gSong_163_Track3:
	.incbin "baserom.gba", 0x35A52B, 0xB5
	.global gSong_163
gSong_163:
	.byte 4, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_163_Track0
	.4byte gSong_163_Track1
	.4byte gSong_163_Track2
	.4byte gSong_163_Track3
	.global gSong_164_Track0
gSong_164_Track0:
	.incbin "baserom.gba", 0x35A5F8, 0x73
	.global gSong_164_Track1
gSong_164_Track1:
	.incbin "baserom.gba", 0x35A66B, 0x11A
	.global gSong_164_Track2
gSong_164_Track2:
	.incbin "baserom.gba", 0x35A785, 0x8B
	.global gSong_164_Track3
gSong_164_Track3:
	.incbin "baserom.gba", 0x35A810, 0x2C
	.global gSong_164
gSong_164:
	.byte 4, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_164_Track0
	.4byte gSong_164_Track1
	.4byte gSong_164_Track2
	.4byte gSong_164_Track3
	.global gSong_165_Track0
gSong_165_Track0:
	.incbin "baserom.gba", 0x35A854, 0x324
	.global gSong_165
gSong_165:
	.byte 1, 0, 1, 142	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_165_Track0
	.global gSong_166_Track0
gSong_166_Track0:
	.incbin "baserom.gba", 0x35AB84, 0x24
	.global gSong_166
gSong_166:
	.byte 1, 0, 11, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_166_Track0
	.global gSong_167_Track0
gSong_167_Track0:
	.incbin "baserom.gba", 0x35ABB4, 0x18
	.global gSong_167
gSong_167:
	.byte 1, 0, 11, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_167_Track0
	.global gSong_168_Track0
gSong_168_Track0:
	.incbin "baserom.gba", 0x35ABD8, 0x3D
	.global gSong_168_Track1
gSong_168_Track1:
	.incbin "baserom.gba", 0x35AC15, 0x17
	.global gSong_168
gSong_168:
	.byte 2, 0, 11, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_168_Track0
	.4byte gSong_168_Track1
	.global gSong_172_Track0
gSong_172_Track0:
	.incbin "baserom.gba", 0x35AC3C, 0x18
	.global gSong_172
gSong_172:
	.byte 1, 0, 13, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_172_Track0
	.global gSong_173_Track0
gSong_173_Track0:
	.incbin "baserom.gba", 0x35AC60, 0x18
	.global gSong_173
gSong_173:
	.byte 1, 0, 12, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_173_Track0
	.global gSong_174_Track0
gSong_174_Track0:
	.incbin "baserom.gba", 0x35AC84, 0x20
	.global gSong_174
gSong_174:
	.byte 1, 0, 13, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_174_Track0
	.global gSong_180_Track0
gSong_180_Track0:
	.incbin "baserom.gba", 0x35ACB0, 0x20
	.global gSong_180
gSong_180:
	.byte 1, 0, 13, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_180_Track0
	.global gSong_181_Track0
gSong_181_Track0:
	.incbin "baserom.gba", 0x35ACDC, 0x18
	.global gSong_181
gSong_181:
	.byte 1, 0, 13, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_181_Track0
	.global gSong_182_Track0
gSong_182_Track0:
	.incbin "baserom.gba", 0x35AD00, 0x16
	.global gSong_182_Track1
gSong_182_Track1:
	.incbin "baserom.gba", 0x35AD16, 0x16
	.global gSong_182
gSong_182:
	.byte 2, 0, 13, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_182_Track0
	.4byte gSong_182_Track1
	.global gSong_183_Track0
gSong_183_Track0:
	.incbin "baserom.gba", 0x35AD3C, 0x1C
	.global gSong_183
gSong_183:
	.byte 1, 0, 101, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_183_Track0
	.global gSong_185_Track0
gSong_185_Track0:
	.incbin "baserom.gba", 0x35AD64, 0x18
	.global gSong_185
gSong_185:
	.byte 1, 0, 11, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_185_Track0
	.global gSong_186_Track0
gSong_186_Track0:
	.incbin "baserom.gba", 0x35AD88, 0x18
	.global gSong_186
gSong_186:
	.byte 1, 0, 11, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_186_Track0
	.global gSong_187_Track0
gSong_187_Track0:
	.incbin "baserom.gba", 0x35ADAC, 0x18
	.global gSong_187
gSong_187:
	.byte 1, 0, 11, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_187_Track0
	.global gSong_189_Track0
gSong_189_Track0:
	.incbin "baserom.gba", 0x35ADD0, 0x18
	.global gSong_189
gSong_189:
	.byte 1, 0, 11, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_189_Track0
	.global gSong_190_Track0
gSong_190_Track0:
	.incbin "baserom.gba", 0x35ADF4, 0x18
	.global gSong_190
gSong_190:
	.byte 1, 0, 10, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_190_Track0
	.global gSong_191_Track0
gSong_191_Track0:
	.incbin "baserom.gba", 0x35AE18, 0x1C
	.global gSong_191
gSong_191:
	.byte 1, 0, 11, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_191_Track0
	.global gSong_192_Track0
gSong_192_Track0:
	.incbin "baserom.gba", 0x35AE40, 0x17
	.global gSong_192_Track1
gSong_192_Track1:
	.incbin "baserom.gba", 0x35AE57, 0x15
	.global gSong_192
gSong_192:
	.byte 2, 0, 11, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_192_Track0
	.4byte gSong_192_Track1
	.global gSong_194_Track0
gSong_194_Track0:
	.incbin "baserom.gba", 0x35AE7C, 0x20
	.global gSong_194
gSong_194:
	.byte 1, 0, 12, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBB50	@ voice group
	.4byte gSong_194_Track0
	.global gSong_195_Track0
gSong_195_Track0:
	.incbin "baserom.gba", 0x35AEA8, 0x22
	.global gSong_195_Track1
gSong_195_Track1:
	.incbin "baserom.gba", 0x35AECA, 0x16
	.global gSong_195
gSong_195:
	.byte 2, 0, 13, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_195_Track0
	.4byte gSong_195_Track1
	.global gSong_196_Track0
gSong_196_Track0:
	.incbin "baserom.gba", 0x35AEF0, 0x111
	.global gSong_196_Track1
gSong_196_Track1:
	.incbin "baserom.gba", 0x35B001, 0xDB
	.global gSong_196
gSong_196:
	.byte 2, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_196_Track0
	.4byte gSong_196_Track1
	.global gSong_197_Track0
gSong_197_Track0:
	.incbin "baserom.gba", 0x35B0EC, 0xBD
	.global gSong_197_Track1
gSong_197_Track1:
	.incbin "baserom.gba", 0x35B1A9, 0x6E
	.global gSong_197_Track2
gSong_197_Track2:
	.incbin "baserom.gba", 0x35B217, 0x142
	.global gSong_197_Track3
gSong_197_Track3:
	.incbin "baserom.gba", 0x35B359, 0x1A8
	.global gSong_197_Track4
gSong_197_Track4:
	.incbin "baserom.gba", 0x35B501, 0x100
	.global gSong_197_Track5
gSong_197_Track5:
	.incbin "baserom.gba", 0x35B601, 0x174
	.global gSong_197_Track6
gSong_197_Track6:
	.incbin "baserom.gba", 0x35B775, 0x165
	.global gSong_197_Track7
gSong_197_Track7:
	.incbin "baserom.gba", 0x35B8DA, 0xA1
	.global gSong_197_Track8
gSong_197_Track8:
	.incbin "baserom.gba", 0x35B97B, 0x9CD
	.global gSong_197
gSong_197:
	.byte 9, 0, 1, 204	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_197_Track0
	.4byte gSong_197_Track1
	.4byte gSong_197_Track2
	.4byte gSong_197_Track3
	.4byte gSong_197_Track4
	.4byte gSong_197_Track5
	.4byte gSong_197_Track6
	.4byte gSong_197_Track7
	.4byte gSong_197_Track8
	.global gSong_198_Track0
gSong_198_Track0:
	.incbin "baserom.gba", 0x35C374, 0x1C
	.global gSong_198
gSong_198:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_198_Track0
	.global gSong_199_Track0
gSong_199_Track0:
	.incbin "baserom.gba", 0x35C39C, 0x1C
	.global gSong_199
gSong_199:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_199_Track0
	.global gSong_200_Track0
gSong_200_Track0:
	.incbin "baserom.gba", 0x35C3C4, 0x18
	.global gSong_200
gSong_200:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_200_Track0
	.global gSong_201_Track0
gSong_201_Track0:
	.incbin "baserom.gba", 0x35C3E8, 0x1C
	.global gSong_201
gSong_201:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_201_Track0
	.global gSong_202_Track0
gSong_202_Track0:
	.incbin "baserom.gba", 0x35C410, 0x1C
	.global gSong_202
gSong_202:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_202_Track0
	.global gSong_203_Track0
gSong_203_Track0:
	.incbin "baserom.gba", 0x35C438, 0x1C
	.global gSong_203
gSong_203:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_203_Track0
	.global gSong_204_Track0
gSong_204_Track0:
	.incbin "baserom.gba", 0x35C460, 0x1C
	.global gSong_204
gSong_204:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_204_Track0
	.global gSong_205_Track0
gSong_205_Track0:
	.incbin "baserom.gba", 0x35C488, 0x1C
	.global gSong_205
gSong_205:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_205_Track0
	.global gSong_206_Track0
gSong_206_Track0:
	.incbin "baserom.gba", 0x35C4B0, 0x18
	.global gSong_206
gSong_206:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_206_Track0
	.global gSong_207_Track0
gSong_207_Track0:
	.incbin "baserom.gba", 0x35C4D4, 0x1C
	.global gSong_207
gSong_207:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_207_Track0
	.global gSong_208_Track0
gSong_208_Track0:
	.incbin "baserom.gba", 0x35C4FC, 0x20
	.global gSong_208
gSong_208:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_208_Track0
	.global gSong_209_Track0
gSong_209_Track0:
	.incbin "baserom.gba", 0x35C528, 0x1C
	.global gSong_209
gSong_209:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_209_Track0
	.global gSong_210_Track0
gSong_210_Track0:
	.incbin "baserom.gba", 0x35C550, 0x18
	.global gSong_210
gSong_210:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_210_Track0
	.global gSong_211_Track0
gSong_211_Track0:
	.incbin "baserom.gba", 0x35C574, 0x1C
	.global gSong_211
gSong_211:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_211_Track0
	.global gSong_212_Track0
gSong_212_Track0:
	.incbin "baserom.gba", 0x35C59C, 0x1C
	.global gSong_212
gSong_212:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_212_Track0
	.global gSong_213_Track0
gSong_213_Track0:
	.incbin "baserom.gba", 0x35C5C4, 0x1C
	.global gSong_213
gSong_213:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_213_Track0
	.global gSong_214_Track0
gSong_214_Track0:
	.incbin "baserom.gba", 0x35C5EC, 0x18
	.global gSong_214
gSong_214:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_214_Track0
	.global gSong_215_Track0
gSong_215_Track0:
	.incbin "baserom.gba", 0x35C610, 0x20
	.global gSong_215
gSong_215:
	.byte 1, 0, 1, 128	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_215_Track0
	.global gSong_216_Track0
gSong_216_Track0:
	.incbin "baserom.gba", 0x35C63C, 0x154
	.global gSong_216_Track1
gSong_216_Track1:
	.incbin "baserom.gba", 0x35C790, 0x9D
	.global gSong_216_Track2
gSong_216_Track2:
	.incbin "baserom.gba", 0x35C82D, 0x73
	.global gSong_216
gSong_216:
	.byte 3, 0, 1, 172	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_216_Track0
	.4byte gSong_216_Track1
	.4byte gSong_216_Track2
	.global gSong_217_Track0
gSong_217_Track0:
	.incbin "baserom.gba", 0x35C8B4, 0x156
	.global gSong_217_Track1
gSong_217_Track1:
	.incbin "baserom.gba", 0x35CA0A, 0x9D
	.global gSong_217_Track2
gSong_217_Track2:
	.incbin "baserom.gba", 0x35CAA7, 0x71
	.global gSong_217
gSong_217:
	.byte 3, 0, 1, 172	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_217_Track0
	.4byte gSong_217_Track1
	.4byte gSong_217_Track2
	.global gSong_218_Track0
gSong_218_Track0:
	.incbin "baserom.gba", 0x35CB2C, 0x148
	.global gSong_218_Track1
gSong_218_Track1:
	.incbin "baserom.gba", 0x35CC74, 0xBA
	.global gSong_218_Track2
gSong_218_Track2:
	.incbin "baserom.gba", 0x35CD2E, 0xBD
	.global gSong_218_Track3
gSong_218_Track3:
	.incbin "baserom.gba", 0x35CDEB, 0xD9
	.global gSong_218
gSong_218:
	.byte 4, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_218_Track0
	.4byte gSong_218_Track1
	.4byte gSong_218_Track2
	.4byte gSong_218_Track3
	.global gSong_219_Track0
gSong_219_Track0:
	.incbin "baserom.gba", 0x35CEDC, 0x8B
	.global gSong_219_Track1
gSong_219_Track1:
	.incbin "baserom.gba", 0x35CF67, 0x173
	.global gSong_219_Track2
gSong_219_Track2:
	.incbin "baserom.gba", 0x35D0DA, 0xB6
	.global gSong_219
gSong_219:
	.byte 3, 0, 1, 184	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_219_Track0
	.4byte gSong_219_Track1
	.4byte gSong_219_Track2
	.global gSong_220_Track0
gSong_220_Track0:
	.incbin "baserom.gba", 0x35D1A4, 0x18
	.global gSong_220
gSong_220:
	.byte 1, 0, 82, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_220_Track0
	.global gSong_221_Track0
gSong_221_Track0:
	.incbin "baserom.gba", 0x35D1C8, 0x18
	.global gSong_221
gSong_221:
	.byte 1, 0, 82, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_221_Track0
	.global gSong_222_Track0
gSong_222_Track0:
	.incbin "baserom.gba", 0x35D1EC, 0x20
	.global gSong_222
gSong_222:
	.byte 1, 0, 13, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_222_Track0
	.global gSong_223_Track0
gSong_223_Track0:
	.incbin "baserom.gba", 0x35D218, 0x1C
	.global gSong_223
gSong_223:
	.byte 1, 0, 12, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_223_Track0
	.global gSong_224_Track0
gSong_224_Track0:
	.incbin "baserom.gba", 0x35D240, 0x24
	.global gSong_224
gSong_224:
	.byte 1, 0, 14, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_224_Track0
	.global gSong_225_Track0
gSong_225_Track0:
	.incbin "baserom.gba", 0x35D270, 0x24
	.global gSong_225
gSong_225:
	.byte 1, 0, 14, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_225_Track0
	.global gSong_226_Track0
gSong_226_Track0:
	.incbin "baserom.gba", 0x35D2A0, 0x3C
	.global gSong_226
gSong_226:
	.byte 1, 0, 14, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_226_Track0
	.global gSong_227_Track0
gSong_227_Track0:
	.incbin "baserom.gba", 0x35D2E8, 0x18
	.global gSong_227
gSong_227:
	.byte 1, 0, 50, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_227_Track0
	.global gSong_228_Track0
gSong_228_Track0:
	.incbin "baserom.gba", 0x35D30C, 0x4F
	.global gSong_228_Track1
gSong_228_Track1:
	.incbin "baserom.gba", 0x35D35B, 0x15
	.global gSong_228
gSong_228:
	.byte 2, 0, 150, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_228_Track0
	.4byte gSong_228_Track1
	.global gSong_229_Track0
gSong_229_Track0:
	.incbin "baserom.gba", 0x35D380, 0x1C
	.global gSong_229
gSong_229:
	.byte 1, 0, 150, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_229_Track0
	.global gSong_230_Track0
gSong_230_Track0:
	.incbin "baserom.gba", 0x35D3A8, 0x43
	.global gSong_230_Track1
gSong_230_Track1:
	.incbin "baserom.gba", 0x35D3EB, 0x9D
	.global gSong_230
gSong_230:
	.byte 2, 0, 15, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_230_Track0
	.4byte gSong_230_Track1
	.global gSong_231_Track0
gSong_231_Track0:
	.incbin "baserom.gba", 0x35D498, 0x1D
	.global gSong_231_Track1
gSong_231_Track1:
	.incbin "baserom.gba", 0x35D4B5, 0x17
	.global gSong_231
gSong_231:
	.byte 2, 0, 16, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_231_Track0
	.4byte gSong_231_Track1
	.global gSong_232_Track0
gSong_232_Track0:
	.incbin "baserom.gba", 0x35D4DC, 0x74
	.global gSong_232_Track1
gSong_232_Track1:
	.incbin "baserom.gba", 0x35D550, 0x74
	.global gSong_232
gSong_232:
	.byte 2, 0, 17, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_232_Track0
	.4byte gSong_232_Track1
	.global gSong_233_Track0
gSong_233_Track0:
	.incbin "baserom.gba", 0x35D5D4, 0x18
	.global gSong_233
gSong_233:
	.byte 1, 0, 16, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_233_Track0
	.global gSong_240_Track0
gSong_240_Track0:
	.incbin "baserom.gba", 0x35D5F8, 0x18
	.global gSong_240
gSong_240:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_240_Track0
	.global gSong_241_Track0
gSong_241_Track0:
	.incbin "baserom.gba", 0x35D61C, 0x18
	.global gSong_241
gSong_241:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_241_Track0
	.global gSong_242_Track0
gSong_242_Track0:
	.incbin "baserom.gba", 0x35D640, 0x18
	.global gSong_242
gSong_242:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_242_Track0
	.global gSong_243_Track0
gSong_243_Track0:
	.incbin "baserom.gba", 0x35D664, 0x18
	.global gSong_243
gSong_243:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_243_Track0
	.global gSong_244_Track0
gSong_244_Track0:
	.incbin "baserom.gba", 0x35D688, 0x1C
	.global gSong_244_Track1
gSong_244_Track1:
	.incbin "baserom.gba", 0x35D6A4, 0x1C
	.global gSong_244
gSong_244:
	.byte 2, 0, 102, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_244_Track0
	.4byte gSong_244_Track1
	.global gSong_245_Track0
gSong_245_Track0:
	.incbin "baserom.gba", 0x35D6D0, 0x18
	.global gSong_245
gSong_245:
	.byte 1, 0, 102, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_245_Track0
	.global gSong_246_Track0
gSong_246_Track0:
	.incbin "baserom.gba", 0x35D6F4, 0x1C
	.global gSong_246
gSong_246:
	.byte 1, 0, 103, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_246_Track0
	.global gSong_247_Track0
gSong_247_Track0:
	.incbin "baserom.gba", 0x35D71C, 0x38
	.global gSong_247
gSong_247:
	.byte 1, 0, 102, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_247_Track0
	.global gSong_248_Track0
gSong_248_Track0:
	.incbin "baserom.gba", 0x35D760, 0x18
	.global gSong_248_Track1
gSong_248_Track1:
	.incbin "baserom.gba", 0x35D778, 0x24
	.global gSong_248
gSong_248:
	.byte 2, 0, 102, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_248_Track0
	.4byte gSong_248_Track1
	.global gSong_249_Track0
gSong_249_Track0:
	.incbin "baserom.gba", 0x35D7AC, 0x18
	.global gSong_249
gSong_249:
	.byte 1, 0, 103, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_249_Track0
	.global gSong_250_Track0
gSong_250_Track0:
	.incbin "baserom.gba", 0x35D7D0, 0x1A
	.global gSong_250_Track1
gSong_250_Track1:
	.incbin "baserom.gba", 0x35D7EA, 0x16
	.global gSong_250
gSong_250:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_250_Track0
	.4byte gSong_250_Track1
	.global gSong_251_Track0
gSong_251_Track0:
	.incbin "baserom.gba", 0x35D810, 0x1A
	.global gSong_251_Track1
gSong_251_Track1:
	.incbin "baserom.gba", 0x35D82A, 0x16
	.global gSong_251
gSong_251:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_251_Track0
	.4byte gSong_251_Track1
	.global gSong_252_Track0
gSong_252_Track0:
	.incbin "baserom.gba", 0x35D850, 0x1A
	.global gSong_252_Track1
gSong_252_Track1:
	.incbin "baserom.gba", 0x35D86A, 0x16
	.global gSong_252
gSong_252:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_252_Track0
	.4byte gSong_252_Track1
	.global gSong_253_Track0
gSong_253_Track0:
	.incbin "baserom.gba", 0x35D890, 0x1A
	.global gSong_253_Track1
gSong_253_Track1:
	.incbin "baserom.gba", 0x35D8AA, 0x1A
	.global gSong_253
gSong_253:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_253_Track0
	.4byte gSong_253_Track1
	.global gSong_254_Track0
gSong_254_Track0:
	.incbin "baserom.gba", 0x35D8D4, 0x1A
	.global gSong_254_Track1
gSong_254_Track1:
	.incbin "baserom.gba", 0x35D8EE, 0x1A
	.global gSong_254
gSong_254:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_254_Track0
	.4byte gSong_254_Track1
	.global gSong_255_Track0
gSong_255_Track0:
	.incbin "baserom.gba", 0x35D918, 0x1A
	.global gSong_255_Track1
gSong_255_Track1:
	.incbin "baserom.gba", 0x35D932, 0x1A
	.global gSong_255
gSong_255:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_255_Track0
	.4byte gSong_255_Track1
	.global gSong_256_Track0
gSong_256_Track0:
	.incbin "baserom.gba", 0x35D95C, 0x1A
	.global gSong_256_Track1
gSong_256_Track1:
	.incbin "baserom.gba", 0x35D976, 0x26
	.global gSong_256
gSong_256:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_256_Track0
	.4byte gSong_256_Track1
	.global gSong_257_Track0
gSong_257_Track0:
	.incbin "baserom.gba", 0x35D9AC, 0x1A
	.global gSong_257_Track1
gSong_257_Track1:
	.incbin "baserom.gba", 0x35D9C6, 0x16
	.global gSong_257
gSong_257:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_257_Track0
	.4byte gSong_257_Track1
	.global gSong_258_Track0
gSong_258_Track0:
	.incbin "baserom.gba", 0x35D9EC, 0x1A
	.global gSong_258_Track1
gSong_258_Track1:
	.incbin "baserom.gba", 0x35DA06, 0x16
	.global gSong_258
gSong_258:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_258_Track0
	.4byte gSong_258_Track1
	.global gSong_259_Track0
gSong_259_Track0:
	.incbin "baserom.gba", 0x35DA2C, 0x1A
	.global gSong_259_Track1
gSong_259_Track1:
	.incbin "baserom.gba", 0x35DA46, 0x16
	.global gSong_259
gSong_259:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_259_Track0
	.4byte gSong_259_Track1
	.global gSong_260_Track0
gSong_260_Track0:
	.incbin "baserom.gba", 0x35DA6C, 0x1A
	.global gSong_260_Track1
gSong_260_Track1:
	.incbin "baserom.gba", 0x35DA86, 0x1A
	.global gSong_260
gSong_260:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_260_Track0
	.4byte gSong_260_Track1
	.global gSong_261_Track0
gSong_261_Track0:
	.incbin "baserom.gba", 0x35DAB0, 0x1A
	.global gSong_261_Track1
gSong_261_Track1:
	.incbin "baserom.gba", 0x35DACA, 0x1A
	.global gSong_261
gSong_261:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_261_Track0
	.4byte gSong_261_Track1
	.global gSong_262_Track0
gSong_262_Track0:
	.incbin "baserom.gba", 0x35DAF4, 0x1A
	.global gSong_262_Track1
gSong_262_Track1:
	.incbin "baserom.gba", 0x35DB0E, 0x1A
	.global gSong_262
gSong_262:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_262_Track0
	.4byte gSong_262_Track1
	.global gSong_263_Track0
gSong_263_Track0:
	.incbin "baserom.gba", 0x35DB38, 0x1A
	.global gSong_263_Track1
gSong_263_Track1:
	.incbin "baserom.gba", 0x35DB52, 0x26
	.global gSong_263
gSong_263:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_263_Track0
	.4byte gSong_263_Track1
	.global gSong_264_Track0
gSong_264_Track0:
	.incbin "baserom.gba", 0x35DB88, 0x1A
	.global gSong_264_Track1
gSong_264_Track1:
	.incbin "baserom.gba", 0x35DBA2, 0x16
	.global gSong_264
gSong_264:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_264_Track0
	.4byte gSong_264_Track1
	.global gSong_265_Track0
gSong_265_Track0:
	.incbin "baserom.gba", 0x35DBC8, 0x1A
	.global gSong_265_Track1
gSong_265_Track1:
	.incbin "baserom.gba", 0x35DBE2, 0x16
	.global gSong_265
gSong_265:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_265_Track0
	.4byte gSong_265_Track1
	.global gSong_266_Track0
gSong_266_Track0:
	.incbin "baserom.gba", 0x35DC08, 0x1A
	.global gSong_266_Track1
gSong_266_Track1:
	.incbin "baserom.gba", 0x35DC22, 0x1A
	.global gSong_266
gSong_266:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_266_Track0
	.4byte gSong_266_Track1
	.global gSong_267_Track0
gSong_267_Track0:
	.incbin "baserom.gba", 0x35DC4C, 0x1A
	.global gSong_267_Track1
gSong_267_Track1:
	.incbin "baserom.gba", 0x35DC66, 0x1A
	.global gSong_267
gSong_267:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_267_Track0
	.4byte gSong_267_Track1
	.global gSong_268_Track0
gSong_268_Track0:
	.incbin "baserom.gba", 0x35DC90, 0x1A
	.global gSong_268_Track1
gSong_268_Track1:
	.incbin "baserom.gba", 0x35DCAA, 0x1E
	.global gSong_268
gSong_268:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_268_Track0
	.4byte gSong_268_Track1
	.global gSong_269_Track0
gSong_269_Track0:
	.incbin "baserom.gba", 0x35DCD8, 0x1A
	.global gSong_269_Track1
gSong_269_Track1:
	.incbin "baserom.gba", 0x35DCF2, 0x1A
	.global gSong_269
gSong_269:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_269_Track0
	.4byte gSong_269_Track1
	.global gSong_270_Track0
gSong_270_Track0:
	.incbin "baserom.gba", 0x35DD1C, 0x1A
	.global gSong_270_Track1
gSong_270_Track1:
	.incbin "baserom.gba", 0x35DD36, 0x26
	.global gSong_270
gSong_270:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_270_Track0
	.4byte gSong_270_Track1
	.global gSong_271_Track0
gSong_271_Track0:
	.incbin "baserom.gba", 0x35DD6C, 0x1A
	.global gSong_271_Track1
gSong_271_Track1:
	.incbin "baserom.gba", 0x35DD86, 0x16
	.global gSong_271
gSong_271:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_271_Track0
	.4byte gSong_271_Track1
	.global gSong_272_Track0
gSong_272_Track0:
	.incbin "baserom.gba", 0x35DDAC, 0x1A
	.global gSong_272_Track1
gSong_272_Track1:
	.incbin "baserom.gba", 0x35DDC6, 0x16
	.global gSong_272
gSong_272:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_272_Track0
	.4byte gSong_272_Track1
	.global gSong_273_Track0
gSong_273_Track0:
	.incbin "baserom.gba", 0x35DDEC, 0x1A
	.global gSong_273_Track1
gSong_273_Track1:
	.incbin "baserom.gba", 0x35DE06, 0x1E
	.global gSong_273
gSong_273:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_273_Track0
	.4byte gSong_273_Track1
	.global gSong_274_Track0
gSong_274_Track0:
	.incbin "baserom.gba", 0x35DE34, 0x1A
	.global gSong_274_Track1
gSong_274_Track1:
	.incbin "baserom.gba", 0x35DE4E, 0x1E
	.global gSong_274
gSong_274:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_274_Track0
	.4byte gSong_274_Track1
	.global gSong_275_Track0
gSong_275_Track0:
	.incbin "baserom.gba", 0x35DE7C, 0x1A
	.global gSong_275_Track1
gSong_275_Track1:
	.incbin "baserom.gba", 0x35DE96, 0x22
	.global gSong_275
gSong_275:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_275_Track0
	.4byte gSong_275_Track1
	.global gSong_276_Track0
gSong_276_Track0:
	.incbin "baserom.gba", 0x35DEC8, 0x1A
	.global gSong_276_Track1
gSong_276_Track1:
	.incbin "baserom.gba", 0x35DEE2, 0x22
	.global gSong_276
gSong_276:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_276_Track0
	.4byte gSong_276_Track1
	.global gSong_277_Track0
gSong_277_Track0:
	.incbin "baserom.gba", 0x35DF14, 0x1A
	.global gSong_277_Track1
gSong_277_Track1:
	.incbin "baserom.gba", 0x35DF2E, 0x2A
	.global gSong_277
gSong_277:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_277_Track0
	.4byte gSong_277_Track1
	.global gSong_278_Track0
gSong_278_Track0:
	.incbin "baserom.gba", 0x35DF68, 0x16
	.global gSong_278_Track1
gSong_278_Track1:
	.incbin "baserom.gba", 0x35DF7E, 0x22
	.global gSong_278
gSong_278:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_278_Track0
	.4byte gSong_278_Track1
	.global gSong_279_Track0
gSong_279_Track0:
	.incbin "baserom.gba", 0x35DFB0, 0x16
	.global gSong_279_Track1
gSong_279_Track1:
	.incbin "baserom.gba", 0x35DFC6, 0x26
	.global gSong_279
gSong_279:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_279_Track0
	.4byte gSong_279_Track1
	.global gSong_280_Track0
gSong_280_Track0:
	.incbin "baserom.gba", 0x35DFFC, 0x17
	.global gSong_280_Track1
gSong_280_Track1:
	.incbin "baserom.gba", 0x35E013, 0x25
	.global gSong_280
gSong_280:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_280_Track0
	.4byte gSong_280_Track1
	.global gSong_281_Track0
gSong_281_Track0:
	.incbin "baserom.gba", 0x35E048, 0x16
	.global gSong_281_Track1
gSong_281_Track1:
	.incbin "baserom.gba", 0x35E05E, 0x26
	.global gSong_281
gSong_281:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_281_Track0
	.4byte gSong_281_Track1
	.global gSong_282_Track0
gSong_282_Track0:
	.incbin "baserom.gba", 0x35E094, 0x16
	.global gSong_282_Track1
gSong_282_Track1:
	.incbin "baserom.gba", 0x35E0AA, 0x26
	.global gSong_282
gSong_282:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_282_Track0
	.4byte gSong_282_Track1
	.global gSong_283_Track0
gSong_283_Track0:
	.incbin "baserom.gba", 0x35E0E0, 0x16
	.global gSong_283_Track1
gSong_283_Track1:
	.incbin "baserom.gba", 0x35E0F6, 0x26
	.global gSong_283
gSong_283:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_283_Track0
	.4byte gSong_283_Track1
	.global gSong_284_Track0
gSong_284_Track0:
	.incbin "baserom.gba", 0x35E12C, 0x1A
	.global gSong_284_Track1
gSong_284_Track1:
	.incbin "baserom.gba", 0x35E146, 0x26
	.global gSong_284
gSong_284:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_284_Track0
	.4byte gSong_284_Track1
	.global gSong_285_Track0
gSong_285_Track0:
	.incbin "baserom.gba", 0x35E17C, 0x1A
	.global gSong_285_Track1
gSong_285_Track1:
	.incbin "baserom.gba", 0x35E196, 0x16
	.global gSong_285
gSong_285:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_285_Track0
	.4byte gSong_285_Track1
	.global gSong_286_Track0
gSong_286_Track0:
	.incbin "baserom.gba", 0x35E1BC, 0x1A
	.global gSong_286_Track1
gSong_286_Track1:
	.incbin "baserom.gba", 0x35E1D6, 0x16
	.global gSong_286
gSong_286:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_286_Track0
	.4byte gSong_286_Track1
	.global gSong_287_Track0
gSong_287_Track0:
	.incbin "baserom.gba", 0x35E1FC, 0x1A
	.global gSong_287_Track1
gSong_287_Track1:
	.incbin "baserom.gba", 0x35E216, 0x16
	.global gSong_287
gSong_287:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_287_Track0
	.4byte gSong_287_Track1
	.global gSong_288_Track0
gSong_288_Track0:
	.incbin "baserom.gba", 0x35E23C, 0x1A
	.global gSong_288_Track1
gSong_288_Track1:
	.incbin "baserom.gba", 0x35E256, 0x16
	.global gSong_288
gSong_288:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_288_Track0
	.4byte gSong_288_Track1
	.global gSong_289_Track0
gSong_289_Track0:
	.incbin "baserom.gba", 0x35E27C, 0x1A
	.global gSong_289_Track1
gSong_289_Track1:
	.incbin "baserom.gba", 0x35E296, 0x16
	.global gSong_289
gSong_289:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_289_Track0
	.4byte gSong_289_Track1
	.global gSong_290_Track0
gSong_290_Track0:
	.incbin "baserom.gba", 0x35E2BC, 0x1A
	.global gSong_290_Track1
gSong_290_Track1:
	.incbin "baserom.gba", 0x35E2D6, 0x16
	.global gSong_290
gSong_290:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_290_Track0
	.4byte gSong_290_Track1
	.global gSong_291_Track0
gSong_291_Track0:
	.incbin "baserom.gba", 0x35E2FC, 0x1A
	.global gSong_291_Track1
gSong_291_Track1:
	.incbin "baserom.gba", 0x35E316, 0x16
	.global gSong_291
gSong_291:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_291_Track0
	.4byte gSong_291_Track1
	.global gSong_292_Track0
gSong_292_Track0:
	.incbin "baserom.gba", 0x35E33C, 0x1A
	.global gSong_292_Track1
gSong_292_Track1:
	.incbin "baserom.gba", 0x35E356, 0x16
	.global gSong_292
gSong_292:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_292_Track0
	.4byte gSong_292_Track1
	.global gSong_293_Track0
gSong_293_Track0:
	.incbin "baserom.gba", 0x35E37C, 0x1A
	.global gSong_293_Track1
gSong_293_Track1:
	.incbin "baserom.gba", 0x35E396, 0x16
	.global gSong_293
gSong_293:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_293_Track0
	.4byte gSong_293_Track1
	.global gSong_294_Track0
gSong_294_Track0:
	.incbin "baserom.gba", 0x35E3BC, 0x1A
	.global gSong_294_Track1
gSong_294_Track1:
	.incbin "baserom.gba", 0x35E3D6, 0x1E
	.global gSong_294
gSong_294:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_294_Track0
	.4byte gSong_294_Track1
	.global gSong_295_Track0
gSong_295_Track0:
	.incbin "baserom.gba", 0x35E404, 0x1A
	.global gSong_295_Track1
gSong_295_Track1:
	.incbin "baserom.gba", 0x35E41E, 0x1E
	.global gSong_295
gSong_295:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_295_Track0
	.4byte gSong_295_Track1
	.global gSong_296_Track0
gSong_296_Track0:
	.incbin "baserom.gba", 0x35E44C, 0x1A
	.global gSong_296_Track1
gSong_296_Track1:
	.incbin "baserom.gba", 0x35E466, 0x22
	.global gSong_296
gSong_296:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_296_Track0
	.4byte gSong_296_Track1
	.global gSong_297_Track0
gSong_297_Track0:
	.incbin "baserom.gba", 0x35E498, 0x1A
	.global gSong_297_Track1
gSong_297_Track1:
	.incbin "baserom.gba", 0x35E4B2, 0x22
	.global gSong_297
gSong_297:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_297_Track0
	.4byte gSong_297_Track1
	.global gSong_298_Track0
gSong_298_Track0:
	.incbin "baserom.gba", 0x35E4E4, 0x1A
	.global gSong_298_Track1
gSong_298_Track1:
	.incbin "baserom.gba", 0x35E4FE, 0x16
	.global gSong_298
gSong_298:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_298_Track0
	.4byte gSong_298_Track1
	.global gSong_299_Track0
gSong_299_Track0:
	.incbin "baserom.gba", 0x35E524, 0x1C
	.global gSong_299
gSong_299:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_299_Track0
	.global gSong_300_Track0
gSong_300_Track0:
	.incbin "baserom.gba", 0x35E54C, 0x1C
	.global gSong_300
gSong_300:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_300_Track0
	.global gSong_301_Track0
gSong_301_Track0:
	.incbin "baserom.gba", 0x35E574, 0x1C
	.global gSong_301
gSong_301:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_301_Track0
	.global gSong_302_Track0
gSong_302_Track0:
	.incbin "baserom.gba", 0x35E59C, 0x1C
	.global gSong_302
gSong_302:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_302_Track0
	.global gSong_303_Track0
gSong_303_Track0:
	.incbin "baserom.gba", 0x35E5C4, 0x1C
	.global gSong_303
gSong_303:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_303_Track0
	.global gSong_304_Track0
gSong_304_Track0:
	.incbin "baserom.gba", 0x35E5EC, 0x1C
	.global gSong_304
gSong_304:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_304_Track0
	.global gSong_305_Track0
gSong_305_Track0:
	.incbin "baserom.gba", 0x35E614, 0x1C
	.global gSong_305
gSong_305:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_305_Track0
	.global gSong_306_Track0
gSong_306_Track0:
	.incbin "baserom.gba", 0x35E63C, 0x18
	.global gSong_306
gSong_306:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_306_Track0
	.global gSong_307_Track0
gSong_307_Track0:
	.incbin "baserom.gba", 0x35E660, 0x1A
	.global gSong_307_Track1
gSong_307_Track1:
	.incbin "baserom.gba", 0x35E67A, 0x16
	.global gSong_307
gSong_307:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_307_Track0
	.4byte gSong_307_Track1
	.global gSong_308_Track0
gSong_308_Track0:
	.incbin "baserom.gba", 0x35E6A0, 0x1A
	.global gSong_308_Track1
gSong_308_Track1:
	.incbin "baserom.gba", 0x35E6BA, 0x16
	.global gSong_308
gSong_308:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_308_Track0
	.4byte gSong_308_Track1
	.global gSong_309_Track0
gSong_309_Track0:
	.incbin "baserom.gba", 0x35E6E0, 0x1A
	.global gSong_309_Track1
gSong_309_Track1:
	.incbin "baserom.gba", 0x35E6FA, 0x16
	.global gSong_309
gSong_309:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_309_Track0
	.4byte gSong_309_Track1
	.global gSong_310_Track0
gSong_310_Track0:
	.incbin "baserom.gba", 0x35E720, 0x1B
	.global gSong_310_Track1
gSong_310_Track1:
	.incbin "baserom.gba", 0x35E73B, 0x15
	.global gSong_310
gSong_310:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_310_Track0
	.4byte gSong_310_Track1
	.global gSong_311_Track0
gSong_311_Track0:
	.incbin "baserom.gba", 0x35E760, 0x1B
	.global gSong_311_Track1
gSong_311_Track1:
	.incbin "baserom.gba", 0x35E77B, 0x15
	.global gSong_311
gSong_311:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_311_Track0
	.4byte gSong_311_Track1
	.global gSong_312_Track0
gSong_312_Track0:
	.incbin "baserom.gba", 0x35E7A0, 0x1A
	.global gSong_312_Track1
gSong_312_Track1:
	.incbin "baserom.gba", 0x35E7BA, 0x16
	.global gSong_312
gSong_312:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_312_Track0
	.4byte gSong_312_Track1
	.global gSong_313_Track0
gSong_313_Track0:
	.incbin "baserom.gba", 0x35E7E0, 0x1B
	.global gSong_313_Track1
gSong_313_Track1:
	.incbin "baserom.gba", 0x35E7FB, 0x15
	.global gSong_313
gSong_313:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_313_Track0
	.4byte gSong_313_Track1
	.global gSong_314_Track0
gSong_314_Track0:
	.incbin "baserom.gba", 0x35E820, 0x20
	.global gSong_314
gSong_314:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_314_Track0
	.global gSong_315_Track0
gSong_315_Track0:
	.incbin "baserom.gba", 0x35E84C, 0x20
	.global gSong_315
gSong_315:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_315_Track0
	.global gSong_316_Track0
gSong_316_Track0:
	.incbin "baserom.gba", 0x35E878, 0x28
	.global gSong_316
gSong_316:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_316_Track0
	.global gSong_317_Track0
gSong_317_Track0:
	.incbin "baserom.gba", 0x35E8AC, 0x2C
	.global gSong_317
gSong_317:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_317_Track0
	.global gSong_318_Track0
gSong_318_Track0:
	.incbin "baserom.gba", 0x35E8E4, 0x2C
	.global gSong_318
gSong_318:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_318_Track0
	.global gSong_319_Track0
gSong_319_Track0:
	.incbin "baserom.gba", 0x35E91C, 0x2C
	.global gSong_319
gSong_319:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_319_Track0
	.global gSong_320_Track0
gSong_320_Track0:
	.incbin "baserom.gba", 0x35E954, 0x2C
	.global gSong_320
gSong_320:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_320_Track0
	.global gSong_321_Track0
gSong_321_Track0:
	.incbin "baserom.gba", 0x35E98C, 0x18
	.global gSong_321
gSong_321:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_321_Track0
	.global gSong_322_Track0
gSong_322_Track0:
	.incbin "baserom.gba", 0x35E9B0, 0x18
	.global gSong_322
gSong_322:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_322_Track0
	.global gSong_323_Track0
gSong_323_Track0:
	.incbin "baserom.gba", 0x35E9D4, 0x18
	.global gSong_323
gSong_323:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_323_Track0
	.global gSong_324_Track0
gSong_324_Track0:
	.incbin "baserom.gba", 0x35E9F8, 0x18
	.global gSong_324
gSong_324:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_324_Track0
	.global gSong_325_Track0
gSong_325_Track0:
	.incbin "baserom.gba", 0x35EA1C, 0x18
	.global gSong_325
gSong_325:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_325_Track0
	.global gSong_326_Track0
gSong_326_Track0:
	.incbin "baserom.gba", 0x35EA40, 0x18
	.global gSong_326
gSong_326:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_326_Track0
	.global gSong_327_Track0
gSong_327_Track0:
	.incbin "baserom.gba", 0x35EA64, 0x18
	.global gSong_327
gSong_327:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_327_Track0
	.global gSong_328_Track0
gSong_328_Track0:
	.incbin "baserom.gba", 0x35EA88, 0x16
	.global gSong_328_Track1
gSong_328_Track1:
	.incbin "baserom.gba", 0x35EA9E, 0x16
	.global gSong_328
gSong_328:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_328_Track0
	.4byte gSong_328_Track1
	.global gSong_329_Track0
gSong_329_Track0:
	.incbin "baserom.gba", 0x35EAC4, 0x16
	.global gSong_329_Track1
gSong_329_Track1:
	.incbin "baserom.gba", 0x35EADA, 0x16
	.global gSong_329
gSong_329:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_329_Track0
	.4byte gSong_329_Track1
	.global gSong_330_Track0
gSong_330_Track0:
	.incbin "baserom.gba", 0x35EB00, 0x16
	.global gSong_330_Track1
gSong_330_Track1:
	.incbin "baserom.gba", 0x35EB16, 0x16
	.global gSong_330
gSong_330:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_330_Track0
	.4byte gSong_330_Track1
	.global gSong_331_Track0
gSong_331_Track0:
	.incbin "baserom.gba", 0x35EB3C, 0x16
	.global gSong_331_Track1
gSong_331_Track1:
	.incbin "baserom.gba", 0x35EB52, 0x16
	.global gSong_331
gSong_331:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_331_Track0
	.4byte gSong_331_Track1
	.global gSong_332_Track0
gSong_332_Track0:
	.incbin "baserom.gba", 0x35EB78, 0x16
	.global gSong_332_Track1
gSong_332_Track1:
	.incbin "baserom.gba", 0x35EB8E, 0x16
	.global gSong_332
gSong_332:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_332_Track0
	.4byte gSong_332_Track1
	.global gSong_333_Track0
gSong_333_Track0:
	.incbin "baserom.gba", 0x35EBB4, 0x16
	.global gSong_333_Track1
gSong_333_Track1:
	.incbin "baserom.gba", 0x35EBCA, 0x16
	.global gSong_333
gSong_333:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_333_Track0
	.4byte gSong_333_Track1
	.global gSong_334_Track0
gSong_334_Track0:
	.incbin "baserom.gba", 0x35EBF0, 0x16
	.global gSong_334_Track1
gSong_334_Track1:
	.incbin "baserom.gba", 0x35EC06, 0x16
	.global gSong_334
gSong_334:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_334_Track0
	.4byte gSong_334_Track1
	.global gSong_335_Track0
gSong_335_Track0:
	.incbin "baserom.gba", 0x35EC2C, 0x18
	.global gSong_335
gSong_335:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_335_Track0
	.global gSong_336_Track0
gSong_336_Track0:
	.incbin "baserom.gba", 0x35EC50, 0x18
	.global gSong_336
gSong_336:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_336_Track0
	.global gSong_337_Track0
gSong_337_Track0:
	.incbin "baserom.gba", 0x35EC74, 0x18
	.global gSong_337
gSong_337:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_337_Track0
	.global gSong_338_Track0
gSong_338_Track0:
	.incbin "baserom.gba", 0x35EC98, 0x18
	.global gSong_338
gSong_338:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_338_Track0
	.global gSong_339_Track0
gSong_339_Track0:
	.incbin "baserom.gba", 0x35ECBC, 0x18
	.global gSong_339
gSong_339:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_339_Track0
	.global gSong_340_Track0
gSong_340_Track0:
	.incbin "baserom.gba", 0x35ECE0, 0x18
	.global gSong_340
gSong_340:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_340_Track0
	.global gSong_341_Track0
gSong_341_Track0:
	.incbin "baserom.gba", 0x35ED04, 0x18
	.global gSong_341
gSong_341:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_341_Track0
	.global gSong_342_Track0
gSong_342_Track0:
	.incbin "baserom.gba", 0x35ED28, 0x1A
	.global gSong_342_Track1
gSong_342_Track1:
	.incbin "baserom.gba", 0x35ED42, 0x16
	.global gSong_342
gSong_342:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_342_Track0
	.4byte gSong_342_Track1
	.global gSong_343_Track0
gSong_343_Track0:
	.incbin "baserom.gba", 0x35ED68, 0x1A
	.global gSong_343_Track1
gSong_343_Track1:
	.incbin "baserom.gba", 0x35ED82, 0x16
	.global gSong_343
gSong_343:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_343_Track0
	.4byte gSong_343_Track1
	.global gSong_344_Track0
gSong_344_Track0:
	.incbin "baserom.gba", 0x35EDA8, 0x1A
	.global gSong_344_Track1
gSong_344_Track1:
	.incbin "baserom.gba", 0x35EDC2, 0x16
	.global gSong_344
gSong_344:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_344_Track0
	.4byte gSong_344_Track1
	.global gSong_345_Track0
gSong_345_Track0:
	.incbin "baserom.gba", 0x35EDE8, 0x1A
	.global gSong_345_Track1
gSong_345_Track1:
	.incbin "baserom.gba", 0x35EE02, 0x16
	.global gSong_345
gSong_345:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_345_Track0
	.4byte gSong_345_Track1
	.global gSong_346_Track0
gSong_346_Track0:
	.incbin "baserom.gba", 0x35EE28, 0x1A
	.global gSong_346_Track1
gSong_346_Track1:
	.incbin "baserom.gba", 0x35EE42, 0x16
	.global gSong_346
gSong_346:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_346_Track0
	.4byte gSong_346_Track1
	.global gSong_347_Track0
gSong_347_Track0:
	.incbin "baserom.gba", 0x35EE68, 0x1A
	.global gSong_347_Track1
gSong_347_Track1:
	.incbin "baserom.gba", 0x35EE82, 0x16
	.global gSong_347
gSong_347:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_347_Track0
	.4byte gSong_347_Track1
	.global gSong_348_Track0
gSong_348_Track0:
	.incbin "baserom.gba", 0x35EEA8, 0x1A
	.global gSong_348_Track1
gSong_348_Track1:
	.incbin "baserom.gba", 0x35EEC2, 0x16
	.global gSong_348
gSong_348:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_348_Track0
	.4byte gSong_348_Track1
	.global gSong_349_Track0
gSong_349_Track0:
	.incbin "baserom.gba", 0x35EEE8, 0x1C
	.global gSong_349
gSong_349:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_349_Track0
	.global gSong_350_Track0
gSong_350_Track0:
	.incbin "baserom.gba", 0x35EF10, 0x1C
	.global gSong_350
gSong_350:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_350_Track0
	.global gSong_351_Track0
gSong_351_Track0:
	.incbin "baserom.gba", 0x35EF38, 0x1C
	.global gSong_351
gSong_351:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_351_Track0
	.global gSong_352_Track0
gSong_352_Track0:
	.incbin "baserom.gba", 0x35EF60, 0x20
	.global gSong_352
gSong_352:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_352_Track0
	.global gSong_353_Track0
gSong_353_Track0:
	.incbin "baserom.gba", 0x35EF8C, 0x1C
	.global gSong_353
gSong_353:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_353_Track0
	.global gSong_354_Track0
gSong_354_Track0:
	.incbin "baserom.gba", 0x35EFB4, 0x20
	.global gSong_354
gSong_354:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_354_Track0
	.global gSong_355_Track0
gSong_355_Track0:
	.incbin "baserom.gba", 0x35EFE0, 0x34
	.global gSong_355
gSong_355:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBAC0	@ voice group
	.4byte gSong_355_Track0
	.global gSong_356_Track0
gSong_356_Track0:
	.incbin "baserom.gba", 0x35F020, 0x16
	.global gSong_356_Track1
gSong_356_Track1:
	.incbin "baserom.gba", 0x35F036, 0x42
	.global gSong_356
gSong_356:
	.byte 2, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_356_Track0
	.4byte gSong_356_Track1
	.global gSong_357_Track0
gSong_357_Track0:
	.incbin "baserom.gba", 0x35F088, 0xA8
	.global gSong_357
gSong_357:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_357_Track0
	.global gSong_358_Track0
gSong_358_Track0:
	.incbin "baserom.gba", 0x35F13C, 0x24
	.global gSong_358
gSong_358:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_358_Track0
	.global gSong_359_Track0
gSong_359_Track0:
	.incbin "baserom.gba", 0x35F16C, 0x6C
	.global gSong_359
gSong_359:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_359_Track0
	.global gSong_360_Track0
gSong_360_Track0:
	.incbin "baserom.gba", 0x35F1E4, 0x18
	.global gSong_360
gSong_360:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_360_Track0
	.global gSong_361_Track0
gSong_361_Track0:
	.incbin "baserom.gba", 0x35F208, 0x30
	.global gSong_361
gSong_361:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_361_Track0
	.global gSong_362_Track0
gSong_362_Track0:
	.incbin "baserom.gba", 0x35F244, 0x18
	.global gSong_362
gSong_362:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_362_Track0
	.global gSong_363_Track0
gSong_363_Track0:
	.incbin "baserom.gba", 0x35F268, 0x4C
	.global gSong_363
gSong_363:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_363_Track0
	.global gSong_364_Track0
gSong_364_Track0:
	.incbin "baserom.gba", 0x35F2C0, 0x7C
	.global gSong_364
gSong_364:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_364_Track0
	.global gSong_365_Track0
gSong_365_Track0:
	.incbin "baserom.gba", 0x35F348, 0x18
	.global gSong_365
gSong_365:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_365_Track0
	.global gSong_366_Track0
gSong_366_Track0:
	.incbin "baserom.gba", 0x35F36C, 0x18
	.global gSong_366
gSong_366:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_366_Track0
	.global gSong_367_Track0
gSong_367_Track0:
	.incbin "baserom.gba", 0x35F390, 0x18
	.global gSong_367
gSong_367:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_367_Track0
	.global gSong_368_Track0
gSong_368_Track0:
	.incbin "baserom.gba", 0x35F3B4, 0x18
	.global gSong_368
gSong_368:
	.byte 1, 0, 110, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_368_Track0
	.global gSong_369_Track0
gSong_369_Track0:
	.incbin "baserom.gba", 0x35F3D8, 0x2C
	.global gSong_369
gSong_369:
	.byte 1, 0, 255, 129	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_369_Track0
	.global gSong_370_Track0
gSong_370_Track0:
	.incbin "baserom.gba", 0x35F410, 0x2C
	.global gSong_370
gSong_370:
	.byte 1, 0, 255, 129	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_370_Track0
	.global gSong_371_Track0
gSong_371_Track0:
	.incbin "baserom.gba", 0x35F448, 0x18
	.global gSong_371
gSong_371:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_371_Track0
	.global gSong_372_Track0
gSong_372_Track0:
	.incbin "baserom.gba", 0x35F46C, 0x18
	.global gSong_372
gSong_372:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_372_Track0
	.global gSong_373_Track0
gSong_373_Track0:
	.incbin "baserom.gba", 0x35F490, 0x18
	.global gSong_373
gSong_373:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_373_Track0
	.global gSong_374_Track0
gSong_374_Track0:
	.incbin "baserom.gba", 0x35F4B4, 0x18
	.global gSong_374
gSong_374:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_374_Track0
	.global gSong_375_Track0
gSong_375_Track0:
	.incbin "baserom.gba", 0x35F4D8, 0x18
	.global gSong_375
gSong_375:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_375_Track0
	.global gSong_376_Track0
gSong_376_Track0:
	.incbin "baserom.gba", 0x35F4FC, 0x20
	.global gSong_376
gSong_376:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_376_Track0
	.global gSong_377_Track0
gSong_377_Track0:
	.incbin "baserom.gba", 0x35F528, 0x6C
	.global gSong_377
gSong_377:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_377_Track0
	.global gSong_378_Track0
gSong_378_Track0:
	.incbin "baserom.gba", 0x35F5A0, 0x1C
	.global gSong_378_Track1
gSong_378_Track1:
	.incbin "baserom.gba", 0x35F5BC, 0x18
	.global gSong_378
gSong_378:
	.byte 2, 0, 130, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_378_Track0
	.4byte gSong_378_Track1
	.global gSong_379_Track0
gSong_379_Track0:
	.incbin "baserom.gba", 0x35F5E4, 0x20
	.global gSong_379
gSong_379:
	.byte 1, 0, 250, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_379_Track0
	.global gSong_380_Track0
gSong_380_Track0:
	.incbin "baserom.gba", 0x35F610, 0x1C
	.global gSong_380
gSong_380:
	.byte 1, 0, 199, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_380_Track0
	.global gSong_381_Track0
gSong_381_Track0:
	.incbin "baserom.gba", 0x35F638, 0x18
	.global gSong_381
gSong_381:
	.byte 1, 0, 249, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_381_Track0
	.global gSong_382_Track0
gSong_382_Track0:
	.incbin "baserom.gba", 0x35F65C, 0x18
	.global gSong_382
gSong_382:
	.byte 1, 0, 50, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_382_Track0
	.global gSong_383_Track0
gSong_383_Track0:
	.incbin "baserom.gba", 0x35F680, 0x1C
	.global gSong_383
gSong_383:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_383_Track0
	.global gSong_384_Track0
gSong_384_Track0:
	.incbin "baserom.gba", 0x35F6A8, 0x18
	.global gSong_384
gSong_384:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_384_Track0
	.global gSong_385_Track0
gSong_385_Track0:
	.incbin "baserom.gba", 0x35F6CC, 0x24
	.global gSong_385
gSong_385:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_385_Track0
	.global gSong_386_Track0
gSong_386_Track0:
	.incbin "baserom.gba", 0x35F6FC, 0x24
	.global gSong_386
gSong_386:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_386_Track0
	.global gSong_387_Track0
gSong_387_Track0:
	.incbin "baserom.gba", 0x35F72C, 0x24
	.global gSong_387
gSong_387:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_387_Track0
	.global gSong_388_Track0
gSong_388_Track0:
	.incbin "baserom.gba", 0x35F75C, 0x2C
	.global gSong_388
gSong_388:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_388_Track0
	.global gSong_389_Track0
gSong_389_Track0:
	.incbin "baserom.gba", 0x35F794, 0x24
	.global gSong_389
gSong_389:
	.byte 1, 0, 80, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_389_Track0
	.global gSong_390_Track0
gSong_390_Track0:
	.incbin "baserom.gba", 0x35F7C4, 0x11A
	.global gSong_390_Track1
gSong_390_Track1:
	.incbin "baserom.gba", 0x35F8DE, 0x56
	.global gSong_390_Track2
gSong_390_Track2:
	.incbin "baserom.gba", 0x35F934, 0x88
	.global gSong_390
gSong_390:
	.byte 3, 0, 1, 182	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_390_Track0
	.4byte gSong_390_Track1
	.4byte gSong_390_Track2
	.global gSong_391_Track0
gSong_391_Track0:
	.incbin "baserom.gba", 0x35F9D0, 0x58
	.global gSong_391_Track1
gSong_391_Track1:
	.incbin "baserom.gba", 0x35FA28, 0x1CC
	.global gSong_391_Track2
gSong_391_Track2:
	.incbin "baserom.gba", 0x35FBF4, 0x1CC
	.global gSong_391_Track3
gSong_391_Track3:
	.incbin "baserom.gba", 0x35FDC0, 0x364
	.global gSong_391
gSong_391:
	.byte 4, 0, 1, 153	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_391_Track0
	.4byte gSong_391_Track1
	.4byte gSong_391_Track2
	.4byte gSong_391_Track3
	.global gSong_392_Track0
gSong_392_Track0:
	.incbin "baserom.gba", 0x36013C, 0x6F4
	.global gSong_392_Track1
gSong_392_Track1:
	.incbin "baserom.gba", 0x360830, 0x618
	.global gSong_392
gSong_392:
	.byte 2, 0, 1, 213	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_392_Track0
	.4byte gSong_392_Track1
	.global gSong_393_Track0
gSong_393_Track0:
	.incbin "baserom.gba", 0x360E58, 0x1EF
	.global gSong_393_Track1
gSong_393_Track1:
	.incbin "baserom.gba", 0x361047, 0xDE
	.global gSong_393_Track2
gSong_393_Track2:
	.incbin "baserom.gba", 0x361125, 0x11BE
	.global gSong_393_Track3
gSong_393_Track3:
	.incbin "baserom.gba", 0x3622E3, 0x241
	.global gSong_393_Track4
gSong_393_Track4:
	.incbin "baserom.gba", 0x362524, 0xF8
	.global gSong_393_Track5
gSong_393_Track5:
	.incbin "baserom.gba", 0x36261C, 0x1EF
	.global gSong_393_Track6
gSong_393_Track6:
	.incbin "baserom.gba", 0x36280B, 0x101
	.global gSong_393
gSong_393:
	.byte 7, 0, 255, 213	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_393_Track0
	.4byte gSong_393_Track1
	.4byte gSong_393_Track2
	.4byte gSong_393_Track3
	.4byte gSong_393_Track4
	.4byte gSong_393_Track5
	.4byte gSong_393_Track6
	.global gSong_394_Track0
gSong_394_Track0:
	.incbin "baserom.gba", 0x362930, 0x3C
	.global gSong_394_Track1
gSong_394_Track1:
	.incbin "baserom.gba", 0x36296C, 0xAC
	.global gSong_394_Track2
gSong_394_Track2:
	.incbin "baserom.gba", 0x362A18, 0xAC
	.global gSong_394_Track3
gSong_394_Track3:
	.incbin "baserom.gba", 0x362AC4, 0xB6
	.global gSong_394_Track4
gSong_394_Track4:
	.incbin "baserom.gba", 0x362B7A, 0x122
	.global gSong_394
gSong_394:
	.byte 5, 0, 1, 173	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_394_Track0
	.4byte gSong_394_Track1
	.4byte gSong_394_Track2
	.4byte gSong_394_Track3
	.4byte gSong_394_Track4
	.global gSong_395_Track0
gSong_395_Track0:
	.incbin "baserom.gba", 0x362CB8, 0x18
	.global gSong_395
gSong_395:
	.byte 1, 0, 120, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_395_Track0
	.global gSong_396_Track0
gSong_396_Track0:
	.incbin "baserom.gba", 0x362CDC, 0x18
	.global gSong_396
gSong_396:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_396_Track0
	.global gSong_397_Track0
gSong_397_Track0:
	.incbin "baserom.gba", 0x362D00, 0x24D
	.global gSong_397_Track1
gSong_397_Track1:
	.incbin "baserom.gba", 0x362F4D, 0x347
	.global gSong_397_Track2
gSong_397_Track2:
	.incbin "baserom.gba", 0x363294, 0x1B4
	.global gSong_397
gSong_397:
	.byte 3, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_397_Track0
	.4byte gSong_397_Track1
	.4byte gSong_397_Track2
	.global gSong_398_Track0
gSong_398_Track0:
	.incbin "baserom.gba", 0x36345C, 0x19D
	.global gSong_398_Track1
gSong_398_Track1:
	.incbin "baserom.gba", 0x3635F9, 0x8F
	.global gSong_398_Track2
gSong_398_Track2:
	.incbin "baserom.gba", 0x363688, 0x108
	.global gSong_398
gSong_398:
	.byte 3, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_398_Track0
	.4byte gSong_398_Track1
	.4byte gSong_398_Track2
	.global gSong_399_Track0
gSong_399_Track0:
	.incbin "baserom.gba", 0x3637A4, 0x1D6
	.global gSong_399_Track1
gSong_399_Track1:
	.incbin "baserom.gba", 0x36397A, 0x18E
	.global gSong_399_Track2
gSong_399_Track2:
	.incbin "baserom.gba", 0x363B08, 0x4E
	.global gSong_399_Track3
gSong_399_Track3:
	.incbin "baserom.gba", 0x363B56, 0xC2
	.global gSong_399
gSong_399:
	.byte 4, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_399_Track0
	.4byte gSong_399_Track1
	.4byte gSong_399_Track2
	.4byte gSong_399_Track3
	.global gSong_400_Track0
gSong_400_Track0:
	.incbin "baserom.gba", 0x363C30, 0xB5
	.global gSong_400_Track1
gSong_400_Track1:
	.incbin "baserom.gba", 0x363CE5, 0x285
	.global gSong_400_Track2
gSong_400_Track2:
	.incbin "baserom.gba", 0x363F6A, 0x192
	.global gSong_400
gSong_400:
	.byte 3, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_400_Track0
	.4byte gSong_400_Track1
	.4byte gSong_400_Track2
	.global gSong_401_Track0
gSong_401_Track0:
	.incbin "baserom.gba", 0x364110, 0x207
	.global gSong_401_Track1
gSong_401_Track1:
	.incbin "baserom.gba", 0x364317, 0x1ED
	.global gSong_401
gSong_401:
	.byte 2, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_401_Track0
	.4byte gSong_401_Track1
	.global gSong_402_Track0
gSong_402_Track0:
	.incbin "baserom.gba", 0x364514, 0xD3
	.global gSong_402_Track1
gSong_402_Track1:
	.incbin "baserom.gba", 0x3645E7, 0x3D6
	.global gSong_402_Track2
gSong_402_Track2:
	.incbin "baserom.gba", 0x3649BD, 0x376
	.global gSong_402_Track3
gSong_402_Track3:
	.incbin "baserom.gba", 0x364D33, 0x51B
	.global gSong_402_Track4
gSong_402_Track4:
	.incbin "baserom.gba", 0x36524E, 0xCA
	.global gSong_402_Track5
gSong_402_Track5:
	.incbin "baserom.gba", 0x365318, 0xB8
	.global gSong_402_Track6
gSong_402_Track6:
	.incbin "baserom.gba", 0x3653D0, 0xB4
	.global gSong_402_Track7
gSong_402_Track7:
	.incbin "baserom.gba", 0x365484, 0x3AC
	.global gSong_402_Track8
gSong_402_Track8:
	.incbin "baserom.gba", 0x365830, 0xAA
	.global gSong_402_Track9
gSong_402_Track9:
	.incbin "baserom.gba", 0x3658DA, 0x5BA
	.global gSong_402
gSong_402:
	.byte 10, 0, 255, 187	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_402_Track0
	.4byte gSong_402_Track1
	.4byte gSong_402_Track2
	.4byte gSong_402_Track3
	.4byte gSong_402_Track4
	.4byte gSong_402_Track5
	.4byte gSong_402_Track6
	.4byte gSong_402_Track7
	.4byte gSong_402_Track8
	.4byte gSong_402_Track9
	.global gSong_403_Track0
gSong_403_Track0:
	.incbin "baserom.gba", 0x365EC4, 0x71
	.global gSong_403_Track1
gSong_403_Track1:
	.incbin "baserom.gba", 0x365F35, 0x61
	.global gSong_403_Track2
gSong_403_Track2:
	.incbin "baserom.gba", 0x365F96, 0x64
	.global gSong_403_Track3
gSong_403_Track3:
	.incbin "baserom.gba", 0x365FFA, 0x1B2
	.global gSong_403
gSong_403:
	.byte 4, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_403_Track0
	.4byte gSong_403_Track1
	.4byte gSong_403_Track2
	.4byte gSong_403_Track3
	.global gSong_404_Track0
gSong_404_Track0:
	.incbin "baserom.gba", 0x3661C4, 0x23C
	.global gSong_404_Track1
gSong_404_Track1:
	.incbin "baserom.gba", 0x366400, 0x48
	.global gSong_404
gSong_404:
	.byte 2, 0, 1, 177	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_404_Track0
	.4byte gSong_404_Track1
	.global gSong_405_Track0
gSong_405_Track0:
	.incbin "baserom.gba", 0x366458, 0x1D
	.global gSong_405_Track1
gSong_405_Track1:
	.incbin "baserom.gba", 0x366475, 0x1B
	.global gSong_405
gSong_405:
	.byte 2, 0, 102, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_405_Track0
	.4byte gSong_405_Track1
	.global gSong_406_Track0
gSong_406_Track0:
	.incbin "baserom.gba", 0x3664A0, 0x28
	.global gSong_406
gSong_406:
	.byte 1, 0, 103, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_406_Track0
	.global gSong_407_Track0
gSong_407_Track0:
	.incbin "baserom.gba", 0x3664D4, 0x1C
	.global gSong_407
gSong_407:
	.byte 1, 0, 101, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_407_Track0
	.global gSong_408_Track0
gSong_408_Track0:
	.incbin "baserom.gba", 0x3664FC, 0xAD
	.global gSong_408_Track1
gSong_408_Track1:
	.incbin "baserom.gba", 0x3665A9, 0x2F
	.global gSong_408
gSong_408:
	.byte 2, 0, 102, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_408_Track0
	.4byte gSong_408_Track1
	.global gSong_409_Track0
gSong_409_Track0:
	.incbin "baserom.gba", 0x3665E8, 0x18
	.global gSong_409
gSong_409:
	.byte 1, 0, 103, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_409_Track0
	.global gSong_410_Track0
gSong_410_Track0:
	.incbin "baserom.gba", 0x36660C, 0x1C
	.global gSong_410
gSong_410:
	.byte 1, 0, 101, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_410_Track0
	.global gSong_411_Track0
gSong_411_Track0:
	.incbin "baserom.gba", 0x366634, 0x1D
	.global gSong_411_Track1
gSong_411_Track1:
	.incbin "baserom.gba", 0x366651, 0x1B
	.global gSong_411
gSong_411:
	.byte 2, 0, 102, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_411_Track0
	.4byte gSong_411_Track1
	.global gSong_412_Track0
gSong_412_Track0:
	.incbin "baserom.gba", 0x36667C, 0x20
	.global gSong_412
gSong_412:
	.byte 1, 0, 103, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_412_Track0
	.global gSong_413_Track0
gSong_413_Track0:
	.incbin "baserom.gba", 0x3666A8, 0x1C
	.global gSong_413
gSong_413:
	.byte 1, 0, 50, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_413_Track0
	.global gSong_414_Track0
gSong_414_Track0:
	.incbin "baserom.gba", 0x3666D0, 0x28
	.global gSong_414
gSong_414:
	.byte 1, 0, 50, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_414_Track0
	.global gSong_415_Track0
gSong_415_Track0:
	.incbin "baserom.gba", 0x366704, 0x2C
	.global gSong_415
gSong_415:
	.byte 1, 0, 103, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_415_Track0
	.global gSong_416_Track0
gSong_416_Track0:
	.incbin "baserom.gba", 0x36673C, 0x5A
	.global gSong_416_Track1
gSong_416_Track1:
	.incbin "baserom.gba", 0x366796, 0x26
	.global gSong_416
gSong_416:
	.byte 2, 0, 103, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_416_Track0
	.4byte gSong_416_Track1
	.global gSong_417_Track0
gSong_417_Track0:
	.incbin "baserom.gba", 0x3667CC, 0x20
	.global gSong_417
gSong_417:
	.byte 1, 0, 255, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_417_Track0
	.global gSong_418_Track0
gSong_418_Track0:
	.incbin "baserom.gba", 0x3667F8, 0x38
	.global gSong_418
gSong_418:
	.byte 1, 0, 50, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_418_Track0
	.global gSong_419_Track0
gSong_419_Track0:
	.incbin "baserom.gba", 0x36683C, 0x24
	.global gSong_419
gSong_419:
	.byte 1, 0, 100, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_419_Track0
	.global gSong_420_Track0
gSong_420_Track0:
	.incbin "baserom.gba", 0x36686C, 0x18
	.global gSong_420
gSong_420:
	.byte 1, 0, 99, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_420_Track0
	.global gSong_421_Track0
gSong_421_Track0:
	.incbin "baserom.gba", 0x366890, 0x1C
	.global gSong_421
gSong_421:
	.byte 1, 0, 65, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_421_Track0
	.global gSong_422_Track0
gSong_422_Track0:
	.incbin "baserom.gba", 0x3668B8, 0x20
	.global gSong_422_Track1
gSong_422_Track1:
	.incbin "baserom.gba", 0x3668D8, 0x20
	.global gSong_422
gSong_422:
	.byte 2, 0, 109, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_422_Track0
	.4byte gSong_422_Track1
	.global gSong_423_Track0
gSong_423_Track0:
	.incbin "baserom.gba", 0x366908, 0x18
	.global gSong_423
gSong_423:
	.byte 1, 0, 109, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BC060	@ voice group
	.4byte gSong_423_Track0
	.global gSong_424_Track0
gSong_424_Track0:
	.incbin "baserom.gba", 0x36692C, 0x20
	.global gSong_424_Track1
gSong_424_Track1:
	.incbin "baserom.gba", 0x36694C, 0x14
	.global gSong_424
gSong_424:
	.byte 2, 0, 109, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_424_Track0
	.4byte gSong_424_Track1
	.global gSong_425_Track0
gSong_425_Track0:
	.incbin "baserom.gba", 0x366970, 0x18
	.global gSong_425
gSong_425:
	.byte 1, 0, 109, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_425_Track0
	.global gSong_426_Track0
gSong_426_Track0:
	.incbin "baserom.gba", 0x366994, 0x1C
	.global gSong_426
gSong_426:
	.byte 1, 0, 109, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_426_Track0
	.global gSong_427_Track0
gSong_427_Track0:
	.incbin "baserom.gba", 0x3669BC, 0x18
	.global gSong_427
gSong_427:
	.byte 1, 0, 103, 0	@ tracks, blocks, priority, reverb
	.4byte 0x080BBBB0	@ voice group
	.4byte gSong_427_Track0
	.global gUnk_083669E0
gUnk_083669E0:
	.incbin "baserom.gba", 0x3669E0, 0x80
	.global gSetup512KInfos
gSetup512KInfos:
	.incbin "baserom.gba", 0x366A60, 0x160
