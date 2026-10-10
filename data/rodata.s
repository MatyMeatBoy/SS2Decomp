	.include "asm/macros.inc"

	.section .rodata

	.global gUnk_080B9704
gUnk_080B9704:
	.incbin "baserom.gba", 0xB9704, 0x280
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
	.global gUnk_08366BC0
gUnk_08366BC0:
	.incbin "baserom.gba", 0x366BC0, 0x200
	.global gUnk_08366DC0
gUnk_08366DC0:
	.incbin "baserom.gba", 0x366DC0, 0xC
	.global gUnk_08366DCC
gUnk_08366DCC:
	.incbin "baserom.gba", 0x366DCC, 0x4
	.global gUnk_08366DD0
gUnk_08366DD0:
	.incbin "baserom.gba", 0x366DD0, 0x3C
	.global gUnk_08366E0C
gUnk_08366E0C:
	.incbin "baserom.gba", 0x366E0C, 0x2
	.global gUnk_08366E0E
gUnk_08366E0E:
	.incbin "baserom.gba", 0x366E0E, 0x26
	.global gUnk_08366E34
gUnk_08366E34:
	.incbin "baserom.gba", 0x366E34, 0xC8
	.global gUnk_08366EFC
gUnk_08366EFC:
	.incbin "baserom.gba", 0x366EFC, 0xC8
	.global gUnk_08366FC4
gUnk_08366FC4:
	.incbin "baserom.gba", 0x366FC4, 0x2402C
	.global gUnk_0838AFF0
gUnk_0838AFF0:
	.incbin "baserom.gba", 0x38AFF0, 0x25B5C
	.global gUnk_083B0B4C
gUnk_083B0B4C:
	.incbin "baserom.gba", 0x3B0B4C, 0x27FA0
	.global gUnk_083D8AEC
gUnk_083D8AEC:
	.incbin "baserom.gba", 0x3D8AEC, 0x27EB8
	.global gUnk_084009A4
gUnk_084009A4:
	.incbin "baserom.gba", 0x4009A4, 0x28294
	.global gUnk_08428C38
gUnk_08428C38:
	.incbin "baserom.gba", 0x428C38, 0x1754
	.global gUnk_0842A38C
gUnk_0842A38C:
	.incbin "baserom.gba", 0x42A38C, 0x348
	.global gUnk_0842A6D4
gUnk_0842A6D4:
	.incbin "baserom.gba", 0x42A6D4, 0x5CE4
	.global gUnk_084303B8
gUnk_084303B8:
	.incbin "baserom.gba", 0x4303B8, 0x4380
	.global gUnk_08434738
gUnk_08434738:
	.incbin "baserom.gba", 0x434738, 0x7190
	.global gUnk_0843B8C8
gUnk_0843B8C8:
	.incbin "baserom.gba", 0x43B8C8, 0x6BD0
	.global gUnk_08442498
gUnk_08442498:
	.incbin "baserom.gba", 0x442498, 0x8388
	.global gUnk_0844A820
gUnk_0844A820:
	.incbin "baserom.gba", 0x44A820, 0x4330
	.global gUnk_0844EB50
gUnk_0844EB50:
	.incbin "baserom.gba", 0x44EB50, 0x1B80
	.global gUnk_084506D0
gUnk_084506D0:
	.incbin "baserom.gba", 0x4506D0, 0x23BEC
	.global gUnk_084742BC
gUnk_084742BC:
	.incbin "baserom.gba", 0x4742BC, 0x3C80
	.global gUnk_08477F3C
gUnk_08477F3C:
	.incbin "baserom.gba", 0x477F3C, 0x108
	.global gUnk_08478044
gUnk_08478044:
	.incbin "baserom.gba", 0x478044, 0x114
	.global gUnk_08478158
gUnk_08478158:
	.incbin "baserom.gba", 0x478158, 0xC8
	.global gUnk_08478220
gUnk_08478220:
	.incbin "baserom.gba", 0x478220, 0xD4
	.global gUnk_084782F4
gUnk_084782F4:
	.incbin "baserom.gba", 0x4782F4, 0x1C
	.global gUnk_08478310
gUnk_08478310:
	.incbin "baserom.gba", 0x478310, 0x28
	.global gUnk_08478338
gUnk_08478338:
	.incbin "baserom.gba", 0x478338, 0x40
	.global gUnk_08478378
gUnk_08478378:
	.incbin "baserom.gba", 0x478378, 0x14
	.global gUnk_0847838C
gUnk_0847838C:
	.incbin "baserom.gba", 0x47838C, 0xA0
	.global gUnk_0847842C
gUnk_0847842C:
	.incbin "baserom.gba", 0x47842C, 0x10
	.global gUnk_0847843C
gUnk_0847843C:
	.incbin "baserom.gba", 0x47843C, 0x10
	.global gUnk_0847844C
gUnk_0847844C:
	.incbin "baserom.gba", 0x47844C, 0x10
	.global gUnk_0847845C
gUnk_0847845C:
	.incbin "baserom.gba", 0x47845C, 0x10
	.global gUnk_0847846C
gUnk_0847846C:
	.incbin "baserom.gba", 0x47846C, 0x4
	.global gUnk_08478470
gUnk_08478470:
	.incbin "baserom.gba", 0x478470, 0xADC
	.global gUnk_08478F4C
gUnk_08478F4C:
	.incbin "baserom.gba", 0x478F4C, 0x4E
	.global gUnk_08478F9A
gUnk_08478F9A:
	.incbin "baserom.gba", 0x478F9A, 0xAA
	.global gUnk_08479044
gUnk_08479044:
	.incbin "baserom.gba", 0x479044, 0x10
	.global gUnk_08479054
gUnk_08479054:
	.incbin "baserom.gba", 0x479054, 0x60
	.global gUnk_084790B4
gUnk_084790B4:
	.incbin "baserom.gba", 0x4790B4, 0x10
	.global gUnk_084790C4
gUnk_084790C4:
	.incbin "baserom.gba", 0x4790C4, 0x7C
	.global gUnk_08479140
gUnk_08479140:
	.incbin "baserom.gba", 0x479140, 0x1B24
	.global gUnk_0847AC64
gUnk_0847AC64:
	.incbin "baserom.gba", 0x47AC64, 0x84
	.global gUnk_0847ACE8
gUnk_0847ACE8:
	.incbin "baserom.gba", 0x47ACE8, 0x10
	.global gUnk_0847ACF8
