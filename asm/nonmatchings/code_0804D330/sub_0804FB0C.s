	thumb_func_start sub_0804FB0C
sub_0804FB0C: @ 0x0804FB0C
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804FB4C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CB9C
	cmp r0, #0
	bne _0804FB58
	ldr r0, _0804FB50
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804FB5E
	ldr r1, _0804FB54
	movs r0, #0xa5
	str r0, [r1, #0]
	bl sub_08006CB4
	b _0804FB5E
_0804FB4C: .4byte gUnk_03003CE0
_0804FB50: .4byte gUnk_030027D0
_0804FB54: .4byte gUnk_03005CF8
_0804FB58:
	movs r0, #0
	bl sub_080586B4
_0804FB5E:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804FBA0
	bl sub_0801AB24
	cmp r0, #1
	beq _0804FB84
	cmp r0, #1
	bgt _0804FB78
	cmp r0, #0
	beq _0804FB7E
	b _0804FB98
_0804FB78:
	cmp r0, #2
	beq _0804FB8C
	b _0804FB98
_0804FB7E:
	bl sub_080576A8
	b _0804FB98
_0804FB84:
	movs r0, #6
	bl sub_0801AB50
	b _0804FB98
_0804FB8C:
	movs r0, #6
	bl sub_0801AB90
	b _0804FB98
_0804FB94:
	bl sub_080003F0
_0804FB98:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804FB94
_0804FBA0:
	movs r4, #0x14
	b _0804FBAE
_0804FBA4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804FBC0
_0804FBAE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804FBA4
	b _0804FBC0
_0804FBBC:
	bl sub_080003F0
_0804FBC0:
	bl sub_0805F184
	cmp r0, #0
	bne _0804FBBC
	b _0804FBCE
_0804FBCA:
	bl sub_080003F0
_0804FBCE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804FBCA
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804FBF0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804FBF8
	.2byte 0x0000
_0804FBF0: .4byte 0x00140064
_0804FBF4:
	bl sub_080003F0
_0804FBF8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804FBF4
	ldr r0, _0804FC34
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2, #4]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804FC38
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
_0804FC34: .4byte gUnk_03005CF4
_0804FC38: .4byte gUnk_03003CE0
	thumb_func_end sub_0804FB0C
