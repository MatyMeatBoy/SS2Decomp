	thumb_func_start sub_0804ED18
sub_0804ED18: @ 0x0804ED18
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _0804ED34
	ldr r2, _0804ED2C
	ldr r0, [r2, #0]
	ldr r1, _0804ED30
	b _0804ED3A
_0804ED2C: .4byte gUnk_03005CF4
_0804ED30: .4byte 0x000001C3
_0804ED34:
	ldr r2, _0804ED6C
	ldr r0, [r2, #0]
	ldr r1, _0804ED70
_0804ED3A:
	adds r3, r0, r1
	ldrb r1, [r3, #0]
	movs r0, #4
	orrs r0, r1
	strb r0, [r3, #0]
	adds r4, r2, #0
	ldr r2, [r4, #0]
	movs r3, #8
	ldr r1, [r2, #0x38]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _0804EE1A
	orrs r1, r3
	str r1, [r2, #0x38]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0804EE0C
	ldr r7, _0804ED74
	ldr r0, [r4, #0]
	ldr r2, _0804ED78
	adds r4, r0, r2
	movs r5, #0
	b _0804ED80
_0804ED6C: .4byte gUnk_03005CF4
_0804ED70: .4byte 0x000001B7
_0804ED74: .4byte sub_0804EE20
_0804ED78: .4byte 0x00000E34
_0804ED7C:
	adds r5, #1
	adds r4, #0x28
_0804ED80:
	cmp r5, #0x1d
	bhi _0804EDBE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804ED7C
	b _0804ED94
_0804ED90:
	bl sub_080003F0
_0804ED94:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804ED90
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
_0804EDBE:
	movs r4, #1
	b _0804EDCC
_0804EDC2:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804EDD8
_0804EDCC:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804EDC2
_0804EDD8:
	ldr r0, _0804EE08
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804EDEA
	movs r0, #0x75
	bl sub_08006D08
_0804EDEA:
	adds r0, r6, #0
	movs r1, #0
	bl sub_080290E4
	movs r2, #0xc8
	negs r2, r2
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0xc8
	bl sub_08028D98
	movs r0, #0x75
	bl sub_08006D5C
	b _0804EE1A
_0804EE08: .4byte gUnk_030027D0
_0804EE0C:
	movs r2, #0xc8
	negs r2, r2
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0xc8
	bl sub_08028D98
_0804EE1A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0804ED18
