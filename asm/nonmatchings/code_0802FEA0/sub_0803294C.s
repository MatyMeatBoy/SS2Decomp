	thumb_func_start sub_0803294C
sub_0803294C: @ 0x0803294C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08032988
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
	beq _08032990
	ldr r0, _0803298C
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x7c]
	b _08032996
	.2byte 0x0000
_08032988: .4byte gUnk_03003CE0
_0803298C: .4byte gUnk_03005CF4
_08032990:
	ldr r0, _080329A4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x74]
_08032996:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080329FE
	b _080329AC
	.2byte 0x0000
_080329A4: .4byte gUnk_03005CF4
_080329A8:
	bl sub_080003F0
_080329AC:
	bl sub_0805F184
	cmp r0, #0
	bne _080329A8
	b _080329BA
_080329B6:
	bl sub_080003F0
_080329BA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080329B6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080329DC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080329E4
_080329DC: .4byte 0x001401A4
_080329E0:
	bl sub_080003F0
_080329E4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080329F0
	b _08032DB2
_080329F0:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080329E0
	bl sub_0805EFBC
	b _08032DB2
_080329FE:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08032A62
	b _08032A0E
_08032A0A:
	bl sub_080003F0
_08032A0E:
	bl sub_0805F184
	cmp r0, #0
	bne _08032A0A
	b _08032A1C
_08032A18:
	bl sub_080003F0
_08032A1C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032A18
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08032A40
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032A48
	.2byte 0x0000
_08032A40: .4byte 0x001401A3
_08032A44:
	bl sub_080003F0
_08032A48:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08032A54
	b _08032DB2
_08032A54:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032A44
	bl sub_0805EFBC
	b _08032DB2
_08032A62:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08032AC2
	b _08032A70
_08032A6C:
	bl sub_080003F0
_08032A70:
	bl sub_0805F184
	cmp r0, #0
	bne _08032A6C
	b _08032A7E
_08032A7A:
	bl sub_080003F0
_08032A7E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032A7A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08032AA0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032AA8
_08032AA0: .4byte 0x001401A2
_08032AA4:
	bl sub_080003F0
_08032AA8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08032AB4
	b _08032DB2
_08032AB4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032AA4
	bl sub_0805EFBC
	b _08032DB2
_08032AC2:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08032B22
	b _08032AD0
_08032ACC:
	bl sub_080003F0
_08032AD0:
	bl sub_0805F184
	cmp r0, #0
	bne _08032ACC
	b _08032ADE
_08032ADA:
	bl sub_080003F0
_08032ADE:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032ADA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08032B00
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032B08
_08032B00: .4byte 0x001401A1
_08032B04:
	bl sub_080003F0
_08032B08:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08032B14
	b _08032DB2
_08032B14:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032B04
	bl sub_0805EFBC
	b _08032DB2
_08032B22:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08032B82
	b _08032B30
_08032B2C:
	bl sub_080003F0
_08032B30:
	bl sub_0805F184
	cmp r0, #0
	bne _08032B2C
	b _08032B3E
_08032B3A:
	bl sub_080003F0
_08032B3E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032B3A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08032B60
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032B68
_08032B60: .4byte 0x001401A0
_08032B64:
	bl sub_080003F0
_08032B68:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08032B74
	b _08032DB2
_08032B74:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032B64
	bl sub_0805EFBC
	b _08032DB2
_08032B82:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032BE2
	b _08032B90
_08032B8C:
	bl sub_080003F0
_08032B90:
	bl sub_0805F184
	cmp r0, #0
	bne _08032B8C
	b _08032B9E
_08032B9A:
	bl sub_080003F0
_08032B9E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032B9A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08032BC0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032BC8
_08032BC0: .4byte 0x0014019F
_08032BC4:
	bl sub_080003F0
_08032BC8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08032BD4
	b _08032DB2
_08032BD4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032BC4
	bl sub_0805EFBC
	b _08032DB2
_08032BE2:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08032C42
	b _08032BF0
_08032BEC:
	bl sub_080003F0
_08032BF0:
	bl sub_0805F184
	cmp r0, #0
	bne _08032BEC
	b _08032BFE
_08032BFA:
	bl sub_080003F0
_08032BFE:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032BFA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08032C20
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032C28
_08032C20: .4byte 0x0014019E
_08032C24:
	bl sub_080003F0
_08032C28:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08032C34
	b _08032DB2
_08032C34:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032C24
	bl sub_0805EFBC
	b _08032DB2
_08032C42:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08032CA2
	b _08032C50
_08032C4C:
	bl sub_080003F0
_08032C50:
	bl sub_0805F184
	cmp r0, #0
	bne _08032C4C
	b _08032C5E
_08032C5A:
	bl sub_080003F0
_08032C5E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032C5A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08032C80
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032C88
_08032C80: .4byte 0x0014019D
_08032C84:
	bl sub_080003F0
_08032C88:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08032C94
	b _08032DB2
_08032C94:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032C84
	bl sub_0805EFBC
	b _08032DB2
_08032CA2:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08032D00
	b _08032CB0
_08032CAC:
	bl sub_080003F0
_08032CB0:
	bl sub_0805F184
	cmp r0, #0
	bne _08032CAC
	b _08032CBE
_08032CBA:
	bl sub_080003F0
_08032CBE:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032CBA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08032CE0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032CE8
_08032CE0: .4byte 0x0014019C
_08032CE4:
	bl sub_080003F0
_08032CE8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08032DB2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032CE4
	bl sub_0805EFBC
	b _08032DB2
_08032D00:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08032D64
	b _08032D0E
_08032D0A:
	bl sub_080003F0
_08032D0E:
	bl sub_0805F184
	cmp r0, #0
	bne _08032D0A
	b _08032D1C
_08032D18:
	bl sub_080003F0
_08032D1C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032D18
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08032D40
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032D48
	.2byte 0x0000
_08032D40: .4byte 0x0014019B
_08032D44:
	bl sub_080003F0
_08032D48:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08032DB2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032D44
	bl sub_0805EFBC
	b _08032DB2
_08032D60:
	bl sub_080003F0
_08032D64:
	bl sub_0805F184
	cmp r0, #0
	bne _08032D60
	b _08032D72
_08032D6E:
	bl sub_080003F0
_08032D72:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032D6E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08032D94
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032D9C
_08032D94: .4byte 0x0014019A
_08032D98:
	bl sub_080003F0
_08032D9C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08032DB2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032D98
	bl sub_0805EFBC
_08032DB2:
	adds r0, r5, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08032DE0
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
	.2byte 0x0000
_08032DE0: .4byte gUnk_03003CE0
	thumb_func_end sub_0803294C
