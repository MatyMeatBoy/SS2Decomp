	thumb_func_start sub_08056538
sub_08056538: @ 0x08056538
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r2, _08056584
	lsls r1, r7, #3
	subs r1, r1, r7
	lsls r1, r1, #2
	adds r6, r1, r2
	adds r3, r2, #4
	adds r3, r1, r3
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	ldrh r5, [r0, #0]
	adds r2, #0xc
	adds r1, r1, r2
	ldrh r4, [r1, #0]
	ldr r1, [r6, #0]
	ldr r2, [r3, #0]
	movs r0, #0
	str r0, [sp, #8]
	lsls r1, r1, #8
	str r1, [sp, #0]
	lsls r2, r2, #8
	str r2, [sp, #4]
	lsls r4, r4, #0x10
	orrs r5, r4
	str r5, [sp, #0xc]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08056588
	adds r6, r1, r0
	add r5, sp, #8
	add r4, sp, #0xc
	b _08056590
_08056584: .4byte gUnk_084B1D40
_08056588: .4byte gUnk_03003CE0
_0805658C:
	bl sub_080003F0
_08056590:
	adds r0, r6, #0
	adds r0, #0x8c
	mov r1, sp
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08021FE0
	cmp r0, #0
	beq _0805658C
	ldr r5, _080565CC
	lsls r4, r7, #3
	subs r4, r4, r7
	lsls r4, r4, #2
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r4, r0
	ldr r0, [r0, #0]
	adds r1, r5, #0
	adds r1, #0x14
	adds r1, r4, r1
	ldr r1, [r1, #0]
	movs r2, #1
	bl sub_08029CEC
	adds r0, r5, #0
	adds r0, #0x18
	adds r4, r4, r0
	ldrh r4, [r4, #0]
	b _080565D6
	.2byte 0x0000
_080565CC: .4byte gUnk_084B1D40
_080565D0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080565D6:
	cmp r4, #0
	beq _080565E6
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080565D0
_080565E6:
	ldr r6, _080565F4
	ldr r0, _080565F8
	ldr r0, [r0, #0]
	ldr r1, _080565FC
	adds r4, r0, r1
	movs r5, #0
	b _08056604
_080565F4: .4byte sub_08056538
_080565F8: .4byte gUnk_03005CF4
_080565FC: .4byte 0x00000E34
_08056600:
	adds r5, #1
	adds r4, #0x28
_08056604:
	cmp r5, #0x1d
	bhi _08056642
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08056600
	b _08056618
_08056614:
	bl sub_080003F0
_08056618:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08056614
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
	adds r1, r7, #0
	bl sub_08000274
_08056642:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08056538