gUnk_0847ACF8:
	.incbin "baserom.gba", 0x47ACF8, 0x12
	.global gUnk_0847AD0A
gUnk_0847AD0A:
	.incbin "baserom.gba", 0x47AD0A, 0x12
	.global gUnk_0847AD1C
gUnk_0847AD1C:
	.incbin "baserom.gba", 0x47AD1C, 0x20
	.global gUnk_0847AD3C
gUnk_0847AD3C:
	.incbin "baserom.gba", 0x47AD3C, 0xA560
	.global gUnk_0848529C
gUnk_0848529C:
	.incbin "baserom.gba", 0x48529C, 0xA770
	.global gUnk_0848FA0C
gUnk_0848FA0C:
	.incbin "baserom.gba", 0x48FA0C, 0x3C
	.global gUnk_0848FA48
gUnk_0848FA48:
	.incbin "baserom.gba", 0x48FA48, 0x120
	.global gUnk_0848FB68
gUnk_0848FB68:
	.incbin "baserom.gba", 0x48FB68, 0x14
	.global gUnk_0848FB7C
gUnk_0848FB7C:
	.incbin "baserom.gba", 0x48FB7C, 0x8
	.global gUnk_0848FB84
gUnk_0848FB84:
	.incbin "baserom.gba", 0x48FB84, 0xC
	.global gUnk_0848FB90
gUnk_0848FB90:
	.incbin "baserom.gba", 0x48FB90, 0xC
	.global gUnk_0848FB9C
gUnk_0848FB9C:
	.incbin "baserom.gba", 0x48FB9C, 0xC
	.global gUnk_0848FBA8
gUnk_0848FBA8:
	.incbin "baserom.gba", 0x48FBA8, 0xC
	.global gUnk_0848FBB4
gUnk_0848FBB4:
	.incbin "baserom.gba", 0x48FBB4, 0xC
	.global gUnk_0848FBC0
gUnk_0848FBC0:
	.incbin "baserom.gba", 0x48FBC0, 0xC
	.global gUnk_0848FBCC
gUnk_0848FBCC:
	.incbin "baserom.gba", 0x48FBCC, 0xC
	.global gUnk_0848FBD8
gUnk_0848FBD8:
	.incbin "baserom.gba", 0x48FBD8, 0xC
	.global gUnk_0848FBE4
gUnk_0848FBE4:
	.incbin "baserom.gba", 0x48FBE4, 0xC
	.global gUnk_0848FBF0
gUnk_0848FBF0:
	.incbin "baserom.gba", 0x48FBF0, 0xC
	.global gUnk_0848FBFC
gUnk_0848FBFC:
	.incbin "baserom.gba", 0x48FBFC, 0xC
	.global gUnk_0848FC08
gUnk_0848FC08:
	.incbin "baserom.gba", 0x48FC08, 0xC
	.global gUnk_0848FC14
gUnk_0848FC14:
	.incbin "baserom.gba", 0x48FC14, 0xC
	.global gUnk_0848FC20
gUnk_0848FC20:
	.incbin "baserom.gba", 0x48FC20, 0xC
	.global gUnk_0848FC2C
gUnk_0848FC2C:
	.incbin "baserom.gba", 0x48FC2C, 0xC
	.global gUnk_0848FC38
gUnk_0848FC38:
	.incbin "baserom.gba", 0x48FC38, 0xC
	.global gUnk_0848FC44
gUnk_0848FC44:
	.incbin "baserom.gba", 0x48FC44, 0xC
	.global gUnk_0848FC50
gUnk_0848FC50:
	.incbin "baserom.gba", 0x48FC50, 0xC
	.global gUnk_0848FC5C
gUnk_0848FC5C:
	.incbin "baserom.gba", 0x48FC5C, 0xC
	.global gUnk_0848FC68
gUnk_0848FC68:
	.incbin "baserom.gba", 0x48FC68, 0xC
	.global gUnk_0848FC74
gUnk_0848FC74:
	.incbin "baserom.gba", 0x48FC74, 0xC
	.global gUnk_0848FC80
gUnk_0848FC80:
	.incbin "baserom.gba", 0x48FC80, 0xC
	.global gUnk_0848FC8C
gUnk_0848FC8C:
	.incbin "baserom.gba", 0x48FC8C, 0xC
	.global gUnk_0848FC98
gUnk_0848FC98:
	.incbin "baserom.gba", 0x48FC98, 0xC
	.global gUnk_0848FCA4
gUnk_0848FCA4:
	.incbin "baserom.gba", 0x48FCA4, 0xC
	.global gUnk_0848FCB0
gUnk_0848FCB0:
	.incbin "baserom.gba", 0x48FCB0, 0xC
	.global gUnk_0848FCBC
gUnk_0848FCBC:
	.incbin "baserom.gba", 0x48FCBC, 0xC
	.global gUnk_0848FCC8
gUnk_0848FCC8:
	.incbin "baserom.gba", 0x48FCC8, 0xC
	.global gUnk_0848FCD4
gUnk_0848FCD4:
	.incbin "baserom.gba", 0x48FCD4, 0xC
	.global gUnk_0848FCE0
gUnk_0848FCE0:
	.incbin "baserom.gba", 0x48FCE0, 0xC
	.global gUnk_0848FCEC
gUnk_0848FCEC:
	.incbin "baserom.gba", 0x48FCEC, 0xC
	.global gUnk_0848FCF8
gUnk_0848FCF8:
	.incbin "baserom.gba", 0x48FCF8, 0xC
	.global gUnk_0848FD04
gUnk_0848FD04:
	.incbin "baserom.gba", 0x48FD04, 0xC
	.global gUnk_0848FD10
gUnk_0848FD10:
	.incbin "baserom.gba", 0x48FD10, 0xC
	.global gUnk_0848FD1C
gUnk_0848FD1C:
	.incbin "baserom.gba", 0x48FD1C, 0xC
	.global gUnk_0848FD28
gUnk_0848FD28:
	.incbin "baserom.gba", 0x48FD28, 0xC
	.global gUnk_0848FD34
gUnk_0848FD34:
	.incbin "baserom.gba", 0x48FD34, 0xC
	.global gUnk_0848FD40
gUnk_0848FD40:
	.incbin "baserom.gba", 0x48FD40, 0xC
	.global gUnk_0848FD4C
gUnk_0848FD4C:
	.incbin "baserom.gba", 0x48FD4C, 0xC
	.global gUnk_0848FD58
