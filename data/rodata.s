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
	.incbin "baserom.gba", 0xBC60C, 0x2AA454
	.global gSetup512KInfos
gSetup512KInfos:
	.incbin "baserom.gba", 0x366A60, 0x160
