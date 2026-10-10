	thumb_func_start sub_080263B4
sub_080263B4: @ 0x080263B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	movs r0, #0
	mov sl, r0
	add r5, sp, #0x44
	mov r1, sl
	strh r1, [r5, #0]
	mov r4, sp
	adds r4, #0x46
	strh r1, [r4, #0]
	movs r2, #0
	str r2, [sp, #0x50]
	ldr r0, _08026428
	bl sub_08007290
	str r0, [sp, #0x4c]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0802642C
	adds r6, r1, r0
	ldr r1, _08026430
	movs r3, #1
	negs r3, r3
	mov r0, sl
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0xe
	bl sub_08065158
	ldr r1, [sp, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	mov r1, sp
	adds r1, #0x3b
	movs r0, #0xe
	strb r0, [r1, #0]
	ldr r0, _08026434
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
	b _08026676
	.2byte 0x0000
_08026428: .4byte 0x001403D3
_0802642C: .4byte gUnk_03003CE0
_08026430: .4byte 0x0005000D
_08026434: .4byte gUnk_03005CF4
_08026438:
	bl sub_080003F0
_0802643C:
	bl sub_0800CDF8
	cmp r0, #0
	bne _08026438
	bl sub_080021A8
	cmp r0, #0
	beq _0802644E
	b _080267BA
_0802644E:
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	lsrs r0, r0, #8
	add r5, sp, #0x48
	strh r0, [r5, #0]
	adds r0, r6, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	lsrs r0, r0, #8
	mov r4, sp
	adds r4, #0x4a
	strh r0, [r4, #0]
	bl sub_0806569C
	mov r8, r5
	mov r9, r4
	cmp r0, #0
	bne _08026550
	ldrh r0, [r6, #0x20]
	cmp r0, #0xe
	beq _08026550
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0x78
	subs r0, r0, r2
	cmp r0, #0
	bge _08026488
	negs r0, r0
_08026488:
	cmp r0, #0x17
	bgt _08026550
	mov r3, r9
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #0xa0
	lsls r2, r2, #1
	subs r0, r0, r2
	cmp r0, #0
	bge _0802649E
	negs r0, r0
_0802649E:
	cmp r0, #0xf
	bgt _08026550
	bl sub_0800CCCC
	cmp r0, #0
	beq _0802653E
	ldr r0, _0802650C
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0802653E
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r6, #0x30]
	ldr r4, [sp, #0x4c]
	adds r4, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
	ldr r2, [r6, #0x30]
	movs r4, #0x80
	lsls r4, r4, #3
	ands r4, r2
	cmp r4, #0
	bne _08026518
	ldrh r1, [r6, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08026504
	ldr r0, _08026510
	orrs r2, r0
	ldr r0, _08026514
	ands r2, r0
	str r2, [r6, #0x30]
	bl sub_08067D74
	adds r0, r6, #0
	adds r0, #0xd8
	str r4, [r0, #0]
_08026504:
	movs r3, #0
	str r3, [sp, #0x54]
	b _0802653E
	.2byte 0x0000
_0802650C: .4byte gUnk_03003170
_08026510: .4byte 0x00000403
_08026514: .4byte 0xFF7FFFFF
_08026518:
	ldr r0, [sp, #0x54]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x54]
	cmp r0, #0x3c
	bls _0802653E
	ldr r0, _08026544
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802653E
	ldr r0, _08026548
	ands r2, r0
	str r2, [r6, #0x30]
	ldr r1, _0802654C
	movs r0, #0
	bl sub_08057328
_0802653E:
	movs r2, #1
	str r2, [sp, #0x50]
	b _0802656A
_08026544: .4byte gUnk_03001324
_08026548: .4byte 0xFFFFFBFF
_0802654C: .4byte sub_08024538
_08026550:
	ldr r3, [sp, #0x50]
	cmp r3, #0
	beq _08026562
	movs r0, #0
	str r0, [sp, #0x50]
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
_08026562:
	ldr r0, [r6, #0x30]
	ldr r1, _0802657C
	ands r0, r1
	str r0, [r6, #0x30]
_0802656A:
	bl sub_08002204
	cmp r0, #0
	beq _080265F4
	movs r5, #0
	movs r4, #0
	adds r1, r7, #1
	str r1, [sp, #0x58]
	b _080265D2
_0802657C: .4byte 0xFF7FFFFF
_08026580:
	ldr r1, _080265F0
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r4, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r3, r8
	strh r0, [r3, #0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r1, r0, #0x14
	mov r7, r9
	strh r1, [r7, #0]
	movs r7, #0
	ldrsh r0, [r3, r7]
	movs r3, #0x78
	subs r0, r0, r3
	cmp r0, #0
	bge _080265B2
	negs r0, r0
_080265B2:
	cmp r0, #0x17
	bgt _080265D0
	movs r7, #0xa0
	lsls r7, r7, #1
	subs r0, r1, r7
	cmp r0, #0
	bge _080265C2
	negs r0, r0
_080265C2:
	cmp r0, #0xf
	bgt _080265D0
	ldrb r0, [r2, #7]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _080265D0
	adds r5, #1
_080265D0:
	adds r4, #1
_080265D2:
	bl sub_08002164
	cmp r4, r0
	blo _08026580
	bl sub_08002164
	ldr r7, [sp, #0x58]
	cmp r5, r0
	beq _080265E6
	movs r7, #0
_080265E6:
	cmp r7, #2
	bls _080265F4
	bl sub_080687E8
	b _08026690
_080265F0: .4byte gUnk_03003CE0
_080265F4:
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	mov r1, sl
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	bne _08026672
	bl sub_0800CCCC
	cmp r0, #0
	beq _08026672
	bl sub_0800CD34
	cmp r0, #0
	bne _08026672
	ldr r0, _080266C4
	adds r0, #0x90
	ldrh r4, [r0, #0]
	cmp r4, #0
	bne _08026672
	ldr r1, [sp, #0x1c]
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	movs r0, #0x78
	movs r1, #0xa0
	lsls r1, r1, #1
	movs r2, #0x30
	str r2, [sp, #0]
	str r4, [sp, #4]
	mov r2, r8
	mov r3, r9
	bl sub_0800BC08
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r9
	movs r2, #0
	ldrsh r1, [r3, r2]
	add r2, sp, #0x44
	ldrh r3, [r2, #0]
	movs r2, #3
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sl
	bl sub_08008E74
_08026672:
	bl sub_080003F0
_08026676:
	ldr r0, _080266C8
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08026690
	bl sub_0800D154
	cmp r0, #0
	bne _08026690
	b _0802643C
_08026690:
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
	ldr r0, _080266C8
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802676E
	bl sub_0800D154
	cmp r0, #0
	bne _0802676E
	movs r5, #1
	add r3, sp, #0x48
	mov r8, r3
	mov r7, sp
	adds r7, #0x4a
	movs r0, #0x78
	lsls r0, r0, #0x10
	mov r9, r0
	b _080266D0
	.2byte 0x0000
_080266C4: .4byte gUnk_03003170
_080266C8: .4byte gUnk_03005CF4
_080266CC:
	bl sub_080003F0
_080266D0:
	bl sub_0800CDF8
	cmp r0, #0
	bne _080266CC
	bl sub_080021A8
	cmp r0, #0
	bne _080267BA
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	mov r1, sl
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	bne _0802675A
	bl sub_0800CCCC
	cmp r0, #0
	beq _0802675A
	ldr r0, _080267CC
	adds r0, #0x90
	ldrh r4, [r0, #0]
	cmp r4, #0
	bne _0802675A
	ldr r1, [sp, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	movs r3, #0xa0
	lsls r3, r3, #1
	lsls r1, r3, #0x10
	movs r0, #0x30
	str r0, [sp, #0]
	str r4, [sp, #4]
	mov r2, r9
	asrs r0, r2, #0x10
	asrs r1, r1, #0x10
	mov r2, r8
	adds r3, r7, #0
	bl sub_0800BC08
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #0
	ldrsh r1, [r7, r2]
	add r2, sp, #0x44
	ldrh r3, [r2, #0]
	movs r2, #3
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sl
	bl sub_08008E74
_0802675A:
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
	bl sub_080003F0
	adds r0, r5, #0
	adds r5, #1
	cmp r0, #5
	bls _080266D0
_0802676E:
	ldr r0, [r6, #0x30]
	ldr r1, _080267D0
	ands r0, r1
	str r0, [r6, #0x30]
	ldr r3, _080267D4
	ldr r2, [r3, #0]
	ldrh r1, [r2, #4]
	ldr r0, _080267D8
	ands r0, r1
	strh r0, [r2, #4]
	movs r1, #0
	movs r6, #0
_08026786:
	movs r2, #0
	lsls r0, r1, #2
	adds r5, r1, #1
	adds r4, r0, r1
_0802678E:
	ldr r0, [r3, #0]
	adds r1, r2, r4
	movs r7, #0xe4
	lsls r7, r7, #1
	adds r0, r0, r7
	adds r0, r0, r1
	strb r6, [r0, #0]
	adds r2, #1
	cmp r2, #4
	bls _0802678E
	adds r1, r5, #0
	cmp r1, #0x13
	bls _08026786
	bl sub_080003F0
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
	movs r0, #3
	bl sub_08057624
_080267BA:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080267CC: .4byte gUnk_03003170
_080267D0: .4byte 0xFF7FFFFF
_080267D4: .4byte gUnk_03005CF4
_080267D8: .4byte 0x0000FEFF
	thumb_func_end sub_080263B4