gUnk_0848FD58:
	.incbin "baserom.gba", 0x48FD58, 0xC
	.global gUnk_0848FD64
gUnk_0848FD64:
	.incbin "baserom.gba", 0x48FD64, 0xC
	.global gUnk_0848FD70
gUnk_0848FD70:
	.incbin "baserom.gba", 0x48FD70, 0xC
	.global gUnk_0848FD7C
gUnk_0848FD7C:
	.incbin "baserom.gba", 0x48FD7C, 0xC
	.global gUnk_0848FD88
gUnk_0848FD88:
	.incbin "baserom.gba", 0x48FD88, 0xC
	.global gUnk_0848FD94
gUnk_0848FD94:
	.incbin "baserom.gba", 0x48FD94, 0xC
	.global gUnk_0848FDA0
gUnk_0848FDA0:
	.incbin "baserom.gba", 0x48FDA0, 0xC
	.global gUnk_0848FDAC
gUnk_0848FDAC:
	.incbin "baserom.gba", 0x48FDAC, 0xC
	.global gUnk_0848FDB8
gUnk_0848FDB8:
	.incbin "baserom.gba", 0x48FDB8, 0xC
	.global gUnk_0848FDC4
gUnk_0848FDC4:
	.incbin "baserom.gba", 0x48FDC4, 0xC
	.global gUnk_0848FDD0
gUnk_0848FDD0:
	.incbin "baserom.gba", 0x48FDD0, 0xC
	.global gUnk_0848FDDC
gUnk_0848FDDC:
	.incbin "baserom.gba", 0x48FDDC, 0xC
	.global gUnk_0848FDE8
gUnk_0848FDE8:
	.incbin "baserom.gba", 0x48FDE8, 0xC
	.global gUnk_0848FDF4
gUnk_0848FDF4:
	.incbin "baserom.gba", 0x48FDF4, 0xC
	.global gUnk_0848FE00
gUnk_0848FE00:
	.incbin "baserom.gba", 0x48FE00, 0xC
	.global gUnk_0848FE0C
gUnk_0848FE0C:
	.incbin "baserom.gba", 0x48FE0C, 0xC
	.global gUnk_0848FE18
gUnk_0848FE18:
	.incbin "baserom.gba", 0x48FE18, 0xC
	.global gUnk_0848FE24
gUnk_0848FE24:
	.incbin "baserom.gba", 0x48FE24, 0xC
	.global gUnk_0848FE30
gUnk_0848FE30:
	.incbin "baserom.gba", 0x48FE30, 0xC
	.global gUnk_0848FE3C
gUnk_0848FE3C:
	.incbin "baserom.gba", 0x48FE3C, 0xC
	.global gUnk_0848FE48
gUnk_0848FE48:
	.incbin "baserom.gba", 0x48FE48, 0xC
	.global gUnk_0848FE54
gUnk_0848FE54:
	.incbin "baserom.gba", 0x48FE54, 0xC
	.global gUnk_0848FE60
gUnk_0848FE60:
	.incbin "baserom.gba", 0x48FE60, 0xC
	.global gUnk_0848FE6C
gUnk_0848FE6C:
	.incbin "baserom.gba", 0x48FE6C, 0xC
	.global gUnk_0848FE78
gUnk_0848FE78:
	.incbin "baserom.gba", 0x48FE78, 0xC
	.global gUnk_0848FE84
gUnk_0848FE84:
	.incbin "baserom.gba", 0x48FE84, 0x24
	.global gUnk_0848FEA8
gUnk_0848FEA8:
	.incbin "baserom.gba", 0x48FEA8, 0xC
	.global gUnk_0848FEB4
gUnk_0848FEB4:
	.incbin "baserom.gba", 0x48FEB4, 0xC
	.global gUnk_0848FEC0
gUnk_0848FEC0:
	.incbin "baserom.gba", 0x48FEC0, 0xC
	.global gUnk_0848FECC
gUnk_0848FECC:
	.incbin "baserom.gba", 0x48FECC, 0xC
	.global gUnk_0848FED8
gUnk_0848FED8:
	.incbin "baserom.gba", 0x48FED8, 0xC
	.global gUnk_0848FEE4
gUnk_0848FEE4:
	.incbin "baserom.gba", 0x48FEE4, 0x4
	.global gUnk_0848FEE8
gUnk_0848FEE8:
	.incbin "baserom.gba", 0x48FEE8, 0x4
	.global gUnk_0848FEEC
gUnk_0848FEEC:
	.incbin "baserom.gba", 0x48FEEC, 0x4
	.global gUnk_0848FEF0
gUnk_0848FEF0:
	.incbin "baserom.gba", 0x48FEF0, 0x40
	.global gUnk_0848FF30
gUnk_0848FF30:
	.incbin "baserom.gba", 0x48FF30, 0x4
	.global gUnk_0848FF34
gUnk_0848FF34:
	.incbin "baserom.gba", 0x48FF34, 0x4
	.global gUnk_0848FF38
gUnk_0848FF38:
	.incbin "baserom.gba", 0x48FF38, 0x4
	.global gUnk_0848FF3C
gUnk_0848FF3C:
	.incbin "baserom.gba", 0x48FF3C, 0x4
	.global gUnk_0848FF40
gUnk_0848FF40:
	.incbin "baserom.gba", 0x48FF40, 0x4
	.global gUnk_0848FF44
gUnk_0848FF44:
	.incbin "baserom.gba", 0x48FF44, 0x4
	.global gUnk_0848FF48
gUnk_0848FF48:
	.incbin "baserom.gba", 0x48FF48, 0x4
	.global gUnk_0848FF4C
gUnk_0848FF4C:
	.incbin "baserom.gba", 0x48FF4C, 0x4
	.global gUnk_0848FF50
gUnk_0848FF50:
	.incbin "baserom.gba", 0x48FF50, 0x4
	.global gUnk_0848FF54
gUnk_0848FF54:
	.incbin "baserom.gba", 0x48FF54, 0x1CC
	.global gUnk_08490120
gUnk_08490120:
	.incbin "baserom.gba", 0x490120, 0xE460
	.global gUnk_0849E580
gUnk_0849E580:
	.incbin "baserom.gba", 0x49E580, 0x1B0
	.global gUnk_0849E730
gUnk_0849E730:
	.incbin "baserom.gba", 0x49E730, 0x10
	.global gUnk_0849E740
gUnk_0849E740:
	.incbin "baserom.gba", 0x49E740, 0x20
	.global gUnk_0849E760
