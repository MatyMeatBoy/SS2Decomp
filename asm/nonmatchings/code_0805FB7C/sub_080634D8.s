	thumb_func_start sub_080634D8
sub_080634D8: @ 0x080634D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	str r0, [sp, #0x4c]
	lsrs r1, r1, #0x10
	str r1, [sp, #0x50]
	ldr r4, _08063644
	add r0, sp, #0x10
	mov sl, r0
	movs r0, #5
	movs r1, #1
	negs r1, r1
	ldr r2, _08063648
	mov r9, r2
	str r4, [sp, #0x20]
	str r0, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r0, r4, #0
	mov r1, r9
	bl sub_08006EE0
	str r0, [sp, #0x18]
	add r3, sp, #0x48
	mov r8, r3
	mov r7, sp
	adds r7, #0x4a
	add r5, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	cmp r0, #0
	beq _08063560
	ldr r0, _0806364C
	ands r4, r0
	movs r0, #0xc0
	lsls r0, r0, #0xb
	orrs r0, r4
	mov r1, r9
	bl sub_08006EE0
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _08063560
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r0, r4
	mov r1, r9
	bl sub_08006EE0
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _08063560
	movs r1, #0
	add r2, sp, #0x2c
_08063548:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _08063548
	mov r0, sl
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_08063560:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806358E
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806358E
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806358E
	bl sub_0800CD34
	cmp r0, #0
	bne _0806358E
	ldr r0, [sp, #0x50]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	adds r1, #0x20
	movs r2, #1
	bl sub_08000AF0
_0806358E:
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #5
	strb r0, [r1, #0x1c]
	adds r0, r1, #0
	add r1, sp, #0x50
	ldrb r1, [r1, #0]
	strb r1, [r0, #0x1d]
	ldr r3, [sp, #0x4c]
	lsrs r3, r3, #0x10
	mov r9, r3
	ldr r0, _0806364C
	ldr r1, [sp, #0x4c]
	ands r1, r0
	mov sl, r1
	mov r3, r8
	strh r2, [r3, #0]
	strh r2, [r7, #0]
	adds r7, r5, #0
	adds r5, r6, #0
	lsls r1, r1, #0x10
	str r1, [sp, #0x54]
_080635BA:
	mov r6, r9
	lsls r1, r6, #0x10
	movs r0, #0x30
	str r0, [sp, #0]
	movs r4, #0
	str r4, [sp, #4]
	ldr r2, [sp, #0x54]
	asrs r0, r2, #0x10
	asrs r1, r1, #0x10
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r3, [sp, #0x18]
	str r4, [sp, #0]
	movs r0, #0xa
	add r1, sp, #0x48
	mov r2, sp
	adds r2, #0x4a
	bl sub_08008CC4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl sub_0800CC98
	cmp r0, #0
	bne _08063676
	bl sub_0800CD8C
	cmp r0, #0
	bne _08063676
	bl sub_0800CCCC
	cmp r0, #0
	bne _08063676
	bl sub_0800CD34
	cmp r0, #0
	bne _08063676
	ldr r0, _08063650
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08063654
	mov r0, sl
	mov r1, r9
	movs r2, #0
	bl sub_0800BC44
	movs r3, #0
	ldrsh r2, [r7, r3]
	movs r6, #0
	ldrsh r1, [r5, r6]
	mov r6, r8
	ldrh r3, [r6, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #0xa
	bl sub_08007870
	b _08063676
_08063644: .4byte 0x00050130
_08063648: .4byte gUnk_08518938
_0806364C: .4byte 0x0000FFFF
_08063650: .4byte gUnk_0300602C
_08063654:
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r6, r8
	ldrh r3, [r6, #0]
	movs r2, #1
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0xa
	bl sub_08007CF0
_08063676:
	bl sub_080003F0
	bl sub_0800CED8
	cmp r0, #0
	bne _08063696
	bl sub_0800CB78
	cmp r0, #0
	bne _08063696
	bl sub_0800CD00
	cmp r0, #0
	bne _08063696
	cmp r4, #0
	beq _080635BA
_08063696:
	bl sub_0800048C
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080634D8
