	thumb_func_start sub_0806D4A4
sub_0806D4A4: @ 0x0806D4A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	bl sub_080020F4
	mov r9, r0
	ldr r0, [r5, #0]
	mov r8, r0
	ldr r1, [r5, #4]
	str r1, [sp, #0xc]
	ldrh r6, [r5, #0x14]
	mov sl, r6
	cmp r0, #3
	bhi _0806D4D4
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r8
	muls r1, r0, r1
	ldr r0, _0806D564
	adds r7, r1, r0
_0806D4D4:
	cmp r9, r8
	bne _0806D508
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0806D564
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
	bge _0806D508
	movs r0, #0
	strh r0, [r4, #0]
_0806D508:
	adds r0, r7, #0
	adds r0, #0xb4
	ldrh r1, [r0, #0]
	adds r4, r0, #0
	mov r2, r8
	lsls r2, r2, #2
	str r2, [sp, #0x10]
	cmp r1, #6
	bhi _0806D52C
_0806D51A:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xa
	bne _0806D522
	b _0806D6D6
_0806D522:
	bl sub_080003F0
	ldrh r0, [r4, #0]
	cmp r0, #6
	bls _0806D51A
_0806D52C:
	cmp r9, r8
	bne _0806D548
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806D548
	bl sub_0800CD34
	cmp r0, #0
	bne _0806D548
	movs r0, #0xb3
	lsls r0, r0, #1
	bl sub_0805865C
_0806D548:
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	str r0, [sp, #4]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #8]
	movs r4, #0
	movs r5, #0
	b _0806D5EC
_0806D564: .4byte gUnk_03003CE0
_0806D568:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _0806D674
	adds r1, r1, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r2, [r0, #0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0806D5E6
	adds r0, r1, #0
	adds r0, #0x68
	adds r1, r7, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bne _0806D5E6
	cmp r0, #0
	beq _0806D5E6
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	ldr r1, [sp, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r2, [sp, #8]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r0, sl
	cmp r0, #5
	beq _0806D5DA
	lsls r0, r1, #0x10
	asrs r1, r0, #0x13
	cmp r1, #0
	bge _0806D5C2
	negs r1, r1
_0806D5C2:
	mov r0, sl
	adds r0, #1
	lsls r2, r0, #1
	cmp r1, r2
	bge _0806D5E6
	lsls r0, r3, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0806D5D6
	negs r0, r0
_0806D5D6:
	cmp r0, r2
	bge _0806D5E6
_0806D5DA:
	adds r0, r4, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	add r0, sp
	strb r5, [r0, #0]
_0806D5E6:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0806D5EC:
	bl sub_08002164
	cmp r5, r0
	blo _0806D568
	movs r5, #0
	cmp r5, r4
	bhs _0806D610
_0806D5FA:
	mov r1, sp
	adds r0, r1, r5
	ldrb r0, [r0, #0]
	movs r1, #0xa
	bl sub_08074DE8
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r4
	blo _0806D5FA
_0806D610:
	cmp r9, r8
	beq _0806D616
	b _0806D710
_0806D616:
	ldr r4, [r7, #0x34]
	movs r5, #0
	mov r9, r4
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r3, r0, #0x11
	ldr r2, _0806D674
	mov sl, r2
	lsls r0, r0, #1
	adds r2, r0, #0
	adds r2, #0x28
_0806D62C:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _0806D678
	ldrh r0, [r4, #2]
	cmp r0, #3
	bhi _0806D678
	adds r1, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r1, r0
	add r0, sl
	adds r0, #0x64
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0806D678
	ldrh r0, [r4, #4]
	cmp r0, #4
	bne _0806D678
	ldrh r0, [r4, #6]
	cmp r0, r6
	bhs _0806D6A6
	strh r6, [r4, #6]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r4, #0]
	adds r0, r4, #0
	adds r0, #0x1c
	asrs r1, r3, #0x10
	bl sub_0801E0BC
	mov r2, r8
	strh r2, [r4, #2]
	b _0806D6A6
	.2byte 0x0000
_0806D674: .4byte gUnk_03003CE0
_0806D678:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0x28
	cmp r5, #7
	bls _0806D62C
	movs r4, #0
	cmp r4, #0
	bne _0806D6A6
	mov r4, r9
	movs r5, #0
	movs r1, #1
	negs r1, r1
_0806D692:
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, r1
	beq _0806D6AE
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #0x28
	cmp r5, #7
	bls _0806D692
_0806D6A6:
	movs r0, #0
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	b _0806D7C4
_0806D6AE:
	mov r0, r8
	strh r0, [r4, #2]
	movs r0, #4
	strh r0, [r4, #4]
	strh r6, [r4, #6]
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r2, r1, #1
	adds r2, #0x28
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r4, #0]
	adds r0, r4, #0
	adds r0, #0x1c
	lsls r1, r1, #0x11
	asrs r1, r1, #0x10
	bl sub_0801E0BC
	b _0806D6A6
_0806D6D6:
	ldr r2, _0806D6E4
	ldr r1, [sp, #0x10]
	adds r2, r1, r2
	movs r1, #1
	ldr r4, [sp, #0xc]
	lsls r1, r4
	b _0806D7D0
_0806D6E4: .4byte gUnk_030063E0
_0806D6E8:
	mov r0, r8
	strh r0, [r3, #2]
	movs r0, #4
	strh r0, [r3, #4]
	strh r6, [r3, #6]
	lsls r1, r6, #2
	adds r1, r1, r6
	lsls r2, r1, #1
	adds r2, #0x28
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r3, #0]
	adds r0, r3, #0
	adds r0, #0x1c
	lsls r1, r1, #0x11
	asrs r1, r1, #0x10
	bl sub_0801E0BC
	b _0806D7C4
_0806D710:
	movs r5, #0
	cmp r5, r4
	bhs _0806D7C4
	movs r1, #0xa6
	lsls r1, r1, #1
	mov ip, r1
	adds r2, r1, #0
	mov r1, r9
	muls r1, r2, r1
_0806D722:
	mov r2, sp
	adds r0, r2, r5
	ldrb r0, [r0, #0]
	cmp r0, r9
	bne _0806D7BA
	ldr r0, _0806D788
	adds r7, r1, r0
	ldr r3, [r7, #0x34]
	movs r5, #0
	mov r9, r0
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r1, r0, #0x11
	lsls r0, r0, #1
	adds r2, r0, #0
	adds r2, #0x28
_0806D742:
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _0806D78C
	ldrh r0, [r3, #2]
	cmp r0, #3
	bhi _0806D78C
	mov r4, ip
	muls r4, r0, r4
	adds r0, r4, #0
	add r0, r9
	adds r0, #0x64
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0806D78C
	ldrh r0, [r3, #4]
	cmp r0, #4
	bne _0806D78C
	ldrh r0, [r3, #6]
	cmp r0, r6
	bhs _0806D7C4
	mov r0, r8
	strh r0, [r3, #2]
	strh r6, [r3, #6]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r3, #0]
	adds r0, r3, #0
	adds r0, #0x1c
	asrs r1, r1, #0x10
	bl sub_0801E0BC
	b _0806D7C4
	.2byte 0x0000
_0806D788: .4byte gUnk_03003CE0
_0806D78C:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #0x28
	cmp r5, #7
	bls _0806D742
	movs r1, #0
	cmp r1, #0
	bne _0806D7C4
	ldr r3, [r7, #0x34]
	movs r5, #0
	subs r1, #1
_0806D7A4:
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, r1
	beq _0806D6E8
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r3, #0x28
	cmp r5, #7
	bls _0806D7A4
	b _0806D7C4
_0806D7BA:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r4
	blo _0806D722
_0806D7C4:
	ldr r2, _0806D7E8
	ldr r4, [sp, #0x10]
	adds r2, r4, r2
	movs r1, #1
	ldr r0, [sp, #0xc]
	lsls r1, r0
_0806D7D0:
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0806D7E8: .4byte gUnk_030063E0
	thumb_func_end sub_0806D4A4