gUnk_0849E760:
	.incbin "baserom.gba", 0x49E760, 0x10
	.global gUnk_0849E770
gUnk_0849E770:
	.incbin "baserom.gba", 0x49E770, 0x1108
	.global gUnk_0849F878
gUnk_0849F878:
	.incbin "baserom.gba", 0x49F878, 0xE38
	.global gUnk_084A06B0
gUnk_084A06B0:
	.incbin "baserom.gba", 0x4A06B0, 0x1260
	.global gUnk_084A1910
gUnk_084A1910:
	.incbin "baserom.gba", 0x4A1910, 0xE38
	.global gUnk_084A2748
gUnk_084A2748:
	.incbin "baserom.gba", 0x4A2748, 0x16F8
	.global gUnk_084A3E40
gUnk_084A3E40:
	.incbin "baserom.gba", 0x4A3E40, 0x70
	.global gUnk_084A3EB0
gUnk_084A3EB0:
	.incbin "baserom.gba", 0x4A3EB0, 0xD90
	.global gUnk_084A4C40
gUnk_084A4C40:
	.incbin "baserom.gba", 0x4A4C40, 0x1068
	.global gUnk_084A5CA8
gUnk_084A5CA8:
	.incbin "baserom.gba", 0x4A5CA8, 0x1110
	.global gUnk_084A6DB8
gUnk_084A6DB8:
	.incbin "baserom.gba", 0x4A6DB8, 0xF18
	.global gUnk_084A7CD0
gUnk_084A7CD0:
	.incbin "baserom.gba", 0x4A7CD0, 0x3B8
	.global gUnk_084A8088
gUnk_084A8088:
	.incbin "baserom.gba", 0x4A8088, 0x428
	.global gUnk_084A84B0
gUnk_084A84B0:
	.incbin "baserom.gba", 0x4A84B0, 0x690
	.global gUnk_084A8B40
gUnk_084A8B40:
	.incbin "baserom.gba", 0x4A8B40, 0x380
	.global gUnk_084A8EC0
gUnk_084A8EC0:
	.incbin "baserom.gba", 0x4A8EC0, 0x16C0
	.global gUnk_084AA580
gUnk_084AA580:
	.incbin "baserom.gba", 0x4AA580, 0x1C0
	.global gUnk_084AA740
gUnk_084AA740:
	.incbin "baserom.gba", 0x4AA740, 0x70
	.global gUnk_084AA7B0
gUnk_084AA7B0:
	.incbin "baserom.gba", 0x4AA7B0, 0x1C0
	.global gUnk_084AA970
gUnk_084AA970:
	.incbin "baserom.gba", 0x4AA970, 0x70
	.global gUnk_084AA9E0
gUnk_084AA9E0:
	.incbin "baserom.gba", 0x4AA9E0, 0x8
	.global gUnk_084AA9E8
gUnk_084AA9E8:
	.incbin "baserom.gba", 0x4AA9E8, 0x148
	.global gUnk_084AAB30
gUnk_084AAB30:
	.incbin "baserom.gba", 0x4AAB30, 0x8
	.global gUnk_084AAB38
gUnk_084AAB38:
	.incbin "baserom.gba", 0x4AAB38, 0x148
	.global gUnk_084AAC80
gUnk_084AAC80:
	.incbin "baserom.gba", 0x4AAC80, 0x8
	.global gUnk_084AAC88
gUnk_084AAC88:
	.incbin "baserom.gba", 0x4AAC88, 0x148
	.global gUnk_084AADD0
gUnk_084AADD0:
	.incbin "baserom.gba", 0x4AADD0, 0x8
	.global gUnk_084AADD8
gUnk_084AADD8:
	.incbin "baserom.gba", 0x4AADD8, 0x148
	.global gUnk_084AAF20
gUnk_084AAF20:
	.incbin "baserom.gba", 0x4AAF20, 0x8
	.global gUnk_084AAF28
gUnk_084AAF28:
	.incbin "baserom.gba", 0x4AAF28, 0x148
	.global gUnk_084AB070
gUnk_084AB070:
	.incbin "baserom.gba", 0x4AB070, 0x8
	.global gUnk_084AB078
gUnk_084AB078:
	.incbin "baserom.gba", 0x4AB078, 0x148
	.global gUnk_084AB1C0
gUnk_084AB1C0:
	.incbin "baserom.gba", 0x4AB1C0, 0x8
	.global gUnk_084AB1C8
gUnk_084AB1C8:
	.incbin "baserom.gba", 0x4AB1C8, 0x148
	.global gUnk_084AB310
gUnk_084AB310:
	.incbin "baserom.gba", 0x4AB310, 0x8
	.global gUnk_084AB318
gUnk_084AB318:
	.incbin "baserom.gba", 0x4AB318, 0x148
	.global gUnk_084AB460
gUnk_084AB460:
	.incbin "baserom.gba", 0x4AB460, 0x8
	.global gUnk_084AB468
gUnk_084AB468:
	.incbin "baserom.gba", 0x4AB468, 0x148
	.global gUnk_084AB5B0
gUnk_084AB5B0:
	.incbin "baserom.gba", 0x4AB5B0, 0x8
	.global gUnk_084AB5B8
gUnk_084AB5B8:
	.incbin "baserom.gba", 0x4AB5B8, 0x458
	.global gUnk_084ABA10
gUnk_084ABA10:
	.incbin "baserom.gba", 0x4ABA10, 0x5090
	.global gUnk_084B0AA0
gUnk_084B0AA0:
	.incbin "baserom.gba", 0x4B0AA0, 0x8FC
	.global gUnk_084B139C
gUnk_084B139C:
	.incbin "baserom.gba", 0x4B139C, 0x20
	.global gUnk_084B13BC
gUnk_084B13BC:
	.incbin "baserom.gba", 0x4B13BC, 0x28
	.global gUnk_084B13E4
gUnk_084B13E4:
	.incbin "baserom.gba", 0x4B13E4, 0x3C
	.global gUnk_084B1420
gUnk_084B1420:
	.incbin "baserom.gba", 0x4B1420, 0x34
	.global gUnk_084B1454
gUnk_084B1454:
	.incbin "baserom.gba", 0x4B1454, 0x38
	.global gUnk_084B148C
gUnk_084B148C:
	.incbin "baserom.gba", 0x4B148C, 0x44
	.global gUnk_084B14D0
gUnk_084B14D0:
	.incbin "baserom.gba", 0x4B14D0, 0x34
	.global gUnk_084B1504
