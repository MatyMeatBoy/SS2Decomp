	thumb_func_start sub_0806E7D4
sub_0806E7D4: @ 0x0806E7D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc8
	str r0, [sp, #0x88]
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa8]
	ldr r0, [sp, #0x88]
	ldr r0, [r0, #0]
	str r0, [sp, #0xac]
	ldr r1, [sp, #0x88]
	ldr r1, [r1, #4]
	str r1, [sp, #0xb0]
	ldr r2, [sp, #0x88]
	ldrh r2, [r2, #0x14]
	str r2, [sp, #0x90]
	str r2, [sp, #0x94]
	cmp r0, #3
	bhi _0806E820
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r3, [sp, #0xac]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, _0806E81C
	adds r1, r1, r0
	str r1, [sp, #0x8c]
	lsls r4, r3, #2
	str r4, [sp, #0xbc]
	b _0806E8A4
	.2byte 0x0000
_0806E81C: .4byte gUnk_03003CE0
_0806E820:
	ldr r1, _0806E880
	ldr r2, [sp, #0xac]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r3, _0806E884
	adds r0, r0, r3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	mov r9, r1
	mov r0, r9
	adds r0, #0x6a
	ldr r1, _0806E888
	add r1, r9
	ldrh r0, [r0, #0]
	lsls r4, r2, #2
	str r4, [sp, #0xbc]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bhs _0806E8A4
	ldr r0, _0806E88C
	adds r4, r4, r0
	movs r0, #1
	ldr r1, [sp, #0xb0]
	lsls r0, r1
	mvns r5, r0
_0806E858:
	bl sub_08056E90
	cmp r0, #0
	bne _0806E874
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806E874
	mov r2, r9
	ldrh r0, [r2, #0xc]
	cmp r0, #0xa
	beq _0806E874
	cmp r0, #0xb
	bne _0806E890
_0806E874:
	ldr r0, [r4, #0]
	ands r0, r5
	str r0, [r4, #0]
	bl _0806F0B8
	.2byte 0x0000
_0806E880: .4byte gUnk_030056F4
_0806E884: .4byte 0xFFFFF480
_0806E888: .4byte 0x0000022B
_0806E88C: .4byte gUnk_030063E0
_0806E890:
	bl sub_080003F0
	mov r0, r9
	adds r0, #0x6a
	ldr r1, _0806E8F4
	add r1, r9
	ldrh r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _0806E858
_0806E8A4:
	ldr r3, [sp, #0xa8]
	ldr r4, [sp, #0xac]
	cmp r3, r4
	beq _0806E900
	cmp r4, #3
	bls _0806E932
	ldr r3, _0806E8F8
	ldr r0, [sp, #0x90]
	lsls r2, r0, #1
	ldr r4, [sp, #0x88]
	ldr r1, [r4, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r3, #6
	adds r2, r2, r3
	mov r3, r9
	adds r3, #0x5e
	ldrh r0, [r3, #0]
	movs r4, #0
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806E932
	ldr r2, _0806E8FC
	ldr r0, [sp, #0xbc]
	adds r2, r0, r2
	movs r1, #1
	ldr r4, [sp, #0xb0]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	movs r0, #0
	strh r0, [r3, #0]
	b _0806F0B8
	.2byte 0x0000
_0806E8F4: .4byte 0x0000022B
_0806E8F8: .4byte gUnk_084EBF1C
_0806E8FC: .4byte gUnk_030063E0
_0806E900:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0806E9B0
	adds r4, r4, r0
	ldr r1, [sp, #0x88]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x14]
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
	bge _0806E932
	movs r0, #0
	strh r0, [r4, #0]
_0806E932:
	add r2, sp, #0x54
	movs r3, #0
	movs r0, #0
	strh r0, [r2, #0]
	add r1, sp, #0x60
	strh r0, [r1, #0]
	add r0, sp, #0x4c
	strb r3, [r0, #0]
	movs r7, #1
	add r2, sp, #0x70
	mov sl, r2
	movs r3, #0
	mov r8, r3
	adds r6, r0, #0
_0806E94E:
	lsls r1, r7, #1
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x54
	mov r4, r8
	strh r4, [r0, #0]
	add r1, sp
	adds r1, #0x60
	strh r4, [r1, #0]
	bl sub_080008C8
	adds r5, r6, r7
	subs r4, r7, #1
	adds r4, r6, r4
	movs r1, #0x14
	bl __umodsi3
	adds r0, #0xa
	ldrb r4, [r4, #0]
	adds r0, r0, r4
	strb r0, [r5, #0]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _0806E94E
	ldr r0, [sp, #0xac]
	cmp r0, #3
	bhi _0806E9B4
	ldr r1, [sp, #0x94]
	cmp r1, #0
	beq _0806E996
	ldr r1, [sp, #0x8c]
	adds r1, #0xb2
	movs r0, #2
	strh r0, [r1, #0]
_0806E996:
	ldr r2, [sp, #0x8c]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x98]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	b _0806E9BE
_0806E9B0: .4byte gUnk_03003CE0
_0806E9B4:
	mov r4, r9
	ldr r4, [r4, #0x14]
	str r4, [sp, #0x98]
	mov r0, r9
	ldr r0, [r0, #0x18]
_0806E9BE:
	str r0, [sp, #0x9c]
	ldr r1, [sp, #0x98]
	str r1, [sp, #0x70]
	ldr r2, [sp, #0x9c]
	mov r3, sl
	str r2, [r3, #4]
	movs r4, #0
	mov r8, r4
	movs r0, #0
	str r0, [sp, #0xa4]
	bl sub_0800CDF8
	cmp r0, #0
	beq _0806E9DC
	b _0806EB4A
_0806E9DC:
	ldr r1, [sp, #0x88]
	ldr r0, [r1, #8]
	cmp r0, #3
	bhi _0806EABC
	bl sub_08002164
	adds r5, r0, #0
	ldr r0, _0806EAB0
	str r0, [sp, #0x80]
	movs r7, #0
	ldr r2, [sp, #0xa4]
	cmp r2, r5
	blo _0806E9F8
	b _0806EB4A
_0806E9F8:
	add r4, sp, #0x78
_0806E9FA:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0806EAB4
	adds r6, r1, r0
	ldr r3, [sp, #0xac]
	cmp r3, #3
	bhi _0806EA32
	adds r0, r6, #0
	adds r0, #0x68
	ldr r1, [sp, #0x8c]
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	beq _0806EAA4
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xa
	beq _0806EAA4
	cmp r0, #0xe
	beq _0806EAA4
_0806EA32:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r3, r6, r2
	ldr r2, [r3, #0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0806EAA4
	adds r0, r6, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0806EAA4
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	beq _0806EAA4
	ldrh r0, [r6, #0x20]
	cmp r0, #0xb
	beq _0806EAA4
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x78]
	ldr r0, [r3, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [r4, #4]
	ldr r0, [sp, #0x90]
	lsls r3, r0, #2
	ldr r2, _0806EAB8
	mov r0, sl
	adds r1, r4, #0
	adds r2, r3, r2
	add r3, sp, #0x80
	bl sub_08021FE0
	cmp r0, #0
	beq _0806EAA4
	add r1, sp, #0x44
	ldr r2, [sp, #0xa4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa4]
	adds r1, r1, r2
	strb r7, [r1, #0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0806EAA4:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, r5
	blo _0806E9FA
	b _0806EB4A
_0806EAB0: .4byte 0x00080008
_0806EAB4: .4byte gUnk_03003CE0
_0806EAB8: .4byte gUnk_084EC1A0
_0806EABC:
	movs r7, #0
	ldr r4, _0806EBC0
_0806EAC0:
	ldr r0, _0806EBC4
	movs r1, #1
	lsls r1, r7
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _0806EB40
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #3
	subs r0, r0, r7
	lsls r0, r0, #5
	ldr r1, [r4, #0]
	adds r5, r1, r0
	ldrh r0, [r5, #0xc]
	cmp r0, #0xb
	beq _0806EB40
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0806EB40
	ldr r2, _0806EBC8
	adds r0, r5, r2
	ldrb r2, [r0, #0]
	ldr r1, _0806EBCC
	ldr r0, [sp, #0x84]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x84]
	ldr r3, _0806EBD0
	adds r1, r5, r3
	ldrb r2, [r1, #0]
	lsls r2, r2, #0x10
	ldr r1, _0806EBD4
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x84]
	adds r1, r5, #0
	adds r1, #0x14
	ldr r0, [sp, #0x90]
	lsls r3, r0, #2
	ldr r2, _0806EBD8
	mov r0, sl
	adds r2, r3, r2
	add r3, sp, #0x84
	bl sub_08021FE0
	cmp r0, #0
	beq _0806EB40
	add r1, sp, #0x44
	ldr r2, [sp, #0xa4]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa4]
	adds r1, r1, r2
	strb r7, [r1, #0]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0806EB40:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _0806EAC0
_0806EB4A:
	ldr r1, [sp, #0xa8]
	ldr r2, [sp, #0xac]
	cmp r1, r2
	beq _0806EB56
	cmp r2, #3
	bls _0806EB72
_0806EB56:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806EB72
	bl sub_0800CD34
	cmp r0, #0
	bne _0806EB72
	ldr r3, [sp, #0x90]
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r0, r3, r4
	bl sub_0805865C
_0806EB72:
	ldr r1, _0806EBDC
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	ldr r0, [sp, #0x90]
	cmp r0, #6
	bls _0806EB98
	movs r1, #6
	str r1, [sp, #0x90]
_0806EB98:
	mov r2, r8
	cmp r2, #0
	beq _0806EBA0
	b _0806ED28
_0806EBA0:
	ldr r3, [sp, #0xac]
	cmp r3, #3
	bhi _0806EBE4
	ldr r1, _0806EBE0
	ldr r4, [sp, #0x8c]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	b _0806EBF2
	.2byte 0x0000
_0806EBC0: .4byte gUnk_030056F4
_0806EBC4: .4byte gUnk_030056FC
_0806EBC8: .4byte 0x0000022E
_0806EBCC: .4byte 0xFFFF0000
_0806EBD0: .4byte 0x0000022F
_0806EBD4: .4byte 0x0000FFFF
_0806EBD8: .4byte gUnk_084EC1A0
_0806EBDC: .4byte 0x0005008B
_0806EBE0: .4byte gUnk_0849E730
_0806EBE4:
	ldr r0, _0806ECE0
	mov r3, r9
	movs r4, #8
	ldrsh r1, [r3, r4]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
_0806EBF2:
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	ldr r3, _0806ECE4
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #1
	ldr r2, [sp, #0x98]
	adds r2, r2, r0
	str r2, [sp, #0x98]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r4, [sp, #0x9c]
	adds r4, r4, r0
	str r4, [sp, #0x9c]
	movs r0, #0
	str r0, [sp, #0xa0]
	asrs r2, r2, #8
	mov sl, r2
	asrs r4, r4, #8
	mov r9, r4
	add r6, sp, #0x6c
	mov r5, sp
	adds r5, #0x6e
	lsls r2, r2, #0x10
	str r2, [sp, #0xb4]
	add r4, sp, #0x54
	ldr r0, [sp, #0x90]
	adds r0, #7
	lsls r7, r0, #0x10
_0806EC46:
	mov r2, r9
	lsls r1, r2, #0x10
	movs r0, #0x30
	str r0, [sp, #0]
	movs r3, #0
	str r3, [sp, #4]
	ldr r2, [sp, #0xb4]
	asrs r0, r2, #0x10
	asrs r1, r1, #0x10
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0800BC08
	mov r0, sl
	mov r1, r9
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r3, #0
	str r3, [sp, #0]
	add r0, sp, #0x10
	ldr r1, [sp, #0x90]
	adds r2, r4, #0
	add r3, sp, #0x60
	bl sub_08065370
	cmp r0, #0
	beq _0806EC8E
	ldr r0, [sp, #0xa0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
_0806EC8E:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806ED0C
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806ED0C
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806ED0C
	bl sub_0800CB9C
	cmp r0, #0
	beq _0806ECEC
	ldr r0, _0806ECE8
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	ldr r0, [sp, #0xac]
	ands r0, r2
	cmp r1, r0
	bne _0806ED0C
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r3, [r4, #0]
	mov r2, r8
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	lsrs r2, r7, #0x10
	bl sub_08007870
	b _0806ED0C
_0806ECE0: .4byte gUnk_0849E730
_0806ECE4: .4byte gUnk_080B9704
_0806ECE8: .4byte gUnk_03002344
_0806ECEC:
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r3, [r4, #0]
	mov r2, r8
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	lsrs r2, r7, #0x10
	bl sub_08007870
_0806ED0C:
	bl sub_080003F0
	ldr r3, [sp, #0xa0]
	cmp r3, #0
	beq _0806EC46
	ldr r4, [sp, #0x90]
	str r4, [sp, #0]
	ldr r0, [sp, #0x98]
	ldr r1, [sp, #0x9c]
	ldr r2, [sp, #0xac]
	movs r3, #0xf
	bl sub_08069A30
	b _0806F08A
_0806ED28:
	movs r0, #0
	str r0, [sp, #0xa0]
	b _0806F05E
_0806ED2E:
	ldr r1, [sp, #0x88]
	ldr r0, [r1, #8]
	cmp r0, #3
	bls _0806ED38
	b _0806EEC4
_0806ED38:
	movs r7, #0
	ldr r2, [sp, #0xa4]
	cmp r7, r2
	blo _0806ED42
	b _0806F05A
_0806ED42:
	mov r3, sp
	adds r3, #0x6c
	str r3, [sp, #0xc0]
	mov r4, sp
	adds r4, #0x6e
	str r4, [sp, #0xc4]
	ldr r0, [sp, #0x90]
	adds r0, #7
	lsls r0, r0, #0x10
	str r0, [sp, #0xb8]
_0806ED56:
	add r0, sp, #0x44
	adds r0, r0, r7
	mov r9, r0
	ldrb r1, [r0, #0]
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _0806EEA4
	adds r6, r1, r0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #0x6c
	mov r3, sp
	adds r3, #0x6e
	bl sub_0800BC08
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r5, sp
	adds r5, r5, r7
	adds r5, #0x4c
	ldrb r0, [r5, #0]
	adds r1, r0, #0
	cmp r1, #0
	bne _0806EEAC
	lsls r4, r7, #1
	mov r2, sp
	adds r2, r2, r4
	adds r2, #0x54
	mov r3, sp
	adds r3, r3, r4
	adds r3, #0x60
	mov sl, r3
	str r1, [sp, #0]
	add r0, sp, #0x10
	ldr r3, [sp, #0xb8]
	lsrs r1, r3, #0x10
	mov r3, sl
	bl sub_08065370
	mov sl, r4
	ldr r4, [sp, #0x90]
	adds r4, #7
	cmp r0, #0
	beq _0806EE34
	ldr r0, [sp, #0xa0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	movs r0, #0xf0
	strb r0, [r5, #0]
	ldr r1, [sp, #0xa8]
	mov r0, r9
	ldrb r0, [r0, #0]
	cmp r1, r0
	bne _0806EE14
	ldrh r0, [r6, #0]
	ldr r1, [sp, #0x88]
	str r0, [r1, #8]
	ldr r0, [sp, #0x88]
	bl sub_080694AC
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806EE14
	bl sub_0800CD34
	cmp r0, #0
	bne _0806EE14
	movs r0, #0x1a
	bl sub_0805865C
_0806EE14:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r6, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0xc
	ldr r3, [sp, #0x90]
	str r3, [sp, #0]
	ldr r2, [sp, #0xac]
	movs r3, #0xf
	bl sub_08069A30
_0806EE34:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806EEB4
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806EEB4
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806EEB4
	ldr r6, _0806EEA8
	ldr r0, [r6, #0]
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	bne _0806EE62
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806EE62:
	bl sub_0800CB9C
	cmp r0, #0
	beq _0806EE76
	ldr r1, [r6, #0]
	ands r1, r5
	ldr r0, [sp, #0xac]
	ands r0, r5
	cmp r1, r0
	bne _0806EEB4
_0806EE76:
	ldr r1, [sp, #0xc0]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xc4]
	movs r2, #0
	ldrsh r1, [r3, r2]
	lsls r2, r4, #0x10
	lsrs r2, r2, #0x10
	mov r3, sp
	add r3, sl
	adds r3, #0x54
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _0806EEB4
_0806EEA4: .4byte gUnk_03003CE0
_0806EEA8: .4byte gUnk_03002344
_0806EEAC:
	cmp r1, #0xf0
	beq _0806EEB4
	subs r0, #1
	strb r0, [r5, #0]
_0806EEB4:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [sp, #0xa4]
	cmp r7, r0
	bhs _0806EEC2
	b _0806ED56
_0806EEC2:
	b _0806F05A
_0806EEC4:
	movs r7, #0
	ldr r1, [sp, #0xa4]
	cmp r7, r1
	blo _0806EECE
	b _0806F05A
_0806EECE:
	mov r2, sp
	adds r2, #0x6c
	str r2, [sp, #0xc0]
	mov r3, sp
	adds r3, #0x6e
	str r3, [sp, #0xc4]
	ldr r0, [sp, #0x90]
	adds r0, #7
	lsls r0, r0, #0x10
	mov r9, r0
_0806EEE2:
	ldr r2, _0806F038
	add r0, sp, #0x44
	adds r0, r0, r7
	ldrb r1, [r0, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	ldr r1, [r2, #0]
	adds r5, r1, r0
	ldr r0, [r5, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #0x6c
	mov r3, sp
	adds r3, #0x6e
	bl sub_0800BC08
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	ldr r1, [r5, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r6, sp
	adds r6, r6, r7
	adds r6, #0x4c
	ldrb r0, [r6, #0]
	adds r1, r0, #0
	cmp r1, #0
	beq _0806EF3A
	b _0806F044
_0806EF3A:
	lsls r4, r7, #1
	mov r2, sp
	adds r2, r2, r4
	adds r2, #0x54
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x60
	mov sl, r0
	str r1, [sp, #0]
	add r0, sp, #0x10
	mov r3, r9
	lsrs r1, r3, #0x10
	mov r3, sl
	bl sub_08065370
	mov sl, r4
	ldr r4, [sp, #0x90]
	adds r4, #7
	cmp r0, #0
	beq _0806EFAC
	ldr r0, [sp, #0xa0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	movs r0, #0xf0
	strb r0, [r6, #0]
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xac]
	cmp r0, r1
	bne _0806EF9C
	ldrh r0, [r5, #0]
	adds r0, #4
	ldr r2, [sp, #0x88]
	str r0, [r2, #8]
	ldr r0, [sp, #0x88]
	bl sub_080694AC
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806EF9C
	bl sub_0800CD34
	cmp r0, #0
	bne _0806EF9C
	movs r0, #0x1a
	bl sub_0805865C
_0806EF9C:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r3, [sp, #0x90]
	str r3, [sp, #0]
	ldr r2, [sp, #0xac]
	movs r3, #0xf
	bl sub_08069A30
_0806EFAC:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806F04C
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806F04C
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806F04C
	ldr r0, _0806F03C
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0806EFDA
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806EFDA:
	ldr r0, _0806F040
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0806EFF0
	bl sub_0800CDC0
	cmp r0, #0
	beq _0806EFF0
	movs r0, #0
	mov r8, r0
_0806EFF0:
	bl sub_0800CB9C
	cmp r0, #0
	beq _0806F008
	ldr r0, _0806F03C
	ldr r2, [r0, #0]
	movs r1, #1
	ands r2, r1
	ldr r0, [sp, #0xac]
	ands r0, r1
	cmp r2, r0
	bne _0806F04C
_0806F008:
	ldr r1, [sp, #0xc0]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xc4]
	movs r2, #0
	ldrsh r1, [r3, r2]
	lsls r2, r4, #0x10
	lsrs r2, r2, #0x10
	mov r3, sp
	add r3, sl
	adds r3, #0x54
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _0806F04C
	.2byte 0x0000
_0806F038: .4byte gUnk_030056F4
_0806F03C: .4byte gUnk_03002344
_0806F040: .4byte gUnk_03003170
_0806F044:
	cmp r1, #0xf0
	beq _0806F04C
	subs r0, #1
	strb r0, [r6, #0]
_0806F04C:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [sp, #0xa4]
	cmp r7, r0
	bhs _0806F05A
	b _0806EEE2
_0806F05A:
	bl sub_080003F0
_0806F05E:
	ldr r1, [sp, #0xa0]
	ldr r2, [sp, #0xa4]
	cmp r1, r2
	bhs _0806F08A
	bl sub_080020F4
	ldr r3, [sp, #0xac]
	cmp r3, r0
	beq _0806F072
	b _0806ED2E
_0806F072:
	ldr r4, [sp, #0x8c]
	ldrh r0, [r4, #0x20]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0806F08A
	bl sub_0800D11C
	cmp r0, #0
	bne _0806F08A
	b _0806ED2E
_0806F08A:
	ldr r0, [sp, #0xac]
	cmp r0, #3
	bhi _0806F0A6
	ldr r0, [sp, #0x8c]
	adds r0, #0xb6
	ldrh r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0
	bne _0806F0A6
_0806F09C:
	bl sub_080003F0
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _0806F09C
_0806F0A6:
	ldr r2, _0806F0C8
	ldr r1, [sp, #0xbc]
	adds r2, r1, r2
	movs r1, #1
	ldr r3, [sp, #0xb0]
	lsls r1, r3
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_0806F0B8:
	add sp, #0xc8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806F0C8: .4byte gUnk_030063E0
	thumb_func_end sub_0806E7D4
