	thumb_func_start sub_0809C8F4
sub_0809C8F4: @ 0x0809C8F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	mov r8, r0
	ldr r1, _0809CB74
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	add r1, sp, #0x10
	ldr r0, _0809CB78
	ldrh r0, [r0, #0]
	strb r0, [r1, #0x1c]
	movs r0, #0
	str r0, [sp, #0x50]
	movs r1, #0xb4
	str r1, [sp, #0x4c]
	mov r2, sp
	adds r2, #0x46
	str r2, [sp, #0x54]
	ldr r3, _0809CB7C
	mov sl, r3
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r9, r0
_0809C934:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809C9C8
	bl sub_0800CC98
	cmp r0, #0
	bne _0809C9C8
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809C9C8
	bl sub_0800CD34
	adds r6, r0, #0
	cmp r6, #0
	bne _0809C9C8
	movs r7, #1
	ldr r0, [sp, #0x4c]
	ands r0, r7
	cmp r0, #0
	beq _0809C9C8
	ldr r0, _0809CB78
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r2, #1
	bl sub_08000AF0
	mov r1, r8
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r5, sp, #0x44
	str r6, [sp, #0]
	str r6, [sp, #4]
	adds r2, r5, #0
	ldr r3, [sp, #0x54]
	bl sub_0800BC08
	add r4, sp, #0x48
	str r7, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0x19
	adds r2, r4, #0
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldr r3, [sp, #0x54]
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r1, #1
	ldrh r3, [r4, #0]
	str r6, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0x19
	bl sub_08007870
	ldr r3, [sp, #0x54]
	movs r2, #0
	ldrsh r1, [r3, r2]
	subs r1, #0x17
	str r1, [r0, #0xc]
_0809C9C8:
	mov r3, r8
	ldr r4, [r3, #0x14]
	ldr r5, [r3, #0x18]
	bl sub_080020F4
	asrs r4, r4, #8
	ldr r7, _0809CB7C
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r0, r6, r0
	ldr r1, _0809CB80
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	asrs r5, r5, #8
	muls r0, r6, r0
	ldr r2, _0809CB84
	adds r0, r0, r2
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r5, r5, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, [sp, #0x50]
	cmp r3, #0
	beq _0809CA1E
	b _0809CBF8
_0809CA1E:
	cmp r0, #0x2f
	bls _0809CA24
	b _0809CBF8
_0809CA24:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0809CA2E
	b _0809CBF8
_0809CA2E:
	bl sub_0800CD8C
	cmp r0, #0
	beq _0809CA38
	b _0809CBF8
_0809CA38:
	bl sub_0800CCCC
	cmp r0, #0
	beq _0809CA42
	b _0809CBF8
_0809CA42:
	mov r1, r8
	ldrh r0, [r1, #0xc]
	cmp r0, #0xb
	bne _0809CA4C
	b _0809CBF8
_0809CA4C:
	bl sub_080020F4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0809CA66
	b _0809CBF8
_0809CA66:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0809CA78
	b _0809CBF8
_0809CA78:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	bne _0809CA88
	b _0809CBF8
_0809CA88:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	bne _0809CA98
	b _0809CBF8
_0809CA98:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	bne _0809CAA8
	b _0809CBF8
_0809CAA8:
	bl sub_080020F4
	mov r2, r8
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r5, r7, #0
	adds r5, #0xe4
	adds r1, r1, r5
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	bne _0809CAC6
	b _0809CBF8
_0809CAC6:
	movs r3, #1
	str r3, [sp, #0x50]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xb0
	ldr r1, _0809CB88
	strh r1, [r0, #0]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r7
	mov r0, r8
	bl sub_0801ED8C
	adds r1, r4, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r1, #0x88
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	bl sub_080020F4
	mov r3, r8
	ldrh r1, [r3, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r3, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r3, #0x50]
	bl sub_080020F4
	muls r0, r6, r0
	ldr r1, _0809CB80
	adds r0, r0, r1
	ldr r4, [r0, #0]
	asrs r4, r4, #8
	mov r2, r8
	ldr r0, [r2, #0x14]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	muls r0, r6, r0
	ldr r3, _0809CB84
	adds r0, r0, r3
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	mov r2, r8
	ldr r0, [r2, #0x18]
	asrs r0, r0, #8
	subs r1, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r4, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _0809CB8E
	cmp r4, #6
	bhi _0809CB8C
	adds r4, #1
	b _0809CB8E
_0809CB74: .4byte 0x00050005
_0809CB78: .4byte gUnk_030002F0
_0809CB7C: .4byte gUnk_03003CE0
_0809CB80: .4byte gUnk_03003D6C
_0809CB84: .4byte gUnk_03003D70
_0809CB88: .4byte 0x0000FFFE
_0809CB8C:
	movs r4, #0
_0809CB8E:
	cmp r4, #0
	beq _0809CBA8
	cmp r4, #1
	beq _0809CBBA
	bl sub_080020F4
	mov r3, r9
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, sl
	subs r1, r4, #2
	adds r0, #0xca
	b _0809CBCA
_0809CBA8:
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sl
	adds r0, #0xca
	movs r1, #6
	b _0809CBCA
_0809CBBA:
	bl sub_080020F4
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, sl
	adds r0, #0xca
	movs r1, #7
_0809CBCA:
	strh r1, [r0, #0]
	bl sub_080020F4
	mov r3, r9
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, sl
	adds r0, #0xcc
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0]
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sl
	adds r0, #0xc8
	movs r1, #8
	strh r1, [r0, #0]
	movs r0, #0xe2
	bl sub_0805865C
_0809CBF8:
	bl sub_080003F0
	ldr r0, [sp, #0x4c]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
	ldr r0, _0809CC28
	ldr r2, [sp, #0x4c]
	cmp r2, r0
	beq _0809CC10
	b _0809C934
_0809CC10:
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
_0809CC28: .4byte 0x0000FFFF
	thumb_func_end sub_0809C8F4