gUnk_084B1504:
	.incbin "baserom.gba", 0x4B1504, 0x48
	.global gUnk_084B154C
gUnk_084B154C:
	.incbin "baserom.gba", 0x4B154C, 0x44
	.global gUnk_084B1590
gUnk_084B1590:
	.incbin "baserom.gba", 0x4B1590, 0x54
	.global gUnk_084B15E4
gUnk_084B15E4:
	.incbin "baserom.gba", 0x4B15E4, 0x4
	.global gUnk_084B15E8
gUnk_084B15E8:
	.incbin "baserom.gba", 0x4B15E8, 0x10
	.global gUnk_084B15F8
gUnk_084B15F8:
	.incbin "baserom.gba", 0x4B15F8, 0x14
	.global gUnk_084B160C
gUnk_084B160C:
	.incbin "baserom.gba", 0x4B160C, 0x4
	.global gUnk_084B1610
gUnk_084B1610:
	.incbin "baserom.gba", 0x4B1610, 0x10
	.global gUnk_084B1620
gUnk_084B1620:
	.incbin "baserom.gba", 0x4B1620, 0x10
	.global gUnk_084B1630
gUnk_084B1630:
	.incbin "baserom.gba", 0x4B1630, 0x1C
	.global gUnk_084B164C
gUnk_084B164C:
	.incbin "baserom.gba", 0x4B164C, 0x18
	.global gUnk_084B1664
gUnk_084B1664:
	.incbin "baserom.gba", 0x4B1664, 0x14
	.global gUnk_084B1678
gUnk_084B1678:
	.incbin "baserom.gba", 0x4B1678, 0x28
	.global gUnk_084B16A0
gUnk_084B16A0:
	.incbin "baserom.gba", 0x4B16A0, 0x14
	.global gUnk_084B16B4
gUnk_084B16B4:
	.incbin "baserom.gba", 0x4B16B4, 0x18
	.global gUnk_084B16CC
gUnk_084B16CC:
	.incbin "baserom.gba", 0x4B16CC, 0x14
	.global gUnk_084B16E0
gUnk_084B16E0:
	.incbin "baserom.gba", 0x4B16E0, 0x180
	.global gUnk_084B1860
gUnk_084B1860:
	.incbin "baserom.gba", 0x4B1860, 0x4
	.global gUnk_084B1864
gUnk_084B1864:
	.incbin "baserom.gba", 0x4B1864, 0x8
	.global gUnk_084B186C
gUnk_084B186C:
	.incbin "baserom.gba", 0x4B186C, 0x184
	.global gUnk_084B19F0
gUnk_084B19F0:
	.incbin "baserom.gba", 0x4B19F0, 0x260
	.global gUnk_084B1C50
gUnk_084B1C50:
	.incbin "baserom.gba", 0x4B1C50, 0xF0
	.global gUnk_084B1D40
gUnk_084B1D40:
	.incbin "baserom.gba", 0x4B1D40, 0x38
	.global gUnk_084B1D78
gUnk_084B1D78:
	.incbin "baserom.gba", 0x4B1D78, 0x630
	.global gUnk_084B23A8
gUnk_084B23A8:
	.incbin "baserom.gba", 0x4B23A8, 0x108
	.global gUnk_084B24B0
gUnk_084B24B0:
	.incbin "baserom.gba", 0x4B24B0, 0x54
	.global gUnk_084B2504
gUnk_084B2504:
	.incbin "baserom.gba", 0x4B2504, 0x348D4
	.global gUnk_084E6DD8
gUnk_084E6DD8:
	.incbin "baserom.gba", 0x4E6DD8, 0xE10
	.global gUnk_084E7BE8
gUnk_084E7BE8:
	.incbin "baserom.gba", 0x4E7BE8, 0x1E00
	.global gUnk_084E99E8
gUnk_084E99E8:
	.incbin "baserom.gba", 0x4E99E8, 0x1E00
	.global gUnk_084EB7E8
gUnk_084EB7E8:
	.incbin "baserom.gba", 0x4EB7E8, 0xF0
	.global gUnk_084EB8D8
gUnk_084EB8D8:
	.incbin "baserom.gba", 0x4EB8D8, 0x410
	.global gUnk_084EBCE8
gUnk_084EBCE8:
	.incbin "baserom.gba", 0x4EBCE8, 0x40
	.global gUnk_084EBD28
gUnk_084EBD28:
	.incbin "baserom.gba", 0x4EBD28, 0x10
	.global gUnk_084EBD38
gUnk_084EBD38:
	.incbin "baserom.gba", 0x4EBD38, 0x10
	.global gUnk_084EBD48
gUnk_084EBD48:
	.incbin "baserom.gba", 0x4EBD48, 0x4
	.global gUnk_084EBD4C
gUnk_084EBD4C:
	.incbin "baserom.gba", 0x4EBD4C, 0x10
	.global gUnk_084EBD5C
gUnk_084EBD5C:
	.incbin "baserom.gba", 0x4EBD5C, 0x18
	.global gUnk_084EBD74
gUnk_084EBD74:
	.incbin "baserom.gba", 0x4EBD74, 0x8
	.global gUnk_084EBD7C
gUnk_084EBD7C:
	.incbin "baserom.gba", 0x4EBD7C, 0x40
	.global gUnk_084EBDBC
gUnk_084EBDBC:
	.incbin "baserom.gba", 0x4EBDBC, 0x2
	.global gUnk_084EBDBE
gUnk_084EBDBE:
	.incbin "baserom.gba", 0x4EBDBE, 0xA
	.global gUnk_084EBDC8
gUnk_084EBDC8:
	.incbin "baserom.gba", 0x4EBDC8, 0x40
	.global gUnk_084EBE08
gUnk_084EBE08:
	.incbin "baserom.gba", 0x4EBE08, 0x2
	.global gUnk_084EBE0A
gUnk_084EBE0A:
	.incbin "baserom.gba", 0x4EBE0A, 0xA
	.global gUnk_084EBE14
gUnk_084EBE14:
	.incbin "baserom.gba", 0x4EBE14, 0x20
	.global gUnk_084EBE34
gUnk_084EBE34:
	.incbin "baserom.gba", 0x4EBE34, 0x4
	.global gUnk_084EBE38
gUnk_084EBE38:
	.incbin "baserom.gba", 0x4EBE38, 0x1C
	.global gUnk_084EBE54
gUnk_084EBE54:
	.incbin "baserom.gba", 0x4EBE54, 0x30
	.global gUnk_084EBE84
