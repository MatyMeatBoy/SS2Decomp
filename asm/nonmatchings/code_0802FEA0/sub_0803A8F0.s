	thumb_func_start sub_0803A8F0
sub_0803A8F0: @ 0x0803A8F0
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803A920
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _0803A928
	ldr r0, _0803A924
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x7c]
	b _0803A92E
_0803A920: .4byte gUnk_03003CE0
_0803A924: .4byte gUnk_03005CF4
_0803A928:
	ldr r0, _0803A93C
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x74]
_0803A92E:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A996
	b _0803A944
	.2byte 0x0000
_0803A93C: .4byte gUnk_03005CF4
_0803A940:
	bl sub_080003F0
_0803A944:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A940
	b _0803A952
_0803A94E:
	bl sub_080003F0
_0803A952:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A94E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A974
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A97C
_0803A974: .4byte 0x0014012F
_0803A978:
	bl sub_080003F0
_0803A97C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803A988
	b _0803AD4A
_0803A988:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A978
	bl sub_0805EFBC
	b _0803AD4A
_0803A996:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803A9FA
	b _0803A9A6
_0803A9A2:
	bl sub_080003F0
_0803A9A6:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A9A2
	b _0803A9B4
_0803A9B0:
	bl sub_080003F0
_0803A9B4:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A9B0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A9D8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A9E0
	.2byte 0x0000
_0803A9D8: .4byte 0x0014012E
_0803A9DC:
	bl sub_080003F0
_0803A9E0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803A9EC
	b _0803AD4A
_0803A9EC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A9DC
	bl sub_0805EFBC
	b _0803AD4A
_0803A9FA:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803AA5A
	b _0803AA08
_0803AA04:
	bl sub_080003F0
_0803AA08:
	bl sub_0805F184
	cmp r0, #0
	bne _0803AA04
	b _0803AA16
_0803AA12:
	bl sub_080003F0
_0803AA16:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803AA12
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803AA38
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803AA40
_0803AA38: .4byte 0x0014012D
_0803AA3C:
	bl sub_080003F0
_0803AA40:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803AA4C
	b _0803AD4A
_0803AA4C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803AA3C
	bl sub_0805EFBC
	b _0803AD4A
_0803AA5A:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803AABA
	b _0803AA68
_0803AA64:
	bl sub_080003F0
_0803AA68:
	bl sub_0805F184
	cmp r0, #0
	bne _0803AA64
	b _0803AA76
_0803AA72:
	bl sub_080003F0
_0803AA76:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803AA72
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803AA98
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803AAA0
_0803AA98: .4byte 0x0014012C
_0803AA9C:
	bl sub_080003F0
_0803AAA0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803AAAC
	b _0803AD4A
_0803AAAC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803AA9C
	bl sub_0805EFBC
	b _0803AD4A
_0803AABA:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803AB1A
	b _0803AAC8
_0803AAC4:
	bl sub_080003F0
_0803AAC8:
	bl sub_0805F184
	cmp r0, #0
	bne _0803AAC4
	b _0803AAD6
_0803AAD2:
	bl sub_080003F0
_0803AAD6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803AAD2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803AAF8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803AB00
_0803AAF8: .4byte 0x0014012B
_0803AAFC:
	bl sub_080003F0
_0803AB00:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803AB0C
	b _0803AD4A
_0803AB0C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803AAFC
	bl sub_0805EFBC
	b _0803AD4A
_0803AB1A:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803AB7A
	b _0803AB28
_0803AB24:
	bl sub_080003F0
_0803AB28:
	bl sub_0805F184
	cmp r0, #0
	bne _0803AB24
	b _0803AB36
_0803AB32:
	bl sub_080003F0
_0803AB36:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803AB32
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803AB58
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803AB60
_0803AB58: .4byte 0x0014012A
_0803AB5C:
	bl sub_080003F0
_0803AB60:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803AB6C
	b _0803AD4A
_0803AB6C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803AB5C
	bl sub_0805EFBC
	b _0803AD4A
_0803AB7A:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803ABDA
	b _0803AB88
_0803AB84:
	bl sub_080003F0
_0803AB88:
	bl sub_0805F184
	cmp r0, #0
	bne _0803AB84
	b _0803AB96
_0803AB92:
	bl sub_080003F0
_0803AB96:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803AB92
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803ABB8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803ABC0
_0803ABB8: .4byte 0x00140129
_0803ABBC:
	bl sub_080003F0
_0803ABC0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803ABCC
	b _0803AD4A
_0803ABCC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803ABBC
	bl sub_0805EFBC
	b _0803AD4A
_0803ABDA:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803AC3A
	b _0803ABE8
_0803ABE4:
	bl sub_080003F0
_0803ABE8:
	bl sub_0805F184
	cmp r0, #0
	bne _0803ABE4
	b _0803ABF6
_0803ABF2:
	bl sub_080003F0
_0803ABF6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803ABF2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803AC18
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803AC20
_0803AC18: .4byte 0x00140128
_0803AC1C:
	bl sub_080003F0
_0803AC20:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803AC2C
	b _0803AD4A
_0803AC2C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803AC1C
	bl sub_0805EFBC
	b _0803AD4A
_0803AC3A:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803AC98
	b _0803AC48
_0803AC44:
	bl sub_080003F0
_0803AC48:
	bl sub_0805F184
	cmp r0, #0
	bne _0803AC44
	b _0803AC56
_0803AC52:
	bl sub_080003F0
_0803AC56:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803AC52
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803AC78
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803AC80
_0803AC78: .4byte 0x00140127
_0803AC7C:
	bl sub_080003F0
_0803AC80:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803AD4A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803AC7C
	bl sub_0805EFBC
	b _0803AD4A
_0803AC98:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803ACFC
	b _0803ACA6
_0803ACA2:
	bl sub_080003F0
_0803ACA6:
	bl sub_0805F184
	cmp r0, #0
	bne _0803ACA2
	b _0803ACB4
_0803ACB0:
	bl sub_080003F0
_0803ACB4:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803ACB0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803ACD8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803ACE0
	.2byte 0x0000
_0803ACD8: .4byte 0x00140126
_0803ACDC:
	bl sub_080003F0
_0803ACE0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803AD4A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803ACDC
	bl sub_0805EFBC
	b _0803AD4A
_0803ACF8:
	bl sub_080003F0
_0803ACFC:
	bl sub_0805F184
	cmp r0, #0
	bne _0803ACF8
	b _0803AD0A
_0803AD06:
	bl sub_080003F0
_0803AD0A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803AD06
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803AD2C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803AD34
_0803AD2C: .4byte 0x00140125
_0803AD30:
	bl sub_080003F0
_0803AD34:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803AD4A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803AD30
	bl sub_0805EFBC
_0803AD4A:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803AD70
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
_0803AD70: .4byte gUnk_03003CE0
	thumb_func_end sub_0803A8F0
