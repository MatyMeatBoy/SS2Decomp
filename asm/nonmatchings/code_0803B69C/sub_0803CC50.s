	thumb_func_start sub_0803CC50
sub_0803CC50: @ 0x0803CC50
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803CC8C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	bl sub_0800CE30
	cmp r0, #0
	beq _0803CC94
	ldr r0, _0803CC90
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x7c]
	b _0803CC9A
	.2byte 0x0000
_0803CC8C: .4byte gUnk_03003CE0
_0803CC90: .4byte gUnk_03005CF4
_0803CC94:
	ldr r0, _0803CCA8
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x74]
_0803CC9A:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803CD2C
	b _0803CCB0
	.2byte 0x0000
_0803CCA8: .4byte gUnk_03005CF4
_0803CCAC:
	bl sub_080003F0
_0803CCB0:
	bl sub_0805F184
	cmp r0, #0
	bne _0803CCAC
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803CCD4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803CCDC
	.2byte 0x0000
_0803CCD4: .4byte 0x001404F7
_0803CCD8:
	bl sub_080003F0
_0803CCDC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803CCD8
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803CCF2
	b _0803D1C0
_0803CCF2:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803CD10
	ldr r3, _0803CD0C
	ldr r2, [r3, #0]
	movs r1, #0x80
	lsls r1, r1, #2
	ldr r0, [r2, #0x7c]
	orrs r0, r1
	str r0, [r2, #0x7c]
	b _0803CD1E
	.2byte 0x0000
_0803CD0C: .4byte gUnk_03005CF4
_0803CD10:
	ldr r3, _0803CD24
	ldr r2, [r3, #0]
	movs r1, #0x80
	lsls r1, r1, #2
	ldr r0, [r2, #0x74]
	orrs r0, r1
	str r0, [r2, #0x74]
_0803CD1E:
	adds r2, r3, #0
	ldr r1, _0803CD28
	b _0803D124
_0803CD24: .4byte gUnk_03005CF4
_0803CD28: .4byte 0x000001FF
_0803CD2C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803CDB0
	b _0803CD3A
_0803CD36:
	bl sub_080003F0
_0803CD3A:
	bl sub_0805F184
	cmp r0, #0
	bne _0803CD36
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803CD5C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803CD64
_0803CD5C: .4byte 0x001404F6
_0803CD60:
	bl sub_080003F0
_0803CD64:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803CD60
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803CD7A
	b _0803D1C0
_0803CD7A:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803CD98
	ldr r3, _0803CD94
	ldr r2, [r3, #0]
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r2, #0x7c]
	orrs r0, r1
	str r0, [r2, #0x7c]
	b _0803CDA6
	.2byte 0x0000
_0803CD94: .4byte gUnk_03005CF4
_0803CD98:
	ldr r3, _0803CDAC
	ldr r2, [r3, #0]
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r2, #0x74]
	orrs r0, r1
	str r0, [r2, #0x74]
_0803CDA6:
	adds r2, r3, #0
	movs r1, #0xff
	b _0803D124
_0803CDAC: .4byte gUnk_03005CF4
_0803CDB0:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803CE30
	b _0803CDBE
_0803CDBA:
	bl sub_080003F0
_0803CDBE:
	bl sub_0805F184
	cmp r0, #0
	bne _0803CDBA
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803CDE0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803CDE8
_0803CDE0: .4byte 0x001404F5
_0803CDE4:
	bl sub_080003F0
_0803CDE8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803CDE4
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803CDFE
	b _0803D1C0
_0803CDFE:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803CE18
	ldr r3, _0803CE14
	ldr r2, [r3, #0]
	movs r1, #0x80
	ldr r0, [r2, #0x7c]
	orrs r0, r1
	str r0, [r2, #0x7c]
	b _0803CE24
_0803CE14: .4byte gUnk_03005CF4
_0803CE18:
	ldr r3, _0803CE2C
	ldr r2, [r3, #0]
	movs r1, #0x80
	ldr r0, [r2, #0x74]
	orrs r0, r1
	str r0, [r2, #0x74]
_0803CE24:
	adds r2, r3, #0
	movs r1, #0x7f
	b _0803D124
	.2byte 0x0000
_0803CE2C: .4byte gUnk_03005CF4
_0803CE30:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803CEB0
	b _0803CE3E
_0803CE3A:
	bl sub_080003F0
_0803CE3E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803CE3A
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803CE60
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803CE68
_0803CE60: .4byte 0x001404F4
_0803CE64:
	bl sub_080003F0
_0803CE68:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803CE64
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803CE7E
	b _0803D1C0
_0803CE7E:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803CE98
	ldr r3, _0803CE94
	ldr r2, [r3, #0]
	movs r1, #0x40
	ldr r0, [r2, #0x7c]
	orrs r0, r1
	str r0, [r2, #0x7c]
	b _0803CEA4
_0803CE94: .4byte gUnk_03005CF4
_0803CE98:
	ldr r3, _0803CEAC
	ldr r2, [r3, #0]
	movs r1, #0x40
	ldr r0, [r2, #0x74]
	orrs r0, r1
	str r0, [r2, #0x74]
_0803CEA4:
	adds r2, r3, #0
	movs r1, #0x3f
	b _0803D124
	.2byte 0x0000
_0803CEAC: .4byte gUnk_03005CF4
_0803CEB0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803CF30
	b _0803CEBE
_0803CEBA:
	bl sub_080003F0
_0803CEBE:
	bl sub_0805F184
	cmp r0, #0
	bne _0803CEBA
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803CEE0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803CEE8
_0803CEE0: .4byte 0x001404F3
_0803CEE4:
	bl sub_080003F0
_0803CEE8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803CEE4
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803CEFE
	b _0803D1C0
_0803CEFE:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803CF18
	ldr r3, _0803CF14
	ldr r2, [r3, #0]
	movs r1, #0x20
	ldr r0, [r2, #0x7c]
	orrs r0, r1
	str r0, [r2, #0x7c]
	b _0803CF24
_0803CF14: .4byte gUnk_03005CF4
_0803CF18:
	ldr r3, _0803CF2C
	ldr r2, [r3, #0]
	movs r1, #0x20
	ldr r0, [r2, #0x74]
	orrs r0, r1
	str r0, [r2, #0x74]
_0803CF24:
	adds r2, r3, #0
	movs r1, #0x1f
	b _0803D124
	.2byte 0x0000
_0803CF2C: .4byte gUnk_03005CF4
_0803CF30:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803CFB0
	b _0803CF3E
_0803CF3A:
	bl sub_080003F0
_0803CF3E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803CF3A
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803CF60
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803CF68
_0803CF60: .4byte 0x001404F2
_0803CF64:
	bl sub_080003F0
_0803CF68:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803CF64
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803CF7E
	b _0803D1C0
_0803CF7E:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803CF98
	ldr r3, _0803CF94
	ldr r2, [r3, #0]
	movs r1, #0x10
	ldr r0, [r2, #0x7c]
	orrs r0, r1
	str r0, [r2, #0x7c]
	b _0803CFA4
_0803CF94: .4byte gUnk_03005CF4
_0803CF98:
	ldr r3, _0803CFAC
	ldr r2, [r3, #0]
	movs r1, #0x10
	ldr r0, [r2, #0x74]
	orrs r0, r1
	str r0, [r2, #0x74]
_0803CFA4:
	adds r2, r3, #0
	movs r1, #0xf
	b _0803D124
	.2byte 0x0000
_0803CFAC: .4byte gUnk_03005CF4
_0803CFB0:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803D030
	b _0803CFBE
_0803CFBA:
	bl sub_080003F0
_0803CFBE:
	bl sub_0805F184
	cmp r0, #0
	bne _0803CFBA
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803CFE0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803CFE8
_0803CFE0: .4byte 0x001404F1
_0803CFE4:
	bl sub_080003F0
_0803CFE8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803CFE4
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803CFFE
	b _0803D1C0
_0803CFFE:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803D018
	ldr r3, _0803D014
	ldr r2, [r3, #0]
	movs r1, #8
	ldr r0, [r2, #0x7c]
	orrs r0, r1
	str r0, [r2, #0x7c]
	b _0803D024
_0803D014: .4byte gUnk_03005CF4
_0803D018:
	ldr r3, _0803D02C
	ldr r2, [r3, #0]
	movs r1, #8
	ldr r0, [r2, #0x74]
	orrs r0, r1
	str r0, [r2, #0x74]
_0803D024:
	adds r2, r3, #0
	movs r1, #7
	b _0803D124
	.2byte 0x0000
_0803D02C: .4byte gUnk_03005CF4
_0803D030:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803D0B0
	b _0803D03E
_0803D03A:
	bl sub_080003F0
_0803D03E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803D03A
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803D060
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803D068
_0803D060: .4byte 0x001404F0
_0803D064:
	bl sub_080003F0
_0803D068:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803D064
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803D07E
	b _0803D1C0
_0803D07E:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803D098
	ldr r3, _0803D094
	ldr r2, [r3, #0]
	movs r1, #4
	ldr r0, [r2, #0x7c]
	orrs r0, r1
	str r0, [r2, #0x7c]
	b _0803D0A4
_0803D094: .4byte gUnk_03005CF4
_0803D098:
	ldr r3, _0803D0AC
	ldr r2, [r3, #0]
	movs r1, #4
	ldr r0, [r2, #0x74]
	orrs r0, r1
	str r0, [r2, #0x74]
_0803D0A4:
	adds r2, r3, #0
	movs r1, #3
	b _0803D124
	.2byte 0x0000
_0803D0AC: .4byte gUnk_03005CF4
_0803D0B0:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803D148
	b _0803D0BE
_0803D0BA:
	bl sub_080003F0
_0803D0BE:
	bl sub_0805F184
	cmp r0, #0
	bne _0803D0BA
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803D0E0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803D0E8
_0803D0E0: .4byte 0x001404EF
_0803D0E4:
	bl sub_080003F0
_0803D0E8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803D0E4
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	beq _0803D1C0
	movs r4, #2
	bl sub_0800CE30
	cmp r0, #0
	beq _0803D118
	ldr r2, _0803D114
	ldr r1, [r2, #0]
	ldr r0, [r1, #0x7c]
	orrs r0, r4
	str r0, [r1, #0x7c]
	b _0803D122
	.2byte 0x0000
_0803D114: .4byte gUnk_03005CF4
_0803D118:
	ldr r2, _0803D13C
	ldr r1, [r2, #0]
	ldr r0, [r1, #0x74]
	orrs r0, r4
	str r0, [r1, #0x74]
_0803D122:
	movs r1, #1
_0803D124:
	ldr r0, [r2, #0]
	str r1, [r0, #0x50]
	ldr r0, _0803D140
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803D1C0
	movs r0, #0x32
	bl sub_08006D08
	b _0803D1C0
_0803D13C: .4byte gUnk_03005CF4
_0803D140: .4byte gUnk_030027D0
_0803D144:
	bl sub_080003F0
_0803D148:
	bl sub_0805F184
	cmp r0, #0
	bne _0803D144
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803D16C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803D174
	.2byte 0x0000
_0803D16C: .4byte 0x001404EE
_0803D170:
	bl sub_080003F0
_0803D174:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803D170
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	beq _0803D1C0
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _0803D1A4
	ldr r0, _0803D1A0
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x7c]
	orrs r0, r4
	str r0, [r1, #0x7c]
	b _0803D1AE
	.2byte 0x0000
_0803D1A0: .4byte gUnk_03005CF4
_0803D1A4:
	ldr r0, _0803D1EC
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x74]
	orrs r0, r4
	str r0, [r1, #0x74]
_0803D1AE:
	ldr r0, _0803D1F0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803D1C0
	movs r0, #0x32
	bl sub_08006D08
_0803D1C0:
	adds r0, r5, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803D1F4
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
_0803D1EC: .4byte gUnk_03005CF4
_0803D1F0: .4byte gUnk_030027D0
_0803D1F4: .4byte gUnk_03003CE0
	thumb_func_end sub_0803CC50