gUnk_084EBE84:
	.incbin "baserom.gba", 0x4EBE84, 0x2
	.global gUnk_084EBE86
gUnk_084EBE86:
	.incbin "baserom.gba", 0x4EBE86, 0x36
	.global gUnk_084EBEBC
gUnk_084EBEBC:
	.incbin "baserom.gba", 0x4EBEBC, 0x2
	.global gUnk_084EBEBE
gUnk_084EBEBE:
	.incbin "baserom.gba", 0x4EBEBE, 0x5E
	.global gUnk_084EBF1C
gUnk_084EBF1C:
	.incbin "baserom.gba", 0x4EBF1C, 0x62
	.global gUnk_084EBF7E
gUnk_084EBF7E:
	.incbin "baserom.gba", 0x4EBF7E, 0x1AE
	.global gUnk_084EC12C
gUnk_084EC12C:
	.incbin "baserom.gba", 0x4EC12C, 0x20
	.global gUnk_084EC14C
gUnk_084EC14C:
	.incbin "baserom.gba", 0x4EC14C, 0x10
	.global gUnk_084EC15C
gUnk_084EC15C:
	.incbin "baserom.gba", 0x4EC15C, 0x10
	.global gUnk_084EC16C
gUnk_084EC16C:
	.incbin "baserom.gba", 0x4EC16C, 0x10
	.global gUnk_084EC17C
gUnk_084EC17C:
	.incbin "baserom.gba", 0x4EC17C, 0x12
	.global gUnk_084EC18E
gUnk_084EC18E:
	.incbin "baserom.gba", 0x4EC18E, 0x12
	.global gUnk_084EC1A0
gUnk_084EC1A0:
	.incbin "baserom.gba", 0x4EC1A0, 0x20
	.global gUnk_084EC1C0
gUnk_084EC1C0:
	.incbin "baserom.gba", 0x4EC1C0, 0x10
	.global gUnk_084EC1D0
gUnk_084EC1D0:
	.incbin "baserom.gba", 0x4EC1D0, 0x10
	.global gUnk_084EC1E0
gUnk_084EC1E0:
	.incbin "baserom.gba", 0x4EC1E0, 0xA8
	.global gUnk_084EC288
gUnk_084EC288:
	.incbin "baserom.gba", 0x4EC288, 0xA8
	.global gUnk_084EC330
gUnk_084EC330:
	.incbin "baserom.gba", 0x4EC330, 0xA8
	.global gUnk_084EC3D8
gUnk_084EC3D8:
	.incbin "baserom.gba", 0x4EC3D8, 0xA8
	.global gUnk_084EC480
gUnk_084EC480:
	.incbin "baserom.gba", 0x4EC480, 0x60
	.global gUnk_084EC4E0
gUnk_084EC4E0:
	.incbin "baserom.gba", 0x4EC4E0, 0x60
	.global gUnk_084EC540
gUnk_084EC540:
	.incbin "baserom.gba", 0x4EC540, 0x60
	.global gUnk_084EC5A0
gUnk_084EC5A0:
	.incbin "baserom.gba", 0x4EC5A0, 0x60
	.global gUnk_084EC600
gUnk_084EC600:
	.incbin "baserom.gba", 0x4EC600, 0x60
	.global gUnk_084EC660
gUnk_084EC660:
	.incbin "baserom.gba", 0x4EC660, 0x60
	.global gUnk_084EC6C0
gUnk_084EC6C0:
	.incbin "baserom.gba", 0x4EC6C0, 0x24
	.global gUnk_084EC6E4
gUnk_084EC6E4:
	.incbin "baserom.gba", 0x4EC6E4, 0x24
	.global gUnk_084EC708
gUnk_084EC708:
	.incbin "baserom.gba", 0x4EC708, 0x24
	.global gUnk_084EC72C
gUnk_084EC72C:
	.incbin "baserom.gba", 0x4EC72C, 0x24
	.global gUnk_084EC750
gUnk_084EC750:
	.incbin "baserom.gba", 0x4EC750, 0x24
	.global gUnk_084EC774
gUnk_084EC774:
	.incbin "baserom.gba", 0x4EC774, 0x24
	.global gUnk_084EC798
gUnk_084EC798:
	.incbin "baserom.gba", 0x4EC798, 0x24
	.global gUnk_084EC7BC
gUnk_084EC7BC:
	.incbin "baserom.gba", 0x4EC7BC, 0x24
	.global gUnk_084EC7E0
gUnk_084EC7E0:
	.incbin "baserom.gba", 0x4EC7E0, 0x24
	.global gUnk_084EC804
gUnk_084EC804:
	.incbin "baserom.gba", 0x4EC804, 0x24
	.global gUnk_084EC828
gUnk_084EC828:
	.incbin "baserom.gba", 0x4EC828, 0x24
	.global gUnk_084EC84C
gUnk_084EC84C:
	.incbin "baserom.gba", 0x4EC84C, 0x24
	.global gUnk_084EC870
gUnk_084EC870:
	.incbin "baserom.gba", 0x4EC870, 0x40
	.global gUnk_084EC8B0
gUnk_084EC8B0:
	.incbin "baserom.gba", 0x4EC8B0, 0x40
	.global gUnk_084EC8F0
gUnk_084EC8F0:
	.incbin "baserom.gba", 0x4EC8F0, 0x30
	.global gUnk_084EC920
gUnk_084EC920:
	.incbin "baserom.gba", 0x4EC920, 0x30
	.global gUnk_084EC950
gUnk_084EC950:
	.incbin "baserom.gba", 0x4EC950, 0x50
	.global gUnk_084EC9A0
gUnk_084EC9A0:
	.incbin "baserom.gba", 0x4EC9A0, 0x50
	.global gUnk_084EC9F0
gUnk_084EC9F0:
	.incbin "baserom.gba", 0x4EC9F0, 0x50
	.global gUnk_084ECA40
gUnk_084ECA40:
	.incbin "baserom.gba", 0x4ECA40, 0x50
	.global gUnk_084ECA90
gUnk_084ECA90:
	.incbin "baserom.gba", 0x4ECA90, 0x50
	.global gUnk_084ECAE0
gUnk_084ECAE0:
	.incbin "baserom.gba", 0x4ECAE0, 0x50
	.global gUnk_084ECB30
gUnk_084ECB30:
	.incbin "baserom.gba", 0x4ECB30, 0x54
	.global gUnk_084ECB84
