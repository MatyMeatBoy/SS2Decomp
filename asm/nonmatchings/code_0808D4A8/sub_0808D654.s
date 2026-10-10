	thumb_func_start sub_0808D654
sub_0808D654: @ 0x0808D654
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x8c
	adds r6, r0, #0
	ldr r1, _0808D6D4
	movs r2, #3
	bl sub_0801623C
	ldrh r0, [r6, #0]
	ldrh r1, [r6, #2]
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r6, #2]
	movs r2, #0x81
	lsls r2, r2, #2
	adds r4, r6, r2
	adds r0, r4, #0
	bl sub_08019F60
	adds r0, r6, #0
	adds r0, #0x6c
	strh r5, [r0, #0]
	adds r2, r6, #0
	adds r2, #0x6a
	strh r5, [r2, #0]
	subs r0, #4
	strh r5, [r0, #0]
	movs r3, #6
	ldrsh r1, [r4, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r3, #0xeb
	lsls r3, r3, #1
	adds r1, r6, r3
	strh r0, [r1, #0]
	adds r1, r6, #0
	adds r1, #0x5c
	strh r0, [r1, #0]
	movs r1, #4
	ldrsh r0, [r4, r1]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r3, #2
	adds r1, r6, r3
	strh r0, [r1, #0]
	adds r1, r6, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	strh r5, [r6, #0xc]
	mov sl, r5
	movs r4, #0
	str r4, [sp, #0x84]
	ldr r0, _0808D6D8
	str r0, [sp, #0x88]
	movs r1, #0
	str r1, [sp, #0x80]
	str r1, [r6, #0x4c]
	adds r7, r2, #0
	b _0808D95E
_0808D6D4: .4byte gUnk_084A1910
_0808D6D8: .4byte 0x0000FFFF
_0808D6DC:
	adds r0, r6, #0
	bl sub_0801C8F0
	ldrh r4, [r6, #0xc]
	cmp r4, #0
	beq _0808D6F6
	cmp r4, #0
	blt _0808D738
	cmp r4, #0xa
	beq _0808D714
	cmp r4, #0xb
	beq _0808D724
	b _0808D738
_0808D6F6:
	str r4, [sp, #0]
	add r0, sp, #0x10
	ldr r1, _0808D710
	movs r2, #5
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	adds r0, r6, #0
	adds r0, #0x68
	strh r4, [r0, #0]
	b _0808D738
	.2byte 0x0000
_0808D710: .4byte 0x0005005D
_0808D714:
	ldr r2, [sp, #0x84]
	cmp r2, #0
	bne _0808D738
	movs r3, #1
	str r3, [sp, #0x84]
	movs r4, #8
	mov sl, r4
	b _0808D738
_0808D724:
	ldr r0, [sp, #0x84]
	cmp r0, #0
	bne _0808D738
	movs r1, #1
	str r1, [sp, #0x84]
	movs r2, #0x14
	mov sl, r2
	movs r0, #2
	bl sub_080586D0
_0808D738:
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	ldr r1, [r6, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r9, r8
	add r0, sp, #0x10
	movs r3, #0
	movs r4, #5
	strb r4, [r0, #0x1c]
	ldr r0, [r6, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r5, sp
	adds r5, #0x7a
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x84]
	cmp r0, #0
	beq _0808D856
	movs r0, #1
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0808D7CA
	bl sub_0800CCCC
	cmp r0, #0
	bne _0808D7CA
	bl sub_0800CC98
	cmp r0, #0
	bne _0808D7CA
	bl sub_0800CD8C
	cmp r0, #0
	bne _0808D7CA
	bl sub_0800CD34
	cmp r0, #0
	bne _0808D7CA
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	adds r2, r6, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	ldrh r3, [r7, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_0808D7CA:
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r0, #0
	bne _0808D89A
	ldrh r0, [r6, #0xc]
	cmp r0, #0xb
	bne _0808D7E0
	b _0808D970
_0808D7E0:
	mov r0, sl
	strh r0, [r6, #0xc]
	adds r0, r6, #0
	bl sub_08019CE8
	movs r1, #0
	str r1, [sp, #0x84]
	adds r0, r6, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x64
	muls r0, r1, r0
	movs r3, #0xeb
	lsls r3, r3, #1
	adds r1, r6, r3
	movs r4, #0
	ldrsh r1, [r1, r4]
	bl sub_080B9394
	adds r1, r0, #0
	cmp r0, #9
	bgt _0808D814
	movs r0, #7
	strh r0, [r7, #0]
	b _0808D89A
_0808D814:
	cmp r0, #0xe
	bgt _0808D81E
	movs r0, #6
	strh r0, [r7, #0]
	b _0808D89A
_0808D81E:
	cmp r0, #0x13
	bgt _0808D828
	movs r0, #5
	strh r0, [r7, #0]
	b _0808D89A
_0808D828:
	cmp r0, #0x1d
	bgt _0808D832
	movs r0, #4
	strh r0, [r7, #0]
	b _0808D89A
_0808D832:
	cmp r0, #0x31
	bgt _0808D83C
	movs r0, #3
	strh r0, [r7, #0]
	b _0808D89A
_0808D83C:
	cmp r0, #0x45
	bgt _0808D846
	movs r0, #2
	strh r0, [r7, #0]
	b _0808D89A
_0808D846:
	cmp r1, #0x59
	bgt _0808D850
	movs r0, #1
	strh r0, [r7, #0]
	b _0808D89A
_0808D850:
	mov r0, sl
	strh r0, [r7, #0]
	b _0808D89A
_0808D856:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0808D89A
	bl sub_0800CC98
	cmp r0, #0
	bne _0808D89A
	bl sub_0800CD8C
	cmp r0, #0
	bne _0808D89A
	bl sub_0800CD34
	cmp r0, #0
	bne _0808D89A
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r2, r6, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	ldrh r3, [r7, #0]
	mov r4, r9
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_0808D89A:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	beq _0808D8C2
	ldr r1, [sp, #0x80]
	cmp r1, r0
	beq _0808D8C2
	adds r0, r6, #0
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808D8B6
	movs r2, #0xa
	mov sl, r2
_0808D8B6:
	ldr r3, [r6, #0x4c]
	str r3, [sp, #0x80]
	movs r4, #0xa
	str r4, [sp, #0x88]
	movs r0, #0
	str r0, [sp, #0x7c]
_0808D8C2:
	ldr r0, [sp, #0x88]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x88]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0808D92C
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _0808D8E8
	ldr r4, _0808D8E4
	str r4, [sp, #0x88]
	b _0808D936
_0808D8E4: .4byte 0x0000FFFF
_0808D8E8:
	bl sub_0800CC98
	cmp r0, #0
	bne _0808D90E
	bl sub_0800CCCC
	cmp r0, #0
	bne _0808D90E
	bl sub_0800CD34
	cmp r0, #0
	bne _0808D90E
	ldr r0, [sp, #0x7c]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	ldr r1, [sp, #0x80]
	bl sub_0801A120
_0808D90E:
	movs r0, #2
	ldr r1, [sp, #0x88]
	ands r0, r1
	cmp r0, #0
	beq _0808D936
	ldr r2, [sp, #0x7c]
	lsls r0, r2, #0x10
	ldr r3, _0808D928
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
	b _0808D936
	.2byte 0x0000
_0808D928: .4byte 0xFFFF0000
_0808D92C:
	ldr r4, _0808D9A0
	str r4, [sp, #0x88]
	movs r0, #0
	str r0, [sp, #0x80]
	str r0, [r6, #0x4c]
_0808D936:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0808D95A
	ldr r0, _0808D9A4
	ldr r1, [r0, #0]
	movs r0, #1
	ands r1, r0
	ldrh r2, [r6, #0]
	ands r0, r2
	cmp r1, r0
	bne _0808D95A
	ldr r1, [sp, #0x1c]
	movs r0, #5
	adds r0, #0x10
	movs r2, #1
	bl sub_08000AF0
_0808D95A:
	bl sub_080003F0
_0808D95E:
	bl sub_0800CB78
	cmp r0, #0
	bne _0808D970
	bl sub_08056E90
	cmp r0, #0
	bne _0808D970
	b _0808D6DC
_0808D970:
	bl sub_0809D558
	movs r0, #0xe8
	bl sub_0805865C
	ldr r2, _0808D9A8
	movs r1, #1
	ldrh r6, [r6, #0]
	lsls r1, r6
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	movs r0, #5
	bl sub_08016ECC
	add sp, #0x8c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0808D9A0: .4byte 0x0000FFFF
_0808D9A4: .4byte gUnk_03002344
_0808D9A8: .4byte gUnk_030056FC
	thumb_func_end sub_0808D654
