	thumb_func_start sub_0801E5B0
sub_0801E5B0: @ 0x0801E5B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov r8, r1
	str r2, [sp, #0]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0, #0]
	mov sl, r0
	movs r0, #0xe7
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0, #0]
	str r0, [sp, #4]
	cmp r3, #0
	bne _0801E612
	bl sub_080008C8
	movs r1, #0x7f
	ands r1, r0
	adds r0, r7, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #1
	cmp r1, r0
	bgt _0801E606
	movs r0, #0x27
	bl sub_0805865C
	mov r4, r8
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	bl sub_0802247C
	movs r0, #0x64
	mov r9, r0
	b _0801E618
_0801E606:
	movs r0, #0x1a
	bl sub_0805865C
	movs r1, #0xc8
	mov r9, r1
	b _0801E618
_0801E612:
	movs r2, #0xfa
	lsls r2, r2, #2
	mov r9, r2
_0801E618:
	ldrh r0, [r7, #0x20]
	cmp r0, #5
	beq _0801E620
	b _0801E734
_0801E620:
	movs r4, #0
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _0801E6BA
	lsls r0, r0, #2
	ldr r1, _0801E638
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801E638: .4byte _0801E63C
_0801E63C:
	.4byte _0801E664
_0801E640: .4byte _0801E66E
_0801E644: .4byte _0801E676
_0801E648: .4byte _0801E67E
_0801E64C: .4byte _0801E696
_0801E650: .4byte _0801E6A0
_0801E654: .4byte _0801E6BA
_0801E658: .4byte _0801E6AC
_0801E65C: .4byte _0801E6BA
_0801E660: .4byte _0801E6BA
_0801E664:
	ldrh r0, [r7, #0x10]
	cmp r0, #3
	bne _0801E6BA
_0801E66A:
	movs r4, #1
	b _0801E6BA
_0801E66E:
	ldrh r0, [r7, #0x10]
	cmp r0, #5
	bne _0801E6BA
	b _0801E6A6
_0801E676:
	ldrh r0, [r7, #0x10]
	cmp r0, #7
	bne _0801E6BA
	b _0801E66A
_0801E67E:
	ldrh r0, [r7, #0x10]
	cmp r0, #2
	beq _0801E6BA
	cmp r0, #4
	bne _0801E6BA
	adds r0, r7, #0
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	cmp r0, #4
	bhi _0801E6BA
	movs r4, #3
	b _0801E6BA
_0801E696:
	ldrh r0, [r7, #0x10]
	cmp r0, #4
	bne _0801E6A0
	movs r4, #2
	movs r6, #2
_0801E6A0:
	ldrh r0, [r7, #0x10]
	cmp r0, #6
	bne _0801E6BA
_0801E6A6:
	movs r4, #2
	movs r6, #3
	b _0801E6BA
_0801E6AC:
	ldrh r0, [r7, #0x10]
	cmp r0, #1
	beq _0801E66A
	cmp r0, #8
	bne _0801E6BA
	movs r4, #2
	movs r6, #5
_0801E6BA:
	cmp r4, #1
	beq _0801E6F4
	cmp r4, #1
	bgt _0801E6C8
	cmp r4, #0
	beq _0801E6D2
	b _0801E772
_0801E6C8:
	cmp r4, #2
	beq _0801E70E
	cmp r4, #3
	beq _0801E728
	b _0801E772
_0801E6D2:
	adds r0, r7, #0
	adds r0, #0x58
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldrh r0, [r7, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r7, #0x26]
	adds r0, #5
	muls r0, r1, r0
	cmp r0, #0
	bge _0801E6EE
	adds r0, #3
_0801E6EE:
	lsls r0, r0, #0xe
	lsrs r5, r0, #0x10
	b _0801E772
_0801E6F4:
	adds r0, r7, #0
	adds r0, #0x58
	movs r6, #0
	ldrsh r1, [r0, r6]
	ldrh r0, [r7, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r7, #0x26]
	adds r0, #0x12
	muls r0, r1, r0
	movs r1, #0x14
	b _0801E762
_0801E70E:
	adds r0, r7, #0
	adds r0, #0x58
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrh r0, [r7, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r7, #0x26]
	adds r0, #8
	muls r0, r1, r0
	adds r1, r6, #5
	b _0801E762
_0801E728:
	adds r0, r7, #0
	adds r0, #0x58
	ldrh r0, [r0, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	b _0801E766
_0801E734:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0801E76C
	adds r0, r7, #0
	adds r0, #0x58
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldrh r0, [r7, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	adds r1, r1, r0
	ldrh r0, [r7, #0x28]
	adds r0, #0xa
	muls r0, r1, r0
	lsls r0, r0, #3
	movs r6, #0x91
	lsls r6, r6, #1
	adds r1, r7, r6
	ldrh r1, [r1, #0]
	adds r1, #0x48
_0801E762:
	bl sub_080B9394
_0801E766:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _0801E772
_0801E76C:
	adds r0, r7, #0
	adds r0, #0x58
	ldrh r5, [r0, #0]
_0801E772:
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r6, [sp, #4]
	bl sub_080008C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x32
	bl sub_080B95E4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	movs r0, #0xc8
	lsls r0, r0, #0xf
	adds r4, r4, r0
	lsrs r4, r4, #0x10
	adds r1, r5, #0
	muls r1, r5, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r5, r6
	adds r1, r5, #0
	bl sub_080B9394
	muls r0, r4, r0
	mov r1, r9
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xa
	bl sub_080B956C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0801E7C0
	movs r0, #1
_0801E7C0:
	adds r5, r0, #0
	mov r0, sl
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	add r0, sl
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne _0801E85C
	ldr r0, [sp, #0]
	adds r0, #0xbc
	ldrh r1, [r0, #0]
	lsls r0, r5, #0x10
	lsrs r2, r0, #0x10
	movs r3, #0x86
	lsls r3, r3, #2
	add r3, r8
	subs r0, r1, #1
	cmp r0, #6
	bhi _0801E850
	lsls r0, r0, #2
	ldr r1, _0801E7F4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801E7F4: .4byte _0801E7F8
_0801E7F8:
	.4byte _0801E814
_0801E7FC: .4byte _0801E818
_0801E800: .4byte _0801E81C
_0801E804: .4byte _0801E820
_0801E808: .4byte _0801E824
_0801E80C: .4byte _0801E828
_0801E810: .4byte _0801E828
_0801E814:
	ldrh r1, [r3, #0]
	b _0801E82A
_0801E818:
	ldrh r1, [r3, #2]
	b _0801E82A
_0801E81C:
	ldrh r1, [r3, #4]
	b _0801E82A
_0801E820:
	ldrh r1, [r3, #6]
	b _0801E82A
_0801E824:
	ldrh r1, [r3, #8]
	b _0801E82A
_0801E828:
	ldrh r1, [r3, #0xa]
_0801E82A:
	ldr r0, _0801E914
	muls r0, r2, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	ldr r4, _0801E918
	adds r1, r1, r4
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801E850
	movs r2, #1
_0801E850:
	adds r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r0, #0
	bgt _0801E85C
	movs r5, #1
_0801E85C:
	bl sub_0801DE60
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801E8A6
	ldr r0, _0801E91C
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x4c
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0801E8A6
	mov r6, r8
	ldrh r0, [r6, #0xc]
	cmp r0, #2
	bne _0801E8A6
	adds r4, r5, #0
	adds r0, r1, #0
	adds r0, #0x30
	movs r1, #6
	bl sub_0801E0AC
	lsls r0, r0, #0x11
	movs r1, #0xa0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	adds r0, #0x64
	muls r0, r4, r0
	movs r1, #0x64
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0x27
	bl sub_0805865C
_0801E8A6:
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bne _0801E8E4
	ldr r0, _0801E91C
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x44
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0801E8E4
	mov r2, r8
	ldrh r4, [r2, #2]
	lsls r4, r4, #8
	movs r0, #4
	orrs r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r1, #0
	adds r0, #0x30
	movs r1, #4
	bl sub_0801E0AC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08067FE0
_0801E8E4:
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bne _0801E976
	ldr r0, _0801E91C
	ldr r1, [r0, #0]
	adds r1, #0x50
	ldrh r1, [r1, #0]
	adds r3, r0, #0
	cmp r1, #0
	beq _0801E976
	ldrh r1, [r7, #0x1c]
	movs r4, #0x1c
	ldrsh r0, [r7, r4]
	cmp r0, #4
	ble _0801E920
	adds r0, r1, #0
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _0801E922
	.2byte 0x0000
_0801E914: .4byte 0x00001388
_0801E918: .4byte 0x000009C4
_0801E91C: .4byte gUnk_030034E0
_0801E920:
	ldrh r1, [r7, #0x1c]
_0801E922:
	mov r6, r8
	ldrh r2, [r6, #8]
	movs r4, #8
	ldrsh r0, [r6, r4]
	cmp r0, #4
	ble _0801E938
	adds r0, r2, #0
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0801E93C
_0801E938:
	mov r6, r8
	ldrh r0, [r6, #8]
_0801E93C:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r0, r1, r0
	cmp r0, #0
	bge _0801E94C
	negs r0, r0
_0801E94C:
	cmp r0, #1
	bgt _0801E976
	ldr r0, [r3, #0]
	adds r0, #0x30
	movs r1, #7
	bl sub_0801E0AC
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, #0xa
	adds r0, r2, #0
	muls r0, r1, r0
	movs r1, #0xa
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0801E976:
	adds r0, r5, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801E5B0