gUnk_084ECB84:
	.incbin "baserom.gba", 0x4ECB84, 0x14
	.global gUnk_084ECB98
gUnk_084ECB98:
	.incbin "baserom.gba", 0x4ECB98, 0x18
	.global gUnk_084ECBB0
gUnk_084ECBB0:
	.incbin "baserom.gba", 0x4ECBB0, 0x2
	.global gUnk_084ECBB2
gUnk_084ECBB2:
	.incbin "baserom.gba", 0x4ECBB2, 0xA
	.global gUnk_084ECBBC
gUnk_084ECBBC:
	.incbin "baserom.gba", 0x4ECBBC, 0xC
	.global gUnk_084ECBC8
gUnk_084ECBC8:
	.incbin "baserom.gba", 0x4ECBC8, 0x14
	.global gUnk_084ECBDC
gUnk_084ECBDC:
	.incbin "baserom.gba", 0x4ECBDC, 0x28
	.global gUnk_084ECC04
gUnk_084ECC04:
	.incbin "baserom.gba", 0x4ECC04, 0x28
	.global gUnk_084ECC2C
gUnk_084ECC2C:
	.incbin "baserom.gba", 0x4ECC2C, 0x248
	.global gUnk_084ECE74
gUnk_084ECE74:
	.incbin "baserom.gba", 0x4ECE74, 0x1A
	.global gUnk_084ECE8E
gUnk_084ECE8E:
	.incbin "baserom.gba", 0x4ECE8E, 0x22
	.global gUnk_084ECEB0
gUnk_084ECEB0:
	.incbin "baserom.gba", 0x4ECEB0, 0xD8
	.global gUnk_084ECF88
gUnk_084ECF88:
	.incbin "baserom.gba", 0x4ECF88, 0x60
	.global gUnk_084ECFE8
gUnk_084ECFE8:
	.incbin "baserom.gba", 0x4ECFE8, 0x60
	.global gUnk_084ED048
gUnk_084ED048:
	.incbin "baserom.gba", 0x4ED048, 0x138
	.global gUnk_084ED180
gUnk_084ED180:
	.incbin "baserom.gba", 0x4ED180, 0x60
	.global gUnk_084ED1E0
gUnk_084ED1E0:
	.incbin "baserom.gba", 0x4ED1E0, 0x138
	.global gUnk_084ED318
gUnk_084ED318:
	.incbin "baserom.gba", 0x4ED318, 0xC0
	.global gUnk_084ED3D8
gUnk_084ED3D8:
	.incbin "baserom.gba", 0x4ED3D8, 0x60
	.global gUnk_084ED438
gUnk_084ED438:
	.incbin "baserom.gba", 0x4ED438, 0x60
	.global gUnk_084ED498
gUnk_084ED498:
	.incbin "baserom.gba", 0x4ED498, 0x60
	.global gUnk_084ED4F8
gUnk_084ED4F8:
	.incbin "baserom.gba", 0x4ED4F8, 0x30
	.global gUnk_084ED528
gUnk_084ED528:
	.incbin "baserom.gba", 0x4ED528, 0x60
	.global gUnk_084ED588
gUnk_084ED588:
	.incbin "baserom.gba", 0x4ED588, 0x60
	.global gUnk_084ED5E8
gUnk_084ED5E8:
	.incbin "baserom.gba", 0x4ED5E8, 0x60
	.global gUnk_084ED648
gUnk_084ED648:
	.incbin "baserom.gba", 0x4ED648, 0x60
	.global gUnk_084ED6A8
gUnk_084ED6A8:
	.incbin "baserom.gba", 0x4ED6A8, 0x60
	.global gUnk_084ED708
gUnk_084ED708:
	.incbin "baserom.gba", 0x4ED708, 0x120
	.global gUnk_084ED828
gUnk_084ED828:
	.incbin "baserom.gba", 0x4ED828, 0x120
	.global gUnk_084ED948
gUnk_084ED948:
	.incbin "baserom.gba", 0x4ED948, 0x60
	.global gUnk_084ED9A8
gUnk_084ED9A8:
	.incbin "baserom.gba", 0x4ED9A8, 0x60
	.global gUnk_084EDA08
gUnk_084EDA08:
	.incbin "baserom.gba", 0x4EDA08, 0x60
	.global gUnk_084EDA68
gUnk_084EDA68:
	.incbin "baserom.gba", 0x4EDA68, 0x60
	.global gUnk_084EDAC8
gUnk_084EDAC8:
	.incbin "baserom.gba", 0x4EDAC8, 0x60
	.global gUnk_084EDB28
gUnk_084EDB28:
	.incbin "baserom.gba", 0x4EDB28, 0x60
	.global gUnk_084EDB88
gUnk_084EDB88:
	.incbin "baserom.gba", 0x4EDB88, 0x90
	.global gUnk_084EDC18
gUnk_084EDC18:
	.incbin "baserom.gba", 0x4EDC18, 0x90
	.global gUnk_084EDCA8
gUnk_084EDCA8:
	.incbin "baserom.gba", 0x4EDCA8, 0x2E18
	.global gUnk_084F0AC0
gUnk_084F0AC0:
	.incbin "baserom.gba", 0x4F0AC0, 0x50
	.global gUnk_084F0B10
gUnk_084F0B10:
	.incbin "baserom.gba", 0x4F0B10, 0x2
	.global gUnk_084F0B12
gUnk_084F0B12:
	.incbin "baserom.gba", 0x4F0B12, 0xEE
	.global gUnk_084F0C00
gUnk_084F0C00:
	.incbin "baserom.gba", 0x4F0C00, 0x28
	.global gUnk_084F0C28
gUnk_084F0C28:
	.incbin "baserom.gba", 0x4F0C28, 0x8
	.global gUnk_084F0C30
gUnk_084F0C30:
	.incbin "baserom.gba", 0x4F0C30, 0x4
	.global gUnk_084F0C34
gUnk_084F0C34:
	.incbin "baserom.gba", 0x4F0C34, 0x56
	.global gUnk_084F0C8A
gUnk_084F0C8A:
	.incbin "baserom.gba", 0x4F0C8A, 0x1A5A
	.global gUnk_084F26E4
gUnk_084F26E4:
	.incbin "baserom.gba", 0x4F26E4, 0x2134
	.global gUnk_084F4818
gUnk_084F4818:
	.incbin "baserom.gba", 0x4F4818, 0x3134
	.global gUnk_084F794C
