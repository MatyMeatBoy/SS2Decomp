	thumb_func_start sub_0801C8F0
sub_0801C8F0: @ 0x0801C8F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	movs r0, #0x81
	lsls r0, r0, #2
	adds r6, r7, r0
	ldrh r0, [r6, #0x28]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #0
	adds r0, #0xb0
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r5, r7, r1
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_0801B264
	adds r4, #0x9c
	ldrb r0, [r4, #0]
	movs r2, #0
	strh r0, [r5, #0]
	ldrh r1, [r6, #0]
	adds r0, r0, r1
	strh r0, [r5, #0]
	ldrh r0, [r6, #0xa]
	movs r3, #0xe7
	lsls r3, r3, #1
	adds r1, r7, r3
	strh r0, [r1, #0]
	adds r3, r7, #0
	adds r3, #0x62
	strh r2, [r3, #0]
	ldr r1, _0801C994
	adds r0, r7, r1
	ldrb r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0801C94A
	movs r0, #8
	strh r0, [r3, #0]
_0801C94A:
	ldr r2, _0801C998
	adds r0, r7, r2
	ldrb r0, [r0, #0]
	cmp r0, #3
	bne _0801C956
	b _0801CC08
_0801C956:
	adds r5, r7, #0
	adds r5, #0x8c
	movs r6, #0
_0801C95C:
	movs r3, #0
	ldrsh r1, [r5, r3]
	cmp r1, #0
	bge _0801C96E
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	beq _0801C96E
	b _0801CBFE
_0801C96E:
	ldrh r0, [r5, #2]
	cmp r0, #3
	bls _0801C976
	b _0801CA98
_0801C976:
	ldr r3, _0801C99C
	adds r1, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r1, #0
	muls r2, r0, r2
	adds r1, r2, r3
	ldrh r0, [r1, #0xc]
	cmp r0, #5
	beq _0801CA50
	cmp r0, #5
	bgt _0801C9A0
	cmp r0, #3
	beq _0801C9A6
	b _0801CBEC
_0801C994: .4byte 0x00000201
_0801C998: .4byte 0x00000226
_0801C99C: .4byte gUnk_03003CE0
_0801C9A0:
	cmp r0, #7
	beq _0801CA6A
	b _0801CBEC
_0801C9A6:
	ldrh r0, [r5, #4]
	cmp r0, #4
	beq _0801C9B2
	cmp r0, #6
	beq _0801C9F2
	b _0801CBEC
_0801C9B2:
	ldrh r0, [r1, #0x10]
	cmp r0, #2
	beq _0801C9BE
	cmp r0, #4
	beq _0801C9CA
	b _0801C9DE
_0801C9BE:
	movs r0, #0xe7
	lsls r0, r0, #1
	adds r2, r7, r0
	ldrh r1, [r5, #6]
	lsls r1, r1, #3
	b _0801C9D8
_0801C9CA:
	movs r1, #0xe7
	lsls r1, r1, #1
	adds r2, r7, r1
	ldrh r0, [r5, #6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
_0801C9D8:
	ldrh r0, [r2, #0]
	subs r0, r0, r1
	strh r0, [r2, #0]
_0801C9DE:
	movs r2, #0xe7
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	blt _0801C9EE
	b _0801CBEC
_0801C9EE:
	movs r0, #0
	b _0801CBEA
_0801C9F2:
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r3, r0
	adds r1, r2, r1
	ldr r0, [r1, #0]
	ldrh r0, [r0, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0]
	ldr r0, [r1, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, _0801CA48
	str r0, [sp, #8]
	ldr r0, _0801CA4C
	str r0, [sp, #0xc]
	adds r1, r7, #0
	adds r1, #0x14
	add r2, sp, #8
	add r3, sp, #0xc
	mov r0, sp
	bl sub_08021FE0
	cmp r0, #0
	bne _0801CA2A
	b _0801CBEC
_0801CA2A:
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r2, r7, r1
	ldrh r1, [r5, #6]
	lsls r1, r1, #2
	ldrh r0, [r2, #0]
	subs r0, r0, r1
	movs r1, #0
	strh r0, [r2, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0801CA44
	b _0801CBEC
_0801CA44:
	strh r1, [r2, #0]
	b _0801CBEC
_0801CA48: .4byte 0x00300030
_0801CA4C: .4byte 0x00010001
_0801CA50:
	bl sub_0800CDC0
	cmp r0, #0
	beq _0801CA5A
	b _0801CBEC
_0801CA5A:
	ldrh r0, [r5, #4]
	cmp r0, #6
	beq _0801CA62
	b _0801CBEC
_0801CA62:
	adds r1, r7, #0
	adds r1, #0x62
	movs r0, #9
	b _0801CBEA
_0801CA6A:
	ldrh r0, [r5, #4]
	cmp r0, #4
	beq _0801CA72
	b _0801CBEC
_0801CA72:
	bl sub_0800CDC0
	cmp r0, #0
	bne _0801CA8A
	ldr r2, _0801CA90
	adds r0, r7, r2
	movs r1, #1
	strb r1, [r0, #0]
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _0801CA8A
	b _0801CBEC
_0801CA8A:
	ldr r0, _0801CA94
	strh r0, [r5, #0]
	b _0801CBEC
_0801CA90: .4byte 0x000001FD
_0801CA94: .4byte 0x0000FFFF
_0801CA98:
	ldrh r0, [r5, #4]
	subs r0, #1
	cmp r0, #6
	bls _0801CAA2
	b _0801CBEC
_0801CAA2:
	lsls r0, r0, #2
	ldr r1, _0801CAAC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801CAAC: .4byte _0801CAB0
_0801CAB0:
	.4byte _0801CB62
_0801CAB4: .4byte _0801CACC
_0801CAB8: .4byte _0801CAD4
_0801CABC: .4byte _0801CBA4
_0801CAC0: .4byte _0801CAF8
_0801CAC4: .4byte _0801CB18
_0801CAC8: .4byte _0801CB26
_0801CACC:
	adds r1, r7, #0
	adds r1, #0x62
	movs r0, #9
	b _0801CBEA
_0801CAD4:
	adds r1, r7, #0
	adds r1, #0x62
	movs r2, #0
	movs r0, #0xa
	strh r0, [r1, #0]
	ldr r3, _0801CAF0
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1, #0]
	ldr r1, _0801CAF4
	adds r0, r7, r1
	strb r2, [r0, #0]
	b _0801CBEC
	.2byte 0x0000
_0801CAF0: .4byte 0x000001FD
_0801CAF4: .4byte 0x00000201
_0801CAF8:
	adds r1, r7, #0
	adds r1, #0x62
	movs r0, #0xc
	strh r0, [r1, #0]
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	ldr r3, _0801CB14
	adds r1, r7, r3
	b _0801CBEA
_0801CB14: .4byte 0x00000206
_0801CB18:
	adds r1, r7, #0
	adds r1, #0x62
	movs r0, #0xd
	strh r0, [r1, #0]
	movs r1, #0
	ldrsh r0, [r5, r1]
	b _0801CB32
_0801CB26:
	adds r1, r7, #0
	adds r1, #0x62
	movs r0, #0xd
	strh r0, [r1, #0]
	movs r2, #0
	ldrsh r0, [r5, r2]
_0801CB32:
	movs r1, #0x3c
	bl sub_080B942C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801CBEC
	ldr r1, [r5, #0x18]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r0, #0
	adds r1, #0x64
	ldrh r0, [r5, #6]
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_080B9394
	str r0, [r7, #0x4c]
	adds r2, r7, #0
	adds r2, #0x4a
	ldrh r1, [r2, #0]
	adds r1, r1, r0
	strh r1, [r2, #0]
	b _0801CBEC
_0801CB62:
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bne _0801CBEC
	adds r0, r7, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r7, #0
	adds r4, #0x4a
	ldrh r0, [r4, #0]
	subs r1, r1, r0
	cmp r1, #0
	ble _0801CBEC
	ldrh r0, [r7, #0xc]
	cmp r0, #0xb
	beq _0801CBEC
	adds r0, r7, #0
	adds r0, #0x66
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0801CBEC
	ldrh r0, [r7, #0]
	adds r0, #4
	bl sub_08021DC4
	ldrh r0, [r5, #6]
	ldrh r3, [r4, #0]
	adds r0, r0, r3
	strh r0, [r4, #0]
	ldrh r0, [r5, #6]
	str r0, [r7, #0x4c]
	b _0801CBEC
_0801CBA4:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _0801CBEC
	adds r0, r7, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r4, r7, #0
	adds r4, #0x4a
	ldrh r0, [r4, #0]
	subs r1, r1, r0
	cmp r1, #0
	ble _0801CBEC
	ldrh r0, [r7, #0xc]
	cmp r0, #0xb
	beq _0801CBEC
	adds r0, r7, #0
	adds r0, #0x66
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0801CBEC
	ldrh r0, [r7, #0]
	adds r0, #4
	bl sub_08022180
	ldrh r0, [r5, #6]
	ldrh r3, [r4, #0]
	adds r0, r0, r3
	strh r0, [r4, #0]
	ldrh r0, [r5, #6]
	str r0, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #0x62
	movs r0, #0xb
_0801CBEA:
	strh r0, [r1, #0]
_0801CBEC:
	ldrh r2, [r5, #0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	beq _0801CBFE
	subs r0, r2, #1
	strh r0, [r5, #0]
_0801CBFE:
	adds r6, #1
	adds r5, #0x28
	cmp r6, #7
	bhi _0801CC08
	b _0801C95C
_0801CC08:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801C8F0
