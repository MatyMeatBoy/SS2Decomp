	thumb_func_start sub_0803D99C
sub_0803D99C: @ 0x0803D99C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803DA3C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	ldr r0, _0803DA40
	ldr r1, _0803DA44
	movs r2, #0x4e
	bl sub_080289C0
	adds r5, r0, #0
	ldr r0, _0803DA48
	ldr r0, [r0, #0]
	ldr r2, _0803DA4C
	adds r1, r0, r2
	movs r2, #0
	add r0, sp, #0xc
	mov r8, r0
_0803D9DA:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _0803DA58
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0803D9DA
	bl sub_080003F0
	movs r2, #0
_0803D9EE:
	cmp r2, #0
	beq _0803DA02
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0803DA02:
	ldr r6, _0803DA50
	ldr r0, _0803DA48
	ldr r0, [r0, #0]
	ldr r2, _0803DA4C
	adds r1, r0, r2
	movs r2, #0
_0803DA0E:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _0803DA54
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0803DA0E
	bl sub_080003F0
	movs r0, #0
_0803DA22:
	cmp r0, #0
	beq _0803DA28
	str r6, [r0, #0x44]
_0803DA28:
	bl sub_080020F4
	cmp r0, #1
	beq _0803DA6C
	cmp r0, #1
	bgt _0803DA5C
	cmp r0, #0
	beq _0803DA66
	b _0803DA80
	.2byte 0x0000
_0803DA3C: .4byte gUnk_03003CE0
_0803DA40: .4byte 0x0006000D
_0803DA44: .4byte 0x00000101
_0803DA48: .4byte gUnk_03005CF4
_0803DA4C: .4byte 0x000007A4
_0803DA50: .4byte sub_08059250
_0803DA54:
	adds r0, r1, #0
	b _0803DA22
_0803DA58:
	adds r2, r1, #0
	b _0803D9EE
_0803DA5C:
	cmp r0, #2
	beq _0803DA74
	cmp r0, #3
	beq _0803DA7C
	b _0803DA80
_0803DA66:
	movs r4, #0x96
	lsls r4, r4, #1
	b _0803DA80
_0803DA6C:
	ldr r4, _0803DA70
	b _0803DA80
_0803DA70: .4byte 0x00000121
_0803DA74:
	ldr r4, _0803DA78
	b _0803DA80
_0803DA78: .4byte 0x00000137
_0803DA7C:
	movs r4, #0x8b
	lsls r4, r4, #1
_0803DA80:
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	movs r0, #0
	movs r2, #0x52
	movs r3, #0
	bl sub_08028AAC
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803DAC4
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_08067D74
	movs r0, #0
	movs r1, #0
	bl sub_080290E4
	movs r0, #0
	movs r1, #0x25
	bl sub_08029174
	movs r5, #2
	adds r7, r4, #0
	b _0803DAD2
	.2byte 0x0000
_0803DAC4: .4byte gUnk_03003CE0
_0803DAC8:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803DADE
_0803DAD2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803DAC8
_0803DADE:
	bl sub_0800CC98
	cmp r0, #0
	bne _0803DB26
	bl sub_0801AB24
	cmp r0, #1
	beq _0803DB04
	cmp r0, #1
	bgt _0803DAF8
	cmp r0, #0
	beq _0803DAFE
	b _0803DB18
_0803DAF8:
	cmp r0, #2
	beq _0803DB0C
	b _0803DB18
_0803DAFE:
	bl sub_080576A8
	b _0803DB18
_0803DB04:
	movs r0, #6
	bl sub_0801AB50
	b _0803DB18
_0803DB0C:
	movs r0, #6
	bl sub_0801AB90
	b _0803DB18
_0803DB14:
	bl sub_080003F0
_0803DB18:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0803DB14
	b _0803DB26
_0803DB22:
	bl sub_080003F0
_0803DB26:
	bl sub_0805F184
	cmp r0, #0
	bne _0803DB22
	b _0803DB34
_0803DB30:
	bl sub_080003F0
_0803DB34:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803DB30
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803DB58
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	b _0803DB60
	.2byte 0x0000
_0803DB58: .4byte 0x001401E1
_0803DB5C:
	bl sub_080003F0
_0803DB60:
	adds r0, r5, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803DB76
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803DB5C
	bl sub_0805EFBC
_0803DB76:
	movs r0, #0
	movs r1, #0x26
	bl sub_08029174
	movs r5, #8
	b _0803DB8C
_0803DB82:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803DB98
_0803DB8C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803DB82
_0803DB98:
	movs r0, #0
	movs r1, #0x22
	bl sub_08029174
	movs r5, #8
	b _0803DBAE
_0803DBA4:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803DBBA
_0803DBAE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803DBA4
_0803DBBA:
	movs r0, #0
	movs r1, #0x23
	bl sub_08029174
	movs r5, #8
	b _0803DBD0
_0803DBC6:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803DBDC
_0803DBD0:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803DBC6
_0803DBDC:
	movs r0, #0
	movs r1, #0x24
	bl sub_08029174
	movs r5, #0x50
	b _0803DBF2
_0803DBE8:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803DC04
_0803DBF2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803DBE8
	b _0803DC04
_0803DC00:
	bl sub_080003F0
_0803DC04:
	bl sub_0805F184
	cmp r0, #0
	bne _0803DC00
	b _0803DC12
_0803DC0E:
	bl sub_080003F0
_0803DC12:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803DC0E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803DC34
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	b _0803DC3C
_0803DC34: .4byte 0x001401E1
_0803DC38:
	bl sub_080003F0
_0803DC3C:
	adds r0, r5, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803DC52
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803DC38
	bl sub_0805EFBC
_0803DC52:
	ldr r6, _0803DC60
	ldr r0, _0803DC64
	ldr r0, [r0, #0]
	ldr r1, _0803DC68
	adds r5, r0, r1
	movs r4, #0
	b _0803DC70
_0803DC60: .4byte sub_0805A9F4
_0803DC64: .4byte gUnk_03005CF4
_0803DC68: .4byte 0x00000E34
_0803DC6C:
	adds r4, #1
	adds r5, #0x28
_0803DC70:
	cmp r4, #0x1d
	bhi _0803DCAE
	adds r0, r5, #0
	bl sub_08000470
	cmp r0, #0
	bne _0803DC6C
	b _0803DC84
_0803DC80:
	bl sub_080003F0
_0803DC84:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r5, #0x20]
	cmp r1, #0
	beq _0803DC80
	movs r0, #0x3c
	str r0, [r5, #8]
	str r6, [r5, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r5, #0x24]
	adds r0, r5, #0
	ldr r1, _0803DCBC
	bl sub_08000274
_0803DCAE:
	movs r0, #0
	movs r1, #0x26
	bl sub_08029174
	movs r5, #7
	b _0803DCCA
	.2byte 0x0000
_0803DCBC: .4byte 0x01E00043
_0803DCC0:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803DCD6
_0803DCCA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803DCC0
_0803DCD6:
	movs r0, #0
	movs r1, #0x23
	bl sub_08029174
	movs r5, #7
	b _0803DCEC
_0803DCE2:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803DCF8
_0803DCEC:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803DCE2
_0803DCF8:
	movs r0, #0
	movs r1, #0x26
	bl sub_08029174
	movs r5, #7
	b _0803DD0E
_0803DD04:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803DD1A
_0803DD0E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803DD04
_0803DD1A:
	movs r0, #0
	movs r1, #0x23
	bl sub_08029174
	movs r5, #7
	b _0803DD30
_0803DD26:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803DD3C
_0803DD30:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803DD26
_0803DD3C:
	movs r0, #0
	movs r1, #0x26
	bl sub_08029174
	movs r5, #7
	b _0803DD52
_0803DD48:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803DD5E
_0803DD52:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803DD48
_0803DD5E:
	movs r0, #0
	movs r1, #0x23
	bl sub_08029174
	movs r5, #0x28
	b _0803DD74
_0803DD6A:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803DD80
_0803DD74:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803DD6A
_0803DD80:
	movs r0, #0
	movs r1, #0
	bl sub_08029174
	movs r0, #0
	movs r1, #1
	bl sub_080290E4
	lsrs r1, r7, #0x10
	movs r0, #0
	movs r2, #0x4c
	movs r3, #0
	bl sub_08028AAC
	movs r5, #3
	b _0803DDAA
_0803DDA0:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803DDB6
_0803DDAA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803DDA0
_0803DDB6:
	lsrs r1, r7, #0x10
	movs r0, #0
	movs r2, #0x4e
	movs r3, #0
	bl sub_08028AAC
	b _0803DDC8
_0803DDC4:
	bl sub_080003F0
_0803DDC8:
	bl sub_0805F184
	cmp r0, #0
	bne _0803DDC4
	b _0803DDD6
_0803DDD2:
	bl sub_080003F0
_0803DDD6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803DDD2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803DDF8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803DE00
_0803DDF8: .4byte 0x001401E2
_0803DDFC:
	bl sub_080003F0
_0803DE00:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803DE16
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803DDFC
	bl sub_0805EFBC
_0803DE16:
	movs r1, #1
	movs r2, #6
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	mov r2, r8
	movs r3, #0
_0803DE26:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _0803DE26
	b _0803DE36
_0803DE32:
	bl sub_080003F0
_0803DE36:
	movs r0, #0xec
	lsls r0, r0, #6
	movs r1, #0xfa
	lsls r1, r1, #7
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _0803DE32
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _0803DE80
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	movs r1, #0
	strh r1, [r0, #0x20]
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0803DE80: .4byte gUnk_03003CE0
	thumb_func_end sub_0803D99C
