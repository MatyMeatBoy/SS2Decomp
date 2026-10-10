	thumb_func_start sub_0804DA44
sub_0804DA44: @ 0x0804DA44
	push {r4, r5, r6, lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _0804DA88
	bl sub_0801AB24
	cmp r0, #1
	beq _0804DA6C
	cmp r0, #1
	bgt _0804DA60
	cmp r0, #0
	beq _0804DA66
	b _0804DA80
_0804DA60:
	cmp r0, #2
	beq _0804DA74
	b _0804DA80
_0804DA66:
	bl sub_080576A8
	b _0804DA80
_0804DA6C:
	movs r0, #6
	bl sub_0801AB50
	b _0804DA80
_0804DA74:
	movs r0, #6
	bl sub_0801AB90
	b _0804DA80
_0804DA7C:
	bl sub_080003F0
_0804DA80:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804DA7C
_0804DA88:
	ldr r6, _0804DA98
	ldr r0, _0804DA9C
	ldr r0, [r0, #0]
	ldr r1, _0804DAA0
	adds r4, r0, r1
	movs r5, #0
	b _0804DAA8
	.2byte 0x0000
_0804DA98: .4byte sub_0805664C
_0804DA9C: .4byte gUnk_03005CF4
_0804DAA0: .4byte 0x00000E34
_0804DAA4:
	adds r5, #1
	adds r4, #0x28
_0804DAA8:
	cmp r5, #0x1d
	bhi _0804DAE6
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804DAA4
	b _0804DABC
_0804DAB8:
	bl sub_080003F0
_0804DABC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804DAB8
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08000274
_0804DAE6:
	ldr r6, _0804DAF4
	ldr r0, _0804DAF8
	ldr r0, [r0, #0]
	ldr r1, _0804DAFC
	adds r4, r0, r1
	movs r5, #0
	b _0804DB04
_0804DAF4: .4byte sub_0805664C
_0804DAF8: .4byte gUnk_03005CF4
_0804DAFC: .4byte 0x00000E34
_0804DB00:
	adds r5, #1
	adds r4, #0x28
_0804DB04:
	cmp r5, #0x1d
	bhi _0804DB42
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804DB00
	b _0804DB18
_0804DB14:
	bl sub_080003F0
_0804DB18:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804DB14
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_08000274
_0804DB42:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_0804DA44