gUnk_084F794C:
	.incbin "baserom.gba", 0x4F794C, 0x294C
	.global gUnk_084FA298
gUnk_084FA298:
	.incbin "baserom.gba", 0x4FA298, 0x2DD4
	.global gUnk_084FD06C
gUnk_084FD06C:
	.incbin "baserom.gba", 0x4FD06C, 0x3020
	.global gUnk_0850008C
gUnk_0850008C:
	.incbin "baserom.gba", 0x50008C, 0x2830
	.global gUnk_085028BC
gUnk_085028BC:
	.incbin "baserom.gba", 0x5028BC, 0x3818
	.global gUnk_085060D4
gUnk_085060D4:
	.incbin "baserom.gba", 0x5060D4, 0x2A80
	.global gUnk_08508B54
gUnk_08508B54:
	.incbin "baserom.gba", 0x508B54, 0x3B94
	.global gUnk_0850C6E8
gUnk_0850C6E8:
	.incbin "baserom.gba", 0x50C6E8, 0x3C0
	.global gUnk_0850CAA8
gUnk_0850CAA8:
	.incbin "baserom.gba", 0x50CAA8, 0xA44
	.global gUnk_0850D4EC
gUnk_0850D4EC:
	.incbin "baserom.gba", 0x50D4EC, 0x14
	.global gUnk_0850D500
gUnk_0850D500:
	.incbin "baserom.gba", 0x50D500, 0x928
	.global gUnk_0850DE28
gUnk_0850DE28:
	.incbin "baserom.gba", 0x50DE28, 0xC9C
	.global gUnk_0850EAC4
gUnk_0850EAC4:
	.incbin "baserom.gba", 0x50EAC4, 0x25C
	.global gUnk_0850ED20
gUnk_0850ED20:
	.incbin "baserom.gba", 0x50ED20, 0xB74
	.global gUnk_0850F894
gUnk_0850F894:
	.incbin "baserom.gba", 0x50F894, 0xC9C
	.global gUnk_08510530
gUnk_08510530:
	.incbin "baserom.gba", 0x510530, 0x1008
	.global gUnk_08511538
gUnk_08511538:
	.incbin "baserom.gba", 0x511538, 0x1138
	.global gUnk_08512670
gUnk_08512670:
	.incbin "baserom.gba", 0x512670, 0x1010
	.global gUnk_08513680
gUnk_08513680:
	.incbin "baserom.gba", 0x513680, 0x192C
	.global gUnk_08514FAC
gUnk_08514FAC:
	.incbin "baserom.gba", 0x514FAC, 0x1020
	.global gUnk_08515FCC
gUnk_08515FCC:
	.incbin "baserom.gba", 0x515FCC, 0x1254
	.global gUnk_08517220
gUnk_08517220:
	.incbin "baserom.gba", 0x517220, 0xEEC
	.global gUnk_0851810C
gUnk_0851810C:
	.incbin "baserom.gba", 0x51810C, 0x8C
	.global gUnk_08518198
gUnk_08518198:
	.incbin "baserom.gba", 0x518198, 0x28
	.global gUnk_085181C0
gUnk_085181C0:
	.incbin "baserom.gba", 0x5181C0, 0x4A
	.global gUnk_0851820A
gUnk_0851820A:
	.incbin "baserom.gba", 0x51820A, 0x244
	.global gUnk_0851844E
gUnk_0851844E:
	.incbin "baserom.gba", 0x51844E, 0xE
	.global gUnk_0851845C
gUnk_0851845C:
	.incbin "baserom.gba", 0x51845C, 0x30
	.global gUnk_0851848C
gUnk_0851848C:
	.incbin "baserom.gba", 0x51848C, 0x30
	.global gUnk_085184BC
gUnk_085184BC:
	.incbin "baserom.gba", 0x5184BC, 0x30
	.global gUnk_085184EC
gUnk_085184EC:
	.incbin "baserom.gba", 0x5184EC, 0x30
	.global gUnk_0851851C
gUnk_0851851C:
	.incbin "baserom.gba", 0x51851C, 0x30
	.global gUnk_0851854C
gUnk_0851854C:
	.incbin "baserom.gba", 0x51854C, 0x30
	.global gUnk_0851857C
gUnk_0851857C:
	.incbin "baserom.gba", 0x51857C, 0x40
	.global gUnk_085185BC
gUnk_085185BC:
	.incbin "baserom.gba", 0x5185BC, 0x40
	.global gUnk_085185FC
gUnk_085185FC:
	.incbin "baserom.gba", 0x5185FC, 0x40
	.global gUnk_0851863C
gUnk_0851863C:
	.incbin "baserom.gba", 0x51863C, 0xA0
	.global gUnk_085186DC
gUnk_085186DC:
	.incbin "baserom.gba", 0x5186DC, 0x10
	.global gUnk_085186EC
gUnk_085186EC:
	.incbin "baserom.gba", 0x5186EC, 0x10
	.global gUnk_085186FC
gUnk_085186FC:
	.incbin "baserom.gba", 0x5186FC, 0x28
	.global gUnk_08518724
gUnk_08518724:
	.incbin "baserom.gba", 0x518724, 0x30
	.global gUnk_08518754
gUnk_08518754:
	.incbin "baserom.gba", 0x518754, 0x2
	.global gUnk_08518756
gUnk_08518756:
	.incbin "baserom.gba", 0x518756, 0x12
	.global gUnk_08518768
gUnk_08518768:
	.incbin "baserom.gba", 0x518768, 0x4C
	.global gUnk_085187B4
gUnk_085187B4:
	.incbin "baserom.gba", 0x5187B4, 0x8
	.global gUnk_085187BC
gUnk_085187BC:
	.incbin "baserom.gba", 0x5187BC, 0x80
	.global gUnk_0851883C
gUnk_0851883C:
	.incbin "baserom.gba", 0x51883C, 0x5C
	.global gUnk_08518898
gUnk_08518898:
	.incbin "baserom.gba", 0x518898, 0x50
	.global gUnk_085188E8
gUnk_085188E8:
	.incbin "baserom.gba", 0x5188E8, 0x8
	.global gUnk_085188F0
gUnk_085188F0:
	.incbin "baserom.gba", 0x5188F0, 0x48
	.global gUnk_08518938
gUnk_08518938:
	.incbin "baserom.gba", 0x518938, 0x92721C
	.global gUnk_08E3FB54
gUnk_08E3FB54:
	.incbin "baserom.gba", 0xE3FB54, 0x1C04AC
