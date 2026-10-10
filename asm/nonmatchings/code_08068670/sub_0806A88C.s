	thumb_func_start sub_0806A88C
sub_0806A88C: @ 0x0806A88C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	str r0, [sp, #0x58]
	bl sub_080020F4
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x58]
	ldr r6, [r0, #0]
	ldr r1, [r0, #4]
	str r1, [sp, #0x6c]
	ldrh r2, [r0, #0x14]
	str r2, [sp, #0x64]
	mov r8, r2
	cmp r6, #3
	bhi _0806A8C4
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0806A8C0
	adds r7, r1, r0
	b _0806A8DA
_0806A8C0: .4byte gUnk_03003CE0
_0806A8C4:
	ldr r0, _0806A938
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #3
	subs r1, r1, r6
	lsls r1, r1, #5
	ldr r3, _0806A93C
	adds r1, r1, r3
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [sp, #0x5c]
_0806A8DA:
	add r5, sp, #0x48
	movs r0, #0
	strh r0, [r5, #0]
	mov r4, sp
	adds r4, #0x4a
	strh r0, [r4, #0]
	str r0, [sp, #0x70]
	bl sub_080020F4
	cmp r0, r6
	beq _0806A948
	cmp r6, #3
	bls _0806A97C
	ldr r3, _0806A940
	mov r1, r8
	lsls r2, r1, #1
	ldr r4, [sp, #0x58]
	ldr r1, [r4, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r3, #6
	adds r2, r2, r3
	ldr r3, [sp, #0x5c]
	adds r3, #0x5e
	ldrh r0, [r3, #0]
	movs r4, #0
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806A97C
	ldr r0, _0806A944
	lsls r2, r6, #2
	adds r2, r2, r0
	movs r1, #1
	ldr r0, [sp, #0x6c]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add r1, sp, #0x70
	ldrh r1, [r1, #0]
	strh r1, [r3, #0]
	b _0806ABA4
_0806A938: .4byte gUnk_030056F4
_0806A93C: .4byte 0xFFFFF480
_0806A940: .4byte gUnk_084EBF1C
_0806A944: .4byte gUnk_030063E0
_0806A948:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0806A9CC
	adds r4, r4, r0
	ldr r2, [sp, #0x58]
	ldr r0, [r2, #0xc]
	ldr r1, [r2, #0x14]
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
	bge _0806A97C
	add r3, sp, #0x70
	ldrh r3, [r3, #0]
	strh r3, [r4, #0]
_0806A97C:
	bl sub_080020F4
	cmp r0, r6
	bne _0806A99A
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806A99A
	bl sub_0800CD34
	cmp r0, #0
	bne _0806A99A
	ldr r0, _0806A9D0
	bl sub_0805865C
_0806A99A:
	ldr r1, _0806A9D4
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	add r0, sp, #0x48
	strh r4, [r0, #0]
	movs r1, #0x4a
	add r1, sp
	strh r4, [r1, #0]
	movs r2, #0xb4
	str r2, [sp, #0x60]
	lsls r3, r6, #2
	str r3, [sp, #0x74]
	b _0806AB6E
	.2byte 0x0000
_0806A9CC: .4byte gUnk_03003CE0
_0806A9D0: .4byte 0x00000169
_0806A9D4: .4byte 0x0005008C
_0806A9D8:
	ldr r4, [sp, #0x68]
	cmp r6, r4
	bne _0806A9FE
	bl sub_0801DF8C
	cmp r0, #0
	bne _0806A9F8
	ldrh r0, [r7, #0x20]
	cmp r0, #0xb
	beq _0806A9F8
	cmp r0, #0xc
	beq _0806A9F8
	bl sub_0800D11C
	cmp r0, #0
	beq _0806A9FE
_0806A9F8:
	bl sub_08015D98
	b _0806AB8E
_0806A9FE:
	cmp r6, #3
	bhi _0806AA34
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0xc
	ldr r2, [sp, #0x58]
	bl sub_08068A00
	cmp r0, #0
	beq _0806AA64
	ldr r2, [sp, #0x64]
	cmp r2, #0
	bne _0806AA64
	ldr r0, [r7, #0x30]
	ldr r1, _0806AA30
	ands r0, r1
	str r0, [r7, #0x30]
	b _0806AB8E
_0806AA30: .4byte 0xFFFEFFEF
_0806AA34:
	ldr r3, [sp, #0x5c]
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x18]
	ldr r2, [sp, #0x58]
	bl sub_08068A00
	cmp r0, #0
	beq _0806AA4C
	ldr r4, [sp, #0x64]
	cmp r4, #0
	bne _0806AA4C
	b _0806AB8E
_0806AA4C:
	ldr r0, [sp, #0x70]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x70]
	cmp r0, #0x20
	bls _0806AA64
	ldr r2, [sp, #0x5c]
	ldr r0, [r2, #0x50]
	adds r0, #1
	str r0, [r2, #0x50]
	movs r3, #0
	str r3, [sp, #0x70]
_0806AA64:
	ldr r4, [sp, #0x68]
	cmp r6, r4
	bne _0806AA9C
	bl sub_08015D74
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	str r0, [sp, #0x4c]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	add r4, sp, #0x4c
	str r0, [r4, #4]
	ldr r0, _0806ABB4
	str r0, [sp, #0x54]
	add r5, sp, #0x54
	ldr r0, [sp, #0x58]
	movs r1, #0
	bl sub_08068F9C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801FB14
_0806AA9C:
	ldr r0, [sp, #0x70]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x70]
	cmp r0, #0x20
	bls _0806AAB6
	adds r1, r7, #0
	adds r1, #0xdc
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	movs r2, #0
	str r2, [sp, #0x70]
_0806AAB6:
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r4, r7, r3
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	add r2, sp, #0x44
	mov r8, r2
	movs r3, #0x46
	add r3, sp
	mov r9, r3
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	mov r2, r8
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
	mov sl, r0
	add r2, sp, #0x48
	movs r5, #1
	str r5, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0x14
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	bne _0806AB6A
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806AB6A
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806AB6A
	ldr r4, _0806ABB8
	ldr r0, [r4, #0]
	ands r0, r5
	cmp r0, #0
	bne _0806AB36
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806AB36:
	ldr r1, [r4, #0]
	ands r1, r5
	adds r0, r6, #0
	ands r0, r5
	cmp r1, r0
	bne _0806AB6A
	mov r4, r8
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r2, r9
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r1, #1
	add r4, sp, #0x48
	ldrh r3, [r4, #0]
	mov r2, sl
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0x14
	bl sub_08007870
_0806AB6A:
	bl sub_080003F0
_0806AB6E:
	ldr r1, [sp, #0x60]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
	cmp r1, #0
	beq _0806AB8E
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806AB8E
	bl sub_08056E90
	cmp r0, #0
	bne _0806AB8E
	b _0806A9D8
_0806AB8E:
	bl sub_08015D98
	ldr r2, _0806ABBC
	ldr r3, [sp, #0x74]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x6c]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_0806ABA4:
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806ABB4: .4byte 0x00200020
_0806ABB8: .4byte gUnk_03002344
_0806ABBC: .4byte gUnk_030063E0
	thumb_func_end sub_0806A88C
