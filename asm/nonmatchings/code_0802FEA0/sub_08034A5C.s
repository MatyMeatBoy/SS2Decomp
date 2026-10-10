	thumb_func_start sub_08034A5C
sub_08034A5C: @ 0x08034A5C
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08034A8C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _08034A94
	ldr r0, _08034A90
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x7c]
	b _08034A9A
_08034A8C: .4byte gUnk_03003CE0
_08034A90: .4byte gUnk_03005CF4
_08034A94:
	ldr r0, _08034AAC
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x74]
_08034A9A:
	bl sub_0800CE30
	cmp r0, #0
	beq _08034AB0
	ldr r0, _08034AAC
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _08034AB8
_08034AAC: .4byte gUnk_03005CF4
_08034AB0:
	ldr r0, _08034AC8
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_08034AB8:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08034B22
	b _08034AD0
_08034AC8: .4byte gUnk_03005CF4
_08034ACC:
	bl sub_080003F0
_08034AD0:
	bl sub_0805F184
	cmp r0, #0
	bne _08034ACC
	b _08034ADE
_08034ADA:
	bl sub_080003F0
_08034ADE:
	bl sub_0805EF90
	cmp r0, #0
	bne _08034ADA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034B00
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034B08
_08034B00: .4byte 0x001401DE
_08034B04:
	bl sub_080003F0
_08034B08:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08034B14
	b _08034F3A
_08034B14:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034B04
	bl sub_0805EFBC
	b _08034F3A
_08034B22:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08034B86
	b _08034B32
_08034B2E:
	bl sub_080003F0
_08034B32:
	bl sub_0805F184
	cmp r0, #0
	bne _08034B2E
	b _08034B40
_08034B3C:
	bl sub_080003F0
_08034B40:
	bl sub_0805EF90
	cmp r0, #0
	bne _08034B3C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034B64
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034B6C
	.2byte 0x0000
_08034B64: .4byte 0x001401DD
_08034B68:
	bl sub_080003F0
_08034B6C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08034B78
	b _08034F3A
_08034B78:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034B68
	bl sub_0805EFBC
	b _08034F3A
_08034B86:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08034BEA
	b _08034B96
_08034B92:
	bl sub_080003F0
_08034B96:
	bl sub_0805F184
	cmp r0, #0
	bne _08034B92
	b _08034BA4
_08034BA0:
	bl sub_080003F0
_08034BA4:
	bl sub_0805EF90
	cmp r0, #0
	bne _08034BA0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034BC8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034BD0
	.2byte 0x0000
_08034BC8: .4byte 0x001401DC
_08034BCC:
	bl sub_080003F0
_08034BD0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08034BDC
	b _08034F3A
_08034BDC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034BCC
	bl sub_0805EFBC
	b _08034F3A
_08034BEA:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _08034C4A
	b _08034BF8
_08034BF4:
	bl sub_080003F0
_08034BF8:
	bl sub_0805F184
	cmp r0, #0
	bne _08034BF4
	b _08034C06
_08034C02:
	bl sub_080003F0
_08034C06:
	bl sub_0805EF90
	cmp r0, #0
	bne _08034C02
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034C28
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034C30
_08034C28: .4byte 0x001401DB
_08034C2C:
	bl sub_080003F0
_08034C30:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08034C3C
	b _08034F3A
_08034C3C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034C2C
	bl sub_0805EFBC
	b _08034F3A
_08034C4A:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _08034CAA
	b _08034C58
_08034C54:
	bl sub_080003F0
_08034C58:
	bl sub_0805F184
	cmp r0, #0
	bne _08034C54
	b _08034C66
_08034C62:
	bl sub_080003F0
_08034C66:
	bl sub_0805EF90
	cmp r0, #0
	bne _08034C62
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034C88
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034C90
_08034C88: .4byte 0x001401DA
_08034C8C:
	bl sub_080003F0
_08034C90:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08034C9C
	b _08034F3A
_08034C9C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034C8C
	bl sub_0805EFBC
	b _08034F3A
_08034CAA:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08034D0A
	b _08034CB8
_08034CB4:
	bl sub_080003F0
