	thumb_func_start sub_0809C4E8
sub_0809C4E8: @ 0x0809C4E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x54]
	ldr r1, _0809C558
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	add r1, sp, #0x10
	ldr r0, _0809C55C
	ldrh r0, [r0, #0]
	strb r0, [r1, #0x1c]
	bl sub_08002164
	str r0, [sp, #0x58]
	movs r0, #0
	str r0, [sp, #0x64]
	movs r1, #0xb4
	lsls r1, r1, #1
	str r1, [sp, #0x5c]
	movs r2, #0x78
	str r2, [sp, #0x60]
	movs r0, #0xe6
	bl sub_0805865C
	ldr r3, _0809C560
	mov r9, r3
	mov r0, sp
	adds r0, #0x48
	str r0, [sp, #0x68]
_0809C538:
	ldr r1, [sp, #0x58]
	cmp r1, #1
	bne _0809C568
	ldr r2, [sp, #0x54]
	cmp r2, #0
	beq _0809C546
	b _0809C8C6
_0809C546:
	mov r0, r9
	adds r0, #0x8c
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	asrs r5, r0, #0x10
	ldr r3, _0809C564
	ldr r0, [r3, #0]
	b _0809C61C
	.2byte 0x0000
_0809C558: .4byte 0x00050005
_0809C55C: .4byte gUnk_030002F0
_0809C560: .4byte gUnk_03003CE0
_0809C564: .4byte gUnk_03003D70
_0809C568:
	ldr r0, [sp, #0x54]
	cmp r0, #1
	beq _0809C5AC
	cmp r0, #1
	bgt _0809C578
	cmp r0, #0
	beq _0809C584
	b _0809C636
_0809C578:
	ldr r1, [sp, #0x54]
	cmp r1, #2
	beq _0809C5D0
	cmp r1, #3
	beq _0809C5FC
	b _0809C636
_0809C584:
	bl sub_080020F4
	cmp r0, #0
	bne _0809C5A0
	mov r0, r9
	adds r0, #0x8c
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	asrs r5, r0, #0x10
	ldr r2, _0809C59C
	ldr r0, [r2, #0]
	b _0809C61C
_0809C59C: .4byte gUnk_03003D70
_0809C5A0:
	ldr r3, _0809C5A8
	ldr r1, [r3, #0]
	b _0809C62C
	.2byte 0x0000
_0809C5A8: .4byte gUnk_03003E28
_0809C5AC:
	bl sub_080020F4
	cmp r0, #1
	bne _0809C5C8
	movs r0, #0xec
	lsls r0, r0, #1
	add r0, r9
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	asrs r5, r0, #0x10
	ldr r1, _0809C5C4
	b _0809C61A
_0809C5C4: .4byte gUnk_03003EBC
_0809C5C8:
	ldr r2, _0809C5CC
	b _0809C62A
_0809C5CC: .4byte gUnk_03003F74
_0809C5D0:
	ldr r3, [sp, #0x58]
	cmp r3, #2
	bhi _0809C5D8
	b _0809C8C6
_0809C5D8:
	bl sub_080020F4
	cmp r0, #2
	bne _0809C5F4
	movs r0, #0xc9
	lsls r0, r0, #2
	add r0, r9
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	asrs r5, r0, #0x10
	ldr r1, _0809C5F0
	b _0809C61A
_0809C5F0: .4byte gUnk_03004008
_0809C5F4:
	ldr r2, _0809C5F8
	b _0809C62A
_0809C5F8: .4byte gUnk_030040C0
_0809C5FC:
	ldr r3, [sp, #0x58]
	cmp r3, #4
	beq _0809C604
	b _0809C8C6
_0809C604:
	bl sub_080020F4
	cmp r0, #3
	bne _0809C628
	movs r0, #0x8e
	lsls r0, r0, #3
	add r0, r9
	ldr r0, [r0, #0]
	lsls r0, r0, #8
	asrs r5, r0, #0x10
	ldr r1, _0809C624
_0809C61A:
	ldr r0, [r1, #0]
_0809C61C:
	lsls r0, r0, #8
	asrs r6, r0, #0x10
	b _0809C636
	.2byte 0x0000
_0809C624: .4byte gUnk_03004154
_0809C628:
	ldr r2, _0809C664
_0809C62A:
	ldr r1, [r2, #0]
_0809C62C:
	ldrh r0, [r1, #0]
	lsrs r5, r0, #4
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r6, r0, #0x14
_0809C636:
	ldr r3, [sp, #0x60]
	cmp r3, #0
	beq _0809C66C
	adds r0, r3, #0
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x60]
	ldr r0, _0809C668
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	str r0, [sp, #0x4c]
	ldr r1, [r1, #0x18]
	add r0, sp, #0x4c
	str r1, [r0, #4]
	mov sl, r0
	ldr r0, [sp, #0x60]
	cmp r0, #0
	bne _0809C68E
	movs r0, #0xe7
	bl sub_0805865C
	b _0809C68E
_0809C664: .4byte gUnk_0300420C
_0809C668: .4byte gUnk_030002EC
_0809C66C:
	ldr r0, [sp, #0x4c]
	asrs r0, r0, #8
	add r4, sp, #0x4c
	ldr r1, [r4, #4]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08095FC8
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xf8
	adds r1, r4, #0
	bl sub_08097BA4
	mov sl, r4
_0809C68E:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809C77E
	bl sub_0800CC98
	cmp r0, #0
	bne _0809C77E
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809C77E
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _0809C77E
	ldr r0, _0809C734
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r2, #1
	bl sub_08000AF0
	ldr r0, [sp, #0x4c]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r2, sl
	ldr r1, [r2, #4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r7, sp, #0x44
	movs r3, #0x46
	add r3, sp
	mov r8, r3
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r7, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _0809C738
	ldr r1, [sp, #0x54]
	cmp r1, #0
	bne _0809C77E
	bl sub_0800CD8C
	adds r4, r0, #0
	cmp r4, #0
	bne _0809C77E
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0x1a
	ldr r2, [sp, #0x68]
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	movs r2, #0
	ldrsh r0, [r7, r2]
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	adds r1, #2
	ldr r2, [sp, #0x68]
	ldrh r3, [r2, #0]
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0x1a
	bl sub_08007870
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	str r1, [r0, #0xc]
	b _0809C77E
_0809C734: .4byte gUnk_030002F0
_0809C738:
	movs r4, #1
	ldr r0, [sp, #0x5c]
	ands r0, r4
	cmp r0, #0
	beq _0809C77E
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809C77E
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0x1a
	ldr r2, [sp, #0x68]
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	movs r3, #0
	ldrsh r0, [r7, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r2, [sp, #0x68]
	ldrh r3, [r2, #0]
	ldr r2, [sp, #0x60]
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0x1a
	bl sub_08007870
_0809C77E:
	bl sub_080020F4
	ldr r4, [sp, #0x4c]
	asrs r4, r4, #8
	ldr r3, _0809C8E0
	mov r8, r3
	movs r7, #0xa6
	lsls r7, r7, #1
	muls r0, r7, r0
	mov r1, r8
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	mov r2, sl
	ldr r1, [r2, #4]
	asrs r1, r1, #8
	adds r1, #0xc
	muls r0, r7, r0
	ldr r3, _0809C8E4
	adds r0, r0, r3
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r1, r1, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, [sp, #0x60]
	cmp r3, #0
	bne _0809C8AE
	ldr r1, [sp, #0x64]
	cmp r1, #0
	bne _0809C8AE
	cmp r0, #0xf
	bhi _0809C8AE
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809C8AE
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809C8AE
	bl sub_0800CDF8
	cmp r0, #0
	bne _0809C8AE
	ldr r2, _0809C8E8
	mov sl, r2
	ldr r0, [r2, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _0809C8AE
	bl sub_080020F4
	muls r0, r7, r0
	mov r1, r8
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0809C8AE
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r8
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0809C8AE
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r8
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _0809C8AE
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r8
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _0809C8AE
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r8
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _0809C8AE
	bl sub_080020F4
	mov r3, sl
	ldr r2, [r3, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	mov r4, r8
	adds r4, #0xe4
	adds r1, r1, r4
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _0809C8AE
	movs r0, #0
	movs r1, #0x46
	movs r2, #5
	bl sub_08029CEC
	bl sub_080020F4
	muls r0, r7, r0
	add r0, r8
	adds r0, #0xb0
	ldr r1, _0809C8EC
	strh r1, [r0, #0]
	bl sub_080020F4
	mov r1, sl
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r7, r0
	adds r1, r1, r0
	adds r1, r1, r4
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	movs r2, #1
	str r2, [sp, #0x64]
_0809C8AE:
	bl sub_080003F0
	ldr r0, [sp, #0x5c]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x5c]
	ldr r0, _0809C8F0
	ldr r3, [sp, #0x5c]
	cmp r3, r0
	beq _0809C8C6
	b _0809C538
_0809C8C6:
	bl sub_0800048C
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #8]
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809C8E0: .4byte gUnk_03003CE0
_0809C8E4: .4byte gUnk_03003D70
_0809C8E8: .4byte gUnk_030002EC
_0809C8EC: .4byte 0x0000FFFE
_0809C8F0: .4byte 0x0000FFFF
	thumb_func_end sub_0809C4E8
