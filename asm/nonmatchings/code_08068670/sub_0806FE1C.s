	thumb_func_start sub_0806FE1C
sub_0806FE1C: @ 0x0806FE1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	bl sub_080020F4
	mov r9, r0
	ldr r6, [r5, #0]
	ldr r0, [r5, #4]
	mov sl, r0
	ldrh r7, [r5, #0x14]
	cmp r6, #3
	bhi _0806FE4A
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0806FF10
	adds r1, r1, r0
	mov r8, r1
_0806FE4A:
	cmp r9, r6
	bne _0806FE7E
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0806FF10
	adds r4, r4, r0
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x14]
	bl sub_0806898C
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0xc2
	ldrh r1, [r4, #0]
	subs r1, r1, r0
	strh r1, [r4, #0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0806FE7E
	movs r0, #0
	strh r0, [r4, #0]
_0806FE7E:
	mov r0, r8
	adds r0, #0xb6
	ldrh r1, [r0, #0]
	adds r4, r0, #0
	lsls r5, r6, #2
	cmp r1, #0
	bne _0806FE96
_0806FE8C:
	bl sub_080003F0
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _0806FE8C
_0806FE96:
	cmp r9, r6
	bne _0806FEEE
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806FEB0
	bl sub_0800CD34
	cmp r0, #0
	bne _0806FEB0
	movs r0, #0x2d
	bl sub_0805865C
_0806FEB0:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r6, r0
	ldr r1, _0806FF10
	adds r0, r0, r1
	movs r1, #4
	bl sub_0801E164
	adds r3, r0, #0
	cmp r3, #0
	beq _0806FEEE
	movs r2, #0
	strh r6, [r3, #2]
	lsls r1, r7, #2
	adds r1, r1, r7
	adds r1, #0xf
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	strh r0, [r3, #0]
	movs r0, #4
	strh r0, [r3, #4]
	ldr r1, _0806FF14
	lsls r0, r7, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	subs r0, #1
	strh r0, [r3, #6]
	mov r0, r8
	strh r2, [r0, #0x24]
	strh r2, [r0, #0x26]
_0806FEEE:
	ldr r2, _0806FF18
	adds r2, r5, r2
	movs r1, #1
	mov r0, sl
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0806FF10: .4byte gUnk_03003CE0
_0806FF14: .4byte gUnk_084EC1C0
_0806FF18: .4byte gUnk_030063E0
	thumb_func_end sub_0806FE1C
