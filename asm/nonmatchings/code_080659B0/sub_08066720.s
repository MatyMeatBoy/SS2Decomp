	thumb_func_start sub_08066720
sub_08066720: @ 0x08066720
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r9, r0
	movs r0, #2
	mov r1, r9
	str r0, [r1, #4]
	bl sub_080020F4
	str r0, [sp, #0x10]
	bl sub_08002118
	adds r0, #8
	mov r8, r0
	movs r4, #0
	mov r5, sp
	b _08066758
_08066748:
	adds r0, r4, #0
	bl sub_08002238
	adds r0, #0x14
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	stm r5!, {r0}
	adds r4, #1
_08066758:
	bl sub_08002164
	cmp r4, r0
	blo _08066748
	bl sub_08002164
	adds r7, r0, #0
_08066766:
	movs r0, #0xb1
	mov r1, r8
	strb r0, [r1, #0]
	mov r1, r9
	ldrb r0, [r1, #0]
	mov r1, r8
	strb r0, [r1, #1]
	mov r1, r9
	ldrb r0, [r1, #1]
	mov r1, r8
	strb r0, [r1, #2]
	bl sub_080003F0
	movs r2, #0
	movs r4, #0
	cmp r4, r7
	bhs _080667A0
	mov r0, r9
	ldrb r3, [r0, #0]
	mov r1, sp
_0806678E:
	ldr r0, [r1, #0]
	ldrb r0, [r0, #0]
	cmp r0, r3
	bne _08066798
	adds r2, #1
_08066798:
	adds r1, #4
	adds r4, #1
	cmp r4, r7
	blo _0806678E
_080667A0:
	cmp r2, r7
	blo _08066766
	movs r1, #0
	mov sl, r1
	movs r0, #0
	str r0, [sp, #0x14]
	mov r1, r9
	ldrb r0, [r1, #1]
	movs r4, #0
	cmp r0, #0
	beq _08066822
	mov r6, r9
	adds r6, #8
_080667BA:
	movs r0, #0xb2
	mov r1, r8
	strb r0, [r1, #1]
	mov r0, sp
	ldrb r0, [r0, #0x10]
	strb r0, [r1, #0]
	lsrs r5, r4, #1
	adds r0, r5, #1
	strb r0, [r1, #2]
	ldr r0, [r6, #0]
	str r0, [r1, #4]
	ldr r0, [r6, #4]
	str r0, [r1, #8]
	bl sub_080003F0
	movs r2, #0
	movs r3, #0
	cmp r2, r7
	bhs _080667F8
	movs r0, #0x7f
	subs r5, r0, r5
	mov r1, sp
_080667E6:
	ldr r0, [r1, #0]
	ldrb r0, [r0, #0]
	cmp r5, r0
	bne _080667F0
	adds r2, #1
_080667F0:
	adds r1, #4
	adds r3, #1
	cmp r3, r7
	blo _080667E6
_080667F8:
	cmp r2, r7
	bne _08066808
	adds r6, #8
	adds r4, #2
	str r4, [sp, #0x14]
	movs r1, #0
	mov sl, r1
	b _08066812
_08066808:
	ldr r0, [sp, #0x14]
	cmp r0, r4
	bne _08066812
	movs r1, #1
	add sl, r1
_08066812:
	mov r0, sl
	cmp r0, #0x3c
	bhi _08066766
	mov r1, r9
	ldrb r0, [r1, #1]
	lsls r0, r0, #1
	cmp r4, r0
	blo _080667BA
_08066822:
	mov r0, sl
	cmp r0, #0x3c
	bhi _08066766
	adds r0, r4, #1
	mov r1, r8
	strb r0, [r1, #2]
	bl sub_0800224C
	ldr r1, _08066890
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	cmp r0, #0
	bge _08066842
	movs r0, #0
	str r0, [r1, #0]
_08066842:
	ldr r0, _08066894
	ldr r7, [r0, #0]
	movs r6, #0
	ldr r0, [r1, #0]
	cmp r6, r0
	bhs _0806686E
	adds r5, r7, #0
	adds r5, #0x88
	adds r4, r7, #0
	mov r9, r1
_08066856:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x88
	bl memcpy
	adds r5, #0x88
	adds r4, #0x88
	adds r6, #1
	mov r1, r9
	ldr r0, [r1, #0]
	cmp r6, r0
	blo _08066856
_0806686E:
	lsls r0, r6, #4
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, r0, r7
	movs r1, #0
	str r1, [r0, #4]
	movs r0, #0x80
	mov r1, r8
	strb r0, [r1, #1]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08066890: .4byte gUnk_03006338
_08066894: .4byte gUnk_03006300
	thumb_func_end sub_08066720