_08034CB8:
	bl sub_0805F184
	cmp r0, #0
	bne _08034CB4
	b _08034CC6
_08034CC2:
	bl sub_080003F0
_08034CC6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08034CC2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034CE8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034CF0
_08034CE8: .4byte 0x001401D9
_08034CEC:
	bl sub_080003F0
_08034CF0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08034CFC
	b _08034F3A
_08034CFC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034CEC
	bl sub_0805EFBC
	b _08034F3A
_08034D0A:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08034D6A
	b _08034D18
_08034D14:
	bl sub_080003F0
_08034D18:
	bl sub_0805F184
	cmp r0, #0
	bne _08034D14
	b _08034D26
_08034D22:
	bl sub_080003F0
_08034D26:
	bl sub_0805EF90
	cmp r0, #0
	bne _08034D22
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034D48
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034D50
_08034D48: .4byte 0x001401D8
_08034D4C:
	bl sub_080003F0
_08034D50:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08034D5C
	b _08034F3A
_08034D5C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034D4C
	bl sub_0805EFBC
	b _08034F3A
_08034D6A:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08034DCA
	b _08034D78
_08034D74:
	bl sub_080003F0
_08034D78:
	bl sub_0805F184
	cmp r0, #0
	bne _08034D74
	b _08034D86
_08034D82:
	bl sub_080003F0
_08034D86:
	bl sub_0805EF90
	cmp r0, #0
	bne _08034D82
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034DA8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034DB0
_08034DA8: .4byte 0x001401D7
_08034DAC:
	bl sub_080003F0
_08034DB0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08034DBC
	b _08034F3A
_08034DBC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034DAC
	bl sub_0805EFBC
	b _08034F3A
_08034DCA:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08034E2A
	b _08034DD8
_08034DD4:
	bl sub_080003F0
_08034DD8:
	bl sub_0805F184
	cmp r0, #0
	bne _08034DD4
	b _08034DE6
_08034DE2:
	bl sub_080003F0
_08034DE6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08034DE2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034E08
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034E10
_08034E08: .4byte 0x001401D6
_08034E0C:
	bl sub_080003F0
_08034E10:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08034E1C
	b _08034F3A
_08034E1C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034E0C
	bl sub_0805EFBC
	b _08034F3A
_08034E2A:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08034E88
	b _08034E38
_08034E34:
	bl sub_080003F0
_08034E38:
	bl sub_0805F184
	cmp r0, #0
	bne _08034E34
	b _08034E46
_08034E42:
	bl sub_080003F0
_08034E46:
	bl sub_0805EF90
	cmp r0, #0
	bne _08034E42
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034E68
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034E70
_08034E68: .4byte 0x001401D5
_08034E6C:
	bl sub_080003F0
_08034E70:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08034F3A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034E6C
	bl sub_0805EFBC
	b _08034F3A
_08034E88:
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _08034EEC
	b _08034E96
_08034E92:
	bl sub_080003F0
_08034E96:
	bl sub_0805F184
	cmp r0, #0
	bne _08034E92
	b _08034EA4
_08034EA0:
	bl sub_080003F0
_08034EA4:
	bl sub_0805EF90
	cmp r0, #0
	bne _08034EA0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034EC8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034ED0
	.2byte 0x0000
_08034EC8: .4byte 0x001401D4
_08034ECC:
	bl sub_080003F0
_08034ED0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08034F3A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034ECC
	bl sub_0805EFBC
	b _08034F3A
_08034EE8:
	bl sub_080003F0
_08034EEC:
	bl sub_0805F184
	cmp r0, #0
	bne _08034EE8
	b _08034EFA
_08034EF6:
	bl sub_080003F0
_08034EFA:
	bl sub_0805EF90
	cmp r0, #0
	bne _08034EF6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034F1C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034F24
_08034F1C: .4byte 0x001401D3
_08034F20:
	bl sub_080003F0
_08034F24:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08034F3A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034F20
	bl sub_0805EFBC
_08034F3A:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08034F60
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08034F60: .4byte gUnk_03003CE0
	thumb_func_end sub_08034A5C
