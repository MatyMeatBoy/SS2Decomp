	thumb_func_start sub_0805442C
sub_0805442C: @ 0x0805442C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r4, _08054460
	ldr r2, [r4, #0]
	movs r3, #2
	ldr r1, [r2, #0x38]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _0805450E
	orrs r1, r3
	str r1, [r2, #0x38]
	ldr r0, _08054464
	movs r1, #5
	bl sub_08068070
	bl sub_0800CCCC
	cmp r0, #0
	bne _08054500
	ldr r7, _08054468
	ldr r0, [r4, #0]
	ldr r1, _0805446C
	adds r4, r0, r1
	movs r5, #0
	b _08054474
_08054460: .4byte gUnk_03005CF4
_08054464: .4byte sub_0805990C
_08054468: .4byte sub_08054514
_0805446C: .4byte 0x00000E34
_08054470:
	adds r5, #1
	adds r4, #0x28
_08054474:
	cmp r5, #0x1d
	bhi _080544B2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08054470
	b _08054488
_08054484:
	bl sub_080003F0
_08054488:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08054484
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
_080544B2:
	movs r4, #1
	b _080544C0
_080544B6:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080544CC
_080544C0:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080544B6
_080544CC:
	ldr r0, _080544FC
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080544DE
	movs r0, #0x75
	bl sub_08006D08
_080544DE:
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
	b _0805450E
_080544FC: .4byte gUnk_030027D0
_08054500:
	movs r2, #0xc8
	negs r2, r2
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0xc8
	bl sub_08028D98
_0805450E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0805442C
