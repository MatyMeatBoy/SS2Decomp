	thumb_func_start sub_0805664C
sub_0805664C: @ 0x0805664C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r2, _08056698
	lsls r1, r7, #1
	adds r1, r1, r7
	lsls r1, r1, #3
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
	ldr r0, _0805669C
	adds r4, r1, r0
	add r6, sp, #8
	add r5, sp, #0xc
	b _080566AC
_08056698: .4byte gUnk_084B1D78
_0805669C: .4byte gUnk_03003CE0
_080566A0:
	bl sub_08058608
	cmp r0, #0
	bne _080566C8
	bl sub_080003F0
_080566AC:
	adds r0, r4, #0
	adds r0, #0x8c
	mov r1, sp
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08021FE0
	cmp r0, #0
	beq _080566A0
	ldrh r1, [r4, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080566A0
_080566C8:
	bl sub_0800CCCC
	cmp r0, #1
	beq _080567CA
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _08056770
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldr r0, [r1, #0x30]
	movs r2, #2
	orrs r0, r2
	str r0, [r1, #0x30]
	bl sub_08067D74
	ldr r0, _08056774
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08056714
	movs r0, #0x24
	bl sub_08006D08
_08056714:
	ldr r3, _08056778
	lsls r2, r7, #1
	adds r2, r2, r7
	lsls r2, r2, #3
	adds r0, r3, #0
	adds r0, #0x10
	adds r0, r2, r0
	ldrh r1, [r0, #0]
	adds r3, #0x14
	adds r2, r2, r3
	ldrh r2, [r2, #0]
	movs r0, #0
	movs r3, #0x5a
	bl sub_08028AAC
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldr r0, [r1, #0x30]
	movs r2, #3
	negs r2, r2
	ands r0, r2
	str r0, [r1, #0x30]
	bl sub_08067D74
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r5, r1
	adds r1, r1, r4
	ldr r0, [r1, #0x30]
	movs r2, #2
	negs r2, r2
	ands r0, r2
	str r0, [r1, #0x30]
	bl sub_0800D108
	ldr r6, _0805677C
	ldr r0, _08056780
	ldr r0, [r0, #0]
	ldr r1, _08056784
	adds r4, r0, r1
	movs r5, #0
	b _0805678C
_08056770: .4byte gUnk_03003CE0
_08056774: .4byte gUnk_030027D0
_08056778: .4byte gUnk_084B1D78
_0805677C: .4byte sub_0805664C
_08056780: .4byte gUnk_03005CF4
_08056784: .4byte 0x00000E34
_08056788:
	adds r5, #1
	adds r4, #0x28
_0805678C:
	cmp r5, #0x1d
	bhi _080567CA
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08056788
	b _080567A0
_0805679C:
	bl sub_080003F0
_080567A0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0805679C
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
_080567CA:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0805664C
